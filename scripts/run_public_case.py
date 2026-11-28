"""List and run the check behind each public MathCase example."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile


CATALOG = {
    "counterexample": "Check 4 divides 2 squared and 4 does not divide 2. Exact arithmetic.",
    "geometry-midpoint": "Fresh-source Lean replay of the known midpoint identity in a normalized, axis-aligned right-triangle coordinate model. Supports --lean and --stage-timeout.",
    "prime-sqrt2": "Recompile the prime theorem and its square-root-of-two child. Lean stages default to a 600-second limit.",
    "collatz": "Prove the 12-of-20 descent rule and its exact residue count in Lean 4.33.1.",
    "collatz-at-most-twelve": "Prove and recount the at-most-12-of-20 descent family, including the 13-odd boundary.",
    "collatz-six-of-ten": "Rebuild the bounded six-of-ten Collatz descent theorem and verify its receipt with Lean 4.33.1; not a convergence proof.",
    "collatz-at-most-thirteen": "Fresh-source Lean proof and full 21-bit residue census for the at-most-13-of-21 descent rule.",
    "collatz-at-most-thirteen-22": "Fresh-source Lean proof and exact 22-step parity count; bounded first descent only.",
    "collatz-at-most-seventeen-27": "Lean-checked bounded descent for starts at least 26,018; separate exact parity-class audit.",
    "collatz-parity-envelope-23-14": "Fresh-source replay of the reviewed 23/14 first-drop target and shared prerequisites only.",
    "collatz-parity-envelopes-all": "Combined replay of the 23/14 target and exploratory 24/15, 31/19, and 32/20 targets.",
    "collatz-table": "Check the saved 2,652 Collatz families and the separate sample in Lean 4.33.1.",
    "collatz-m20-twelve-of-twenty-bridge": "Check whether all 2,652 listed families fit the already Lean-checked 12-of-20 descent rule. Finite audit; no Lean run.",
    "collatz-m31-lift": "Recompute and hash-check 860 listed M31 Collatz progressions. Uses the saved Lean receipt; this route does not run Lean.",
    "model-pilot": "Replay two original responses on the same held-out tasks in Lean 4.33.1.",
    "ramsey55": "Independently check all five-vertex subsets of the 42-vertex graph and compare its Lean rows.",
    "ramsey66": "Independently search the 101-vertex graph and its complement for a six-clique.",
    "egyptian": "Reconcile the saved witness campaign and its 100 ranges. Finite arithmetic evidence.",
    "egyptian-minimax": "Check the least possible largest denominator for 143 primes up to 10,000.",
    "riemann": "Compare four pinned upstream source files. Requires internet. Checks source identity.",
    "vp-vnp-example": "Work through the all-ones 2x2 permanent and determinant; a deliberately wrong count is rejected.",
    "vp-vnp-source-audit": "Fetch and hash seven upstream VP/VNP source files at a pinned commit. Does not replay the proof.",
    "matrix-example": "Compare ordinary and Strassen 2x2 multiplication; a deliberately damaged result is rejected.",
    "visitor": "Check a trusted Lean file, or bind an exported case to its exact target and report axioms.",
}

ROOT = Path(__file__).resolve().parents[1]
COLLATZ = "reproduction/collatz-twelve-of-twenty-v1"
SIX_OF_TEN = "reproduction/collatz-six-of-ten-lean-v1"
R55 = "reproduction/ramsey-r55-lean-v1"
R66 = "reproduction/ramsey-r66-paley101-v1"


def commands(case, args, output):
    if case == "collatz-six-of-ten":
        return [
            (SIX_OF_TEN + "/replay.py", "--lean", args.lean, "--output-dir", output / "lean-replay"),
            (SIX_OF_TEN + "/verify_receipt.py", "--receipt", output / "lean-replay/replay-receipt.json",
             "--lean", args.lean, "--output", output / "lean-replay/verification.json"),
        ]
    routes = {
        "counterexample": [("scripts/hero_counterexample.py",)],
        "geometry-midpoint": [("reproduction/coordinate-right-triangle-midpoint-v1/replay.py", "--output-dir", output / "lean-replay")],
        "collatz": [
            (COLLATZ + "/check_word_bound.py", "--output", output / "descent.json"),
            (COLLATZ + "/verify_count.py", "--output", output / "count.json"),
        ],
        "collatz-at-most-twelve": [("reproduction/collatz-at-most-twelve-v1/verify_at_most_twelve.py",
                                    "--output", output / "at-most-twelve.json")],
        "collatz-at-most-thirteen": [("reproduction/collatz-at-most-thirteen-of-twenty-one-v1/verify_at_most_thirteen.py",
                                      "--output", output / "at-most-thirteen.json",
                                      "--evidence-dir", output / "lean-and-census-output")],
        "collatz-at-most-thirteen-22": [("reproduction/collatz-at-most-thirteen-of-twenty-two-v2/verify_at_most_thirteen_22.py",
                                        "--output-dir", output / "lean-replay")],
        "collatz-at-most-seventeen-27": [("reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/verify_at_most_seventeen_27.py",
                                         output / "lean-replay")],
        "collatz-parity-envelope-23-14": [("reproduction/collatz-parity-envelopes-2026-11-v1/replay-scoped-validation-v2.py",
                                          "--output", output / "lean-replay")],
        "collatz-parity-envelopes-all": [("reproduction/collatz-parity-envelopes-2026-11-v1/replay.py",
                                          "--output", output / "lean-replay")],
        "collatz-table": [("reproduction/collatz-affine-family-replay-v1/verify_parity.py", "--receipt", output / "affine.json")],
        "collatz-m20-twelve-of-twenty-bridge": [("reproduction/collatz-m20-twelve-of-twenty-bridge-v1/verify_bridge.py", "--output", output / "bridge.json")],
        "collatz-m31-lift": [("reproduction/collatz-m31-lift-v1/scripts/verify_m31_lift.py", "--receipt", output / "m31-lift-check.json")],
        "model-pilot": [("research/collatz-library-transfer-pilot-v1/replay_pilot.py", "--receipt", output / "model-pilot.json")],
        "ramsey55": [(R55 + "/graph6-interoperability/check_exoo42_graph6.py", "--lean-source", R55 + "/MathCase/Ramsey/R55/FoundationV4.lean")],
        "ramsey66": [(R66 + "/verify_paley101_independent.py", R66 + "/graph-certificate.json", "--out-dir", output / "paley")],
        "egyptian": [("scripts/audit_egyptian_fraction_campaign_v9.py", "--output-dir", output / "witness-audit")],
        "egyptian-minimax": [("research/number-theory/egyptian-fractions/least-largest-denominator-v1/verify.py",)],
        "riemann": [("reproduction/riemann-source-audit-v1/check_sources.py",)],
        "vp-vnp-example": [("reproduction/vp-vnp-source-audit-v1/example_check.py",)],
        "vp-vnp-source-audit": [("reproduction/vp-vnp-source-audit-v1/audit_sources.py", "--receipt", output / "vp-vnp-source-audit.json")],
        "matrix-example": [("reproduction/matrix-exponent-2x2-v1/check_matrix_example.py",)],
        "visitor": [("scripts/check_visitor_case.py",
                     *( ["--case-packet", args.case_packet] if getattr(args, "case_packet", None) else [getattr(args, "source", None)] ),
                     "--receipt", output / ("target-check.json" if getattr(args, "case_packet", None) else "compiler.json"),
                     *( ["--lake-project", args.lake_project] if getattr(args, "lake_project", None) else [] ))],
    }
    if case == "prime-sqrt2":
        option, value = ("--mathlib", args.mathlib) if args.mathlib else ("--bootstrap", args.bootstrap)
        command = ["reproduction/prime-sqrt2-source-replay-v1/verify_prime_sqrt2.py",
                   option, value, "--output", output / "parent-child.json"]
        if args.stage_timeout is not None:
            command += ["--stage-timeout", str(args.stage_timeout)]
        return [tuple(command)]
    if case == "geometry-midpoint":
        command = list(routes[case][0])
        lean_arg = getattr(args, "lean", None)
        if lean_arg is not None:
            command[1:1] = ["--lean", str(lean_arg)]
        if args.stage_timeout is not None:
            command += ["--stage-timeout", str(args.stage_timeout)]
        return [tuple(command)]
    if case == "collatz-parity-envelope-23-14" and getattr(args, "lean", None) is not None:
        command = list(routes[case][0])
        command[1:1] = ["--lean", str(args.lean)]
        return [tuple(command)]
    return routes[case]


def classify_step(case, return_code, output):
    report = {}
    if case == "prime-sqrt2":
        receipt = output / "parent-child.json"
        if receipt.is_file():
            try:
                report = json.loads(receipt.read_text(encoding="utf-8"))
            except (OSError, json.JSONDecodeError):
                report = {}
        if report.get("status") == "TIMEOUT":
            return "timed out", 124
        if (return_code == 0 and report.get("status") == "PASS"
                and report.get("dropped_primality_control") == "REJECTED"):
            return "completed; negative control rejected as expected", 0
    if return_code == 0:
        return "completed", 0
    return "failed", return_code


def main(argv=None, root=ROOT):
    parser = argparse.ArgumentParser(description=__doc__,
        epilog="Examples: python scripts/run_public_case.py collatz   |   python scripts/run_public_case.py visitor --case-packet MyCase.mathcase.json")
    parser.add_argument("case", nargs="?", choices=["list", *CATALOG], default="list")
    parser.add_argument("--list", action="store_true", help="list the public cases")
    parser.add_argument("--out", type=Path, help="parent for a new run directory (default: system temporary directory)")
    deps = parser.add_mutually_exclusive_group()
    deps.add_argument("--mathlib", type=Path, help="prime-sqrt2: an installed pinned Mathlib checkout")
    deps.add_argument("--bootstrap", type=Path, help="prime-sqrt2: fetch the pinned public dependencies here")
    parser.add_argument("--lean", type=Path, help="Lean 4.33.1 executable for Lean-backed routes")
    parser.add_argument("--stage-timeout", type=int,
                        help="prime-sqrt2 or geometry-midpoint: wall-clock limit for each Lean stage")
    parser.add_argument("--source", type=Path, help="visitor: your own trusted .lean source file")
    parser.add_argument("--case-packet", type=Path, help="visitor: exported .mathcase.json for exact-target checking")
    parser.add_argument("--lake-project", type=Path, help="visitor: an already prepared local Lake project; no dependencies are fetched")
    args = parser.parse_args(argv)
    if args.case == "list" or args.list:
        for key, description in CATALOG.items():
            print(f"{key:16} {description}")
        return 0
    if args.case == "prime-sqrt2" and not (args.mathlib or args.bootstrap):
        parser.error("prime-sqrt2 needs --mathlib PATH or --bootstrap PATH")
    if args.case == "collatz-six-of-ten" and not args.lean:
        parser.error("collatz-six-of-ten needs --lean PATH_TO_LEAN_4_33_1")
    if args.case == "collatz-six-of-ten" and not args.lean.is_file():
        parser.error("the Lean executable does not exist")
    if args.case not in ("collatz-six-of-ten", "geometry-midpoint", "collatz-parity-envelope-23-14") and args.lean is not None:
        parser.error("--lean applies only to collatz-six-of-ten, geometry-midpoint, or collatz-parity-envelope-23-14")
    if args.case != "prime-sqrt2" and (args.mathlib or args.bootstrap):
        parser.error("--mathlib and --bootstrap apply to prime-sqrt2")
    if args.stage_timeout is not None and args.stage_timeout < 1:
        parser.error("--stage-timeout must be positive")
    if args.case not in ("prime-sqrt2", "geometry-midpoint") and args.stage_timeout is not None:
        parser.error("--stage-timeout applies only to prime-sqrt2 or geometry-midpoint")
    if args.case == "visitor":
        if bool(args.source) == bool(args.case_packet):
            parser.error("visitor requires exactly one of --source PATH or --case-packet PATH")
        chosen = args.case_packet if args.case_packet else args.source
        if not chosen.is_file():
            parser.error("the visitor input file does not exist")
        if args.source and args.source.suffix.lower() != ".lean":
            parser.error("--source must name a .lean file")
        if args.case_packet and args.case_packet.suffix.lower() != ".json":
            parser.error("--case-packet must name a .json file")
    elif args.source or args.case_packet or args.lake_project:
        parser.error("--source, --case-packet, and --lake-project apply only to visitor")
    for name in ("source", "case_packet", "lake_project", "mathlib", "bootstrap", "lean"):
        path = getattr(args, name)
        if path is not None:
            setattr(args, name, path.resolve())
    if args.out:
        args.out.mkdir(parents=True, exist_ok=True)
    output = Path(tempfile.mkdtemp(prefix=f"mathcase-{args.case}-", dir=args.out)).resolve()
    print(CATALOG[args.case], flush=True)
    print(f"New run directory: {output}", flush=True)
    env = dict(os.environ, PYTHONIOENCODING="utf-8")
    for index, (script, *flags) in enumerate(commands(args.case, args, output), start=1):
        log = output / f"{index}-{Path(script).stem}.log"
        with log.open("wb") as handle:
            result = subprocess.run([sys.executable, "-B", root / script, *flags], cwd=root,
                                    stdout=handle, stderr=subprocess.STDOUT, env=env)
        state, exit_code = classify_step(args.case, result.returncode, output)
        receipt_path = output / "parent-child.json"
        if args.case == "prime-sqrt2" and receipt_path.is_file():
            try:
                report = json.loads(receipt_path.read_text(encoding="utf-8"))
            except (OSError, json.JSONDecodeError):
                report = {}
            if report.get("status") == "TIMEOUT":
                state += (f" during {report.get('stage')} after {report.get('elapsed_s')}s"
                          f" (limit {report.get('limit_seconds')}s)")
        print(f"{Path(script).name} {state} (exit {exit_code}). Output: {log}", flush=True)
        if exit_code:
            print(log.read_text(encoding="utf-8", errors="replace")[-1600:].encode("ascii","backslashreplace").decode("ascii"), file=sys.stderr)
            return exit_code
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
