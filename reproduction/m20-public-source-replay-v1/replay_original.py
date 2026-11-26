"""Compile the hash-bound historical 363 M20 modules and 23 axiom audits on public dependencies."""
import argparse
import csv
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time
from bootstrap_original import env_for, LEAN_REV, MATHCASE_SHA, MATHLIB_SHA, git

COMPILE_SHA = "f18fcf6fa13df3308a31b13dcc067556a6c77a1de27cd1fffe5bdad298687036"
AXIOM_SHA = "f64f25c8bb87daf75679188515f10fa541c540d458bcb51a0bbcd3fb12b341aa"
INVENTORY_SHA = "55431285c8f0d3e71a18991f70c010b411c12f1e138f2e7739adad9cc94c9e69"
FINAL = "M20CompositionAllFamiliesV1"

def sha(b):
    return hashlib.sha256(b).hexdigest()

def file_hash(p):
    with p.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()

def now():
    return datetime.now(timezone.utc).isoformat()

def atomic_json(path, value):
    temp = path.with_suffix(".tmp")
    temp.write_bytes((json.dumps(value,indent=2)+"\n").encode("utf-8"))
    temp.replace(path)

def check_inputs(repo):
    package = repo/"reproduction"/"m15-m20-r2"
    phase = repo/"reproduction"/"m20-source-replay-2026-11-18"/"phase-2"
    stages = []
    for filename, expected, kind in [("compile-records.tsv", COMPILE_SHA,"compile"),
                                      ("axiom-records.tsv", AXIOM_SHA,"audit")]:
        file = phase/filename
        if file_hash(file) != expected:
            raise ValueError(f"Source manifest mismatch: {filename}")
        with file.open(encoding="utf-8",newline="") as stream:
            for row in csv.DictReader(stream,delimiter="\t"):
                rel = row["source_path"]
                if not rel.startswith("inputs/"):
                    raise ValueError("Unexpected historical path")
                source = (package/rel.removeprefix("inputs/")).resolve()
                if not source.is_relative_to(package.resolve()) or file_hash(source) != row["source_sha256"]:
                    raise ValueError(f"Source mismatch: {source.name}")
                name = row.get("module") or row["group"]
                if source.stem != name or re.fullmatch(r"[A-Za-z0-9_-]+",name) is None:
                    raise ValueError(f"Unexpected module {name}")
                stages.append((kind,name,source,row))
    if sum(kind=="compile" for kind,*_ in stages)!=363 or len(stages)!=386:
        raise ValueError("Expected 363 compilation stages and 23 axiom stages")
    return stages

def runtime(root,lake):
    mathlib = root/"mathlib"
    code = ('import json,shutil,os; print(json.dumps({"lean":shutil.which("lean"),'
            '"paths":os.environ.get("LEAN_PATH","")}))')
    env = env_for(root)
    stdout = subprocess.check_output([lake,"env",sys.executable,"-c",code],
                                    cwd=mathlib,env=env,encoding="utf-8")
    result = json.loads(stdout)
    lean = result["lean"]
    version = subprocess.check_output([lean,"--version"],cwd=mathlib,env=env,text=True).strip()
    if "version 4.33.1," not in version or LEAN_REV not in version:
        raise ValueError(f"Expected Lean 4.33.1 at pinned commit: {version}")
    paths=[str((mathlib/p).resolve()) for p in result["paths"].split(os.pathsep) if p]
    return lean,paths,version

