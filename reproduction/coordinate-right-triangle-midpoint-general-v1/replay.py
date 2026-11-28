from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import time

ROOT = Path(__file__).resolve().parent
SOURCE_HASHES = {
    "GeometryGeneral.lean": "5c681f34857d51e38e23f8de86aeea29a38eb685c20a5d692d09ff32cf8e0261",
    "Audit.lean": "eb27f11996ff0c5cd2314ad3c34c23efb385e1640bae6d2746ade0b5cb5be03e",
}
LEAN_INPUTS = (*SOURCE_HASHES, "lakefile.toml", "lake-manifest.json", "lean-toolchain")
PACKAGE_INPUTS = (*LEAN_INPUTS, "check_examples.py", "verify_package.py", "replay.py")
EXPECTED_AXIOM_LINE = "'midpoint_perpendicular_equidistant' depends on axioms: [propext, Classical.choice, Quot.sound]"
MATHLIB_REV = "0df444a360eaa60ab8c11dca51a86af692955474"
EXPECTED_TOOLCHAIN = "leanprover/lean4:v4.33.1"


def sha_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha_file(path: Path) -> str:
    return sha_bytes(path.read_bytes())


def load_lock(path: Path) -> tuple[str, dict]:
    raw = path.read_bytes()
    lock = json.loads(raw.decode("utf-8"))
    mathlib = [p for p in lock.get("packages", []) if p.get("name") == "mathlib"]
    if lock.get("name") != "mathcase_general_coordinate_midpoint":
        raise RuntimeError("LAKE_ROOT_PROJECT_NAME_MISMATCH")
    if len(mathlib) != 1 or mathlib[0].get("rev") != MATHLIB_REV:
        raise RuntimeError("MATHLIB_PIN_MISMATCH")
    return sha_bytes(raw), lock


