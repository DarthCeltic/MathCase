#!/usr/bin/env python3
from __future__ import annotations

import math
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parent
PARENT = ROOT.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(PARENT))

import integer_homology as primary
import independent_minors as independent
from homology import SURFACES


class IntegerSurfaceHomologyTests(unittest.TestCase):
    def test_expected_integer_groups(self) -> None:
        results = primary.compute()["surfaces"]
        expected = {
            "sphere_tetrahedron": (0, [], 1),
            "torus_periodic_3x3": (2, [], 1),
            "projective_plane_six_vertex": (0, [2], 0),
        }
        for name, (h1_rank, torsion, h2_rank) in expected.items():
            groups = results[name]["homology_over_Z"]
            self.assertEqual(groups["H1"]["free_rank"], h1_rank)
            self.assertEqual(groups["H1"]["torsion_cyclic_orders"], torsion)
            self.assertEqual(groups["H2"]["free_rank"], h2_rank)

    def test_independent_minor_check_agrees(self) -> None:
        primary_results = primary.compute()["surfaces"]
        independent_results = independent.compute()["surfaces"]
        for name in primary_results:
            p = primary_results[name]
            q = independent_results[name]
            self.assertEqual(len(p["smith_factors"]), q["rank_over_Q"])
            self.assertEqual(
                math.prod(p["smith_factors"]),
                q["torsion_order_from_determinantal_divisor"],
            )
            self.assertEqual(p["homology_over_Z"]["H1"]["free_rank"], q["homology_over_Z"]["H1_free_rank"])
            self.assertEqual(p["homology_over_Z"]["H2"]["free_rank"], q["homology_over_Z"]["H2_free_rank"])

    def test_damaged_mesh_is_rejected(self) -> None:
        n_vertices, faces, expected, _ = SURFACES["projective_plane_six_vertex"]
        with self.assertRaises(AssertionError):
            primary.analyze("damaged-projective-plane", n_vertices, faces[:-1], expected)
        with self.assertRaises(AssertionError):
            independent.analyze("damaged-projective-plane", n_vertices, faces[:-1], expected)

    def test_disconnected_closed_mesh_is_rejected(self) -> None:
        n_vertices, faces, expected, _ = SURFACES["sphere_tetrahedron"]
        doubled = faces + [tuple(vertex + n_vertices for vertex in face) for face in faces]
        with self.assertRaises(AssertionError):
            primary.analyze("two-disjoint-spheres", 2 * n_vertices, doubled, expected)
        with self.assertRaises(AssertionError):
            independent.analyze("two-disjoint-spheres", 2 * n_vertices, doubled, expected)

    def test_vertex_wedge_is_rejected_as_not_a_surface(self) -> None:
        n_vertices, faces, expected, _ = SURFACES["sphere_tetrahedron"]
        second = [tuple(0 if vertex == 0 else vertex + n_vertices - 1 for vertex in face) for face in faces]
        wedge = faces + second
        with self.assertRaises(AssertionError):
            primary.analyze("two-spheres-wedged-at-one-vertex", 2 * n_vertices - 1, wedge, expected)
        with self.assertRaises(AssertionError):
            independent.analyze("two-spheres-wedged-at-one-vertex", 2 * n_vertices - 1, wedge, expected)

    def test_wrong_orientation_sign_is_rejected_by_chain_check(self) -> None:
        n_vertices, faces, _expected, _ = SURFACES["sphere_tetrahedron"]
        _faces, _edges, _boundary, _counts, composed = independent.build_boundary(
            n_vertices, faces, middle_sign=1
        )
        self.assertTrue(any(value for row in composed for value in row))

    def test_smith_reduction_known_nontrivial_matrices(self) -> None:
        self.assertEqual(primary.smith_diagonal([[2, 0], [0, 4]]), [2, 4])
        self.assertEqual(primary.smith_diagonal([[2, 4], [6, 8]]), [2, 4])

    def test_mod_two_betti_numbers_do_not_state_integer_torsion(self) -> None:
        n_vertices, faces, expected_f2, _ = SURFACES["projective_plane_six_vertex"]
        integer = primary.analyze("rp2", n_vertices, faces, expected_f2)["homology_over_Z"]
        self.assertEqual(expected_f2, (1, 1, 1))
        self.assertEqual(integer["H1"]["free_rank"], 0)
        self.assertEqual(integer["H1"]["torsion_cyclic_orders"], [2])
        self.assertEqual(integer["H2"]["free_rank"], 0)


if __name__ == "__main__":
    unittest.main()
