"""Verify a replay receipt's source, theorem, and axiom bindings."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[2]
EXPECTED_AXIOMS = {
    "MathCase.Collatz.SixOfTen.cap_scaled_descent": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.six_of_ten": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.six_of_twelve": ["propext", "Quot.sound"],
    "MathCase.Collatz.SixOfTen.n347_first_drop": [],
}


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_axioms(output: str) -> dict[str, list[str]]:
    parsed = {}
    for line in output.splitlines():
        match = re.fullmatch(r"'([^']+)' depends on axioms: \[(.*)\]", line)
        if match:
            parsed[match.group(1)] = [part.strip() for part in match.group(2).split(",") if part.strip()]
        else:
            match = re.fullmatch(r"'([^']+)' does not depend on any axioms", line)
            if match:
                parsed[match.group(1)] = []
    return parsed


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--receipt", type=Path, required=True)
    parser.add_argument("--lean", type=Path, help="optional path to independently check the recorded Lean binary")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    receipt_bytes = args.receipt.read_bytes()
    receipt = json.loads(receipt_bytes)
    if receipt.get("schema") != "mathcase-collatz-six-of-ten-replay-v1" or receipt.get("status") != "PASS":
        raise SystemExit("Unexpected replay receipt schema or status")
    for name, record in receipt["sources"].items():
        source_path = ROOT / record["repository_path"]
        actual = digest(source_path.read_bytes())
        if actual != record["sha256"]:
            raise SystemExit(f"Source digest mismatch for {name}")
        if re.search(r"\bnative_decide\b|\bsorry\b", source_path.read_text(encoding="utf-8")):
            raise SystemExit(f"Proof escape token found in {name}")
    if receipt.get("axioms") != EXPECTED_AXIOMS:
        raise SystemExit("Axiom list does not match the checked theorem list")
    if receipt.get("no_sorry_or_native_decide") is not True:
        raise SystemExit("Receipt does not certify the proof-token scan")
    for module_name in ("WordBound", "SixOfTen"):
        module = receipt["modules"][module_name]
        if module.get("exit_code") != 0 or not re.fullmatch(r"[0-9a-f]{64}", module.get("olean_sha256", "")):
            raise SystemExit(f"{module_name} has no successful kernel compilation receipt")
        if digest(module["stdout"].encode("utf-8")) != module["stdout_sha256"]:
            raise SystemExit(f"{module_name} stdout digest mismatch")
    target = receipt["modules"]["SixOfTen"]
    if parse_axioms(target["stdout"]) != EXPECTED_AXIOMS or "sorryAx" in target["stdout"]:
        raise SystemExit("Recorded Lean #print axioms output failed verification")
    if args.lean:
        lean = args.lean.resolve(strict=True)
        version = subprocess.run([str(lean), "--version"], capture_output=True, text=True,
                                 check=True).stdout.strip()
        if version != receipt["lean_version"] or digest(lean.read_bytes()) != receipt["lean_binary_sha256"]:
            raise SystemExit("Lean binary or version does not match the replay receipt")
    verification = {
        "schema": "mathcase-collatz-six-of-ten-verification-v1",
        "verified": True,
        "replay_receipt_sha256": digest(receipt_bytes),
        "source_sha256": {name: record["sha256"] for name, record in receipt["sources"].items()},
        "lean_binary_checked": bool(args.lean),
        "axioms_match": True,
        "kernel_compile_exit_zero": True,
        "proof_escape_scan_pass": True,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(verification, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(verification, indent=2))


if __name__ == "__main__":
    main()
