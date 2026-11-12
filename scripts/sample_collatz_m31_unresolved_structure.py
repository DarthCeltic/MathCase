#!/usr/bin/env python3
"""Draw a reproducible sample from odd M31 classes unresolved by the 128-step screen."""

from __future__ import annotations

import argparse
import array
import bisect
import gzip
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Iterator, TextIO


SAMPLE_SIZE = 4096
SPLIT_SIZE = SAMPLE_SIZE // 2
MODULUS = 1 << 31
ODD_CLASS_COUNT = MODULUS // 2
SEED = "mathcase-collatz-m31-unresolved-odd-v1:2026-11-01"
PROTOCOL_RELATIVE = "research/collatz/structure-sample/m31-unresolved-odd-v1/protocol.md"
M31_ROOT = Path("research/collatz/m31-exploratory")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_bytearray(data: bytearray, chunk_size: int = 64 * 1024 * 1024) -> str:
    digest = hashlib.sha256()
    view = memoryview(data)
    for start in range(0, len(view), chunk_size):
        digest.update(view[start : start + chunk_size])
    return digest.hexdigest()


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def iter_json_array_objects(stream: TextIO, key: str, chunk_size: int = 65536) -> Iterator[dict[str, Any]]:
    """Stream object members of a top-level JSON array without loading the file."""
    if chunk_size < 1:
        raise ValueError("chunk_size must be positive")
    needle = json.dumps(key)
    buffer = ""
    while needle not in buffer:
        chunk = stream.read(chunk_size)
        if not chunk:
            raise ValueError(f"JSON key {key!r} was not found")
        buffer += chunk
        if needle not in buffer:
            buffer = buffer[-len(needle) :]

    key_position = buffer.index(needle) + len(needle)
    while True:
        colon = buffer.find(":", key_position)
        if colon >= 0:
            break
        chunk = stream.read(chunk_size)
        if not chunk:
            raise ValueError(f"JSON key {key!r} has no value")
        buffer += chunk
    array_start = colon + 1
    while True:
        while array_start < len(buffer) and buffer[array_start].isspace():
            array_start += 1
        if array_start < len(buffer):
            break
        chunk = stream.read(chunk_size)
        if not chunk:
            raise ValueError(f"JSON key {key!r} has no array value")
        buffer += chunk
    if buffer[array_start] != "[":
        raise ValueError(f"JSON key {key!r} is not an array")
    buffer = buffer[array_start + 1 :]
    decoder = json.JSONDecoder()

    while True:
        buffer = buffer.lstrip()
        if not buffer:
            chunk = stream.read(chunk_size)
            if not chunk:
                raise ValueError(f"JSON array {key!r} ended unexpectedly")
            buffer = chunk
            continue
        if buffer[0] == "]":
            return
        if buffer[0] == ",":
            buffer = buffer[1:]
            continue
        try:
            value, end = decoder.raw_decode(buffer)
        except json.JSONDecodeError:
            chunk = stream.read(chunk_size)
            if not chunk:
                raise ValueError(f"JSON array {key!r} contains an incomplete value")
            buffer += chunk
            continue
        if not isinstance(value, dict):
            raise ValueError(f"JSON array {key!r} contains a non-object member")
        yield value
        buffer = buffer[end:]


def iter_gzip_json_array_objects(path: Path, key: str) -> Iterator[dict[str, Any]]:
    with gzip.open(path, "rt", encoding="utf-8", newline="") as stream:
        yield from iter_json_array_objects(stream, key)


