import copy
import json
from pathlib import Path
import sys
import unittest


PACKAGE = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PACKAGE / "scripts"))
import verify_m31_lift  # noqa: E402


class M31LiftCertificateTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.certificate = json.loads((PACKAGE / "family-certificate.json").read_text(encoding="utf-8"))

    def test_all_rows_recompute(self):
        result = verify_m31_lift.verify_rows(self.certificate)
        self.assertEqual(result["rows_recomputed"], 860)
        self.assertEqual(result["first_drop_step_min"], 52)
        self.assertEqual(result["first_drop_step_max"], 207)

    def test_bad_endpoint_is_rejected(self):
        damaged = copy.deepcopy(self.certificate)
        damaged["rows"][0]["endpoint"] += 1
        with self.assertRaises(verify_m31_lift.VerificationError):
            verify_m31_lift.verify_rows(damaged)


if __name__ == "__main__":
    unittest.main()
