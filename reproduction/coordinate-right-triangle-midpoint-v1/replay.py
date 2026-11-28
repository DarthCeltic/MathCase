from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parent
SOURCE_HASHES = {
    "GeometryMidpoint.lean": "831db7bfe3ec643eea8ae02e129d87e926bbdc51186566c9dae46d3842e69dcf",
    "Audit.lean": "ce304794c34dba1d6e76617e3a20a4e7fe28448643d9878049e31ac8923f248e",
}
EXPECTED_AXIOLOGY = "'right_triangle_hypotenuse_midpoint_equidistant' depends on axioms: [propext, Classical.choice, Quot.sound]"
INPUTS = (*SOURCE_HASHES, "lakefile.toml", "lake-manifest.json", "lean-toolchain")


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def load_lock(path: Path) -> tuple[str, dict]:
    raw = path.read_bytes()
    lock = json.loads(raw.decode("utf-8"))
    mathlib = [p for p in lock.get("packages", []) if p.get("name") == "mathlib"]
    if len(mathlib) != 1 or mathlib[0].get("rev") != "0df444a360eaa60ab8c11dca51a86af692955474":
        raise RuntimeError("MATHLIB_PIN_MISMATCH")
    return sha(raw), lock


def write_receipt(path: Path, receipt: dict) -> None:
    path.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def run_stage(name: str, command: list[str], cwd: Path, timeout_s: int, env: dict, output: Path) -> dict:
    started = time.monotonic()
    record = {"name": name, "command": command, "timeout_seconds": timeout_s}
    try:
        result = subprocess.run(command, cwd=cwd, env=env, stdout=subprocess.PIPE,
                                stderr=subprocess.STDOUT, timeout=timeout_s, check=False)
        output_bytes = result.stdout or b""
        record["exit_code"] = result.returncode
    except subprocess.TimeoutExpired as exc:
        output_bytes = exc.stdout or b""
        record["exit_code"] = 124
        record["timed_out"] = True
    elapsed = time.monotonic() - started
    (output / f"{name}.log").write_bytes(output_bytes)
    record["elapsed_seconds"] = round(elapsed, 3)
    record["output_sha256"] = sha(output_bytes)
    return record


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description="Fresh source replay for the normalized right-triangle midpoint identity.")
    parser.add_argument("--output-dir", type=Path, help="new directory for this run; default is a system temporary directory")
    parser.add_argument("--stage-timeout", type=int, default=3600, help="wall-clock cap per setup/build/audit stage (default: 3600 seconds)")
    parser.add_argument("--lean", type=Path, help="explicit Lean executable; otherwise resolve lean from PATH")
    args = parser.parse_args(argv)
    if args.stage_timeout < 1:
        parser.error("--stage-timeout must be positive")

    receipt = {
        "schema": "mathcase-coordinate-midpoint-public-replay-v1",
        "started_utc": datetime.now(timezone.utc).isoformat(),
        "status": "NOT_RUN",
        "claim_scope": "normalized axis-aligned right triangle A=(0,0), B=(a,0), C=(0,b), a>0, b>0",
        "external_model_calls": 0,
        "stages": [],
        "axioms": [],
        "sorryAx_reported": None,
    }
    run_root = None
    try:
        if args.output_dir:
            run_root = args.output_dir.resolve()
            run_root.mkdir(parents=True, exist_ok=False)
        else:
            run_root = Path(tempfile.mkdtemp(prefix="mathcase-midpoint-"))
        for name, expected in SOURCE_HASHES.items():
            actual = sha((ROOT / name).read_bytes())
            if actual != expected:
                raise RuntimeError(f"SOURCE_HASH_MISMATCH:{name}:{actual}")
        pinned_lock_sha, _ = load_lock(ROOT / "lake-manifest.json")
        receipt["package_inputs"] = {name: sha((ROOT / name).read_bytes()) for name in INPUTS}
        receipt["pinned_lake_manifest_sha256"] = pinned_lock_sha
        receipt["lean_toolchain_pin"] = (ROOT / "lean-toolchain").read_text(encoding="utf-8").strip()

        lean_path = str(args.lean.resolve()) if args.lean else shutil.which("lean")
        if lean_path and not Path(lean_path).is_file():
            raise RuntimeError("LEAN_EXECUTABLE_NOT_FOUND")
        lake_path = shutil.which("lake")
        if not lean_path or not lake_path:
            raise RuntimeError("LEAN_OR_LAKE_NOT_FOUND_ON_PATH")
        env = dict(os.environ)
        env["PYTHONIOENCODING"] = "utf-8"
        lean_version = run_stage("lean-version", [lean_path, "--version"], ROOT, args.stage_timeout, env, run_root)
        lake_version = run_stage("lake-version", [lake_path, "--version"], ROOT, args.stage_timeout, env, run_root)
        receipt["stages"].extend([lean_version, lake_version])
        if lean_version["exit_code"] != 0 or b"4.33.1" not in (run_root / "lean-version.log").read_bytes():
            raise RuntimeError("LEAN_VERSION_MISMATCH")
        if lake_version["exit_code"] != 0:
            raise RuntimeError("LAKE_VERSION_COMMAND_FAILED")

        project = run_root / "project"
        project.mkdir()
        for name in INPUTS:
            shutil.copyfile(ROOT / name, project / name)
        for name, expected in SOURCE_HASHES.items():
            if sha((project / name).read_bytes()) != expected:
                raise RuntimeError(f"FRESH_COPY_HASH_MISMATCH:{name}")
        (project / ".lake").mkdir()
        receipt["fresh_project_source_hashes"] = {name: sha((project / name).read_bytes()) for name in SOURCE_HASHES}
        receipt["network_policy"] = "public Lake dependency and cache downloads are required on first run; no model/provider calls"
        receipt["resource_policy"] = "one Lake build job; no operating-system memory limit is imposed by this script"

        stages = [
            ("lake-update", [lake_path, "update"]),
            ("mathlib-cache", [lake_path, "exe", "cache", "get", "Mathlib.Data.Real.Basic", "Mathlib.Tactic.Ring"]),
        ]
        for name, command in stages:
            record = run_stage(name, command, project, args.stage_timeout, env, run_root)
            receipt["stages"].append(record)
            if record["exit_code"] != 0:
                raise RuntimeError(f"{name.upper()}_FAILED")
        current_lock_sha, _ = load_lock(project / "lake-manifest.json")
        receipt["post_update_lake_manifest_sha256"] = current_lock_sha
        if current_lock_sha != pinned_lock_sha:
            raise RuntimeError("LAKE_UPDATE_CHANGED_PINNED_MANIFEST")

        build = run_stage("lean-build", [lake_path, "build", "-Kjobs=1", "GeometryMidpoint"], project, args.stage_timeout, env, run_root)
        receipt["stages"].append(build)
        if build["exit_code"] != 0:
            raise RuntimeError("LEAN_BUILD_FAILED")
        theorem_olean = project / ".lake" / "build" / "lib" / "lean" / "GeometryMidpoint.olean"
        if not theorem_olean.is_file():
            raise RuntimeError("THEOREM_OLEAN_MISSING")
        receipt["theorem_olean_sha256"] = sha(theorem_olean.read_bytes())

        audit = run_stage("axiom-audit", [lake_path, "env", "lean", "Audit.lean"], project, args.stage_timeout, env, run_root)
        receipt["stages"].append(audit)
        audit_bytes = (run_root / "axiom-audit.log").read_bytes()
        audit_text = audit_bytes.decode("utf-8", errors="replace").replace("\r\n", "\n").strip()
        if audit["exit_code"] != 0:
            raise RuntimeError("AXIOM_AUDIT_COMMAND_FAILED")
        if EXPECTED_AXIOLOGY not in audit_text:
            raise RuntimeError("AXIOM_LIST_MISMATCH")
        if "sorryAx" in audit_text:
            raise RuntimeError("SORRYAX_REPORTED")
        receipt["axioms"] = ["propext", "Classical.choice", "Quot.sound"]
        receipt["sorryAx_reported"] = False
        receipt["audit_stdout_sha256"] = sha(audit_bytes)
        receipt["audit_source_sha256"] = SOURCE_HASHES["Audit.lean"]
        receipt["status"] = "PASS"
        return_code = 0
    except Exception as exc:
        receipt["status"] = "FAIL_OR_BLOCKED"
        receipt["reason"] = str(exc)
        return_code = 1
    finally:
        receipt["finished_utc"] = datetime.now(timezone.utc).isoformat()
        if run_root is not None:
            receipt_path = run_root / "receipt.json"
            write_receipt(receipt_path, receipt)
            print(f"Status: {receipt['status']}")
            if receipt.get("reason"):
                print(f"Reason: {receipt['reason']}", file=sys.stderr)
            print(f"Receipt: {receipt_path}")
        else:
            print(json.dumps(receipt, indent=2, sort_keys=True))
    return return_code


if __name__ == "__main__":
    raise SystemExit(main())
