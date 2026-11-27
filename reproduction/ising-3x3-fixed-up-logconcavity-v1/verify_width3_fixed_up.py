#!/usr/bin/env python3
"""Independent finite 3x3 periodic Ising fixed-up-spin profile check.

The check compares explicit edge-subset enumeration with an independent
column-state transfer dynamic program.  For each fixed number of + spins it
tests log-concavity on the naturally spaced even broken-bond profile.  Leading
and trailing zero bins are trimmed; interior zero bins are retained and count
as a failure when their two neighbors are positive.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import platform
import time
from collections import Counter, defaultdict
from itertools import product
from pathlib import Path


N = 3


def edges() -> tuple[tuple[int, int], ...]:
    out: set[tuple[int, int]] = set()
    def vid(r: int, c: int) -> int:
        return r * N + c
    for r in range(N):
        for c in range(N):
            a = vid(r, c)
            for rr, cc in (((r + 1) % N, c), (r, (c + 1) % N)):
                b = vid(rr, cc)
                out.add(tuple(sorted((a, b))))
    return tuple(sorted(out))


def explicit_profiles() -> dict[int, Counter[int]]:
    es = edges()
    out: dict[int, Counter[int]] = {u: Counter() for u in range(10)}
    for mask in range(1 << 9):
        u = mask.bit_count()
        broken = sum(((mask >> a) & 1) != ((mask >> b) & 1) for a, b in es)
        out[u][broken] += 1
    return out


def vertical_broken(state: int) -> int:
    return sum(((state >> r) & 1) != ((state >> ((r + 1) % N)) & 1)
               for r in range(N))


def transfer_profiles() -> dict[int, Counter[int]]:
    out: dict[int, Counter[int]] = {u: Counter() for u in range(10)}
    for first in range(8):
        # State: (last column, broken bonds, plus spins).
        dp: dict[tuple[int, int, int], int] = {(first, 0, 0): 1}
        for _ in range(N):
            nxt: defaultdict[tuple[int, int, int], int] = defaultdict(int)
            for (previous, broken, ups), ways in dp.items():
                for state in range(8):
                    added = vertical_broken(previous) + (previous ^ state).bit_count()
                    nxt[(state, broken + added, ups + state.bit_count())] += ways
            dp = dict(nxt)
        for (last, broken, ups), ways in dp.items():
            # The final transition is already in the N transitions above;
            # retain only closed walks, giving the periodic seam exactly once.
            # The first-column vertical edges were counted on transition 0.
            if last == first:
                out[ups][broken] += ways
    return out


def trimmed(sequence: list[int]) -> tuple[int, int, list[int]]:
    positive = [i for i, value in enumerate(sequence) if value > 0]
    if not positive:
        return (0, -1, [])
    lo, hi = positive[0], positive[-1]
    return lo, hi, sequence[lo:hi + 1]


def log_shape(sequence: list[int], labels: list[int]) -> dict:
    lo, hi, vals = trimmed(sequence)
    violations = []
    for i in range(1, len(vals) - 1):
        left, middle, right = vals[i - 1:i + 2]
        if middle * middle < left * right:
            violations.append({
                "labels": labels[lo + i - 1:lo + i + 2],
                "values": [left, middle, right],
                "left_times_right": left * right,
                "middle_squared": middle * middle,
            })
    return {
        "support_labels": [labels[lo], labels[hi]] if vals else None,
        "log_concave": not violations,
        "violations": violations,
    }


def digest(obj: object) -> str:
    return hashlib.sha256(json.dumps(obj, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def digest_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    started = time.perf_counter()
    es = edges()
    explicit = explicit_profiles()
    transfer = transfer_profiles()
    if len(es) != 18:
        raise SystemExit(f"expected 18 distinct edges, got {len(es)}")
    if explicit != transfer:
        raise SystemExit(f"independent profile mismatch: explicit={explicit}, transfer={transfer}")
    rows = []
    even_labels = list(range(0, 19, 2))
    all_rows_even = []
    all_rows_raw = []
    for ups in range(10):
        profile = [explicit[ups].get(b, 0) for b in even_labels]
        raw_labels = list(range(19))
        raw = [explicit[ups].get(b, 0) for b in raw_labels]
        even_shape = log_shape(profile, even_labels)
        raw_shape = log_shape(raw, raw_labels)
        all_rows_even.append(even_shape["log_concave"])
        all_rows_raw.append(raw_shape["log_concave"])
        rows.append({
            "plus_spins": ups,
            "states": sum(explicit[ups].values()),
            "expected_states": 1 if ups in (0, 9) else __import__("math").comb(9, ups),
            "even_bond_profile": [[b, explicit[ups].get(b, 0)] for b in even_labels],
            "even_bond_profile_sha256": digest([[b, explicit[ups].get(b, 0)] for b in even_labels]),
            "even_bond_log_concavity": even_shape,
            "raw_integer_bond_log_concavity": raw_shape,
        })
    controls = {
        "edge_count_18": len(es) == 18,
        "all_profiles_sum_to_binomial_counts": all(r["states"] == r["expected_states"] for r in rows),
        "explicit_equals_independent_transfer": explicit == transfer,
        "positive_log_concavity_control": log_shape([1, 2, 1], [0, 2, 4])["log_concave"],
        "interior_zero_control_rejected": not log_shape([1, 0, 1], [0, 2, 4])["log_concave"],
    }
    if not all(controls.values()):
        raise SystemExit(f"controls failed: {controls}")
    receipt = {
        "schema": "mathcase-ising-3x3-fixed-up-logconcavity-v1",
        "status": "PASS_EXACT_FINITE_SCREEN",
        "checker_sha256": digest_bytes(Path(__file__).read_bytes()),
        "statement": "For the periodic 3x3 square-lattice Ising torus, enumerate all configurations and, for each fixed number u of + spins, test log-concavity of the broken-bond counts on the naturally spaced even-bond sequence.",
        "grid": "periodic 3x3 torus",
        "edges": [list(e) for e in es],
        "edge_count": len(es),
        "methods": ["explicit enumeration of all 2^9 assignments and 18 edges", "independent 8-state column transfer DP with cyclic closure"],
        "zero_bin_policy": "Trim leading/trailing zero bins. Retain interior zero bins; if c_i=0 with positive neighbors, c_i^2 < c_{i-1}c_{i+1} and the profile fails log-concavity. The parity-compressed even-bond profile is the primary test because odd broken-bond counts are impossible on this torus.",
        "rows": rows,
        "summary": {
            "fixed_up_spin_profiles": 10,
            "even_bond_log_concave_profiles": sum(all_rows_even),
            "even_bond_non_log_concave_profiles": len(all_rows_even) - sum(all_rows_even),
            "raw_integer_bond_log_concave_profiles": sum(all_rows_raw),
            "raw_integer_bond_non_log_concave_profiles": len(all_rows_raw) - sum(all_rows_raw),
            "first_even_profile_failure": next((r for r in rows if not r["even_bond_log_concavity"]["log_concave"]), None),
        },
        "controls": controls,
        "python": platform.python_version(),
        "runtime_seconds": round(time.perf_counter() - started, 6),
        "limitations": ["Finite 3x3 computation only.", "No Lean proof and no thermodynamic-limit claim.", "No novelty or priority claim; this checks whether the earlier finite failure already appears on the smaller grid."],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"status": receipt["status"], "summary": receipt["summary"], "controls": controls, "receipt": str(args.output)}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