def run_stage(name: str, command_label: str, command: list[str], cwd: Path,
              timeout_s: int, env: dict[str, str], output: Path) -> dict:
    started = time.monotonic()
    try:
        result = subprocess.run(command, cwd=cwd, env=env, stdout=subprocess.PIPE,
                                stderr=subprocess.STDOUT, timeout=timeout_s, check=False)
        data = result.stdout or b""
        exit_code = result.returncode
        timed_out = False
    except subprocess.TimeoutExpired as exc:
        data = exc.stdout or b""
        exit_code = 124
        timed_out = True
    (output / f"{name}.log").write_bytes(data)
    return {
        "name": name,
        "command": command_label,
        "exit_code": exit_code,
        "timed_out": timed_out,
        "elapsed_seconds": round(time.monotonic() - started, 3),
        "timeout_seconds": timeout_s,
        "output_sha256": sha_bytes(data),
    }


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description="Fresh Lean replay for the general coordinate midpoint theorem.")
    parser.add_argument("--output-dir", type=Path, required=True, help="new output directory on a drive with enough space")
    parser.add_argument("--stage-timeout", type=int, default=3600, help="wall-clock cap per stage (default: 3600 seconds)")
    parser.add_argument("--lean", type=Path, help="explicit Lean executable; otherwise resolve lean from PATH")
    args = parser.parse_args(argv)
    if args.stage_timeout < 1:
        parser.error("--stage-timeout must be positive")
    out = args.output_dir.resolve()
    if out.exists():
        parser.error("--output-dir must not already exist")
    out.mkdir(parents=True)
    started_utc = datetime.now(timezone.utc).isoformat()
    record = {
        "schema": "mathcase-general-coordinate-midpoint-public-replay-v1",
        "run_id": out.name,
        "status": "NOT_RUN",
        "claim_scope": "all A, B, C in R^2 with (B-A) dot (C-A)=0; equality of the three squared distances from midpoint(B,C), with degenerate points allowed",
        "stages": [],
        "axioms": [],
        "sorryAx_reported": None,
        "external_model_calls": 0,
        "external_provider_spend_usd": 0,
    }
    try:
        if (ROOT / "lean-toolchain").read_text(encoding="utf-8").strip() != EXPECTED_TOOLCHAIN:
            raise RuntimeError("LEAN_TOOLCHAIN_PIN_MISMATCH")
        for rel, expected in SOURCE_HASHES.items():
            if sha_file(ROOT / rel) != expected:
                raise RuntimeError(f"SOURCE_HASH_MISMATCH:{rel}")
        pinned_lock_sha, _ = load_lock(ROOT / "lake-manifest.json")
        record["package_inputs"] = {rel: sha_file(ROOT / rel) for rel in PACKAGE_INPUTS}
        record["lean_inputs"] = {rel: record["package_inputs"][rel] for rel in LEAN_INPUTS}
        record["pinned_lake_manifest_sha256"] = pinned_lock_sha
        record["lean_toolchain_pin"] = (ROOT / "lean-toolchain").read_text(encoding="utf-8").strip()
        lean = str(args.lean.resolve()) if args.lean else shutil.which("lean")
        if lean and not Path(lean).is_file():
            raise RuntimeError("LEAN_EXECUTABLE_NOT_FOUND")
        lake = shutil.which("lake")
        if not lean or not lake:
            raise RuntimeError("LEAN_OR_LAKE_NOT_FOUND_ON_PATH")
        record["lean_executable_sha256"] = sha_file(Path(lean))
        record["lake_executable_sha256"] = sha_file(Path(lake))
        env = dict(os.environ)
        env["PYTHONIOENCODING"] = "utf-8"
        for name, label, cmd in [
            ("lean-version", "lean --version", [lean, "--version"]),
            ("lake-version", "lake --version", [lake, "--version"]),
        ]:
            stage = run_stage(name, label, cmd, ROOT, args.stage_timeout, env, out)
            record["stages"].append(stage)
            if stage["exit_code"] != 0:
                raise RuntimeError(f"{name.upper()}_FAILED")
        lean_version = (out / "lean-version.log").read_bytes().decode("utf-8", errors="replace").strip()
        lake_version = (out / "lake-version.log").read_bytes().decode("utf-8", errors="replace").strip()
        if "4.33.1" not in lean_version or "4.33.1" not in lake_version:
            raise RuntimeError("TOOLCHAIN_VERSION_MISMATCH")
        record["lean_version"] = lean_version
        record["lake_version"] = lake_version
        project = out / "project"
        project.mkdir()
        for rel in LEAN_INPUTS:
            shutil.copyfile(ROOT / rel, project / rel)
        record["fresh_project_inputs"] = {rel: sha_file(project / rel) for rel in LEAN_INPUTS}
        stage_plan = [
            ("lake-update", "lake update", [lake, "update"]),
            ("mathlib-cache", "lake exe cache get Mathlib.Data.Real.Basic Mathlib.Tactic.Ring",
             [lake, "exe", "cache", "get", "Mathlib.Data.Real.Basic", "Mathlib.Tactic.Ring"]),
        ]
        for name, label, cmd in stage_plan:
            stage = run_stage(name, label, cmd, project, args.stage_timeout, env, out)
            record["stages"].append(stage)
            if stage["exit_code"] != 0:
                raise RuntimeError(f"{name.upper()}_FAILED")
        post_lock_sha, _ = load_lock(project / "lake-manifest.json")
        record["post_update_lake_manifest_sha256"] = post_lock_sha
        if post_lock_sha != pinned_lock_sha:
            raise RuntimeError("LAKE_UPDATE_CHANGED_PINNED_MANIFEST")
        record["manifest_unchanged_after_update"] = True
        for name, label, cmd in [
            ("lean-build", "lake build -Kjobs=1 GeometryGeneral", [lake, "build", "-Kjobs=1", "GeometryGeneral"]),
            ("axiom-audit", "lake env lean Audit.lean", [lake, "env", "lean", "Audit.lean"]),
        ]:
            stage = run_stage(name, label, cmd, project, args.stage_timeout, env, out)
            record["stages"].append(stage)
            if stage["exit_code"] != 0:
                raise RuntimeError(f"{name.upper()}_FAILED")
        olean = project / ".lake" / "build" / "lib" / "lean" / "GeometryGeneral.olean"
        if not olean.is_file():
            raise RuntimeError("THEOREM_OLEAN_MISSING")
        record["theorem_olean_sha256"] = sha_file(olean)
        audit_bytes = (out / "axiom-audit.log").read_bytes()
        audit_text = audit_bytes.decode("utf-8", errors="replace").replace("\r\n", "\n").strip()
        if audit_text != EXPECTED_AXIOM_LINE:
            raise RuntimeError("AXIOM_LIST_MISMATCH")
        if "sorryAx" in audit_text:
            raise RuntimeError("SORRYAX_REPORTED")
        if "sorry" in (ROOT / "GeometryGeneral.lean").read_text(encoding="utf-8") or "native_decide" in (ROOT / "GeometryGeneral.lean").read_text(encoding="utf-8"):
            raise RuntimeError("FORBIDDEN_PROOF_TOKEN")
        record["axioms"] = ["propext", "Classical.choice", "Quot.sound"]
        record["sorryAx_reported"] = False
        record["audit_output_sha256"] = sha_bytes(audit_bytes)
        record["audit_source_sha256"] = SOURCE_HASHES["Audit.lean"]
        record["process_policy"] = {"lake_build_jobs": 1, "stage_timeout_seconds": args.stage_timeout, "operating_system_memory_limit": "none"}
        record["network_policy"] = "Public Lake dependency and Mathlib cache downloads may be required; no model/provider calls."
        record["status"] = "PASS"
    except Exception as exc:
        record["status"] = "FAIL_OR_BLOCKED"
        record["reason"] = str(exc)
    finally:
        record["started_utc"] = started_utc
        record["finished_utc"] = datetime.now(timezone.utc).isoformat()
        record["total_stage_seconds"] = round(sum(s["elapsed_seconds"] for s in record["stages"]), 3)
        (out / "receipt.json").write_text(json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(f"Status: {record['status']}")
    if record.get("reason"):
        print(f"Reason: {record['reason']}")
    print(f"Receipt: {out / 'receipt.json'}")
    return 0 if record["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
