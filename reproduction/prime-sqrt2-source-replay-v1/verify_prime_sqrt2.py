"""Compile the exact public parent and sqrt(2) child against pinned public Mathlib."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

PIN = "0df444a360eaa60ab8c11dca51a86af692955474"
TOOLCHAIN = "leanprover/lean4:v4.33.1"
SOURCES = {
    "MathCaseCandidate": "34b5edc1d9b5bbd5b750e23184edcfaa481de195ed504a28f379b059497caaa9",
    "MathCaseSqrtTwoInfiniteDescent": "7e21fcfc7fe30109ceb79a75dc6d40d6de2860fdaa74588351ab6d08b43a01bd",
}
IMPORTS = ["Mathlib.Data.Rat.Lemmas", "Mathlib.Data.Nat.Prime.Basic",
           "Mathlib.NumberTheory.Real.Irrational"]
MODULE_DIR = Path("proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2")
AUDIT = """import MathCaseSqrtTwoInfiniteDescent

theorem exactParent : ∀ p n : Nat, Nat.Prime p → p ∣ n ^ 2 → p ∣ n := mathcase_candidate
theorem exactChild : Irrational (Real.sqrt (2 : ℝ)) := MathCaseInfiniteDescent.sqrt_two_irrational
#print axioms exactParent
#print axioms exactChild
"""
WRONG = """import MathCaseSqrtTwoInfiniteDescent
example : ∀ p n : Nat, p ∣ n ^ 2 → p ∣ n := mathcase_candidate
"""
EXPECTED = {"propext", "Classical.choice", "Quot.sound"}


class StageTimeout(Exception):
    def __init__(self, stage, limit_seconds, elapsed_s):
        self.stage = stage
        self.limit_seconds = limit_seconds
        self.elapsed_s = elapsed_s
        super().__init__(f"{stage} exceeded {limit_seconds} seconds")


class StageFailure(Exception):
    def __init__(self, stage, limit_seconds, elapsed_s, exit_code, message):
        self.stage = stage
        self.limit_seconds = limit_seconds
        self.elapsed_s = elapsed_s
        self.exit_code = exit_code
        self.message = message
        super().__init__(message)


def digest(data):
    return hashlib.sha256(data).hexdigest()

def run(args, cwd, env, seconds, check=True):
    result = subprocess.run(args,cwd=cwd,env=env,capture_output=True,text=True,
                            encoding="utf-8",errors="replace",timeout=seconds)
    if check and result.returncode:
        raise RuntimeError(f"{Path(str(args[0])).name} exited {result.returncode}\n"+
                           result.stdout[-2500:] + result.stderr[-2500:])
    return result


def run_stage(args, cwd, env, seconds, stage, check=True):
    started = time.monotonic()
    try:
        result = run(args, cwd, env, seconds, check=False)
    except subprocess.TimeoutExpired as error:
        raise StageTimeout(stage, seconds, time.monotonic() - started) from error
    elapsed_s = time.monotonic() - started
    if check and result.returncode:
        raise StageFailure(stage, seconds, elapsed_s, result.returncode,
                           f"Lean exited {result.returncode} during {stage}.")
    return result, elapsed_s


def write_receipt(report, output):
    body = json.dumps(report, indent=2) + "\n"
    if output:
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(body, encoding="utf-8")
    return body


def git_head(directory, env):
    return run(["git","rev-parse","HEAD"],directory,env,30).stdout.strip()

def bootstrap(path, lake, env):
    if not path.exists():
        path.parent.mkdir(parents=True, exist_ok=True)
        run(["git","clone","--depth","1","--branch","v4.33.1","--single-branch",
             "https://github.com/leanprover-community/mathlib4.git",str(path)],
            path.parent,env,1800)
    if git_head(path,env) != PIN:
        raise RuntimeError("The specified Mathlib directory has a different revision.")
    print("Fetching the pinned public Mathlib cache for the three imports ...",file=sys.stderr,flush=True)
    # Keep first-install download and cache progress visible.
    subprocess.run([lake,"exe","cache","get",*IMPORTS],cwd=path,env=env,timeout=1800,check=True)

def find_repo(explicit):
    if explicit:
        path = explicit.resolve()
        if not (path/MODULE_DIR).is_dir():
            raise RuntimeError("Use --repo to specify a public MathCase checkout.")
        return path
    for path in [Path.cwd(),*Path(__file__).resolve().parents]:
        if (path/MODULE_DIR).is_dir():
            return path
    raise RuntimeError("The public MathCase source directory was not found. Pass --repo.")

def gather_paths(mathlib, env):
    if git_head(mathlib,env) != PIN:
        raise RuntimeError("Mathlib revision does not match the recorded proof environment.")
    lock = json.loads((mathlib/"lake-manifest.json").read_bytes())
    packages = mathlib/lock.get("packagesDir",".lake/packages")
    paths = [mathlib/".lake/build/lib/lean"]
    revisions = {"mathlib":PIN}
    if run(["git","diff","--quiet","HEAD","--","Mathlib","lake-manifest.json"],mathlib,env,120,False).returncode:
        raise RuntimeError("Mathlib sources or manifest differ from its pinned revision.")
    for item in lock["packages"]:
        directory = packages/item["name"]
        if git_head(directory,env) != item["rev"]:
            raise RuntimeError("Missing or mismatched dependency: "+item["name"])
        revisions[item["name"]] = item["rev"]
        paths.append(directory/".lake/build/lib/lean")
    for module in IMPORTS:
        obj = paths[0]/(module.replace(".","/")+".olean")
        if not obj.is_file():
            raise RuntimeError("Missing dependency object for "+module+". Use --bootstrap first.")
    return paths,revisions

def checked_source(path, sha):
    data = path.read_bytes()
    if digest(data) == sha:
        return data
    canonical = data.replace(b"\r\n",b"\n")
    if digest(canonical) == sha:
        return canonical
    raise RuntimeError("Source differs from the pinned public bytes: "+path.name)

def axioms(output, target):
    marker = "'"+target+"' depends on axioms: ["
    matches = [line.strip() for line in output.splitlines() if line.startswith(marker)]
    if len(matches)!=1 or not matches[0].endswith("]"):
        raise RuntimeError("Missing compiler axiom result for "+target)
    values = {i.strip() for i in matches[0][len(marker):-1].split(",")}
    if not values or not values <= EXPECTED:
        raise RuntimeError("Unexpected axiom for "+target+": "+str(values))
    return sorted(values)


def record_failure(report, output, error):
    timed_out = isinstance(error, StageTimeout)
    status = "TIMEOUT" if timed_out else "FAILED"
    report.update(status=status, stage=error.stage,
                  limit_seconds=error.limit_seconds,
                  elapsed_s=round(error.elapsed_s, 3))
    report.pop("active_stage", None)
    stage_record = {"status": status, "limit_seconds": error.limit_seconds,
                    "elapsed_s": round(error.elapsed_s, 3)}
    if timed_out:
        stage_record["exit_code"] = 124
        report["exit_code"] = 124
    else:
        stage_record["exit_code"] = error.exit_code
        stage_record["message"] = error.message
        report["exit_code"] = error.exit_code
    report.setdefault("stages", {})[error.stage] = stage_record
    return write_receipt(report, output)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    source=parser.add_mutually_exclusive_group(required=True)
    source.add_argument("--mathlib",type=Path,help="existing official pinned Mathlib checkout with Lake dependencies and caches")
    source.add_argument("--bootstrap",type=Path,help="create or reuse a pinned Mathlib checkout and download its dependency cache")
    parser.add_argument("--repo",type=Path,help="MathCase repository (normally auto-detected)")
    parser.add_argument("--lean",default="lean",help="Lean executable (or elan shim)")
    parser.add_argument("--lake",default="lake",help="Lake executable for --bootstrap")
    parser.add_argument("--output",type=Path,help="write JSON receipt here")
    parser.add_argument("--stage-timeout",type=int,default=600,
                        help="wall-clock limit for each Lean stage in seconds (default: 600)")
    options=parser.parse_args()
    if options.stage_timeout < 1:
        parser.error("--stage-timeout must be positive")
    repo=find_repo(options.repo)
    base={**os.environ,"ELAN_TOOLCHAIN":TOOLCHAIN}
    base.pop("LEAN_PATH",None)
    lean=shutil.which(options.lean)
    if not lean:
        raise RuntimeError("Install Lean 4.33.1 with elan, or use --lean.")
    version=run([lean,"--version"],repo,base,120).stdout.strip()
    if "version 4.33.1," not in version:
        raise RuntimeError("Wrong Lean version: "+version)
    mathlib=(options.mathlib or options.bootstrap).resolve()
    if options.bootstrap:
        lake=shutil.which(options.lake)
        if not lake: raise RuntimeError("The Lake executable was not found.")
        bootstrap(mathlib,lake,base)
    print("Checking pinned Mathlib and dependency revisions ...",file=sys.stderr,flush=True)
    paths,revisions=gather_paths(mathlib,base)
    report={"schema":"mathcase-public-prime-sqrt2-source-replay-v1","status":"RUNNING",
            "lean":version,"git_revisions":revisions,"dependencies":"precompiled Mathlib dependency cache",
            "compile_order":list(SOURCES),"stage_timeout_seconds":options.stage_timeout,
            "modules":{},"stages":{}}

    def begin_stage(stage):
        report["active_stage"] = stage
        write_receipt(report, options.output)

    def finish_stage(stage, status, elapsed_s, exit_code):
        report["stages"][stage] = {"status":status,
            "limit_seconds":options.stage_timeout,"elapsed_s":round(elapsed_s, 3),
            "exit_code":exit_code}
        report.pop("active_stage", None)
        write_receipt(report, options.output)

    try:
        with tempfile.TemporaryDirectory(prefix="mathcase-sqrt2-") as tmp:
            wd=Path(tmp)
            env={**base,"LEAN_PATH":os.pathsep.join(map(str,[wd,*paths]))}
            for name,sha in SOURCES.items():
                filename=name+".lean"
                data=checked_source(repo/MODULE_DIR/filename,sha)
                (wd/filename).write_bytes(data)
                stage="compile:"+name
                print("Compiling "+filename+" ...",file=sys.stderr,flush=True)
                begin_stage(stage)
                compiled,elapsed_s=run_stage([lean,"-j","1","-o",name+".olean",filename],
                                             wd,env,options.stage_timeout,stage)
                obj=wd/(name+".olean")
                if not obj.is_file():
                    raise StageFailure(stage,options.stage_timeout,elapsed_s,None,
                                       "No compiled object was emitted for "+name)
                report["modules"][name]={"source_sha256":digest(data),
                    "compiled_sha256":digest(obj.read_bytes()),"exit":compiled.returncode,
                    "elapsed_s":round(elapsed_s,3)}
                finish_stage(stage,"PASS",elapsed_s,compiled.returncode)

            (wd/"ExactTargets.lean").write_bytes(AUDIT.encode("utf-8"))
            stage="audit:ExactTargets"
            print("Checking the exact theorem types and axioms ...",file=sys.stderr,flush=True)
            begin_stage(stage)
            audit,audit_elapsed=run_stage([lean,"-j","1","ExactTargets.lean"],wd,env,
                                          options.stage_timeout,stage)
            try:
                report["exact_target_axioms"]={name:axioms(audit.stdout,name)
                    for name in ("exactParent","exactChild")}
            except RuntimeError as error:
                raise StageFailure(stage,options.stage_timeout,audit_elapsed,
                                   audit.returncode,str(error)) from error
            report["challenge_sha256"]=digest(AUDIT.encode("utf-8"))
            finish_stage(stage,"PASS",audit_elapsed,audit.returncode)

            (wd/"RemovedPrime.lean").write_bytes(WRONG.encode("utf-8"))
            stage="negative-control:RemovedPrime"
            print("Testing rejection when the primality assumption is removed ...",file=sys.stderr,flush=True)
            begin_stage(stage)
            control,control_elapsed=run_stage([lean,"-j","1","RemovedPrime.lean"],wd,env,
                                              options.stage_timeout,stage,check=False)
            diagnostics=control.stdout+control.stderr
            if (control.returncode!=1 or "Type mismatch" not in diagnostics
                    or "mathcase_candidate" not in diagnostics):
                raise StageFailure(stage,options.stage_timeout,control_elapsed,
                                   control.returncode,
                                   "The dropped-primality control did not give the expected rejection.")
            report["dropped_primality_control"]="REJECTED"
            finish_stage(stage,"REJECTED",control_elapsed,control.returncode)
    except (StageTimeout,StageFailure) as error:
        body=record_failure(report,options.output,error)
        print(body,end="")
        print(str(error),file=sys.stderr)
        return 124 if isinstance(error,StageTimeout) else 1

    report["status"]="PASS"
    body=write_receipt(report,options.output)
    print(body,end="")
    return 0
if __name__=="__main__":
    try: raise SystemExit(main())
    except (OSError,RuntimeError,subprocess.SubprocessError) as error:
        sys.exit(str(error))
