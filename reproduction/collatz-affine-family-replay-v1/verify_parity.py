"""Replay the Collatz affine-family proof and both public finite lists with Lean 4.33.1."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import time

MODULES = {
    "CollatzAffineTrace": (),
    "SymbolicFamilies": (),
    "M20ExactSmoke": (
        "MathCase.CollatzAffineTrace.familyEndpoint_exact",
        "MathCase.CollatzAffineTrace.m20Family_descent",
        "CollatzM20Shard001.row239",
        "CollatzM20Shard001.row487",
    ),
    "M20Table": ("MathCase.M20Table.all_rows",),
    "Outside456": ("MathCase.Outside456.all_rows",),
}
EXPECTED_AXIOMS = "[propext, Quot.sound]"

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", default="lean", help="Lean 4.33.1 executable")
    parser.add_argument("--receipt", type=Path, help="Write a JSON compilation record to this file")
    parser.add_argument("--timeout", type=int, default=120, help="Wall-clock limit in seconds per module")
    args = parser.parse_args()
    if args.timeout < 1:
        parser.error("--timeout must be positive")
    lean = shutil.which(args.lean)
    if not lean:
        parser.error("Install Lean 4.33.1 or supply its path with --lean")
    lean = str(Path(lean).resolve())
    source = Path(__file__).resolve().parent
    # The official elan wrapper selects this offline toolchain even when this
    # program is run from a fresh temporary directory with no project config.
    with tempfile.TemporaryDirectory(prefix="mathcase-parity-") as scratch:
        temp = Path(scratch)
        (temp / "lean-toolchain").write_text("leanprover/lean4:v4.33.1\n", encoding="utf-8")
        env = dict(os.environ, LEAN_PATH=str(temp), LEAN_NUM_THREADS="1",
                   ELAN_TOOLCHAIN="leanprover/lean4:v4.33.1")
        version = subprocess.run([lean, "--version"], cwd=temp, env=env,
                                 capture_output=True, text=True, timeout=15)
        if version.returncode or "version 4.33.1," not in version.stdout:
            parser.error("This replay requires Lean 4.33.1")
        result = {
            "schema": "mathcase-standalone-lean-replay-v1",
            "started_utc": datetime.now(timezone.utc).isoformat(),
            "lean": version.stdout.strip(),
            "jobs": 1,
            "timeout_seconds_per_module": args.timeout,
            "total_input_rows": {"published": 2652, "prespecified_outside": 456},
            "modules": [],
        }
        for name, theorems in MODULES.items():
            filename = name + ".lean"
            shutil.copyfile(source / filename, temp / filename)
            command = ["-j", "1", "-o", name + ".olean", filename]
            record = {"module": name, "source_sha256": digest(temp / filename), "args": command}
            result["modules"].append(record)
            start = time.monotonic()
            try:
                run = subprocess.run([lean, *command], cwd=temp, env=env,
                                     capture_output=True, timeout=args.timeout)
                stdout = run.stdout.decode("utf-8", errors="replace")
                stderr = run.stderr.decode("utf-8", errors="replace")
                record.update(exit_code=run.returncode, stdout=stdout, stderr=stderr)
                correct_audits = all(f"'{t}' depends on axioms: {EXPECTED_AXIOMS}" in stdout
                                     for t in theorems)
                passed = run.returncode == 0 and (temp / (name + ".olean")).is_file() and correct_audits
                record["status"] = "PASS" if passed else "FAILED"
            except subprocess.TimeoutExpired:
                record["status"] = "TIMED_OUT"
            record["wall_seconds"] = round(time.monotonic() - start, 3)
            if record["status"] != "PASS":
                break
        result["status"] = "PASS" if (len(result["modules"]) == len(MODULES)
            and all(item["status"] == "PASS" for item in result["modules"])) else "INCOMPLETE"
        result["ended_utc"] = datetime.now(timezone.utc).isoformat()
        text = json.dumps(result, indent=2) + "\n"
        if args.receipt:
            args.receipt.write_bytes(text.encode("utf-8"))
        print(text, end="")
        return 0 if result["status"] == "PASS" else 1

if __name__ == "__main__":
    raise SystemExit(main())
