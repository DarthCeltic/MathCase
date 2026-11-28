import argparse, hashlib, json
from pathlib import Path
N = 7 ** 5
def digits(x): return tuple((x // (7 ** j)) % 7 for j in range(5))
def conflict(a,b): return all((x-y)%7 in (0,1,6) for x,y in zip(digits(a),digits(b)))
def check(xs):
    if len(xs) != len(set(xs)) or any(not isinstance(x,int) or x<0 or x>=N for x in xs): return False, {'reason':'invalid_word_set'}
    for i in range(len(xs)):
        for j in range(i):
            if conflict(xs[i], xs[j]): return False, {'reason':'conflicting_pair','codes':[xs[j],xs[i]]}
    return True, {'pair_tests': len(xs)*(len(xs)-1)//2}
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--base',type=Path,required=True); ap.add_argument('--result',type=Path,required=True); ap.add_argument('--out',type=Path,required=True); a=ap.parse_args()
    base=json.loads(a.base.read_text()); result=json.loads(a.result.read_text()); okb,db=check(base['I0']); okc,dc=check(result['best_codes'])
    damaged=list(result['best_codes']); damaged[0]=damaged[1] if len(damaged)>1 else damaged[0]
    okd,dd=check(damaged)
    out={'schema':'c7-ejection-independent-verification-v1','base_sha256':hashlib.sha256(a.base.read_bytes()).hexdigest(),'result_sha256':hashlib.sha256(a.result.read_bytes()).hexdigest(),'checks':{'base_independent':okb,'candidate_independent':okc,'planted_duplicate_rejected':not okd,'base_detail':db,'candidate_detail':dc,'damaged_detail':dd},'status':'PASS' if okb and okc and not okd else 'FAIL'}
    a.out.write_text(json.dumps(out,indent=2)+'\n'); print(json.dumps(out,indent=2))
if __name__=='__main__': main()
