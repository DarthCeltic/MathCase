#!/usr/bin/env python3
"""Exact finite joint density check on periodic 5-by-L square tori.

Direct path: enumerate each labeled spin assignment.
Transfer path: trace-style dynamic program over 32 five-bit columns.
Standard library only; no network, solver, randomness, or imported repo code.
"""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
import platform
import time
from pathlib import Path

WIDTH = 5
STATES = 1 << WIDTH


def vertical_by_rows(state: int) -> int:
    return sum(((state >> r) & 1) != ((state >> ((r + 1) % WIDTH)) & 1)
               for r in range(WIDTH))


def vertical_by_rotation(state: int) -> int:
    mask = STATES - 1
    shifted = ((state << 1) & mask) | (state >> (WIDTH - 1))
    return (state ^ shifted).bit_count()


def direct(length: int, deadline: float) -> Counter[tuple[int, int]]:
    hist: Counter[tuple[int, int]] = Counter()
    cells = WIDTH * length
    for code in range(1 << cells):
        if (code & 0x1FFF) == 0 and time.monotonic() > deadline:
            raise TimeoutError("direct enumeration exceeded wall cap")
        broken = plus = 0
        for col in range(length):
            here = (code >> (WIDTH * col)) & (STATES - 1)
            right = (code >> (WIDTH * ((col + 1) % length))) & (STATES - 1)
            broken += vertical_by_rows(here)
            broken += (here ^ right).bit_count()
            plus += here.bit_count()
        hist[(broken, plus)] += 1
    return hist


def transfer(length: int, deadline: float, omit_vertical: bool = False) -> Counter[tuple[int, int]]:
    """Sum closed column walks; each state's vertical bonds/spins enter once."""
    hist: Counter[tuple[int, int]] = Counter()
    for first in range(STATES):
        first_v = 0 if omit_vertical else vertical_by_rotation(first)
        dp: dict[tuple[int, int, int], int] = {(first, first_v, first.bit_count()): 1}
        for _column in range(1, length):
            if time.monotonic() > deadline:
                raise TimeoutError("32-state transfer DP exceeded wall cap")
            nxt_dp: Counter[tuple[int, int, int]] = Counter()
            for (previous, broken, plus), ways in dp.items():
                for state in range(STATES):
                    v = 0 if omit_vertical else vertical_by_rotation(state)
                    nxt_dp[(state, broken + v + (previous ^ state).bit_count(),
                            plus + state.bit_count())] += ways
            dp = dict(nxt_dp)
        for (last, broken, plus), ways in dp.items():
            hist[(broken + (last ^ first).bit_count(), plus)] += ways
    return hist


def rows(hist: Counter[tuple[int, int]]) -> list[list[int]]:
    return [[b, u, hist[(b, u)]] for b, u in sorted(hist)]


def sha_hist(hist: Counter[tuple[int, int]]) -> str:
    data = json.dumps(rows(hist), separators=(",", ":")).encode("ascii")
    return hashlib.sha256(data).hexdigest()


def controls(hist: Counter[tuple[int, int]], length: int) -> list[str]:
    n = WIDTH * length
    bad = []
    if sum(hist.values()) != 1 << n:
        bad.append("total_configurations")
    if hist[(0, 0)] != 1 or hist[(0, n)] != 1:
        bad.append("uniform_configurations")
    if hist[(4, 1)] != n or hist[(4, n - 1)] != n:
        bad.append("single_spin_flip_bins")
    if any(hist[(b, u)] != hist[(b, n - u)] for b, u in hist):
        bad.append("spin_inversion_symmetry")
    if any(b > 2 * n for b, _u in hist):
        bad.append("bond_ceiling")
    return bad


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--max-seconds", type=float, default=180.0)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args()
    began = time.monotonic()
    deadline = began + args.max_seconds
    result_rows = []
    status, error = "PASS", None
    damaged_rejected = False
    try:
        for length in (3, 4):
            # Keep a reserve for validation and receipt writing; L=4 is optional.
            if length == 4 and time.monotonic() > began + args.max_seconds * 0.55:
                break
            d0 = time.monotonic()
            h_direct = direct(length, deadline)
            direct_seconds = time.monotonic() - d0
            t0 = time.monotonic()
            h_transfer = transfer(length, deadline)
            transfer_seconds = time.monotonic() - t0
            if h_direct != h_transfer:
                raise AssertionError(f"direct/transfer histograms differ at L={length}")
            bad = controls(h_direct, length)
            if bad:
                raise AssertionError(f"structural controls at L={length}: {bad}")
            result_rows.append({
                "width": WIDTH,
                "length": length,
                "assignments": 1 << (WIDTH * length),
                "nonzero_joint_bins": len(h_direct),
                "joint_histogram_sha256": sha_hist(h_direct),
                "direct_equals_32_state_transfer": True,
                "structural_controls": "PASS",
                "direct_seconds": round(direct_seconds, 6),
                "transfer_seconds": round(transfer_seconds, 6),
                "joint_histogram": rows(h_direct),
            })
        if not result_rows or result_rows[0]["length"] != 3:
            raise AssertionError("required 5x3 case did not complete")
        # Deliberately omit all vertical bonds; the finite check must catch it.
        good = direct(3, deadline)
        damaged = transfer(3, deadline, omit_vertical=True)
        damaged_rejected = good != damaged
        if not damaged_rejected:
            raise AssertionError("damaged transfer rule unexpectedly matched")
    except TimeoutError as exc:
        status, error = "TIMEOUT", str(exc)
    except Exception as exc:
        status, error = "FAIL", f"{type(exc).__name__}: {exc}"

    script_sha = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    receipt = {
        "schema": "mathcase-ising-width5-joint-density-v1",
        "status": status,
        "claim": (
            "For each completed listed length, direct enumeration of every labeled "
            "periodic 5-by-L spin assignment exactly matches a separate 32-column-state "
            "transfer dynamic program for the joint count (disagreeing bonds, plus spins)."
        ),
        "method": [
            "direct enumeration over 2^(5L) bit-coded assignments using explicit row-edge checks",
            "independent transfer DP over 32 states using cyclic bit-rotation vertical counts",
        ],
        "results": result_rows,
        "damaged_control": {
            "control": "transfer DP with every vertical bond contribution omitted",
            "tested_at": "5x3",
            "rejected": damaged_rejected,
            "reference_histogram_sha256": sha_hist(good) if status == "PASS" else None,
            "damaged_histogram_sha256": sha_hist(damaged) if status == "PASS" else None,
            "differing_bins": sum(good[key] != damaged[key] for key in set(good) | set(damaged)) if status == "PASS" else None,
        },
        "wall_cap_seconds": args.max_seconds,
        "runtime_seconds": round(time.monotonic() - began, 6),
        "python": platform.python_version(),
        "source_sha256": script_sha,
        "network": "not used",
        "scope_limit": "Finite exact computation only; no thermodynamic-limit or novelty claim.",
        "error": error,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": status,
        "completed_lengths": [r["length"] for r in result_rows],
        "assignments": [r["assignments"] for r in result_rows],
        "runtime_seconds": receipt["runtime_seconds"],
        "wall_cap_seconds": args.max_seconds,
        "damaged_control_rejected": damaged_rejected,
        "source_sha256": script_sha,
        "receipt": str(args.output),
        "error": error,
    }, sort_keys=True))
    return 0 if status == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
