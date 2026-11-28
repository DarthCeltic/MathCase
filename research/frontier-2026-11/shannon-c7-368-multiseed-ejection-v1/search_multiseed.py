import json, random, time, hashlib, itertools
from pathlib import Path
ROOT=Path(__file__).parent; N=7**5
D=[tuple((x//7**j)%7 for j in range(5)) for x in range(N)]
def conflict(a,b): return all((x-y)%7 in (0,1,6) for x,y in zip(D[a],D[b]))
def valid(xs):
 xs=sorted(xs); return len(xs)==len(set(xs)) and all(not conflict(a,b) for i,a in enumerate(xs) for b in xs[:i])
def conflicts(v,S): return [u for u in S if conflict(v,u)]
def main():
 base=json.loads((ROOT/'base_c7.json').read_text()); original=set(base['I0']); assert len(original)==367 and valid(original)
 # Exhaustively enumerate all one-for-one exchanges from the published code.
 seeds={tuple(sorted(original))}; swap_edges=[]
 for v in range(N):
  if v in original: continue
  bad=conflicts(v,original)
  if len(bad)==1:
   s=set(original); s.remove(bad[0]); s.add(v)
   if valid(s):
    t=tuple(sorted(s)); seeds.add(t); swap_edges.append({'removed':bad[0],'added':v})
 seed_list=sorted(seeds); (ROOT/'seed-pool.json').write_text(json.dumps({'size':len(seed_list),'codes':[list(s) for s in seed_list],'one_swap_edges':swap_edges},separators=(',',':'))+'\n')
 rng=random.Random(291128); allw=list(range(N)); best=set(original); unique={}; starts=moves=0; deadline=time.monotonic()+60
 while time.monotonic()<deadline:
  starts+=1; current=set(seed_list[rng.randrange(len(seed_list))])
  for _ in range(60):
   if time.monotonic()>=deadline: break
   v=rng.choice(allw)
   if v in current: continue
   bad=conflicts(v,current)
   if not bad: trial=current|{v}
   else:
    trial=current.difference(bad); trial.add(v)
    # broader ejection accepted if loss <= 6; sometimes permit larger escape
    if len(trial)<len(current)-6 and rng.random()>=.04: moves+=1; continue
   # refill sampled outsiders after coordinated ejection
   order=rng.sample(allw,800)
   for w in order:
    if w not in trial and not conflicts(w,trial): trial.add(w)
   current=trial; moves+=1
   if len(current)>len(best): best=set(current)
   if len(current)==367:
    t=tuple(sorted(current)); h=hashlib.sha256(','.join(map(str,t)).encode()).hexdigest(); unique.setdefault(h,list(t))
   if len(current)>=368: break
  if len(best)>=368: break
 result={'schema':'c7-multiseed-ejection-v1','status':'FOUND_368_CANDIDATE' if len(best)>=368 else 'NO_368_FOUND_UNKNOWN','method':'exhaustive one-swap seed pool from published I0, then randomized coordinated ejection/refill chains seeded uniformly across deduplicated 367-codes','seed':291128,'seed_pool_size':len(seed_list),'one_swap_count':len(swap_edges),'time_cap_seconds':60,'starts':starts,'moves':moves,'distinct_367_codes_seen':len(unique),'best_size':len(best),'best_codes':sorted(best),'base_sha256':hashlib.sha256((ROOT/'base_c7.json').read_bytes()).hexdigest()}
 (ROOT/'search-result.json').write_text(json.dumps(result,indent=2)+'\n'); (ROOT/'run-record.json').write_text(json.dumps({'command':'python -B search_multiseed.py','elapsed_seconds':round(60-max(0,deadline-time.monotonic()),3),'python':__import__('sys').version,'external_calls':0,'result_sha256':hashlib.sha256((ROOT/'search-result.json').read_bytes()).hexdigest()},indent=2)+'\n'); print(json.dumps({k:result[k] for k in ('status','seed_pool_size','one_swap_count','starts','moves','distinct_367_codes_seen','best_size')},indent=2))
if __name__=='__main__': main()


