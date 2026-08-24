import argparse
import importlib.util
import json
import pathlib
import unittest
import urllib.error
from unittest import mock


ROOT = pathlib.Path(__file__).resolve().parents[1]
VI_SCRIPT = ROOT / "skills/vi/30-thiet-ke-master/scripts/atlas_image.py"
EN_SCRIPT = ROOT / "skills/en/30-design-master-global/scripts/atlas_image.py"


def load_helper():
    spec = importlib.util.spec_from_file_location("atlas_image", VI_SCRIPT)
    module = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


class FakeResponse:
    def __init__(self, body):
        self.body = json.dumps(body).encode("utf-8")

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc, traceback):
        return False

    def read(self):
        return self.body


class AtlasImageTests(unittest.TestCase):
    def setUp(self):
        self.helper = load_helper()
        self.env = mock.patch.dict(
            self.helper.os.environ,
            {
                "ATLASCLOUD_API_KEY": "test-key",
                "ATLASCLOUD_MEDIA_API_BASE": "https://example.test/api/v1/model",
            },
            clear=False,
        )
        self.env.start()

    def tearDown(self):
        self.env.stop()

    def test_text_and_edit_payloads_match_live_schema(self):
        text_payload = self.helper.build_payload("poster", "16:9", "default")
        self.assertEqual(text_payload["model"], self.helper.TEXT_TO_IMAGE_MODEL)
        self.assertNotIn("images", text_payload)
        self.assertEqual(text_payload["resolution"], "1k")
        self.assertFalse(text_payload["enable_sync_mode"])

        edit_payload = self.helper.build_payload(
            "replace the background", "1:1", "high", ["https://example.test/source.png"]
        )
        self.assertEqual(edit_payload["model"], self.helper.EDIT_MODEL)
        self.assertEqual(edit_payload["images"], ["https://example.test/source.png"])

    def test_submit_posts_exactly_once_when_result_is_uncertain(self):
        args = argparse.Namespace(
            prompt="poster", aspect_ratio="1:1", thinking_level="default", image_url=[]
        )
        failure = urllib.error.URLError("connection reset")
        with mock.patch.object(self.helper.urllib.request, "urlopen", side_effect=failure) as urlopen:
            with self.assertRaises(self.helper.SubmissionUncertainError):
                self.helper.submit_prediction(args)
        self.assertEqual(urlopen.call_count, 1)
        request = urlopen.call_args.args[0]
        self.assertEqual(request.get_method(), "POST")

    def test_prediction_get_retries_with_bounded_backoff(self):
        completed = {"code": 200, "data": {"id": "prediction-1", "status": "completed"}}
        effects = [
            urllib.error.URLError("temporary-1"),
            urllib.error.URLError("temporary-2"),
            FakeResponse(completed),
        ]
        with mock.patch.object(self.helper.urllib.request, "urlopen", side_effect=effects) as urlopen:
            with mock.patch.object(self.helper.time, "sleep") as sleep:
                result = self.helper.get_prediction("prediction-1", attempts=4)
        self.assertEqual(result, completed)
        self.assertEqual(urlopen.call_count, 3)
        self.assertTrue(all(call.args[0].get_method() == "GET" for call in urlopen.call_args_list))
        self.assertEqual([call.args[0] for call in sleep.call_args_list], [1, 2])

    def test_language_skill_helpers_stay_identical(self):
        self.assertEqual(VI_SCRIPT.read_bytes(), EN_SCRIPT.read_bytes())


if __name__ == "__main__":
    unittest.main()
