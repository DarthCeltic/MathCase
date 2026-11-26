"""Can two entire classes of a published weak Schur coloring be repartitioned?"""

import argparse
import itertools
import json
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from verify_weak_schur import NAMES, source, verify


def search(vertices, limit):
    bits = {x: 1 << x for x in vertices}
    triples = [
        bits[a] | bits[b] | bits[a + b]
        for a, b in itertools.combinations(vertices, 2) if a + b in bits
    ]
    nodes = 0

    def solve(red, blue):
        nonlocal nodes
        nodes += 1
        if nodes > limit:
            raise RuntimeError(f"Search exceeded {limit} nodes")
        while True:
            force_red = force_blue = 0
            scores = {}
            for edge in triples:
                if edge & red and edge & blue:
                    continue
                free = edge & ~(red | blue)
                if not free:
                    return 0
                if free.bit_count() == 1:
                    if edge & red:
                        force_blue |= free
                    else:
                        force_red |= free
                else:
                    weight = 2 if free != edge else 1
                    while free:
                        bit = free & -free
                        scores[bit] = scores.get(bit, 0) + weight
                        free ^= bit
            if force_red & force_blue:
                return 0
            if force_red or force_blue:
                red |= force_red
                blue |= force_blue
                continue
            break
        if not scores:
            # Every remaining uncolored vertex is in already satisfied triples.
            return {"red": [x for x in vertices if not blue & bits[x]]}
        pick = max(scores, key=lambda bit: (scores[bit], -bit))
        left = solve(red | pick, blue)
        if isinstance(left, dict):
            return left
        right = solve(red, blue | pick)
        if isinstance(right, dict):
            return right
        return [pick.bit_length() - 1, left, right]

    if not vertices:
        return {"red": []}, nodes
    return_value = solve(bits[min(vertices)], 0)
    return return_value, nodes


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input-cache", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--node-limit", type=int, default=200000)
    args = parser.parse_args()
    cases = []
    for name in NAMES:
        seed = source(name, args.input_cache)
        if verify(seed)["monochromatic"]:
            raise ValueError(f"Invalid 207 seed: {name}")
        for pair in itertools.combinations(range(1, 6), 2):
            vertices = [x for x in range(1, 208) if seed[x] in pair] + [208]
            proof, nodes = search(vertices, args.node_limit)
            if isinstance(proof, dict):
                red = set(proof["red"])
                coloring = seed + [0]
                for x in vertices:
                    coloring[x] = pair[x not in red]
                if verify(coloring)["monochromatic"]:
                    raise ValueError("Invalid reconstructed coloring")
                certificate = {"coloring": coloring[1:]}
            else:
                certificate = {"refutation": proof}
            cases.append(dict(seed=name, colors=pair, free_vertices=len(vertices), nodes=nodes, **certificate))
    args.output.write_text(json.dumps({"version": 1, "cases": cases}, separators=(",", ":")) + "\n", encoding="utf-8")
    for row in cases:
        print(row["seed"], row["colors"], row["free_vertices"], row["nodes"],
              "witness" if "coloring" in row else "refuted")


if __name__ == "__main__":
    main()
