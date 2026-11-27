#!/usr/bin/env python3
import json, math, time
from pathlib import Path
J = 24
HALF = 12
HMAX = 15
MOD = 1 << J
MOD_HALF = 1 << HALF
POW3 = [3 ** h for h in range(J + 1)]
def advance(x, steps):
    odds = 0
    for _ in range(steps):
        if x & 1:
            x = (3 * x + 1) // 2
            odds += 1
        else:
            x //= 2
    return x, odds
def observe(n, h_prefix, x_after_prefix, hi):
    y = x_after_prefix + POW3[h_prefix] * hi
    end, h_suffix = advance(y, HALF)
    h = h_prefix + h_suffix
    if h > HMAX: return None
    residue = n & (MOD - 1)
    c = MOD * end - POW3[h] * n
    coefficient = MOD - POW3[h]
    margin = coefficient * n - c
    return {"h":h,"start":n,"residue":residue,"endpoint":end,"coefficient":coefficient,"intercept":c,"margin_scaled":margin}
def main():
    t0=time.perf_counter()
    counts=[0]*(J+1); best=[None]*(HMAX+1)
    for lo in range(MOD_HALF):
        x0,h0=advance(lo,HALF)
        for hi in range(MOD_HALF):
            n=lo+MOD_HALF*hi
            if n<3: continue
            row=observe(n,h0,x0,hi)
            if row is None: continue
            h=row["h"]; counts[h]+=1
            if best[h] is None or row["margin_scaled"]<best[h]["margin_scaled"]: best[h]=row
        if lo<3:
            hi=MOD_HALF; n=lo+MOD_HALF*hi
            row=observe(n,h0,x0,hi)
            if row is not None:
                h=row["h"]; counts[h]+=1
                if best[h] is None or row["margin_scaled"]<best[h]["margin_scaled"]: best[h]=row
    rows=[{"h":h,"mask_count":counts[h],"minimum":best[h]} for h in range(HMAX+1)]
    result={"method":"12+12 split: T^12(lo)+3^h_prefix*hi, then 12 accelerated steps","steps":J,"max_odd_inputs":HMAX,"modulus":MOD,"total_masks":sum(counts),"rows":rows,"elapsed_seconds":round(time.perf_counter()-t0,3)}
    Path("python-result.json").write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8",newline="\n")
    print(json.dumps({"total_masks":result["total_masks"],"elapsed_seconds":result["elapsed_seconds"],"rows":[{"h":x["h"],"count":x["mask_count"],"min_margin_scaled":x["minimum"]["margin_scaled"] if x["minimum"] else None} for x in rows]},separators=(",",":")))
if __name__=="__main__": main()
