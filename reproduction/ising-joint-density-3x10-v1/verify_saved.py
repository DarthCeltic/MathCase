"""Verify the saved Ising joint-table files, receipt hashes, and invariants."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path, PurePosixPath

from joint_density import load_reference, validate_joint


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
EVIDENCE = HERE / "evidence"
REFERENCE = ROOT / "reproduction" / "ising-square-torus-dos-v1" / "evidence" / "density-3x10.json"


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1 << 20), b""):
            digest.update(block)
    return digest.hexdigest()


def verify_manifest() -> None:
    manifest = HERE / "SHA256SUMS"
    listed: dict[str, str] = {}
    for line_number, line in enumerate(manifest.read_text(encoding="utf-8-sig").splitlines(), 1):
        if not line:
            continue
        try:
            expected, relative = line.split("  ", 1)
        except ValueError as exc:
            raise ValueError(f"malformed SHA256SUMS line {line_number}") from exc
        rel = PurePosixPath(relative)
        if rel.is_absolute() or ".." in rel.parts or relative in listed:
            raise ValueError(f"unsafe or duplicate manifest path on line {line_number}")
        target = HERE.joinpath(*rel.parts)
        if not target.is_file() or sha256(target) != expected:
            raise ValueError(f"SHA-256 mismatch: {relative}")
        listed[relative] = expected
    actual = {path.relative_to(HERE).as_posix() for path in HERE.rglob("*")
              if path.is_file() and path.name != "SHA256SUMS" and "__pycache__" not in path.parts}
    if actual != set(listed):
        missing = sorted(actual - set(listed))
        stale = sorted(set(listed) - actual)
        raise ValueError(f"manifest file set mismatch; unlisted={missing}; missing={stale}")


def main() -> int:
    verify_manifest()
    receipt = json.loads((EVIDENCE / "run-receipt.json").read_text(encoding="utf-8"))
    if receipt.get("schema") != "mathcase-ising-joint-density-run-v1" or receipt.get("status") != "PASS":
        raise ValueError("saved run receipt is not a PASS receipt")
    if not all(receipt.get("checks", {}).values()):
        raise ValueError("saved receipt contains a failed check")
    if any(step.get("exit_code") != 0 for step in receipt.get("steps", {}).values()):
        raise ValueError("saved receipt contains a nonzero step exit")

    inputs = receipt["inputs"]
    source_paths = {
        "joint_density.py_sha256": HERE / "joint_density.py",
        "gray_joint_3x10.cpp_sha256": HERE / "gray_joint_3x10.cpp",
        "test_joint_density.py_sha256": HERE / "test_joint_density.py",
        "run_case.py_sha256": HERE / "run_case.py",
    }
    for key, path in source_paths.items():
        if sha256(path) != inputs[key]:
            raise ValueError(f"run input hash mismatch: {key}")
    if sha256(REFERENCE) != inputs["energy_histogram_reference_sha256"]:
        raise ValueError("pinned energy histogram changed")

    py_path = EVIDENCE / "joint-density-3x10.json"
    cpp_path = EVIDENCE / "gray-joint-density-3x10.json"
    if sha256(py_path) != receipt["outputs"]["joint-density-3x10.json_sha256"]:
        raise ValueError("row-transfer table hash mismatch")
    if sha256(cpp_path) != receipt["outputs"]["gray-joint-density-3x10.json_sha256"]:
        raise ValueError("Gray-code table hash mismatch")
    py_record = json.loads(py_path.read_text(encoding="utf-8"))
    cpp_record = json.loads(cpp_path.read_text(encoding="utf-8"))
    if (cpp_record.get("width"), cpp_record.get("height"), cpp_record.get("states")) != (3, 10, 1 << 30):
        raise ValueError("independent table has unexpected dimensions or state total")
    table = py_record["counts_by_broken_bonds_and_up_spins"]
    other = cpp_record["counts_by_broken_bonds_and_up_spins"]
    reference = load_reference(REFERENCE)
    if table != other:
        raise ValueError("independent saved tables differ")
    checks = validate_joint(table, 3, 10, reference)
    if not all(checks.values()):
        raise ValueError(f"saved table invariants fail: {checks}")
    damaged = [row[:] for row in table]
    damaged[4][5] += 1
    if all(validate_joint(damaged, 3, 10, reference).values()):
        raise ValueError("damaged-table control was not rejected")

    steps = receipt["steps"]
    for name, record in steps.items():
        if name == "gray-code-enumeration":
            if sha256(cpp_path) != record["stdout_file_sha256"]:
                raise ValueError("Gray-code enumerator output hash mismatch")
            raw_hash = record.get("raw_stdout_sha256", "")
            if len(raw_hash) != 64 or any(ch not in "0123456789abcdef" for ch in raw_hash):
                raise ValueError("raw Gray-code stdout hash is malformed")
        else:
            stdout_file = EVIDENCE / "run-logs" / f"{name}.stdout.txt"
            if sha256(stdout_file) != record["stdout_sha256"]:
                raise ValueError(f"{name} stdout hash mismatch")
        stderr_file = EVIDENCE / "run-logs" / f"{name}.stderr.txt"
        if name == "gray-code-enumeration":
            stderr_file = EVIDENCE / "run-logs" / "gray-code-run.stderr.txt"
        expected_stderr = record["stderr_sha256"]
        if sha256(stderr_file) != expected_stderr:
            raise ValueError(f"{name} stderr hash mismatch")

    print(json.dumps({
        "status": "PASS",
        "configurations": sum(map(sum, table)),
        "nonzero_joint_bins": sum(value > 0 for row in table for value in row),
        "ground_state_B50_M0_count": table[50][15],
        "saved_receipt_utc": receipt["completed_at_utc"],
        "checks": checks,
        "two_full_tables_equal": True,
        "damaged_control_rejected": True,
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
