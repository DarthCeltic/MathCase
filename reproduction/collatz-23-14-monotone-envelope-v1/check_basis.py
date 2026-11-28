#!/usr/bin/env python3
"""Check the proposed 23/14 large-start arithmetic compression."""
from __future__ import annotations

import hashlib
import json
import sys
import argparse
from pathlib import Path


def f(h: int, n: int) -> int:
    return 3**h * (n + 2 ** (23 - h))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    checked = []
    for n in (677, 678, 1000, 10_000, 1_000_000):
        values = [f(h, n) for h in range(15)]
        monotone = all(values[h] < values[h + 1] for h in range(14))
        endpoint_gap = 2**23 * (n + 1) - values[14]
        all_bounded = all(value < 2**23 * (n + 1) for value in values)
        checked.append({
            "n": n,
            "monotone_h_0_to_14": monotone,
            "endpoint_gap_h14": endpoint_gap,
            "all_h_le_14_bounded": all_bounded,
        })

    constants = {
        "slope": 2**23 - 3**14,
        "intercept": 2**23 - 3**14 * 2**9,
        "gap_at_677": (2**23 - 3**14) * 677 + (2**23 - 3**14 * 2**9),
    }
    controls = {
        "positive_increment_formula": all(
            f(h + 1, n) - f(h, n) == 3**h * (2 * n + 2 ** (22 - h))
            for n in (1, 677, 10_000)
            for h in range(14)
        ),
        "endpoint_gap_constants": constants == {
            "slope": 3_605_639,
            "intercept": -2_440_491_520,
            "gap_at_677": 526_083,
        },
        "all_sample_rows_pass": all(row["monotone_h_0_to_14"] and row["all_h_le_14_bounded"] for row in checked),
    }
    receipt = {
        "schema": "mathcase-collatz-23-14-basis-arithmetic-v1",
        "status": "PASS_ARITHMETIC_COMPRESSION_CHECK",
        "statement_scope": "Large-start numeric inequality only; finite n < 677 branch and Lean formalization are outside this checker.",
        "function": "F_h(n) = 3^h * (n + 2^(23-h))",
        "h_range": [0, 14],
        "samples": checked,
        "constants": constants,
        "controls": controls,
        "python": sys.version,
        "checker_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    if not all(controls.values()):
        receipt["status"] = "FAIL_CONTROL"
        rendered = json.dumps(receipt, indent=2, sort_keys=True) + "\n"
        if args.output:
            args.output.parent.mkdir(parents=True, exist_ok=True)
            args.output.write_text(rendered, encoding="utf-8", newline="\n")
        print(rendered, end="")
        return 1
    rendered = json.dumps(receipt, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
