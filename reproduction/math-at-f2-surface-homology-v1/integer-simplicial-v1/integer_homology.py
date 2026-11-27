#!/usr/bin/env python3
"""Exact integer homology for the three explicit meshes in the parent case."""
from __future__ import annotations

import argparse
import hashlib
import json
import platform
import sys
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


def swap_rows(matrix: list[list[int]], i: int, j: int) -> None:
    matrix[i], matrix[j] = matrix[j], matrix[i]


def swap_columns(matrix: list[list[int]], i: int, j: int) -> None:
    for row in matrix:
        row[i], row[j] = row[j], row[i]


def validate_vertex_links(n_vertices: int, faces: list[tuple[int, int, int]], name: str) -> None:
    links = [dict() for _ in range(n_vertices)]
    for a, b, c in faces:
        for vertex, left, right in ((a, b, c), (b, a, c), (c, a, b)):
            links[vertex].setdefault(left, set()).add(right)
            links[vertex].setdefault(right, set()).add(left)
    for vertex, link in enumerate(links):
        if len(link) < 3 or any(len(neighbors) != 2 for neighbors in link.values()):
            raise AssertionError(f"{name}: link of vertex {vertex} is not a cycle")
        seen = {next(iter(link))}
        pending = list(seen)
        while pending:
            current = pending.pop()
            for neighbor in link[current] - seen:
                seen.add(neighbor)
                pending.append(neighbor)
        if len(seen) != len(link):
            raise AssertionError(f"{name}: link of vertex {vertex} is disconnected")


def smith_diagonal(matrix: list[list[int]]) -> list[int]:
    """Return nonzero Smith factors using integer Euclidean row/column moves."""
    if not matrix:
        return []
    row_count = len(matrix)
    column_count = len(matrix[0])
    if any(len(row) != column_count for row in matrix):
        raise ValueError("matrix is ragged")
    a = [row[:] for row in matrix]
    limit = min(row_count, column_count)

    for k in range(limit):
        nonzero = next(
            ((i, j) for i in range(k, row_count) for j in range(k, column_count) if a[i][j]),
            None,
        )
        if nonzero is None:
            break
        swap_rows(a, k, nonzero[0])
        swap_columns(a, k, nonzero[1])

        while True:
            if a[k][k] < 0:
                a[k] = [-value for value in a[k]]

            restarted = False
            for i in range(k + 1, row_count):
                if a[i][k]:
                    quotient = a[i][k] // a[k][k]
                    a[i] = [x - quotient * y for x, y in zip(a[i], a[k])]
                    if a[i][k]:
                        swap_rows(a, i, k)
                        restarted = True
                        break
            if restarted:
                continue

            for j in range(k + 1, column_count):
                if a[k][j]:
                    quotient = a[k][j] // a[k][k]
                    for i in range(row_count):
                        a[i][j] -= quotient * a[i][k]
                    if a[k][j]:
                        swap_columns(a, j, k)
                        restarted = True
                        break
            if restarted:
                continue

            offender = next(
                (
                    (i, j)
                    for i in range(k + 1, row_count)
                    for j in range(k + 1, column_count)
                    if a[i][j] % a[k][k] != 0
                ),
                None,
            )
            if offender is None:
                break

            # The pivot fails to divide the remaining block. Bring the offender
            # into its row; the next Euclidean column step strictly lowers it.
            i, _j = offender
            a[k] = [x + y for x, y in zip(a[k], a[i])]

    diagonal = [abs(a[i][i]) for i in range(limit) if a[i][i]]
    if any(value <= 0 for value in diagonal):
        raise AssertionError("Smith factors must be positive")
    if any(right % left for left, right in zip(diagonal, diagonal[1:])):
        raise AssertionError(f"Smith divisibility chain failed: {diagonal}")
    for i in range(row_count):
        for j in range(column_count):
            if i != j and a[i][j] != 0:
                raise AssertionError("Smith reduction did not diagonalize")
    return diagonal


