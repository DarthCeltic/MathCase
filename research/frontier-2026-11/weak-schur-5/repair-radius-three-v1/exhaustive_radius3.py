from __future__ import annotations
import argparse, hashlib, itertools, json, random, time
from collections import Counter
from datetime import datetime
from pathlib import Path

ROOT=Path(__file__).resolve().parent
INPUT=ROOT/'candidate.json'
N=208; K=5; MAX_DISTANCE=3; WALL_CAP=45.0

def sha(b: bytes)->str: return hashlib.sha256(b).hexdigest()
def mono(xs): return int(xs[0]==xs[1]==xs[2])
def direct_score(colors):
    return sum(colors[a-1]==colors[b-1]==colors[a+b-1] for a in range(1,N) for b in range(a+1,N-a+1))
def direct_violations(colors):
    return [[a,b,a+b,colors[a-1]] for a in range(1,N) for b in range(a+1,N-a+1) if colors[a-1]==colors[b-1]==colors[a+b-1]]

def build_deltas(colors, triples):
    singles=[[0]*6 for _ in range(N+1)]
    pairs={}
    triples3={}
    base_score=0
    for a,b,c in triples:
        ps=(a,b,c); old=(colors[a-1],colors[b-1],colors[c-1]); f0=mono(old); base_score+=f0
        one={}
        for i,p in enumerate(ps):
            row=[]
            for color in range(1,K+1):
                vals=list(old); vals[i]=color; row.append(mono(vals))
                singles[p][color] += row[-1]-f0
            one[p]=row
        pair_local={}
        for i,j in ((0,1),(0,2),(1,2)):
            p,q=ps[i],ps[j]
            key=(p,q)
            arr=pairs.setdefault(key,[0]*36)
            local={}
            for cp in range(1,K+1):
                for cq in range(1,K+1):
                    vals=list(old); vals[i]=cp; vals[j]=cq
                    fij=mono(vals); local[(cp,cq)]=fij
                    arr[cp*6+cq] += fij-one[p][cp-1]-one[q][cq-1]+f0
            pair_local[key]=local
        triarr=[0]*216
        for ca in range(1,K+1):
            for cb in range(1,K+1):
                for cc in range(1,K+1):
                    vals=(ca,cb,cc); f3=mono(vals)
                    f_ab=pair_local[(a,b)][(ca,cb)]
                    f_ac=pair_local[(a,c)][(ca,cc)]
                    f_bc=pair_local[(b,c)][(cb,cc)]
                    triarr[ca*36+cb*6+cc] += f3-f_ab-f_ac-f_bc+one[a][ca-1]+one[b][cb-1]+one[c][cc-1]-f0
        triples3[(a,b,c)]=triarr
    return base_score,singles,pairs,triples3

def score_deltas(S, new, base_score, singles, pairs, triples3):
    score=base_score
    for p,col in zip(S,new): score+=singles[p][col]
    for i in range(len(S)):
        for j in range(i+1,len(S)):
            key=(S[i],S[j]); table=pairs.get(key)
            if table is not None: score+=table[new[i]*6+new[j]]
    if len(S)==3: score+=triples3.get(tuple(S),[0]*216)[new[0]*36+new[1]*6+new[2]]
    return score

