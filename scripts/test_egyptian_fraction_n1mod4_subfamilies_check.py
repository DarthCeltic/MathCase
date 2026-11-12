import unittest
from fractions import Fraction

from scripts.run_egyptian_fraction_n1mod4_subfamilies_check import (
    check_ranges,
    exact_case_n5mod8,
    exact_case_n5mod12,
    exact_case_n9mod12,
    exact_case_n1mod12_with_factor,
    maybe_prime_factor_two_mod_three,
    prime_factor_two_mod_three,
)


class EgyptianFractionN1Mod4SubfamiliesTests(unittest.TestCase):
    def test_n5_mod8_family_starts_at_five_and_uses_distinct_denominators(self):
        for index in (0, 1, 2, 999):
            row = exact_case_n5mod8(index)
            self.assertEqual(row["n"], 8 * index + 5)
            self.assertTrue(row["denominators_positive"])
            self.assertTrue(row["denominators_distinct"])
            self.assertTrue(row["denominators_strictly_increasing"])
            self.assertTrue(row["exact_identity"])

    def test_n9_mod12_family_starts_at_nine_and_uses_distinct_denominators(self):
        for index in (0, 1, 2, 999):
            row = exact_case_n9mod12(index)
            self.assertEqual(row["n"], 12 * index + 9)
            self.assertTrue(row["denominators_positive"])
            self.assertTrue(row["denominators_distinct"])
            self.assertTrue(row["denominators_strictly_increasing"])
            self.assertTrue(row["exact_identity"])

    def test_n5_mod12_family_uses_a_prime_factor_with_residue_two(self):
        for index in (0, 1, 2, 999):
            row = exact_case_n5mod12(index)
            self.assertEqual(row["n"], 12 * index + 5)
            self.assertEqual(row["n"] % row["prime_factor_p"], 0)
            self.assertEqual(row["prime_factor_p"] % 3, 2)
            self.assertTrue(row["denominators_positive"])
            self.assertTrue(row["denominators_distinct"])
            self.assertTrue(row["denominators_strictly_increasing"])
            self.assertTrue(row["exact_identity"])

    def test_n1_mod12_conditioned_family_tracks_eligible_and_excluded_cases(self):
        for index in (1, 2, 3):
            row = exact_case_n1mod12_with_factor(index)
            self.assertIsNotNone(row)
            assert row is not None
            self.assertEqual(row["n"], 12 * index + 1)
            self.assertEqual(row["prime_factor_p"] % 3, 2)
            self.assertTrue(
                row["n"] % row["prime_factor_p"] == 0
                or row["q"] % row["prime_factor_p"] == 0
            )
            self.assertTrue(row["denominators_positive"])
            self.assertTrue(row["denominators_distinct"])
            self.assertTrue(row["denominators_strictly_increasing"])
            self.assertTrue(row["exact_identity"])
        self.assertIsNone(exact_case_n1mod12_with_factor(4))  # n=49, q=13
        self.assertIsNone(maybe_prime_factor_two_mod_three(49))

    def test_first_examples_are_exact(self):
        self.assertEqual(
            sum((Fraction(1, d) for d in exact_case_n5mod8(0)["denominators"]), Fraction()),
            Fraction(4, 5),
        )
        self.assertEqual(
            sum((Fraction(1, d) for d in exact_case_n9mod12(0)["denominators"]), Fraction()),
            Fraction(4, 9),
        )
        self.assertEqual(
            sum((Fraction(1, d) for d in exact_case_n5mod12(0)["denominators"]), Fraction()),
            Fraction(4, 5),
        )
        row = exact_case_n1mod12_with_factor(1)
        self.assertIsNotNone(row)
        assert row is not None
        self.assertEqual(
            sum((Fraction(1, d) for d in row["denominators"]), Fraction()),
            Fraction(4, 13),
        )

    def test_bounded_exact_ranges_pass(self):
        family_a, family_b, family_c, family_d, uncovered = check_ranges(2_000)
        self.assertEqual(len(family_a), 2_000)
        self.assertEqual(len(family_b), 2_000)
        self.assertEqual(len(family_c), 2_000)
        self.assertEqual(len(family_d) + len(uncovered), 2_000)
        self.assertTrue(all(row["exact_identity"] for row in family_a + family_b + family_c + family_d))

    def test_invalid_domains_fail_closed(self):
        with self.assertRaises(ValueError):
            exact_case_n5mod8(-1)
        with self.assertRaises(ValueError):
            exact_case_n9mod12(-1)
        with self.assertRaises(ValueError):
            exact_case_n5mod12(-1)
        with self.assertRaises(ValueError):
            prime_factor_two_mod_three(1)
        with self.assertRaises(ValueError):
            exact_case_n1mod12_with_factor(0)
        with self.assertRaises(ValueError):
            check_ranges(0)


if __name__ == "__main__":
    unittest.main()