def analyze(name: str, n_vertices: int, raw_faces: list[tuple[int, int, int]], expected_f2: tuple[int, int, int]) -> dict:
    faces = [tuple(sorted(face)) for face in raw_faces]
    if len(set(faces)) != len(faces) or any(len(set(face)) != 3 for face in raw_faces):
        raise AssertionError(f"{name}: repeated or degenerate triangles")
    if any(vertex < 0 or vertex >= n_vertices for face in faces for vertex in face):
        raise AssertionError(f"{name}: vertex outside declared range")

    edges = sorted({edge for a, b, c in faces for edge in ((a, b), (a, c), (b, c))})
    edge_index = {edge: index for index, edge in enumerate(edges)}
    edge_face_count = [0] * len(edges)
    adjacency = [[] for _ in range(n_vertices)]
    for a, b in edges:
        adjacency[a].append(b)
        adjacency[b].append(a)
    reached = {0}
    frontier = [0]
    while frontier:
        vertex = frontier.pop()
        for other in adjacency[vertex]:
            if other not in reached:
                reached.add(other)
                frontier.append(other)
    if len(reached) != n_vertices:
        raise AssertionError(f"{name}: 1-skeleton is disconnected")

    # Build a spanning tree. Each non-tree edge supplies one integral
    # coordinate for the cycle lattice, so the cycle rank is E - V + 1.
    parent = list(range(n_vertices))

    def find(vertex: int) -> int:
        while parent[vertex] != vertex:
            parent[vertex] = parent[parent[vertex]]
            vertex = parent[vertex]
        return vertex

    tree_edges: set[tuple[int, int]] = set()
    for edge in edges:
        left, right = edge
        left_root, right_root = find(left), find(right)
        if left_root != right_root:
            parent[left_root] = right_root
            tree_edges.add(edge)
    chord_edges = [edge for edge in edges if edge not in tree_edges]
    chord_index = {edge: index for index, edge in enumerate(chord_edges)}

    # A face boundary uses [a,b] - [a,c] + [b,c], where each edge is
    # represented in increasing-vertex orientation.
    presentation = [[0 for _ in faces] for _ in chord_edges]
    for face_number, (a, b, c) in enumerate(faces):
        boundary_terms = (((a, b), 1), ((a, c), -1), ((b, c), 1))
        vertex_boundary = [0] * n_vertices
        for (u, v), sign in boundary_terms:
            # Canonical faces have a < b < c; all listed terms already use
            # increasing edge orientation, but keep this explicit check.
            if u > v:
                u, v, sign = v, u, -sign
            vertex_boundary[u] -= sign
            vertex_boundary[v] += sign
            edge_number = edge_index[(u, v)]
            edge_face_count[edge_number] += 1
            if (u, v) in chord_index:
                presentation[chord_index[(u, v)]][face_number] += sign
        if any(vertex_boundary):
            raise AssertionError(f"{name}: integer boundary squared is nonzero")

    if set(edge_face_count) != {2}:
        raise AssertionError(f"{name}: an edge does not occur in exactly two faces")
    validate_vertex_links(n_vertices, faces, name)

    smith = smith_diagonal(presentation)
    rank = len(smith)
    cycle_rank = len(chord_edges)
    h1_free_rank = cycle_rank - rank
    h2_rank = len(faces) - rank
    torsion = [factor for factor in smith if factor > 1]
    result = {
        "surface": name,
        "simplices": {"vertices": n_vertices, "edges": len(edges), "faces": len(faces)},
        "cycle_rank_from_spanning_tree": cycle_rank,
        "face_boundary_presentation_shape": [len(chord_edges), len(faces)],
        "smith_factors": smith,
        "homology_over_Z": {
            "H0": {"free_rank": 1, "torsion": []},
            "H1": {"free_rank": h1_free_rank, "torsion_cyclic_orders": torsion},
            "H2": {"free_rank": h2_rank, "torsion": []},
        },
        "homology_over_F2_betti": list(expected_f2),
        "checks": {
            "connected_1_skeleton": True,
            "each_edge_in_two_faces": True,
            "each_vertex_link_is_a_cycle": True,
            "integer_boundary_squared_zero": True,
            "smith_divisibility_chain": True,
        },
    }
    return result


def compute() -> dict:
    surfaces = {}
    for name, (n_vertices, faces, expected_f2, _orientable) in SURFACES.items():
        surfaces[name] = analyze(name, n_vertices, faces, expected_f2)
    expected = {
        "sphere_tetrahedron": (0, [], 1),
        "torus_periodic_3x3": (2, [], 1),
        "projective_plane_six_vertex": (0, [2], 0),
    }
    for name, (h1_rank, torsion, h2_rank) in expected.items():
        homology = surfaces[name]["homology_over_Z"]
        if homology["H1"]["free_rank"] != h1_rank:
            raise AssertionError(f"{name}: unexpected H1 free rank")
        if homology["H1"]["torsion_cyclic_orders"] != torsion:
            raise AssertionError(f"{name}: unexpected H1 torsion")
        if homology["H2"]["free_rank"] != h2_rank:
            raise AssertionError(f"{name}: unexpected H2 rank")
    return {
        "format": "mathcase.integer-simplicial-surface-homology.v1",
        "scope": "Exact integer homology for the three explicit meshes imported from the adjacent F2 case.",
        "surfaces": surfaces,
    }


def write_receipt(output: Path, result: dict) -> dict:
    output.mkdir(parents=True, exist_ok=True)
    mesh_source = PARENT / "homology.py"
    receipt = {
        "format": "mathcase.integer-simplicial-surface-homology-receipt.v1",
        "status": "PASS",
        "python_version": platform.python_version(),
        "source_sha256": {
            "integer_homology.py": sha256(Path(__file__).resolve()),
            "mesh_source_homology.py": sha256(mesh_source),
        },
        "result": result,
    }
    result_path = output / "integer-homology-result.json"
    write_json(result_path, result)
    receipt["result_sha256"] = sha256(result_path)
    receipt_path = output / "integer-homology-receipt.json"
    write_json(receipt_path, receipt)
    return receipt


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=ROOT / "evidence")
    args = parser.parse_args()
    result = compute()
    receipt = write_receipt(args.out, result)
    print(f"PASS: exact integer homology for {len(result['surfaces'])} explicit meshes")
    for name, data in result["surfaces"].items():
        groups = data["homology_over_Z"]
        h1_parts = []
        h1_rank = groups["H1"]["free_rank"]
        if h1_rank:
            h1_parts.append("Z" if h1_rank == 1 else f"Z^{h1_rank}")
        h1_parts.extend(f"Z/{order}Z" for order in groups["H1"]["torsion_cyclic_orders"])
        h1 = " + ".join(h1_parts) if h1_parts else "0"
        h2_rank = groups["H2"]["free_rank"]
        h2 = "0" if h2_rank == 0 else ("Z" if h2_rank == 1 else f"Z^{h2_rank}")
        print(
            f"  {name}: H0=Z, H1={h1}, H2={h2}"
        )
    print(f"receipt result SHA-256: {receipt['result_sha256']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
