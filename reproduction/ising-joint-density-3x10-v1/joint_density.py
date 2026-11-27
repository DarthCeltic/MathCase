"""Exact joint broken-bond and magnetization counts for a periodic 3x10 Ising torus."""
from __future__ import annotations

import argparse
import json
import math
from pathlib import Path


WIDTH = 3
HEIGHT = 10


def horizontal_broken(row: int, width: int) -> int:
    return sum(((row >> col) & 1) != ((row >> ((col + 1) % width)) & 1)
               for col in range(width))


def vertical_broken(top: int, bottom: int) -> int:
    return (top ^ bottom).bit_count()


def joint_density(width: int, height: int) -> list[list[int]]:
    """Return counts[B][up], where up is the number of +1 spins."""
    if width < 3 or height < 3:
        raise ValueError("periodic square-lattice rectangles require width,height >= 3")
    n = width * height
    max_bonds = 2 * n
    rows = 1 << width
    horizontal = [horizontal_broken(row, width) for row in range(rows)]
    row_up = [row.bit_count() for row in range(rows)]
    result = [[0] * (n + 1) for _ in range(max_bonds + 1)]

    for first in range(rows):
        # State is (last row, broken bonds so far, +1 spins so far).
        dp: dict[tuple[int, int, int], int] = {
            (first, horizontal[first], row_up[first]): 1
        }
        for _ in range(1, height):
            next_dp: dict[tuple[int, int, int], int] = {}
            for (previous, broken, up), ways in dp.items():
                for row in range(rows):
                    key = (row,
                           broken + horizontal[row] + vertical_broken(previous, row),
                           up + row_up[row])
                    next_dp[key] = next_dp.get(key, 0) + ways
            dp = next_dp

        for (last, broken, up), ways in dp.items():
            result[broken + vertical_broken(last, first)][up] += ways
    return result


def validate_joint(table: list[list[int]], width: int, height: int,
                   energy_histogram: list[int] | None = None) -> dict[str, bool]:
    n = width * height
    max_bonds = 2 * n
    shape_ok = (len(table) == max_bonds + 1
                and all(len(row) == n + 1 for row in table)
                and all(type(value) is int and value >= 0
                        for row in table for value in row))
    if not shape_ok:
        return {"shape_and_nonnegative_counts": False}

    by_broken = [sum(row) for row in table]
    by_up = [sum(table[broken][up] for broken in range(max_bonds + 1))
             for up in range(n + 1)]
    expected_up = [math.comb(n, up) for up in range(n + 1)]
    checks = {
        "shape_and_nonnegative_counts": True,
        "all_assignments_counted": sum(by_broken) == 1 << n,
        "magnetization_marginal_is_binomial": by_up == expected_up,
        "global_spin_flip_symmetry": all(
            table[broken][up] == table[broken][n - up]
            for broken in range(max_bonds + 1) for up in range(n + 1)),
        "uniform_states_are_the_only_zero_bond_states": (
            by_broken[0] == 2 and table[0][0] == 1 and table[0][n] == 1),
        "odd_bond_bins_are_empty": all(by_broken[b] == 0 for b in range(1, max_bonds + 1, 2)),
        "maximum_broken_bonds_is_50_for_3x10": (
            width != 3 or height != 10 or
            (all(by_broken[b] == 0 for b in range(51, max_bonds + 1))
             and by_broken[50] == 6)),
        "six_ground_states_have_zero_magnetization": (
            width != 3 or height != 10 or table[50][n // 2] == 6),
    }
    if energy_histogram is not None:
        checks["broken_bond_marginal_matches_saved_independent_histogram"] = (
            by_broken == energy_histogram)
    return checks


def load_reference(path: Path) -> list[int]:
    record = json.loads(path.read_text(encoding="utf-8"))
    if record.get("schema") != "mathcase-ising-3x10-density-of-states-v1":
        raise ValueError("reference histogram has an unexpected schema")
    if record.get("model", {}).get("lattice") != "periodic 3x10 square-lattice torus":
        raise ValueError("reference histogram is not the 3x10 periodic torus")
    counts = record.get("counts_by_broken_bonds")
    if not isinstance(counts, list) or len(counts) != 61:
        raise ValueError("reference histogram has the wrong shape")
    return counts


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--width", type=int, default=WIDTH)
    parser.add_argument("--height", type=int, default=HEIGHT)
    parser.add_argument("--reference", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    table = joint_density(args.width, args.height)
    ref = None
    if args.reference:
        ref = load_reference(args.reference)
    checks = validate_joint(table, args.width, args.height, ref)
    result = {
        "schema": "mathcase-ising-joint-energy-magnetization-v1",
        "model": {
            "lattice": f"periodic {args.width}x{args.height} square-lattice torus",
            "width": args.width,
            "height": args.height,
            "spins": args.width * args.height,
            "bonds": 2 * args.width * args.height,
            "energy_convention": "E = aligned bonds - broken bonds = 2WH - 2B",
            "magnetization_convention": "M = sum of all spins, with each spin in {-1,+1}",
        },
        "counts_by_broken_bonds_and_up_spins": table,
        "checks": checks,
        "verified": all(checks.values()),
        "claim_boundary": "Exact finite state count for the specified periodic lattice. Exact finite Ising densities of states are established prior work; this table is not a new physical result or a thermodynamic-limit claim.",
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes((json.dumps(result, indent=2) + "\n").encode("utf-8"))
    print(json.dumps({"verified": result["verified"], "states": sum(map(sum, table)),
                      "dimensions": f"{args.width}x{args.height}", "checks": checks}, indent=2))
    return 0 if result["verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