def _hash_gzip_plaintext(path: Path) -> tuple[str, int]:
    digest = hashlib.sha256()
    byte_count = 0
    with gzip.open(path, "rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
            byte_count += len(chunk)
    return digest.hexdigest(), byte_count


def _load_verified_m31(repo: Path) -> tuple[dict[str, Any], dict[str, Any], Path]:
    root = repo / M31_ROOT
    manifest_path = root / "package-manifest.json"
    manifest_bytes = manifest_path.read_bytes()
    manifest = json.loads(manifest_bytes)
    if manifest.get("schema") != "mathcase-collatz-m31-arithmetic-screen-v1":
        raise ValueError("unexpected M31 package schema")
    if manifest.get("classification") != "EXPLORATORY_ARITHMETIC_ONLY":
        raise ValueError("M31 package is not marked arithmetic-only")
    for flag in ("lean_compiled", "axiom_checked", "global_collatz_proof", "standard_m4_receipt"):
        if manifest.get(flag) is not False:
            raise ValueError(f"M31 package overstates {flag}")

    for entry in manifest.get("files", []):
        relative = Path(*entry["path"].split("/"))
        path = root / relative
        path.resolve().relative_to(root.resolve())
        if path.is_symlink() or not path.is_file() or sha256_file(path) != entry["sha256"]:
            raise ValueError(f"M31 package file is missing, unsafe, or hash-mismatched: {entry['path']}")

    scan_relative = manifest.get("scan")
    if scan_relative != "scan/m31-residual-affine-screen.json.gz":
        raise ValueError("M31 package names an unexpected scan")
    scan_path = root / Path(*scan_relative.split("/"))
    compressed_sha = sha256_file(scan_path)
    if compressed_sha != manifest.get("scan_sha256"):
        raise ValueError("M31 compressed scan hash differs from the package manifest")
    plain_sha, plain_bytes = _hash_gzip_plaintext(scan_path)
    if plain_sha != manifest.get("uncompressed_scan_sha256"):
        raise ValueError("M31 uncompressed scan hash differs from the package manifest")

    validation_path = root / manifest["validation_receipt"]
    validation = json.loads(validation_path.read_bytes())
    if validation.get("status") != "PASS" or validation.get("screen_sha256") != compressed_sha:
        raise ValueError("M31 independent receipt is not a PASS bound to this scan")
    if validation.get("lean_compiled") is not False or validation.get("axiom_checked") is not False:
        raise ValueError("M31 independent receipt overstates formal evidence")
    if validation.get("global_collatz_proof") is not False or validation.get("standard_m4_receipt") is not False:
        raise ValueError("M31 independent receipt overstates proof status")
    if plain_bytes <= 0:
        raise ValueError("M31 decompressed scan is empty")

    expected_search = manifest["search"]
    if expected_search.get("modulus") != MODULUS or expected_search.get("max_steps") != 128:
        raise ValueError("M31 baseline search parameters differ from the registered protocol")
    if expected_search.get("residual_after_search") != 23_642_078:
        raise ValueError("M31 residual count differs from the registered finite baseline")
    if validation.get("residual_after_search") != expected_search["residual_after_search"]:
        raise ValueError("M31 independent residual count differs from its manifest")
    return manifest, validation, scan_path


def _load_m31_family_residues(scan_path: Path, expected_count: int) -> tuple[array.array, int]:
    residues = array.array("Q")
    previous = -1
    odd_count = 0
    row_count = 0
    for row in iter_gzip_json_array_objects(scan_path, "families"):
        residue = row.get("r")
        if not isinstance(residue, int) or not 0 <= residue < MODULUS:
            raise ValueError("M31 family has an invalid residue")
        if residue <= previous:
            raise ValueError("M31 family residues are not strictly increasing")
        if row.get("m") != 31 or row.get("modulus") != MODULUS:
            raise ValueError("M31 family row has an unexpected modulus")
        if row.get("steps") != len(row.get("parity_word", "")):
            raise ValueError("M31 family parity word length differs from its step count")
        residues.append(residue)
        odd_count += residue & 1
        previous = residue
        row_count += 1
    if row_count != expected_count:
        raise ValueError(f"M31 family row count differs: expected {expected_count}, found {row_count}")
    return residues, odd_count


def _count_uncovered_odd_base_classes(covered_m30: bytearray, chunk_size: int = 64 * 1024 * 1024) -> int:
    if len(covered_m30) < 2 or len(covered_m30) & (len(covered_m30) - 1):
        raise ValueError("M30 coverage mask length must be a power of two")
    count = 0
    for start in range(1, len(covered_m30), chunk_size * 2):
        stop = min(len(covered_m30), start + chunk_size * 2)
        odd = bytes(memoryview(covered_m30)[start:stop:2])
        count += odd.count(0)
    return count


def _hash_index(seed: str, counter: int, upper_bound: int) -> int:
    if upper_bound < 1 or upper_bound & (upper_bound - 1):
        raise ValueError("upper bound must be a positive power of two")
    payload = seed.encode("utf-8") + b"\0" + counter.to_bytes(8, "big")
    return int.from_bytes(hashlib.sha256(payload).digest()[:8], "big") & (upper_bound - 1)


def _select_uniform_unresolved_odd_classes(
    covered_m30: bytearray,
    family_residues: array.array,
    sample_count: int,
    seed: str,
) -> tuple[list[int], int]:
    if sample_count < 1:
        raise ValueError("sample count must be positive")
    if len(covered_m30) < 2 or len(covered_m30) & (len(covered_m30) - 1):
        raise ValueError("M30 coverage mask length must be a power of two")
    families = family_residues
    uncovered_odd_base = _count_uncovered_odd_base_classes(covered_m30)
    m31_odd_family_count = sum(residue & 1 for residue in families)
    population = 2 * uncovered_odd_base - m31_odd_family_count
    if population < sample_count:
        raise ValueError("registered sample exceeds the unresolved odd-class population")

    selected: list[int] = []
    selected_set: set[int] = set()
    counter = 0
    base_mask = len(covered_m30) - 1
    while len(selected) < sample_count:
        r = 2 * _hash_index(seed, counter, len(covered_m30)) + 1
        counter += 1
        if covered_m30[r & base_mask]:
            continue
        position = bisect.bisect_left(families, r)
        if position < len(families) and families[position] == r:
            continue
        if r in selected_set:
            continue
        selected.append(r)
        selected_set.add(r)
    return selected, counter


def _v2(value: int) -> int:
    if value <= 0:
        raise ValueError("v2 is defined here only for positive integers")
    return (value & -value).bit_length() - 1


def _odd_step(value: int) -> int:
    if value <= 0 or value % 2 == 0:
        raise ValueError("odd-to-odd Collatz step requires a positive odd input")
    return (3 * value + 1) >> _v2(3 * value + 1)


def _first_odd_descent(value: int, max_steps: int) -> int | None:
    current = value
    for step in range(1, max_steps + 1):
        current = _odd_step(current)
        if current < value:
            return step
    return None


def _affine_certificate_step(residue: int, max_steps: int = 192) -> int | None:
    slope, intercept = MODULUS, residue
    for step in range(1, max_steps + 1):
        if slope & 1:
            break
        if intercept & 1:
            slope, intercept = 3 * slope, 3 * intercept + 1
        else:
            slope //= 2
            intercept //= 2
        if slope <= MODULUS and intercept < residue:
            return step
    return None


def _sample_row(index: int, residue: int, discovery_size: int) -> dict[str, Any]:
    representative = residue + MODULUS
    affine_step = _affine_certificate_step(residue)
    return {
        "sample_index": index,
        "split": "discovery" if index < discovery_size else "holdout",
        "residue_mod_2_31": residue,
        "representative": representative,
        "initial_v2_3n_plus_1": _v2(3 * representative + 1),
        "first_odd_descent_within_64": _first_odd_descent(representative, 64),
        "first_strict_affine_certificate_through_192": affine_step,
    }


def _split_statistics(rows: list[dict[str, Any]], split: str) -> dict[str, Any]:
    chosen = [row for row in rows if row["split"] == split]
    counts = {str(k): 0 for k in range(1, 6)}
    counts["6+"] = 0
    for row in chosen:
        value = row["initial_v2_3n_plus_1"]
        counts[str(value) if value <= 5 else "6+"] += 1
    n = len(chosen)
    expected = {str(k): 1 / (2**k) for k in range(1, 6)}
    expected["6+"] = 1 / 32
    max_abs_geometric_deviation = max(abs(counts[key] / n - expected[key]) for key in counts)
    descents = sum(row["first_odd_descent_within_64"] is not None for row in chosen)
    extensions = sum(
        row["first_strict_affine_certificate_through_192"] is not None
        and row["first_strict_affine_certificate_through_192"] > 128
        for row in chosen
    )
    return {
        "sample_count": n,
        "initial_v2_counts": counts,
        "initial_v2_max_abs_deviation_from_geometric": max_abs_geometric_deviation,
        "concrete_descent_within_64_count": descents,
        "concrete_descent_within_64_rate": descents / n,
        "new_affine_certificates_steps_129_to_192_count": extensions,
        "new_affine_certificates_steps_129_to_192_rate": extensions / n,
    }


def run(repo: Path, output_dir: Path, protocol_path: Path) -> dict[str, Any]:
    if output_dir.exists():
        if not output_dir.is_dir() or any(output_dir.iterdir()):
            raise ValueError("output directory must be new or empty")
    else:
        output_dir.mkdir(parents=True)

    protocol_bytes = protocol_path.read_bytes()
    protocol_sha = sha256_bytes(protocol_bytes)
    code_path = Path(__file__).resolve()
    code_sha = sha256_file(code_path)
    print("[sample] validating pinned M31 package and residual receipt", flush=True)
    m31_manifest, validation, scan_path = _load_verified_m31(repo)
    print("[sample] reconstructing the M30-covered mask from bound local packages", flush=True)
    scripts_root = str((repo / "scripts").resolve())
    if scripts_root not in sys.path:
        sys.path.insert(0, scripts_root)
    import scan_collatz_m31_residual as scanner31  # noqa: E402

    covered_m30, baseline = scanner31._covered_m30(repo)
    if baseline != m31_manifest.get("baseline"):
        raise ValueError("reconstructed M30 baseline binding differs from the M31 package")
    coverage_sha = sha256_bytearray(covered_m30)
    print("[sample] streaming and binding the 1,900,470 saved M31 family residues", flush=True)
    families, odd_family_count = _load_m31_family_residues(scan_path, m31_manifest["candidate_family_count"])
    print("[sample] drawing 4,096 fixed-seed unresolved odd classes", flush=True)
    sample, candidate_draws = _select_uniform_unresolved_odd_classes(covered_m30, families, SAMPLE_SIZE, SEED)
    rows = [_sample_row(index, residue, SPLIT_SIZE) for index, residue in enumerate(sample)]
    lines = b"".join((json.dumps(row, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8") for row in rows)
    (output_dir / "samples.jsonl").write_bytes(lines)

    uncovered_odd_base = _count_uncovered_odd_base_classes(covered_m30)
    unresolved_odd_population = 2 * uncovered_odd_base - odd_family_count
    summary = {
        "schema": "mathcase-collatz-m31-unresolved-odd-structure-summary-v1",
        "classification": "EXPLORATORY_FINITE_STRUCTURE_SAMPLE",
        "sample_count": SAMPLE_SIZE,
        "discovery_count": SPLIT_SIZE,
        "holdout_count": SPLIT_SIZE,
        "unresolved_odd_class_population": unresolved_odd_population,
        "m30_uncovered_odd_base_classes": uncovered_odd_base,
        "m31_screen_odd_family_count": odd_family_count,
        "candidate_draws_to_fill_sample": candidate_draws,
        "seed": SEED,
        "draw_method": "SHA-256 counter stream reduced modulo 2^30; rejection against M30 mask and sorted M31 family residues; deduplicated without replacement",
        "discovery": _split_statistics(rows, "discovery"),
        "holdout": _split_statistics(rows, "holdout"),
        "registered_hypotheses": {
            "H1": "Initial v2(3n+1) maximum absolute deviation from the geometric probabilities 1/2^k for k=1..5 and 6+ is at most 0.06 in each split.",
            "H2": "At least 50% of each split's fixed representatives reach an odd-to-odd iterate strictly below the representative within 64 steps.",
            "H3": "At least 1% of each split's residue classes gain a strict affine certificate at steps 129..192 under the M31 parity-affine recurrence.",
        },
        "hypothesis_results": {
            "H1_pass": all(
                _split_statistics(rows, split)["initial_v2_max_abs_deviation_from_geometric"] <= 0.06
                for split in ("discovery", "holdout")
            ),
            "H2_pass": all(
                _split_statistics(rows, split)["concrete_descent_within_64_rate"] >= 0.5
                for split in ("discovery", "holdout")
            ),
            "H3_pass": all(
                _split_statistics(rows, split)["new_affine_certificates_steps_129_to_192_rate"] >= 0.01
                for split in ("discovery", "holdout")
            ),
        },
        "scope": "Finite sample of odd residue classes left unresolved by the saved M31 128-step affine screen. This does not prove or refute the Collatz conjecture and does not count as Lean/M4 evidence.",
    }
    summary_raw = (json.dumps(summary, sort_keys=True, indent=2) + "\n").encode("utf-8")
    (output_dir / "summary.json").write_bytes(summary_raw)
    manifest = {
        "schema": "mathcase-collatz-m31-unresolved-odd-structure-manifest-v1",
        "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "classification": summary["classification"],
        "protocol_path": PROTOCOL_RELATIVE,
        "protocol_sha256": protocol_sha,
        "sampler_code_sha256": code_sha,
        "m31_package_manifest_sha256": sha256_file(repo / M31_ROOT / "package-manifest.json"),
        "m31_validation_sha256": sha256_file(repo / M31_ROOT / "independent-validation.json"),
        "m31_scan_sha256": sha256_file(scan_path),
        "m30_baseline_binding": baseline,
        "m30_coverage_mask_sha256": coverage_sha,
        "sample_sha256": sha256_bytes(lines),
        "summary_sha256": sha256_bytes(summary_raw),
        "sample_count": SAMPLE_SIZE,
        "network_calls": 0,
        "provider_calls": 0,
        "gpu_used": False,
        "formal_proof_status": "NOT_PRODUCED",
    }
    (output_dir / "run-manifest.json").write_bytes((json.dumps(manifest, sort_keys=True, indent=2) + "\n").encode("utf-8"))
    print(json.dumps({"status": "PASS_FINITE_SAMPLE", **summary["discovery"], "holdout": summary["holdout"], "population": unresolved_odd_population}, sort_keys=True), flush=True)
    return summary


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--protocol", type=Path, default=None)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    repo = args.repo_root.resolve()
    protocol = args.protocol or (repo / PROTOCOL_RELATIVE)
    requested_output = args.output_dir.resolve()
    if requested_output.exists() and requested_output.is_dir() and any(requested_output.iterdir()):
        print(json.dumps({"status": "REFUSED", "reason": "output directory is not empty", "output_dir": str(requested_output)}), file=sys.stderr)
        return 2
    try:
        run(repo, requested_output, protocol.resolve())
    except Exception as exc:  # preserve a durable failure receipt for bounded runs
        output = requested_output
        output.mkdir(parents=True, exist_ok=True)
        receipt = {
            "schema": "mathcase-collatz-m31-unresolved-odd-structure-failure-v1",
            "status": "FAIL",
            "error_type": type(exc).__name__,
            "error": str(exc),
            "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
            "network_calls": 0,
            "provider_calls": 0,
            "gpu_used": False,
        }
        failure_path = output / "failure-receipt.json"
        if not failure_path.exists():
            failure_path.write_text(json.dumps(receipt, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        print(json.dumps(receipt, sort_keys=True), file=sys.stderr, flush=True)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
