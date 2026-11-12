#!/usr/bin/env python3
"""Run exact rational checks for the n = 3 (mod 4) unit-fraction identity."""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from fractions import Fraction
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = ROOT / "research/number-theory/egyptian-fractions/n3-mod4-v1/exact-check.json"
SCHEMA = "mathcase-egyptian-fraction-n3mod4-exact-check-v1"
DEFAULT_CASES = 100_000


def exact_case(k: int) -> dict[str, int | bool]:
    if k < 0:
        raise ValueError("k must be nonnegative")
    n = 4 * k + 3
    m = k + 1
    d = n * m
    denominators = (m, d + 1, d * (d + 1))
    lhs = Fraction(4, n)
    rhs = sum((Fraction(1, denominator) for denominator in denominators), Fraction())
    return {
        "k": k,
        "n": n,
        "m": m,
        "d": d,
        "denominators_positive": all(value > 0 for value in denominators),
        "denominators_strictly_increasing": denominators[0] < denominators[1] < denominators[2],
        "exact_identity": lhs == rhs,
    }


def check_range(case_count: int) -> list[dict[str, int | bool]]:
    if case_count <= 0:
        raise ValueError("case count must be positive")
    rows = [exact_case(k) for k in range(case_count)]
    if not all(row["denominators_positive"] and row["denominators_strictly_increasing"] and row["exact_identity"] for row in rows):
        raise AssertionError("exact unit-fraction identity check failed")
    return rows


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def write_json(path: Path, value: Any) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as stream:
        json.dump(value, stream, ensure_ascii=False, indent=2, sort_keys=True)
        stream.write("\n")


def run_check(case_count: int = DEFAULT_CASES, output_path: Path = DEFAULT_OUTPUT) -> dict[str, Any]:
    output_path = output_path.resolve()
    if output_path.exists():
        raise FileExistsError(f"refusing to overwrite exact-check receipt: {output_path}")
    rows = check_range(case_count)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    proof_path = ROOT / "research/number-theory/egyptian-fractions/README.md"
    script_path = Path(__file__).resolve()
    receipt = {
        "schema": SCHEMA,
        "status": "PASS_EXACT_RATIONAL_RANGE_CHECK",
        "claim_checked": "For every tested k, 4/(4k+3)=1/(k+1)+1/(d+1)+1/(d(d+1)), d=(4k+3)(k+1).",
        "method": "Python Fraction exact rational equality and exact denominator-order checks.",
        "k_inclusive_range": [0, case_count - 1],
        "n_inclusive_range": [3, 4 * (case_count - 1) + 3],
        "cases_checked": len(rows),
        "all_equalities_passed": all(row["exact_identity"] for row in rows),
        "all_denominators_positive": all(row["denominators_positive"] for row in rows),
        "all_denominator_triples_strictly_increasing": all(row["denominators_strictly_increasing"] for row in rows),
        "boundary_examples": [rows[index] for index in sorted({0, len(rows) // 2, len(rows) - 1})],
        "proof_note_sha256": sha256(proof_path),
        "runner_sha256": sha256(script_path),
        "network_calls": 0,
        "provider_calls": 0,
        "model_calls": 0,
        "novelty_claim": False,
        "full_erdos_straus_conjecture_solved": False,
        "started_at_utc": datetime.now(timezone.utc).isoformat(timespec="microseconds"),
    }
    write_json(output_path, receipt)
    return receipt


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cases", type=int, default=DEFAULT_CASES)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    receipt = run_check(args.cases, args.output)
    print(json.dumps({
        "output": str(args.output),
        "status": receipt["status"],
        "cases_checked": receipt["cases_checked"],
        "n_range": receipt["n_inclusive_range"],
    }, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
