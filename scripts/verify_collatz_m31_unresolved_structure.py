#!/usr/bin/env python3
"""Independently check the saved M31 unresolved-odd structure sample receipt."""

from __future__ import annotations

import argparse
import array
import bisect
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


MODULUS = 1 << 31
SAMPLE_COUNT = 4096
DISCOVERY_COUNT = 2048
EXPECTED_BUCKETS = ("1", "2", "3", "4", "5", "6+")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_mask(mask: bytearray) -> str:
    digest = hashlib.sha256()
    view = memoryview(mask)
    for start in range(0, len(view), 64 * 1024 * 1024):
        digest.update(view[start : start + 64 * 1024 * 1024])
    return digest.hexdigest()


def v2_by_division(value: int) -> int:
    if value <= 0:
        raise ValueError("v2 expects a positive integer")
    count = 0
    while value % 2 == 0:
        value //= 2
        count += 1
    return count


def odd_step_by_division(value: int) -> int:
    if value <= 0 or value % 2 == 0:
        raise ValueError("odd-to-odd step expects a positive odd integer")
    value = 3 * value + 1
    while value % 2 == 0:
        value //= 2
    return value


def first_odd_descent_by_division(value: int, limit: int = 64) -> int | None:
    current = value
    for step in range(1, limit + 1):
        current = odd_step_by_division(current)
        if current < value:
            return step
    return None


def affine_certificate_by_recurrence(residue: int, limit: int = 192) -> int | None:
    coefficient, offset = MODULUS, residue
    step = 0
    while step < limit:
        if coefficient % 2:
            return None
        if offset % 2:
            coefficient = 3 * coefficient
            offset = 3 * offset + 1
        else:
            coefficient //= 2
            offset //= 2
        step += 1
        if coefficient <= MODULUS and offset < residue:
            return step
    return None


def expected_draw(seed: str, counter: int, population_size: int) -> int:
    if population_size <= 0 or population_size & (population_size - 1):
        raise ValueError("the odd-index domain must be a power of two")
    material = seed.encode("utf-8") + b"\0" + counter.to_bytes(8, "big")
    return int.from_bytes(hashlib.sha256(material).digest()[:8], "big") & (population_size - 1)


def independently_replay_selection(
    covered: bytearray, family_residues: array.array, count: int, seed: str
) -> tuple[list[int], int]:
    selected: list[int] = []
    seen: set[int] = set()
    counter = 0
    mask = len(covered) - 1
    while len(selected) < count:
        residue = expected_draw(seed, counter, len(covered)) * 2 + 1
        counter += 1
        if covered[residue & mask]:
            continue
        position = bisect.bisect_left(family_residues, residue)
        if position < len(family_residues) and family_residues[position] == residue:
            continue
        if residue in seen:
            continue
        selected.append(residue)
        seen.add(residue)
    return selected, counter


def split_statistics(rows: list[dict[str, Any]], split: str) -> dict[str, Any]:
    selected = [row for row in rows if row["split"] == split]
    if not selected:
        raise ValueError(f"empty split: {split}")
    counts = {key: 0 for key in EXPECTED_BUCKETS}
    for row in selected:
        value = row["initial_v2_3n_plus_1"]
        key = str(value) if value <= 5 else "6+"
        counts[key] += 1
    n = len(selected)
    expected = {str(k): 1 / (2**k) for k in range(1, 6)}
    expected["6+"] = 1 / 32
    deviation = max(abs(counts[key] / n - expected[key]) for key in EXPECTED_BUCKETS)
    descents = sum(row["first_odd_descent_within_64"] is not None for row in selected)
    extension = sum(
        row["first_strict_affine_certificate_through_192"] is not None
        and row["first_strict_affine_certificate_through_192"] > 128
        for row in selected
    )
    return {
        "sample_count": n,
        "initial_v2_counts": counts,
        "initial_v2_max_abs_deviation_from_geometric": deviation,
        "concrete_descent_within_64_count": descents,
        "concrete_descent_within_64_rate": descents / n,
        "new_affine_certificates_steps_129_to_192_count": extension,
        "new_affine_certificates_steps_129_to_192_rate": extension / n,
    }


