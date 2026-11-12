from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from time import perf_counter
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from extend_egyptian_fraction_n1mod12_residual_search import (
    BASE_CASES,
    BASE_RECEIPT,
    MAX_TOTAL_OFFSET,
    _file_sha256,
    run_extension,
)


SCHEMA = "mathcase-erdos-straus-n193-exhaustive-three-term-v1"
TARGET_N = 193
EXTENSION_RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-extension-h4096.json"


class ExhaustiveReceiptError(ValueError):
    """Raised when the bounded h=4096 source receipt does not reopen."""


def exact_three_term_solutions(n: int) -> dict[str, Any]:
    """Exhaust all sorted three-term representations for the fixed residual n=193."""
    if n != TARGET_N:
        raise ValueError(f"this bounded exhaustive search is fixed to n={TARGET_N}")

    x_min = n // 4 + 1
    x_max = (3 * n - 1) // 4
    pairs_checked = 0
    solutions: list[list[int]] = []
    for x in range(x_min, x_max + 1):
        numerator = 4 * x - n
        denominator = n * x
        y_min = max(x + 1, denominator // numerator + 1)
        y_max = (2 * denominator - 1) // numerator
        for y in range(y_min, y_max + 1):
            pairs_checked += 1
            remainder_numerator = numerator * y - denominator
            if remainder_numerator <= 0:
                continue
            z_numerator = denominator * y
            if z_numerator % remainder_numerator:
                continue
            z = z_numerator // remainder_numerator
            if x < y < z and 4 * x * y * z == n * (x * y + x * z + y * z):
                solutions.append([x, y, z])

    return {
        "n": n,
        "x_inclusive_range": [x_min, x_max],
        "sorted_denominator_pairs_checked": pairs_checked,
        "exact_solution_count": len(solutions),
        "solutions": solutions,
        "witness": solutions[0] if solutions else None,
        "completeness_argument": (
            "For sorted x<y<z and 4/n=1/x+1/y+1/z, positivity gives x>n/4; "
            "the three terms are each <1/x, so 4/n<3/x and x<3n/4. "
            "After choosing x, write the positive remainder as a/D with a=4x-n "
            "and D=nx. Positivity of the second remainder gives y>D/a, and y<z "
            "gives a/D<2/y, hence y<2D/a. The enumerated integer bounds cover all such x,y."
        ),
    }


def _read_and_reopen_extension() -> tuple[dict[str, Any], str]:
    try:
        extension_receipt = json.loads(EXTENSION_RECEIPT.read_text(encoding="utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ExhaustiveReceiptError(f"cannot read the h=4096 extension receipt: {exc}") from exc
    if (
        extension_receipt.get("schema") != "mathcase-erdos-straus-n1mod12-bounded-greedy-extension-v1"
        or extension_receipt.get("status") != "PASS_BOUNDED_EXACT_EXTENSION"
        or extension_receipt.get("case_count") != BASE_CASES
        or extension_receipt.get("max_total_offset") != MAX_TOTAL_OFFSET
        or extension_receipt.get("still_not_found_within_extension_bound") != 1
        or extension_receipt.get("still_not_found_examples") != [TARGET_N]
    ):
        raise ExhaustiveReceiptError("h=4096 extension does not isolate exactly n=193")

    replay = run_extension(BASE_CASES, MAX_TOTAL_OFFSET)
    for key in (
        "schema",
        "status",
        "classification",
        "case_count",
        "base_first_denominator_offset",
        "extension_offset_interval",
        "max_total_offset",
        "base_h256_residual_candidates",
        "base_h256_exact_representations",
        "base_h256_not_found_within_bound",
        "extension_exact_representations_found",
        "still_not_found_within_extension_bound",
        "still_not_found_examples",
        "extension_solution_examples",
        "base_missed_n_values_sha256",
        "canonical_extension_rows_sha256",
        "source_bindings",
        "network_calls",
        "model_calls",
        "provider_calls",
        "full_erdos_straus_conjecture_solved",
        "novelty_claim",
    ):
        if extension_receipt.get(key) != replay.get(key):
            raise ExhaustiveReceiptError(f"h=4096 extension does not reopen: {key}")
    return extension_receipt, _file_sha256(EXTENSION_RECEIPT)


def run_resolution() -> dict[str, Any]:
    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    extension_receipt, extension_sha256 = _read_and_reopen_extension()
    solution_search = exact_three_term_solutions(TARGET_N)
    finished = perf_counter()
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    return {
        "schema": SCHEMA,
        "status": "PASS_FINITE_EXHAUSTIVE_REPRESENTATION_FOUND",
        "classification": "ONE_RESIDUAL_INPUT_RESOLVED_BY_EXACT_BOUNDED_ENUMERATION",
        "base_residual_candidates": extension_receipt["base_h256_residual_candidates"],
        "greedy_representations_through_offset_4096": (
            extension_receipt["base_h256_exact_representations"]
            + extension_receipt["extension_exact_representations_found"]
        ),
        "remaining_input_before_exhaustive_search": TARGET_N,
        "exact_search": solution_search,
        "base_h256_receipt_sha256": _file_sha256(BASE_RECEIPT),
        "extension_h4096_receipt_sha256": extension_sha256,
        "source_bindings": {
            "base_receipt_sha256": _file_sha256(BASE_RECEIPT),
            "extension_receipt_sha256": extension_sha256,
            "extension_script_sha256": extension_receipt["source_bindings"]["extension_script_sha256"],
            "exact_search_script_sha256": _file_sha256(Path(__file__)),
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
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_resolution()
    except (ValueError, ExhaustiveReceiptError) as exc:
        print(json.dumps({"status": "FAIL", "error": str(exc)}, sort_keys=True))
        return 1
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(receipt, sort_keys=True, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(
        json.dumps(
            {
                "status": receipt["status"],
                "n": receipt["exact_search"]["n"],
                "solution_count": receipt["exact_search"]["exact_solution_count"],
                "witness": receipt["exact_search"]["witness"],
                "n1_mod12_residual_candidates": receipt["base_residual_candidates"],
                "greedy_resolved": receipt["greedy_representations_through_offset_4096"],
                "output": str(args.output),
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
