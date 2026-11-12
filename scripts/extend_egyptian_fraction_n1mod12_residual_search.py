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

from search_egyptian_fraction_n1mod12_residuals import (
    _file_sha256,
    _sha256,
    find_greedy_three_term_representation,
    residual_candidates,
    run_search as run_base_search,
)


SCHEMA = "mathcase-erdos-straus-n1mod12-bounded-greedy-extension-v1"
BASE_OFFSET = 256
MAX_TOTAL_OFFSET = 4096
BASE_CASES = 100_000
BASE_RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-receipt-h256.json"
PROOF_NOTE = ROOT / "research/number-theory/egyptian-fractions/n1-mod4-subfamilies-v1/README.md"
CLASSIFIER = ROOT / "scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py"


class ExtensionReceiptError(ValueError):
    """Raised when the saved h=256 baseline does not reopen exactly."""


def find_greedy_representation_in_range(
    n: int, first_offset: int, last_offset: int
) -> tuple[int, int, int, int] | None:
    """Continue the exact greedy search over a closed interval of offsets."""
    if n < 13 or n % 12 != 1:
        raise ValueError("n must be at least 13 and congruent to 1 modulo 12")
    if not BASE_OFFSET < first_offset <= last_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(
            f"offset interval must lie within {BASE_OFFSET + 1}..{MAX_TOTAL_OFFSET}"
        )

    q = (n + 3) // 4
    for offset in range(first_offset, last_offset + 1):
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


def _read_and_reopen_base(case_count: int) -> tuple[dict[str, Any], str, list[int]]:
    try:
        base_receipt = json.loads(BASE_RECEIPT.read_text(encoding="utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ExtensionReceiptError(f"cannot read the h=256 base receipt: {exc}") from exc
    if (
        base_receipt.get("schema") != "mathcase-erdos-straus-n1mod12-bounded-greedy-search-v1"
        or base_receipt.get("status") != "PASS_BOUNDED_EXACT_SEARCH"
        or base_receipt.get("case_count") != case_count
        or base_receipt.get("max_first_denominator_offset") != BASE_OFFSET
    ):
        raise ExtensionReceiptError("h=256 base receipt identity or bounds differ")

    replay = run_base_search(case_count, BASE_OFFSET)
    for key in (
        "schema",
        "status",
        "classification",
        "case_count",
        "d_inclusive_range",
        "n_inclusive_range",
        "max_first_denominator_offset",
        "residual_candidates",
        "exact_representations_found",
        "not_found_within_search_bound",
        "first_denominator_offset_counts",
        "not_found_examples",
        "solution_examples",
        "candidate_n_values_sha256",
        "canonical_result_rows_sha256",
        "source_bindings",
        "network_calls",
        "model_calls",
        "provider_calls",
        "full_erdos_straus_conjecture_solved",
        "novelty_claim",
    ):
        if base_receipt.get(key) != replay.get(key):
            raise ExtensionReceiptError(f"h=256 baseline does not reopen: {key}")

    missed = [
        n
        for n in residual_candidates(case_count)
        if find_greedy_three_term_representation(n, BASE_OFFSET) is None
    ]
    if len(missed) != base_receipt.get("not_found_within_search_bound"):
        raise ExtensionReceiptError("reopened h=256 missed-set size differs")
    return base_receipt, _file_sha256(BASE_RECEIPT), missed


def run_extension(case_count: int, max_total_offset: int) -> dict[str, Any]:
    if case_count != BASE_CASES:
        raise ValueError(f"case_count must match the saved h=256 base receipt ({BASE_CASES})")
    if not BASE_OFFSET < max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(
            f"max_total_offset must be within {BASE_OFFSET + 1}..{MAX_TOTAL_OFFSET}"
        )

    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    base_receipt, base_receipt_sha256, missed = _read_and_reopen_base(case_count)
    rows: list[dict[str, Any]] = []
    for n in missed:
        representation = find_greedy_representation_in_range(
            n, BASE_OFFSET + 1, max_total_offset
        )
        rows.append(
            {
                "n": n,
                "extension_first_denominator_offset": representation[3] if representation else None,
                "denominators": list(representation[:3]) if representation else None,
            }
        )

    found = sum(row["extension_first_denominator_offset"] is not None for row in rows)
    missed_values_bytes = b"".join(f"{n}\n".encode("ascii") for n in missed)
    result_bytes = b"".join(_canonical_row(row) for row in rows)
    examples = [row for row in rows if row["denominators"] is not None][:20]
    still_unfound = [row["n"] for row in rows if row["denominators"] is None]
    finished = perf_counter()
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    return {
        "schema": SCHEMA,
        "status": "PASS_BOUNDED_EXACT_EXTENSION",
        "classification": "FINITE_GREEDY_SEARCH_EXTENSION_ONLY_NOT_A_CONJECTURE_PROOF",
        "case_count": case_count,
        "base_first_denominator_offset": BASE_OFFSET,
        "extension_offset_interval": [BASE_OFFSET + 1, max_total_offset],
        "max_total_offset": max_total_offset,
        "base_h256_residual_candidates": base_receipt["residual_candidates"],
        "base_h256_exact_representations": base_receipt["exact_representations_found"],
        "base_h256_not_found_within_bound": len(missed),
        "extension_exact_representations_found": found,
        "still_not_found_within_extension_bound": len(still_unfound),
        "still_not_found_examples": still_unfound[:20],
        "extension_solution_examples": examples,
        "base_missed_n_values_sha256": _sha256(missed_values_bytes),
        "canonical_extension_rows_sha256": _sha256(result_bytes),
        "source_bindings": {
            "base_receipt_sha256": base_receipt_sha256,
            "base_search_script_sha256": base_receipt["source_bindings"]["search_script_sha256"],
            "extension_script_sha256": _file_sha256(Path(__file__)),
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
    parser.add_argument("--cases", type=int, default=BASE_CASES)
    parser.add_argument("--max-total-offset", type=int, default=MAX_TOTAL_OFFSET)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_extension(args.cases, args.max_total_offset)
    except (ValueError, ExtensionReceiptError) as exc:
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
                "base_h256_not_found_within_bound": receipt["base_h256_not_found_within_bound"],
                "extension_exact_representations_found": receipt["extension_exact_representations_found"],
                "still_not_found_within_extension_bound": receipt["still_not_found_within_extension_bound"],
                "max_total_offset": receipt["max_total_offset"],
                "output": str(args.output),
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
