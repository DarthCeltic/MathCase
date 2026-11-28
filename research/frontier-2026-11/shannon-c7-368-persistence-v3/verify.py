import json, hashlib
from pathlib import Path
D=Path(__file__).parent; N=7**5
base=json.loads((D/'base_c7.json').read_text()); best=json.loads((D/'best-candidate.json').read_text()); pool=json.loads((D/'equal-seed-pool.json').read_text())
def digits(n):
 out=[]
 for _ in range(5): out.append(n%7); n//=7
 return out
def conflict(a,b):
 da,db=digits(a),digits(b)
 return all((x-y)%7 in (0,1,6) for x,y in zip(da,db))
def check(S):
 bad=[]
 for j,v in enumerate(S):
  for u in S[:j]:
   if conflict(v,u): bad.append([u,v])
 return bad
seed_checks=[]
for i,S in enumerate(pool['seeds']):
 bad=check(S); seed_checks.append({'seed_index':i,'size':len(S),'distinct':len(set(S))==len(S),'pairs_checked':len(S)*(len(S)-1)//2,'conflicts':len(bad)})
S=best['codes']; bad=check(S)
planted=None
for a in range(N):
 for b in range(a+1,N):
  if conflict(a,b): planted=[a,b]; break
 if planted: break
assert all(x['conflicts']==0 and x['size']==367 and x['distinct'] for x in seed_checks)
assert not bad and len(S)==best['size'] and len(set(S))==len(S)
augmented = check(S + planted)
assert conflict(*planted) and len(augmented) > 0
report={'status':'PASS','candidate_size':len(S),'candidate_sha256':hashlib.sha256((D/'best-candidate.json').read_bytes()).hexdigest(),'candidate_unordered_pairs_checked':len(S)*(len(S)-1)//2,'candidate_conflicting_pairs':len(bad),'initial_seed_pool':seed_checks,'planted_control':{'pair':planted,'is_conflict':True,'augmented_candidate_conflicts':len(augmented),'rejected':len(augmented)>0},'base_sha256':hashlib.sha256((D/'base_c7.json').read_bytes()).hexdigest(),'checker':'independent implementation: decode each word by repeated division; reject if every coordinate difference is 0, 1, or 6 modulo 7'}
(D/'independent-verification.json').write_text(json.dumps(report,indent=2)+'\n'); print(json.dumps(report,indent=2))
