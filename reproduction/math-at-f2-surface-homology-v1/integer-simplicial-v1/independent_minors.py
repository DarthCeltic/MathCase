#!/usr/bin/env python3
"""Independent rank/minor check for the integer surface homology package."""
from __future__ import annotations

import argparse
from fractions import Fraction
import hashlib
import itertools
import json
import math
import platform
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent
PARENT = ROOT.parent
sys.path.insert(0, str(PARENT))
from homology import SURFACES  # noqa: E402


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def write_json(path: Path, value: object) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(value, indent=2, sort_keys=True) + "\n")


def rational_rank(rows: list[list[int]]) -> int:
    if not rows:
        return 0
    matrix = [[Fraction(value) for value in row] for row in rows]
    row_count, column_count = len(matrix), len(matrix[0])
    pivot_row = 0
    for column in range(column_count):
        pivot = next((i for i in range(pivot_row, row_count) if matrix[i][column]), None)
        if pivot is None:
            continue
        matrix[pivot_row], matrix[pivot] = matrix[pivot], matrix[pivot_row]
        scale = matrix[pivot_row][column]
        matrix[pivot_row] = [value / scale for value in matrix[pivot_row]]
        for i in range(row_count):
            if i != pivot_row and matrix[i][column]:
                factor = matrix[i][column]
                matrix[i] = [x - factor * y for x, y in zip(matrix[i], matrix[pivot_row])]
        pivot_row += 1
        if pivot_row == row_count:
            break
    return pivot_row


def determinant_bareiss(square: list[list[int]]) -> int:
    size = len(square)
    if size == 0:
        return 1
    matrix = [row[:] for row in square]
    sign = 1
    previous = 1
    for pivot_index in range(size - 1):
        if matrix[pivot_index][pivot_index] == 0:
            swap = next((i for i in range(pivot_index + 1, size) if matrix[i][pivot_index]), None)
            if swap is None:
                return 0
            matrix[pivot_index], matrix[swap] = matrix[swap], matrix[pivot_index]
            sign = -sign
        pivot = matrix[pivot_index][pivot_index]
        for i in range(pivot_index + 1, size):
            for j in range(pivot_index + 1, size):
                numerator = matrix[i][j] * pivot - matrix[i][pivot_index] * matrix[pivot_index][j]
                if numerator % previous:
                    raise AssertionError("Bareiss division was not exact")
                matrix[i][j] = numerator // previous
        for i in range(pivot_index + 1, size):
            matrix[i][pivot_index] = 0
        previous = pivot
    return sign * matrix[-1][-1]


def build_boundary(n_vertices: int, faces: list[tuple[int, int, int]], middle_sign: int = -1):
    normalized = [tuple(sorted(face)) for face in faces]
    edges = sorted({edge for a, b, c in normalized for edge in ((a, b), (a, c), (b, c))})
    edge_index = {edge: index for index, edge in enumerate(edges)}
    boundary = [[0 for _ in normalized] for _ in edges]
    incidence = [[0 for _ in edges] for _ in range(n_vertices)]
    edge_faces = [0] * len(edges)
    for edge_number, (u, v) in enumerate(edges):
        incidence[u][edge_number] = -1
        incidence[v][edge_number] = 1
    for face_number, (a, b, c) in enumerate(normalized):
        # Deliberately separate from the first checker: fill columns from the
        # three oriented edge records, then multiply the incidence matrices.
        for u, v, coefficient in ((a, b, 1), (a, c, middle_sign), (b, c, 1)):
            edge_number = edge_index[(u, v)]
            boundary[edge_number][face_number] += coefficient
            edge_faces[edge_number] += 1
    composed = [[sum(incidence[i][e] * boundary[e][j] for e in range(len(edges)))
                 for j in range(len(normalized))] for i in range(n_vertices)]
    return normalized, edges, boundary, edge_faces, composed


def validate_vertex_links(n_vertices: int, faces: list[tuple[int, int, int]], name: str) -> None:
    # Separate link construction from the primary check: count link-edges,
    # then use a walk to require one connected 2-regular graph at each vertex.
    incident_links: list[list[tuple[int, int]]] = [[] for _ in range(n_vertices)]
    for face in faces:
        for index, vertex in enumerate(face):
            other = [face[j] for j in range(3) if j != index]
            incident_links[vertex].append((other[0], other[1]))
    for vertex, link_edges in enumerate(incident_links):
        degree: dict[int, int] = {}
        graph: dict[int, set[int]] = {}
        for left, right in link_edges:
            degree[left] = degree.get(left, 0) + 1
            degree[right] = degree.get(right, 0) + 1
            graph.setdefault(left, set()).add(right)
            graph.setdefault(right, set()).add(left)
        if len(graph) < 3 or any(value != 2 for value in degree.values()):
            raise AssertionError(f"{name}: link of vertex {vertex} is not a cycle")
        seed = next(iter(graph))
        reached = {seed}
        queue = [seed]
        while queue:
            for neighbor in graph[queue.pop()] - reached:
                reached.add(neighbor)
                queue.append(neighbor)
        if reached != set(graph):
            raise AssertionError(f"{name}: link of vertex {vertex} is disconnected")


def gcd_maximal_minors(matrix: list[list[int]], rank: int) -> tuple[int, int]:
    if rank == 0:
        return 1, 1
    row_count = len(matrix)
    column_count = len(matrix[0]) if matrix else 0
    divisor = 0
    count = 0
    for chosen_rows in itertools.combinations(range(row_count), rank):
        for chosen_columns in itertools.combinations(range(column_count), rank):
            minor = [[matrix[i][j] for j in chosen_columns] for i in chosen_rows]
            divisor = math.gcd(divisor, abs(determinant_bareiss(minor)))
            count += 1
    return divisor, count


