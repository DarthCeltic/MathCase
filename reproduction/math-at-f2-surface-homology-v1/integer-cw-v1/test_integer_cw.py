#!/usr/bin/env python3
from __future__ import annotations

import json
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT))
import independent_check
import verify_integer_cw

MODELS = json.loads((ROOT / "models.json").read_text(encoding="utf-8"))


class IntegerSurfaceCWTests(unittest.TestCase):
    def test_primary_matches_all_four_expected_groups(self) -> None:
        results, checks, controls = verify_integer_cw.verify(MODELS)
        self.assertEqual(len(results), 4)
        self.assertTrue(all(checks.values()))
        self.assertTrue(all(controls.values()))

    def test_independent_matches_all_four_expected_groups(self) -> None:
        for case in MODELS["cases"].values():
            result = independent_check.independent_result(case["generators"], case["attaching_word"])
            self.assertEqual(result["homology"], case["expected"])

    def test_torus_word_does_not_pass_as_klein(self) -> None:
        result = verify_integer_cw.derive_homology("ab", "abAB")
        self.assertNotEqual(result["homology"], MODELS["cases"]["klein_bottle"]["expected"])

    def test_wrong_projective_torsion_is_rejected(self) -> None:
        result = independent_check.independent_result("a", "aa")
        self.assertEqual(result["homology"]["H1_torsion_orders"], [2])
        self.assertNotEqual(result["homology"]["H1_torsion_orders"], [3])

    def test_invalid_edge_is_rejected_by_both_paths(self) -> None:
        with self.assertRaises(ValueError):
            verify_integer_cw.exponent_vector("a", "ac")
        with self.assertRaises(ValueError):
            independent_check.independent_result("a", "ac")


if __name__ == "__main__":
    unittest.main()