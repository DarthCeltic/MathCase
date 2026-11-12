from __future__ import annotations

import json
import unittest
from fractions import Fraction
from pathlib import Path

from scripts.resolve_egyptian_fraction_n193_exhaustively import (
    exact_three_term_solutions,
    run_resolution,
)


ROOT = Path(__file__).resolve().parents[1]
RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/exact-n193-resolution.json"


class EgyptianFractionN193ExhaustiveTests(unittest.TestCase):
    def test_complete_bounded_enumeration_returns_exact_representations(self) -> None:
        result = exact_three_term_solutions(193)
        self.assertEqual(result["x_inclusive_range"], [49, 144])
        self.assertEqual(result["sorted_denominator_pairs_checked"], 15907)
        self.assertEqual(result["exact_solution_count"], 6)
        self.assertEqual(result["witness"], [50, 1380, 1331700])
        x, y, z = result["witness"]
        self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, 193))
        self.assertLess(x, y)
        self.assertLess(y, z)

    def test_exhaustive_search_is_fixed_to_reviewed_residual(self) -> None:
        with self.assertRaisesRegex(ValueError, "fixed to n=193"):
            exact_three_term_solutions(241)

    def test_saved_receipt_reopens_prior_search_chain(self) -> None:
        receipt = json.loads(RECEIPT.read_text(encoding="utf-8"))
        replay = run_resolution()
        for key in (
            "schema",
            "status",
            "classification",
            "base_residual_candidates",
            "greedy_representations_through_offset_4096",
            "remaining_input_before_exhaustive_search",
            "exact_search",
            "base_h256_receipt_sha256",
            "extension_h4096_receipt_sha256",
            "source_bindings",
            "network_calls",
            "model_calls",
            "provider_calls",
            "full_erdos_straus_conjecture_solved",
            "novelty_claim",
        ):
            self.assertEqual(receipt[key], replay[key], key)


if __name__ == "__main__":
    unittest.main()
