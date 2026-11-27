"""Recompute the exact periodic 3x10 Ising histogram by two methods."""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import tempfile
import time
from pathlib import Path

W, H = 3, 10


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def row_broken(mask: int) -> int:
    return sum(((mask >> col) & 1) != ((mask >> ((col + 1) % W)) & 1)
               for col in range(W))


def transfer_histogram() -> list[int]:
    states = 1 << W
    bonds = 2 * W * H
    horizontal = [row_broken(row) for row in range(states)]
    histogram = [0] * (bonds + 1)
    for first in range(states):
        current = [[0] * (bonds + 1) for _ in range(states)]
        current[first][horizontal[first]] = 1
        for _ in range(1, H):
            following = [[0] * (bonds + 1) for _ in range(states)]
            for previous, row_counts in enumerate(current):
                for broken, ways in enumerate(row_counts):
                    if not ways:
                        continue
                    for row in range(states):
                        added = horizontal[row] + (previous ^ row).bit_count()
                        following[row][broken + added] += ways
            current = following
        for last, row_counts in enumerate(current):
            closing = (last ^ first).bit_count()
            for broken, ways in enumerate(row_counts):
                if ways:
                    histogram[broken + closing] += ways
    return histogram


def valid(histogram: list[int]) -> bool:
    return (len(histogram) == 61
            and all(type(count) is int and count >= 0 for count in histogram)
            and sum(histogram) == 1 << 30
            and histogram[0] == 2 and histogram[50] == 6
            and all(histogram[index] == 0 for index in range(1, 61, 2)))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cxx", required=True, help="path to g++ or clang++")
    parser.add_argument("--timeout-seconds", type=int, default=90)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    here = Path(__file__).resolve().parent
    cpp_source = here / "gray_3x10.cpp"
    transfer_source = Path(__file__)
    compiler = subprocess.run([args.cxx, "--version"], check=True, capture_output=True,
                              text=True).stdout.splitlines()[0]
    with tempfile.TemporaryDirectory(prefix="mathcase-ising-3x10-") as temp_dir:
        binary = Path(temp_dir) / ("gray_3x10.exe" if Path(args.cxx).suffix.lower() == ".exe"
                                   else "gray_3x10")
        build_start = time.perf_counter()
        built = subprocess.run([args.cxx, "-O3", "-DNDEBUG", "-std=c++20",
                                str(cpp_source), "-o", str(binary)],
                               capture_output=True, text=True, timeout=60)
        build_seconds = time.perf_counter() - build_start
        if built.returncode:
            raise RuntimeError(f"C++ compilation failed: {built.stderr}")
        gray_start = time.perf_counter()
        process = subprocess.run([str(binary)], capture_output=True, text=True,
                                  timeout=args.timeout_seconds)
        gray_seconds = time.perf_counter() - gray_start
        if process.returncode:
            raise RuntimeError(f"Gray enumeration failed: {process.stderr}")

    gray = json.loads(process.stdout)
    transfer_start = time.perf_counter()
    row_counts = transfer_histogram()
    transfer_seconds = time.perf_counter() - transfer_start
    gray_counts = gray["counts_by_broken_bonds"]
    histograms_match = row_counts == gray_counts
    damaged = gray_counts.copy()
    damaged[2] += 1
    damaged[4] -= 1
    checks = {
        "two_independent_methods_agree_binwise": histograms_match,
        "all_2_pow_30_assignments_counted": sum(row_counts) == (1 << 30),
        "two_uniform_assignments_at_zero_broken_bonds": row_counts[0] == 2,
        "only_even_broken_bond_bins_are_nonzero": all(
            row_counts[index] == 0 for index in range(1, 61, 2)),
        "ground_bin_is_six_at_50_broken_bonds": row_counts[50] == 6,
        "damaged_histogram_control_rejected": not (valid(damaged) and damaged == row_counts),
    }
    result = {
        "schema": "mathcase-ising-3x10-density-of-states-v1",
        "verified": all(checks.values()) and valid(row_counts) and valid(gray_counts),
        "model": {
            "lattice": "periodic 3x10 square-lattice torus",
            "spins": 30,
            "configurations": 1 << 30,
            "bonds": 60,
            "energy_convention": "E = aligned bonds - broken bonds = 60 - 2B",
            "observable": "exact labelled-state count by broken-bond count B=0..60",
        },
        "methods": {
            "row_transfer": {
                "description": "exact row-stack dynamic program conditioned on the first 3-spin row, then periodic closure",
                "source_sha256": sha256(transfer_source),
                "elapsed_seconds": round(transfer_seconds, 6),
            },
            "gray_code": {
                "description": "full binary-reflected Gray enumeration; update the four bonds incident to the flipped site",
                "source_sha256": sha256(cpp_source),
                "compiler": compiler,
                "flags": ["-O3", "-DNDEBUG", "-std=c++20"],
                "compile_seconds": round(build_seconds, 6),
                "enumeration_seconds": round(gray_seconds, 6),
            },
        },
        "counts_by_broken_bonds": row_counts,
        "gray_counts_by_broken_bonds": gray_counts,
        "nonzero_bins": sum(count != 0 for count in row_counts),
        "ground_state": {
            "maximum_broken_bonds": 50,
            "minimum_energy": -40,
            "labelled_degeneracy": row_counts[50],
            "reason": "Each of ten odd-width row cycles forces an aligned bond, so at least ten of the sixty bonds are aligned; the rectangular odd-width formula gives six labelled minimizers.",
        },
        "checks": checks,
        "expectation_correction": "An earlier checker incorrectly expected the ground bin at B=60. The parity lower bound on aligned bonds places it at B=50; this corrected run checks that bin and reports six states.",
        "claim_boundary": "Exact finite computation and software cross-check; finite Ising density-of-states methods are established prior work. No novelty or priority claim.",
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"verified": result["verified"], "states": sum(row_counts),
                      "bins": len(row_counts), "nonzero_bins": result["nonzero_bins"],
                      "ground_degeneracy": row_counts[50], "checks": checks}, indent=2))
    return 0 if result["verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
