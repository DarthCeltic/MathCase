"""Rebuild and cross-check the exact 3x10 joint Ising count table."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
import platform
import subprocess
import sys
import tempfile
import time
from pathlib import Path

from joint_density import load_reference, validate_joint


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
REFERENCE = ROOT / "reproduction" / "ising-square-torus-dos-v1" / "evidence" / "density-3x10.json"


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1 << 20), b""):
            digest.update(block)
    return digest.hexdigest()


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cxx", default="g++", help="C++20 compiler (default: g++)")
    parser.add_argument("--output-dir", type=Path, required=True,
                        help="new or empty directory on a scratch volume")
    args = parser.parse_args()
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=True)
    expected_outputs = ["joint-density-3x10.json", "gray-joint-density-3x10.json",
                        "run-receipt.json", "run-logs"]
    if any((out / name).exists() for name in expected_outputs):
        raise SystemExit("refusing to overwrite an existing run; choose a fresh output directory")

    started = time.perf_counter()
    stage = "preflight"
    steps: dict[str, dict[str, object]] = {}
    logs = out / "run-logs"
    logs.mkdir()
    py_table_path = out / "joint-density-3x10.json"
    cpp_table_path = out / "gray-joint-density-3x10.json"
    receipt_path = out / "run-receipt.json"
    compiler_version = ""

    def record_process(name: str, command_label: list[str], proc: subprocess.CompletedProcess[str],
                       elapsed: float) -> None:
        (logs / f"{name}.stdout.txt").write_bytes((proc.stdout or "").encode("utf-8"))
        (logs / f"{name}.stderr.txt").write_bytes((proc.stderr or "").encode("utf-8"))
        steps[name] = {
            "command": command_label,
            "exit_code": proc.returncode,
            "elapsed_seconds": round(elapsed, 6),
            "stdout_sha256": sha256(logs / f"{name}.stdout.txt"),
            "stderr_sha256": sha256(logs / f"{name}.stderr.txt"),
        }

    try:
        if not REFERENCE.is_file():
            raise FileNotFoundError("pinned public energy histogram missing")
        stage = "compiler-version"
        version_start = time.perf_counter()
        version_proc = subprocess.run([args.cxx, "--version"], cwd=HERE, capture_output=True,
                                      text=True, timeout=15, check=False)
        version_elapsed = time.perf_counter() - version_start
        if version_proc.returncode != 0 or not version_proc.stdout.strip():
            raise RuntimeError("C++ compiler version check failed")
        compiler_version = version_proc.stdout.splitlines()[0]
        version_summary = subprocess.CompletedProcess(
            version_proc.args, version_proc.returncode, compiler_version + "\n", version_proc.stderr)
        record_process("compiler-version", [args.cxx, "--version"], version_summary,
                       version_elapsed)

        stage = "focused-tests"
        test_cmd = [sys.executable, "-B", "-m", "unittest", "-v", "test_joint_density.py"]
        test_start = time.perf_counter()
        test_proc = subprocess.run(test_cmd, cwd=HERE, capture_output=True, text=True,
                                   timeout=60, check=False)
        record_process("focused-tests", ["python", "-B", "-m", "unittest", "-v",
                                         "test_joint_density.py"], test_proc,
                       time.perf_counter() - test_start)
        if test_proc.returncode != 0:
            raise RuntimeError("focused tests failed")

        stage = "python-transfer"
        python_cmd = [sys.executable, "-B", "joint_density.py", "--width", "3", "--height",
                      "10", "--reference", str(REFERENCE), "--output", str(py_table_path)]
        transfer_start = time.perf_counter()
        transfer_proc = subprocess.run(python_cmd, cwd=HERE, capture_output=True, text=True,
                                       timeout=120, check=False)
        record_process("python-transfer", ["python", "-B", "joint_density.py", "--width", "3",
                                            "--height", "10", "--reference",
                                            "reproduction/ising-square-torus-dos-v1/evidence/density-3x10.json",
                                            "--output", "joint-density-3x10.json"],
                       transfer_proc, time.perf_counter() - transfer_start)
        if transfer_proc.returncode != 0:
            raise RuntimeError("Python row-transfer calculation failed")

        stage = "gray-code-build-and-enumeration"
        build_start = time.perf_counter()
        with tempfile.TemporaryDirectory(prefix="ising-joint-build-", dir=out) as build_dir:
            binary = Path(build_dir) / ("gray_joint_3x10.exe" if os.name == "nt"
                                        else "gray_joint_3x10")
            build = subprocess.run([args.cxx, "-O3", "-DNDEBUG", "-std=c++20",
                                    str(HERE / "gray_joint_3x10.cpp"), "-o", str(binary)],
                                   cwd=HERE, capture_output=True, text=True, timeout=90,
                                   check=False)
            build_elapsed = time.perf_counter() - build_start
            record_process("gray-code-build", [args.cxx, "-O3", "-DNDEBUG", "-std=c++20",
                                                "gray_joint_3x10.cpp", "-o", "temporary binary"],
                           build, build_elapsed)
            if build.returncode != 0:
                raise RuntimeError("C++ Gray-code enumerator did not compile")
            executable_hash = sha256(binary)
            enum_start = time.perf_counter()
            raw_stdout_path = Path(build_dir) / "gray-joint.stdout.raw"
            with raw_stdout_path.open("wb") as destination:
                run = subprocess.run([str(binary)], cwd=HERE, stdout=destination,
                                     stderr=subprocess.PIPE, timeout=120, check=False)
            enum_elapsed = time.perf_counter() - enum_start
            raw_stdout = raw_stdout_path.read_bytes()
            line_ending_normalization = "CRLF-to-LF" if b"\r\n" in raw_stdout else "none"
            canonical_stdout = raw_stdout.replace(b"\r\n", b"\n")
            if b"\r" in canonical_stdout:
                raise RuntimeError("unexpected carriage return in C++ JSON output")
            cpp_table_path.write_bytes(canonical_stdout)
            stderr = run.stderr or b""
            (logs / "gray-code-run.stderr.txt").write_bytes(stderr)
            steps["gray-code-enumeration"] = {
                "command": ["temporary gray_joint_3x10 executable"],
                "exit_code": run.returncode,
                "elapsed_seconds": round(enum_elapsed, 6),
                "stdout_file_sha256": sha256(cpp_table_path),
                "raw_stdout_sha256": sha256_bytes(raw_stdout),
                "line_ending_normalization": line_ending_normalization,
                "stderr_sha256": sha256(logs / "gray-code-run.stderr.txt"),
            }
            if run.returncode != 0:
                raise RuntimeError("C++ Gray-code enumerator failed")

        stage = "independent-comparison"
        python_record = json.loads(py_table_path.read_text(encoding="utf-8"))
        cpp_record = json.loads(cpp_table_path.read_text(encoding="utf-8"))
        reference = load_reference(REFERENCE)
        py_table = python_record["counts_by_broken_bonds_and_up_spins"]
        cpp_table = cpp_record.get("counts_by_broken_bonds_and_up_spins")
        checks: dict[str, bool] = {
            "python_transfer_internal_checks": python_record.get("verified") is True,
            "gray_output_schema_matches": cpp_record.get("schema") == python_record.get("schema"),
            "gray_dimensions_and_state_total_match": (
                cpp_record.get("width") == 3 and cpp_record.get("height") == 10
                and cpp_record.get("states") == (1 << 30)),
            "independent_full_2_pow_30_joint_tables_match": cpp_table == py_table,
            "python_table_checks": all(validate_joint(py_table, 3, 10, reference).values()),
            "gray_table_checks": isinstance(cpp_table, list)
                                  and all(validate_joint(cpp_table, 3, 10, reference).values()),
        }
        damaged = [row[:] for row in py_table]
        damaged[4][5] += 1
        checks["damaged_joint_table_is_rejected"] = not all(
            validate_joint(damaged, 3, 10, reference).values())
        if not all(checks.values()):
            raise RuntimeError("independent comparison or invariant check failed")

        stage = "complete"
        receipt = {
            "schema": "mathcase-ising-joint-density-run-v1",
            "status": "PASS",
            "completed_at_utc": datetime.now(timezone.utc).isoformat(timespec="seconds"),
            "model": "periodic 3x10 square-lattice Ising torus, zero-field state enumeration",
            "states": 1 << 30,
            "checks": checks,
            "toolchain": {"python": platform.python_version(), "cxx": compiler_version,
                          "cxx_standard": "C++20"},
            "inputs": {
                "joint_density.py_sha256": sha256(HERE / "joint_density.py"),
                "gray_joint_3x10.cpp_sha256": sha256(HERE / "gray_joint_3x10.cpp"),
                "test_joint_density.py_sha256": sha256(HERE / "test_joint_density.py"),
                "run_case.py_sha256": sha256(HERE / "run_case.py"),
                "energy_histogram_reference_sha256": sha256(REFERENCE),
            },
            "outputs": {
                "joint-density-3x10.json_sha256": sha256(py_table_path),
                "gray-joint-density-3x10.json_sha256": sha256(cpp_table_path),
            },
            "temporary_gray_executable_sha256": executable_hash,
            "steps": steps,
            "elapsed_seconds": round(time.perf_counter() - started, 6),
            "claim_boundary": "Exact finite computation for this 3x10 periodic lattice. It is not a new Ising result, a thermodynamic-limit claim, a Lean proof, or an independent review.",
        }
        receipt_path.write_bytes((json.dumps(receipt, indent=2) + "\n").encode("utf-8"))
        print(json.dumps({"status": receipt["status"], "states": receipt["states"],
                          "checks": checks, "elapsed_seconds": receipt["elapsed_seconds"]},
                         indent=2))
        return 0
    except Exception as exc:
        failure = {
            "schema": "mathcase-ising-joint-density-run-v1",
            "status": "FAIL",
            "stage": stage,
            "error_type": type(exc).__name__,
            "error": str(exc),
            "completed_steps": steps,
            "elapsed_seconds": round(time.perf_counter() - started, 6),
        }
        receipt_path.write_bytes((json.dumps(failure, indent=2) + "\n").encode("utf-8"))
        print(json.dumps(failure, indent=2), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
