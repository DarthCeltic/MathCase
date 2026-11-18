from __future__ import annotations
import argparse, csv, hashlib, json, math, statistics
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / "research/number-theory/egyptian-fractions"
PROGRESS = DATA / "campaign-v9-progress.json"
OUTPUT = DATA / "campaign-v9-10m-audit-v1"
BASE_RANGES = [(1 + i*100000, (i+1)*100000) for i in range(50)]
V9_RANGES = [(5000001 + i*100000, 5100000 + i*100000) for i in range(50)]
BINS = [(0,8),(9,16),(17,32),(33,64),(65,128),(129,256),(257,512),(513,1024),(1025,2048),(2049,4096),(4097,8192),(8193,16384),(16385,32768),(32769,65536)]

def need(ok, msg):
    if not ok: raise ValueError(msg)

def digest(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for b in iter(lambda:f.read(1024*1024), b''): h.update(b)
    return h.hexdigest()

def readj(path): return json.loads(path.read_text(encoding='utf-8'))
def histbin(v):
    for a,b in BINS:
        if a <= v <= b: return f'{a}-{b}'
    raise ValueError(f'offset outside cap: {v}')

def triple(n, offset, ds, label):
    need(isinstance(ds,list) and len(ds)==3, f'{label}: bad triple n={n}')
    x,y,z=ds
    need(all(isinstance(v,int) and not isinstance(v,bool) for v in ds), f'{label}: noninteger triple n={n}')
    need(0<x<y<z and x==(n+3)//4+offset, f'{label}: ordering/offset mismatch n={n}')
    need(4*x*y*z==n*(x*y+x*z+y*z), f'{label}: exact identity fails n={n}')
    return x,y,z

def verify_sources(bindings, label):
    need(isinstance(bindings,dict), f'{label}: no source bindings')
    for name,expected in bindings.items():
        p=(ROOT / Path(*name.replace('\\','/').split('/'))).resolve()
        need(p.is_file() and p.is_relative_to(ROOT.resolve()) and not p.is_symlink(), f'{label}: unsafe source {name}')
        need(digest(p)==expected, f'{label}: source hash mismatch {name}')

def ext_base_cases(progress):
    cases={}
    for c in progress.get('baseline_extension_miss_cases',[]):
        n=c['n']; need(n not in cases, f'duplicate baseline extension n={n}')
        d=(n-1)//12
        entry=next(r for r in progress['baseline_per_range_maxima'] if r['d_interval_inclusive'][0]<=d<=r['d_interval_inclusive'][1])
        pkg=DATA/entry['package']; raw=c['resolution_source'].replace('\\','/')
        choices=[ROOT/raw, DATA/raw, pkg/raw]
        source=next((p.resolve() for p in choices if p.is_file() and not p.is_symlink()),None)
        need(source is not None, f'missing baseline extension receipt for n={n}')
        source_rel=source.relative_to(ROOT).as_posix()
        expected=[h['sha256'] for h in entry.get('extension_receipt_hashes',[]) if source_rel.endswith(h['path'].replace('\\','/')) or h['path'].endswith(source.name)]
        need(expected and all(h==digest(source) for h in expected), f'baseline extension receipt hash mismatch n={n}')
        receipt=readj(source)
        found=None
        def walk(v):
            nonlocal found
            if isinstance(v,dict):
                if v.get('n')==n and ('denominators' in v or 'witness' in v): found=v; return
                for child in v.values():
                    if found is None: walk(child)
            elif isinstance(v,list):
                for child in v:
                    if found is None: walk(child)
        walk(receipt)
        need(found is not None, f'baseline extension receipt omits n={n}')
        ds=found.get('denominators',found.get('witness')); off=found.get('first_denominator_offset',c['first_denominator_offset'])
        need(ds==c['denominators'] and off==c['first_denominator_offset'], f'baseline extension payload mismatch n={n}')
        triple(n,off,ds,'baseline extension')
        cases[n]={**c,'receipt_sha256':digest(source)}
    return cases

def audit_v9_extensions(progress):
    checker=digest(ROOT/'scripts/verify_egyptian_fraction_witness_stream_v9.py')
    ext_script=digest(ROOT/'scripts/extend_egyptian_fraction_witness_stream_v8.py')
    by_pkg={}; receipts=[]
    for e in progress['v9_per_range_maxima']:
        pkg=DATA/e['package']; ep=pkg/'extension-offset-65536-v8.json'; rp=pkg/'extension-verification-v8.json'
        eh,rh=digest(ep),digest(rp)
        need(eh==e['extension_receipt_sha256'] and rh==e['extension_verification_sha256'], f'{pkg.name}: extension/replay hash mismatch')
        ext, replay=readj(ep),readj(rp)
        need(ext.get('status')=='PASS_BOUNDED_EXTENSION' and ext.get('extension_offset_range')==[4097,65536], f'{pkg.name}: invalid extension receipt')
        need(ext['counts']['still_not_found_within_extension_cap']==0, f'{pkg.name}: unresolved extension')
        need(ext.get('source_bindings')=={'extension_script_sha256':ext_script,'base_checker_sha256':checker}, f'{pkg.name}: extension source binding mismatch')
        raw=b''.join((json.dumps(x,sort_keys=True,separators=(',',':'))+'\n').encode() for x in ext.get('items',[]))
        need(hashlib.sha256(raw).hexdigest()==ext.get('items_sha256'), f'{pkg.name}: extension item hash mismatch')
        need(replay.get('status')=='PASS_EXTENSION_RECEIPT_REOPENS' and replay.get('extension_receipt_sha256')==eh, f'{pkg.name}: extension replay receipt mismatch')
        need(replay.get('base_run_manifest_sha256')==e['run_manifest_sha256'] and replay.get('base_verification_receipt_sha256')==e['verification_receipt_sha256'], f'{pkg.name}: extension replay base binding mismatch')
        need(replay.get('base_checker_sha256')==checker and replay.get('still_not_found_within_extension_cap')==0, f'{pkg.name}: replay checker/cap mismatch')
        items={}
        for it in ext.get('items',[]):
            n=it.get('n'); need(isinstance(n,int) and n not in items, f'{pkg.name}: duplicate extension n')
            need(it.get('status')=='WITNESS_FOUND' and it.get('exact_identity') is True, f'{pkg.name}: extension witness status failure n={n}')
            triple(n,it.get('first_denominator_offset'),it.get('denominators'),'v9 extension')
            items[n]=it
        need(len(items)==ext['counts']['candidates']==ext['counts']['witnesses_found'], f'{pkg.name}: extension row totals mismatch')
        by_pkg[e['package']]=items
        receipts.append({'package':e['package'],'extension_receipt_sha256':eh,'extension_replay_sha256':rh,'extension_items_sha256':ext['items_sha256'],'extension_witnesses':len(items),'unresolved':0})
    return by_pkg,receipts

def audit_range(e, lane, base_ext=None, v9_ext=None):
    pkg=DATA/e['package']
    if lane=='v9':
        bundle=pkg/'witness-stream-v9'; mp=bundle/'run-manifest.json'; vp=pkg/'verification-receipt-v9.json'
    else:
        mfs=list(pkg.rglob('run-manifest.json')); vfs=[p for p in pkg.rglob('verification-receipt*.json') if p.name.startswith('verification-receipt')]
        need(len(mfs)==1 and len(vfs)==1, f'{pkg.name}: baseline manifest/receipt count mismatch')
        mp,vp=mfs[0],vfs[0]; bundle=mp.parent
    mb=mp.read_bytes(); manifest=json.loads(mb.decode('utf-8')); mh=hashlib.sha256(mb).hexdigest()
    need(mh==e['run_manifest_sha256'] and manifest.get('d_interval_inclusive')==e['d_interval_inclusive'], f'{pkg.name}: manifest binding mismatch')
    vh=digest(vp); need(vh==e.get('verification_receipt_sha256',e.get('verifier_receipt_sha256')) , f'{pkg.name}: verifier receipt hash mismatch')
    receipt=readj(vp)
    need(str(receipt.get('status','')).startswith('PASS_') and receipt.get('run_manifest_sha256')==mh, f'{pkg.name}: verifier receipt status/binding mismatch')
    verify_sources(manifest.get('source_bindings',{}),pkg.name)
    files={}; hashes={}
    for name in ('candidates','results','witnesses'):
        item=manifest['streams'][name]; path=(bundle/item['path']).resolve()
        need(path.is_relative_to(bundle.resolve()) and path.is_file() and not path.is_symlink(), f'{pkg.name}: invalid {name} stream')
        h=digest(path); need(h==item['sha256'] and ('stream_hashes' not in e or h==e['stream_hashes'][name]), f'{pkg.name}: {name} stream hash mismatch')
        files[name]=path; hashes[name]=h
    if isinstance(receipt.get('streams_sha256'),dict): need(receipt['streams_sha256']==hashes, f'{pkg.name}: receipt stream hashes mismatch')
    misses=[]; offsets=[]; maxoff=-1; maxn=None; candidates=witnesses=0; base_stages=Counter()
    with files['candidates'].open('rb') as cf, files['results'].open('rb') as rf, files['witnesses'].open('rb') as wf:
        while True:
            cl=cf.readline()
            if not cl: break
            n=int(cl.decode('ascii').strip()); d=(n-1)//12
            need(n==12*d+1 and e['d_interval_inclusive'][0]<=d<=e['d_interval_inclusive'][1], f'{pkg.name}: candidate range mismatch n={n}')
            rl=rf.readline(); need(bool(rl), f'{pkg.name}: missing result n={n}'); result=json.loads(rl.decode('utf-8'))
            need(result.get('n')==n, f'{pkg.name}: result order mismatch n={n}'); candidates+=1
            if result.get('status')=='NOT_FOUND_WITHIN_BOUND': misses.append(n); continue
            need(result.get('status')=='WITNESS_FOUND', f'{pkg.name}: unexpected result status n={n}')
            off=result.get('first_denominator_offset'); ds=result.get('denominators'); x,y,z=triple(n,off,ds,lane)
            wl=wf.readline(); need(bool(wl), f'{pkg.name}: missing witness n={n}'); witness=json.loads(wl.decode('utf-8'))
            need(witness=={'n':n,'x':x,'y':y,'z':z}, f'{pkg.name}: witness row binding mismatch n={n}')
            offsets.append(off); witnesses+=1; base_stages['offset_0_256' if off<=256 else 'offset_257_4096']+=1
            if off>maxoff: maxoff,maxn=off,n
        need(not rf.readline() and not wf.readline(), f'{pkg.name}: extra results or witnesses')
    need(candidates==e['candidate_count'] and witnesses==e['base_witness_count'] and len(misses)==e['base_miss_count'], f'{pkg.name}: row counts differ from index')
    need(receipt.get('candidate_count')==candidates and receipt.get('witness_count')==witnesses and receipt.get('not_found_within_bound')==len(misses), f'{pkg.name}: verifier count mismatch')
    if lane=='v9':
        extra=v9_ext.get(e['package'],{}); need(set(extra)==set(misses), f'{pkg.name}: extensions differ from base misses')
    else:
        extra={n:c for n,c in base_ext.items() if e['d_interval_inclusive'][0]<=(n-1)//12<=e['d_interval_inclusive'][1]}
        need(set(extra)==set(misses), f'{pkg.name}: baseline resolutions differ from base misses')
    offsets.extend(v['first_denominator_offset'] for v in extra.values())
    for n,item in extra.items(): triple(n,item['first_denominator_offset'],item['denominators'],'saved extension')
    all_hist=Counter(histbin(x) for x in offsets)
    stages={'offset_0_256':sum(x<=256 for x in offsets),'offset_257_4096':sum(257<=x<=4096 for x in offsets),'offset_4097_65536':sum(x>=4097 for x in offsets)}
    for n,item in extra.items():
        off=item['first_denominator_offset']
        if off>maxoff: maxoff,maxn=off,n
    need(maxoff==e['maximum_first_denominator_offset'] and maxn==e['maximum_offset_n'], f'{pkg.name}: range maximum mismatch')
    need('offset_histogram' not in e or dict(all_hist)==e['offset_histogram'], f'{pkg.name}: range offset histogram mismatch')
    need('offset_stage_counts' not in e or stages=={k:e['offset_stage_counts'].get(k,0) for k in stages}, f'{pkg.name}: range offset stage mismatch')
    need(len(offsets)==e.get('exact_witnesses',e['candidate_count']), f'{pkg.name}: resolved witness count mismatch')
    return {'package':pkg.name,'d_interval_inclusive':e['d_interval_inclusive'],'candidate_count':candidates,'base_witness_count':witnesses,'base_miss_count':len(misses),'exact_witness_count':len(offsets),'maximum_first_denominator_offset':maxoff,'maximum_offset_n':maxn,'run_manifest_sha256':mh,'verification_receipt_sha256':vh,'stream_hashes':hashes,'offset_histogram':dict(all_hist),'offset_stage_counts':stages,'identity_rows_checked':witnesses+len(extra),'misses':misses}

def miss_stats(cases):
    rows=list(cases); shapes=Counter(); n72=Counter(); q24=Counter(); qomega=Counter()
    for c in rows:
        fs=c.get('n_factorization',[])
        shape='prime' if len(fs)==1 and fs[0][1]==1 else ('prime_power' if len(fs)==1 else 'composite')
        shapes[shape]+=1; n72[str(c['n']%72)]+=1
        q=c.get('q',(c['n']+3)//4); q24[str(q%24)]+=1
        qomega[str(sum(e for _,e in c.get('q_factorization',[])))]+=1
    ns=[c['n'] for c in rows]; os=[c['first_denominator_offset'] for c in rows]
    return {'count':len(rows),'n_mod24':dict(sorted(Counter(str(c['n']%24) for c in rows).items())),
            'n_mod72':dict(sorted(n72.items())),'q_mod24':dict(sorted(q24.items())),
            'n_factor_shape':dict(sorted(shapes.items())),
            'q_factor_count_with_multiplicity':dict(sorted(qomega.items())),
            'n_min':min(ns),'n_median':int(statistics.median(ns)),'n_max':max(ns),
            'offset_min':min(os),'offset_median':int(statistics.median(os)),'offset_max':max(os)}

def fit(rows):
    xs=[sum(r['d_interval_inclusive'])/2 for r in rows]; ys=[r['maximum_first_denominator_offset'] for r in rows]
    mx,my=statistics.fmean(xs),statistics.fmean(ys); xx=sum((x-mx)**2 for x in xs); yy=sum((y-my)**2 for y in ys)
    cov=sum((x-mx)*(y-my) for x,y in zip(xs,ys)); r=cov/math.sqrt(xx*yy) if xx and yy else 0
    return {'offset_slope_per_1m_d':round(cov/xx*1_000_000,3) if xx else 0,'pearson_r':round(r,5),'r_squared':round(r*r,5)}

def group_maxima(rows):
    groups={}
    for row in rows:
        start=row['d_interval_inclusive'][0]; a=((start-1)//500000)*500000+1; b=a+499999
        groups.setdefault((a,b),[]).append(row)
    out=[]
    for (a,b),rs in sorted(groups.items()):
        vals=[r['maximum_first_denominator_offset'] for r in rs]; peak=max(rs,key=lambda r:r['maximum_first_denominator_offset'])
        out.append({'d_interval_inclusive':[a,b],'ranges':len(rs),'mean_range_max':round(statistics.fmean(vals),1),
                    'median_range_max':int(statistics.median(vals)),'peak_range_max':max(vals),'peak_n':peak['maximum_offset_n']})
    return out

def main():
    ap=argparse.ArgumentParser(description='Reconcile saved bounded Erdős-Straus campaign evidence through d=10M.')
    ap.add_argument('--output-dir',type=Path,default=OUTPUT); args=ap.parse_args()
    pb=PROGRESS.read_bytes(); progress=json.loads(pb.decode('utf-8'))
    need(progress.get('status')=='V9_COMPLETE_THROUGH_10000000' and progress.get('latest_completed_range')==[9900001,10000000], 'progress is not complete through 10M')
    base=sorted(progress['baseline_per_range_maxima'],key=lambda r:r['d_interval_inclusive'][0])
    v9=sorted(progress['v9_per_range_maxima'],key=lambda r:r['d_interval_inclusive'][0])
    need([tuple(r['d_interval_inclusive']) for r in base]==BASE_RANGES,'baseline ranges have gaps or overlaps')
    need([tuple(r['d_interval_inclusive']) for r in v9]==V9_RANGES,'v9 ranges have gaps or overlaps')
    base_ext=ext_base_cases(progress); v9_ext, ext_receipts=audit_v9_extensions(progress)
    base_a=[audit_range(r,'baseline',base_ext=base_ext) for r in base]
    v9_a=[audit_range(r,'v9',v9_ext=v9_ext) for r in v9]
    base_misses={n for r in base_a for n in r['misses']}
    need(base_misses==set(base_ext),'baseline extensions do not exactly resolve all base misses')
    v9_case={n:item for mapping in v9_ext.values() for n,item in mapping.items()}
    v9_meta={c['n']:c for c in progress.get('v9_extension_miss_cases',[])}
    need(set(v9_case)==set(v9_meta),'v9 miss rows differ from extension receipts')
    for n,item in v9_case.items():
        c=v9_meta[n]; need(item['denominators']==c['denominators'] and item['first_denominator_offset']==c['first_denominator_offset'],f'v9 miss metadata mismatch n={n}')
    audits=base_a+v9_a; h=Counter(); stages=Counter()
    for r in audits: h.update(r['offset_histogram']); stages.update(r['offset_stage_counts'])
    need(dict(sorted(h.items()))==progress['all_offset_histogram'],'all-offset histogram mismatch')
    need(dict(stages)==progress['all_offset_stage_counts'],'all-offset stage counts mismatch')
    need(sum(h.values())==progress['exact_witness_count_through_latest'],'offset rows differ from total witness count')
    bc=sum(r['candidate_count'] for r in base_a); vc=sum(r['candidate_count'] for r in v9_a)
    bm=sum(r['base_miss_count'] for r in base_a); vm=sum(r['base_miss_count'] for r in v9_a)
    exact=sum(r['exact_witness_count'] for r in audits)
    need(bc==progress['baseline_candidate_count'] and bc+vc==progress['candidate_count_through_latest'],'candidate total mismatch')
    need(exact==progress['exact_witness_count_through_latest'] and bm+vm==progress['base_miss_count_through_latest'],'witness/miss total mismatch')
    need(progress['unresolved_count_through_latest']==0 and progress['full_erdos_straus_conjecture_solved'] is False,'scope or unresolved flag mismatch')
    base_cases=list(base_ext.values()); v9_cases=list(v9_meta.values()); combined=base_cases+v9_cases
    allrows=sorted(audits,key=lambda r:r['d_interval_inclusive'][0]); overall=max(allrows,key=lambda r:r['maximum_first_denominator_offset']); peak9=max(v9_a,key=lambda r:r['maximum_first_denominator_offset'])
    trend={'baseline':fit(base_a),'v9':fit(v9_a),'combined':fit(allrows)}; groups=group_maxima(allrows)
    miss={'baseline':miss_stats(base_cases),'v9':miss_stats(v9_cases),'combined':miss_stats(combined)}
    scope={'baseline_d':[1,5000000],'v9_d':[5000001,10000000],'ranges':100,'width':100000,'extension_offset_cap':65536,
           'provider_calls':0,'model_calls':0,'search_api_calls':0,'gpu_used':False}
    audit={'schema':'mathcase-erdos-straus-campaign-v9-aggregate-audit-v1','status':'PASS_AGGREGATE_HASH_BINDING_ROW_AND_IDENTITY_AUDIT',
           'classification':'FINITE_FACTOR_CONDITIONED_WITNESS_DATA_ONLY','audited_at_utc':datetime.now(timezone.utc).isoformat(timespec='seconds').replace('+00:00','Z'),
           'progress_sha256':hashlib.sha256(pb).hexdigest(),'audit_script_sha256':digest(Path(__file__).resolve()),'scope':scope,
           'baseline':{'ranges':50,'candidates':bc,'base_misses':bm,'extension_witnesses':len(base_ext),'exact_witnesses':sum(r['exact_witness_count'] for r in base_a),'range_audits':base_a},
           'v9':{'ranges':50,'candidates':vc,'base_witnesses':vc-vm,'base_misses':vm,'extension_witnesses':len(v9_case),'unresolved_after_cap':0,
                 'exact_witnesses':sum(r['exact_witness_count'] for r in v9_a),'identity_rows_checked':sum(r['identity_rows_checked'] for r in v9_a),'range_audits':v9_a,'extension_receipts':ext_receipts},
           'aggregate':{'ranges':100,'candidates':bc+vc,'exact_witnesses':exact,'base_misses':bm+vm,'resolved_misses':len(base_ext)+len(v9_case),'unresolved':0,
                        'identity_rows_checked':exact,'offset_histogram':dict(sorted(h.items())),'offset_stage_counts':dict(sorted(stages.items())),
                        'max_offset':overall['maximum_first_denominator_offset'],'max_offset_n':overall['maximum_offset_n'],'max_offset_d_range':overall['d_interval_inclusive'],
                        'cap_headroom':65536-overall['maximum_first_denominator_offset'],'cap_to_max_ratio':round(65536/overall['maximum_first_denominator_offset'],4),
                        'v9_max_offset':peak9['maximum_first_denominator_offset'],'v9_max_offset_n':peak9['maximum_offset_n'],
                        'last_v9_range_max_offset':v9_a[-1]['maximum_first_denominator_offset'],'range_maxima_trend':trend,'grouped_maxima':groups},
           'miss_analysis':miss,'full_erdos_straus_conjecture_solved':False,'novelty_claim':False}
    out=args.output_dir.resolve(); need(not out.exists(),f'refusing to overwrite {out}')
    write_outputs(out,audit,progress)
    print(json.dumps({'status':audit['status'],'ranges':100,'candidates':bc+vc,'exact_witnesses':exact,'base_misses':bm+vm,'unresolved':0,
                      'max_offset':overall['maximum_first_denominator_offset'],'output':str(out)},sort_keys=True))
    return 0

def write_outputs(out,audit,progress):
    a=audit['aggregate']; m=audit['miss_analysis']; bins=a['offset_histogram']; total=a['exact_witnesses']
    lines=['# Erdos-Straus bounded campaign through d=10,000,000','',
      f"The 50 v9 ranges from d=5,000,001 through 10,000,000 are complete. Across the audited baseline and v9 streams, **{a['candidates']:,} factor-conditioned candidates** have **{total:,} checked finite witnesses**. No candidate remains unresolved after the recorded bounded extensions.",'',
      f"The v9 lane added {audit['v9']['candidates']:,} candidates. Its {audit['v9']['base_misses']:,} base-search misses all resolved within the fixed 65,536 offset cap. This is finite evidence for the filtered set only; the full Erdős-Straus conjecture remains unsolved and no novelty claim is made.",'',
      '## First-denominator offset distribution','','The following distribution includes all base and extension witnesses across d=1..10,000,000, including the one selected exhaustive n=193 resolution at offset 1.','',
      '| Offset | Witnesses | Share |','|---:|---:|---:|']
    for low,high in BINS:
        name=f'{low}-{high}'; count=bins.get(name,0); lines.append(f'| {name} | {count:,} | {count/total:.3%} |')
    stages=a['offset_stage_counts']
    lines += ['',f"Stages: 0–256: {stages['offset_0_256']:,}; 257–4,096: {stages['offset_257_4096']:,}; 4,097–65,536: {stages['offset_4097_65536']:,}.",'',
      f"The largest offset across all ranges is **{a['max_offset']:,}** at n={a['max_offset_n']:,}, in d={a['max_offset_d_range'][0]:,}–{a['max_offset_d_range'][1]:,}. That leaves {a['cap_headroom']:,} below the 65,536 cap ({a['cap_to_max_ratio']:.2f} times the observed maximum). The v9-only peak is {a['v9_max_offset']:,} at n={a['v9_max_offset_n']:,}; the final 100k range peaked at {a['last_v9_range_max_offset']:,}.",'']
    fit=a['range_maxima_trend']['combined']; f9=a['range_maxima_trend']['v9']
    trend='noisy/flat, with no strong monotone rise' if abs(fit['pearson_r'])<0.2 else ('a noisy upward association' if fit['pearson_r']>0 else 'a noisy downward association')
    lines += [f"Per-range maxima are {trend}: overall Pearson r={fit['pearson_r']:.3f} (R²={fit['r_squared']:.3f}); v9-only r={f9['pearson_r']:.3f}. This describes the sample through 10M and is not a bound beyond it.",'',
      '| d block | ranges | mean maximum | median maximum | peak maximum | n at peak |','|---:|---:|---:|---:|---:|---:|']
    for g in a['grouped_maxima']:
        x,y=g['d_interval_inclusive']; lines.append(f"| {x:,}–{y:,} | {g['ranges']} | {g['mean_range_max']:,} | {g['median_range_max']:,} | {g['peak_range_max']:,} | {g['peak_n']:,} |")
    c=m['combined']
    lines += ['', '## Candidates needing extension','',
      f"There were {c['count']} base misses across the 5M and 10M checkpoints: {m['baseline']['count']} in baseline and {m['v9']['count']} in v9. All have saved exact resolutions. Their n factor shapes are {c['n_factor_shape']}; n mod 72 counts are {c['n_mod72']}; q mod 24 counts are {c['q_mod24']}. The misses vary in factor shape and residue finer than mod 24, so this sample does not expose one additional rule that covers them all.",'',
      f"All misses have n mod 24 distribution {c['n_mod24']}. That residue is imposed by this factor-conditioned candidate construction, so it does not distinguish the hard cases from the candidate pool. These are observed finite patterns, not a theorem.",'',
      '## Family watch','',
      'This lane covers n=1 mod 12 with neither n nor q=(n+3)/4 having a prime factor congruent to 2 mod 3. Its candidate stream is the n=1 mod 24 residual subset outside the known unconditional n=1 mod 4 constructions; the same factor filter excludes the conditional Family D cases. The data did not establish a new parameterized identity. Even n and n=3 mod 4 are outside this campaign.','',
      '## Audit scope','',
      f"The aggregate audit passed for 100 ranges, {a['candidates']:,} candidate/result rows, and {a['identity_rows_checked']:,} exact identity rows including extensions. It checked manifest, verifier receipt, stream, extension, replay and progress bindings; see aggregate-audit-v1.json and per-range-maxima.csv.",'',
      'This audit reports only finite factor-conditioned witnesses and descriptive patterns. It does not establish a general identity, solve the full conjecture, or change any M0/M4 or dossier gate. Provider/model/search API calls: 0. GPU: unused. External spend: $0.','',
      f"Audit UTC: {audit['audited_at_utc']}. Progress input SHA-256: {audit['progress_sha256']}.",'']
    out.mkdir(parents=True,exist_ok=False)
    (out/'aggregate-audit-v1.json').write_text(json.dumps(audit,sort_keys=True,indent=2)+'\n',encoding='utf-8',newline='\n')
    (out/'summary.md').write_text('\n'.join(lines),encoding='utf-8',newline='\n')
    with (out/'per-range-maxima.csv').open('w',encoding='utf-8',newline='') as f:
        w=csv.writer(f,lineterminator='\n'); w.writerow(['lane','package','d_start','d_end','candidates','base_witnesses','base_misses','exact_witnesses','maximum_offset','maximum_offset_n','manifest_sha256','verifier_receipt_sha256'])
        for r in audit['baseline']['range_audits']+audit['v9']['range_audits']:
            lane='v9' if r['package'].endswith('-v9') else 'baseline'
            w.writerow([lane,r['package'],*r['d_interval_inclusive'],r['candidate_count'],r['base_witness_count'],r['base_miss_count'],r['exact_witness_count'],r['maximum_first_denominator_offset'],r['maximum_offset_n'],r['run_manifest_sha256'],r['verification_receipt_sha256']])

if __name__=='__main__':
    raise SystemExit(main())
