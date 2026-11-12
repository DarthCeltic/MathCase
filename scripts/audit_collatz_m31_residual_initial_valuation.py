#!/usr/bin/env python3
"""Count initial 2-adic valuations across every unresolved M31 residue class."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


PROTOCOL_RELATIVE = "research/collatz/structure-sample/m31-residual-initial-valuation-v1/protocol.md"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def count_uncovered_parity(mask: bytearray, parity: int, chunk_size: int = 64 * 1024 * 1024) -> int:
    if parity not in (0, 1):
        raise ValueError("parity must be zero or one")
    if len(mask) < 2 or len(mask) & (len(mask) - 1):
        raise ValueError("coverage-mask length must be a power of two")
    result = 0
    for start in range(parity, len(mask), chunk_size * 2):
        stop = min(len(mask), start + chunk_size * 2)
        result += bytes(memoryview(mask)[start:stop:2]).count(0)
    return result


def valuation_two(value: int) -> int:
    if value <= 0:
        raise ValueError("valuation input must be positive")
    count = 0
    while value % 2 == 0:
        value //= 2
        count += 1
    return count


def audit_residual_classes(mask: bytearray, family_residues: Any) -> dict[str, Any]:
    """Visit all lifted M30 residuals once and exclude saved M31 family rows."""
    base_modulus = len(mask)
    modulus = 2 * base_modulus
    if base_modulus < 2 or base_modulus & (base_modulus - 1):
        raise ValueError("M30 coverage-mask length must be a power of two")
    if any(mask[residue & (base_modulus - 1)] for residue in family_residues):
        raise ValueError("an M31 family row overlaps M30 coverage")

    base_uncovered_even = count_uncovered_parity(mask, 0)
    base_uncovered_odd = count_uncovered_parity(mask, 1)
    base_uncovered = base_uncovered_even + base_uncovered_odd
    examined = 0
    family_rows_matched = 0
    unresolved = 0
    unresolved_even = 0
    unresolved_odd = 0
    valuations: Counter[str] = Counter()
    examples: list[dict[str, int]] = []
    family_index = 0

    for lift in (0, 1):
        offset = lift * base_modulus
        base_index = mask.find(b"\x00", 0)
        while base_index >= 0:
            residue = base_index + offset
            examined += 1
            while family_index < len(family_residues) and family_residues[family_index] < residue:
                family_index += 1
            if family_index < len(family_residues) and family_residues[family_index] == residue:
                family_rows_matched += 1
                family_index += 1
            else:
                unresolved += 1
                if residue & 1:
                    unresolved_odd += 1
                else:
                    unresolved_even += 1
                representative = residue + modulus
                value = valuation_two(3 * representative + 1)
                bucket = str(value) if value <= 8 else "9+"
                valuations[bucket] += 1
                if len(examples) < 8 and value != 1:
                    examples.append({"residue": residue, "representative": representative, "v2": value})
            base_index = mask.find(b"\x00", base_index + 1)

    if family_index != len(family_residues):
        raise ValueError("some saved M31 family rows were not encountered among M30-uncovered lifts")
    return {
        "base_modulus": base_modulus,
        "m31_modulus": modulus,
        "m30_uncovered_base_classes": base_uncovered,
        "m30_uncovered_even_base_classes": base_uncovered_even,
        "m30_uncovered_odd_base_classes": base_uncovered_odd,
        "m31_residual_classes_examined": examined,
        "m31_saved_family_rows_matched": family_rows_matched,
        "m31_unresolved_classes": unresolved,
        "m31_unresolved_even_classes": unresolved_even,
        "m31_unresolved_odd_classes": unresolved_odd,
        "representative_v2_3n_plus_1_histogram": dict(sorted(valuations.items())),
        "nonunit_v2_examples": examples,
    }


def run(repo: Path, output_dir: Path, protocol_path: Path) -> dict[str, Any]:
    if output_dir.exists() and (not output_dir.is_dir() or any(output_dir.iterdir())):
        raise ValueError("output directory must be new or empty")
    output_dir.mkdir(parents=True, exist_ok=True)
    scripts = str((repo / "scripts").resolve())
    if scripts not in sys.path:
        sys.path.insert(0, scripts)
    from sample_collatz_m31_unresolved_structure import (
        _load_m31_family_residues,
        _load_verified_m31,
        sha256_bytearray,
    )
    import scan_collatz_m31_residual as scanner31

    manifest, validation, scan_path = _load_verified_m31(repo)
    covered, baseline = scanner31._covered_m30(repo)
    if baseline != manifest.get("baseline"):
        raise ValueError("reconstructed M30 binding differs from the M31 package")
    family_residues, odd_family_count = _load_m31_family_residues(scan_path, manifest["candidate_family_count"])
    print("[audit] enumerating all M30-uncovered M31 lifts and matching saved family rows", flush=True)
    result = audit_residual_classes(covered, family_residues)
    expected_search = manifest["search"]
    if result["m31_residual_classes_examined"] != expected_search["residual_classes_examined"]:
        raise ValueError("enumerated M31 residual count differs from the saved scan")
    if result["m31_saved_family_rows_matched"] != manifest["candidate_family_count"]:
        raise ValueError("matched M31 family count differs from the saved scan")
    if result["m31_unresolved_classes"] != expected_search["residual_after_search"]:
        raise ValueError("unresolved class count differs from the saved scan")
    if result["m31_unresolved_classes"] != validation["residual_after_search"]:
        raise ValueError("unresolved class count differs from independent validation")
    if odd_family_count != manifest["candidate_family_count"]:
        raise ValueError("not every saved M31 affine family residue is odd")

    summary = {
        "schema": "mathcase-collatz-m31-residual-initial-valuation-summary-v1",
        "classification": "EXACT_FINITE_RESIDUAL_CLASS_AUDIT",
        "result": result,
        "saved_m31_search_counts": expected_search,
        "all_unresolved_residuals_have_v2_one_for_fixed_representative": result["representative_v2_3n_plus_1_histogram"] == {"1": result["m31_unresolved_classes"]},
        "scope": "Exact finite audit of every class left outside the saved M31 128-step strict-affine screen, using representative r + 2^31. Not a Collatz conjecture proof, Lean/M4 result, or universal trajectory theorem.",
    }
    summary_bytes = (json.dumps(summary, sort_keys=True, indent=2) + "\n").encode("utf-8")
    (output_dir / "summary.json").write_bytes(summary_bytes)
    receipt = {
        "schema": "mathcase-collatz-m31-residual-initial-valuation-manifest-v1",
        "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "status": "PASS_EXACT_FINITE_RESIDUAL_CLASS_AUDIT",
        "protocol_path": PROTOCOL_RELATIVE,
        "protocol_sha256": sha256_file(protocol_path),
        "audit_code_sha256": sha256_file(Path(__file__).resolve()),
        "m31_package_manifest_sha256": sha256_file(repo / "research/collatz/m31-exploratory/package-manifest.json"),
        "m31_validation_sha256": sha256_file(repo / "research/collatz/m31-exploratory/independent-validation.json"),
        "m31_scan_sha256": sha256_file(scan_path),
        "m30_baseline_binding": baseline,
        "m30_coverage_mask_sha256": sha256_bytearray(covered),
        "family_row_count": len(family_residues),
        "family_odd_count": odd_family_count,
        "summary_sha256": hashlib.sha256(summary_bytes).hexdigest(),
        "network_calls": 0,
        "provider_calls": 0,
        "gpu_used": False,
        "lean_compiled": False,
        "axiom_checked": False,
        "global_collatz_proof": False,
    }
    (output_dir / "run-manifest.json").write_text(json.dumps(receipt, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")
    return summary


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--protocol", type=Path, default=None)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    repo = args.repo_root.resolve()
    output = args.output_dir.resolve()
    protocol = args.protocol or repo / PROTOCOL_RELATIVE
    if output.exists() and output.is_dir() and any(output.iterdir()):
        print(json.dumps({"status": "REFUSED", "reason": "output directory is not empty"}), file=sys.stderr)
        return 2
    try:
        summary = run(repo, output, protocol.resolve())
    except Exception as exc:
        output.mkdir(parents=True, exist_ok=True)
        failure_path = output / "failure-receipt.json"
        if not failure_path.exists():
            failure_path.write_text(json.dumps({
                "schema": "mathcase-collatz-m31-residual-initial-valuation-failure-v1",
                "status": "FAIL",
                "error_type": type(exc).__name__,
                "error": str(exc),
                "created_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
                "network_calls": 0,
                "provider_calls": 0,
                "gpu_used": False,
            }, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"status": "FAIL", "error_type": type(exc).__name__, "error": str(exc)}, sort_keys=True), file=sys.stderr)
        return 1
    print(json.dumps({"status": "PASS_EXACT_FINITE_RESIDUAL_CLASS_AUDIT", **summary["result"], "all_v2_one": summary["all_unresolved_residuals_have_v2_one_for_fixed_representative"]}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
