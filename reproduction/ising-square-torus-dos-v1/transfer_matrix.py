"""Exact row-transfer density of states for the antiferromagnetic square torus."""
from __future__ import annotations

import argparse
import json
from pathlib import Path


def horizontal_broken(row: int, width: int) -> int:
    return sum(((row >> col) & 1) != ((row >> ((col + 1) % width)) & 1)
               for col in range(width))


def vertical_broken(top: int, bottom: int) -> int:
    return (top ^ bottom).bit_count()


def density_of_states(width: int) -> list[int]:
    """Return the exact count at each possible broken-bond number."""
    if width < 3:
        raise ValueError("periodic square tori in this package require L >= 3")
    states = 1 << width
    bonds = 2 * width * width
    histogram = [0] * (bonds + 1)

    for first in range(states):
        # dp[last][broken] counts partial row stacks beginning at `first`.
        dp = [[0] * (bonds + 1) for _ in range(states)]
        dp[first][horizontal_broken(first, width)] = 1
        for _row in range(1, width):
            next_dp = [[0] * (bonds + 1) for _ in range(states)]
            for previous in range(states):
                for broken, ways in enumerate(dp[previous]):
                    if not ways:
                        continue
                    for row in range(states):
                        added = horizontal_broken(row, width) + vertical_broken(previous, row)
                        next_dp[row][broken + added] += ways
            dp = next_dp

        # Close the periodic boundary from the last row to the first row.
        for last in range(states):
            closing = vertical_broken(last, first)
            for broken, ways in enumerate(dp[last]):
                if ways:
                    histogram[broken + closing] += ways
    return histogram


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--L", type=int, required=True, choices=(3, 4, 5))
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    histogram = density_of_states(args.L)
    result = {
        "schema": "mathcase-ising-transfer-dos-v1",
        "L": args.L,
        "configurations": 1 << (args.L * args.L),
        "total_bonds": 2 * args.L * args.L,
        "counts_by_broken_bonds": histogram,
    }
    args.output.write_text(json.dumps(result, separators=(",", ":")) + "\n", encoding="utf-8")
    print(json.dumps({"L": args.L, "configurations": result["configurations"],
                      "nonzero_bins": sum(count > 0 for count in histogram)}, indent=2))


if __name__ == "__main__":
    main()
