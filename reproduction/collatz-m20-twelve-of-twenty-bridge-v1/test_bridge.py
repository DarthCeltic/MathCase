from contextlib import redirect_stderr
import io
import json
import unittest
from pathlib import Path
import importlib.util
from tempfile import TemporaryDirectory
from unittest.mock import patch

SPEC = importlib.util.spec_from_file_location(
    "m20_twelve_of_twenty_bridge", Path(__file__).with_name("verify_bridge.py")
)
BRIDGE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(BRIDGE)


class BridgeTests(unittest.TestCase):
    def test_all_pinned_rows_bridge_to_the_existing_theorem(self):
        receipt = BRIDGE.audit()
        self.assertEqual(receipt["status"], "PASS")
        self.assertEqual(receipt["result"]["published_rows_checked"], 2652)
        self.assertEqual(
            receipt["result"]["rows_with_exactly_12_odd_inputs_in_20_accelerated_steps"],
            2652,
        )
        self.assertEqual(receipt["result"]["accelerated_base_endpoints_matching_q"], 2652)
        self.assertEqual(receipt["result"]["ordinary_32_base_endpoints_matching_q"], 2652)
        self.assertTrue(receipt["negative_control"]["rejected"])

    def test_wrong_endpoint_is_rejected(self):
        result = BRIDGE.check_pair(239, 123)
        self.assertFalse(result["valid"])
        self.assertFalse(result["checks"]["accelerated_endpoint_matches_q"])
        self.assertFalse(result["checks"]["ordinary_32_endpoint_matches_q"])

    def test_failed_run_writes_a_failure_receipt(self):
        with TemporaryDirectory() as directory:
            receipt_path = Path(directory) / "failed.json"
            with patch.object(BRIDGE, "audit", side_effect=BRIDGE.AuditError("CONTROL_FAILURE")):
                with redirect_stderr(io.StringIO()):
                    exit_code = BRIDGE.main(["--output", str(receipt_path)])
            self.assertEqual(exit_code, 1)
            saved = json.loads(receipt_path.read_text(encoding="utf-8"))
            self.assertEqual(saved["status"], "FAIL")
            self.assertEqual(saved["failure"]["message"], "CONTROL_FAILURE")


if __name__ == "__main__":
    unittest.main()