def main():
    parser=argparse.ArgumentParser(description='Exhaustively check all <=3-edit repairs of one saved Weak Schur near-miss.')
    parser.add_argument('--output', type=Path, help='optional path for a new replay receipt; does not replace prior evidence')
    args=parser.parse_args()
    raw=INPUT.read_bytes(); doc=json.loads(raw.decode('utf-8')); colors=doc['colors_1_to_208']
    origin=json.loads((ROOT/'candidate-origin.json').read_text(encoding='utf-8'))
    if sha(raw)!=origin['public_candidate_json_sha256']: raise SystemExit('public candidate hash does not match origin record')
    source_candidate_sha=origin['source_candidate_json_sha256']
    if len(colors)!=N or any(type(x) is not int or not 1<=x<=K for x in colors): raise SystemExit('bad assignment')
    base_violations=direct_violations(colors)
    if base_violations!=[[4,8,12,3]]: raise SystemExit(f'input changed: {base_violations}')
    triples=[(a,b,a+b) for a in range(1,N) for b in range(a+1,N-a+1)]
    if len(triples)!=10712: raise SystemExit('triple count mismatch')
    base,singles,pairs,triples3=build_deltas(colors,triples)
    # Deterministic sampled cross-check of the delta decomposition against full direct rescoring.
    rng=random.Random(20261125); sample_checks=300
    for _ in range(sample_checks):
        d=rng.randint(1,3); S=tuple(sorted(rng.sample(range(1,N+1),d)))
        new=tuple(rng.choice([x for x in range(1,K+1) if x!=colors[p-1]]) for p in S)
        changed=colors.copy()
        for p,col in zip(S,new): changed[p-1]=col
        if score_deltas(S,new,base,singles,pairs,triples3)!=direct_score(changed): raise SystemExit('delta decomposition sample mismatch')
    structured_checks=0
    for S in ((1,2,3),(4,8,12),(3,9,12),(4,5,8),(10,11,21),(30,40,70)):
        choices=[[c for c in range(1,K+1) if c!=colors[p-1]] for p in S]
        for new in itertools.product(*choices):
            changed=colors.copy()
            for p,col in zip(S,new): changed[p-1]=col
            if score_deltas(S,new,base,singles,pairs,triples3)!=direct_score(changed): raise SystemExit(f'structured delta cross-check mismatch: {S} {new}')
            structured_checks+=1
    started=datetime.now().astimezone().isoformat(); t=time.perf_counter(); deadline=t+WALL_CAP
    conflict_positions={4,8,12}; totals=Counter(); minima={}; checked=0; witness=None; timed_out=False
    for d in range(1,MAX_DISTANCE+1):
        best=999999
        for S in itertools.combinations(range(1,N+1),d):
            if not conflict_positions.intersection(S): continue
            choices=[[c for c in range(1,K+1) if c!=colors[p-1]] for p in S]
            for new in itertools.product(*choices):
                checked+=1
                if checked%200000==0 and time.perf_counter()>deadline:
                    timed_out=True; break
                val=score_deltas(S,new,base,singles,pairs,triples3); totals[d]+=1; best=min(best,val)
                if val==0:
                    candidate=colors.copy()
                    for p,col in zip(S,new): candidate[p-1]=col
                    if direct_score(candidate)!=0: raise SystemExit('delta score claimed a false witness')
                    witness={'changed_positions':list(S),'new_colors':list(new),'colors_1_to_208':candidate,'colors_sha256':sha((''.join(map(str,candidate))+'\n').encode())}
                    break
            if timed_out or witness: break
        minima[d]=None if best==999999 else best
        if timed_out or witness: break
    elapsed=round(time.perf_counter()-t,3)
    status='WITNESS_FOUND' if witness else ('HOST_WALL_CAP' if timed_out else 'NO_REPAIR_WITHIN_RADIUS_3_EXHAUSTIVE')
    result={'schema':'mathcase-ws5-radius3-exhaustive-check-v1','started_local':started,'status':status,'input_candidate_file_sha256':sha(raw),'source_candidate_json_sha256':source_candidate_sha,'color_sequence_sha256':sha((''.join(map(str,colors))+'\n').encode()),'input_remaining_conflict':base_violations[0],'m0_packet_sha256':'925cf68bc7f354fefebd47ddc08b6d25ecf9142868975e2248cc1baf530ad0d7','target':'exact saved five-color assignment on 1..208; distinct-addend triples only','distance_limit':MAX_DISTANCE,'all_constraints':len(triples),'candidate_sets_excluded_reason':'Any edit set disjoint from {4,8,12} leaves the original monochromatic triple untouched; it cannot be a repair.','candidate_assignments_checked':checked,'candidate_assignments_by_distance':dict(totals),'minimum_conflict_count_by_distance':minima,'delta_formula_sample_checks':sample_checks,'structured_delta_crosschecks':structured_checks,'elapsed_seconds':elapsed,'wall_cap_seconds':WALL_CAP,'script_sha256':sha(Path(__file__).read_bytes()),'method':'Exhaustive enumeration of all color assignments at Hamming distance 1..3 that touch an endpoint of the saved conflict; exact inclusion-exclusion score deltas over all 10,712 triples, cross-checked against direct full rescoring on 300 deterministic random edits.','network':'none','external_spend_usd':0,'solver_invoked':False,'lean_invoked':False,'witness':witness}
    if args.output: args.output.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(result,indent=2))
    if status=='HOST_WALL_CAP': raise SystemExit(2)

if __name__=='__main__': main()
