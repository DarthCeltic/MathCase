"""Guard the headline fields of the public, path-free replay receipt."""
import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
STATUS = ROOT / "reproduction" / "m20-public-source-replay-v1" / "runs" / "2026-11-28-clean-stranger-r1" / "status.json"


class PublicReplayReceiptTests(unittest.TestCase):
    def test_clean_m20_receipt_is_complete_and_bounded(self) -> None:
        record = json.loads(STATUS.read_text(encoding="utf-8"))
        self.assertEqual(record["status"], "PASS")
        self.assertEqual(record["completed_compiles"], 363)
        self.assertEqual(record["completed_audits"], 23)
        self.assertEqual(record["completed_queries"], 4262)
        self.assertEqual(record["nov18_phase2_olean_matches"], 363)
        self.assertEqual(record["historical_mathlib_inventory"]["byte_identical"], 346)
        self.assertEqual(record["historical_mathlib_inventory"]["different"], 0)
        self.assertEqual(record["historical_mathlib_inventory"]["absent"], [])
        self.assertEqual(record["timeout_seconds_per_stage"], 1800)
        self.assertIn("Lean (version 4.33.1", record["toolchain"])


if __name__ == "__main__":
    unittest.main()
