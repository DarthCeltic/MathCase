import hashlib, json, os, pathlib, re, shutil, subprocess, sys, time
from datetime import datetime, timezone

MODULES = ["WordBound", "WordResidue", "CountWords", "ParameterizedDescent", "AtMostSeventeen27"]
LEAN_TOOLCHAIN = "leanprover/lean4:v4.33.1"

def find_lean():
    direct=shutil.which("lean")
    candidates=[]
    if direct: candidates.append(pathlib.Path(direct))
    elan_home=pathlib.Path(os.environ.get("ELAN_HOME",pathlib.Path.home()/".elan"))
    toolchain_dir=elan_home/"toolchains"/"leanprover--lean4---v4.33.1"/"bin"
    candidates.extend([toolchain_dir/"lean.exe",toolchain_dir/"lean"])
    for candidate in candidates:
        if candidate.is_file():
            check=subprocess.run([str(candidate),"--version"],capture_output=True,text=True,check=False)
            if check.returncode==0 and "4.33.1" in check.stdout: return [str(candidate)],sha(candidate)
    elan=shutil.which("elan")
    if elan:
        check=subprocess.run([elan,"run",LEAN_TOOLCHAIN,"lean","--version"],capture_output=True,text=True,check=False)
        if check.returncode==0 and "4.33.1" in check.stdout: return [elan,"run",LEAN_TOOLCHAIN,"lean"],None
    raise RuntimeError("Lean 4.33.1 is not installed; install the pinned toolchain before replay")

def sha(path):
    h=hashlib.sha256()
    with open(path,"rb") as f:
        for block in iter(lambda:f.read(1024*1024),b""): h.update(block)
    return h.hexdigest()
def utc(): return datetime.now(timezone.utc).isoformat(timespec="seconds")
def write_json(path,obj): path.write_text(json.dumps(obj,indent=2)+"\n",encoding="utf-8",newline="\n")
def main():
    root=pathlib.Path(__file__).resolve().parent
    binding=json.loads((root/"ATTEMPT-BINDING.json").read_text(encoding="utf-8"))
    sources=root/"sources"
    expected=binding["source_sha256"]
    if sha(pathlib.Path(__file__).resolve()) != binding["runner_sha256"]: raise SystemExit("runner hash mismatch; attempt not started")
    if sha(root/"audit_frontier.py") != binding["audit_script_sha256"]: raise SystemExit("audit script hash mismatch; attempt not started")
    LEAN_PREFIX,LEAN_BINARY_SHA=find_lean()
    actual={f"{m}.lean":sha(sources/f"{m}.lean") for m in MODULES}
    if actual != expected: raise SystemExit("source hash mismatch; attempt not started")
    if hashlib.sha256(binding["statement"].encode("utf-8")).hexdigest() != binding["statement_sha256"]: raise SystemExit("statement hash mismatch; attempt not started")
    attempt=pathlib.Path(sys.argv[1]).resolve()
    attempt.mkdir(parents=True,exist_ok=False)
    copied=attempt/"inputs"; build=attempt/"build"; logs=attempt/"logs"
    for d in (copied,build,logs): d.mkdir()
    for m in MODULES: (copied/f"{m}.lean").write_bytes((sources/f"{m}.lean").read_bytes())
    copied_hashes={f"{m}.lean":sha(copied/f"{m}.lean") for m in MODULES}
    env=os.environ.copy(); env["LEAN_PATH"]=str(build)+(os.pathsep+env.get("LEAN_PATH",""))
    start=utc(); results=[]; observed={}; status="PASS"
    for m in MODULES:
        cmd=LEAN_PREFIX+["-o",f"../build/{m}.olean",f"{m}.lean"]
        tic=time.monotonic(); timed_out=False
        try:
            cp=subprocess.run(cmd,cwd=copied,env=env,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=60,check=False)
            rc=cp.returncode; stdout=cp.stdout; stderr=cp.stderr
        except subprocess.TimeoutExpired as e:
            timed_out=True; rc=None; stdout=e.stdout or b""; stderr=e.stderr or b""
        elapsed=round(time.monotonic()-tic,6)
        sp=logs/f"{m}.stdout.txt"; ep=logs/f"{m}.stderr.txt"; sp.write_bytes(stdout); ep.write_bytes(stderr)
        combined=(stdout+stderr).decode("utf-8",errors="replace").replace("\r","")
        lines=re.findall(r"^'([^']+)' depends on axioms: \[([^\]]*)\]$",combined,re.M)
        for theorem,names in lines: observed[theorem.rsplit(".",1)[-1]]=sorted(x.strip() for x in names.split(",") if x.strip())
        rec={"module":m,"command":["lean", "-o",f"../build/{m}.olean",f"{m}.lean"],"exit_code":rc,"timed_out":timed_out,"elapsed_seconds":elapsed,"source_sha256":copied_hashes[f"{m}.lean"],"stdout_sha256":sha(sp),"stderr_sha256":sha(ep),"olean_sha256":sha(build/f"{m}.olean") if (build/f"{m}.olean").is_file() else None,"axiom_lines":lines}
        results.append(rec)
        if timed_out or rc != 0: status="TIMEOUT" if timed_out else "FAIL"; break
    audit_path=attempt/"arithmetic-audit.json"
    audit_cp=subprocess.run([sys.executable,"-B",str(root/"audit_frontier.py"),str(audit_path)],cwd=root,capture_output=True,check=False)
    (logs/"audit.stdout.txt").write_bytes(audit_cp.stdout); (logs/"audit.stderr.txt").write_bytes(audit_cp.stderr)
    audit_status="PASS" if audit_cp.returncode==0 else "FAIL"
    forbidden=[]
    for m in MODULES:
        txt=(copied/f"{m}.lean").read_text(encoding="utf-8-sig")
        for token in ("sorry","admit","native_decide"):
            if re.search(r"\b"+re.escape(token)+r"\b",txt): forbidden.append({"file":f"{m}.lean","token":token})
    if audit_status!="PASS" or forbidden or any("sorryAx" in str(v) for v in observed.values()):
        status="FAIL"
    receipt={"schema":"mathcase-collatz-at-most-seventeen-of-twenty-seven-replay-v1","status":status,"started_utc":start,"finished_utc":utc(),"case_id":binding["case_id"],"statement":binding["statement"],"statement_sha256":binding["statement_sha256"],"lean_version":"Lean 4.33.1","lean_binary_sha256":LEAN_BINARY_SHA,"binding_sha256":sha(root/"ATTEMPT-BINDING.json"),"network_or_provider_calls":0,"external_cost_usd":0,"retry_count":0,"per_module_timeout_seconds":60,"sources":actual,"copied_sources":copied_hashes,"module_results":results,"observed_axioms":observed,"arithmetic_audit_status":audit_status,"arithmetic_audit_sha256":sha(audit_path) if audit_path.is_file() else None,"arithmetic_audit_exit_code":audit_cp.returncode,"forbidden_source_tokens":forbidden}
    write_json(attempt/"receipt.json",receipt)
    manifest={"files":{str(x.relative_to(attempt)).replace("\\","/"):sha(x) for x in sorted(attempt.rglob("*")) if x.is_file() and x.name!="manifest.json"}}
    write_json(attempt/"manifest.json",manifest)
    print(json.dumps({"status":status,"attempt":str(attempt),"modules_completed":len(results),"axioms":observed,"audit_status":audit_status,"audit_sha256":receipt["arithmetic_audit_sha256"]},indent=2))
    raise SystemExit(0 if status=="PASS" else 1)
if __name__=="__main__": main()
