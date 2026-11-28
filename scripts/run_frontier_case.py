"""Run one of the nine public frontier checks without overwriting prior output."""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile


ROOT = Path(__file__).resolve().parents[1]
FRONTIER = ROOT / "research" / "frontier-2026-11"
CASES = {
    "vdw-2-7": "Check the known 3,703-position coloring and its specified 3,704 obstruction.",
    "ws-5": "Check both published 207-number witnesses and the radius-18 extension search.",
    "ramsey-3-3-3-3": "Check the known four-color K50 and the fixed-graph one-vertex obstruction.",
    "vdw-5-3": "Check the known 170-position coloring and the small exact SAT control; the 171 probe stays UNKNOWN.",
    "egyptian-28k-21": "Recompile the exact Lean identities for n = 28k + 21 and positive multiples of seven.",
    "ramsey-6-6": "Check the Paley(101) witness and bounded changes to that fixed starting graph.",
    "c7-greedy": "Run the bounded whole-graph greedy C7^5 search; a miss remains UNKNOWN.",
    "c7-ejection": "Run the bounded C7^5 ejection-chain search from the known 367-word seed.",
    "c7-surplus": "Run the bounded C7^5 surplus-neighborhood search; a miss remains UNKNOWN.",
}


def plan(case: str, output: Path) -> list[tuple[str, list[str], Path]]:
    """Return (label, argv, cwd) commands; every generated file goes to output."""
    w = FRONTIER / "van-der-waerden" / "witnesses"
    structured = FRONTIER / "van-der-waerden" / "w2-7-structured"
    upper = FRONTIER / "van-der-waerden" / "w5-3-upper"
    ws = FRONTIER / "weak-schur-5"
    four = FRONTIER / "ramsey-four-color"
    paley = FRONTIER / "paley-101"
    es = FRONTIER / "egyptian-28k-plus-21"
    py = sys.executable
    if case == "vdw-2-7":
        return [
            ("known coloring", [py, "vdw.py", "check", "2-7"], w),
            ("structured obstruction", [py, "verify_obstruction.py", "certificates.json"], structured),
            ("structured regression", [py, "-m", "unittest", "-v", "test_obstruction"], structured),
        ]
    if case == "ws-5":
        cache = output / "pinned-inputs"
        return [
            ("published witnesses", [py, "verify_weak_schur.py", "--input-cache", str(cache), "--output", str(output / "witnesses.json"), "--prefixes", "160", "128", "104", "96", "80", "64", "48", "40", "32", "24", "--nodes", "15000"], ws),
            ("radius-18 extension search", [py, "search_radius.py", "--input-cache", str(cache), "--output", str(output / "radius-18.json"), "--radius", "18", "--nodes", "400000"], ws),
            ("small exhaustive controls", [py, "radius_controls.py"], ws),
        ]
    if case == "ramsey-3-3-3-3":
        return [
            ("known K50 and fixed-base extension", [py, "four_color.py", "--extension-nodes", "350000"], four),
            ("saved LRAT obstruction", [py, "verify_refutation.py", "K51-fixed", "proofs/K51-fixed.lrat"], four),
            ("one/two old-edge changes", [py, "chung_recolor.py"], four),
        ]
    if case == "vdw-5-3":
        return [
            ("known coloring", [py, "vdw.py", "check", "5-3"], w),
            ("small exact positive control", [py, "upper.py", "control"], upper),
        ]
    if case == "egyptian-28k-21":
        return [("Lean identity check", [py, "verify_family.py", "--k", "2", "--receipt", str(output / "lean-receipt.json")], es)]
    if case == "ramsey-6-6":
        return [
            ("Paley(101) witness and one-point extension", [py, "paley_extension.py"], four),
            ("saved unrestricted LRAT obstruction", [py, "verify_refutation.py", "unrestricted", "proofs/unrestricted.lrat"], four),
            ("minimum old-edge changes", [py, "paley_recolor.py"], paley),
            ("bounded structured recolorings", [py, "paley_structural.py"], four),
        ]
    if case == "c7-greedy":
        c7 = ROOT / "research" / "frontier" / "c7-five-symbol-greedy-v1"
        return [
            ("whole-graph greedy search", [py, "search.py", "--seconds", "180", "--seed", "28112026", "--out", str(output)], c7),
            ("independent pair checker", [py, "verify.py", "--baseline", str(c7 / "base_c7.json"), "--candidate", str(output / "search-result.json"), "--out", str(output / "verification.json")], c7),
        ]
    if case == "c7-ejection":
        c7 = ROOT / "research" / "frontier" / "c7-five-symbol-ejection-v1"
        return [
            ("ejection-chain search", [py, "search.py", "--base", str(c7 / "base_c7.json"), "--seconds", "180", "--seed", "281131", "--out", str(output)], c7),
            ("independent pair checker", [py, "verify.py", "--base", str(c7 / "base_c7.json"), "--result", str(output / "search-result.json"), "--out", str(output / "verification.json")], c7),
        ]
    if case == "c7-surplus":
        c7 = ROOT / "research" / "frontier" / "c7-five-symbol-surplus-v1"
        return [
            ("surplus-neighborhood search", [py, "search.py", "--base", str(c7 / "base_c7.json"), "--seconds", "30", "--starts", "12", "--depth", "4", "--seed", "281128", "--out", str(output)], c7),
            ("independent surplus checker", [py, "verify.py", "--base", str(c7 / "base_c7.json"), "--result", str(output / "search-result.json"), "--out", str(output / "verification.json")], c7),
        ]
    raise ValueError(f"unknown case: {case}")


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("case", nargs="?", choices=["list", *CASES], default="list")
    parser.add_argument("--out", type=Path, help="parent directory for a new run folder")
    parser.add_argument("--dry-run", action="store_true", help="print commands without starting checks")
    args = parser.parse_args(argv)
    if args.case == "list":
        for name, description in CASES.items():
            print(f"{name:22} {description}")
        return 0
    if args.out:
        args.out.mkdir(parents=True, exist_ok=True)
    output = Path(tempfile.mkdtemp(prefix=f"mathcase-frontier-{args.case}-", dir=args.out)).resolve()
    commands = plan(args.case, output)
    if args.dry_run:
        for label, argv, cwd in commands:
            shown = ["python" if str(arg) == sys.executable else str(arg).replace(str(output), "<new-run-folder>") for arg in argv]
            print(f"{label}: {' '.join(shown)} [cwd={cwd.relative_to(ROOT).as_posix()}]")
        output.rmdir()
        return 0

    env = dict(os.environ, PYTHONIOENCODING="utf-8", PYTHONDONTWRITEBYTECODE="1")
    steps = []
    status = "ALL_COMMANDS_EXITED_0"
    for index, (label, argv, cwd) in enumerate(commands, start=1):
        log = output / f"{index:02d}-{label.replace(' ', '-')}.log"
        try:
            run = subprocess.run(argv, cwd=cwd, env=env, stdout=subprocess.PIPE,
                                 stderr=subprocess.STDOUT, timeout=3600)
            log.write_bytes(run.stdout)
            code = run.returncode
        except subprocess.TimeoutExpired as exc:
            captured = exc.stdout or b""
            log.write_bytes(captured + b"\nRUNNER_TIMEOUT after 3600 seconds\n")
            code = 124
        record = {
            "step": label,
            "exit_code": code,
            "outcome": "COMMAND_EXITED_0" if code == 0 else ("TIMEOUT" if code == 124 else "COMMAND_FAILED"),
            "log_sha256": digest(log),
        }
        steps.append(record)
        if code != 0:
            status = "FAILED_OR_INCOMPLETE"
            break
        print(f"{label}: command exited 0; inspect its recorded result", flush=True)
    receipt = {
        "schema": "mathcase-frontier-run-v1",
        "case_id": args.case,
        "status": status,
        "steps": steps,
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "scope": "Only the listed finite checks and Lean identities; see frontier README for limits.",
    }
    (output / "run.json").write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(f"{status}: new run files are in {output}")
    return 0 if status == "ALL_COMMANDS_EXITED_0" else 1


if __name__ == "__main__":
    raise SystemExit(main())
