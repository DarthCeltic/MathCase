import argparse, hashlib, json
from pathlib import Path
PLACE=(1,7,49,343,2401)
def digits(x): return tuple((x//p)%7 for p in PLACE)
def conflict(a,b): return a!=b and all((x-y)%7 in (0,1,6) for x,y in zip(digits(a),digits(b)))
def independent(xs): return len(set(xs))==len(xs) and all(not conflict(x,y) for i,x in enumerate(xs) for y in xs[:i])
def main():
 ap=argparse.ArgumentParser(); ap.add_argument('--base',type=Path,required=True); ap.add_argument('--result',type=Path,required=True); ap.add_argument('--out',type=Path,required=True); a=ap.parse_args()
 base_bytes=a.base.read_bytes(); base=json.loads(base_bytes); r=json.loads(a.result.read_text(encoding='utf8')); I=set(base['I0']); X=set(base['X']); S=r['S']; N=sorted(v for v in I if any(conflict(x,v) for x in S))
 checks={'base_size_367':len(I)==367,'base_independent':independent(sorted(I)),'outsiders_are_outside_I0':all(x not in I and 0<=x<7**5 for x in S),'S_pairwise_compatible':independent(S),'N_exact':N==r['N_S'],'reported_neighborhood_size':len(N)==r['N_S_size'],'surplus_arithmetic':len(S)-len(N)==r['best_surplus'],'status_matches_surplus':(r['status']=='SURPLUS_FOUND')==(len(S)>len(N))}
 planted=sorted(I); planted[0]=planted[1] # duplicate is not a valid distinct-code control
 checks['duplicate_control_rejected']=not independent(planted)
 out={'schema':'c7-surplus-independent-verification-v1','status':'PASS' if all(checks.values()) else 'FAIL','base_sha256':hashlib.sha256(base_bytes).hexdigest(),'result_sha256':hashlib.sha256(a.result.read_bytes()).hexdigest(),'checks':checks,'S_size':len(S),'N_S_size':len(N),'surplus':len(S)-len(N),'planted_duplicate_control_rejected':not independent(planted)}
 a.out.write_text(json.dumps(out,indent=2)+'\n',encoding='utf8'); print(json.dumps(out,indent=2))
 if not all(checks.values()): raise SystemExit(1)
if __name__=='__main__': main()
