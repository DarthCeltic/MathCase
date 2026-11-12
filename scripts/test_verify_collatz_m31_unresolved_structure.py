from __future__ import annotations

import unittest

from scripts.verify_collatz_m31_unresolved_structure import (
    affine_certificate_by_recurrence,
    first_odd_descent_by_division,
    odd_step_by_division,
    v2_by_division,
)


class VerifyCollatzM31UnresolvedStructureTests(unittest.TestCase):
    def test_v2_by_division(self) -> None:
        self.assertEqual(v2_by_division(3 * 5 + 1), 4)

    def test_odd_step_and_descent(self) -> None:
        self.assertEqual(odd_step_by_division(5), 1)
        self.assertEqual(first_odd_descent_by_division(5), 1)

    def test_affine_recurrence_agrees_on_one_step_certificate(self) -> None:
        self.assertEqual(affine_certificate_by_recurrence(5), 3)


if __name__ == "__main__":
    unittest.main()
