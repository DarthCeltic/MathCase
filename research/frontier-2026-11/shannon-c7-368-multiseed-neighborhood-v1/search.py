import argparse, hashlib, itertools, json, random, time
from pathlib import Path

N = 7**5
PLACE = (1, 7, 49, 343, 2401)
OFFSETS = tuple(itertools.product((0, 1, 6), repeat=5))

def digits(x):
    return tuple((x // p) % 7 for p in PLACE)

def conflict(a, b):
    return a != b and all((x-y) % 7 in (0, 1, 6) for x, y in zip(digits(a), digits(b)))

def independent(xs):
    return len(xs) == len(set(xs)) and all(not conflict(x, y) for i, x in enumerate(xs) for y in xs[:i])

def masks_for(base, deadline):
    # Build exact outsider-to-base neighborhoods and outsider compatibility masks
    # from the 3^5 residue-difference definition, not the prior sampled pair loop.
    inbase = set(base)
    bindex = {v:i for i,v in enumerate(sorted(base))}
    outsider = [v for v in range(N) if v not in inbase]
    neigh = [0] * N
    conflict_masks = [0] * N
    for x in range(N):
        ds = digits(x)
        for off in OFFSETS:
            y = sum(((d+q) % 7)*p for d,q,p in zip(ds,off,PLACE))
            if y == x:
                continue
            if y in bindex:
                neigh[x] |= 1 << bindex[y]
            elif y not in inbase:
                conflict_masks[x] |= 1 << y
        if x % 2048 == 0 and time.monotonic() >= deadline:
            raise TimeoutError("mask-build-time-cap")
    outsider_mask = 0
    for v in outsider:
        outsider_mask |= 1 << v
    compatible = [outsider_mask & ~m for m in conflict_masks]
    return outsider, neigh, compatible

def direct_surplus(base, S):
    nb = sorted(v for v in base if any(conflict(x, v) for x in S))
    return nb

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--base',type=Path,required=True)
    ap.add_argument('--out',type=Path,required=True)
    ap.add_argument('--seconds',type=int,default=45)
    ap.add_argument('--seed',type=int,default=28112801)
    ap.add_argument('--trials-per-seed',type=int,default=12)
    ap.add_argument('--depth',type=int,default=12)
    a=ap.parse_args(); a.out.mkdir(parents=True,exist_ok=True)
    base_bytes=a.base.read_bytes(); data=json.loads(base_bytes); I0=set(data['I0'])
    swaps=[(6110,3716),(14329,12277),(10708,13158),(13065,13358),
           (13677,14027),(15075,14733),(1553,15910),(15996,16046)]
    seeds=[{'id':'published-I0','removed':None,'inserted':None,'code':sorted(I0)}]
    for i,(rm,ins) in enumerate(swaps,1):
        c=(I0-{rm})|{ins}
        if len(c)!=367 or not independent(sorted(c)):
            raise SystemExit(f"seed {i} failed independent verification")
        seeds.append({'id':f'legal-swap-{i}','removed':rm,'inserted':ins,'code':sorted(c)})
    if not independent(sorted(I0)): raise SystemExit('published baseline invalid')
    seed_hashes=[hashlib.sha256(json.dumps(s['code'],separators=(',',':')).encode()).hexdigest() for s in seeds]
    start=time.monotonic(); deadline=start+a.seconds; rng=random.Random(a.seed)
    best={'surplus':-10**9,'seed_id':None,'S':[],'N':[]}; evaluations=0; trials=0; builds=[]
    try:
        for si,seed in enumerate(seeds):
            if time.monotonic() >= deadline: break
            base=set(seed['code'])
            outsiders, neigh, compatible=masks_for(base,deadline)
            builds.append(seed['id'])
            for tr in range(a.trials_per_seed):
                if time.monotonic() >= deadline: break
                trials+=1
                order=outsiders[:]; rng.shuffle(order)
                S=[]; union=0; avail=(1<<N)-1
                for step in range(a.depth):
                    if time.monotonic() >= deadline: break
                    # Sample across the entire remaining domain. A greedy step minimizes
                    # newly removed seed vertices, with random tie-breaking.
                    pool=[x for x in order if (avail>>x)&1][:160]
                    if not pool: break
                    chosen=None; chosen_score=None
                    for x in pool:
                        inc=(neigh[x] & ~union).bit_count()
                        score=(inc,rng.random())
                        evaluations+=1
                        if chosen_score is None or score<chosen_score:
                            chosen,chosen_score=x,score
                    S.append(chosen); union |= neigh[chosen]
                    avail &= compatible[chosen]
                    avail &= ~(1 << chosen)  # conflicts exclude distinct words; also forbid reselecting the same word
                    surplus=len(S)-union.bit_count()
                    if surplus>best['surplus'] or (surplus==best['surplus'] and len(S)>len(best['S'])):
                        Ndirect=direct_surplus(base,S)
                        best={'surplus':surplus,'seed_id':seed['id'],'S':S.copy(),'N':Ndirect}
    except TimeoutError:
        pass
    elapsed=time.monotonic()-start
    selected=next(s for s in seeds if s['id']==best['seed_id']) if best['seed_id'] else seeds[0]
    exactN=direct_surplus(set(selected['code']),best['S'])
    cand=(set(selected['code'])-set(exactN))|set(best['S'])
    # Independent full pairwise check for any constructed improved candidate; baseline
    # seeds are also fully checked above, and result records this exact status.
    candidate_ok=independent(sorted(cand))
    result={'schema':'c7-multiseed-neighborhood-v1','status':'368_FOUND' if candidate_ok and len(cand)>=368 else 'NO_368_FOUND_UNKNOWN',
      'method':'multi-seed exact conflict-neighborhood exchange: 9 independently checked 367-seeds (published I0 plus eight verified one-for-one swaps); build exact outsider compatibility/neighborhood masks per seed; greedily assemble mutually compatible outsider sets up to depth cap and score |S|-|N(S)|',
      'base_path_label':'pinned public Polak-Schrijver 367 set','base_sha256':hashlib.sha256(base_bytes).hexdigest(),
      'seed_codes':len(seeds),'seed_code_sha256':seed_hashes,'seed_ids_built':builds,'random_seed':a.seed,
      'time_cap_seconds':a.seconds,'trials_per_seed_cap':a.trials_per_seed,'depth_cap':a.depth,
      'trials_completed':trials,'candidate_evaluations':evaluations,'elapsed_seconds':round(elapsed,6),
      'best_seed':best['seed_id'],'S':best['S'],'N_S':exactN,'surplus':len(best['S'])-len(exactN),
      'candidate_size':len(cand),'candidate_pairwise_independent':candidate_ok,
      'candidate_codes':sorted(cand),'scope':'This is a bounded heuristic search over sampled greedy multi-outsider exchanges for these nine seeds. A miss excludes none of the other independent sets and proves no global upper bound.'}
    (a.out/'search-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    (a.out/'candidate.json').write_text(json.dumps({'seed_id':best['seed_id'],'seed_codes':seeds,'S':best['S'],'N_S':exactN,'candidate_codes':sorted(cand)},indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:result[k] for k in ('status','seed_ids_built','trials_completed','candidate_evaluations','best_seed','surplus','candidate_size','candidate_pairwise_independent','elapsed_seconds')}),flush=True)

if __name__=='__main__': main()
