from itertools import combinations
from collections import Counter
from math import comb
import argparse, hashlib, json


def base_difference_colors():
    """Three multiplicative cosets in GF(16) = GF(2)[x]/(x^4 + x + 1)."""
    colors = [0] * 16
    value = 1
    for power in range(15):
        if colors[value]:
            raise ValueError("the field generator repeated early")
        colors[value] = 1 + power % 3
        value = (value << 1) ^ (0b10011 if value & 8 else 0)
    if value != 1 or min(colors[1:]) == 0:
        raise ValueError("the field generator did not give all nonzero elements")
    return colors


def generate():
    difference = base_difference_colors()
    # Each tuple maps the base diagonal and its three edge colors.
    block = {
        (0, 0): (0, 2, 3, 4), (1, 1): (0, 3, 1, 4), (2, 2): (0, 1, 2, 4),
        (0, 1): (3, 2, 1, 4), (0, 2): (2, 1, 3, 4), (1, 2): (1, 3, 2, 4),
    }
    matrix = [[0] * 50 for _ in range(50)]
    for a, b in combinations(range(50), 2):
        left, x = divmod(a, 16)
        right, y = divmod(b, 16)
        if left == 3:
            color = 4
        elif right == 3:
            color = left + 1
        else:
            color = block[left, right][difference[x ^ y]]
        matrix[a][b] = matrix[b][a] = color
    return matrix


def matrix_bytes(matrix):
    return ("\n".join("".join(map(str, row)) for row in matrix) + "\n").encode("ascii")


def verify(matrix):
    n = len(matrix)
    if any(len(row) != n or row[i] != 0 for i, row in enumerate(matrix)):
        raise ValueError("invalid square matrix or diagonal")
    counts = Counter()
    for a, b in combinations(range(n), 2):
        color = matrix[a][b]
        if color not in (1, 2, 3, 4) or color != matrix[b][a]:
            raise ValueError("invalid edge color or asymmetric edge")
        counts[color] += 1
    triangles = Counter()
    for a, b, c in combinations(range(n), 3):
        if matrix[a][b] == matrix[a][c] == matrix[b][c]:
            triangles[matrix[a][b]] += 1
    return {"n": n, "edge_counts": [counts[c] for c in range(1, 5)],
            "triangles_checked": comb(n, 3), "monochromatic_triangles": sum(triangles.values()),
            "matrix_sha256": hashlib.sha256(matrix_bytes(matrix)).hexdigest()}


def extension(matrix, limit):
    """Enumerate the colors of the new vertex's incident edges with forward checking."""
    n = len(matrix)
    if verify(matrix)["monochromatic_triangles"]:
        raise ValueError("base coloring has a monochromatic triangle")
    nodes = 0
    class Budget(Exception):
        pass

    def visit(domains, pending):
        nonlocal nodes
        if nodes == limit:
            raise Budget
        nodes += 1
        if not pending:
            colors = [d.bit_length() for d in domains]
            full = [row + [c] for row, c in zip(matrix, colors)] + [colors + [0]]
            if verify(full)["monochromatic_triangles"]:
                raise AssertionError("extension failed independent full-matrix check")
            return colors
        v = min(pending, key=lambda vertex: (domains[vertex].bit_count(), vertex))
        rest = [u for u in pending if u != v]
        for color in range(1, 5):
            bit = 1 << (color - 1)
            if not (domains[v] & bit):
                continue
            remaining = domains.copy()
            remaining[v] = bit
            for u in rest:
                if matrix[v][u] == color:
                    remaining[u] &= ~bit
                    if not remaining[u]:
                        break
            else:
                answer = visit(remaining, rest)
                if answer is not None:
                    return answer
        return None

    try:
        found = visit([15] * n, list(range(n)))
        return {"status": "EXTENSION_FOUND" if found is not None else "NO_EXTENSION_OF_THIS_COLORING",
                "nodes": nodes, "limit": limit, "colors": found}
    except Budget:
        return {"status": "INCONCLUSIVE_NODE_LIMIT", "nodes": nodes, "limit": limit}


def self_test():
    # The only triangle in this base is red. A valid base of order two always extends.
    bad = [[0, 1, 1], [1, 0, 1], [1, 1, 0]]
    if verify(bad)["monochromatic_triangles"] != 1:
        raise AssertionError("failed monochromatic control")
    if extension([[0, 1], [1, 0]], 100)["status"] != "EXTENSION_FOUND":
        raise AssertionError("failed positive extension control")
    if extension([[0, 1], [1, 0]], 1)["status"] != "INCONCLUSIVE_NODE_LIMIT":
        raise AssertionError("budget should be inconclusive")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--extension-nodes", type=int, default=0)
    parser.add_argument("--write-matrix")
    arguments = parser.parse_args()
    if arguments.extension_nodes < 0:
        parser.error("a node limit must be nonnegative")
    self_test()
    matrix = generate()
    report = verify(matrix)
    if report["monochromatic_triangles"] or report["triangles_checked"] != 19600:
        raise SystemExit("K50 witness failed")
    if arguments.write_matrix:
        from pathlib import Path
        Path(arguments.write_matrix).write_bytes(matrix_bytes(matrix))
    if arguments.extension_nodes:
        report["fixed_K50_one_vertex_extension"] = extension(matrix, arguments.extension_nodes)
    print(json.dumps(report, indent=2))
