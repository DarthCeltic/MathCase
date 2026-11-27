#!/usr/bin/env python3
"""Exact finite Ising DOS cross-check for the periodic 4-by-L square torus.

Two paths are deliberately separate:
- enumerate every grid spin assignment and count its bonds;
- enumerate closed walks of 16 column states with transfer weights.
"""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
import platform
import time
from pathlib import Path


WIDTH = 4


def vertical_direct(state: int) -> int:
    """Count cyclic vertical disagreements by explicit bit positions."""
    return sum(
        ((state >> row) & 1) != ((state >> ((row + 1) % WIDTH)) & 1)
        for row in range(WIDTH)
    )


def vertical_transfer(state: int) -> int:
    """Count the same disagreements via a cyclic bit rotation."""
    mask = (1 << WIDTH) - 1
    rotated = ((state << 1) & mask) | (state >> (WIDTH - 1))
    return (state ^ rotated).bit_count()


def direct_histogram(length: int, deadline: float) -> Counter[tuple[int, int]]:
    """Return counts keyed by (broken bonds, plus spins), from raw assignments."""
    out: Counter[tuple[int, int]] = Counter()
    for configuration in range(1 << (WIDTH * length)):
        if (configuration & 0x3FFF) == 0 and time.monotonic() > deadline:
            raise TimeoutError("direct enumeration exceeded the wall cap")
        broken = 0
        plus = 0
        for column in range(length):
            here = (configuration >> (WIDTH * column)) & 0xF
            nxt = (configuration >> (WIDTH * ((column + 1) % length))) & 0xF
            broken += vertical_direct(here)
            broken += (here ^ nxt).bit_count()
            plus += here.bit_count()
        out[(broken, plus)] += 1
    return out


def transfer_histogram(
    length: int, deadline: float, omit_vertical: bool = False
) -> Counter[tuple[int, int]]:
    """Trace-style dynamic program over closed walks of 16 column states."""
    out: Counter[tuple[int, int]] = Counter()
    for first in range(1 << WIDTH):
        dp: Counter[tuple[int, int]] = Counter()
        initial_broken = 0 if omit_vertical else vertical_transfer(first)
        dp[(first, initial_broken, first.bit_count())] = 1
        for _ in range(1, length):
            if time.monotonic() > deadline:
                raise TimeoutError("transfer dynamic program exceeded the wall cap")
            next_dp: Counter[tuple[int, int, int]] = Counter()
            for (previous, broken, plus), multiplicity in dp.items():
                for nxt in range(1 << WIDTH):
                    added_vertical = 0 if omit_vertical else vertical_transfer(nxt)
                    added = added_vertical + (previous ^ nxt).bit_count()
                    next_dp[(nxt, broken + added, plus + nxt.bit_count())] += multiplicity
            dp = next_dp
        for (last, broken, plus), multiplicity in dp.items():
            out[(broken + (last ^ first).bit_count(), plus)] += multiplicity
    return out


def canonical(hist: Counter[tuple[int, int]]) -> list[list[int]]:
    return [[broken, plus, hist[(broken, plus)]] for broken, plus in sorted(hist)]


def digest(hist: Counter[tuple[int, int]]) -> str:
    body = json.dumps(canonical(hist), separators=(",", ":")).encode("ascii")
    return hashlib.sha256(body).hexdigest()


def check_structural_controls(hist: Counter[tuple[int, int]], length: int) -> list[str]:
    failures: list[str] = []
    total_spins = WIDTH * length
    if sum(hist.values()) != 1 << total_spins:
        failures.append("coefficient_sum")
    if hist[(0, 0)] != 1 or hist[(0, total_spins)] != 1:
        failures.append("uniform_states")
    if hist[(4, 1)] != total_spins or hist[(4, total_spins - 1)] != total_spins:
        failures.append("single_spin_flip_counts")
    if any(hist[(broken, plus)] != hist[(broken, total_spins - plus)]
           for broken, plus in hist):
        failures.append("spin_inversion_symmetry")
    if any(broken > 2 * total_spins for broken, _ in hist):
        failures.append("bond_count_upper_bound")
    return failures


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--max-length", type=int, choices=(3, 4, 5), default=5)
    parser.add_argument("--max-seconds", type=float, default=120.0)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    start = time.monotonic()
    deadline = start + args.max_seconds
    rows = []
    status = "PASS"
    error = None
    try:
        for length in range(3, args.max_length + 1):
            direct = direct_histogram(length, deadline)
            transfer = transfer_histogram(length, deadline)
            if direct != transfer:
                raise AssertionError(f"direct/transfer mismatch at L={length}")
            structural_failures = check_structural_controls(direct, length)
            if structural_failures:
                raise AssertionError(
                    f"structural controls failed at L={length}: {structural_failures}"
                )
            rows.append({
                "length": length,
                "assignments": 1 << (WIDTH * length),
                "nonzero_bins": len(direct),
                "joint_histogram_sha256": digest(direct),
                "joint_histogram": canonical(direct),
                "direct_equals_transfer": True,
                "structural_controls": "PASS",
            })

        damaged = transfer_histogram(3, deadline, omit_vertical=True)
        correct = direct_histogram(3, deadline)
        if damaged == correct:
            raise AssertionError("damaged transition control was not rejected")
    except TimeoutError as exc:
        status = "TIMEOUT"
        error = str(exc)
        damaged = Counter()
        correct = Counter()
    except Exception as exc:
        status = "FAIL"
        error = f"{type(exc).__name__}: {exc}"
        damaged = Counter()
        correct = Counter()

    receipt = {
        "schema": "mathcase-ising-width4-transfer-finite-check-v1",
        "status": status,
        "statement": (
            "For a periodic 4-by-L square torus, the coefficient of x^b z^u "
            "in trace(A^L), where A[s,t]=x^(vertical(s)+hamming(s,t))*z^ones(s) "
            "over the 16 column states, equals the number of labeled spin "
            "assignments with b disagreeing bonds and u plus spins."
        ),
        "method": [
            "direct enumeration over all 2^(4L) bit-coded grid assignments",
            "separate closed-walk dynamic program over 16 column states",
        ],
        "bounded_lengths": list(range(3, args.max_length + 1)),
        "results": rows,
        "damaged_control": {
            "at_length": 3,
            "omitted_vertical_bonds": True,
            "rejected": status == "PASS" and damaged != correct,
            "damaged_histogram_sha256": digest(damaged) if damaged else None,
            "correct_histogram_sha256": digest(correct) if correct else None,
        },
        "error": error,
        "runtime_seconds": round(time.monotonic() - start, 6),
        "wall_cap_seconds": args.max_seconds,
        "python": platform.python_version(),
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "proof_status": "finite exact computation; no Lean proof",
        "scope_limit": (
            "The coefficient identity follows from the closed-walk/column-state "
            "bijection stated in README.md. This run checks only width 4 and "
            "lengths in the listed bounded range; it is not a new Ising result."
        ),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": status,
        "lengths": receipt["bounded_lengths"],
        "assignments": [row["assignments"] for row in rows],
        "runtime_seconds": receipt["runtime_seconds"],
        "error": error,
        "damaged_control_rejected": receipt["damaged_control"]["rejected"],
        "receipt": str(args.output),
    }, sort_keys=True))
    return 0 if status == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