def verify(repo: Path, package: Path) -> dict[str, Any]:
    scripts = str((repo / "scripts").resolve())
    if scripts not in sys.path:
        sys.path.insert(0, scripts)
    from sample_collatz_m31_unresolved_structure import (
        _count_uncovered_odd_base_classes,
        _load_m31_family_residues,
        _load_verified_m31,
        PROTOCOL_RELATIVE,
    )
    import scan_collatz_m31_residual as scanner31

    run_manifest_path = package / "run-manifest.json"
    sample_path = package / "samples.jsonl"
    summary_path = package / "summary.json"
    manifest = json.loads(run_manifest_path.read_bytes())
    summary = json.loads(summary_path.read_bytes())
    if manifest.get("schema") != "mathcase-collatz-m31-unresolved-odd-structure-manifest-v1":
        raise ValueError("unexpected sample manifest schema")
    if manifest.get("sample_count") != SAMPLE_COUNT or summary.get("sample_count") != SAMPLE_COUNT:
        raise ValueError("sample count differs from the registered protocol")
    if sha256_file(sample_path) != manifest.get("sample_sha256"):
        raise ValueError("sample stream hash differs")
    if sha256_file(summary_path) != manifest.get("summary_sha256"):
        raise ValueError("summary hash differs")
    sampler_path = repo / "scripts" / "sample_collatz_m31_unresolved_structure.py"
    if sha256_file(sampler_path) != manifest.get("sampler_code_sha256"):
        raise ValueError("sampler source hash differs from the run manifest")
    protocol = repo / PROTOCOL_RELATIVE
    if sha256_file(protocol) != manifest.get("protocol_sha256"):
        raise ValueError("frozen protocol hash differs from the run manifest")

    m31_manifest, validation, scan_path = _load_verified_m31(repo)
    if sha256_file(repo / "research/collatz/m31-exploratory/package-manifest.json") != manifest.get("m31_package_manifest_sha256"):
        raise ValueError("M31 package manifest hash differs")
    if sha256_file(repo / "research/collatz/m31-exploratory/independent-validation.json") != manifest.get("m31_validation_sha256"):
        raise ValueError("M31 validation receipt hash differs")
    if sha256_file(scan_path) != manifest.get("m31_scan_sha256"):
        raise ValueError("M31 scan hash differs")

    covered, baseline = scanner31._covered_m30(repo)
    if baseline != manifest.get("m30_baseline_binding") or baseline != m31_manifest.get("baseline"):
        raise ValueError("reconstructed M30 baseline binding differs")
    if sha256_mask(covered) != manifest.get("m30_coverage_mask_sha256"):
        raise ValueError("reconstructed M30 mask hash differs")
    family_residues, odd_family_count = _load_m31_family_residues(scan_path, m31_manifest["candidate_family_count"])
    uncovered_odd = _count_uncovered_odd_base_classes(covered)
    population = 2 * uncovered_odd - odd_family_count
    if population != summary.get("unresolved_odd_class_population"):
        raise ValueError("eligible odd-class population differs")
    if population != validation.get("residual_after_search"):
        raise ValueError("odd unresolved population does not match the saved M31 residual total")

    rows = [json.loads(line) for line in sample_path.read_text(encoding="utf-8").splitlines() if line]
    if len(rows) != SAMPLE_COUNT:
        raise ValueError("sample stream row count differs")
    observed: list[int] = []
    for index, row in enumerate(rows):
        if row.get("sample_index") != index:
            raise ValueError("sample indices are not contiguous")
        expected_split = "discovery" if index < DISCOVERY_COUNT else "holdout"
        if row.get("split") != expected_split:
            raise ValueError("sample split boundary differs")
        residue = row.get("residue_mod_2_31")
        representative = row.get("representative")
        if not isinstance(residue, int) or residue <= 0 or residue >= MODULUS or residue % 2 == 0:
            raise ValueError("sample residue is not an in-range odd class")
        if representative != residue + MODULUS:
            raise ValueError("representative differs from the registered class lift")
        if covered[residue & (len(covered) - 1)]:
            raise ValueError("sample contains an M30-covered class")
        family_index = bisect.bisect_left(family_residues, residue)
        if family_index < len(family_residues) and family_residues[family_index] == residue:
            raise ValueError("sample contains a saved M31 family class")

        first_v2 = v2_by_division(3 * representative + 1)
        descent = first_odd_descent_by_division(representative)
        affine = affine_certificate_by_recurrence(residue)
        if row.get("initial_v2_3n_plus_1") != first_v2:
            raise ValueError("sample initial valuation differs on independent recomputation")
        if row.get("first_odd_descent_within_64") != descent:
            raise ValueError("sample trajectory result differs on independent recomputation")
        if row.get("first_strict_affine_certificate_through_192") != affine:
            raise ValueError("sample affine result differs on independent recomputation")
        observed.append(residue)
    if len(set(observed)) != SAMPLE_COUNT:
        raise ValueError("sample contains duplicate residue classes")

    seed = summary.get("seed")
    replayed, draws = independently_replay_selection(covered, family_residues, SAMPLE_COUNT, seed)
    if observed != replayed:
        raise ValueError("sample order differs from independent deterministic selection replay")
    if draws != summary.get("candidate_draws_to_fill_sample"):
        raise ValueError("candidate draw count differs from independent replay")

    discovery = split_statistics(rows, "discovery")
    holdout = split_statistics(rows, "holdout")
    if discovery != summary.get("discovery") or holdout != summary.get("holdout"):
        raise ValueError("split statistics differ from independent recomputation")
    hypotheses = {
        "H1_pass": all(split_statistics(rows, split)["initial_v2_max_abs_deviation_from_geometric"] <= 0.06 for split in ("discovery", "holdout")),
        "H2_pass": all(split_statistics(rows, split)["concrete_descent_within_64_rate"] >= 0.5 for split in ("discovery", "holdout")),
        "H3_pass": all(split_statistics(rows, split)["new_affine_certificates_steps_129_to_192_rate"] >= 0.01 for split in ("discovery", "holdout")),
    }
    if hypotheses != summary.get("hypothesis_results"):
        raise ValueError("registered hypothesis results differ")

    receipt = {
        "schema": "mathcase-collatz-m31-unresolved-odd-structure-verification-v1",
        "status": "PASS_SAMPLE_AND_DERIVED_ARITHMETIC",
        "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "sample_count": SAMPLE_COUNT,
        "eligible_population": population,
        "candidate_draws": draws,
        "discovery": discovery,
        "holdout": holdout,
        "hypothesis_results": hypotheses,
        "run_manifest_sha256": sha256_file(run_manifest_path),
        "sample_sha256": sha256_file(sample_path),
        "summary_sha256": sha256_file(summary_path),
        "verifier_source_sha256": sha256_file(Path(__file__).resolve()),
        "network_calls": 0,
        "provider_calls": 0,
        "gpu_used": False,
        "formal_proof_status": "NOT_PRODUCED",
    }
    receipt_path = package / "verification-receipt.json"
    if receipt_path.exists():
        raise FileExistsError("verification receipt already exists; refusing to overwrite")
    receipt_path.write_text(json.dumps(receipt, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")
    return receipt


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--package", type=Path, default=None)
    args = parser.parse_args()
    repo = args.repo_root.resolve()
    package = args.package or (repo / "research/collatz/structure-sample/m31-unresolved-odd-v1")
    try:
        result = verify(repo, package.resolve())
    except Exception as exc:
        failure = {
            "schema": "mathcase-collatz-m31-unresolved-odd-structure-verification-failure-v1",
            "status": "FAIL",
            "error_type": type(exc).__name__,
            "error": str(exc),
            "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
            "network_calls": 0,
            "provider_calls": 0,
            "gpu_used": False,
        }
        failure_path = package.resolve() / "verification-failure-receipt.json"
        if not failure_path.exists():
            failure_path.write_text(json.dumps(failure, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")
        print(json.dumps(failure, sort_keys=True), file=sys.stderr)
        return 1
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
