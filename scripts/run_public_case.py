"""List and run the check behind each public MathCase example."""
import argparse
import os
from pathlib import Path
import subprocess
import sys
import tempfile


CATALOG = {
    "counterexample": "Check 4 divides 2 squared and 4 does not divide 2. Exact arithmetic.",
    "prime-sqrt2": "Recompile the prime theorem and its square-root-of-two child. Requires pinned Mathlib.",
    "collatz": "Prove the 12-of-20 descent rule and its exact residue count in Lean 4.33.1.",
    "collatz-table": "Check the saved 2,652 Collatz families and the separate sample in Lean 4.33.1.",
    "model-pilot": "Replay two original responses on the same held-out tasks in Lean 4.33.1.",
    "ramsey55": "Independently check all five-vertex subsets of the 42-vertex graph and compare its Lean rows.",
    "ramsey66": "Independently search the 101-vertex graph and its complement for a six-clique.",
    "egyptian": "Reconcile the saved witness campaign and its 100 ranges. Finite arithmetic evidence.",
    "riemann": "Compare four pinned upstream source files. Requires internet. Checks source identity.",
    "visitor": "Compile your own trusted Lean file and record the compiler result. Requires elan.",
}

ROOT = Path(__file__).resolve().parents[1]
COLLATZ = "reproduction/collatz-twelve-of-twenty-v1"
R55 = "reproduction/ramsey-r55-lean-v1"
R66 = "reproduction/ramsey-r66-paley101-v1"


def commands(case, args, output):
    routes = {
        "counterexample": [("scripts/hero_counterexample.py",)],
        "collatz": [
            (COLLATZ + "/check_word_bound.py", "--output", output / "descent.json"),
            (COLLATZ + "/verify_count.py", "--output", output / "count.json"),
        ],
        "collatz-table": [("reproduction/collatz-affine-family-replay-v1/verify_parity.py", "--receipt", output / "affine.json")],
        "model-pilot": [("research/collatz-library-transfer-pilot-v1/replay_pilot.py", "--receipt", output / "model-pilot.json")],
        "ramsey55": [(R55 + "/graph6-interoperability/check_exoo42_graph6.py", "--lean-source", R55 + "/MathCase/Ramsey/R55/FoundationV4.lean")],
        "ramsey66": [(R66 + "/verify_paley101_independent.py", R66 + "/graph-certificate.json", "--out-dir", output / "paley")],
        "egyptian": [("scripts/audit_egyptian_fraction_campaign_v9.py", "--output-dir", output / "witness-audit")],
        "riemann": [("reproduction/riemann-source-audit-v1/check_sources.py",)],
        "visitor": [("scripts/check_visitor_case.py", args.source, "--receipt", output / "compiler.json")],
    }
    if case == "prime-sqrt2":
        option, value = ("--mathlib", args.mathlib) if args.mathlib else ("--bootstrap", args.bootstrap)
        return [("reproduction/prime-sqrt2-source-replay-v1/verify_prime_sqrt2.py", option, value, "--output", output / "parent-child.json")]
    return routes[case]


def main(argv=None, root=ROOT):
    parser = argparse.ArgumentParser(description=__doc__,
        epilog="Examples: python scripts/run_public_case.py collatz   |   python scripts/run_public_case.py visitor --source MyCase.lean")
    parser.add_argument("case", nargs="?", choices=["list", *CATALOG], default="list")
    parser.add_argument("--list", action="store_true", help="list the public cases")
    parser.add_argument("--out", type=Path, help="parent for a new run directory (default: system temporary directory)")
    deps = parser.add_mutually_exclusive_group()
    deps.add_argument("--mathlib", type=Path, help="prime-sqrt2: an installed pinned Mathlib checkout")
    deps.add_argument("--bootstrap", type=Path, help="prime-sqrt2: fetch the pinned public dependencies here")
    parser.add_argument("--source", type=Path, help="visitor: your own trusted .lean source file")
    args = parser.parse_args(argv)
    if args.case == "list" or args.list:
        for key, description in CATALOG.items():
            print(f"{key:16} {description}")
        return 0
    if args.case == "prime-sqrt2" and not (args.mathlib or args.bootstrap):
        parser.error("prime-sqrt2 needs --mathlib PATH or --bootstrap PATH")
    if args.case != "prime-sqrt2" and (args.mathlib or args.bootstrap):
        parser.error("--mathlib and --bootstrap apply to prime-sqrt2")
    if args.case == "visitor" and not (args.source and args.source.is_file() and args.source.suffix.lower() == ".lean"):
        parser.error("visitor requires --source PATH to a trusted .lean file")
    if args.source and args.case != "visitor":
        parser.error("--source applies to the visitor case")
    for name in ("source", "mathlib", "bootstrap"):
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
        state = "completed" if result.returncode == 0 else "did not pass"
        print(f"{Path(script).name} {state} (exit {result.returncode}). Output: {log}", flush=True)
        if result.returncode:
            print(log.read_text(encoding="utf-8", errors="replace")[-1600:].encode("ascii","backslashreplace").decode("ascii"), file=sys.stderr)
            return result.returncode
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
