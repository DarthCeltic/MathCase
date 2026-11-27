#!/usr/bin/env python3
import copy, json, math
from pathlib import Path
J=24
HMAX=15
MOD=1<<J
P3=[3**h for h in range(J+1)]
def trajectory(n):
    x=n
    h=0
    for _ in range(J):
        if x&1:
            x=(3*x+1)//2
            h+=1
        else:
            x//=2
    return x,h
def validate_witness(w):
    if w is None:
        return False
    h=w["h"]; n=w["start"]; r=w["residue"]; end=w["endpoint"]
    if not (0<=h<=HMAX and n>=3 and n%MOD==r):
        return False
    if n != (r if r>=3 else r+MOD):
        return False
    actual,actual_h=trajectory(n)
    if (actual,actual_h)!=(end,h):
        return False
    coeff=MOD-P3[h]
    intercept=MOD*end-P3[h]*n
    margin=coeff*n-intercept
    return coeff>0 and w["coefficient"]==coeff and w["intercept"]==intercept and w["margin_scaled"]==margin and margin>0
def verify():
    a=json.loads(Path("python-result.json").read_text(encoding="utf-8",newline="\n"))
    b=json.loads(Path("cpp-result.json").read_text(encoding="utf-8",newline="\n"))
    expected=[math.comb(J,h) for h in range(HMAX+1)]
    slopes=all(MOD-P3[h]>0 for h in range(HMAX+1))
    assert slopes
    rows=[]
    for h in range(HMAX+1):
        ra=a["rows"][h]; rb=b["rows"][h]
        assert ra["h"]==rb["h"]==h
        assert ra["mask_count"]==rb["mask_count"]==expected[h],(h,ra["mask_count"],rb["mask_count"],expected[h])
        wa=ra["minimum"]; wb=rb["minimum"]
        assert validate_witness(wa) and validate_witness(wb),(h,wa,wb)
        assert wa["margin_scaled"]==wb["margin_scaled"],(h,wa,wb)
        rows.append({"h":h,"mask_count":expected[h],"minimum_margin_scaled":wa["margin_scaled"],"example_residue":wa["residue"],"example_start":wa["start"],"example_endpoint":wa["endpoint"]})
    total=sum(expected)
    assert a["total_masks"]==b["total_masks"]==total
    damaged=copy.deepcopy(a["rows"][0]["minimum"]); damaged["margin_scaled"]=0
    altered=copy.deepcopy(a["rows"][0]["minimum"]); altered["residue"]=(altered["residue"]+1)%MOD
    dm=not validate_witness(damaged); ar=not validate_witness(altered)
    assert dm and ar
    out={"status":"PASS","scope":"finite residue screen only; not a Lean proof, M0 review, or new theorem",
         "steps":J,"max_odd_inputs":HMAX,"total_masks":total,
         "independent_methods_agree":True,"all_fixed_word_slopes_positive":slopes,
         "all_minimum_margins_positive":all(r["minimum_margin_scaled"]>0 for r in rows),
         "damaged_margin_rejected":dm,"altered_residue_rejected":ar,"rows":rows}
    Path("verification.json").write_text(json.dumps(out,indent=2)+"\n",encoding="utf-8",newline="\n")
    print(json.dumps({"status":"PASS","total_masks":total,"rows":len(rows),
      "positive_slopes":slopes,"controls":[dm,ar],
      "minimum_margins":[x["minimum_margin_scaled"] for x in rows]},separators=(",",":")))
if __name__=="__main__":
    verify()
