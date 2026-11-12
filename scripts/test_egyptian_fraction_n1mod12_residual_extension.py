from __future__ import annotations

import json
import unittest
from fractions import Fraction
from pathlib import Path

from scripts.extend_egyptian_fraction_n1mod12_residual_search import (
    run_extension,
    find_greedy_representation_in_range,
)


ROOT = Path(__file__).resolve().parents[1]
RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-extension-h4096.json"


class EgyptianFractionResidualExtensionTests(unittest.TestCase):
    def test_extension_finds_exact_strict_triple(self) -> None:
        representation = find_greedy_representation_in_range(2161, 257, 4096)
        self.assertEqual(representation, (980, 1204, 45532270, 439))
        assert representation is not None
        x, y, z, _offset = representation
        self.assertEqual(Fraction(1, x) + Fraction(1, y) + Fraction(1, z), Fraction(4, 2161))
        self.assertLess(x, y)
        self.assertLess(y, z)

    def test_one_remaining_input_is_only_outside_the_bounded_method(self) -> None:
        self.assertIsNone(find_greedy_representation_in_range(193, 257, 4096))

    def test_saved_extension_receipt_reopens_against_h256(self) -> None:
        receipt = json.loads(RECEIPT.read_text(encoding="utf-8"))
        replay = run_extension(100000, 4096)
        for key in (
            "schema",
            "status",
            "classification",
            "case_count",
            "base_first_denominator_offset",
            "extension_offset_interval",
            "max_total_offset",
            "base_h256_residual_candidates",
            "base_h256_exact_representations",
            "base_h256_not_found_within_bound",
            "extension_exact_representations_found",
            "still_not_found_within_extension_bound",
            "still_not_found_examples",
            "extension_solution_examples",
            "base_missed_n_values_sha256",
            "canonical_extension_rows_sha256",
            "source_bindings",
            "network_calls",
            "model_calls",
            "provider_calls",
            "full_erdos_straus_conjecture_solved",
            "novelty_claim",
        ):
            self.assertEqual(receipt[key], replay[key], key)

    def test_invalid_bounds_and_base_size_fail_closed(self) -> None:
        with self.assertRaisesRegex(ValueError, "case_count"):
            run_extension(99999, 4096)
        with self.assertRaisesRegex(ValueError, "offset"):
            run_extension(100000, 256)
        with self.assertRaisesRegex(ValueError, "offset interval"):
            find_greedy_representation_in_range(2161, 256, 4096)
        with self.assertRaisesRegex(ValueError, "offset interval"):
            find_greedy_representation_in_range(2161, 257, 4097)


if __name__ == "__main__":
    unittest.main()
