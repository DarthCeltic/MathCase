from __future__ import annotations
import argparse, hashlib, json, os, subprocess, time
from pathlib import Path

def sha256(path: Path) -> str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024), b''):
            h.update(block)
    return h.hexdigest()

def run(command, cwd, env):
    start=time.monotonic()
    p=subprocess.run(command,cwd=cwd,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,encoding='utf-8',errors='replace')
    return p.returncode,p.stdout,time.monotonic()-start

ap=argparse.ArgumentParser(description='Compile the generic Collatz coefficient-cutoff proof from fresh source.')
ap.add_argument('--lean',required=True,help='Path to the pinned Lean 4.33.1 executable')
ap.add_argument('--out',required=True,help='A new or empty output directory outside this package')
a=ap.parse_args()
root=Path(__file__).resolve().parent
lean=Path(a.lean).resolve()
out=Path(a.out).resolve()
if not lean.is_file(): raise SystemExit('LEAN_EXECUTABLE_NOT_FOUND')
try:
    out.relative_to(root)
    raise SystemExit('OUT_DIR_MUST_BE_OUTSIDE_PACKAGE')
except ValueError:
    pass
if out == root: raise SystemExit('OUT_DIR_MUST_BE_OUTSIDE_PACKAGE')
out.mkdir(parents=True,exist_ok=True)
if any(out.iterdir()): raise SystemExit('OUT_DIR_NOT_EMPTY: stale OLEAN reuse is refused')
env=os.environ.copy()
paths=[str(root),str(out)]
if env.get('LEAN_PATH'): paths.append(env['LEAN_PATH'])
env['LEAN_PATH']=os.pathsep.join(paths)
evidence=root/'evidence'; evidence.mkdir(exist_ok=True)
pins=json.loads((root/'source-pins.json').read_text(encoding='utf-8'))
pin_results=[]
for name,expected in pins['source_hashes'].items():
    path=root/name
    actual=sha256(path) if path.is_file() else None
    pin_results.append({'path':name,'expected_sha256':expected,'actual_sha256':actual,'match':actual==expected})
if not all(x['match'] for x in pin_results): raise SystemExit('SOURCE_PIN_MISMATCH')
files={}
start_total=time.monotonic()
code,version,elapsed=run([str(lean),'--version'],root,env)
(evidence/'lean-version.txt').write_text(version,encoding='utf-8')
files['lean_version']={'exit':code,'sha256':sha256(evidence/'lean-version.txt'),'elapsed_seconds':elapsed,'text':version.strip()}
if code: raise SystemExit('LEAN_VERSION_FAILED')
if 'Lean (version 4.33.1' not in version: raise SystemExit('LEAN_VERSION_MISMATCH')
for name in ('EnvelopeLemma','CoefficientCutoff'):
    src=root/f'{name}.lean'; log=evidence/f'{name}.stdout.txt'; olean=out/f'{name}.olean'
    rel_olean=os.path.relpath(olean,root)
    command=[str(lean),'-o',rel_olean,src.name]
    ec,text,elapsed=run(command,root,env)
    log.write_text(text,encoding='utf-8')
    files[name]={'command':[lean.name,'-o',rel_olean.replace('\\','/'),src.name],'exit':ec,'elapsed_seconds':elapsed,'source_sha256':sha256(src),'stdout_sha256':sha256(log),'olean_sha256':sha256(olean) if olean.exists() else None}
    if ec: raise SystemExit(f'{name.upper()}_COMPILE_FAILED:{ec}')
neg=root/'negative-control'/'WrongCutoff.lean'; neglog=evidence/'WrongCutoff.stdout.txt'; neg_rel=neg.relative_to(root).as_posix()
ec,text,elapsed=run([str(lean),neg_rel],root,env)
neglog.write_text(text,encoding='utf-8')
negative_ok=(ec != 0 and 'decide' in text.lower() and '678' in text and 'false' in text.lower())
files['wrong_cutoff_control']={'command':[lean.name,neg_rel],'exit':ec,'elapsed_seconds':elapsed,'source_sha256':sha256(neg),'stdout_sha256':sha256(neglog),'expected_rejection':negative_ok}
if not negative_ok: raise SystemExit('NEGATIVE_CONTROL_DID_NOT_REJECT_EXPECTED_FALSE_CUTOFF')
receipt={'schema':'mathcase-collatz-coefficient-cutoff-replay-v1','status':'PASS','lean_executable_name':lean.name,'lean_executable_sha256':sha256(lean),'lean_version_sha256':files['lean_version']['sha256'],'source_pins':pin_results,'source_context_commit':pins['context_source_commit'],'fresh_empty_output_directory':True,'output_directory_initially_empty':True,'files':files,'no_external_model_or_provider_calls':True,'network_access':'No network command was invoked; OS-level isolation was not configured.','total_elapsed_seconds':time.monotonic()-start_total}
(evidence/'replay-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8')
print(json.dumps(receipt,indent=2))