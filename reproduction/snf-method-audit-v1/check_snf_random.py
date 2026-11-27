#!/usr/bin/env python3
"""Bounded independent audit of the public integer Smith reducer."""
from __future__ import annotations

import argparse
from fractions import Fraction
from itertools import combinations
import hashlib
import json
import random
import subprocess
import sys
import time
from math import gcd
from pathlib import Path


def determinant(matrix: list[list[int]]) -> int:
    if not matrix:
        return 1
    a = [row[:] for row in matrix]
    sign = 1
    previous = 1
    for k in range(len(a) - 1):
        pivot = next((i for i in range(k, len(a)) if a[i][k]), None)
        if pivot is None:
            return 0
        if pivot != k:
            a[k], a[pivot] = a[pivot], a[k]
            sign = -sign
        p = a[k][k]
        for i in range(k + 1, len(a)):
            for j in range(k + 1, len(a)):
                numerator = a[i][j] * p - a[i][k] * a[k][j]
                if numerator % previous:
                    raise AssertionError("Bareiss division was not exact")
                a[i][j] = numerator // previous
        previous = p
    return sign * a[-1][-1]


def rank_over_q(matrix: list[list[int]]) -> int:
    if not matrix or not matrix[0]:
        return 0
    a = [[Fraction(x) for x in row] for row in matrix]
    rows, cols = len(a), len(a[0])
    pivot = 0
    for col in range(cols):
        source = next((i for i in range(pivot, rows) if a[i][col]), None)
        if source is None:
            continue
        a[pivot], a[source] = a[source], a[pivot]
        scale = a[pivot][col]
        a[pivot] = [x / scale for x in a[pivot]]
        for i in range(rows):
            if i != pivot and a[i][col]:
                factor = a[i][col]
                a[i] = [x - factor * y for x, y in zip(a[i], a[pivot])]
        pivot += 1
    return pivot


def determinantal_divisors(matrix: list[list[int]]) -> list[int]:
    rows, cols = len(matrix), len(matrix[0]) if matrix else 0
    rank = rank_over_q(matrix)
    divisors = [1]
    for size in range(1, rank + 1):
        value = 0
        for chosen_rows in combinations(range(rows), size):
            for chosen_cols in combinations(range(cols), size):
                minor = [[matrix[i][j] for j in chosen_cols] for i in chosen_rows]
                value = gcd(value, abs(determinant(minor)))
        divisors.append(value)
    return divisors


def expected_factors(matrix: list[list[int]]) -> list[int]:
    divisors = determinantal_divisors(matrix)
    return [divisors[i] // divisors[i - 1] for i in range(1, len(divisors))]


def load_public_reducer(repo: Path):
    target = repo / "reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/integer_homology.py"
    namespace: dict[str, object] = {"__file__": str(target), "__name__": "mathcase_snf_public"}
    exec(compile(target.read_text(encoding="utf-8-sig"), str(target), "exec"), namespace)
    return namespace["smith_diagonal"], hashlib.sha256(target.read_bytes()).hexdigest(), target


def make_cases() -> list[list[list[int]]]:
    rng = random.Random(20261127)
    shapes = [(1, 1), (2, 2), (2, 3), (3, 2), (3, 3), (4, 3), (3, 4)]
    cases = [
        [[0]], [[-2, 4], [6, -8]], [[2, 0], [0, 4]],
        [[0, 2, 4], [6, 8, 10]],
    ]
    for rows, cols in shapes:
        for _ in range(18):
            cases.append([[rng.randint(-5, 5) for _ in range(cols)] for _ in range(rows)])
    return cases


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    start = time.perf_counter()
    reducer, source_sha, source_path = load_public_reducer(args.repo.resolve())
    cases = make_cases()
    rows = []
    for index, matrix in enumerate(cases):
        actual = reducer(matrix)
        expected = expected_factors(matrix)
        if actual != expected:
            raise SystemExit(f"SMITH_MISMATCH case={index}: actual={actual}, expected={expected}")
        rows.append({"case": index, "shape": [len(matrix), len(matrix[0])], "factors": actual})
    damaged = rows[4]["factors"][:]
    if damaged:
        damaged[0] += 1
    damaged_rejected = damaged != expected_factors(cases[4])
    if not damaged_rejected:
        raise SystemExit("DAMAGED_OUTPUT_CONTROL_NOT_REJECTED")
    receipt = {
        "schema": "mathcase-integer-snf-method-audit-v1",
        "status": "PASS_BOUNDED_METHOD_AUDIT",
        "source_path": "reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/integer_homology.py",
        "source_sha256": source_sha,
        "case_count": len(cases),
        "seed": 20261127,
        "entry_bound": 5,
        "method": "Public reducer output compared with exact rational rank and gcds of every maximal minor, using an independent Bareiss implementation.",
        "cases": rows,
        "damaged_output_control_rejected": damaged_rejected,
        "limits": [
            "This audits the listed finite matrices only.",
            "It does not prove the reducer correct for all integer matrices.",
            "It does not replace a formal Lean proof of transformation correctness.",
        ],
        "runtime_seconds": round(time.perf_counter() - start, 6),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"status": receipt["status"], "case_count": len(cases), "damaged_output_control_rejected": damaged_rejected, "receipt": str(args.output)}, sort_keys=True))


if __name__ == "__main__":
    raise SystemExit(main())
