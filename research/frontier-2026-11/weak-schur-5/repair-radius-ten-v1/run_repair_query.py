from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
EXPECTED_IMAGE = "mathcase-smt-isolated:5.3.1.0"
EXPECTED_IMAGE_ID = "sha256:ab8946ee9bc8040f748368d6497aa4868bd2ef42f7ae5d689e35cc38f9abdc8c"
EXPECTED_VERSION = "Z3 version 5.3.1 - 64 bit"
TIMEOUT_SECONDS = 55


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def write_bytes(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def main() -> int:
    parser = argparse.ArgumentParser(description="Audit and run the fixed-seed Weak Schur radius-ten query.")
    parser.add_argument("--out", type=Path, required=True, help="new empty directory for this run's receipt and raw output")
    parser.add_argument("--z3", help="host Z3 executable; must report the exact pinned version")
    parser.add_argument("--docker-image", help="use a pre-existing local image; its exact image ID is checked")
    args = parser.parse_args()
    if bool(args.z3) == bool(args.docker_image):
        parser.error("choose exactly one of --z3 or --docker-image")
    out = args.out.resolve()
    if out.exists() and any(out.iterdir()):
        parser.error("--out must be absent or empty; refusing to overwrite evidence")
    out.mkdir(parents=True, exist_ok=True)
    started = datetime.now(timezone.utc)
    t0 = time.monotonic()
    receipt = {
        "schema": "mathcase-ws5-fixed-seed-radius-ten-replay-v1",
        "started_utc": started.isoformat(),
        "status": "NOT_RUN",
        "scope": "One saved 208-entry, three-conflict assignment; asks if it has a valid repair within ten recolorings.",
        "proof_certificate_emitted": False,
        "external_spend_usd": 0,
        "network": "none",
        "cpu_limit": 1,
        "memory_limit_bytes": 2147483648,
        "solver_timeout_seconds": TIMEOUT_SECONDS,
        "query_file": "check-at-most-ten.smt2",
        "query_sha256": sha((ROOT / "check-at-most-ten.smt2").read_bytes()),
        "private_original_receipt_sha256": "6460f798949838a193cf2673bdd25acd27519cf335fa278164767c39891cbecb",
        "solver_invocation": None,
        "solver_version": None,
        "solver_image_id": None,
        "exit_code": None,
        "stdout_sha256": None,
        "stderr_sha256": None,
        "solver_output": None,
        "classification": "NOT_RUN",
    }
    audit = subprocess.run([sys.executable, "-B", str(ROOT / "verify_public_artifact.py")],
                           cwd=ROOT, capture_output=True, check=False)
    write_bytes(out / "artifact-audit.stdout.bin", audit.stdout)
    write_bytes(out / "artifact-audit.stderr.bin", audit.stderr)
    try:
        audit_json = json.loads(audit.stdout.decode("utf-8"))
    except Exception:
        audit_json = {"status": "UNREADABLE_AUDIT_OUTPUT"}
    receipt["artifact_audit"] = {
        "exit_code": audit.returncode,
        "stdout_sha256": sha(audit.stdout),
        "stderr_sha256": sha(audit.stderr),
        "status": audit_json.get("status"),
    }
    if audit.returncode != 0 or audit_json.get("status") != "PASS_ARTIFACT_AUDIT":
        receipt["status"] = "BLOCKED_ARTIFACT_AUDIT"
        receipt["classification"] = "BLOCKED_BEFORE_SOLVER"
    else:
        if args.docker_image:
            inspect = subprocess.run(["docker", "image", "inspect", "--format={{.Id}}", args.docker_image],
                                     capture_output=True, check=False)
            image_id = inspect.stdout.decode("utf-8", "replace").strip()
            receipt["solver_image_id"] = image_id
            receipt["solver_version"] = EXPECTED_VERSION if image_id == EXPECTED_IMAGE_ID else None
            if inspect.returncode != 0 or image_id != EXPECTED_IMAGE_ID or args.docker_image != EXPECTED_IMAGE:
                receipt["status"] = "BLOCKED_SOLVER_IMAGE_MISMATCH"
                receipt["classification"] = "BLOCKED_BEFORE_SOLVER"
            else:
                version_run = subprocess.run(
                    ["docker", "run", "--rm", "--pull=never", "--network", "none", "--entrypoint", "z3", args.docker_image, "-version"],
                    capture_output=True, check=False,
                )
                version = version_run.stdout.decode("utf-8", "replace").strip()
                receipt["solver_version"] = version
                if version_run.returncode != 0 or version != EXPECTED_VERSION:
                    receipt["status"] = "BLOCKED_SOLVER_VERSION_MISMATCH"
                    receipt["classification"] = "BLOCKED_BEFORE_SOLVER"
                else:
                    cmd = ["docker", "run", "--rm", "--pull=never", "--network", "none", "--cpus=1", "--memory=2g",
                           "--mount", f"type=bind,source={ROOT},target=/work,readonly", "--workdir", "/work",
                           "--entrypoint", "z3", args.docker_image, f"-T:{TIMEOUT_SECONDS}", "/work/check-at-most-ten.smt2"]
                    receipt["solver_invocation"] = ["docker", "run", "--rm", "--pull=never", "--network", "none",
                                                    "--cpus=1", "--memory=2g", "--mount", "type=bind,source=<package-dir>,target=/work,readonly",
                                                    "--workdir", "/work", "--entrypoint", "z3", EXPECTED_IMAGE,
                                                    f"-T:{TIMEOUT_SECONDS}", "/work/check-at-most-ten.smt2"]
                    run = subprocess.run(cmd, capture_output=True, check=False)
                    receipt["exit_code"] = run.returncode
                    write_bytes(out / "solver.stdout.bin", run.stdout)
                    write_bytes(out / "solver.stderr.bin", run.stderr)
                    receipt["stdout_sha256"] = sha(run.stdout)
                    receipt["stderr_sha256"] = sha(run.stderr)
                    receipt["solver_output"] = run.stdout.decode("utf-8", "replace").strip()
                    if run.returncode == 0 and receipt["solver_output"] == "unsat":
                        receipt["status"] = "UNSAT_REPORTED"
                        receipt["classification"] = "BOUNDED_SOLVER_RESULT_NOT_PROOF"
                    elif run.returncode == 0 and receipt["solver_output"] == "sat":
                        receipt["status"] = "SAT_CANDIDATE_NEEDS_MODEL_AND_CHECKS"
                        receipt["classification"] = "CANDIDATE_ONLY"
                    elif run.returncode == 0 and receipt["solver_output"] == "unknown":
                        receipt["status"] = "UNKNOWN"
                        receipt["classification"] = "NO_VERDICT"
                    else:
                        receipt["status"] = "SOLVER_FAILED_OR_UNEXPECTED_OUTPUT"
                        receipt["classification"] = "NO_VERDICT"
        else:
            version_run = subprocess.run([args.z3, "-version"], capture_output=True, check=False)
            version = version_run.stdout.decode("utf-8", "replace").strip()
            receipt["solver_version"] = version
            if version_run.returncode != 0 or version != EXPECTED_VERSION:
                receipt["status"] = "BLOCKED_SOLVER_VERSION_MISMATCH"
                receipt["classification"] = "BLOCKED_BEFORE_SOLVER"
            else:
                receipt["solver_invocation"] = ["<z3-5.3.1>", f"-T:{TIMEOUT_SECONDS}", "check-at-most-ten.smt2"]
                run = subprocess.run([args.z3, f"-T:{TIMEOUT_SECONDS}", str(ROOT / "check-at-most-ten.smt2")], cwd=ROOT, capture_output=True, check=False)
                receipt["exit_code"] = run.returncode
                write_bytes(out / "solver.stdout.bin", run.stdout)
                write_bytes(out / "solver.stderr.bin", run.stderr)
                receipt["stdout_sha256"] = sha(run.stdout)
                receipt["stderr_sha256"] = sha(run.stderr)
                receipt["solver_output"] = run.stdout.decode("utf-8", "replace").strip()
                if run.returncode == 0 and receipt["solver_output"] == "unsat":
                    receipt["status"] = "UNSAT_REPORTED"
                    receipt["classification"] = "BOUNDED_SOLVER_RESULT_NOT_PROOF"
                elif run.returncode == 0 and receipt["solver_output"] == "sat":
                    receipt["status"] = "SAT_CANDIDATE_NEEDS_MODEL_AND_CHECKS"
                    receipt["classification"] = "CANDIDATE_ONLY"
                elif run.returncode == 0 and receipt["solver_output"] == "unknown":
                    receipt["status"] = "UNKNOWN"
                    receipt["classification"] = "NO_VERDICT"
                else:
                    receipt["status"] = "SOLVER_FAILED_OR_UNEXPECTED_OUTPUT"
                    receipt["classification"] = "NO_VERDICT"
    receipt["elapsed_seconds"] = round(time.monotonic() - t0, 3)
    receipt["completed_utc"] = datetime.now(timezone.utc).isoformat()
    write_bytes(out / "run.json", (json.dumps(receipt, indent=2) + "\n").encode("utf-8"))
    print(json.dumps({"status": receipt["status"], "classification": receipt["classification"],
                      "elapsed_seconds": receipt["elapsed_seconds"], "out": out.name}, indent=2))
    return 0 if receipt["status"] == "UNSAT_REPORTED" else 1


if __name__ == "__main__":
    raise SystemExit(main())