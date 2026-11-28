#!/usr/bin/env python3
"""Exact finite joint DOS and fixed-up-spin screen for the periodic 6x3 torus.

Direct implementation enumerates all labeled assignments and explicit edges.
Independent transfer implementation sums closed walks on 64 six-bit columns.
Standard-library-only; no network, solver, randomness, or repository writes.
"""
from __future__ import annotations
import argparse, hashlib, json, math, platform, time
from collections import Counter, defaultdict
from pathlib import Path

W, L = 6, 3
N, STATES = W * L, 1 << W

def vertical_rows(s: int) -> int:
    return sum(((s >> r) & 1) != ((s >> ((r + 1) % W)) & 1) for r in range(W))

def vertical_rotate(s: int) -> int:
    return (s ^ (((s << 1) & (STATES - 1)) | (s >> (W - 1)))).bit_count()

def explicit_edges() -> tuple[tuple[int,int], ...]:
    es=set()
    for r in range(W):
        for c in range(L):
            a=r*L+c
            es.add(tuple(sorted((a, r*L+(c+1)%L))))
            es.add(tuple(sorted((a, ((r+1)%W)*L+c))))
    return tuple(sorted(es))

def direct() -> Counter[tuple[int,int]]:
    es=explicit_edges(); h=Counter()
    for mask in range(1 << N):
        broken=sum(((mask>>a)&1) != ((mask>>b)&1) for a,b in es)
        h[(broken, mask.bit_count())] += 1
    return h

def transfer(omit_vertical: bool=False) -> Counter[tuple[int,int]]:
    """Trace over 64 column states; vertical bonds counted once per column."""
    out=Counter()
    for first in range(STATES):
        fv=0 if omit_vertical else vertical_rotate(first)
        dp={(first, fv, first.bit_count()): 1}
        for _ in range(1,L):
            nxt=defaultdict(int)
            for (prev,b,u),ways in dp.items():
                for s in range(STATES):
                    v=0 if omit_vertical else vertical_rotate(s)
                    nxt[(s,b+v+(prev^s).bit_count(),u+s.bit_count())] += ways
            dp=nxt
        for (last,b,u),ways in dp.items():
            out[(b+(last^first).bit_count(),u)] += ways
    return out

def rows(h): return [[b,u,h[(b,u)]] for b,u in sorted(h)]
def digest(h): return hashlib.sha256(json.dumps(rows(h),separators=(',',':')).encode('ascii')).hexdigest()
def shape(vals, labels):
    nz=[i for i,v in enumerate(vals) if v]
    if not nz:return {'support':None,'log_concave':True,'violations':[]}
    lo,hi=nz[0],nz[-1]; a=vals[lo:hi+1]; bad=[]
    for i in range(1,len(a)-1):
        if a[i]*a[i] < a[i-1]*a[i+1]:
            bad.append({'labels':labels[lo+i-1:lo+i+2], 'values':a[i-1:i+2], 'middle_squared':a[i]**2, 'neighbors_product':a[i-1]*a[i+1]})
    return {'support':[labels[lo],labels[hi]],'log_concave':not bad,'violations':bad}

def main():
    p=argparse.ArgumentParser(); p.add_argument('--output',type=Path,required=True); p.add_argument('--max-seconds',type=float,default=120); a=p.parse_args()
    t=time.monotonic(); deadline=t+a.max_seconds
    es=explicit_edges(); d=direct(); dt=time.monotonic()-t
    if time.monotonic()>deadline: raise TimeoutError('wall cap after direct enumeration')
    t2=time.monotonic(); tr=transfer(); tt=time.monotonic()-t2
    if d != tr: raise AssertionError('direct histogram differs from 64-state transfer')
    if len(es)!=2*N: raise AssertionError(f'expected {2*N} distinct edges, got {len(es)}')
    if sum(d.values()) != 1<<N: raise AssertionError('configuration total')
    if d[(0,0)]!=1 or d[(0,N)]!=1: raise AssertionError('uniform configurations')
    if d[(4,1)]!=N or d[(4,N-1)]!=N: raise AssertionError('single-spin flip bins')
    if any(d[(b,u)]!=d[(b,N-u)] for b,u in d): raise AssertionError('spin inversion symmetry')
    labels=list(range(0,2*N+1,2)); fixed=[]
    for u in range(N+1):
        vals=[d[(b,u)] for b in labels]
        fixed.append({'up_spins':u,'configurations':sum(d[(b,u)] for b in labels),'expected':math.comb(N,u),'even_bond_log_concavity':shape(vals,labels),'even_bond_profile':[[b,d[(b,u)]] for b in labels if d[(b,u)]]})
    bad=transfer(omit_vertical=True)
    if bad==d: raise AssertionError('damaged omitted-vertical transfer unexpectedly matched')
    receipt={'schema':'mathcase-ising-6x3-joint-density-v1','status':'PASS_EXACT_FINITE_CHECK','statement':'On the periodic 6x3 square-lattice torus, direct enumeration of all labeled spin assignments equals an independent 64-state column transfer for the joint histogram (disagreeing edges, plus spins). Fixed-up-spin even-bond log-concavity is screened separately for every u.', 'grid':{'width':W,'length':L,'vertices':N,'edges':len(es),'assignments':1<<N},'methods':['direct enumeration of every assignment using an explicit set of periodic vertex-pair edges','closed-walk transfer DP over 64 six-bit column states; vertical edges counted by cyclic bit rotation, seam counted on closure'],'joint_histogram':rows(d),'joint_histogram_sha256':digest(d),'fixed_up_profiles':fixed,'summary':{'fixed_up_spin_profiles':N+1,'log_concave_profiles':sum(x['even_bond_log_concavity']['log_concave'] for x in fixed),'non_log_concave_profiles':sum(not x['even_bond_log_concavity']['log_concave'] for x in fixed),'first_failure':next((x for x in fixed if not x['even_bond_log_concavity']['log_concave']),None)},'controls':{'all_assignments_counted':sum(d.values())==1<<N,'edge_count':len(es),'uniform_bins':d[(0,0)]==d[(0,N)]==1,'single_spin_flip_bins':d[(4,1)]==d[(4,N-1)]==N,'spin_inversion_symmetry':all(d[(b,u)]==d[(b,N-u)] for b,u in d),'direct_equals_64_state_transfer':d==tr,'damaged_omitted_vertical_rejected':bad!=d,'damaged_histogram_sha256':digest(bad)},'timing_seconds':{'direct':round(dt,6),'transfer':round(tt,6),'total':round(time.monotonic()-t,6)},'wall_cap_seconds':a.max_seconds,'python':platform.python_version(),'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'network':'not used','limitations':['One finite 6x3 periodic torus only.','No general theorem, thermodynamic-limit conclusion, novelty, or priority claim.','Log-concavity screen is a separate finite observation; leading/trailing zero bins are trimmed and interior zero bins retained. Odd broken-edge counts are omitted because the torus cut sizes are even.']}
    a.output.parent.mkdir(parents=True,exist_ok=True); a.output.write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'status':receipt['status'],'grid':receipt['grid'],'summary':receipt['summary'],'controls':receipt['controls'],'timing_seconds':receipt['timing_seconds'],'source_sha256':receipt['source_sha256'],'histogram_sha256':receipt['joint_histogram_sha256'],'receipt':str(a.output)},sort_keys=True))
if __name__=='__main__': main()
