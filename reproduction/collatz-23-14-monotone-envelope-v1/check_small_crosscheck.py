#!/usr/bin/env python3
"""Second implementation for the finite 23/14 small-branch audit."""
from __future__ import annotations

import hashlib
import json
import argparse
from pathlib import Path


def ordinary_step(n: int) -> int:
    return 3 * n + 1 if n & 1 else n // 2


def accelerated_from_ordinary(start: int) -> tuple[int, int, int]:
    """Return accelerated endpoint, odd count, and ordinary steps consumed."""
    n = start
    odd = 0
    ordinary_steps = 0
    for _ in range(23):
        if n & 1:
            odd += 1
            n = ordinary_step(n)
            ordinary_steps += 1
            if n & 1 == 0:
                n = ordinary_step(n)
                ordinary_steps += 1
        else:
            n = ordinary_step(n)
            ordinary_steps += 1
    return n, odd, ordinary_steps


def direct_ordinary(start: int, steps: int) -> int:
    n = start
    for _ in range(steps):
        n = ordinary_step(n)
    return n


def audit() -> dict:
    mismatches = []
    qualifying = 0
    for start in range(3, 677):
        endpoint, odd_count, ordinary_steps = accelerated_from_ordinary(start)
        direct = direct_ordinary(start, ordinary_steps)
        if endpoint != direct or ordinary_steps != 23 + odd_count:
            mismatches.append({
                "start": start,
                "accelerated_endpoint": endpoint,
                "direct_endpoint": direct,
                "odd_count": odd_count,
                "ordinary_steps": ordinary_steps,
            })
        if odd_count <= 14:
            qualifying += 1
            if not endpoint < start:
                mismatches.append({
                    "start": start,
                    "reason": "not_strictly_decreasing",
                    "endpoint": endpoint,
                    "odd_count": odd_count,
                })
    return {
        "schema": "mathcase-collatz-23-14-small-crosscheck-v1",
        "range": {"first": 3, "exclusive_end": 677, "count": 674},
        "qualifying_starts": qualifying,
        "mismatches": mismatches,
        "status": "PASS" if not mismatches else "FAIL",
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
