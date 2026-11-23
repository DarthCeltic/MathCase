"""Rebuild the parity-count lemma and reject a one-off count."""
import argparse, hashlib, json, os, shutil, subprocess, tempfile
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--lean", default="lean")
parser.add_argument("--output", type=Path)
args = parser.parse_args()
tool = shutil.which(args.lean)
if not tool:
    raise SystemExit("Install Lean 4.33.1 or specify --lean.")
cmd = [tool]
if Path(tool).parent.parent.name == ".elan":
    cmd.append("+leanprover/lean4:v4.33.1")
if "version 4.33.1," not in subprocess.check_output([*cmd, "--version"],text=True):
    raise SystemExit("Lean 4.33.1 is required.")

modules = ("WordBound", "WordResidue", "CountWords")
report = {"toolchain":"Lean 4.33.1","module_results":{},"off_by_one_rejected":False}
with tempfile.TemporaryDirectory(prefix="mathcase-count-") as tmp:
    root = Path(tmp)
    env = {**os.environ, "LEAN_PATH":str(root)}
    for mod in modules:
        name = mod + ".lean"
        data = Path(__file__).resolve().with_name(name).read_bytes()
        (root/name).write_bytes(data)
        result = subprocess.run([*cmd,"-j","1","-o",mod+".olean",name],
                                cwd=root,env=env,capture_output=True,text=True,timeout=120)
        log = result.stdout + result.stderr
        lines = [line for line in log.splitlines() if "depends on axioms:" in line]
        axioms = "[propext, Classical.choice, Quot.sound]" if mod=="CountWords" else "[propext, Quot.sound]"
        if result.returncode or not lines or any(not line.endswith(axioms) for line in lines):
            raise SystemExit(log or f"Missing axiom report for {mod}")
        if mod=="CountWords" and not any("counted_progressions_descend'" in item for item in lines):
            raise SystemExit("Missing final theorem audit")
        report["module_results"][mod] = {"sha256":hashlib.sha256(data).hexdigest(),"exit":result.returncode,"axioms":lines}
    bad_source = """import CountWords
open MathCase.Collatz.WordBound
example : (List.range 1048576).countP (fun r => decide (odds r 20 = 12)) = 125971 :=
  counted_progressions_descend.1
"""
    (root/"WrongCount.lean").write_text(bad_source,encoding="utf-8")
    bad = subprocess.run([*cmd,"-j","1","WrongCount.lean"],cwd=root,env=env,capture_output=True,text=True,timeout=120)
    log = bad.stdout + bad.stderr
    if bad.returncode != 1 or "Type mismatch" not in log or "125971" not in log:
        raise SystemExit("Unexpected negative control result: "+log)
    report["off_by_one_rejected"] = True
text = json.dumps(report,indent=2)+"\n"
if args.output:
    args.output.write_text(text,encoding="utf-8")
print(text,end="")
