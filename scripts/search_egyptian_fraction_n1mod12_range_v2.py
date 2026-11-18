from __future__ import annotations

import argparse
import hashlib
import json
import sys
from datetime import datetime, timezone
from fractions import Fraction
from pathlib import Path
from time import perf_counter
from typing import Any, Iterator


ROOT = Path(__file__).resolve().parents[1]
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from extend_egyptian_fraction_n1mod12_residual_search import (
    BASE_OFFSET,
    MAX_TOTAL_OFFSET,
    find_greedy_representation_in_range,
)
from run_egyptian_fraction_n1mod4_subfamilies_check import maybe_prime_factor_two_mod_three
from search_egyptian_fraction_n1mod12_residuals import (
    MAX_CASES,
    find_greedy_three_term_representation,
)


SCHEMA = "mathcase-erdos-straus-n1mod12-bounded-greedy-range-v1"
MAX_D = 300_000
BASE_SEARCH = ROOT / "scripts/search_egyptian_fraction_n1mod12_residuals.py"
EXTENSION_SEARCH = ROOT / "scripts/extend_egyptian_fraction_n1mod12_residual_search.py"
FACTOR_CLASSIFIER = ROOT / "scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py"
FAMILY_NOTE = ROOT / "research/number-theory/egyptian-fractions/n1-mod4-subfamilies-v1/README.md"


def _sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _file_sha256(path: Path) -> str:
    return _sha256(path.read_bytes())


