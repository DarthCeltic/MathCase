import json, random, time, hashlib, sys
from pathlib import Path
D=Path(__file__).parent; N=7**5
base_path=D/'base_c7.json'; base=json.loads(base_path.read_text()); I0=set(base['I0'])
aud=json.loads((D/'equal-seed-audit.json').read_text())
def digs(x): return tuple((x//(7**j))%7 for j in range(5))
# Independent relation implementation for search: compare coordinate differences directly.
words=[digs(i) for i in range(N)]
def edge(x,y): return all((a-b)%7 in (0,1,6) for a,b in zip(words[x],words[y]))
def valid(S):
 s=list(S)
 return all(not edge(s[i],s[j]) for i in range(len(s)) for j in range(i))
# Explicitly retain and deduplicate all eight independently validated equal-size seeds.
seeds=[set(I0)]
for row in aud['legal_single_replacements_from_seed']:
 s=set(I0); s.remove(row['remove']); s.add(row['insert'])
 if len(s)==367 and valid(s): seeds.append(s)
uniq={tuple(sorted(s)):s for s in seeds}; seeds=list(uniq.values())
(D/'equal-seed-pool.json').write_text(json.dumps({'source_base_sha256':hashlib.sha256(base_path.read_bytes()).hexdigest(),'source_audit_sha256':hashlib.sha256((D/'equal-seed-audit.json').read_bytes()).hexdigest(),'count':len(seeds),'seeds':[sorted(s) for s in seeds]},separators=(',',':'))+'\n')
rng=random.Random(281128)
allids=list(range(N)); best=set(max(seeds,key=lambda x:sum(x)))
bank={tuple(sorted(x)):x for x in seeds}; steps=0; starts=0; accepted=0
cap=120.0; t0=time.monotonic(); deadline=t0+cap
# Diverse-seed multi-ejection: choose 2-5 outsiders, remove their entire conflict union,
# then retain an independent compatible outsider pack and greedily refill. Every equal
# 367 result is deduplicated and banked for subsequent starts.
while time.monotonic()<deadline:
 starts+=1; current=set(rng.choice(list(bank.values())))
 for _ in range(120):
  if time.monotonic()>=deadline: break
  k=rng.choice((2,3,4,5)); outsiders=rng.sample([v for v in allids if v not in current],k)
  removed=set()
  for v in outsiders: removed.update(u for u in current if edge(v,u))
  trial=current-removed
  # add a mutually compatible subset of selected outsiders
  for v in outsiders:
   if all(not edge(v,u) for u in trial): trial.add(v)
  # bounded randomized refill from full domain
  for v in rng.sample(allids,250):
   if v not in trial and all(not edge(v,u) for u in trial): trial.add(v)
  steps+=1
  if len(trial)>=367 and valid(trial):
   key=tuple(sorted(trial));
   if key not in bank: bank[key]=set(trial); accepted+=1
   current=set(trial)
   if len(trial)>len(best): best=set(trial)
  elif len(trial)>len(current): current=trial
  if len(trial)>len(best): best=set(trial)
  if len(best)>=368: break
 if len(best)>=368: break
elapsed=time.monotonic()-t0
status='FOUND_368_CANDIDATE' if len(best)>=368 else 'NO_368_FOUND_UNKNOWN'
result={'schema':'c7-diverse-equal-seed-multiejection-v1','status':status,'base_sha256':hashlib.sha256(base_path.read_bytes()).hexdigest(),'initial_seed_count':len(seeds),'initial_seed_non_I0_count':sum(tuple(sorted(s))!=tuple(sorted(I0)) for s in seeds),'deduplicated_equal_seed_bank_count':len(bank),'new_distinct_equal_size_seeds_retained':accepted,'seed':281128,'cpu_time_cap_seconds':cap,'elapsed_seconds':round(elapsed,6),'starts':starts,'multi_ejection_moves':steps,'best_size':len(best),'best_codes':sorted(best),'method':'start from the deduplicated published I0 plus all eight independently checked one-for-one legal 367 swaps; each move selects 2-5 outsiders, removes the union of their conflicts, adds a compatible subset, then bounded randomized refill; all distinct valid size-367 sets are retained and reused as starts','external_calls':0}
(D/'search-result.json').write_text(json.dumps(result,indent=2)+'\n')
(D/'best-candidate.json').write_text(json.dumps({'size':len(best),'codes':sorted(best)},separators=(',',':'))+'\n')
print(json.dumps({k:result[k] for k in ('status','initial_seed_count','initial_seed_non_I0_count','deduplicated_equal_seed_bank_count','new_distinct_equal_size_seeds_retained','starts','multi_ejection_moves','best_size','elapsed_seconds')},indent=2))