def dependency_inventory(mathlib):
    inventory=Path(__file__).with_name("historical-mathlib-inventory.sha256")
    if file_hash(inventory)!=INVENTORY_SHA:
        raise ValueError("Historical dependency inventory mismatch")
    prefix="/mathcase/project/.lake/packages/mathlib/"
    same=0
    different=0
    missing=[]
    for line in inventory.read_text(encoding="ascii").splitlines():
        expected,path=line.split("  ")
        if not path.startswith(prefix):
            raise ValueError("Unexpected historical dependency path")
        target=mathlib/path.removeprefix(prefix)
        if not target.is_file():
            missing.append(path.removeprefix(prefix))
        elif file_hash(target)==expected:
            same+=1
        else:
            different+=1
    if same+different+len(missing)!=346:
        raise ValueError("Unexpected number of dependencies")
    return {"historical_list_sha256":INVENTORY_SHA,"byte_identical":same,"different":different,"absent":missing}

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument("workspace",type=Path)
    ap.add_argument("output",type=Path,help="New or empty directory for this run")
    ap.add_argument("--lake",default="lake")
    ap.add_argument("--smoke",action="store_true",help="Compile one historical shard only")
    ap.add_argument("--timeout",type=int,default=600,help="Seconds per Lean invocation")
    args=ap.parse_args()
    root=args.workspace.resolve()
    out=args.output.resolve()
    if args.timeout<1:
        ap.error("--timeout must be positive")
    bootstrap_file=root/"bootstrap-receipt.json"
    if not bootstrap_file.is_file():
        ap.error("Run bootstrap_original.py in this workspace first; bootstrap-receipt.json is required")
    bootstrap=json.loads(bootstrap_file.read_bytes())
    bootstrap_script=Path(__file__).with_name("bootstrap_original.py").resolve()
    bootstrap_script_sha=file_hash(bootstrap_script)
    if (bootstrap.get("schema")!="mathcase-original-m20-bootstrap-v1" or
        bootstrap.get("status")!="PASS" or
        bootstrap.get("source_commit")!=MATHCASE_SHA or
        bootstrap.get("mathlib_commit")!=MATHLIB_SHA or
        bootstrap.get("bootstrap_script_sha256")!=bootstrap_script_sha):
        ap.error("Bootstrap receipt does not bind this public runner's pinned inputs and bootstrap script")
    if (bootstrap.get("cache_exit_code")!=0 or M20_IMPORT not in bootstrap.get("cache_modules",[]) or
        bootstrap.get("lake_manifest_sha256")!=file_hash(root/"mathlib"/"lake-manifest.json")):
        ap.error("Bootstrap receipt does not bind the required public cache and Mathlib dependency lock")
    for log_name,field in [("cache-get.stdout","cache_stdout_sha256"),
                           ("cache-get.stderr","cache_stderr_sha256")]:
        log=root/log_name
        if not log.is_file() or file_hash(log)!=bootstrap.get(field):
            ap.error(f"Bootstrap log does not match its receipt: {log_name}")
    lake_exe=shutil.which(args.lake)
    if not lake_exe:
        ap.error("Install Lean 4.33.1 with Lake or pass --lake PATH")
    lake_sha=file_hash(Path(lake_exe).resolve())
    python_sha=file_hash(Path(sys.executable).resolve())
    if bootstrap.get("lake_executable_sha256")!=lake_sha:
        ap.error("Lake executable differs from the pinned bootstrap receipt")
    if bootstrap.get("python_executable_sha256")!=python_sha:
        ap.error("Python executable differs from the pinned bootstrap receipt")
    if bootstrap.get("lean_version") is None:
        ap.error("Bootstrap receipt is missing Lean version output")
    if bootstrap.get("lean_commit")!=LEAN_REV:
        ap.error("Bootstrap receipt is missing the pinned Lean commit")
    out.mkdir(exist_ok=True,parents=True)
    if any(out.iterdir()):
        ap.error("Output must be new or empty. A previous attempt must be preserved.")
    status={"schema":"mathcase-original-m20-public-replay-v2","started_utc":now(),
            "status":"PREPARING","mode":"smoke" if args.smoke else "full",
            "source_commit":MATHCASE_SHA,"mathlib_commit":MATHLIB_SHA,
            "runner_sha256":file_hash(Path(__file__).resolve()),
            "bootstrap_script_sha256":bootstrap_script_sha,
            "bootstrap_receipt_sha256":file_hash(bootstrap_file),
            "python_version":sys.version.split()[0],
            "python_executable_sha256":python_sha,
            "lake_executable_sha256":lake_sha,
            "bootstrap_receipt_schema":bootstrap["schema"],
            "bootstrap_started_utc":bootstrap["started_utc"],
            "bootstrap_finished_utc":bootstrap["finished_utc"],
            "command_template":"python -B replay_original.py <workspace> <fresh-output> [--smoke] [--timeout SECONDS]",
            "lean_jobs":1,"timeout_seconds_per_stage":args.timeout,
            "completed_compiles":0,"completed_audits":0,"completed_queries":0,
            "original_olean_matches":0,"nov18_phase2_olean_matches":0}
    statusfile=out/"status.json"
    atomic_json(statusfile,status)
    try:
        for folder,rev in [(root/"source",MATHCASE_SHA),(root/"mathlib",MATHLIB_SHA)]:
            if git(folder,"rev-parse","HEAD",capture=True).stdout.strip()!=rev:
                raise ValueError(f"Checkout not at expected revision: {folder.name}")
        stages=check_inputs(root/"source")
        status["checked_input_files"]=len(stages)
        lean,paths,version=runtime(root,args.lake)
        status["toolchain"]=version
        if bootstrap["lean_version"].strip()!=version.strip():
            raise ValueError("Lean version output differs from the pinned bootstrap receipt")
        status["lean_executable_sha256"]=file_hash(Path(lean).resolve())
        if bootstrap.get("lean_executable_sha256")!=status["lean_executable_sha256"]:
            raise ValueError("Lean executable differs from the pinned bootstrap receipt")
        status["historical_mathlib_inventory"]=dependency_inventory(root/"mathlib")
        if status["historical_mathlib_inventory"]["absent"]:
            raise ValueError("Required Mathlib dependency OLEANs missing; run the public cache bootstrap")
        staging=out/"sources"
        staging.mkdir()
        oleans=out/"oleans"
        oleans.mkdir()
        logs=out/"logs"
        logs.mkdir()
        env=env_for(root)
        env["LEAN_PATH"]=os.pathsep.join([str(oleans),*paths])
        if args.smoke:
            stages=stages[:1]
        for kind,name,source,row in stages:
            start=time.monotonic()
            status.update(status="RUNNING",stage=name,stage_started_utc=now())
            atomic_json(statusfile,status)
            target=staging/(name+".lean")
            shutil.copyfile(source,target)
            if file_hash(target)!=row["source_sha256"]:
                raise ValueError(f"Staged source mismatch: {name}")
            args_lean=[lean,"-j","1","--root=."]
            if kind=="compile":
                args_lean+=["-o",str(oleans/(name+".olean"))]
            args_lean.append(target.name)
            stdout_file=logs/(name+".stdout")
            stderr_file=logs/(name+".stderr")
            with stdout_file.open("wb") as sout,stderr_file.open("wb") as serr:
                rc=subprocess.run(args_lean,cwd=staging,env=env,stdout=sout,stderr=serr,
                                  timeout=args.timeout).returncode
            stdout=stdout_file.read_bytes()
            normalized=stdout.replace(b"\r\n",b"\n")
            item={"kind":kind,"module":name,"source_sha256":row["source_sha256"],"exit_code":rc,
                  "stdout_sha256":sha(stdout),"stderr_sha256":file_hash(stderr_file),
                  "normalized_stdout_matches":sha(normalized)==row["stdout_sha256"],
                  "wall_seconds":round(time.monotonic()-start,3)}
            if rc==0 and kind=="compile":
                digest=file_hash(oleans/(name+".olean"))
                item.update(olean_sha256=digest,nov18_phase2_olean_match=(digest==row["olean_sha256"]),
                            historical_expected_olean_match=(digest==row["expected_olean_sha256"]))
            with (out/"stages.jsonl").open("a",encoding="utf-8") as stream:
                stream.write(json.dumps(item)+"\n")
            if rc:
                raise ValueError(f"Lean returned {rc} at {name}. Inspect the stage logs.")
            if kind=="audit" or name==FINAL:
                if not item["normalized_stdout_matches"] or b"sorryAx" in normalized:
                    raise ValueError(f"Unexpected axiom output at {name}. Inspect the stage logs.")
            if kind=="audit":
                status["completed_audits"]+=1
                status["completed_queries"]+=sum(line.startswith("#print axioms ") for line in target.read_text("utf8").splitlines())
            else:
                status["completed_compiles"]+=1
                status["original_olean_matches"]+=item["historical_expected_olean_match"]
                status["nov18_phase2_olean_matches"]+=item["nov18_phase2_olean_match"]
            status["last_completed_stage"]=name
            atomic_json(statusfile,status)
        if not args.smoke and status["completed_queries"]!=4262:
            raise ValueError("Unexpected axiom query count")
        status["status"]="SMOKE_PASS" if args.smoke else "PASS"
    except subprocess.TimeoutExpired:
        status["status"]="TIMED_OUT"
    except (OSError,ValueError,subprocess.CalledProcessError) as exc:
        status.update(status="FAILED",detail=str(exc))
    status["finished_utc"]=now()
    atomic_json(statusfile,status)
    print(json.dumps(status,indent=2))
    return 0 if status["status"] in ("SMOKE_PASS","PASS") else 1

if __name__=="__main__":
    raise SystemExit(main())
