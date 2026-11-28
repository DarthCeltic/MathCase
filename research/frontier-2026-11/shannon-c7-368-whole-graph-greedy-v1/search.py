import argparse, hashlib, itertools, json, random, time
from pathlib import Path
N=7**5
OFFSETS=tuple(itertools.product((-1,0,1), repeat=5))

def digits(x): return tuple((x//(7**j))%7 for j in range(5))
def build_masks():
    masks=[0]*N
    place=(1,7,49,343,2401)
    for x in range(N):
        ds=digits(x); m=0
        for off in OFFSETS:
            y=sum(((d+q)%7)*p for d,q,p in zip(ds,off,place))
            m |= 1<<y
        masks[x]=m
    return masks

def independent_pairwise(code):
    ws=[digits(x) for x in code]
    for i in range(len(ws)):
        for j in range(i):
            if all((a-b)%7 in (0,1,6) for a,b in zip(ws[i],ws[j])):
                return False,(code[j],code[i])
    return True,None

def greedy(masks, rng, bias):
    # New whole-vertex randomized order; this does not freeze any portion of Tang's code.
    order=list(range(N))
    if bias==0: rng.shuffle(order)
    else:
        # Randomized sequential priority with a weak lexicographic perturbation, changing order family.
        order.sort(key=lambda x:(rng.random()+bias*((x*2654435761)&0xffff)/65535.0))
    chosen=0; out=[]
    for x in order:
        if not (masks[x]&chosen):
            chosen |= 1<<x; out.append(x)
    return out

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--seconds',type=int,default=180); ap.add_argument('--seed',type=int,default=28112026); ap.add_argument('--out',type=Path,required=True); a=ap.parse_args()
    a.out.mkdir(parents=True,exist_ok=True); t0=time.monotonic(); masks=build_masks(); built=time.monotonic()
    rng=random.Random(a.seed); best=[]; trials=0; sizes={}; cap=time.monotonic()+a.seconds
    while time.monotonic()<cap:
        candidate=greedy(masks,rng,trials%2); trials+=1; sizes[len(candidate)]=sizes.get(len(candidate),0)+1
        if len(candidate)>len(best):
            best=candidate
            payload={'trial':trials,'size':len(best),'codes':sorted(best),'pairwise_claim':False}
            (a.out/'best-candidate.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
            print(json.dumps({'event':'new_best','trial':trials,'size':len(best),'elapsed_s':round(time.monotonic()-t0,3)}),flush=True)
    valid,witness=independent_pairwise(best)
    result={'schema':'c7-368-whole-graph-random-greedy-v1','status':'CANDIDATE_368_UNVERIFIED' if len(best)>=368 else 'NO_368_FOUND_UNKNOWN','objective':'find independent set of 368 vertices in the full 5-fold strong product representation of C7','vertex_encoding':'base-7 digits (least significant first); vertices x=0..16806','confusability':'two distinct words conflict iff every coordinate difference mod 7 is in {0,1,6}','method':'fresh randomized greedy maximal independent set on all 16807 vertices; alternating uniform shuffled order and a randomized biased priority order; no Tang seed vertices frozen and no diagonal-slice restriction','seed':a.seed,'time_cap_seconds':a.seconds,'elapsed_seconds':round(time.monotonic()-t0,6),'mask_build_seconds':round(built-t0,6),'trials':trials,'size_histogram':dict(sorted(sizes.items())),'best_size':len(best),'best_codes':sorted(best),'separate_pairwise_check_passed':valid,'pairwise_violation':witness,'input_sha256':None}
    (a.out/'search-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    if valid and len(best)>=368:
        (a.out/'candidate-words.txt').write_text('\n'.join(','.join(map(str,digits(x))) for x in sorted(best))+'\n',encoding='ascii')
    print(json.dumps({k:result[k] for k in ('status','seed','time_cap_seconds','elapsed_seconds','trials','best_size','separate_pairwise_check_passed')}),flush=True)
if __name__=='__main__': main()
