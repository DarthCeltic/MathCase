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
    fresh_replay_path = EVIDENCE / "fresh-public-branch-replay.json"
    fresh_replay = json.loads(fresh_replay_path.read_text(encoding="utf-8"))
    if fresh_replay.get("schema") != "mathcase-ising-fresh-public-branch-replay-v1" or fresh_replay.get("status") != "PASS":
        raise ValueError("fresh public-branch replay receipt is not a PASS")
    if fresh_replay.get("fresh_outputs_match_saved") is not True:
        raise ValueError("fresh public-branch outputs did not match saved tables")
    if fresh_replay.get("source_commit", "") == "" or not fresh_replay.get("checkout_clean_before_and_after"):
        raise ValueError("fresh public-branch replay does not identify a clean source revision")
    expected_fresh_outputs = {
        "joint-density-3x10.json": receipt["outputs"]["joint-density-3x10.json_sha256"],
        "gray-joint-density-3x10.json": receipt["outputs"]["gray-joint-density-3x10.json_sha256"],
    }
    if fresh_replay.get("fresh_output_sha256") != expected_fresh_outputs:
        raise ValueError("fresh public-branch output hashes do not match saved outputs")
    for name, expected_hash in fresh_replay.get("inputs_sha256", {}).items():
        if sha256(HERE / name) != expected_hash:
            raise ValueError(f"fresh public-branch source hash mismatch: {name}")
    if fresh_replay.get("energy_histogram_reference_sha256") != sha256(REFERENCE):
        raise ValueError("fresh public-branch reference histogram hash mismatch")
    if not all(fresh_replay.get("checks", {}).values()):
        raise ValueError("fresh public-branch replay contains a failed check")
    fresh_run_path = EVIDENCE / "fresh-public-branch" / "run-receipt.json"
    if sha256(fresh_run_path) != fresh_replay.get("fresh_run_receipt_sha256"):
        raise ValueError("fresh public-branch runner receipt hash mismatch")
    fresh_run = json.loads(fresh_run_path.read_text(encoding="utf-8"))
    if fresh_run.get("schema") != "mathcase-ising-joint-density-run-v1" or fresh_run.get("status") != "PASS":
        raise ValueError("fresh public-branch runner receipt is not a PASS")
    if fresh_run.get("outputs") != receipt.get("outputs"):
        raise ValueError("fresh runner outputs differ from the saved table hashes")
    if fresh_run.get("states") != (1 << 30) or not all(fresh_run.get("checks", {}).values()):
        raise ValueError("fresh runner receipt has an unexpected state count or failed check")
    for name, step in fresh_run.get("steps", {}).items():
        if step.get("exit_code") != 0:
            raise ValueError(f"fresh runner step did not pass: {name}")
        if name == "gray-code-enumeration":
            stdout_hash = step.get("stdout_file_sha256")
            if stdout_hash != expected_fresh_outputs["gray-joint-density-3x10.json"]:
                raise ValueError("fresh Gray-code output differs from the saved table")
            stderr_path = EVIDENCE / "fresh-public-branch" / "run-logs" / "gray-code-run.stderr.txt"
        else:
            stdout_path = EVIDENCE / "fresh-public-branch" / "run-logs" / f"{name}.stdout.txt"
            if sha256(stdout_path) != step.get("stdout_sha256"):
                raise ValueError(f"fresh runner stdout hash mismatch: {name}")
            stderr_path = EVIDENCE / "fresh-public-branch" / "run-logs" / f"{name}.stderr.txt"
        if sha256(stderr_path) != step.get("stderr_sha256"):
            raise ValueError(f"fresh runner stderr hash mismatch: {name}")
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
        "fresh_public_branch_commit": fresh_replay["source_commit"],
        "fresh_public_replay_elapsed_seconds": fresh_replay["elapsed_seconds"],
        "checks": checks,
        "two_full_tables_equal": True,
        "damaged_control_rejected": True,
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
