#!/usr/bin/env python3
"""Fresh-source Lean Core replay for the reviewed 23/14 target and shared prerequisites."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import time


ROOT = Path(__file__).resolve().parent
MODULES = ["WordBound", "WordResidue", "CountWords", "AtMostFourteen23"]
P = frozenset({"propext", "Quot.sound"})
PC = frozenset({"Classical.choice", "propext", "Quot.sound"})
EXPECTED = {
    "WordBound": {"twelve_of_twenty": P, "scaled_upper": P, "twenty_twelve_descent": P},
    "WordResidue": {"lift_residue": P, "residue_twelve_of_twenty": P},
    "CountWords": {"residueCount_eq_wordCount": PC, "count_twelve_of_twenty": PC,
                   "counted_progressions_descend": PC},
    "AtMostFourteen23": {"residue_at_most_fourteen_count_23": PC,
                          "at_most_fourteen_of_twenty_three_descend": P,
                          "counted_at_most_fourteen_families_23": PC},
}
REPORT = re.compile(r"(?m)^'([^']+)' depends on axioms: \[([^\]]*)\]$")
SOURCE_BYTE_BINDINGS = {
    "AtMostFourteen23": {
        "artifact": "AtMostFourteen23.original-crlf.bin",
        "sha256": "680d0ea3f62203261456ec4a9e75b5294bbf0991cb769321ba96bd7cd789d175",
    },
    "AxiomAudit31": {
        "artifact": "AxiomAudit31.original-crlf.bin",
        "sha256": "7bf3cc05d1b6cebc5df4a564441d54782bca87f03f51f077902872961c439994",
    },
}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def parse_axioms(output: str) -> dict[str, frozenset[str]]:
    parsed = {}
    for match in REPORT.finditer(output):
        name = match.group(1).split(".")[-1]
        values = frozenset(item.strip() for item in match.group(2).replace("\n", " ").split(",") if item.strip())
        parsed[name] = values
    return parsed


def materialize_source(module: str, destination: Path) -> tuple[Path, str, str]:
    """Return exact bytes used by the historical receipt, preserving CRLF snapshots."""
    display_source = ROOT / f"{module}.lean"
    binding = SOURCE_BYTE_BINDINGS.get(module)
    if binding is None:
        return display_source, sha256(display_source), display_source.name

    original = ROOT / binding["artifact"]
    raw = original.read_bytes()
    actual = hashlib.sha256(raw).hexdigest()
    if actual != binding["sha256"]:
        raise SystemExit(f"Original byte snapshot mismatch for {module}: {actual}")
    if raw.replace(b"\r\n", b"\n") != display_source.read_bytes():
        raise SystemExit(f"LF display copy differs from the original byte snapshot for {module}")
    destination.mkdir(parents=True, exist_ok=True)
    materialized = destination / f"{module}.lean"
    materialized.write_bytes(raw)
    return materialized, actual, binding["artifact"]


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", default="lean", help="Lean 4.33.1 executable")
    parser.add_argument("--output", type=Path, help="new output directory; must not already exist")
    args = parser.parse_args(argv)
    lean = shutil.which(args.lean)
    if not lean:
        parser.error("Lean was not found; install Lean 4.33.1 first.")
    output = args.output.resolve() if args.output else Path(tempfile.mkdtemp(prefix="mathcase-parity-envelope-")).resolve()
    if args.output and output.exists():
        parser.error("output directory already exists; choose a fresh path")
    output.mkdir(parents=True, exist_ok=True)
    build = output / "build"
    logs = output / "logs"
    materialized_dir = output / "materialized-inputs"
    build.mkdir()
    logs.mkdir()

    env = dict(os.environ)
    # Do not inherit a user's Mathlib or other LEAN_PATH entries into this Core-only replay.
    env["LEAN_PATH"] = os.pathsep.join((str(build), str(ROOT)))
    version = subprocess.run([lean, "--version"], cwd=ROOT, env=env, capture_output=True,
                             text=True, encoding="utf-8", errors="replace", timeout=30)
    version_text = (version.stdout + version.stderr).strip()
    if version.returncode or not re.search(r"\bLean \(version 4\.33\.1\b", version_text):
        raise SystemExit(f"Required Lean 4.33.1; received exit {version.returncode}: {version_text}")

    module_rows = []
    for module in MODULES:
        source, source_hash, source_artifact = materialize_source(module, materialized_dir)
        olean = build / f"{module}.olean"
        started = time.monotonic()
        # Lean rejects an input path outside its source root. Historical CRLF inputs
        # are materialized under the new output directory, so use the input file's
        # parent as cwd for each module. Imports still resolve only through LEAN_PATH.
        result = subprocess.run([lean, "-j", "1", "-o", str(olean), str(source)], cwd=source.parent,
                                env=env, capture_output=True, text=True, encoding="utf-8",
                                errors="replace", timeout=900)
        elapsed = round(time.monotonic() - started, 6)
        text = result.stdout + result.stderr
        log = logs / f"{module}.txt"
        log.write_text(text, encoding="utf-8", newline="\n")
        if result.returncode != 0:
            raise SystemExit(f"Lean rejected {module} with exit {result.returncode}; see {log}")
        if "sorryAx" in text:
            raise SystemExit(f"sorryAx appeared in {module}; see {log}")
        actual = parse_axioms(text)
        for theorem, expected in EXPECTED[module].items():
            if actual.get(theorem) != expected:
                raise SystemExit(f"Axiom audit mismatch for {theorem} in {module}; expected {sorted(expected)}, got {sorted(actual.get(theorem, ())) }; see {log}")
        if not olean.is_file():
            raise SystemExit(f"Lean exited successfully but did not create {olean}")
        module_rows.append({"module": module, "exit_code": result.returncode,
                            "elapsed_seconds": elapsed, "source_sha256": source_hash,
                            "source_artifact": source_artifact,
                            "olean_sha256": sha256(olean), "log": f"logs/{module}.txt",
                            "axiom_reports": {name: sorted(values) for name, values in sorted(actual.items())}})

    receipt = {"schema": "mathcase-collatz-parity-envelope-replay-v1", "status": "PASS",
               "case_id": "collatz-parity-envelope-23-14",
               "lean_version": version_text, "modules": module_rows,
               "network_access": "not used by this script; run in an offline environment for a sealed replay",
               "scope": "Only the Ryan-reviewed 23/14 parity-conditioned first-drop statement and its shared prerequisites; no other exploratory target, combined theorem, or convergence claim"}
    receipt_path = output / "replay-result.json"
    receipt_path.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps(receipt, indent=2, sort_keys=True))
    print(f"Receipt: {receipt_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
