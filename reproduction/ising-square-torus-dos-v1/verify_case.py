"""Verify Ising density-of-states receipts and analytic invariants."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def check(record: dict, exact_receipt_sha256: str) -> dict:
    if record.get("schema") != "mathcase-ising-square-torus-dos-v1":
        raise ValueError("Unexpected record schema")
    if [row["L"] for row in record.get("results", [])] != [3, 4, 5]:
        raise ValueError("Expected exactly L=3,4,5")
    for filename, expected_sha in record.get("source_sha256", {}).items():
        if sha256((HERE / filename).read_bytes()) != expected_sha:
            raise ValueError(f"Source hash mismatch: {filename}")
    checks = []
    for row in record["results"]:
        L = row["L"]
        bonds = 2 * L * L
        hist = row["counts_by_broken_bonds"]
        expected_states = 1 << (L * L)
        if (len(hist) != bonds + 1 or sum(hist) != expected_states
                or row.get("total_bonds") != bonds or row.get("configurations") != expected_states):
            raise ValueError(f"L={L}: histogram length or total-state invariant failed")
        if any(count % 2 for count in hist):
            raise ValueError(f"L={L}: a density bin violates global-flip pairing")
        if hist[0] != 2:
            raise ValueError(f"L={L}: all-aligned ferromagnetic positive control failed")
        maximum = bonds if L % 2 == 0 else bonds - 2 * L
        ground = row["ground_state"]
        expected_energy = bonds - 2 * maximum
        if L % 2 == 0 and hist[maximum] != 2:
            raise ValueError(f"L={L}: even-torus ground state should have exactly two global flips")
        if (max(index for index, count in enumerate(hist) if count) != maximum
                or ground.get("broken_bonds") != maximum
                or ground.get("aligned_bonds") != bonds - maximum
                or ground.get("antiferromagnetic_energy") != expected_energy
                or ground.get("degeneracy") != hist[maximum]
                or ground.get("degeneracy", 0) < 2):
            raise ValueError(f"L={L}: ground-energy/frustration invariant failed")
        comparison = row["method_comparison"]
        histogram_digest = sha256(json.dumps(hist, separators=(",", ":")).encode("utf-8"))
        if (not comparison.get("row_transfer_matches_gray_enumeration")
                or comparison.get("gray_exit_code") != 0
                or comparison.get("row_transfer_histogram_sha256") != histogram_digest
                or comparison.get("gray_histogram_sha256") != histogram_digest):
            raise ValueError(f"L={L}: transfer/Gray comparison did not pass")
        if comparison.get("gray_configurations_enumerated") != expected_states:
            raise ValueError(f"L={L}: Gray enumeration configuration count mismatch")

        # A checkerboard configuration attains the even-L optimum. On odd L,
        # its two periodic seams are frustrated and leave exactly 2L aligned bonds.
        checkerboard_broken = 0
        for r in range(L):
            for c in range(L):
                here = (r + c) % 2
                right = (r + (c + 1) % L) % 2
                down = ((r + 1) % L + c) % 2
                checkerboard_broken += here != right
                checkerboard_broken += here != down
        if checkerboard_broken != maximum:
            raise ValueError(f"L={L}: explicit checkerboard ground-state witness failed")
        checks.append({
            "L": L,
            "total_configurations": expected_states,
            "global_flip_pairs": True,
            "two_all_aligned_configurations": True,
            "checkerboard_broken_bonds": checkerboard_broken,
            "odd_torus_frustration": (L % 2 == 1 and ground["aligned_bonds"] == 2 * L) if L % 2 else None,
            "row_transfer_equals_full_gray_enumeration": True,
            "ground_state_degeneracy": ground["degeneracy"],
        })

        tampered = hist.copy()
        tampered[0] += 1
        if sum(tampered) == expected_states:
            raise ValueError(f"L={L}: negative-control corruption was not detected")
    return {
        "schema": "mathcase-ising-square-torus-dos-verification-v1",
        "verified": True,
        "receipt_sha256": exact_receipt_sha256,
        "source_sha256": record["source_sha256"],
        "checks": checks,
        "negative_control": "incrementing the B=0 bin is rejected by the exact total-state check",
        "scope": record["scope"],
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--receipt", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    record = json.loads(args.receipt.read_text(encoding="utf-8"))
    verification = check(record, sha256(args.receipt.read_bytes()))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(verification, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(verification, indent=2))


if __name__ == "__main__":
    main()
