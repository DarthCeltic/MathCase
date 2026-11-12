from __future__ import annotations

import argparse
import hashlib
import json
import sys
from datetime import datetime, timezone
from fractions import Fraction
from pathlib import Path
from time import perf_counter
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from search_egyptian_fraction_n1mod12_range import verify_receipt as verify_range_receipt


SCHEMA = "mathcase-erdos-straus-single-residual-extension-v1"
TARGET_N = 1_609_969
FIRST_OFFSET = 4_097
MAX_TOTAL_OFFSET = 65_536
BASE_RECEIPT = ROOT / "research/number-theory/egyptian-fractions/n1-mod12-range-100001-200000-v1/range-receipt-h4096.json"
RANGE_SCRIPT = ROOT / "scripts/search_egyptian_fraction_n1mod12_range.py"


class ResidualExtensionError(ValueError):
    """Raised when the exact saved range receipt does not isolate the target."""


def _sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _file_sha256(path: Path) -> str:
    return _sha256(path.read_bytes())


def find_strict_triple(
    n: int,
    first_offset: int = FIRST_OFFSET,
    max_total_offset: int = MAX_TOTAL_OFFSET,
) -> tuple[int, int, int, int] | None:
    if n != TARGET_N:
        raise ValueError(f"this bounded extension is fixed to n={TARGET_N}")
    if not FIRST_OFFSET <= first_offset <= max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(
            f"offset range must lie within {FIRST_OFFSET}..{MAX_TOTAL_OFFSET}"
        )

    q = (n + 3) // 4
    for offset in range(first_offset, max_total_offset + 1):
        x = q + offset
        numerator = 4 * x - n
        denominator = n * x
        y = (denominator + numerator - 1) // numerator
        remainder_numerator = numerator * y - denominator
        if remainder_numerator <= 0:
            continue
        z_numerator = denominator * y
        if z_numerator % remainder_numerator:
            continue
        z = z_numerator // remainder_numerator
        if x < y < z and 4 * x * y * z == n * (x * y + x * z + y * z):
            if Fraction(1, x) + Fraction(1, y) + Fraction(1, z) != Fraction(4, n):
                raise AssertionError("integer and rational equality checks disagree")
            return x, y, z, offset
    return None


def _read_and_reopen_base() -> tuple[dict[str, Any], str]:
    try:
        receipt = json.loads(BASE_RECEIPT.read_text(encoding="utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ResidualExtensionError(f"cannot read the bounded range receipt: {exc}") from exc
    verify_range_receipt(receipt)
    if (
        receipt.get("d_inclusive_range") != [100_001, 200_000]
        or receipt.get("residual_candidates") != 10_068
        or receipt.get("not_found_within_search_bound") != 1
        or receipt.get("not_found_examples") != [TARGET_N]
    ):
        raise ResidualExtensionError("the bounded range receipt does not isolate exactly n=1609969")
    return receipt, _file_sha256(BASE_RECEIPT)


def run_extension(max_total_offset: int = MAX_TOTAL_OFFSET) -> dict[str, Any]:
    if not FIRST_OFFSET <= max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(f"max_total_offset must be within {FIRST_OFFSET}..{MAX_TOTAL_OFFSET}")
    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    base_receipt, base_sha256 = _read_and_reopen_base()
    result = find_strict_triple(TARGET_N, FIRST_OFFSET, max_total_offset)
    finished = perf_counter()
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    denominators = list(result[:3]) if result else None
    return {
        "schema": SCHEMA,
        "status": "PASS_BOUNDED_EXACT_EXTENSION" if result else "PASS_BOUNDED_SEARCH_WITHIN_CAP_NO_WITNESS",
        "classification": "ONE_INPUT_BOUNDED_GREEDY_EXTENSION_NOT_A_COUNTEREXAMPLE_OR_CONJECTURE_PROOF",
        "n": TARGET_N,
        "base_d_range": base_receipt["d_inclusive_range"],
        "base_candidate_count": base_receipt["residual_candidates"],
        "base_h4096_exact_representations": base_receipt["exact_representations_found"],
        "base_h4096_not_found": base_receipt["not_found_within_search_bound"],
        "extension_first_denominator_offset_range": [FIRST_OFFSET, max_total_offset],
        "representation_found": result is not None,
        "first_denominator_offset": result[3] if result else None,
        "denominators": denominators,
        "exact_identity": (
            Fraction(1, denominators[0]) + Fraction(1, denominators[1]) + Fraction(1, denominators[2])
            == Fraction(4, TARGET_N)
            if denominators
            else None
        ),
        "base_range_receipt_sha256": base_sha256,
        "source_bindings": {
            "range_script_sha256": _file_sha256(RANGE_SCRIPT),
            "extension_script_sha256": _file_sha256(Path(__file__)),
        },
        "started_at_utc": started_at,
        "finished_at_utc": finished_at,
        "wall_seconds": round(finished - started, 3),
        "network_calls": 0,
        "model_calls": 0,
        "provider_calls": 0,
        "full_erdos_straus_conjecture_solved": False,
        "novelty_claim": False,
    }


def verify_receipt(receipt: dict[str, Any]) -> None:
    if receipt.get("schema") != SCHEMA or receipt.get("n") != TARGET_N:
        raise ValueError("unexpected single-residual receipt identity")
    replay = run_extension(receipt.get("extension_first_denominator_offset_range", [None, None])[1])
    for key in (
        "status",
        "classification",
        "n",
        "base_d_range",
        "base_candidate_count",
        "base_h4096_exact_representations",
        "base_h4096_not_found",
        "extension_first_denominator_offset_range",
        "representation_found",
        "first_denominator_offset",
        "denominators",
        "exact_identity",
        "base_range_receipt_sha256",
        "source_bindings",
        "network_calls",
        "model_calls",
        "provider_calls",
        "full_erdos_straus_conjecture_solved",
        "novelty_claim",
    ):
        if receipt.get(key) != replay.get(key):
            raise ValueError(f"single-residual receipt does not reopen: {key}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-total-offset", type=int, default=MAX_TOTAL_OFFSET)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_extension(args.max_total_offset)
    except (ValueError, ResidualExtensionError) as exc:
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
                "n": receipt["n"],
                "representation_found": receipt["representation_found"],
                "first_denominator_offset": receipt["first_denominator_offset"],
                "denominators": receipt["denominators"],
                "max_total_offset": args.max_total_offset,
                "output": str(args.output),
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
