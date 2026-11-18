from __future__ import annotations

import argparse
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from time import perf_counter
from typing import Any, Iterator


ROOT = Path(__file__).resolve().parents[1]
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from run_egyptian_fraction_n1mod4_subfamilies_check import maybe_prime_factor_two_mod_three


SCHEMA = "mathcase-erdos-straus-n1mod12-bounded-greedy-search-v1"
MAX_CASES = 100_000
MAX_FIRST_DENOMINATOR_OFFSET = 256
PROOF_NOTE = ROOT / "research/number-theory/egyptian-fractions/n1-mod4-subfamilies-v1/README.md"
CLASSIFIER = ROOT / "scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py"


def _sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _file_sha256(path: Path) -> str:
    return _sha256(path.read_bytes())


def residual_candidates(case_count: int) -> Iterator[int]:
    """Yield n=12d+1 where neither n nor q=(n+3)/4 has a 2 mod 3 prime."""
    if not 1 <= case_count <= MAX_CASES:
        raise ValueError(f"case_count must be within 1..{MAX_CASES}")
    for d in range(1, case_count + 1):
        n = 12 * d + 1
        q = (n + 3) // 4
        if (
            maybe_prime_factor_two_mod_three(n) is None
            and maybe_prime_factor_two_mod_three(q) is None
        ):
            yield n


def find_greedy_three_term_representation(
    n: int, max_first_denominator_offset: int
) -> tuple[int, int, int, int] | None:
    """Try x=q+h, then greedily choose y and test whether the remainder is 1/z."""
    if n < 13 or n % 12 != 1:
        raise ValueError("n must be at least 13 and congruent to 1 modulo 12")
    if not 0 <= max_first_denominator_offset <= MAX_FIRST_DENOMINATOR_OFFSET:
        raise ValueError(
            "max_first_denominator_offset must be within "
            f"0..{MAX_FIRST_DENOMINATOR_OFFSET}"
        )

    q = (n + 3) // 4
    for offset in range(max_first_denominator_offset + 1):
        x = q + offset
        numerator, denominator = 4 * x - n, n * x
        y = (denominator + numerator - 1) // numerator
        remainder_numerator = numerator * y - denominator
        if remainder_numerator <= 0:
            continue
        z_numerator = denominator * y
        if z_numerator % remainder_numerator:
            continue
        z = z_numerator // remainder_numerator
        if x < y < z and 4 * x * y * z == n * (x * y + x * z + y * z):
            return x, y, z, offset
    return None


def _canonical_row(row: dict[str, Any]) -> bytes:
    return (json.dumps(row, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def run_search(case_count: int, max_first_denominator_offset: int) -> dict[str, Any]:
    if not 1 <= case_count <= MAX_CASES:
        raise ValueError(f"case_count must be within 1..{MAX_CASES}")
    if not 0 <= max_first_denominator_offset <= MAX_FIRST_DENOMINATOR_OFFSET:
        raise ValueError(
            "max_first_denominator_offset must be within "
            f"0..{MAX_FIRST_DENOMINATOR_OFFSET}"
        )

    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    candidate_values = list(residual_candidates(case_count))
    result_rows: list[dict[str, Any]] = []
    for n in candidate_values:
        representation = find_greedy_three_term_representation(
            n, max_first_denominator_offset
        )
        result_rows.append(
            {
                "n": n,
                "first_denominator_offset": representation[3] if representation else None,
                "denominators": list(representation[:3]) if representation else None,
            }
        )

    counts = {
        "0-32": 0,
        "33-64": 0,
        "65-128": 0,
        "129-256": 0,
        "no_representation_found_within_bound": 0,
    }
    examples: list[dict[str, Any]] = []
    not_found_examples: list[int] = []
    for row in result_rows:
        offset = row["first_denominator_offset"]
        if offset is None:
            counts["no_representation_found_within_bound"] += 1
            if len(not_found_examples) < 20:
                not_found_examples.append(row["n"])
            continue
        if offset <= 32:
            counts["0-32"] += 1
        elif offset <= 64:
            counts["33-64"] += 1
        elif offset <= 128:
            counts["65-128"] += 1
        else:
            counts["129-256"] += 1
        if len(examples) < 12:
            examples.append(row)

    candidate_bytes = b"".join(f"{n}\n".encode("ascii") for n in candidate_values)
    result_bytes = b"".join(_canonical_row(row) for row in result_rows)
    finished = perf_counter()
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    return {
        "schema": SCHEMA,
        "status": "PASS_BOUNDED_EXACT_SEARCH",
        "classification": "FINITE_GREEDY_SEARCH_ONLY_NOT_A_CONJECTURE_PROOF",
        "target": "Erdos-Straus three-unit-fraction representations for a bounded n=1 mod 12 residual set",
        "candidate_definition": "n=12*d+1, 1<=d<=case_count, with no prime factor p=2 mod 3 in n or q=(n+3)/4",
        "case_count": case_count,
        "d_inclusive_range": [1, case_count],
        "n_inclusive_range": [13, 12 * case_count + 1],
        "max_first_denominator_offset": max_first_denominator_offset,
        "search_method": "Try x=q+h for h=0..cap; set a=4*x-n and D=n*x; choose y=ceil(D/a); accept z=D*y/(a*y-D) only when integral, x<y<z, and exact cross-multiplication passes.",
        "residual_candidates": len(candidate_values),
        "exact_representations_found": len(result_rows) - counts["no_representation_found_within_bound"],
        "not_found_within_search_bound": counts["no_representation_found_within_bound"],
        "first_denominator_offset_counts": counts,
        "not_found_examples": not_found_examples,
        "solution_examples": examples,
        "candidate_n_values_sha256": _sha256(candidate_bytes),
        "canonical_result_rows_sha256": _sha256(result_bytes),
        "source_bindings": {
            "search_script_sha256": _file_sha256(Path(__file__)),
            "existing_factor_classifier_sha256": _file_sha256(CLASSIFIER),
            "existing_family_note_sha256": _file_sha256(PROOF_NOTE),
        },
        "started_at_utc": started_at,
        "finished_at_utc": finished_at,
        "wall_seconds": round(finished - started, 3),
        "exact_integer_arithmetic": True,
        "network_calls": 0,
        "model_calls": 0,
        "provider_calls": 0,
        "full_erdos_straus_conjecture_solved": False,
        "novelty_claim": False,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cases", type=int, default=MAX_CASES)
    parser.add_argument("--max-first-denominator-offset", type=int, default=MAX_FIRST_DENOMINATOR_OFFSET)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_search(args.cases, args.max_first_denominator_offset)
    except ValueError as exc:
        print(json.dumps({"status": "FAIL", "error": str(exc)}, sort_keys=True))
        return 1
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(receipt, ensure_ascii=False, sort_keys=True, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(
        json.dumps(
            {
                "status": receipt["status"],
                "residual_candidates": receipt["residual_candidates"],
                "exact_representations_found": receipt["exact_representations_found"],
                "not_found_within_search_bound": receipt["not_found_within_search_bound"],
                "max_first_denominator_offset": receipt["max_first_denominator_offset"],
                "output": str(args.output),
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
