# Atlas Cloud image provider

Atlas Cloud is an optional provider. Use it only when the user explicitly selects `IMAGE_PROVIDER=atlas-cloud`; the default OpenAI, Open Design, and prompt-only order remains unchanged.

## Before submitting

1. Confirm that `ATLASCLOUD_API_KEY` exists in the environment. Never print the key.
2. Read the current model catalog and schema before integration because models, inputs, and pricing can change.
3. Tell the user this is a paid generation and get confirmation before the POST.
4. Compose one complete prompt and choose a supported aspect ratio.

The helper reads `ATLASCLOUD_MEDIA_API_BASE`, defaulting to `https://api.atlascloud.ai/api/v1/model`.

## Model mapping

| Request | Model | Required input |
|---------|-------|----------------|
| Text-to-image | `google/nano-banana-2-lite/text-to-image` | `prompt` |
| Image editing | `google/nano-banana-2-lite/edit` | `prompt` plus 1-14 public `images` URLs |

Both routes use `resolution=1k`. Supported `aspect_ratio` values are `auto`, `1:1`, `3:2`, `2:3`, `3:4`, `4:3`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9`, `4:1`, `1:4`, `8:1`, and `1:8`. `thinking_level` is `default`, `high`, or `minimal`.

## Submit exactly once

Resolve `<skill-dir>` to this skill's directory, then run:

```bash
python3 <skill-dir>/scripts/atlas_image.py submit \
  --prompt "<structured prompt>" \
  --aspect-ratio "16:9" \
  --thinking-level default
```

For image editing, add one `--image-url "https://..."` per input. The `submit` command sends exactly one `POST /generateImage`; the helper never retries a POST.

Save `data.id` from the response immediately. If the response times out, the connection resets, or an HTTP 5xx leaves the result uncertain, **do not run submit again**. Inspect task history first to avoid a duplicate paid generation.

## Poll with GET

Poll only the saved prediction ID:

```bash
python3 <skill-dir>/scripts/atlas_image.py wait --id "<prediction-id>"
```

`wait` calls only `GET /prediction/{request_id}` with bounded retry/backoff. If the task is still pending when the wait ends, run `wait` or `status` again with the same ID; never resubmit.

When the status is `completed`, download the URL in `data.outputs` to `docs/design/<slug>.png`, then write the metadata sidecar. For `failed` or `timeout`, report the original error and prediction ID.
