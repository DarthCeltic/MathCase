#!/usr/bin/env python3
"""Bounded, offline replay of the pinned 229-shard Collatz source set."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

ROOT = Path(__file__).resolve().parents[1]
PROJECT = ROOT / "project"
SOURCE_ROOT = (ROOT / "sources" / "repository").resolve()
REPLAY = ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay"
SOURCE_MANIFEST = REPLAY / "manifest.tsv"
SHARD_RECEIPTS = REPLAY / "shard-receipts.jsonl"
RUN_MANIFEST = REPLAY / "manifest.json"
EXPECTED_MATHLIB_COMMIT = "0df444a360eaa60ab8c11dca51a86af692955474"


class PreflightError(RuntimeError):
    pass


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def write_event(path: Path, event: dict) -> None:
    payload = (json.dumps(event, ensure_ascii=False, sort_keys=True) + "\n").encode("utf-8")
    with path.open("ab") as stream:
        stream.write(payload)
        stream.flush()
        os.fsync(stream.fileno())


def load_project_pins(project: Path) -> tuple[str, dict, list[dict]]:
    toolchain_path = project / "lean-toolchain"
    lake_manifest_path = project / "lake-manifest.json"
    for name in ("lean-toolchain", "lakefile.toml", "lake-manifest.json"):
        staged = PROJECT / name
        supplied = project / name
        if not supplied.is_file() or sha256_file(supplied) != sha256_file(staged):
            raise PreflightError(f"Project metadata differs from the staged pin: {name}")
    run_manifest = json.loads(RUN_MANIFEST.read_text(encoding="utf-8"))
    lake_manifest = json.loads(lake_manifest_path.read_text(encoding="utf-8"))
    recorded = run_manifest["toolchain"]
    toolchain = toolchain_path.read_text(encoding="utf-8").strip()
    expected_toolchain = "leanprover/lean4:v" + recorded["leanVersion"]
    if toolchain != expected_toolchain:
        raise PreflightError(f"Lean toolchain mismatch: {toolchain!r} != {expected_toolchain!r}")
    mathlib = [package for package in lake_manifest.get("packages", []) if package.get("name") == "mathlib"]
    if len(mathlib) != 1:
        raise PreflightError("Lake manifest must contain exactly one mathlib package")
    if mathlib[0].get("rev") != EXPECTED_MATHLIB_COMMIT:
        raise PreflightError("Lake manifest Mathlib commit does not match the pinned replay")
    if mathlib[0].get("rev") != recorded.get("mathlibCommit"):
        raise PreflightError("Lake manifest Mathlib commit does not match the replay receipt")
    if mathlib[0].get("inputRev") != recorded.get("mathlibTag"):
        raise PreflightError("Lake manifest Mathlib tag does not match the replay receipt")
    packages = lake_manifest.get("packages", [])
    if not packages:
        raise PreflightError("Lake manifest has no package pins")
    for package in packages:
        if package.get("type") != "git" or not package.get("rev"):
            raise PreflightError(f"Unsupported or unpinned dependency: {package.get('name')!r}")
    return toolchain, lake_manifest, packages


def load_plan(project: Path) -> tuple[list[dict], str, dict, list[dict]]:
    toolchain, lake_manifest, packages = load_project_pins(project)
    receipt_rows: dict[tuple[str, str], dict] = {}
    for line_number, raw in enumerate(SHARD_RECEIPTS.read_text(encoding="utf-8").splitlines(), 1):
        if not raw:
            continue
        receipt = json.loads(raw)
        key = (receipt.get("package", ""), receipt.get("module", ""))
        if key in receipt_rows:
            raise PreflightError(f"Duplicate original shard receipt at line {line_number}: {key}")
        receipt_rows[key] = receipt

    plan: list[dict] = []
    seen: set[tuple[str, str]] = set()
    for line_number, raw in enumerate(SOURCE_MANIFEST.read_text(encoding="utf-8").splitlines(), 1):
        if not raw:
            continue
        columns = raw.split("\t")
        if len(columns) != 6:
            raise PreflightError(f"Expected six columns in manifest.tsv line {line_number}")
        package, module, relative_source, namespace, theorem_names, expected_source_sha = columns
        relative = PurePosixPath(relative_source)
        if relative.is_absolute() or ".." in relative.parts:
            raise PreflightError(f"Unsafe source path in manifest.tsv line {line_number}")
        source = (SOURCE_ROOT / Path(*relative.parts)).resolve()
        try:
            source.relative_to(SOURCE_ROOT)
        except ValueError as error:
            raise PreflightError(f"Source escaped the package root: {relative_source}") from error
        if not source.is_file():
            raise PreflightError(f"Missing Lean source: {relative_source}")
        actual_source_sha = sha256_file(source)
        if actual_source_sha != expected_source_sha:
            raise PreflightError(f"Source hash mismatch: {relative_source}")
        key = (package, module)
        if key in seen:
            raise PreflightError(f"Duplicate source module: {key}")
        seen.add(key)
        receipt = receipt_rows.get(key)
        if receipt is None:
            raise PreflightError(f"Missing original shard receipt: {key}")
        if receipt.get("sourcePath") != relative_source or receipt.get("sourceSha256") != actual_source_sha:
            raise PreflightError(f"Original receipt does not bind source: {key}")
        if receipt.get("exitCode") != 0:
            raise PreflightError(f"Original shard did not pass: {key}")
        expected_olean_sha = receipt.get("oleanSha256")
        if not isinstance(expected_olean_sha, str) or len(expected_olean_sha) != 64:
            raise PreflightError(f"Original receipt lacks an OLEAN hash: {key}")
        plan.append({
            "package": package,
            "module": module,
            "relative_source": relative_source,
            "source": source,
            "source_sha256": actual_source_sha,
            "namespace": namespace,
            "theorem_names": theorem_names.split(",") if theorem_names else [],
            "expected_olean_sha256": expected_olean_sha,
        })
    if len(plan) != 229:
        raise PreflightError(f"Expected 229 shard sources, found {len(plan)}")
    if set(receipt_rows) != seen:
        raise PreflightError("Source manifest and original shard receipt module sets differ")
    expected_rows = int(json.loads(RUN_MANIFEST.read_text(encoding="utf-8"))["shardCompilation"]["manifestRows"])
    if len(plan) != expected_rows:
        raise PreflightError(f"Replay manifest expects {expected_rows} rows, package contains {len(plan)}")
    return plan, toolchain, lake_manifest, packages


def plan_summary(plan: list[dict], toolchain: str, lake_manifest: dict, packages: list[dict], project: Path) -> dict:
    mathlib = next(package for package in packages if package["name"] == "mathlib")
    return {
        "status": "PLAN_PASS_NO_LEAN_RUN",
        "source_count": len(plan),
        "receipt_count": len(plan),
        "toolchain": toolchain,
        "mathlib_commit": mathlib["rev"],
        "pinned_dependency_count": len(packages),
        "source_manifest_sha256": sha256_file(SOURCE_MANIFEST),
        "shard_receipts_sha256": sha256_file(SHARD_RECEIPTS),
        "lake_manifest_sha256": sha256_file(project / "lake-manifest.json"),
        "lakefile_sha256": sha256_file(project / "lakefile.toml"),
    }


def offline_prerequisites(project: Path, toolchain: str, packages: list[dict]) -> list[str]:
    missing: list[str] = []
    if shutil.which("lake") is None:
        missing.append("lake executable")
    elan = shutil.which("elan")
    if elan is None:
        missing.append("elan executable")
    else:
        try:
            result = subprocess.run(
                [elan, "toolchain", "list"],
                cwd=project,
                capture_output=True,
                text=True,
                timeout=15,
                check=False,
            )
            if result.returncode != 0 or toolchain not in result.stdout:
                missing.append("installed Lean toolchain " + toolchain)
        except subprocess.TimeoutExpired:
            missing.append("elan toolchain listing timed out")
    git = shutil.which("git")
    if git is None:
        missing.append("git executable")
    else:
        packages_root = project / ".lake" / "packages"
        for package in packages:
            checkout = packages_root / package["name"]
            if not checkout.is_dir():
                missing.append("dependency checkout " + package["name"])
                continue
            try:
                result = subprocess.run(
                    [git, "-C", str(checkout), "rev-parse", "HEAD"],
                    cwd=project,
                    capture_output=True,
                    text=True,
                    timeout=15,
                    check=False,
                )
                if result.returncode != 0 or result.stdout.strip() != package["rev"]:
                    missing.append("dependency revision " + package["name"])
            except subprocess.TimeoutExpired:
                missing.append("dependency revision check timed out: " + package["name"])
    mathlib_olean = (
        project / ".lake" / "packages" / "mathlib" / ".lake" / "build" / "lib" / "lean"
        / "Mathlib" / "Data" / "Nat" / "Prime" / "Basic.olean"
    )
    if not mathlib_olean.is_file():
        missing.append("prebuilt Mathlib.Data.Nat.Prime.Basic OLEAN")
    return missing


def as_bytes(value: bytes | str | None) -> bytes:
    if value is None:
        return b""
    return value if isinstance(value, bytes) else value.encode("utf-8", errors="replace")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plan-only", action="store_true", help="check all pins and source/receipt bindings without invoking Lean")
    parser.add_argument("--preflight-only", action="store_true", help="check local toolchain and dependencies without invoking Lean")
    parser.add_argument("--project-dir", type=Path, default=PROJECT, help="Lake project with metadata identical to the staged pins")
    parser.add_argument("--output-dir", type=Path, help="new output directory outside this package; required for replay or environment preflight")
    parser.add_argument("--module-timeout-seconds", type=int, default=180)
    parser.add_argument("--wall-timeout-seconds", type=int, default=7200)
    args = parser.parse_args()

    if args.module_timeout_seconds < 1 or args.wall_timeout_seconds < 1:
        parser.error("time limits must be positive")
    if args.plan_only and args.preflight_only:
        parser.error("--plan-only and --preflight-only cannot be combined")
    project = args.project_dir.expanduser().resolve()
    try:
        plan, toolchain, lake_manifest, packages = load_plan(project)
    except (OSError, KeyError, ValueError, PreflightError) as error:
        print(json.dumps({"status": "PLAN_FAIL", "error": str(error)}, ensure_ascii=False))
        return 2
    if args.plan_only:
        if args.output_dir is not None:
            parser.error("--output-dir cannot be combined with --plan-only")
        print(json.dumps(plan_summary(plan, toolchain, lake_manifest, packages, project), sort_keys=True))
        return 0
    if args.output_dir is None:
        parser.error("--output-dir is required unless --plan-only is used")
    output = args.output_dir.expanduser().resolve()
    try:
        output.relative_to(ROOT.resolve())
    except ValueError:
        pass
    else:
        parser.error("output directory must be outside the candidate package")
    if output.exists():
        parser.error("output directory already exists; choose a fresh path to preserve prior receipts")
    output.mkdir(parents=True)
    events_path = output / "events.jsonl"
    start = time.monotonic()
    run_id = "mathcase-pinned-collatz-lake-replay-v1"
    write_event(events_path, {
        "event": "attempt_started",
        "run_id": run_id,
        "started_at_utc": utc_now(),
        "source_count": len(plan),
        "toolchain": toolchain,
        "mathlib_commit": next(package["rev"] for package in packages if package["name"] == "mathlib"),
        "source_manifest_sha256": sha256_file(SOURCE_MANIFEST),
        "shard_receipts_sha256": sha256_file(SHARD_RECEIPTS),
        "lakefile_sha256": sha256_file(project / "lakefile.toml"),
        "lake_manifest_sha256": sha256_file(project / "lake-manifest.json"),
    })

    missing = offline_prerequisites(project, toolchain, packages)
    if missing:
        write_event(events_path, {
            "event": "preflight_failed",
            "finished_at_utc": utc_now(),
            "missing": missing,
            "lean_invocations": 0,
        })
        print(json.dumps({"status": "PREFLIGHT_FAIL_NO_LEAN_RUN", "missing": missing}, ensure_ascii=False))
        return 2

    if args.preflight_only:
        write_event(events_path, {
            "event": "preflight_passed",
            "finished_at_utc": utc_now(),
            "dependency_count": len(packages),
            "lean_invocations": 0,
        })
        print(json.dumps({
            "status": "PREFLIGHT_PASS_NO_LEAN_RUN",
            "dependency_count": len(packages),
            "toolchain": toolchain,
            "mathlib_commit": next(package["rev"] for package in packages if package["name"] == "mathlib"),
        }, ensure_ascii=False))
        return 0

    env = os.environ.copy()
    env["GIT_ALLOW_PROTOCOL"] = "file"
    env["GIT_TERMINAL_PROMPT"] = "0"
    env["ELAN_TOOLCHAIN_NOT_INSTALLED_BEHAVIOR"] = "error"
    try:
        version = subprocess.run(
            ["lake", "env", "lean", "--version"],
            cwd=project,
            env=env,
            capture_output=True,
            timeout=60,
            check=False,
        )
        version_stdout = version.stdout
        version_stderr = version.stderr
        version_exit = version.returncode
    except subprocess.TimeoutExpired as error:
        version_stdout = as_bytes(error.stdout)
        version_stderr = as_bytes(error.stderr)
        version_exit = 124
    (output / "lean-version.stdout.txt").write_bytes(version_stdout)
    (output / "lean-version.stderr.txt").write_bytes(version_stderr)
    if version_exit != 0 or b"version 4.33.1" not in version_stdout:
        write_event(events_path, {
            "event": "toolchain_check_failed",
            "finished_at_utc": utc_now(),
            "exit_code": version_exit,
            "stdout_sha256": sha256_bytes(version_stdout),
            "stderr_sha256": sha256_bytes(version_stderr),
            "lean_invocations": 1,
        })
        print(json.dumps({"status": "TOOLCHAIN_CHECK_FAIL", "exit_code": version_exit}, ensure_ascii=False))
        return 2

    olean_dir = output / "oleans"
    log_dir = output / "logs"
    olean_dir.mkdir()
    log_dir.mkdir()
    for index, item in enumerate(plan, 1):
        remaining = args.wall_timeout_seconds - (time.monotonic() - start)
        if remaining <= 0:
            write_event(events_path, {
                "event": "wall_timeout",
                "finished_at_utc": utc_now(),
                "completed_modules": index - 1,
                "lean_invocations": index,
            })
            print(json.dumps({"status": "WALL_TIMEOUT", "completed_modules": index - 1}, ensure_ascii=False))
            return 124
        limit = min(args.module_timeout_seconds, max(1, int(remaining)))
        olean = olean_dir / (item["module"] + ".olean")
        stdout_path = log_dir / f"{index:03d}-{item['module']}.stdout.txt"
        stderr_path = log_dir / f"{index:03d}-{item['module']}.stderr.txt"
        command = ["lake", "env", "lean", "-o", str(olean), str(item["source"])]
        began = time.monotonic()
        try:
            result = subprocess.run(
                command,
                cwd=project,
                env=env,
                capture_output=True,
                timeout=limit,
                check=False,
            )
            stdout = result.stdout
            stderr = result.stderr
            exit_code = result.returncode
        except subprocess.TimeoutExpired as error:
            stdout = as_bytes(error.stdout)
            stderr = as_bytes(error.stderr)
            exit_code = 124
        stdout_path.write_bytes(stdout)
        stderr_path.write_bytes(stderr)
        actual_olean_sha = sha256_file(olean) if olean.is_file() else None
        byte_identical = exit_code == 0 and actual_olean_sha == item["expected_olean_sha256"]
        receipt = {
            "event": "shard_result",
            "index": index,
            "package": item["package"],
            "module": item["module"],
            "source_path": item["relative_source"],
            "source_sha256": item["source_sha256"],
            "expected_olean_sha256": item["expected_olean_sha256"],
            "actual_olean_sha256": actual_olean_sha,
            "stdout_path": stdout_path.relative_to(output).as_posix(),
            "stdout_sha256": sha256_bytes(stdout),
            "stderr_path": stderr_path.relative_to(output).as_posix(),
            "stderr_sha256": sha256_bytes(stderr),
            "exit_code": exit_code,
            "byte_identical_olean": byte_identical,
            "elapsed_seconds": round(time.monotonic() - began, 6),
            "finished_at_utc": utc_now(),
        }
        write_event(events_path, receipt)
        if not byte_identical:
            write_event(events_path, {
                "event": "stopped_after_first_failure",
                "finished_at_utc": utc_now(),
                "completed_modules": index,
                "lean_invocations": index + 1,
                "failed_module": item["module"],
            })
            print(json.dumps({
                "status": "STOPPED_FIRST_FAILURE",
                "failed_module": item["module"],
                "exit_code": exit_code,
                "byte_identical_olean": byte_identical,
                "completed_modules": index,
            }, ensure_ascii=False))
            return 1
    write_event(events_path, {
        "event": "attempt_passed",
        "finished_at_utc": utc_now(),
        "completed_modules": len(plan),
        "lean_invocations": len(plan) + 1,
        "all_olean_hashes_match": True,
    })
    print(json.dumps({"status": "PASS_BYTE_IDENTICAL", "completed_modules": len(plan)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())