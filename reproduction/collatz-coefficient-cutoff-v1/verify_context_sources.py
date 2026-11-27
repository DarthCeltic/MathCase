from __future__ import annotations
import argparse, hashlib, json, re, subprocess
from pathlib import Path
p=argparse.ArgumentParser(description='Verify the pinned public-source lines for the eight parity-window coefficient cutoffs.')
p.add_argument('--repo',required=True,help='MathCase Git checkout containing the pinned commit')
a=p.parse_args(); repo=Path(a.repo).resolve(); pkg=Path(__file__).resolve().parent
pins=json.loads((pkg/'source-pins.json').read_text(encoding='utf-8'))
commit=pins['context_source_commit']; rows=[]
for item in pins.get('reference_window_sources',[]):
    spec=f"{commit}:{item['path']}"
    pr=subprocess.run(['git','-C',str(repo),'cat-file','blob',spec],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
    data=pr.stdout if pr.returncode==0 else b''
    actual=hashlib.sha256(data).hexdigest() if pr.returncode==0 else None
    text=data.decode('utf-8','replace') if pr.returncode==0 else ''
    matches=[line.strip() for line in text.splitlines() if item['line_pattern'] in line]
    source_match=actual==item['sha256']
    rows.append({'steps':item['steps'],'odd_cap':item['odd_cap'],'cutoff':item['cutoff'],'path':item['path'],'expected_sha256':item['sha256'],'actual_sha256':actual,'source_hash_match':source_match,'threshold_line_found':bool(matches),'threshold_lines':matches[:3]})
result={'schema':'mathcase-collatz-envelope-context-source-verification-v1','context_commit':commit,'row_count':len(rows),'all_checks_pass':bool(rows) and all(x['source_hash_match'] and x['threshold_line_found'] for x in rows),'rows':rows}
out=pkg/'evidence/context-source-verification.json'; out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,indent=2))
if not result['all_checks_pass']: raise SystemExit(1)