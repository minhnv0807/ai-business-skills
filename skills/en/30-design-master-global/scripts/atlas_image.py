#!/usr/bin/env python3
"""Submit and inspect Atlas Cloud image predictions without POST retries."""

from __future__ import annotations

import argparse
import json
import os
import socket
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from typing import Any


DEFAULT_API_BASE = "https://api.atlascloud.ai/api/v1/model"
TEXT_TO_IMAGE_MODEL = "google/nano-banana-2-lite/text-to-image"
EDIT_MODEL = "google/nano-banana-2-lite/edit"
TERMINAL_STATUSES = {"completed", "failed", "timeout"}


class AtlasError(RuntimeError):
    """Base error for this helper."""


class AtlasAPIError(AtlasError):
    """The API returned a definite error response."""


class SubmissionUncertainError(AtlasError):
    """The submit connection failed after the request may have been sent."""


def build_payload(
    prompt: str,
    aspect_ratio: str,
    thinking_level: str,
    image_urls: list[str] | None = None,
) -> dict[str, Any]:
    images = image_urls or []
    payload: dict[str, Any] = {
        "model": EDIT_MODEL if images else TEXT_TO_IMAGE_MODEL,
        "prompt": prompt,
        "aspect_ratio": aspect_ratio,
        "resolution": "1k",
        "thinking_level": thinking_level,
        "enable_sync_mode": False,
        "enable_base64_output": False,
    }
    if images:
        payload["images"] = images
    return payload


def _api_key() -> str:
    value = os.environ.get("ATLASCLOUD_API_KEY", "").strip()
    if not value:
        raise AtlasError("ATLASCLOUD_API_KEY is required")
    return value


def _api_base() -> str:
    return os.environ.get("ATLASCLOUD_MEDIA_API_BASE", DEFAULT_API_BASE).rstrip("/")


def _decode_response(response: Any) -> dict[str, Any]:
    raw = response.read().decode("utf-8")
    try:
        body = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise AtlasAPIError("Atlas Cloud returned a non-JSON response") from exc
    if not isinstance(body, dict):
        raise AtlasAPIError("Atlas Cloud returned an unexpected response shape")
    code = body.get("code")
    if isinstance(code, int) and code >= 400:
        raise AtlasAPIError(f"Atlas Cloud API error {code}: {body.get('message', '')}")
    return body


def _http_error_message(exc: urllib.error.HTTPError) -> str:
    try:
        body = exc.read().decode("utf-8")
    except Exception:
        body = ""
    return f"Atlas Cloud HTTP {exc.code}: {body[:500]}"


def _request_json(
    method: str,
    path: str,
    payload: dict[str, Any] | None = None,
    attempts: int = 1,
) -> dict[str, Any]:
    if method != "GET" and attempts != 1:
        raise ValueError("Only GET requests may be retried")
    if attempts < 1 or attempts > 5:
        raise ValueError("GET attempts must be between 1 and 5")

    url = f"{_api_base()}/{path.lstrip('/')}"
    data = json.dumps(payload).encode("utf-8") if payload is not None else None
    headers = {
        "Authorization": f"Bearer {_api_key()}",
        "Accept": "application/json",
    }
    if data is not None:
        headers["Content-Type"] = "application/json"

    request = urllib.request.Request(url, data=data, headers=headers, method=method)
    for attempt in range(attempts):
        try:
            with urllib.request.urlopen(request, timeout=30) as response:
                return _decode_response(response)
        except urllib.error.HTTPError as exc:
            transient = exc.code == 429 or exc.code >= 500
            if method == "POST" and exc.code >= 500:
                raise SubmissionUncertainError(
                    f"{_http_error_message(exc)}. Do not resubmit; inspect task history first."
                ) from exc
            if method == "GET" and transient and attempt + 1 < attempts:
                time.sleep(2**attempt)
                continue
            raise AtlasAPIError(_http_error_message(exc)) from exc
        except (urllib.error.URLError, TimeoutError, socket.timeout, OSError) as exc:
            if method == "GET" and attempt + 1 < attempts:
                time.sleep(2**attempt)
                continue
            if method == "POST":
                raise SubmissionUncertainError(
                    "Submit response is uncertain. Do not resubmit; inspect task history first."
                ) from exc
            raise AtlasAPIError(f"Atlas Cloud GET failed: {exc}") from exc

    raise AtlasAPIError("Atlas Cloud request exhausted its bounded GET attempts")