def analyze(name: str, n_vertices: int, faces: list[tuple[int, int, int]], expected_f2: tuple[int, int, int]) -> dict:
    normalized, edges, boundary, edge_faces, composed = build_boundary(n_vertices, faces)
    if len(set(normalized)) != len(normalized) or any(len(set(face)) != 3 for face in faces):
        raise AssertionError(f"{name}: duplicate or degenerate face")
    if any(vertex < 0 or vertex >= n_vertices for face in normalized for vertex in face):
        raise AssertionError(f"{name}: vertex out of range")
    if set(edge_faces) != {2}:
        raise AssertionError(f"{name}: every edge must occur in exactly two faces")
    validate_vertex_links(n_vertices, normalized, name)
    if any(value for row in composed for value in row):
        raise AssertionError(f"{name}: ∂1∂2 is nonzero")

    # A disjoint-set forest gives an integral fundamental-cycle coordinate
    # system. It is used only to select non-tree rows of the face-boundary map.
    roots = list(range(n_vertices))
    def find(x: int) -> int:
        while roots[x] != x:
            roots[x] = roots[roots[x]]
            x = roots[x]
        return x
    tree = set()
    for u, v in edges:
        ru, rv = find(u), find(v)
        if ru != rv:
            roots[ru] = rv
            tree.add((u, v))
    if len(tree) != n_vertices - 1 or len({find(v) for v in range(n_vertices)}) != 1:
        raise AssertionError(f"{name}: 1-skeleton is disconnected")
    chords = [i for i, edge in enumerate(edges) if edge not in tree]
    cycle_coordinates = [boundary[edge_number][:] for edge_number in chords]

    # Independent exact rational rank and determinantal-divisor computation.
    rank_boundary = rational_rank(boundary)
    rank_coordinates = rational_rank(cycle_coordinates)
    if rank_boundary != rank_coordinates:
        raise AssertionError(f"{name}: cycle-coordinate rank differs from boundary rank")
    torsion_order, minor_count = gcd_maximal_minors(cycle_coordinates, rank_coordinates)
    h1_rank = len(chords) - rank_boundary
    h2_rank = len(normalized) - rank_boundary
    result = {
        "surface": name,
        "independent_method": "Fraction Gaussian rank plus gcd of all maximal minors via Bareiss determinants",
        "boundary_shape": [len(edges), len(normalized)],
        "cycle_coordinate_shape": [len(chords), len(normalized)],
        "rank_over_Q": rank_boundary,
        "number_of_maximal_minors_checked": minor_count,
        "torsion_order_from_determinantal_divisor": torsion_order,
        "homology_over_Z": {
            "H0_free_rank": 1,
            "H1_free_rank": h1_rank,
            "H1_torsion_order": torsion_order,
            "H2_free_rank": h2_rank,
        },
        "closed_surface_input_checks": {
            "connected_1_skeleton": True,
            "each_edge_in_two_faces": True,
            "each_vertex_link_is_a_cycle": True,
            "integer_boundary_squared_zero": True,
        },
        "homology_over_F2_betti": list(expected_f2),
    }
    return result


def compute() -> dict:
    start = time.perf_counter()
    surfaces = {
        name: analyze(name, n_vertices, faces, expected_f2)
        for name, (n_vertices, faces, expected_f2, _orientable) in SURFACES.items()
    }
    expected = {
        "sphere_tetrahedron": (0, 1, 1),
        "torus_periodic_3x3": (2, 1, 1),
        "projective_plane_six_vertex": (0, 0, 2),
    }
    for name, (h1_rank, h2_rank, torsion_order) in expected.items():
        h = surfaces[name]["homology_over_Z"]
        if (h["H1_free_rank"], h["H2_free_rank"], h["H1_torsion_order"]) != (h1_rank, h2_rank, torsion_order):
            raise AssertionError(f"{name}: independent invariants do not match expected values")
    return {
        "format": "mathcase.integer-simplicial-surface-homology-independent.v1",
        "scope": "Independent arithmetic cross-check for the same three explicit meshes.",
        "elapsed_seconds": round(time.perf_counter() - start, 6),
        "surfaces": surfaces,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=ROOT / "evidence")
    args = parser.parse_args()
    result = compute()
    args.out.mkdir(parents=True, exist_ok=True)
    result_path = args.out / "independent-minors-result.json"
    write_json(result_path, result)
    receipt = {
        "format": "mathcase.integer-simplicial-surface-homology-independent-receipt.v1",
        "status": "PASS",
        "python_version": platform.python_version(),
        "source_sha256": {
            "independent_minors.py": sha256(Path(__file__).resolve()),
            "mesh_source_homology.py": sha256(PARENT / "homology.py"),
        },
        "result_sha256": sha256(result_path),
        "result": result,
    }
    receipt_path = args.out / "independent-minors-receipt.json"
    write_json(receipt_path, receipt)
    print(f"PASS: independent rank and minor checks for {len(result['surfaces'])} meshes")
    for name, value in result["surfaces"].items():
        h = value["homology_over_Z"]
        print(f"  {name}: rank(H1 free)={h['H1_free_rank']}, torsion order={h['H1_torsion_order']}, rank(H2 free)={h['H2_free_rank']}")
    print(f"checked maximal minors: {sum(x['number_of_maximal_minors_checked'] for x in result['surfaces'].values())}")
    print(f"elapsed seconds: {result['elapsed_seconds']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
