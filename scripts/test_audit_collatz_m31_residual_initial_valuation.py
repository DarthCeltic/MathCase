from __future__ import annotations

import array
import unittest

from scripts.audit_collatz_m31_residual_initial_valuation import (
    audit_residual_classes,
    count_uncovered_parity,
    valuation_two,
)


class AuditCollatzM31ResidualInitialValuationTests(unittest.TestCase):
    def test_parity_counts(self) -> None:
        mask = bytearray([1, 0, 0, 1, 0, 0, 1, 0])
        self.assertEqual(count_uncovered_parity(mask, 0, chunk_size=2), 2)
        self.assertEqual(count_uncovered_parity(mask, 1, chunk_size=2), 3)

    def test_valuation(self) -> None:
        self.assertEqual(valuation_two(3 * 5 + 1), 4)

    def test_two_lifts_and_saved_family_subtraction(self) -> None:
        mask = bytearray([1, 0, 1, 0, 1, 0, 1, 0])
        families = array.array("Q", [1, 9, 13])
        result = audit_residual_classes(mask, families)
        self.assertEqual(result["m31_residual_classes_examined"], 8)
        self.assertEqual(result["m31_saved_family_rows_matched"], 3)
        self.assertEqual(result["m31_unresolved_classes"], 5)


if __name__ == "__main__":
    unittest.main()
