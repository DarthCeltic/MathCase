import json
import unittest

import audit_sources as audit


class PinnedSourceAuditTests(unittest.TestCase):
    def test_all_ones_permanent_example_and_wrong_answer(self):
        result = audit.check_example()
        self.assertEqual(result["permanent_over_integers"], 2)
        self.assertEqual(result["determinant_over_integers"], 0)
        self.assertTrue(result["wrong_answer_1_rejected"])

    def test_wrong_shape_rejected(self):
        with self.assertRaises(ValueError):
            audit.permanent_2x2([[1, 1, 1], [1, 1, 1]])

    def test_source_hash_mismatch_rejected(self):
        fake = {path: b"damaged" for path in audit.PINS}
        ok, message, _ = audit.validate_sources(fake)
        self.assertFalse(ok)
        self.assertIn("SHA-256 mismatch", message)

    def test_missing_source_rejected(self):
        fake = {path: b"damaged" for path in audit.PINS}
        del fake["vp-vnp/Solution.lean"]
        ok, message, _ = audit.validate_sources(fake)
        self.assertFalse(ok)
        self.assertIn("path set differs", message)


if __name__ == "__main__":
    unittest.main()