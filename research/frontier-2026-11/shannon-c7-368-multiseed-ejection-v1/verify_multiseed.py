import json, hashlib, sys
from pathlib import Path
R=Path(__file__).parent; N=7**5
def digits(x):
 out=[]
 for _ in range(5): x,r=divmod(x,7); out.append(r)
 return out
def edge(a,b):
 da,db=digits(a),digits(b)
 return all(((da[i]-db[i])%7) in (0,1,6) for i in range(5))
def check(xs):
 if len(xs)!=len(set(xs)) or any(type(x) is not int or not 0<=x<N for x in xs): return False,0
 pairs=0
 for i,a in enumerate(xs):
  for b in xs[:i]:
   pairs+=1
   if edge(a,b): return False,pairs
 return True,pairs
base=json.loads((R/'base_c7.json').read_text()); result=json.loads((R/'search-result.json').read_text()); seeds=json.loads((R/'seed-pool.json').read_text())
bok,bpairs=check(base['I0']); cok,cpairs=check(result['best_codes'])
# Plant an actual conflict by adding a word adjacent to an existing codeword.
word=next(v for v in range(N) if v not in result['best_codes'] and edge(v,result['best_codes'][0]))
dok,dpairs=check(result['best_codes']+[word])
seedchecks=[check(code)[0] for code in seeds['codes']]
record={'schema':'c7-multiseed-independent-check-v1','base_sha256':hashlib.sha256((R/'base_c7.json').read_bytes()).hexdigest(),'result_sha256':hashlib.sha256((R/'search-result.json').read_bytes()).hexdigest(),'seed_pool_sha256':hashlib.sha256((R/'seed-pool.json').read_bytes()).hexdigest(),'checks':{'published_367_valid':bok,'published_pair_tests':bpairs,'best_candidate_valid':cok,'candidate_pair_tests':cpairs,'all_seed_codes_valid':all(seedchecks),'seed_count':len(seedchecks),'planted_conflict_rejected':not dok,'planted_conflict_pair_tests_until_reject':dpairs,'planted_word':word},'status':'PASS' if bok and cok and all(seedchecks) and not dok else 'FAIL'}
(R/'verification.json').write_text(json.dumps(record,indent=2)+'\n'); print(json.dumps(record,indent=2)); sys.exit(0 if record['status']=='PASS' else 1)
