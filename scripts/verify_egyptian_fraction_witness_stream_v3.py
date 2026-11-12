from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from math import isqrt
from pathlib import Path
from typing import Any, Iterator


ROOT = Path(__file__).resolve().parents[1]
SCHEMA = "mathcase-egyptian-fraction-witness-stream-v3"
SOURCE_PATHS = {
    "scripts/export_egyptian_fraction_witness_stream_v3.py",
    "scripts/search_egyptian_fraction_n1mod12_range_v4.py",
    "scripts/search_egyptian_fraction_n1mod12_residuals.py",
    "scripts/extend_egyptian_fraction_n1mod12_residual_search.py",
    "scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py",
}
STREAM_PATHS = {
    "candidates": "candidate-n.jsonl",
    "results": "results.jsonl",
    "witnesses": "witnesses.jsonl",
}


def _sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _canonical_json_line(value: dict[str, Any]) -> bytes:
    return (json.dumps(value, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def _parse_json_line(raw: bytes, label: str) -> dict[str, Any]:
    try:
        value = json.loads(raw.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValueError(f"invalid UTF-8 JSONL record in {label}") from exc
    if not isinstance(value, dict) or _canonical_json_line(value) != raw:
        raise ValueError(f"noncanonical JSONL record in {label}")
    return value


def _bad_factor_mask(limit: int) -> bytearray:
    """Mark integers divisible by any prime congruent to 2 modulo 3."""
    prime = bytearray(b"\x01") * (limit + 1)
    prime[0:2] = b"\x00\x00"
    for candidate in range(2, isqrt(limit) + 1):
        if prime[candidate]:
            first = candidate * candidate
            count = (limit - first) // candidate + 1
            prime[first::candidate] = b"\x00" * count

    bad_factor = bytearray(limit + 1)
    for p in range(2, limit + 1):
        if prime[p] and p % 3 == 2:
            bad_factor[p::p] = b"\x01" * (limit // p)
    return bad_factor


def _expected_candidates(start_d: int, end_d: int) -> Iterator[int]:
    max_n = 12 * end_d + 1
    bad_factor = _bad_factor_mask(max_n)
    for d in range(start_d, end_d + 1):
        n = 12 * d + 1
        q = (n + 3) // 4
        if not bad_factor[n] and not bad_factor[q]:
            yield n


def _safe_stream(root: Path, name: str) -> Path:
    if name not in STREAM_PATHS:
        raise ValueError(f"unexpected stream name: {name}")
    path = root / STREAM_PATHS[name]
    if path.is_symlink() or not path.is_file() or path.resolve().parent != root.resolve():
        raise ValueError(f"missing or unsafe {name} stream")
    return path


def verify_bundle(bundle_dir: Path) -> dict[str, Any]:
    root = bundle_dir.resolve()
    if root.is_symlink() or not root.is_dir():
        raise ValueError("bundle directory must be a regular directory")
    manifest_path = root / "run-manifest.json"
    if manifest_path.is_symlink() or not manifest_path.is_file():
        raise ValueError("run manifest is missing or unsafe")
    manifest_bytes = manifest_path.read_bytes()
    try:
        manifest = json.loads(manifest_bytes.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValueError("run manifest is not valid UTF-8 JSON") from exc
    if manifest.get("schema") != SCHEMA or manifest.get("status") != "PASS_BOUNDED_WITNESS_EXPORT":
        raise ValueError("unexpected run-manifest schema or status")
    if manifest.get("classification") != "FINITE_RESIDUAL_SET_AND_EXPORTED_WITNESSES_ONLY":
        raise ValueError("unexpected mathematical claim classification")
    interval = manifest.get("d_interval_inclusive")
    if not isinstance(interval, list) or len(interval) != 2:
        raise ValueError("manifest has no closed d interval")
    start_d, end_d = interval
    if not isinstance(start_d, int) or not isinstance(end_d, int) or start_d < 1 or end_d < start_d or end_d > 1_000_000 or end_d - start_d + 1 > 100_000:
        raise ValueError("manifest d interval exceeds the independent checker bounds")
    search = manifest.get("search")
    if not isinstance(search, dict) or search.get("base_offset") != 256:
        raise ValueError("manifest has an unsupported search profile")
    max_offset = search.get("max_total_offset")
    if not isinstance(max_offset, int) or not 257 <= max_offset <= 4096:
        raise ValueError("manifest has an unsupported maximum offset")

    source_bindings = manifest.get("source_bindings")
    if not isinstance(source_bindings, dict) or set(source_bindings) != SOURCE_PATHS:
        raise ValueError("manifest source binding set is incomplete or unexpected")
    for relative, expected_hash in source_bindings.items():
        source_path = (ROOT / Path(*relative.split("/"))).resolve()
        if source_path.is_symlink() or not source_path.is_file() or source_path.relative_to(ROOT.resolve()) is None:
            raise ValueError(f"bound source is missing or unsafe: {relative}")
        if _sha256_file(source_path) != expected_hash:
            raise ValueError(f"bound source digest differs: {relative}")

    stream_manifests = manifest.get("streams")
    if not isinstance(stream_manifests, dict) or set(stream_manifests) != set(STREAM_PATHS):
        raise ValueError("manifest stream set is incomplete or unexpected")
    streams: dict[str, Path] = {}
    for name, expected_path in STREAM_PATHS.items():
        entry = stream_manifests[name]
        if not isinstance(entry, dict) or entry.get("path") != expected_path:
            raise ValueError(f"unexpected path for {name} stream")
        streams[name] = _safe_stream(root, name)
        if _sha256_file(streams[name]) != entry.get("sha256"):
            raise ValueError(f"{name} stream digest differs from the manifest")

    counts = manifest.get("counts")
    if not isinstance(counts, dict):
        raise ValueError("manifest counts are missing")
    for name in STREAM_PATHS:
        if stream_manifests[name].get("records") != (counts.get("witnesses") if name == "witnesses" else counts.get("candidates")):
            raise ValueError(f"manifest record count differs for {name}")

    candidate_count = witness_count = missing_count = base_count = extension_count = 0
    candidate_digest = hashlib.sha256()
    result_digest = hashlib.sha256()
    witness_digest = hashlib.sha256()
    with streams["candidates"].open("rb") as candidate_stream, streams["results"].open("rb") as result_stream, streams["witnesses"].open("rb") as witness_stream:
        for n in _expected_candidates(start_d, end_d):
            candidate_line = candidate_stream.readline()
            expected_candidate_line = f"{n}\n".encode("ascii")
            if candidate_line != expected_candidate_line:
                raise ValueError(f"candidate coverage or order differs at n={n}")
            candidate_digest.update(candidate_line)
            candidate_count += 1

            result_line = result_stream.readline()
            if not result_line:
                raise ValueError(f"result stream ended before candidate n={n}")
            result_digest.update(result_line)
            row = _parse_json_line(result_line, "results")
            if set(row) != {"n", "status", "first_denominator_offset", "denominators"} or row.get("n") != n:
                raise ValueError(f"result row is malformed or out of order at n={n}")

            status = row.get("status")
            offset = row.get("first_denominator_offset")
            denominators = row.get("denominators")
            if status == "NOT_FOUND_WITHIN_BOUND":
                if offset is not None or denominators is not None:
                    raise ValueError(f"not-found result carries a witness at n={n}")
                missing_count += 1
                continue
            if status != "WITNESS_FOUND" or not isinstance(offset, int) or not 0 <= offset <= max_offset:
                raise ValueError(f"invalid bounded-search result at n={n}")
            if not isinstance(denominators, list) or len(denominators) != 3 or any(not isinstance(x, int) for x in denominators):
                raise ValueError(f"invalid denominator triple at n={n}")
            x, y, z = denominators
            if not (0 < x < y < z) or x != (n + 3) // 4 + offset:
                raise ValueError(f"denominator ordering or offset is invalid at n={n}")
            expected_stage = "base" if offset <= 256 else "extension"
            if expected_stage == "base":
                base_count += 1
            else:
                extension_count += 1

            witness_line = witness_stream.readline()
            if not witness_line:
                raise ValueError(f"witness stream ended before n={n}")
            witness_digest.update(witness_line)
            witness = _parse_json_line(witness_line, "witnesses")
            if set(witness) != {"n", "x", "y", "z"} or witness != {"n": n, "x": x, "y": y, "z": z}:
                raise ValueError(f"witness/result binding differs at n={n}")
            if 4 * x * y * z != n * (x * y + x * z + y * z):
                raise ValueError(f"exact Egyptian-fraction identity fails at n={n}")
            witness_count += 1

        if candidate_stream.readline():
            raise ValueError("candidate stream contains extra values")
        if result_stream.readline():
            raise ValueError("result stream contains extra rows")
        if witness_stream.readline():
            raise ValueError("witness stream contains extra rows")

    digests = {
        "candidates": candidate_digest.hexdigest(),
        "results": result_digest.hexdigest(),
        "witnesses": witness_digest.hexdigest(),
    }
    for name, digest in digests.items():
        if digest != stream_manifests[name]["sha256"]:
            raise ValueError(f"{name} stream digest differs after streaming verification")
    if candidate_count != counts.get("candidates") or witness_count != counts.get("witnesses"):
        raise ValueError("verified stream totals differ from the manifest")
    if missing_count != counts.get("not_found_within_bound") or base_count != counts.get("base_offset") or extension_count != counts.get("extension_offset"):
        raise ValueError("verified outcome totals differ from the manifest")

    finished_at = datetime.now(timezone.utc).isoformat(timespec="microseconds").replace("+00:00", "Z")
    return {
        "schema": "mathcase-egyptian-fraction-witness-verification-v3",
        "status": "PASS_ALL_EXPORTED_WITNESSES_AND_CANDIDATE_COVERAGE",
        "classification": "FINITE_BOUNDED_WITNESS_VERIFICATION_ONLY",
        "run_manifest_sha256": hashlib.sha256(manifest_bytes).hexdigest(),
        "checker_sha256": _sha256_file(Path(__file__).resolve()),
        "checker_method": "independent Eratosthenes prime sieve for candidate coverage; integer identity check for every exported triple",
        "d_interval_inclusive": interval,
        "candidate_count": candidate_count,
        "witness_count": witness_count,
        "not_found_within_bound": missing_count,
        "streams_sha256": digests,
        "checked_at_utc": finished_at,
        "network_calls": 0,
        "model_calls": 0,
        "provider_calls": 0,
        "full_erdos_straus_conjecture_solved": False,
        "novelty_claim": False,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Independently check a bounded Egyptian-fraction witness bundle.")
    parser.add_argument("--bundle", type=Path, required=True)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = verify_bundle(args.bundle)
    payload = (json.dumps(result, sort_keys=True, indent=2) + "\n").encode("utf-8")
    if args.output is not None:
        if args.output.exists():
            raise FileExistsError(f"refusing to overwrite verification receipt: {args.output}")
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with args.output.open("xb") as stream:
            stream.write(payload)
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
