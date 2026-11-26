"""Compare the rectangular ground-state formulas with an unconstrained row-mask DP."""
from __future__ import annotations

import argparse
import hashlib
from math import comb
import json
from pathlib import Path


def row_broken(mask: int, width: int) -> int:
    full = (1 << width) - 1
    shifted = ((mask << 1) & full) | (mask >> (width - 1))
    return (mask ^ shifted).bit_count()


def extremum(width: int, height: int) -> tuple[int, int]:
    """Return max broken bonds and its labelled-state count on a periodic torus."""
    rows = 1 << width
    horizontal = [row_broken(mask, width) for mask in range(rows)]
    best, count = -1, 0
    # Fix one spin to remove global-flip duplication; restore it in the result.
    for first in range(0, rows, 2):
        states = {first: (horizontal[first], 1)}
        for _ in range(1, height):
            following = {}
            for row in range(rows):
                maximum, ways = -1, 0
                for previous, (partial, multiplicity) in states.items():
                    candidate = partial + horizontal[row] + (previous ^ row).bit_count()
                    if candidate > maximum:
                        maximum, ways = candidate, multiplicity
                    elif candidate == maximum:
                        ways += multiplicity
                following[row] = (maximum, ways)
            states = following
        for last, (partial, multiplicity) in states.items():
            candidate = partial + (last ^ first).bit_count()
            if candidate > best:
                best, count = candidate, multiplicity
            elif candidate == best:
                count += multiplicity
    return best, 2 * count


def formula(width: int, height: int) -> tuple[int, int]:
    min_aligned = (height if width % 2 else 0) + (width if height % 2 else 0)
    max_broken = 2 * width * height - min_aligned
    if width % 2 and height % 2:
        degeneracy = 2 * width * (2 * comb(width + height - 1, height - 1) - height)
    elif width % 2:
        degeneracy = 2 * width
    elif height % 2:
        degeneracy = 2 * height
    else:
        degeneracy = 2
    return max_broken, degeneracy


def make_receipt() -> dict:
    results = {}
    for width in range(3, 7):
        for height in range(3, 12):
            actual = extremum(width, height)
            predicted = formula(width, height)
            if actual != predicted:
                raise AssertionError(f"{width}x{height}: DP {actual} != formula {predicted}")
            results[width, height] = actual

    cases = []
    for width in range(3, 7):
        for height in range(3, 12):
            actual = results[width, height]
            min_aligned = (height if width % 2 else 0) + (width if height % 2 else 0)
            reverse = results.get((height, width))
            cases.append({
                "W": width,
                "H": height,
                "maximum_broken_bonds": actual[0],
                "minimum_aligned_bonds": min_aligned,
                "antiferromagnetic_ground_energy": 2 * min_aligned - 2 * width * height,
                "ground_degeneracy": actual[1],
                "formula_matches": True,
                "transpose_checked": reverse is not None,
                "transpose_matches": reverse == actual if reverse is not None else None,
            })
    return {
        "schema": "mathcase-ising-wide-rectangle-ground-state-check-v1",
        "verified": True,
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "method": "unconstrained full row-mask max-count DP; fixes one spin by global-flip symmetry; formula used only for comparison",
        "rectangle_count": len(cases),
        "ranges": {"W": [3, 6], "H": [3, 11]},
        "transposition_rule": "Compared only when the reversed dimensions are also in this checked rectangle set.",
        "cases": cases,
        "scope": "Finite ground-state energy and degeneracy checks only; not a rectangular density of states.",
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    receipt = make_receipt()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "verified": receipt["verified"],
        "rectangles": receipt["rectangle_count"],
        "ranges": receipt["ranges"],
        "transposition_checked": sum(case["transpose_checked"] for case in receipt["cases"]),
        "source_sha256": receipt["source_sha256"],
    }, indent=2))


if __name__ == "__main__":
    main()
