import unittest
from fractions import Fraction

from scripts.run_egyptian_fraction_n3mod4_check import check_range, exact_case


class EgyptianFractionN3Mod4Tests(unittest.TestCase):
    def test_small_boundary_cases_are_exact_and_ordered(self):
        for k in (0, 1, 2, 999):
            result = exact_case(k)
            self.assertTrue(result["denominators_positive"])
            self.assertTrue(result["denominators_strictly_increasing"])
            self.assertTrue(result["exact_identity"])

    def test_first_identity_is_4_over_3(self):
        result = exact_case(0)
        self.assertEqual(result["n"], 3)
        self.assertEqual(Fraction(1, 1) + Fraction(1, 4) + Fraction(1, 12), Fraction(4, 3))

    def test_bounded_exact_range_passes(self):
        rows = check_range(2_000)
        self.assertEqual(len(rows), 2_000)
        self.assertTrue(all(row["exact_identity"] for row in rows))

    def test_invalid_domains_fail_closed(self):
        with self.assertRaises(ValueError):
            exact_case(-1)
        with self.assertRaises(ValueError):
            check_range(0)


if __name__ == "__main__":
    unittest.main()
