from __future__ import annotations

import unittest
from fractions import Fraction

from scripts.search_egyptian_fraction_n1mod12_range import (
    residual_candidates_in_range,
    run_search,
    verify_receipt,
)


class EgyptianFractionBoundedRangeTests(unittest.TestCase):
    def test_range_is_disjointly_addressable_and_factor_conditioned(self):
        candidates = list(residual_candidates_in_range(100_001, 100))
        self.assertTrue(all(n % 12 == 1 and n >= 12 * 100_001 + 1 for n in candidates))
        self.assertEqual(candidates, list(residual_candidates_in_range(100_001, 100)))

    def test_small_range_returns_exact_strict_representations(self):
        result = run_search(1, 250, 4096)
        self.assertEqual(result["d_inclusive_range"], [1, 250])
        self.assertEqual(
            result["residual_candidates"],
            result["exact_representations_found"] + result["not_found_within_search_bound"],
        )
        for row in result["solution_examples"]:
            x, y, z = row["denominators"]
            self.assertLess(x, y)
            self.assertLess(y, z)
            self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, row["n"]))

    def test_small_range_receipt_reopens(self):
        result = run_search(100_001, 100, 4096)
        verify_receipt(result)

    def test_domain_and_resource_caps_fail_closed(self):
        with self.assertRaisesRegex(ValueError, "start_d must be positive"):
            run_search(0, 1, 4096)
        with self.assertRaisesRegex(ValueError, "case_count"):
            run_search(1, 100_001, 4096)
        with self.assertRaisesRegex(ValueError, "end at or below"):
            run_search(150_001, 50_001, 4096)
        with self.assertRaisesRegex(ValueError, "max_total_offset"):
            run_search(1, 100, 256)


if __name__ == "__main__":
    unittest.main()
