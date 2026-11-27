#!/usr/bin/env python3
"""Cross-check the width-four L=4 marginal against the pinned square-torus receipt."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import sys


REFERENCE_COMMIT = "a3caed11b3cca198439e3d85aae67dd3fa56a55a"
REFERENCE_PATH = "reproduction/ising-square-torus-dos-v1/evidence/density-of-states.json"
REFERENCE_SHA256 = "0cb4edc0a8c30d292ed5f644939f138d5ddfd4e2b0d6bfb14a5dd29181f44528"


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def reference_is_pinned(data: bytes) -> bool:
    return hashlib.sha256(data).hexdigest() == REFERENCE_SHA256


def histograms_match(candidate: list[int], expected: list[int]) -> bool:
    return candidate == expected


def fail(message: str) -> int:
    print(json.dumps({"status": "REJECTED", "reason": message}, sort_keys=True))
    return 1


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--joint-receipt", type=Path, required=True)
    ap.add_argument("--reference", type=Path, required=True)
    ap.add_argument("--output", type=Path, required=True)
    args = ap.parse_args()

    joint_bytes = args.joint_receipt.read_bytes()
    reference_bytes = args.reference.read_bytes()
    reference_hash = hashlib.sha256(reference_bytes).hexdigest()
    if not reference_is_pinned(reference_bytes):
        return fail("REFERENCE_HASH_MISMATCH")
    try:
        joint = json.loads(joint_bytes)
        reference = json.loads(reference_bytes)
    except json.JSONDecodeError:
        return fail("INVALID_JSON")
    if joint.get("status") != "PASS":
        return fail("JOINT_RECEIPT_NOT_PASS")
    row = next((x for x in joint.get("results", []) if x.get("length") == 4), None)
    refrow = next((x for x in reference.get("results", []) if x.get("L") == 4), None)
    if row is None or refrow is None:
        return fail("L4_ROW_MISSING")
    bins = row.get("joint_histogram")
    if not isinstance(bins, list):
        return fail("JOINT_HISTOGRAM_MISSING")
    marginal = [0] * 33
    for entry in bins:
        if not (isinstance(entry, list) and len(entry) == 3):
            return fail("MALFORMED_JOINT_BIN")
        broken, plus, count = entry
        if not (0 <= broken < len(marginal) and 0 <= plus <= 16 and count > 0):
            return fail("OUT_OF_RANGE_JOINT_BIN")
        marginal[broken] += count
    expected = refrow.get("counts_by_broken_bonds")
    if not histograms_match(marginal, expected):
        return fail("L4_BROKEN_BOND_MARGINAL_MISMATCH")
    if sum(marginal) != 65536 or row.get("assignments") != 65536:
        return fail("L4_TOTAL_MISMATCH")

    damaged = list(marginal)
    damaged[0] += 1
    damaged_control_rejected = not histograms_match(damaged, expected)
    altered_reference = bytearray(reference_bytes)
    altered_reference[0] ^= 1
    damaged_reference_control_rejected = not reference_is_pinned(bytes(altered_reference))
    if not damaged_control_rejected or not damaged_reference_control_rejected:
        return fail("DAMAGED_REFERENCE_CONTROL_NOT_REJECTED")

    receipt = {
        "schema": "mathcase-ising-width4-square-slice-crosscheck-v1",
        "status": "PASS",
        "joint_receipt_sha256": hashlib.sha256(joint_bytes).hexdigest(),
        "reference_commit": REFERENCE_COMMIT,
        "reference_path": REFERENCE_PATH,
        "reference_sha256": reference_hash,
        "reference_git_blob": "1097cc53e843436b9ed14d0f9fee848d6a6b7603",
        "matched_length": 4,
        "matched_assignments": 65536,
        "broken_bond_marginal_matches_pinned_receipt": True,
        "damaged_one_bin_control_rejected": damaged_control_rejected,
        "altered_reference_hash_control_rejected": damaged_reference_control_rejected,
        "scope": "A consistency cross-check against the existing public square-torus record; not an independent proof of the general transfer identity.",
        "checker_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": "PASS",
        "reference_sha256": reference_hash,
        "L": 4,
        "assignments": 65536,
        "marginal_match": True,
        "damaged_control_rejected": damaged_control_rejected,
        "altered_reference_hash_control_rejected": damaged_reference_control_rejected,
        "receipt": str(args.output),
    }, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