def submit_prediction(args: argparse.Namespace) -> dict[str, Any]:
    payload = build_payload(
        prompt=args.prompt,
        aspect_ratio=args.aspect_ratio,
        thinking_level=args.thinking_level,
        image_urls=args.image_url,
    )
    return _request_json("POST", "generateImage", payload=payload, attempts=1)


def get_prediction(request_id: str, attempts: int = 4) -> dict[str, Any]:
    safe_id = urllib.parse.quote(request_id, safe="")
    return _request_json("GET", f"prediction/{safe_id}", attempts=attempts)


def prediction_status(body: dict[str, Any]) -> str:
    data = body.get("data")
    if not isinstance(data, dict):
        raise AtlasAPIError("Atlas Cloud response is missing prediction data")
    status = data.get("status")
    if not isinstance(status, str) or not status:
        raise AtlasAPIError("Atlas Cloud response is missing prediction status")
    return status.lower()


def wait_for_prediction(
    request_id: str,
    max_wait: float,
    poll_interval: float,
    get_attempts: int,
) -> dict[str, Any]:
    deadline = time.monotonic() + max_wait
    while True:
        body = get_prediction(request_id, attempts=get_attempts)
        if prediction_status(body) in TERMINAL_STATUSES:
            return body
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise AtlasError(
                "Prediction is still pending. Run wait/status again with the same ID; do not resubmit."
            )
        time.sleep(min(poll_interval, remaining))


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Submit and inspect Atlas Cloud image predictions safely."
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    submit = subparsers.add_parser("submit", help="Send exactly one generation POST")
    submit.add_argument("--prompt", required=True)
    submit.add_argument("--aspect-ratio", default="auto", choices=[
        "auto", "1:1", "3:2", "2:3", "3:4", "4:3", "4:5", "5:4",
        "9:16", "16:9", "21:9", "4:1", "1:4", "8:1", "1:8",
    ])
    submit.add_argument(
        "--thinking-level", default="default", choices=["default", "high", "minimal"]
    )
    submit.add_argument(
        "--image-url", action="append", default=[],
        help="Repeat for image editing (maximum 14 URLs)",
    )

    status = subparsers.add_parser("status", help="Read one prediction with bounded GET retries")
    status.add_argument("--id", required=True)
    status.add_argument("--get-attempts", type=int, default=4)

    wait = subparsers.add_parser("wait", help="Poll an existing prediction using GET only")
    wait.add_argument("--id", required=True)
    wait.add_argument("--max-wait", type=float, default=180)
    wait.add_argument("--poll-interval", type=float, default=2)
    wait.add_argument("--get-attempts", type=int, default=4)
    return parser


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()
    if args.command == "submit":
        if len(args.image_url) > 14:
            parser.error("--image-url may be repeated at most 14 times")
        body = submit_prediction(args)
    elif args.command == "status":
        body = get_prediction(args.id, attempts=args.get_attempts)
    else:
        if args.max_wait <= 0 or args.poll_interval <= 0:
            parser.error("--max-wait and --poll-interval must be positive")
        body = wait_for_prediction(
            args.id, args.max_wait, args.poll_interval, args.get_attempts
        )
    print(json.dumps(body, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except AtlasError as exc:
        print(json.dumps({"error": str(exc)}, ensure_ascii=False), file=sys.stderr)
        raise SystemExit(2)
