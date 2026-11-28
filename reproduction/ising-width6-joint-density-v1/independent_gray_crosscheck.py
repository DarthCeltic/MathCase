#!/usr/bin/env python3
"""Independent Gray-code/edge-incidence cross-check for 6x3 Ising receipt."""
import argparse, hashlib, json
from collections import Counter
from pathlib import Path
W,L=6,3
N=W*L

def neighbors(v):
    r,c=divmod(v,L)
    return {(r*L+(c-1)%L),(r*L+(c+1)%L),(((r-1)%W)*L+c),(((r+1)%W)*L+c)}

def main():
    p=argparse.ArgumentParser(); p.add_argument('--receipt',type=Path,required=True); p.add_argument('--output',type=Path,required=True); a=p.parse_args()
    hist=Counter(); mask=0; ups=broken=0; prev_gray=0
    hist[(broken,ups)]+=1
    for i in range(1,1<<N):
        gray=i^(i>>1); flip=(gray^prev_gray).bit_length()-1
        old=(mask>>flip)&1
        # Every vertex has four distinct neighbors on this 6x3 torus.
        delta=sum(((mask>>q)&1)!=old for q in neighbors(flip))
        broken += len(neighbors(flip)) - 2*delta
        ups += -1 if old else 1
        mask=gray; prev_gray=gray
        hist[(broken,ups)]+=1
    rows=[[b,u,hist[(b,u)]] for b,u in sorted(hist)]
    digest=hashlib.sha256(json.dumps(rows,separators=(',',':')).encode('ascii')).hexdigest()
    rec=json.loads(a.receipt.read_text(encoding='utf-8'))
    equal=(rows==rec['joint_histogram'] and digest==rec['joint_histogram_sha256'] and sum(hist.values())==(1<<N))
    damaged=list(rows); damaged[0]=[damaged[0][0],damaged[0][1],damaged[0][2]+1]
    damaged_rejected=(damaged!=rec['joint_histogram'])
    out={'status':'PASS_INDEPENDENT_GRAY_CROSSCHECK' if equal and damaged_rejected else 'FAIL','method':'Gray-code walk through all 2^18 assignments; update cut size from the four neighbors of the single flipped vertex','assignments':1<<N,'nonzero_bins':len(rows),'joint_histogram_sha256':digest,'matches_primary_receipt':equal,'one_count_damaged_control_rejected':damaged_rejected,'receipt_sha256':hashlib.sha256(a.receipt.read_bytes()).hexdigest()}
    a.output.parent.mkdir(parents=True,exist_ok=True); a.output.write_text(json.dumps(out,indent=2,sort_keys=True)+'\n',encoding='utf-8'); print(json.dumps(out,sort_keys=True)); return 0 if out['status'].startswith('PASS') else 2
if __name__=='__main__': raise SystemExit(main())

