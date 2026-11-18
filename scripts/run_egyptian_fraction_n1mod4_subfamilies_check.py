#!/usr/bin/env python3
"""Check exact Egyptian-fraction families inside n = 1 (mod 4)."""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from fractions import Fraction
from math import isqrt
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = (
    ROOT
    / "research/number-theory/egyptian-fractions/n1-mod4-subfamilies-v1/exact-check.json"
)
SCHEMA = "mathcase-egyptian-fraction-n1mod4-subfamilies-exact-check-v1"
DEFAULT_CASES = 100_000


def _row(family: str, index: int, n: int, values: tuple[int, ...]) -> dict[str, Any]:
    denominators = tuple(sorted(values))
    lhs = Fraction(4, n)
    rhs = sum((Fraction(1, denominator) for denominator in denominators), Fraction())
    return {
        "family": family,
        "index": index,
        "n": n,
        "denominators": list(denominators),
        "denominators_positive": all(value > 0 for value in denominators),
        "denominators_distinct": len(set(denominators)) == 3,
        "denominators_strictly_increasing": denominators[0] < denominators[1] < denominators[2],
        "exact_identity": lhs == rhs,
    }


def exact_case_n5mod8(index: int) -> dict[str, Any]:
    """Check n=8*index+5 using q=(n+3)/4 and D=n*q."""
    if index < 0:
        raise ValueError("index must be nonnegative")
    n = 8 * index + 5
    q = (n + 3) // 4
    d = n * q
    return _row("n_eq_5_mod_8", index, n, (q, d // 2, d))


def exact_case_n9mod12(index: int) -> dict[str, Any]:
    """Check n=12*index+9 using q=(n+3)/4, D=n*q, and t=D/3."""
    if index < 0:
        raise ValueError("index must be nonnegative")
    n = 12 * index + 9
    q = (n + 3) // 4
    d = n * q
    t = d // 3
    return _row("n_eq_9_mod_12", index, n, (q, t + 1, t * (t + 1)))


def maybe_prime_factor_two_mod_three(value: int) -> int | None:
    """Return a prime p|value with p=2 mod 3, if one exists."""
    if value <= 1:
        raise ValueError("value must exceed one")
    remaining = value
    candidate = 2
    while candidate <= isqrt(remaining):
        if remaining % candidate == 0:
            if candidate % 3 == 2:
                # The first divisor with this residue is prime: any smaller
                # prime factor congruent to 2 would already have been returned.
                return candidate
            while remaining % candidate == 0:
                remaining //= candidate
        candidate += 1
    if remaining > 1 and remaining % 3 == 2:
        return remaining
    return None


def prime_factor_two_mod_three(value: int) -> int:
    """Return the guaranteed p=2 mod 3 factor for value=2 mod 3."""
    factor = maybe_prime_factor_two_mod_three(value)
    if factor is None:
        raise AssertionError("a value congruent to 2 mod 3 must have such a prime factor")
    return factor


def exact_case_n5mod12(index: int) -> dict[str, Any]:
    """Check n=12*index+5 using a prime p|n with p=2 mod 3."""
    if index < 0:
        raise ValueError("index must be nonnegative")
    n = 12 * index + 5
    q = (n + 3) // 4
    d = n * q
    p = prime_factor_two_mod_three(n)
    v = d * d // p
    x = (d + p) // 3
    y = (d + v) // 3
    row = _row("n_eq_5_mod_12", index, n, (q, x, y))
    row.update({"q": q, "D": d, "prime_factor_p": p, "factor_v": v})
    return row


def exact_case_n1mod12_with_factor(index: int) -> dict[str, Any] | None:
    """Check n=12*index+1 when n or q has a prime factor 2 mod 3."""
    if index < 1:
        raise ValueError("index must be at least one (n must be at least 13)")
    n = 12 * index + 1
    q = (n + 3) // 4
    p = maybe_prime_factor_two_mod_three(n)
    if p is None:
        p = maybe_prime_factor_two_mod_three(q)
    if p is None:
        return None
    d = n * q
    v = d * d // p
    x = (d + p) // 3
    y = (d + v) // 3
    row = _row("n_eq_1_mod_12_with_factor_2_mod_3", index, n, (q, x, y))
    row.update({"q": q, "D": d, "prime_factor_p": p, "factor_v": v})
    return row


def check_ranges(
    case_count: int,
) -> tuple[
    list[dict[str, Any]],
    list[dict[str, Any]],
    list[dict[str, Any]],
    list[dict[str, Any]],
    list[int],
]:
    if case_count <= 0:
        raise ValueError("case count must be positive")
    family_n5mod8 = [exact_case_n5mod8(index) for index in range(case_count)]
    family_n9mod12 = [exact_case_n9mod12(index) for index in range(case_count)]
    family_n5mod12 = [exact_case_n5mod12(index) for index in range(case_count)]
    family_n1mod12_conditioned: list[dict[str, Any]] = []
    outside_identity_n1mod12: list[int] = []
    for index in range(1, case_count + 1):
        row = exact_case_n1mod12_with_factor(index)
        if row is None:
            outside_identity_n1mod12.append(12 * index + 1)
        else:
            family_n1mod12_conditioned.append(row)
    rows = family_n5mod8 + family_n9mod12 + family_n5mod12 + family_n1mod12_conditioned
    if not all(
        row["denominators_positive"]
        and row["denominators_distinct"]
        and row["denominators_strictly_increasing"]
        and row["exact_identity"]
        for row in rows
    ):
        raise AssertionError("exact unit-fraction subfamily check failed")
    return (
        family_n5mod8,
        family_n9mod12,
        family_n5mod12,
        family_n1mod12_conditioned,
        outside_identity_n1mod12,
    )


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def write_json(path: Path, value: Any) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as stream:
        json.dump(value, stream, ensure_ascii=False, indent=2, sort_keys=True)
        stream.write("\n")


def run_check(case_count: int = DEFAULT_CASES, output_path: Path = DEFAULT_OUTPUT) -> dict[str, Any]:
    output_path = output_path.resolve()
    if output_path.exists():
        raise FileExistsError(f"refusing to overwrite exact-check receipt: {output_path}")
    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds")
    n5mod8, n9mod12, n5mod12, n1mod12_conditioned, outside_identity_n1mod12 = check_ranges(case_count)
    rows = n5mod8 + n9mod12 + n5mod12 + n1mod12_conditioned
    proof_path = ROOT / "research/number-theory/egyptian-fractions/n1-mod4-subfamilies-v1/README.md"
    receipt = {
        "schema": SCHEMA,
        "status": "PASS_EXACT_RATIONAL_RANGE_CHECK",
        "claims_checked": [
            "For n=8a+5 (a>=0), 4/n=1/q+1/D+1/(D/2), q=(n+3)/4, D=nq.",
            "For n=12b+9 (b>=0), 4/n=1/q+1/(t+1)+1/(t(t+1)), q=(n+3)/4, t=nq/3.",
            "For n=12c+5 (c>=0), choose prime p|n with p=2 mod 3; 4/n=1/q+1/x+1/y, q=(n+3)/4, D=nq, x=(D+p)/3, y=(D+D^2/p)/3.",
            "For n=12d+1 (d>=1), if n or q has a prime factor p=2 mod 3, choose it; 4/n=1/q+1/x+1/y, q=(n+3)/4, D=nq, x=(D+p)/3, y=(D+D^2/p)/3.",
        ],
        "method": "Python Fraction exact rational equality and exact positivity/distinctness/order checks.",
        "cases_per_unconditional_family": case_count,
        "total_family_cases_checked": len(rows),
        "conditioned_family_candidate_count": case_count,
        "conditioned_family_eligible_count": len(n1mod12_conditioned),
        "conditioned_family_outside_identity_count": len(outside_identity_n1mod12),
        "n_ranges": {
            "n_eq_5_mod_8": [5, 8 * (case_count - 1) + 5],
            "n_eq_9_mod_12": [9, 12 * (case_count - 1) + 9],
            "n_eq_5_mod_12": [5, 12 * (case_count - 1) + 5],
            "n_eq_1_mod_12_conditioned": [13, 12 * case_count + 1],
        },
        "all_equalities_passed": all(row["exact_identity"] for row in rows),
        "all_denominators_positive": all(row["denominators_positive"] for row in rows),
        "all_denominator_triples_distinct": all(row["denominators_distinct"] for row in rows),
        "all_denominator_triples_strictly_increasing": all(
            row["denominators_strictly_increasing"] for row in rows
        ),
        "boundary_examples": {
            "n_eq_5_mod_8": [n5mod8[index] for index in sorted({0, len(n5mod8) // 2, len(n5mod8) - 1})],
            "n_eq_9_mod_12": [n9mod12[index] for index in sorted({0, len(n9mod12) // 2, len(n9mod12) - 1})],
            "n_eq_5_mod_12": [n5mod12[index] for index in sorted({0, len(n5mod12) // 2, len(n5mod12) - 1})],
            "n_eq_1_mod_12_conditioned": [
                n1mod12_conditioned[index]
                for index in sorted({0, len(n1mod12_conditioned) // 2, len(n1mod12_conditioned) - 1})
            ] if n1mod12_conditioned else [],
        },
        "conditioned_identity_excluded_examples": sorted(
            {
                outside_identity_n1mod12[index]
                for index in {0, len(outside_identity_n1mod12) // 2, len(outside_identity_n1mod12) - 1}
            }
        ) if outside_identity_n1mod12 else [],
        "proof_note_sha256": sha256(proof_path),
        "runner_sha256": sha256(Path(__file__).resolve()),
        "network_calls": 0,
        "provider_calls": 0,
        "model_calls": 0,
        "novelty_claim": False,
        "full_erdos_straus_conjecture_solved": False,
        "started_at_utc": started_at,
        "completed_at_utc": datetime.now(timezone.utc).isoformat(timespec="microseconds"),
    }
    write_json(output_path, receipt)
    return receipt


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cases", type=int, default=DEFAULT_CASES)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    receipt = run_check(args.cases, args.output)
    print(
        json.dumps(
            {
                "output": str(args.output),
                "status": receipt["status"],
                "cases_per_unconditional_family": receipt["cases_per_unconditional_family"],
                "total_family_cases_checked": receipt["total_family_cases_checked"],
                "conditioned_family_eligible_count": receipt["conditioned_family_eligible_count"],
                "conditioned_family_outside_identity_count": receipt["conditioned_family_outside_identity_count"],
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
