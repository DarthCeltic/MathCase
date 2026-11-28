#!/usr/bin/env python3
"""Independent finite audit of the small branch of the 23/14 filter."""
from __future__ import annotations

import hashlib
import json
import argparse
from pathlib import Path


def accelerated_step(n: int) -> tuple[int, int]:
    if n & 1:
        return (3 * n + 1) // 2, 1
    return n // 2, 0


def ordinary_iterate(n: int, steps: int) -> int:
    for _ in range(steps):
        n = 3 * n + 1 if n & 1 else n // 2
    return n


def audit() -> dict:
    rows = []
    qualifying = 0
    failures = []
    for start in range(3, 677):
        n = start
        odd_count = 0
        for _ in range(23):
            n, odd = accelerated_step(n)
            odd_count += odd
        if odd_count <= 14:
            qualifying += 1
            endpoint = ordinary_iterate(start, 23 + odd_count)
            if not endpoint < start:
                failures.append({"start": start, "odd_count": odd_count, "endpoint": endpoint})
        rows.append({"start": start, "odd_count": odd_count})
    return {
        "schema": "mathcase-collatz-23-14-small-audit-v1",
        "range": {"first": 3, "exclusive_end": 677, "count": 674},
        "filter": "odd_count among first 23 accelerated inputs <= 14",
        "qualifying_starts": qualifying,
        "failures": failures,
        "status": "PASS" if not failures else "FAIL",
        "checker_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    rendered = json.dumps(audit(), indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(rendered, end="")
