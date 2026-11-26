"""Compile the shared word bound and six-of-ten theorem with official Lean."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile
import time

ROOT = Path(__file__).resolve().parents[2]
PACKAGE = Path(__file__).resolve().parent
WORD_BOUND = ROOT / "reproduction/collatz-parity-envelopes-2026-11-v1/WordBound.lean"
TARGET = PACKAGE / "SixOfTen.lean"

EXPECTED_AXIOMS = {
    "MathCase.Collatz.SixOfTen.cap_scaled_descent": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.six_of_ten": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.six_of_twelve": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.n347_first_drop": [],
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_axioms(output: str) -> dict[str, list[str]]:
    parsed = {}
    for line in output.splitlines():
        match = re.fullmatch(r"'([^']+)' depends on axioms: \[(.*)\]", line)
        if match:
            parsed[match.group(1)] = [part.strip() for part in match.group(2).split(",") if part.strip()]
            continue
        match = re.fullmatch(r"'([^']+)' does not depend on any axioms", line)
        if match:
            parsed[match.group(1)] = []
    return parsed


def invoke(lean: Path, source: Path, output: Path, env: dict[str, str], cwd: Path) -> dict:
    started = time.perf_counter()
    result = subprocess.run(
        [str(lean), "-o", str(output), str(source)], cwd=cwd, env=env,
        capture_output=True, text=True, encoding="utf-8", errors="replace", check=False)
    stdout = result.stdout.replace("\r\n", "\n")
    stderr = result.stderr.replace("\r\n", "\n")
    return {
        "exit_code": result.returncode,
        "stdout": stdout,
        "stderr": stderr,
        "stdout_sha256": sha256(stdout.encode("utf-8")),
        "stderr_sha256": sha256(stderr.encode("utf-8")),
        "olean_sha256": sha256(output.read_bytes()) if output.is_file() else None,
        "elapsed_seconds": round(time.perf_counter() - started, 3),
    }


def run(lean: Path, output_dir: Path) -> dict:
    lean = lean.resolve(strict=True)
    version = subprocess.run([str(lean), "--version"], capture_output=True, text=True,
                             encoding="utf-8", errors="replace", check=True).stdout.strip()
    if not version.startswith("Lean (version 4.33.1,"):
        raise SystemExit(f"Expected official Lean 4.33.1, received: {version}")
    for source in (WORD_BOUND, TARGET):
        text = source.read_text(encoding="utf-8")
        if re.search(r"\bnative_decide\b|\bsorry\b", text):
            raise SystemExit(f"Forbidden proof escape token in {source.name}")

    output_dir.parent.mkdir(parents=True, exist_ok=True)
    output_dir.mkdir(exist_ok=False)
    env = os.environ.copy()
    with tempfile.TemporaryDirectory(prefix="mathcase-six-of-ten-", dir=output_dir) as temp:
        build = Path(temp)
        env["LEAN_PATH"] = str(build)
        word = invoke(lean, WORD_BOUND, build / "WordBound.olean", env, ROOT)
        if word["exit_code"] != 0:
            raise SystemExit("WordBound.lean compilation failed; see stderr in process output")
        target = invoke(lean, TARGET, build / "SixOfTen.olean", env, ROOT)
        if target["exit_code"] != 0:
            raise SystemExit("SixOfTen.lean compilation failed; see stderr in process output")
        axioms = parse_axioms(target["stdout"])
        if axioms != EXPECTED_AXIOMS:
            raise SystemExit(f"Unexpected #print axioms output: {axioms}")
        if "sorryAx" in target["stdout"] or "native_decide" in target["stdout"]:
            raise SystemExit("Forbidden axiom or tactic token appeared in proof audit output")

    receipt = {
        "schema": "mathcase-collatz-six-of-ten-replay-v1",
        "status": "PASS",
        "lean_version": version,
        "lean_binary_sha256": sha256(lean.read_bytes()),
        "sources": {
            "WordBound.lean": {
                "repository_path": "reproduction/collatz-parity-envelopes-2026-11-v1/WordBound.lean",
                "sha256": sha256(WORD_BOUND.read_bytes()),
            },
            "SixOfTen.lean": {
                "repository_path": "reproduction/collatz-six-of-ten-lean-v1/SixOfTen.lean",
                "sha256": sha256(TARGET.read_bytes()),
            },
        },
        "modules": {"WordBound": word, "SixOfTen": target},
        "axioms": axioms,
        "scope": "For n >= 3 with odds(n,10) <= 6, ordinaryIter n (10+odds(n,10)) < n; the step is at most 16.",
        "no_sorry_or_native_decide": True,
    }
    path = output_dir / "replay-receipt.json"
    path.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    return receipt


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", type=Path, required=True, help="official Lean 4.33.1 executable")
    parser.add_argument("--output-dir", type=Path, required=True, help="new directory for the replay receipt")
    args = parser.parse_args()
    receipt = run(args.lean, args.output_dir)
    print(json.dumps({
        "status": receipt["status"],
        "lean_version": receipt["lean_version"],
        "source_hashes": {name: data["sha256"] for name, data in receipt["sources"].items()},
        "axioms": receipt["axioms"],
    }, indent=2))


if __name__ == "__main__":
    main()
