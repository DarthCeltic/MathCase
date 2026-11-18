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

from extend_egyptian_fraction_n1mod12_residual_search import (
    BASE_OFFSET,
    MAX_TOTAL_OFFSET,
    find_greedy_representation_in_range,
)
from search_egyptian_fraction_n1mod12_range_v3 import residual_candidates_in_range
from search_egyptian_fraction_n1mod12_residuals import (
    find_greedy_three_term_representation,
)


SCHEMA = "mathcase-egyptian-fraction-witness-stream-v2"
MAX_D = 400_000
MAX_D_VALUES_PER_RUN = 100_000
SOURCE_PATHS = (
    "scripts/export_egyptian_fraction_witness_stream_v2.py",
    "scripts/search_egyptian_fraction_n1mod12_range_v3.py",
    "scripts/search_egyptian_fraction_n1mod12_residuals.py",
    "scripts/extend_egyptian_fraction_n1mod12_residual_search.py",
    "scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py",
)


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def canonical_json_line(value: dict[str, Any]) -> bytes:
    return (json.dumps(value, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def source_bindings() -> dict[str, str]:
    return {path: sha256_file(ROOT / Path(*path.split("/"))) for path in SOURCE_PATHS}


def _write_record(stream, digest, value: dict[str, Any]) -> None:
    payload = canonical_json_line(value)
    stream.write(payload)
    digest.update(payload)


def export_bundle(start_d: int, end_d: int, max_total_offset: int, output_dir: Path) -> dict[str, Any]:
    if start_d < 1 or end_d < start_d or end_d > MAX_D:
        raise ValueError(f"d interval must satisfy 1 <= start <= end <= {MAX_D}")
    d_values = end_d - start_d + 1
    if d_values > MAX_D_VALUES_PER_RUN:
        raise ValueError(f"a run may cover at most {MAX_D_VALUES_PER_RUN} d values")
    if not BASE_OFFSET < max_total_offset <= MAX_TOTAL_OFFSET:
        raise ValueError(f"max_total_offset must be within {BASE_OFFSET + 1}..{MAX_TOTAL_OFFSET}")
    if output_dir.exists():
        if output_dir.is_symlink() or not output_dir.is_dir() or any(output_dir.iterdir()):
            raise FileExistsError(f"refusing to overwrite existing output directory: {output_dir}")
    else:
        output_dir.mkdir(parents=True)

    start_sources = source_bindings()
    started_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    started = perf_counter()
    digests = {name: hashlib.sha256() for name in ("candidates", "results", "witnesses")}
    counts = {"candidates": 0, "witnesses": 0, "not_found_within_bound": 0, "base_offset": 0, "extension_offset": 0}
    files = {
        "candidates": output_dir / "candidate-n.jsonl",
        "results": output_dir / "results.jsonl",
        "witnesses": output_dir / "witnesses.jsonl",
    }

    try:
        with files["candidates"].open("xb") as candidate_stream, files["results"].open("xb") as result_stream, files["witnesses"].open("xb") as witness_stream:
            for n in residual_candidates_in_range(start_d, d_values):
                candidate_stream.write(f"{n}\n".encode("ascii"))
                digests["candidates"].update(f"{n}\n".encode("ascii"))
                counts["candidates"] += 1

                representation = find_greedy_three_term_representation(n, BASE_OFFSET)
                offset = None
                denominators = None
                status = "NOT_FOUND_WITHIN_BOUND"
                if representation is not None:
                    x, y, z, offset = representation
                    counts["base_offset"] += 1
                    denominators = [x, y, z]
                    status = "WITNESS_FOUND"
                else:
                    extension = find_greedy_representation_in_range(
                        n, BASE_OFFSET + 1, max_total_offset
                    )
                    if extension is not None:
                        x, y, z, offset = extension
                        counts["extension_offset"] += 1
                        denominators = [x, y, z]
                        status = "WITNESS_FOUND"

                if denominators is None:
                    counts["not_found_within_bound"] += 1
                else:
                    x, y, z = denominators
                    if not (0 < x < y < z and Fraction(1, x) + Fraction(1, y) + Fraction(1, z) == Fraction(4, n)):
                        raise AssertionError(f"search result failed exact check for n={n}")
                    _write_record(witness_stream, digests["witnesses"], {"n": n, "x": x, "y": y, "z": z})
                    counts["witnesses"] += 1

                _write_record(
                    result_stream,
                    digests["results"],
                    {
                        "n": n,
                        "status": status,
                        "first_denominator_offset": offset,
                        "denominators": denominators,
                    },
                )

        end_sources = source_bindings()
        if end_sources != start_sources:
            raise RuntimeError("a bound source file changed while the run was executing")
        finished = perf_counter()
        finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
        manifest = {
            "schema": SCHEMA,
            "status": "PASS_BOUNDED_WITNESS_EXPORT",
            "classification": "FINITE_RESIDUAL_SET_AND_EXPORTED_WITNESSES_ONLY",
            "target": "Erdos-Straus representations for factor-conditioned n=1 mod 12 candidates",
            "candidate_definition": "n=12*d+1; neither n nor q=(n+3)//4 has a prime factor congruent to 2 modulo 3",
            "d_interval_inclusive": [start_d, end_d],
            "d_values_scanned": d_values,
            "search": {
                "method": "exact greedy first-denominator offsets 0..256, then 257..max_total_offset",
                "base_offset": BASE_OFFSET,
                "max_total_offset": max_total_offset,
            },
            "counts": counts,
            "streams": {
                name: {"path": path.name, "sha256": digests[name].hexdigest(), "records": counts[key]}
                for name, path, key in (
                    ("candidates", files["candidates"], "candidates"),
                    ("results", files["results"], "candidates"),
                    ("witnesses", files["witnesses"], "witnesses"),
                )
            },
            "source_bindings": start_sources,
            "started_at_utc": started_at,
            "finished_at_utc": finished_at,
            "wall_seconds": round(finished - started, 3),
            "network_calls": 0,
            "model_calls": 0,
            "provider_calls": 0,
            "gpu_used": False,
            "full_erdos_straus_conjecture_solved": False,
            "novelty_claim": False,
        }
        manifest_bytes = (json.dumps(manifest, sort_keys=True, indent=2) + "\n").encode("utf-8")
        with (output_dir / "run-manifest.json").open("xb") as stream:
            stream.write(manifest_bytes)
        return manifest
    except BaseException as exc:
        failure = {
            "schema": "mathcase-egyptian-fraction-witness-stream-failure-v1",
            "status": "FAILED_OR_INTERRUPTED",
            "error_type": type(exc).__name__,
            "error": str(exc),
            "started_at_utc": started_at,
            "source_bindings": start_sources,
            "partial_record_counts": counts,
        }
        failure_path = output_dir / "attempt-failure.json"
        if not failure_path.exists():
            with failure_path.open("xb") as stream:
                stream.write((json.dumps(failure, sort_keys=True, indent=2) + "\n").encode("utf-8"))
        raise


def main() -> int:
    parser = argparse.ArgumentParser(description="Export every witness from one bounded Egyptian-fraction residual interval.")
    parser.add_argument("--start-d", type=int, required=True)
    parser.add_argument("--end-d", type=int, required=True)
    parser.add_argument("--max-total-offset", type=int, default=MAX_TOTAL_OFFSET)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    result = export_bundle(args.start_d, args.end_d, args.max_total_offset, args.output_dir)
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
