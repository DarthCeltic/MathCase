from __future__ import annotations
import hashlib, json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
CASES = [(20,12,262),(21,13,808),(22,13,313),(23,14,677),(24,15,3019),(27,17,26018),(31,19,4830),(32,20,17667)]
rows=[]
for t, h, expected in CASES:
    a=2**t
    b=3**h
    c=2**(t-h)
    cutoff=0 if b*c<a else (b*c-a)//(a-b)+1
    assert cutoff == expected, (t,h,cutoff,expected)
    assert b < a
    def bound(n, odd_count):
        return (3**odd_count)*(n+2**(t-odd_count)) < a*(n+1)
    assert all(bound(cutoff, j) for j in range(h+1)), (t,h,"cutoff should pass all admitted counts")
    if cutoff > 0:
        assert not bound(cutoff-1,h), (t,h,"previous integer should fail at the cap")
    rows.append({"steps":t,"odd_cap":h,"coefficient_cutoff":cutoff,"all_admitted_counts_pass_at_cutoff":True,"cap_fails_one_below":cutoff>0})
out={"schema":"mathcase-collatz-parity-envelope-cutoff-independent-check-v1","method":"Python arbitrary-precision integers, direct formula and direct inequality evaluation","cases":rows,"count":len(rows)}
path=ROOT/"evidence"/"python-independent-check.json"
path.write_text(json.dumps(out,indent=2)+"\n",encoding="utf-8")
print(json.dumps(out,indent=2))