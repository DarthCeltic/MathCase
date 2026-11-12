from __future__ import annotations

import json
import unittest
from fractions import Fraction
from pathlib import Path

from scripts.search_egyptian_fraction_n1mod12_residuals import (
    find_greedy_three_term_representation,
    residual_candidates,
    run_search,
)


ROOT = Path(__file__).resolve().parents[1]
RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-receipt-h256.json"


class EgyptianFractionResidualSearchTests(unittest.TestCase):
    def test_known_residual_case_has_exact_strict_triple(self) -> None:
        representation = find_greedy_three_term_representation(49, 32)
        self.assertEqual(representation, (21, 30, 1470, 8))
        assert representation is not None
        x, y, z, _offset = representation
        self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, 49))
        self.assertLess(x, y)
        self.assertLess(y, z)

    def test_search_cap_is_not_reported_as_a_proof_failure(self) -> None:
        self.assertIsNone(find_greedy_three_term_representation(49, 7))
        self.assertIn(193, list(residual_candidates(1000)))
        self.assertIsNone(find_greedy_three_term_representation(193, 32))

    def test_small_residual_batch_is_reproducible(self) -> None:
        first = run_search(1000, 32)
        second = run_search(1000, 32)
        self.assertEqual(first["residual_candidates"], 164)
        self.assertEqual(first["exact_representations_found"], 133)
        self.assertEqual(first["not_found_within_search_bound"], 31)
        self.assertEqual(first["candidate_n_values_sha256"], second["candidate_n_values_sha256"])
        self.assertEqual(first["canonical_result_rows_sha256"], second["canonical_result_rows_sha256"])
        self.assertFalse(first["full_erdos_straus_conjecture_solved"])

    def test_saved_full_receipt_reopens_deterministically(self) -> None:
        receipt = json.loads(RECEIPT.read_text(encoding="utf-8"))
        replay = run_search(receipt["case_count"], receipt["max_first_denominator_offset"])
        for key in (
            "schema",
            "status",
            "classification",
            "case_count",
            "d_inclusive_range",
            "n_inclusive_range",
            "max_first_denominator_offset",
            "residual_candidates",
            "exact_representations_found",
            "not_found_within_search_bound",
            "first_denominator_offset_counts",
            "not_found_examples",
            "solution_examples",
            "candidate_n_values_sha256",
            "canonical_result_rows_sha256",
            "source_bindings",
            "network_calls",
            "model_calls",
            "provider_calls",
            "full_erdos_straus_conjecture_solved",
            "novelty_claim",
        ):
            self.assertEqual(receipt[key], replay[key], key)

    def test_domain_and_resource_caps_fail_closed(self) -> None:
        with self.assertRaisesRegex(ValueError, "case_count"):
            run_search(0, 32)
        with self.assertRaisesRegex(ValueError, "case_count"):
            run_search(100001, 32)
        with self.assertRaisesRegex(ValueError, "congruent"):
            find_greedy_three_term_representation(15, 32)
        with self.assertRaisesRegex(ValueError, "offset"):
            find_greedy_three_term_representation(49, 257)


if __name__ == "__main__":
    unittest.main()
