import argparse, hashlib, json
from pathlib import Path

PLACE=(1,7,49,343,2401)

def digits(x):
    out=[]
    for p in PLACE: out.append((x//p)%7)
    return out

def conflict(a,b):
    if a==b: return False
    da,db=digits(a),digits(b)
    return all(((da[i]-db[i])%7) in (0,1,6) for i in range(5))

def check(xs):
    if len(xs)!=len(set(xs)): return False,0,None
    checks=0
    for i,a in enumerate(xs):
        for b in xs[:i]:
            checks+=1
            if conflict(a,b): return False,checks,[a,b]
    return True,checks,None

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--base',type=Path,required=True); ap.add_argument('--candidate',type=Path,required=True); ap.add_argument('--out',type=Path,required=True); a=ap.parse_args()
    base_bytes=a.base.read_bytes(); base=json.loads(base_bytes); I0=base['I0']
    packet_bytes=a.candidate.read_bytes(); packet=json.loads(packet_bytes); codes=packet['candidate_codes']
    ok,pairs,bad=check(codes)
    base_ok,base_pairs,base_bad=check(I0)
    # Positive rejection control: add a distinct word that conflicts with an
    # existing candidate word; the direct checker must identify that pair.
    planted=None
    used=set(codes)
    for x in codes:
        for off in ((1,0,0,0,0),(0,1,0,0,0),(0,0,1,0,0),(0,0,0,1,0),(0,0,0,0,1)):
            ds=digits(x); y=sum(((ds[i]+off[i])%7)*PLACE[i] for i in range(5))
            if y not in used:
                planted=codes+[y]; break
        if planted: break
    control_ok,control_pairs,control_bad=check(planted)
    result={'schema':'c7-multiseed-neighborhood-independent-check-v1','status':'PASS' if ok and base_ok and planted is not None and not control_ok else 'FAIL',
      'base_sha256':hashlib.sha256(base_bytes).hexdigest(),'candidate_packet_sha256':hashlib.sha256(packet_bytes).hexdigest(),
      'candidate_size':len(codes),'candidate_pair_tests':pairs,'candidate_pairwise_independent':ok,'candidate_conflict':bad,
      'published_baseline_size':len(I0),'published_baseline_pair_tests':base_pairs,'published_baseline_pairwise_independent':base_ok,
      'planted_conflict_control_rejected':not control_ok,'planted_conflict_witness':control_bad,'planted_control_pair_tests_until_reject':control_pairs,
      'method':'separate direct base-7 coordinate decoding and pairwise test; no search adjacency masks reused'}
    a.out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8'); print(json.dumps(result,indent=2))
    if result['status']!='PASS': raise SystemExit(1)

if __name__=='__main__': main()
