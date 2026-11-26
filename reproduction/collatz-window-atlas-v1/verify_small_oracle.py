#!/usr/bin/env python3
"""Compare the compiled atlas CLI with a small independent direct oracle."""
from __future__ import annotations

import argparse
import json
import subprocess


def representative_trace(n: int, horizon: int, first_width: int) -> tuple[int, int, int, int, int]:
    x = n
    odd_first = odd_second = odds = 0
    first_drop = odds_at_drop = 0
    for t in range(1, horizon + 1):
        if x & 1:
            odds += 1
            if t <= first_width:
                odd_first += 1
            else:
                odd_second += 1
            x = (3 * x + 1) // 2
        else:
            x //= 2
        if first_drop == 0 and x < n:
            first_drop = t
            odds_at_drop = odds
    return odd_first, odd_second, first_drop, odds_at_drop, x


def increment(cell: dict, n: int, shortcut: int, ordinary: int) -> None:
    cell["representative_class_count"] += 1
    if shortcut == 0:
        cell["least_representative_no_drop_by_horizon_count"] += 1
        cell["least_unresolved_representative"] = min(
            cell["least_unresolved_representative"] or n, n
        )
        return
    cell["least_representative_drop_by_horizon_count"] += 1
    if shortcut > (cell["sharp_max_first_drop_accelerated_steps"] or 0):
        cell["sharp_max_first_drop_accelerated_steps"] = shortcut
        cell["least_witness_accelerated"] = n
    elif shortcut == cell["sharp_max_first_drop_accelerated_steps"] and n < cell["least_witness_accelerated"]:
        cell["least_witness_accelerated"] = n
    if ordinary > (cell["sharp_max_first_drop_ordinary_steps"] or 0):
        cell["sharp_max_first_drop_ordinary_steps"] = ordinary
        cell["least_witness_ordinary"] = n
    elif ordinary == cell["sharp_max_first_drop_ordinary_steps"] and n < cell["least_witness_ordinary"]:
        cell["least_witness_ordinary"] = n


def blank_cell(a: int, b: int) -> dict:
    return {
        "odd_inputs_first": a,
        "odd_inputs_second": b,
        "representative_class_count": 0,
        "least_representative_drop_by_horizon_count": 0,
        "least_representative_no_drop_by_horizon_count": 0,
        "least_unresolved_representative": None,
        "sharp_max_first_drop_accelerated_steps": None,
        "least_witness_accelerated": None,
        "sharp_max_first_drop_ordinary_steps": None,
        "least_witness_ordinary": None,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--executable", required=True, help="compiled window_atlas executable")
    args = parser.parse_args()
    first_width, second_width = 3, 5
    horizon = first_width + second_width
    modulus = 1 << horizon
    raw = subprocess.run(
        [args.executable, str(first_width), str(second_width)],
        check=True,
        capture_output=True,
        text=True,
    ).stdout
    actual = json.loads(raw)

    cells = {(a, b): blank_cell(a, b)
             for a in range(first_width + 1)
             for b in range(second_width + 1)}
    for n in range(3, modulus + 3):
        a, b, first, h, _ = representative_trace(n, horizon, first_width)
        increment(cells[(a, b)], n, first, first + h if first else 0)

    expected_cells = []
    for a in range(first_width + 1):
        for b in range(second_width + 1):
            row = cells[(a, b)]
            row["fully_covered"] = row["least_representative_no_drop_by_horizon_count"] == 0
            if not row["fully_covered"]:
                row["sharp_max_first_drop_accelerated_steps"] = None
                row["least_witness_accelerated"] = None
                row["sharp_max_first_drop_ordinary_steps"] = None
                row["least_witness_ordinary"] = None
            expected_cells.append(row)

    expected_gates = []
    for cap_first in range(first_width + 1):
        for cap_second in range(second_width + 1):
            selected = [cells[(a, b)] for a in range(cap_first + 1)
                        for b in range(cap_second + 1)]
            unresolved = sum(x["least_representative_no_drop_by_horizon_count"] for x in selected)
            row = {
                "cap_first": cap_first,
                "cap_second": cap_second,
                "admitted_class_count": sum(x["representative_class_count"] for x in selected),
                "guaranteed_drop_class_count": sum(x["least_representative_drop_by_horizon_count"] for x in selected),
                "least_representative_no_drop_class_count": unresolved,
                "unresolved_least_representative": min(
                    (x["least_unresolved_representative"] for x in selected
                     if x["least_unresolved_representative"] is not None), default=None
                ),
                "fully_covered": unresolved == 0,
            }
            if unresolved == 0:
                max_shortcut = max(x["sharp_max_first_drop_accelerated_steps"] for x in selected)
                max_ordinary = max(x["sharp_max_first_drop_ordinary_steps"] for x in selected)
                row.update({
                    "sharp_max_first_drop_accelerated_steps": max_shortcut,
                    "least_witness_accelerated": min(
                        x["least_witness_accelerated"] for x in selected
                        if x["sharp_max_first_drop_accelerated_steps"] == max_shortcut
                    ),
                    "sharp_max_first_drop_ordinary_steps": max_ordinary,
                    "least_witness_ordinary": min(
                        x["least_witness_ordinary"] for x in selected
                        if x["sharp_max_first_drop_ordinary_steps"] == max_ordinary
                    ),
                })
            else:
                row.update({
                    "sharp_max_first_drop_accelerated_steps": None,
                    "least_witness_accelerated": None,
                    "sharp_max_first_drop_ordinary_steps": None,
                    "least_witness_ordinary": None,
                })
            expected_gates.append(row)

    if actual["window_lengths"] != {"first": first_width, "second": second_width}:
        raise AssertionError("window lengths differ")
    if actual["class_modulus"] != modulus:
        raise AssertionError("modulus differs")
    if actual["exact_cells"] != expected_cells:
        raise AssertionError("exact-cell table differs from independent direct oracle")
    if actual["upper_cap_gates"] != expected_gates:
        raise AssertionError("upper-cap table differs from independent direct oracle")
    if sum(row["representative_class_count"] for row in expected_cells) != modulus:
        raise AssertionError("small oracle did not cover every parity word")
    print("PASS: C++ atlas matches independent Python direct simulation for 256 residues and all 24 cap pairs (3+5).")


if __name__ == "__main__":
    main()
