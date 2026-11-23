"""Fresh-source Lean replay and exhaustive residue census for the 20-step Collatz result."""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile

BASE = Path(__file__).resolve().parent
MODULES = {
    "WordBound": [
        "'MathCase.Collatz.WordBound.twelve_of_twenty' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.scaled_upper' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.twenty_twelve_descent' depends on axioms: [propext, Quot.sound]",
    ],
    "WordResidue": [
        "'MathCase.Collatz.WordBound.lift_residue' depends on axioms: [propext, Quot.sound]",
        "'MathCase.Collatz.WordBound.residue_twelve_of_twenty' depends on axioms: [propext, Quot.sound]",
    ],
    "AtMostTwelve": [
        "'MathCase.Collatz.WordBound.at_most_twelve_descend' depends on axioms: [propext, Quot.sound]",
    ],
    "CountWords": [
        "'MathCase.Collatz.WordBound.residueCount_eq_wordCount' depends on axioms: [propext, Classical.choice, Quot.sound]",
        "'MathCase.Collatz.WordBound.count_twelve_of_twenty' depends on axioms: [propext, Classical.choice, Quot.sound]",
        "'MathCase.Collatz.WordBound.counted_progressions_descend' depends on axioms: [propext, Classical.choice, Quot.sound]",
    ],
    "AtMostCount": [
        "'MathCase.Collatz.WordBound.residue_at_most_twelve_count' depends on axioms: [propext, Classical.choice, Quot.sound]",
    ],
    "AtMostFamilies": [
        "'MathCase.Collatz.WordBound.counted_at_most_twelve_families' depends on axioms: [propext, Classical.choice, Quot.sound]",
    ],
    "Sharpness": [
        "'MathCase.Collatz.WordBound.thirteen_odd_family_not_uniformly_descending' depends on axioms: [propext, Quot.sound]",
    ],
}
LEAN_FILES = [name + ".lean" for name in MODULES]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def write_report(path: Path | None, report: dict) -> None:
    text = json.dumps(report, indent=2, sort_keys=True) + "\n"
    if path:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding="utf-8")
    print(text, end="")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", default="lean", help="Lean 4.33.1 executable or command")
    parser.add_argument("--output", type=Path, help="optional JSON receipt destination")
    args = parser.parse_args()
    executable = shutil.which(args.lean)
    if not executable:
        parser.error("Lean was not found. Supply --lean with the Lean 4.33.1 executable.")
    executable = str(Path(executable).resolve())
    report = {
        "schema": "mathcase-collatz-at-most-twelve-replay-r1",
        "status": "FAIL",
        "external_spend_usd": 0,
        "network_used": False,
        "lean_stages": [],
        "source_sha256": {},
    }
    source_bytes = {}
    for name in LEAN_FILES + ["residue-census.py"]:
        path = BASE / name
        if not path.is_file():
            report["failure"] = f"missing source: {name}"
            write_report(args.output, report)
            return 1
        data = path.read_bytes()
        source_bytes[name] = data
        report["source_sha256"][name] = sha256(data)
        if name.endswith(".lean") and re.search(rb"\b(sorry|admit|native_decide)\b", data):
            report["failure"] = f"disallowed proof marker in {name}"
            write_report(args.output, report)
            return 1

    env_base = {
        **os.environ,
        "ELAN_TOOLCHAIN": "leanprover/lean4:v4.33.1",
    }
    version = subprocess.run([executable, "--version"], capture_output=True,
                           text=True, encoding="utf-8", errors="replace",
                           env=env_base, timeout=15)
    report["lean_version"] = version.stdout.strip()
    if version.returncode or not re.search(r"\bversion 4\.33\.1\b", version.stdout):
        report["failure"] = "Lean 4.33.1 is required"
        report["version_exit_code"] = version.returncode
        report["version_output"] = (version.stdout + version.stderr)[-4000:]
        write_report(args.output, report)
        return 1

    try:
        with tempfile.TemporaryDirectory(prefix="mathcase-atmost12-") as temp:
            workspace = Path(temp)
            for name, data in source_bytes.items():
                (workspace / name).write_bytes(data)
            env = {**env_base, "LEAN_PATH": str(workspace)}
            for module, expected in MODULES.items():
                name = module + ".lean"
                command = [executable, "-j", "1", "-o", module + ".olean", name]
                try:
                    result = subprocess.run(command, cwd=workspace, env=env,
                                            capture_output=True, text=True,
                                            encoding="utf-8", errors="replace", timeout=120)
                except subprocess.TimeoutExpired as exc:
                    report["status"] = "TIMEOUT"
                    report["failure"] = f"Lean module timeout: {module}"
                    report["timeout_seconds"] = 120
                    report["partial_output"] = ((exc.stdout or "") + (exc.stderr or ""))[-12000:]
                    write_report(args.output, report)
                    return 124
                output = result.stdout + result.stderr
                axiom_lines = [line for line in output.splitlines() if "depends on axioms:" in line]
                stage = {
                    "module": module,
                    "exit_code": result.returncode,
                    "source_sha256": report["source_sha256"][name],
                    "output_sha256": sha256(output.encode("utf-8")),
                    "axiom_lines": axiom_lines,
                }
                report["lean_stages"].append(stage)
                if result.returncode or sorted(axiom_lines) != sorted(expected) or "sorryAx" in output:
                    report["failure"] = f"proof or axiom audit failed: {module}"
                    stage["output"] = output[-12000:]
                    write_report(args.output, report)
                    return 1

            census_path = workspace / "census-receipt.json"
            census_command = [sys.executable, "-B", "residue-census.py", "--output", str(census_path)]
            census = subprocess.run(census_command, cwd=workspace, env=env,
                                    capture_output=True, text=True, encoding="utf-8",
                                    errors="replace", timeout=120)
            if census.returncode or not census_path.is_file():
                report["failure"] = "finite residue census failed"
                report["census_output"] = (census.stdout + census.stderr)[-12000:]
                write_report(args.output, report)
                return 1
            census_bytes = census_path.read_bytes()
            census_report = json.loads(census_bytes)
            report["census_sha256"] = sha256(census_bytes)
            report["census"] = {
                key: census_report[key]
                for key in (
                    "status", "modulus", "qualifying_residue_count", "qualifying_fraction",
                    "qualifying_percent", "positive_base_residues_at_least_3_checked",
                    "endpoint_mismatch_count", "non_descent_count_for_residue_at_least_3",
                    "ordered_record_stream_sha256", "elapsed_seconds",
                )
            }
            if census_report.get("status") != "PASS":
                report["failure"] = "finite residue census reported failure"
                write_report(args.output, report)
                return 1
    except subprocess.TimeoutExpired as exc:
        report["status"] = "TIMEOUT"
        report["failure"] = "Lean version probe timed out"
        report["timeout_seconds"] = 15
        report["partial_output"] = ((exc.stdout or "") + (exc.stderr or ""))[-4000:]
        write_report(args.output, report)
        return 124

    report["status"] = "PASS"
    report["scope"] = "At most twelve odd inputs in 20 accelerated steps; variable ordinary endpoint time 20+h; n>=3"
    write_report(args.output, report)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
