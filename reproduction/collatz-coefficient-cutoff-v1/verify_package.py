from __future__ import annotations
import argparse, hashlib, json, re
from pathlib import Path

def sha(path: Path) -> str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for b in iter(lambda:f.read(1024*1024),b''): h.update(b)
    return h.hexdigest()

p=argparse.ArgumentParser(description='Verify the saved Lean coefficient-cutoff run and package bytes.')
p.add_argument('--output',required=True,help='The fresh output directory used by replay.py')
a=p.parse_args()
root=Path(__file__).resolve().parent
out=Path(a.output).resolve()
checks=[]
def check(name, ok, detail): checks.append({'check':name,'pass':bool(ok),'detail':detail})

pins=json.loads((root/'source-pins.json').read_text(encoding='utf-8'))
for name,expected in pins['source_hashes'].items():
    path=root/name; actual=sha(path) if path.is_file() else None
    check('source_pin:'+name,actual==expected,actual or 'missing')
receipt_path=root/'evidence/replay-receipt.json'
receipt=json.loads(receipt_path.read_text(encoding='utf-8'))
check('receipt_pass',receipt.get('status')=='PASS',receipt.get('status'))
check('lean_4_33_1',receipt.get('files',{}).get('lean_version',{}).get('text','').startswith('Lean (version 4.33.1'),receipt.get('files',{}).get('lean_version',{}).get('text'))
check('official_binary_hash',receipt.get('lean_executable_sha256')=='af49bacfabaa1fea71332ca0feae0fa1a60912219d5902291adc79f905bffb8d',receipt.get('lean_executable_sha256'))
for name in ('EnvelopeLemma','CoefficientCutoff'):
    item=receipt.get('files',{}).get(name,{})
    output=out/(name+'.olean')
    check('compile_exit:'+name,item.get('exit')==0,str(item.get('exit')))
    check('olean_hash:'+name,output.is_file() and sha(output)==item.get('olean_sha256'),sha(output) if output.exists() else 'missing')
    log=root/'evidence'/f'{name}.stdout.txt'
    check('log_hash:'+name,log.is_file() and sha(log)==item.get('stdout_sha256'),sha(log) if log.exists() else 'missing')
    command=item.get('command',[])
    check('relative_compile_command:'+name,len(command)==4 and command[1]=='-o' and command[3]==name+'.lean' and not re.search(r'[A-Za-z]:\\',str(command)),str(command))
log=(root/'evidence/CoefficientCutoff.stdout.txt').read_text(encoding='utf-8')
for name in ('division_cutoff_iff','coefficient_inequality_iff_cutoff','all_admitted_envelopes_below_iff_cutoff'):
    check('axiom_audit:'+name,name in log and 'sorryAx' not in log and 'native_decide' not in log,'full axiom text is in evidence/CoefficientCutoff.stdout.txt')
check('expected_axioms','Classical.choice' in log and 'propext' in log and 'Quot.sound' in log,'generic cutoff theorem reports [propext, Classical.choice, Quot.sound]')
neg_receipt=receipt.get('files',{}).get('wrong_cutoff_control',{})
neg_path=root/'evidence/WrongCutoff.stdout.txt'
negtext=neg_path.read_text(encoding='utf-8') if neg_path.exists() else ''
check('false_cutoff_rejected',neg_receipt.get('expected_rejection') is True and neg_receipt.get('exit')==1 and '678' in negtext and 'false' in negtext.lower(),'Lean rejected false cutoff 678')
check('negative_log_path_clean',not re.search(r'[A-Za-z]:\\',negtext),'relative diagnostic contains no drive path')
check('negative_command_relative',neg_receipt.get('command')==['lean.exe','negative-control/WrongCutoff.lean'],str(neg_receipt.get('command')))
ctx=json.loads((root/'evidence/context-source-verification.json').read_text(encoding='utf-8'))
check('context_sources_pinned',ctx.get('all_checks_pass') is True and ctx.get('row_count')==8,ctx.get('context_commit'))
ind=json.loads((root/'evidence/python-independent-check.json').read_text(encoding='utf-8'))
ctx_rows=[(x.get('steps'),x.get('odd_cap'),x.get('cutoff')) for x in ctx.get('rows',[])]
ind_rows=[(x.get('steps'),x.get('odd_cap'),x.get('coefficient_cutoff')) for x in ind.get('cases',[])]
check('context_cutoffs_match_python',ctx_rows==ind_rows,str(len(ctx_rows))+' source-bound parameter rows')
check('python_independent_table',ind.get('count')==8 and all(x.get('all_admitted_counts_pass_at_cutoff') and x.get('cap_fails_one_below') for x in ind.get('cases',[])),f"{ind.get('count')} exact integer rows")
check('no_external_calls',receipt.get('no_external_model_or_provider_calls') is True,'$0 provider calls')
result={'schema':'mathcase-collatz-coefficient-cutoff-verification-v1','status':'PASS' if all(c['pass'] for c in checks) else 'FAIL','receipt_sha256':sha(receipt_path),'checks':checks}
path=root/'evidence/verification.json'
path.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,indent=2))
if result['status']!='PASS': raise SystemExit(1)