from __future__ import annotations

import unittest
from fractions import Fraction
from pathlib import Path

from scripts.extend_egyptian_fraction_witness_stream import (
    MAX_TOTAL_OFFSET,
    run_extension,
    verify_receipt,
)


ROOT = Path(__file__).resolve().parents[1]
BUNDLE = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-range-300001-400000-v2/witness-stream-v2"


class EgyptianFractionWitnessStreamExtensionTests(unittest.TestCase):
    def test_five_explicit_misses_reopen_with_exact_identities(self):
        receipt = run_extension(BUNDLE, MAX_TOTAL_OFFSET)
        self.assertEqual(receipt["status"], "PASS_BOUNDED_EXTENSION")
        self.assertEqual(receipt["base_bundle"]["miss_count"], 5)
        self.assertEqual(
            receipt["counts"]["witnesses_found"]
            + receipt["counts"]["still_not_found_within_extension_cap"],
            5,
        )
        for item in receipt["items"]:
            if item["denominators"] is None:
                self.assertIsNone(item["exact_identity"])
                continue
            x, y, z = item["denominators"]
            self.assertLess(x, y)
            self.assertLess(y, z)
            self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, item["n"]))
            self.assertTrue(item["exact_identity"])
        verify_receipt(receipt, BUNDLE)

    def test_offset_bounds_fail_closed(self):
        for bound in (4_096, MAX_TOTAL_OFFSET + 1):
            with self.subTest(bound=bound), self.assertRaisesRegex(ValueError, "max_total_offset"):
                run_extension(BUNDLE, bound)


if __name__ == "__main__":
    unittest.main()
