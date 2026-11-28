import argparse, itertools, json, random, time
from pathlib import Path

N = 7**5
PLACE = (1, 7, 49, 343, 2401)

def digits(x): return tuple((x // p) % 7 for p in PLACE)
def conflict(a,b): return all((x-y) % 7 in (0,1,6) for x,y in zip(digits(a),digits(b)))

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--base',type=Path,required=True)
    ap.add_argument('--seconds',type=int,default=30)
    ap.add_argument('--seed',type=int,default=281128)
    ap.add_argument('--starts',type=int,default=12)
    ap.add_argument('--depth',type=int,default=4)
    ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args(); args.out.mkdir(parents=True,exist_ok=True)
    data=json.loads(args.base.read_text(encoding='utf-8')); I0=set(data['I0']); X=set(data['X'])
    # Direct coordinate implementation; construct the outsider conflict graph and I0 neighborhoods.
    outsiders=sorted(x for x in range(N) if x not in I0)
    neigh={x:{v for v in I0 if conflict(x,v)} for x in outsiders}
    comp={x:set() for x in outsiders}
    offsets=list(itertools.product((0,1,6),repeat=5))
    for x in outsiders:
        ds=digits(x)
        for off in offsets:
            y=sum(((d+q)%7)*p for d,q,p in zip(ds,off,PLACE))
            if y!=x and y not in I0: comp[x].add(y)
    rng=random.Random(args.seed); start=time.monotonic(); deadline=start+args.seconds
    best={'surplus':-10**9,'S':[],'N':[]}; trials=0; evaluated=0; positive=[]
    # Greedy add compatible outsiders with low incremental neighborhood cost; perturb ties.
    while time.monotonic()<deadline and trials<args.starts:
        trials+=1; order=outsiders[:]; rng.shuffle(order)
        # Mix low-degree, neighborhood overlap and random preference.
        if trials%3==0: order.sort(key=lambda x:(len(neigh[x]),rng.random()))
        elif trials%3==1: order.sort(key=lambda x:(len(neigh[x]),rng.random()))
        S=[]; union=set(); avail=set(order)
        for step in range(args.depth):
            if time.monotonic()>=deadline or not avail: break
            options=list(avail); rng.shuffle(options)
            chosen=None; chosen_score=None
            for x in options[:min(300,len(options))]:
                ev=union|neigh[x]; score=(len(ev)-(len(S)+1),len(ev)-len(union),rng.random())
                evaluated+=1
                if chosen_score is None or score<chosen_score: chosen,chosen_score=x,score
            if chosen is None: break
            S.append(chosen); union |= neigh[chosen]
            avail -= comp[chosen]; avail.discard(chosen)
            surplus=len(S)-len(union)
            if surplus>best['surplus'] or (surplus==best['surplus'] and len(S)>len(best['S'])):
                best={'surplus':surplus,'S':S.copy(),'N':sorted(union)}
                print(json.dumps({'event':'best','trial':trials,'step':step+1,'surplus':surplus,'size_S':len(S),'neighborhood':len(union)}),flush=True)
            if surplus>0: positive.append({'S':S.copy(),'N':sorted(union),'surplus':surplus})
    # Directly validate S compatibility and its full neighborhood independently from sampled options.
    S=best['S']; actualN=sorted(v for v in I0 if any(conflict(x,v) for x in S))
    compatible=all(not conflict(x,y) for i,x in enumerate(S) for y in S[:i])
    result={'schema':'c7-surplus-neighborhood-v1','status':'SURPLUS_FOUND' if best['surplus']>0 else 'NO_SURPLUS_FOUND_UNKNOWN',
      'objective':'find mutually compatible outsider S with |S|>|N(S)| relative to published I0',
      'inputs':{'base_sha256':'2395d9ce16e068010a5f2a57f3fbfec5a607fa9272b02af d6c9e4a95fc70016b'.replace(' ',''),'base_size':len(I0),'outsider_domain_size':len(outsiders),'X_size':len(X)},
      'method':'bounded greedy compatible outsider construction, selecting low incremental I0-neighborhood cost; random tie-breaking; no seed vertices removed during search',
      'seed':args.seed,'time_cap_seconds':args.seconds,'starts_cap':args.starts,'outsider_depth_cap':args.depth,
      'starts_completed':trials,'candidate_evaluations':evaluated,'elapsed_seconds':round(time.monotonic()-start,6),
      'best_surplus':best['surplus'],'S':S,'N_S':actualN,'S_size':len(S),'N_S_size':len(actualN),
      'S_pairwise_compatible':compatible,'neighborhood_exact':actualN==best['N'],'positive_samples':len(positive)}
    (args.out/'search-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    (args.out/'best-surplus-candidate.json').write_text(json.dumps(best,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:result[k] for k in ('status','starts_completed','candidate_evaluations','best_surplus','S_size','N_S_size','S_pairwise_compatible','neighborhood_exact')}),flush=True)
if __name__=='__main__': main()
