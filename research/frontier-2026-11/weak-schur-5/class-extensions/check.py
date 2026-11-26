"""Check binary branch certificates for freely recoloring two whole classes."""

import argparse
from collections import Counter
from itertools import combinations
import json
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from verify_weak_schur import NAMES, source


def sums_inside(vertices):
    members = set(vertices)
    return [(a, c - a, c) for c in sorted(members) for a in range(1, (c + 1) // 2)
            if a in members and c - a in members]


def contradiction(triples, assigned):
    """Propagate the two-color rule until a conflict or a fixed point."""
    while True:
        changed = False
        for triple in triples:
            known = [assigned[x] for x in triple if x in assigned]
            if len(known) < 2 or len(set(known)) != 1:
                continue
            if len(known) == 3:
                return True
            missing = next(x for x in triple if x not in assigned)
            assigned[missing] = 1 - known[0]
            changed = True
        if not changed:
            return False


def check_tree(node, vertices, triples, assigned):
    dead = contradiction(triples, assigned)
    if type(node) is int and node == 0:
        if not dead:
            raise ValueError("A claimed contradictory leaf is consistent after propagation")
        return 1
    if not isinstance(node, list) or len(node) != 3 or type(node[0]) is not int:
        raise ValueError("Expected a branch and its two children")
    x, left, right = node
    if dead or x not in vertices or x in assigned:
        raise ValueError("Invalid branch variable")
    children = 0
    for color, child in enumerate((left, right)):
        extension = assigned.copy()
        extension[x] = color
        children += check_tree(child, vertices, triples, extension)
    return 1 + children


def check_cases(data, cache):
    expected = {(name, pair) for name in NAMES for pair in combinations(range(1, 6), 2)}
    seeds = {name: source(name, cache) for name in NAMES}
    original_triples = sums_inside(range(1, 208))
    full_triples = sums_inside(range(1, 209))
    if len(original_triples) != 10609 or len(full_triples) != 10712:
        raise ValueError("Unexpected number of constraints")
    for name, seed in seeds.items():
        if any(seed[a] == seed[b] == seed[c] for a, b, c in original_triples):
            raise ValueError(f"Invalid published coloring: {name}")
        # No untouched class can take 208: at least two of its old members sum to it.
        blocked = {seed[a] for a, b, c in full_triples if c == 208 and seed[a] == seed[b]}
        if blocked != set(range(1, 6)):
            raise ValueError(f"One of {name}'s classes could take 208 unchanged")

    totals = Counter()
    if data["version"] != 1:
        raise ValueError("Unsupported certificate version")
    for row in data["cases"]:
        name, pair = row["seed"], tuple(row["colors"])
        if (name, pair) not in expected:
            raise ValueError("Unexpected or duplicate case")
        expected.remove((name, pair))
        seed = seeds[name]
        vertices = {x for x in range(1, 208) if seed[x] in pair} | {208}
        if len(vertices) != row["free_vertices"]:
            raise ValueError("Incorrect size of the free set")
        if ("coloring" in row) == ("refutation" in row):
            raise ValueError("One certificate is required per case")
        if "coloring" in row:
            colors = [0, *row["coloring"]]
            if len(colors) != 209 or any(type(x) is not int or not 1 <= x <= 5 for x in colors[1:]):
                raise ValueError("Invalid coloring format")
            if any(colors[x] not in pair if x in vertices else colors[x] != seed[x] for x in range(1, 209)):
                raise ValueError("Coloring violates the restrictions on the three retained classes")
            if any(colors[a] == colors[b] == colors[c] for a, b, c in full_triples):
                raise ValueError("Monochromatic sum in a proposed 208 witness")
            totals["valid_colorings"] += 1
        else:
            nodes = check_tree(row["refutation"], vertices, sums_inside(vertices), {min(vertices): 0})
            if nodes != row["nodes"]:
                raise ValueError("Incorrect number of certificate nodes")
            totals["refuted"] += 1
            totals["checked_tree_nodes"] += nodes
    if expected:
        raise ValueError("Missing cases")
    return dict(totals)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input-cache", required=True, type=Path)
    parser.add_argument("--certificate", type=Path, default=Path(__file__).with_name("certificates.json"))
    args = parser.parse_args()
    print(json.dumps(check_cases(json.loads(args.certificate.read_bytes()), args.input_cache)))
