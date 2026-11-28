import argparse, hashlib, itertools, json, sys
from pathlib import Path
N=7**5

def digits(code): return tuple((code//(7**j))%7 for j in range(5))
def conflict(a,b): return all((x-y)%7 in (0,1,6) for x,y in zip(digits(a),digits(b)))
def check(codes):
    if len(codes)!=len(set(codes)): return False, {'reason':'duplicate_word'}
    if any(not isinstance(x,int) or x<0 or x>=N for x in codes): return False, {'reason':'code_out_of_range'}
    for i in range(len(codes)):
        for j in range(i):
            if conflict(codes[i],codes[j]): return False, {'reason':'conflicting_pair','codes':[codes[j],codes[i]],'words':[digits(codes[j]),digits(codes[i])]}
    return True, {'pair_tests':len(codes)*(len(codes)-1)//2}
def load(path):
    raw=Path(path).read_bytes(); return json.loads(raw),hashlib.sha256(raw).hexdigest()
def main():
    p=argparse.ArgumentParser(); p.add_argument('--baseline',type=Path,default=Path(__file__).with_name('base_c7.json')); p.add_argument('--candidate',type=Path,default=Path(__file__).with_name('search-result.json')); p.add_argument('--out',type=Path,required=True); a=p.parse_args()
    base,bsha=load(a.baseline); cand,csha=load(a.candidate)
    rows=[]
    for label,codes,expected in [('published_367',base['I0'],367),('searched_best',cand['best_codes'],cand['best_size'])]:
        ok,detail=check(codes); assert len(codes)==expected and ok, (label,detail)
        rows.append({'case':label,'size':len(codes),'pairwise_valid':ok,**detail})
    # Planted-error control: alter one coordinate of one code to an adjacent symbol, preserving range.
    damaged=list(cand['best_codes']); old=damaged[0]; ds=list(digits(old)); ds[0]=(ds[0]+1)%7; new=sum(v*7**j for j,v in enumerate(ds));
    if new in damaged: ds[0]=(ds[0]+6)%7; new=sum(v*7**j for j,v in enumerate(ds))
    damaged[0]=new; damaged_ok,damaged_detail=check(damaged)
    assert not damaged_ok and damaged_detail['reason']=='conflicting_pair', damaged_detail
    rows.append({'case':'planted_adjacent_word_control','rejected':True,'detail':damaged_detail})
    out={'schema':'c7-368-redesign-independent-check-v1','baseline_sha256':bsha,'candidate_sha256':csha,'checks':rows,'claim':'The saved best candidate is pairwise valid at its reported size; no 368-word witness was found in the bounded search.'}
    a.out.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8'); print(json.dumps(out,indent=2))
if __name__=='__main__': main()
