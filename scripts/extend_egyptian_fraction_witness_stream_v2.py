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

from verify_egyptian_fraction_witness_stream_v3 import verify_bundle


SCHEMA = "mathcase-egyptian-fraction-witness-stream-extension-v2"
BASE_SCHEMA = "mathcase-egyptian-fraction-witness-stream-v3"
BASE_OFFSET = 4_096
FIRST_OFFSET = BASE_OFFSET + 1
MAX_TOTAL_OFFSET = 65_536
MAX_MISSES = 16
CHECKER = ROOT / "scripts/verify_egyptian_fraction_witness_stream_v3.py"


def _sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _file_sha256(path: Path) -> str:
    return _sha256(path.read_bytes())


def _canonical_json_line(value: dict[str, Any]) -> bytes:
    return (json.dumps(value, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def find_strict_triple(
    n: int, first_offset: int = FIRST_OFFSET, max_total_offset: int = MAX_TOTAL_OFFSET
) -> tuple[int, int, int, int] | None:
    if n < 13 or n % 12 != 1:
        raise ValueError("n must be at least 13 and congruent to 1 modulo 12")
    if not FIRST_OFFSET <= first_offset <= max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(f"offset range must lie within {FIRST_OFFSET}..{MAX_TOTAL_OFFSET}")

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


def run_extension(bundle_dir: Path, max_total_offset: int = MAX_TOTAL_OFFSET) -> dict[str, Any]:
    if not FIRST_OFFSET <= max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(f"max_total_offset must be within {FIRST_OFFSET}..{MAX_TOTAL_OFFSET}")

    root = bundle_dir.resolve()
    base_summary = verify_bundle(root)
    manifest_path = root / "run-manifest.json"
    results_path = root / "results.jsonl"
    manifest_bytes = manifest_path.read_bytes()
    manifest = json.loads(manifest_bytes.decode("utf-8"))
    if manifest.get("schema") != BASE_SCHEMA:
        raise ValueError("extension requires a verified v3 witness stream")
    search = manifest.get("search")
    if not isinstance(search, dict) or search.get("max_total_offset") != BASE_OFFSET:
        raise ValueError("extension requires a base stream ending at offset 4096")

    missing = [
        row["n"]
        for row in (json.loads(line) for line in results_path.read_text(encoding="utf-8").splitlines())
        if row["status"] == "NOT_FOUND_WITHIN_BOUND"
    ]
    if len(missing) != base_summary["not_found_within_bound"] or len(missing) > MAX_MISSES:
        raise ValueError("base stream miss count differs or exceeds the extension cap")

    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    items: list[dict[str, Any]] = []
    for n in missing:
        result = find_strict_triple(n, FIRST_OFFSET, max_total_offset)
        denominators = list(result[:3]) if result else None
        items.append(
            {
                "n": n,
                "status": "WITNESS_FOUND" if result else "NOT_FOUND_AFTER_EXTENSION_CAP",
                "first_denominator_offset": result[3] if result else None,
                "denominators": denominators,
                "exact_identity": (
                    4 * denominators[0] * denominators[1] * denominators[2]
                    == n
                    * (
                        denominators[0] * denominators[1]
                        + denominators[0] * denominators[2]
                        + denominators[1] * denominators[2]
                    )
                    if denominators
                    else None
                ),
            }
        )

    item_bytes = b"".join(_canonical_json_line(item) for item in items)
    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    found_count = sum(item["status"] == "WITNESS_FOUND" for item in items)
    return {
        "schema": SCHEMA,
        "status": "PASS_BOUNDED_EXTENSION",
        "classification": "FINITE_EXTENSION_OF_EXPLICIT_BASE_STREAM_MISSES_ONLY",
        "base_bundle": {
            "schema": BASE_SCHEMA,
            "d_interval_inclusive": manifest["d_interval_inclusive"],
            "run_manifest_sha256": _sha256(manifest_bytes),
            "results_sha256": manifest["streams"]["results"]["sha256"],
            "miss_count": len(missing),
        },
        "extension_offset_range": [FIRST_OFFSET, max_total_offset],
        "counts": {
            "candidates": len(items),
            "witnesses_found": found_count,
            "still_not_found_within_extension_cap": len(items) - found_count,
        },
        "items": items,
        "items_sha256": _sha256(item_bytes),
        "source_bindings": {
            "extension_script_sha256": _file_sha256(Path(__file__).resolve()),
            "base_checker_sha256": _file_sha256(CHECKER),
        },
        "started_at_utc": started_at,
        "finished_at_utc": finished_at,
        "wall_seconds": round(perf_counter() - started, 3),
        "network_calls": 0,
        "model_calls": 0,
        "provider_calls": 0,
        "gpu_used": False,
        "full_erdos_straus_conjecture_solved": False,
        "novelty_claim": False,
    }


def verify_receipt(receipt: dict[str, Any], bundle_dir: Path) -> None:
    if receipt.get("schema") != SCHEMA:
        raise ValueError("unexpected extension receipt schema")
    replay = run_extension(bundle_dir, receipt.get("extension_offset_range", [None, None])[1])
    for key in (
        "status",
        "classification",
        "base_bundle",
        "extension_offset_range",
        "counts",
        "items",
        "items_sha256",
        "source_bindings",
        "network_calls",
        "model_calls",
        "provider_calls",
        "gpu_used",
        "full_erdos_straus_conjecture_solved",
        "novelty_claim",
    ):
        if receipt.get(key) != replay.get(key):
            raise ValueError(f"extension receipt does not reopen: {key}")


def main() -> int:
    parser = argparse.ArgumentParser(description="Extend only the explicit misses from a verified bounded witness stream.")
    parser.add_argument("--bundle", type=Path, required=True)
    parser.add_argument("--max-total-offset", type=int, default=MAX_TOTAL_OFFSET)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    try:
        receipt = run_extension(args.bundle, args.max_total_offset)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with args.output.open("xb") as stream:
            stream.write((json.dumps(receipt, sort_keys=True, indent=2) + "\n").encode("utf-8"))
    except Exception as exc:
        failure = {
            "schema": SCHEMA,
            "status": "FAILED_OR_REFUSED",
            "error_type": type(exc).__name__,
            "error": str(exc),
            "created_at_utc": datetime.now(timezone.utc).isoformat(timespec="seconds").replace("+00:00", "Z"),
            "network_calls": 0,
            "model_calls": 0,
            "provider_calls": 0,
            "gpu_used": False,
        }
        failure_path = args.output.with_name(args.output.name + ".failure.json")
        try:
            failure_path.parent.mkdir(parents=True, exist_ok=True)
            with failure_path.open("xb") as stream:
                stream.write((json.dumps(failure, sort_keys=True, indent=2) + "\n").encode("utf-8"))
        except FileExistsError:
            pass
        print(json.dumps(failure, sort_keys=True))
        return 1
    print(json.dumps({"status": receipt["status"], "counts": receipt["counts"], "output": str(args.output)}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
