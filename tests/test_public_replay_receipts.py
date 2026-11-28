"""Guard the headline fields of the public, path-free replay receipt."""
import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
STATUS = ROOT / "reproduction" / "m20-public-source-replay-v1" / "runs" / "2026-11-28-clean-stranger-r1" / "status.json"
R66_RECEIPT = ROOT / "reproduction" / "ramsey-r66-lean-v1" / "verification" / "anonymous-public-main-replay-2026-11-28.json"
R66_HASHES = ROOT / "reproduction" / "ramsey-r66-lean-v1" / "verification" / "anonymous-public-main-hashes-2026-11-28.json"


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

    def test_anonymous_r66_receipt_is_path_free_and_complete(self) -> None:
        record = json.loads(R66_RECEIPT.read_text(encoding="utf-8"))
        self.assertEqual(record["status"], "PASS")
        self.assertEqual(len(record["commands"]), 5)
        self.assertTrue(all(command["exit_code"] == 0 for command in record["commands"]))
        self.assertEqual(record["mathlib_commit"], "0df444a360eaa60ab8c11dca51a86af692955474")
        self.assertEqual(record["source_manifest_sha256"], "b8c9eefb0813b3da44618add183088b53b0cb889e55cbf38a364f9f2c8c58a1e")
        self.assertEqual(record["axioms"], ["propext", "Classical.choice", "Quot.sound"])
        self.assertFalse(record["sorryAx"])
        self.assertNotIn("T:\\", R66_RECEIPT.read_text(encoding="utf-8"))
        hashes = json.loads(R66_HASHES.read_text(encoding="utf-8"))
        self.assertEqual(hashes["public_main_commit"], "04aef0ad140ce764cd50b0222fafc2405be0e2fc")
        self.assertEqual(hashes["receipt_sha256"], "fbe95f719281196e8f5fa25416fa715d399b38e7a29b105b715f5d6d1a225103")
        self.assertEqual(len(hashes["source_files"]), 3)
        self.assertEqual(len(hashes["output_files"]), 3)


if __name__ == "__main__":
    unittest.main()
