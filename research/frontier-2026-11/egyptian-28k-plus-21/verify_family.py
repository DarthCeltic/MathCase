"""Rebuild the 28k+21 family and check two exact decompositions for selected k."""
import argparse
from datetime import datetime, timezone
from fractions import Fraction
from hashlib import sha256
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
TOOLCHAIN = "leanprover/lean4:v4.33.1"
EXPECTED = {
    "Family28": "641b5a867a8cb498b77ba47186505766217ca4345bf618618c6a665934f7cf49",
    "FamilyWitness": "2bcdd7cc22b51e0c54399d6849788a444812d28ae27b6fe16e768bc4c9494bb5",
}
TARGETS = {
    "Family28": ["ErdosStraus28kPlus21CandidateV1.reviewed_target"],
    "FamilyWitness": ["MathCase.EgyptianFractions.family_witness",
                      "MathCase.EgyptianFractions.multiples_of_seven"],
}
AXIOMS = sorted(["propext", "Classical.choice", "Quot.sound"])
NEGATIVE = """import FamilyWitness
open MathCase.EgyptianFractions
example (m : Nat) (hm : 0 < m) : Witness (7*m) (2*m) (21*m) (41*m) :=
  multiples_of_seven m hm
"""

def example(k):
    n = 28*k + 21
    t = n*(k+1)
    m = 4*k+3
    records = []
    for x, y, z in [(7*(k+1), t+1, t*(t+1)), (2*m, 21*m, 42*m)]:
        if not (0 < x < y < z and 4*x*y*z == n*(x*y+x*z+y*z)
                and sum(Fraction(1,v) for v in (x,y,z)) == Fraction(4,n)):
            raise ValueError(f"Arithmetic failure for k={k}")
        records.append([x,y,z])
    return {"k": k, "n": n, "denominators": records}

def check(tool, k):
    version = subprocess.run([*tool, "--version"], check=True, capture_output=True,
                             text=True, timeout=30).stdout.strip()
    if "version 4.33.1," not in version:
        raise ValueError("Lean 4.33.1 is required")
    report = {"scope": "integer witness identity with positive ordered denominators",
              "utc": datetime.now(timezone.utc).isoformat(), "lean": version, "modules": {}}
    with tempfile.TemporaryDirectory(prefix="mathcase-family-") as temp:
        work = Path(temp)
        env = dict(os.environ, LEAN_PATH=str(work))
        def lean(*args):
            return subprocess.run([*tool, "-j", "1", *args], cwd=work, env=env,
                                  text=True, encoding="utf-8", capture_output=True, timeout=120)
        for name, expected in EXPECTED.items():
            source = (HERE / (name+".lean")).read_bytes()
            if sha256(source).hexdigest() != expected:
                raise ValueError(f"Source digest mismatch for {name}")
            (work/(name+".lean")).write_bytes(source)
            run = lean("-o", name+".olean", name+".lean")
            if run.returncode != 0:
                raise ValueError(f"{name} failed: {run.stderr} {run.stdout}")
            audits = {}
            for target in TARGETS[name]:
                prefix = f"'{target}' depends on axioms: ["
                matches = [line for line in run.stdout.splitlines() if line.startswith(prefix) and line.endswith("]")]
                if len(matches) != 1 or sorted(matches[0][len(prefix):-1].split(", ")) != AXIOMS:
                    raise ValueError(f"Unexpected axiom report for {target}")
                audits[target] = AXIOMS
            report["modules"][name] = {"source_sha256":expected, "axioms":audits}
        (work/"WrongWitness.lean").write_text(NEGATIVE,encoding="utf-8")
        bad=lean("WrongWitness.lean")
        diagnostic=bad.stdout+bad.stderr
        if bad.returncode != 1 or "Type mismatch" not in diagnostic or "41" not in diagnostic:
            raise ValueError("The changed-denominator control did not produce the expected rejection")
    report["changed_denominator_42_to_41"] = "rejected"
    report["examples"] = [example(i) for i in dict.fromkeys([0,1,37,10**30,k])]
    report["status"] = "PASS"
    return report

def main():
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument("--k", type=int, default=0, help="extra nonnegative parameter to check")
    cli.add_argument("--lean", help="explicit Lean 4.33.1 executable (default: pinned elan toolchain)")
    cli.add_argument("--receipt", type=Path, help="save a new JSON result here")
    args=cli.parse_args()
    if args.k < 0: cli.error("k must be nonnegative")
    if args.receipt and args.receipt.exists(): cli.error("choose a new receipt path")
    tool=[args.lean] if args.lean else (["elan","run",TOOLCHAIN,"lean"] if shutil.which("elan") else ["lean"])
    try:
        result=check(tool,args.k)
        data=json.dumps(result,indent=2)+"\n"
        if args.receipt:
            with args.receipt.open("x",encoding="utf-8") as out: out.write(data)
        print(data,end="")
    except (ValueError, OSError, subprocess.SubprocessError) as exc:
        cli.exit(1,str(exc)+"\n")
if __name__=="__main__":
    main()
