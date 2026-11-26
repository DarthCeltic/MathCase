"""Check the rectangular-torus extremal energy and degeneracy formulas."""
from __future__ import annotations

import argparse
import hashlib
from math import comb
import json
from pathlib import Path


def horizontal_broken(row: int, width: int) -> int:
    return sum(((row >> col) & 1) != ((row >> ((col + 1) % width)) & 1)
               for col in range(width))


def transfer_extremum(width: int, height: int) -> tuple[int, int]:
    """Unconstrained row-mask DP for maximum broken bonds and its count."""
    states = 1 << width
    horizontal = [horizontal_broken(row, width) for row in range(states)]
    best_total = -1
    best_count = 0
    # Global spin flip fixes the first site's spin to zero, then doubles counts.
    for first in range(0, states, 2):
        current = {first: (horizontal[first], 1)}
        for _ in range(1, height):
            following = {}
            for row in range(states):
                maximum = -1
                ways = 0
                for previous, (partial, multiplicity) in current.items():
                    candidate = partial + horizontal[row] + (previous ^ row).bit_count()
                    if candidate > maximum:
                        maximum, ways = candidate, multiplicity
                    elif candidate == maximum:
                        ways += multiplicity
                following[row] = (maximum, ways)
            current = following
        for last, (partial, multiplicity) in current.items():
            candidate = partial + (last ^ first).bit_count()
            if candidate > best_total:
                best_total, best_count = candidate, multiplicity
            elif candidate == best_total:
                best_count += multiplicity
    return best_total, 2 * best_count


def expected(width: int, height: int) -> tuple[int, int]:
    total_bonds = 2 * width * height
    min_aligned = (height if width % 2 else 0) + (width if height % 2 else 0)
    max_broken = total_bonds - min_aligned
    if width % 2 and height % 2:
        degeneracy = 2 * width * (2 * comb(width + height - 1, height - 1) - height)
    elif width % 2:
        degeneracy = 2 * width
    elif height % 2:
        degeneracy = 2 * height
    else:
        degeneracy = 2
    return max_broken, degeneracy


def verify() -> dict:
    cases = []
    extrema = {}
    for width in range(3, 6):
        for height in range(3, 6):
            actual = transfer_extremum(width, height)
            predicted = expected(width, height)
            if actual != predicted:
                raise AssertionError(f"{width}x{height}: transfer {actual} != formula {predicted}")
            extrema[width, height] = actual
            minimum_aligned = (height if width % 2 else 0) + (width if height % 2 else 0)
            cases.append({"W": width, "H": height, "maximum_broken_bonds": actual[0],
                          "minimum_aligned_bonds": minimum_aligned,
                          "antiferromagnetic_ground_energy": 2 * minimum_aligned - 2 * width * height,
                          "ground_degeneracy": actual[1], "formula_matches": True})
    for case in cases:
        width, height = case["W"], case["H"]
        reverse = extrema[height, width]
        actual = extrema[width, height]
        if reverse != actual:
            raise AssertionError(f"{width}x{height}: transposition mismatch {reverse} != {actual}")
        case["transpose_matches"] = True
    return {
        "schema": "mathcase-ising-rectangle-ground-state-check-v1",
        "verified": True,
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "method": "unconstrained full row-mask max-count DP; fixes one spin by global-flip symmetry; formula is used only for comparison",
        "rectangle_count": len(cases),
        "ranges": {"W": [3, 5], "H": [3, 5]},
        "cases": cases,
        "scope": "Finite checks of the general rectangular ground-state formulas; not a full DOS outside square sizes 3,4,5.",
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    receipt = verify()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"verified": receipt["verified"], "rectangles": receipt["rectangle_count"],
                      "selected": [case for case in receipt["cases"]
                                   if (case["W"], case["H"]) in ((3, 5), (5, 3), (5, 5))]}, indent=2))


if __name__ == "__main__":
    main()
