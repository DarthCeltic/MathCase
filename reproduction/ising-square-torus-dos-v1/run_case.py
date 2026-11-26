"""Run exact row-transfer and Gray-code Ising density-of-states checks."""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
TRANSFER_SOURCE = HERE / "transfer_matrix.py"
GRAY_SOURCE = HERE / "enumerate_gray.cpp"
VERIFY_SOURCE = HERE / "verify_case.py"
ODD_GROUND_SOURCE = HERE / "verify_odd_ground_formula.py"
RECTANGLE_GROUND_SOURCE = HERE / "verify_rectangular_ground_states.py"
TRANSFER_SPEC = importlib.util.spec_from_file_location("ising_transfer", TRANSFER_SOURCE)
TRANSFER = importlib.util.module_from_spec(TRANSFER_SPEC)
assert TRANSFER_SPEC.loader is not None
TRANSFER_SPEC.loader.exec_module(TRANSFER)


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_sha(path: Path) -> str:
    return sha256(path.read_bytes())


def run_case(cxx: Path, output_dir: Path) -> tuple[dict, dict]:
    cxx = cxx.resolve(strict=True)
    cxx_version_result = subprocess.run([str(cxx), "--version"], capture_output=True,
                                        text=True, encoding="utf-8", errors="replace", check=True)
    cxx_version = cxx_version_result.stdout.splitlines()[0].strip()
    output_dir.parent.mkdir(parents=True, exist_ok=True)
    output_dir.mkdir(exist_ok=False)
    with tempfile.TemporaryDirectory(prefix="ising-dos-", dir=output_dir) as tmp:
        tmpdir = Path(tmp)
        binary = tmpdir / ("enumerate_gray.exe" if os.name == "nt" else "enumerate_gray")
        compile_started = time.perf_counter()
        compile_result = subprocess.run(
            [str(cxx), "-O3", "-DNDEBUG", "-std=c++20", str(GRAY_SOURCE), "-o", str(binary)],
            cwd=ROOT, capture_output=True, text=True, encoding="utf-8", errors="replace", check=False)
        compile_seconds = round(time.perf_counter() - compile_started, 3)
        if compile_result.returncode != 0:
            raise SystemExit("C++20 Gray-code compile failed:\n" + compile_result.stderr)

        results = []
        for width in (3, 4, 5):
            transfer_started = time.perf_counter()
            transfer_hist = TRANSFER.density_of_states(width)
            transfer_seconds = round(time.perf_counter() - transfer_started, 3)
            gray_started = time.perf_counter()
            gray_process = subprocess.run([str(binary), str(width)], cwd=ROOT, capture_output=True,
                                          text=True, encoding="utf-8", errors="replace", check=False)
            gray_seconds = round(time.perf_counter() - gray_started, 3)
            if gray_process.returncode != 0:
                raise SystemExit(f"Gray enumeration failed for L={width}: {gray_process.stderr}")
            gray_result = json.loads(gray_process.stdout)
            if (gray_result.get("L") != width
                    or gray_result.get("configurations") != 1 << (width * width)
                    or gray_result.get("total_bonds") != 2 * width * width):
                raise SystemExit(f"Gray enumerator metadata mismatch for L={width}")
            if gray_result["counts_by_broken_bonds"] != transfer_hist:
                raise SystemExit(f"Transfer and Gray-code histograms differ for L={width}")
            histogram_digest = sha256(json.dumps(transfer_hist, separators=(",", ":")).encode("utf-8"))
            total_bonds = 2 * width * width
            max_broken = total_bonds if width % 2 == 0 else total_bonds - 2 * width
            rows = []
            for broken, count in enumerate(transfer_hist):
                if count:
                    rows.append({
                        "broken_bonds": broken,
                        "aligned_bonds": total_bonds - broken,
                        "antiferromagnetic_energy": total_bonds - 2 * broken,
                        "degeneracy": count,
                    })
            results.append({
                "L": width,
                "sites": width * width,
                "total_bonds": total_bonds,
                "configurations": 1 << (width * width),
                "counts_by_broken_bonds": transfer_hist,
                "nonzero_energy_rows": rows,
                "ground_state": {
                    "broken_bonds": max_broken,
                    "aligned_bonds": total_bonds - max_broken,
                    "antiferromagnetic_energy": total_bonds - 2 * max_broken,
                    "degeneracy": transfer_hist[max_broken],
                },
                "method_comparison": {
                    "gray_exit_code": gray_process.returncode,
                    "row_transfer_matches_gray_enumeration": True,
                    "row_transfer_histogram_sha256": histogram_digest,
                    "gray_histogram_sha256": sha256(json.dumps(
                        gray_result["counts_by_broken_bonds"], separators=(",", ":")).encode("utf-8")),
                    "gray_configurations_enumerated": gray_result["configurations"],
                    "row_transfer_seconds": transfer_seconds,
                    "gray_enumeration_seconds": gray_seconds,
                },
            })

        record = {
            "schema": "mathcase-ising-square-torus-dos-v1",
            "model": {
                "lattice": "periodic L x L square torus; L >= 3",
                "spins": "sigma(r,c) in {-1,+1}",
                "hamiltonian": "H = sum over each nearest-neighbor edge once of sigma_i * sigma_j (zero-field antiferromagnet, coupling magnitude 1)",
                "edge_count": "2*L^2, with horizontal and vertical wrap edges each counted once",
                "energy_relation": "H = aligned_bonds - broken_bonds = 2*L^2 - 2*broken_bonds",
            },
            "source_sha256": {
                "transfer_matrix.py": file_sha(TRANSFER_SOURCE),
                "enumerate_gray.cpp": file_sha(GRAY_SOURCE),
                "run_case.py": file_sha(Path(__file__).resolve()),
                "verify_case.py": file_sha(VERIFY_SOURCE),
                "verify_odd_ground_formula.py": file_sha(ODD_GROUND_SOURCE),
                "verify_rectangular_ground_states.py": file_sha(RECTANGLE_GROUND_SOURCE),
            },
            "tools": {
                "cxx_version": cxx_version,
                "cxx_binary_sha256": file_sha(cxx),
                "compile_flags": ["-O3", "-DNDEBUG", "-std=c++20"],
                "compiler_exit_code": compile_result.returncode,
                "compiler_stderr_sha256": sha256(compile_result.stderr.encode("utf-8")),
                "compiler_seconds": compile_seconds,
                "python_version": __import__("sys").version.split()[0],
            },
            "results": results,
            "scope": "Exact finite density of states for L=3,4,5 only; no thermodynamic-limit computation or new physics claim.",
        }
        result_path = output_dir / "density-of-states.json"
        result_path.write_text(json.dumps(record, indent=2) + "\n", encoding="utf-8")
        verifier = subprocess.run(
            [__import__("sys").executable, "-B", str(VERIFY_SOURCE), "--receipt", str(result_path),
             "--output", str(output_dir / "verification.json")],
            cwd=ROOT, capture_output=True, text=True, encoding="utf-8", errors="replace", check=False)
        if verifier.returncode != 0:
            raise SystemExit("Receipt verification failed:\n" + verifier.stdout + verifier.stderr)
        verification = json.loads((output_dir / "verification.json").read_text(encoding="utf-8"))
    return record, verification


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    detected_cxx = shutil.which("g++") or shutil.which("clang++")
    parser.add_argument("--cxx", type=Path, default=Path(detected_cxx) if detected_cxx else None,
                        help="C++20 compiler (defaults to g++ or clang++ on PATH)")
    parser.add_argument("--output-dir", type=Path, required=True,
                        help="new directory for compact DOS and verification JSON receipts")
    args = parser.parse_args()
    if args.cxx is None:
        parser.error("no g++/clang++ compiler found; pass --cxx")
    record, verification = run_case(args.cxx, args.output_dir)
    print(json.dumps({
        "schema": record["schema"],
        "verified": verification["verified"],
        "by_size": [{"L": row["L"], "configurations": row["configurations"],
                     "ground_state": row["ground_state"],
                     "row_transfer_matches_gray_enumeration": row["method_comparison"]["row_transfer_matches_gray_enumeration"]}
                    for row in record["results"]],
    }, indent=2))


if __name__ == "__main__":
    main()
