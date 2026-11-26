#!/usr/bin/env python3
"""Compute F2 homology for three explicit closed triangulated surfaces."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def torus_3x3() -> tuple[int, list[tuple[int, int, int]]]:
    """Periodic 3x3 square grid, each square split by its rising diagonal."""
    def v(i: int, j: int) -> int:
        return (i % 3) * 3 + (j % 3)

    faces = []
    for i in range(3):
        for j in range(3):
            faces.append((v(i, j), v(i + 1, j), v(i + 1, j + 1)))
            faces.append((v(i, j), v(i, j + 1), v(i + 1, j + 1)))
    return 9, faces


SURFACES = {
    "sphere_tetrahedron": (4, [(0, 1, 2), (0, 1, 3), (0, 2, 3), (1, 2, 3)], (1, 0, 1), True),
    "torus_periodic_3x3": (*torus_3x3(), (1, 2, 1), True),
    "projective_plane_six_vertex": (
        6,
        [(0, 1, 2), (0, 1, 3), (0, 2, 4), (0, 3, 5), (0, 4, 5),
         (1, 2, 5), (1, 3, 4), (1, 4, 5), (2, 3, 4), (2, 3, 5)],
        (1, 1, 1),
        False,
    ),
}


def rank_rows_gf2(rows: list[int]) -> int:
    """Gaussian elimination on binary row vectors encoded as Python integers."""
    pivots: dict[int, int] = {}
    for row in rows:
        value = row
        while value:
            pivot = value.bit_length() - 1
            if pivot in pivots:
                value ^= pivots[pivot]
            else:
                pivots[pivot] = value
                break
    return len(pivots)


def image_size_rank_gf2(columns: list[int]) -> int:
    """Independent rank oracle: enumerate the image subspace by XOR closure."""
    image = {0}
    for column in columns:
        image |= {value ^ column for value in image}
    size = len(image)
    if size & (size - 1):
        raise AssertionError("image size is not a power of two")
    return size.bit_length() - 1


def analyze(name: str, n_vertices: int, raw_faces: list[tuple[int, int, int]], expected: tuple[int, int, int], orientable_expected: bool) -> dict:
    faces = [tuple(sorted(face)) for face in raw_faces]
    if len(set(faces)) != len(faces) or any(len(set(face)) != 3 for face in raw_faces):
        raise AssertionError(f"{name}: repeated or degenerate triangles")
    if any(v < 0 or v >= n_vertices for face in faces for v in face):
        raise AssertionError(f"{name}: vertex out of range")
    vertices = list(range(n_vertices))
    edges = sorted({edge for a, b, c in faces for edge in ((a, b), (a, c), (b, c))})
    edge_index = {edge: i for i, edge in enumerate(edges)}
    face_index = {face: i for i, face in enumerate(faces)}
    if len(face_index) != len(faces):
        raise AssertionError(f"{name}: duplicate normalized face")

    # Each boundary matrix column is encoded as a bitset in the target basis.
    d1_columns = []  # C1 -> C0
    for a, b in edges:
        d1_columns.append((1 << a) | (1 << b))
    d2_columns = []  # C2 -> C1
    for a, b, c in faces:
        d2_columns.append((1 << edge_index[(a, b)]) | (1 << edge_index[(a, c)]) | (1 << edge_index[(b, c)]))

    # Verify boundary squared is exactly zero for each triangle.
    for boundary in d2_columns:
        total = 0
        bits = boundary
        while bits:
            bit = bits & -bits
            bits ^= bit
            total ^= d1_columns[bit.bit_length() - 1]
        if total:
            raise AssertionError(f"{name}: boundary composed with boundary is nonzero")

    # Ranks by two independently structured methods: row echelon and exact image enumeration.
    d1_rows = [sum(((column >> vertex) & 1) << edge for edge, column in enumerate(d1_columns)) for vertex in vertices]
    d2_rows = [sum(((column >> edge) & 1) << face for face, column in enumerate(d2_columns)) for edge in range(len(edges))]
    rank_d1 = rank_rows_gf2(d1_rows)
    rank_d2 = rank_rows_gf2(d2_rows)
    if rank_d1 != image_size_rank_gf2(d1_columns):
        raise AssertionError(f"{name}: independent d1 rank methods disagree")
    if rank_d2 != image_size_rank_gf2(d2_columns):
        raise AssertionError(f"{name}: independent d2 rank methods disagree")

    # Closed 2-manifold checks: every edge occurs in two faces and the 1-skeleton is connected.
    edge_face_count = [0] * len(edges)
    for boundary in d2_columns:
        bits = boundary
        while bits:
            bit = bits & -bits
            bits ^= bit
            edge_face_count[bit.bit_length() - 1] += 1
    if set(edge_face_count) != {2}:
        raise AssertionError(f"{name}: not a closed triangulated 2-manifold")
    adjacency = [set() for _ in vertices]
    for a, b in edges:
        adjacency[a].add(b)
        adjacency[b].add(a)
    reached = {0}
    frontier = [0]
    while frontier:
        vertex = frontier.pop()
        for neighbor in adjacency[vertex] - reached:
            reached.add(neighbor)
            frontier.append(neighbor)
    if len(reached) != n_vertices:
        raise AssertionError(f"{name}: disconnected 1-skeleton")

    # Orientability: propagate face signs so each shared edge cancels; a contradiction means nonorientable.
    faces_at_edge: list[list[tuple[int, int]]] = [[] for _ in edges]
    for fi, (a, b, c) in enumerate(faces):
        # Boundary orientation of (a,b,c): (a,b) - (a,c) + (b,c).
        for u, v, sign in ((a, b, 1), (a, c, -1), (b, c, 1)):
            edge = tuple(sorted((u, v)))
            canonical_sign = sign if (u, v) == edge else -sign
            faces_at_edge[edge_index[edge]].append((fi, canonical_sign))
    signs: dict[int, int] = {}
    orientable = True
    for start in range(len(faces)):
        if start in signs:
            continue
        signs[start] = 1
        stack = [start]
        while stack:
            fi = stack.pop()
            for edge, incident in enumerate(faces_at_edge):
                if len(incident) != 2 or not any(face_id == fi for face_id, _ in incident):
                    continue
                (f1, s1), (f2, s2) = incident
                other, sign_here, sign_other = (f2, s1, s2) if f1 == fi else (f1, s2, s1)
                required = -signs[fi] * sign_here * sign_other
                if other in signs:
                    if signs[other] != required:
                        orientable = False
                else:
                    signs[other] = required
                    stack.append(other)

    beta0 = n_vertices - rank_d1
    beta1 = len(edges) - rank_d1 - rank_d2
    beta2 = len(faces) - rank_d2
    betti = (beta0, beta1, beta2)
    euler = n_vertices - len(edges) + len(faces)
    if betti != expected or orientable != orientable_expected:
        raise AssertionError(f"{name}: got Betti {betti}, orientable={orientable}")
    if euler != beta0 - beta1 + beta2:
        raise AssertionError(f"{name}: Euler/Betti identity failed")
    return {
        "vertices": n_vertices,
        "edges": len(edges),
        "triangles": len(faces),
        "boundary_ranks_f2": {"d1": rank_d1, "d2": rank_d2},
        "betti_numbers_f2": {"b0": beta0, "b1": beta1, "b2": beta2},
        "euler_characteristic": euler,
        "connected": True,
        "closed_surface_edge_incidence": "every edge is in exactly two triangles",
        "orientable": orientable,
        "boundary_squared_zero": True,
        "independent_rank_methods_agree": True,
    }


def main() -> None:
    results = {}
    for name, (n_vertices, faces, expected, orientable) in SURFACES.items():
        results[name] = analyze(name, n_vertices, faces, expected, orientable)
    receipt = {
        "schema_version": 1,
        "coefficient_field": "F_2",
        "method": "exact simplicial boundary matrices; row elimination cross-checked by explicit XOR-image enumeration",
        "scope": "three explicitly listed finite closed triangulated surfaces; not a general-purpose topology package",
        "surfaces": results,
    }
    (ROOT / "verification.json").write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print("PASS: F2 homology, boundary-squared-zero, manifold incidence, connectivity, orientability, Euler checks, and independent ranks for sphere/torus/RP2.")
    for name, result in results.items():
        print(name, result["betti_numbers_f2"], "chi=" + str(result["euler_characteristic"]))


if __name__ == "__main__":
    main()