def _canonical_row(row: dict[str, Any]) -> bytes:
    return (json.dumps(row, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def residual_candidates_in_range(start_d: int, case_count: int) -> Iterator[int]:
    """Yield residual n=12d+1 values over one explicitly bounded d interval."""
    if start_d < 1:
        raise ValueError("start_d must be positive")
    if not 1 <= case_count <= MAX_CASES:
        raise ValueError(f"case_count must be within 1..{MAX_CASES}")
    end_d = start_d + case_count - 1
    if end_d > MAX_D:
        raise ValueError(f"d interval must end at or below {MAX_D}")
    for d in range(start_d, end_d + 1):
        n = 12 * d + 1
        q = (n + 3) // 4
        if (
            maybe_prime_factor_two_mod_three(n) is None
            and maybe_prime_factor_two_mod_three(q) is None
        ):
            yield n


def run_search(
    start_d: int,
    case_count: int,
    max_total_offset: int = MAX_TOTAL_OFFSET,
) -> dict[str, Any]:
    if start_d < 1:
        raise ValueError("start_d must be positive")
    if not 1 <= case_count <= MAX_CASES:
        raise ValueError(f"case_count must be within 1..{MAX_CASES}")
    end_d = start_d + case_count - 1
    if end_d > MAX_D:
        raise ValueError(f"d interval must end at or below {MAX_D}")
    if not BASE_OFFSET < max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(
            f"max_total_offset must be within {BASE_OFFSET + 1}..{MAX_TOTAL_OFFSET}"
        )

    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    candidates = list(residual_candidates_in_range(start_d, case_count))
    rows: list[dict[str, Any]] = []
    base_found = 0
    extension_found = 0
    for n in candidates:
        representation = find_greedy_three_term_representation(n, BASE_OFFSET)
        stage = "h256"
        if representation is None:
            representation = find_greedy_representation_in_range(
                n, BASE_OFFSET + 1, max_total_offset
            )
            stage = "h4096" if representation is not None else "not_found_within_bound"
        if representation is not None:
            if stage == "h256":
                base_found += 1
            else:
                extension_found += 1
            x, y, z, offset = representation
            if not (x < y < z and Fraction(1, x) + Fraction(1, y) + Fraction(1, z) == Fraction(4, n)):
                raise AssertionError(f"exact strict representation check failed for n={n}")
            rows.append({"n": n, "first_denominator_offset": offset, "denominators": [x, y, z], "stage": stage})
        else:
            rows.append({"n": n, "first_denominator_offset": None, "denominators": None, "stage": stage})

    candidate_bytes = b"".join(f"{n}\n".encode("ascii") for n in candidates)
    result_bytes = b"".join(_canonical_row(row) for row in rows)
    remaining = sum(row["denominators"] is None for row in rows)
    finished = perf_counter()
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    return {
        "schema": SCHEMA,
        "status": "PASS_BOUNDED_EXACT_SEARCH",
        "classification": "FINITE_RANGE_GREEDY_SEARCH_ONLY_NOT_A_CONJECTURE_PROOF",
        "target": "Erdos-Straus three-unit-fraction representations for a bounded n=1 mod 12 residual set",
        "candidate_definition": "n=12*d+1 where neither n nor q=(n+3)/4 has a prime factor p=2 mod 3",
        "d_inclusive_range": [start_d, end_d],
        "n_inclusive_range": [12 * start_d + 1, 12 * end_d + 1],
        "d_values_scanned": case_count,
        "max_total_first_denominator_offset": max_total_offset,
        "search_method": "Reopen h=256 greedy baseline per candidate; search only offsets 257..max_total_offset for its misses; verify every found triple by exact Fraction equality and strict denominator order.",
        "residual_candidates": len(candidates),
        "h256_exact_representations": base_found,
        "extension_exact_representations": extension_found,
        "exact_representations_found": base_found + extension_found,
        "not_found_within_search_bound": remaining,
        "not_found_examples": [row["n"] for row in rows if row["denominators"] is None][:20],
        "solution_examples": [row for row in rows if row["denominators"] is not None][:12],
        "candidate_n_values_sha256": _sha256(candidate_bytes),
        "canonical_result_rows_sha256": _sha256(result_bytes),
        "source_bindings": {
            "range_search_script_sha256": _file_sha256(Path(__file__)),
            "h256_search_script_sha256": _file_sha256(BASE_SEARCH),
            "h4096_extension_script_sha256": _file_sha256(EXTENSION_SEARCH),
            "factor_classifier_sha256": _file_sha256(FACTOR_CLASSIFIER),
            "family_note_sha256": _file_sha256(FAMILY_NOTE),
        },
        "started_at_utc": started_at,
        "finished_at_utc": finished_at,
        "wall_seconds": round(finished - started, 3),
        "exact_integer_and_rational_arithmetic": True,
        "network_calls": 0,
        "model_calls": 0,
        "provider_calls": 0,
        "full_erdos_straus_conjecture_solved": False,
        "novelty_claim": False,
    }


def verify_receipt(receipt: dict[str, Any]) -> None:
    if receipt.get("schema") != SCHEMA or receipt.get("status") != "PASS_BOUNDED_EXACT_SEARCH":
        raise ValueError("unexpected bounded range receipt identity")
    d_range = receipt.get("d_inclusive_range")
    if not isinstance(d_range, list) or len(d_range) != 2:
        raise ValueError("receipt has no closed d interval")
    start_d, end_d = d_range
    replay = run_search(start_d, end_d - start_d + 1, receipt.get("max_total_first_denominator_offset"))
    for key in (
        "classification",
        "candidate_definition",
        "d_inclusive_range",
        "n_inclusive_range",
        "d_values_scanned",
        "max_total_first_denominator_offset",
        "residual_candidates",
        "h256_exact_representations",
        "extension_exact_representations",
        "exact_representations_found",
        "not_found_within_search_bound",
        "not_found_examples",
        "solution_examples",
        "candidate_n_values_sha256",
        "canonical_result_rows_sha256",
        "source_bindings",
        "exact_integer_and_rational_arithmetic",
        "network_calls",
        "model_calls",
        "provider_calls",
        "full_erdos_straus_conjecture_solved",
        "novelty_claim",
    ):
        if receipt.get(key) != replay.get(key):
            raise ValueError(f"bounded range receipt does not reopen: {key}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start-d", type=int, default=100_001)
    parser.add_argument("--cases", type=int, default=100_000)
    parser.add_argument("--max-total-offset", type=int, default=MAX_TOTAL_OFFSET)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_search(args.start_d, args.cases, args.max_total_offset)
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
                "d_inclusive_range": receipt["d_inclusive_range"],
                "residual_candidates": receipt["residual_candidates"],
                "exact_representations_found": receipt["exact_representations_found"],
                "not_found_within_search_bound": receipt["not_found_within_search_bound"],
                "output": str(args.output),
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
