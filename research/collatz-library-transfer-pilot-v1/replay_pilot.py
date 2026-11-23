"""Score the original, unedited first responses on an isolated Lean toolchain."""
import argparse
import csv
import hashlib
import json
import os
import subprocess
import shutil
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def ordinary(n):
    return n // 2 if n % 2 == 0 else 3 * n + 1

def pair_oracle(a, b, steps):
    x, y = b, b + a
    for _ in range(steps):
        if x % 2 != y % 2:
            return None
        x, y = ordinary(x), ordinary(y)
    return y - x, x

def lean(compiler, directory, args, stdin=None):
    env = {**os.environ, "LEAN_PATH":str(directory),
           "ELAN_TOOLCHAIN":"leanprover/lean4:v4.33.1"}
    return subprocess.run([compiler, "-j", "1", *args], cwd=directory, env=env,
                          input=stdin, capture_output=True, encoding="utf-8", timeout=120)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--lean", default="lean")
    ap.add_argument("--receipt", type=Path)
    ap.add_argument("--pairs", type=Path, default=ROOT/"pairs.tsv")
    ap.add_argument("--split", type=Path, default=ROOT/"split.json")
    ap.add_argument("--trace", type=Path, default=ROOT/"CollatzAffineTrace.lean")
    args = ap.parse_args()
    for path, expected in (
        (args.split, "95fe10b16ef819c0214cf923adc0be37f8c6db8e0ac16cdb5610eb2e4f1e4dc6"),
        (args.pairs, "30f06904507a35d180fab9d0d9195759047d13edfd857c04e2ef483eaf75194a"),
        (args.trace, "8a53e1cee2436efc347c6ebb07da0203d9c613670ad52bafdd0d0d19258d408c"),
    ):
        if sha(path) != expected:
            ap.error(f"{path.name} differs from the recorded experiment")
    split = json.loads(args.split.read_bytes())
    with args.pairs.open(encoding="utf-8") as f:
        labels = {int(row["r"]):int(row["q"]) for row in csv.DictReader(f,delimiter="\t")}
    rows = [("held",2**20,r,32,(3**12,labels[r])) for r in split["held"]]
    rows += [("outside",2**20,r,32,pair_oracle(2**20,r,32)) for r in split["outside_table_probes"]]
    rows += [("boundary",a,b,t,pair_oracle(a,b,t)) for a in [0,1,2,4,12,17] for b in [0,1,2,7] for t in [0,1,2,6]]
    full = args.trace.read_text(encoding="utf-8-sig")
    bare = full.split("abbrev AffineState")[0] + "\nend MathCase.CollatzAffineTrace\n"
    driver = '''import Definition
def main : IO Unit := do
  let stream ← IO.getStdin
  repeat
    let line ← stream.getLine
    if line.isEmpty then break
    match (line.trimAscii.toString.splitOn " ").map String.toNat? with
    | [some a, some b, some t] =>
      match Pilot.predict a b t with
      | some (s,q) => IO.println s!"{s} {q}"
      | none => IO.println "-"
    | _ => throw (IO.userError "invalid test row")
'''
    compiler=shutil.which(args.lean)
    if not compiler:
        ap.error("Install Lean 4.33.1 or supply --lean /path/to/lean")
    args.lean=str(Path(compiler).resolve())
    version=subprocess.check_output([args.lean,"--version"],encoding="utf-8").strip()
    if "version 4.33.1," not in version:
        ap.error("This replay requires Lean 4.33.1")
    report = {"scope":"single matched pair of Codex agent responses; retrospective public rows grouped by parity prefix", "lean_version":subprocess.check_output([args.lean,"--version"],encoding="utf-8").strip(),"model_endpoint_cost":"No metered external inference API dispatched; Codex credits not exposed.","split_sha256":sha(args.split),"source_sha256":sha(args.trace),"arms":{}}
    with tempfile.TemporaryDirectory(prefix="mathcase-pilot-") as tmp:
        run_dir=Path(tmp)
        for arm, src in [("control",bare),("library",full)]:
            folder = run_dir/arm
            folder.mkdir(exist_ok=True)
            def put(name, text):
                (folder/name).write_bytes(text.encode("utf-8"))
            put("CollatzAffineTrace.lean",src)
            head = "import CollatzAffineTrace\nopen MathCase.CollatzAffineTrace\nnamespace Pilot\n"
            definition = (ROOT/(arm+"-definition.lean.txt")).read_text(encoding="utf-8")
            proof = (ROOT/(arm+"-proof.lean.txt")).read_text(encoding="utf-8")
            put("Definition.lean",head+definition+"\nend Pilot\n")
            put("Candidate.lean",head+definition+"\n"+proof+"\nend Pilot\n")
            put("Audit.lean", """import Candidate
    open MathCase.CollatzAffineTrace
    theorem exactlyRequested : ∀ a b t s q : Nat,
        Pilot.predict a b t = some (s,q) → ∀ k : Nat, iterate (a*k+b) t = s*k+q :=
      Pilot.predict_sound
    #print axioms exactlyRequested
    """)
            put("Score.lean",driver)
            for mod in ["CollatzAffineTrace","Definition"]:
                res = lean(args.lean,folder,["-o",mod+".olean",mod+".lean"])
                if res.returncode: raise RuntimeError(res.stdout + res.stderr)
            res = lean(args.lean,folder,["--run","Score.lean"],"".join(f"{a} {b} {t}\n" for _,a,b,t,_ in rows))
            if res.returncode: raise RuntimeError(res.stdout + res.stderr)
            outputs = res.stdout.splitlines()
            if len(outputs) != len(rows):
                raise RuntimeError(f"{arm} emitted {len(outputs)} predictions for {len(rows)} inputs")
            scores = {}
            for (group, _, _, _, value), got in zip(rows,outputs):
                expect = "-" if value is None else f"{value[0]} {value[1]}"
                score=scores.setdefault(group,{"pass":0,"total":0})
                score["pass"]+=got==expect
                score["total"]+=1
            theorem=lean(args.lean,folder,["-o","Candidate.olean","Candidate.lean"])
            put("candidate-check.txt",theorem.stdout + theorem.stderr)
            audit=lean(args.lean,folder,["Audit.lean"]) if theorem.returncode==0 else None
            if audit: put("axioms.txt",audit.stdout+audit.stderr)
            result={"definition_sha256":sha(ROOT/(arm+"-definition.lean.txt")),"proof_sha256":sha(ROOT/(arm+"-proof.lean.txt")),"prediction_scores":scores,"candidate_exit":theorem.returncode,"exact_target_audit_exit": None if audit is None else audit.returncode,"axioms":None if audit is None else audit.stdout.strip()}
            report["arms"][arm]=result
    if args.receipt:
        args.receipt.write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(report["arms"],indent=2))
    recorded = json.loads((ROOT / "pilot-result.json").read_bytes())
    if report["arms"] != recorded["arms"]:
        raise SystemExit("The run differs from the recorded predictor scores, exact target, axiom audit or source hashes.")
if __name__=="__main__":
    main()
