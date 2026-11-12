from __future__ import annotations

import json
import unittest
from fractions import Fraction
from pathlib import Path

from scripts.extend_egyptian_fraction_single_residual import (
    TARGET_N,
    find_strict_triple,
    run_extension,
    verify_receipt,
)


ROOT = Path(__file__).resolve().parents[1]
RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-range-100001-200000-v1/residual-1609969-offset-65536.json"


class EgyptianFractionSingleResidualExtensionTests(unittest.TestCase):
    def test_extension_is_fixed_to_the_reopened_residual(self):
        with self.assertRaisesRegex(ValueError, "fixed to n=1609969"):
            find_strict_triple(TARGET_N + 12, 4097, 65536)

    def test_saved_receipt_reopens_exactly(self):
        receipt = json.loads(RECEIPT.read_text(encoding="utf-8"))
        verify_receipt(receipt)

    def test_any_saved_witness_is_exact_and_strict(self):
        receipt = run_extension(65536)
        if receipt["denominators"] is None:
            self.assertFalse(receipt["representation_found"])
            self.assertIsNone(receipt["exact_identity"])
            return
        x, y, z = receipt["denominators"]
        self.assertLess(x, y)
        self.assertLess(y, z)
        self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, TARGET_N))
        self.assertTrue(receipt["exact_identity"])

    def test_offset_caps_fail_closed(self):
        with self.assertRaisesRegex(ValueError, "max_total_offset"):
            run_extension(4096)
        with self.assertRaisesRegex(ValueError, "max_total_offset"):
            run_extension(65537)


if __name__ == "__main__":
    unittest.main()
