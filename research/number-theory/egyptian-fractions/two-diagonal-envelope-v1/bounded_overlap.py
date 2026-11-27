"""Bounded exploration for multiple two-multiple decompositions (not a minimality proof)."""
import json
from math import isqrt
from verify import D, lower_index

P_LIMIT=5000
B_LIMIT=700
spf=list(range(D(B_LIMIT)+1))
for q in range(2,isqrt(len(spf)-1)+1):
    if spf[q]==q:
        for m in range(q*q,len(spf),q):
            if spf[m]==m: spf[m]=q

def distinct_prime_factors(n):
    while n>1:
        q=spf[n]
        yield q
        while n%q==0: n//=q

hits={}
for b in range(2,B_LIMIT+1):
    for a in range(1,b):
        d=4*a*b-a-b
        if d<=b: continue
        for p in distinct_prime_factors(d):
            if p<43 or p>P_LIMIT or lower_index(p)<16: continue
            x,r=divmod(p*a*b,d)
            if r==0 and x<a*p:
                hits.setdefault(p,set()).add((x,a*p,b*p))
first=next((p for p in sorted(hits) if len(hits[p])>=2),None)
assert first==821, first
triples=sorted(hits[first])
for x,y,z in triples:
    assert x<y<z and 4*x*y*z==first*(x*y+x*z+y*z)
print(json.dumps({'search':'all 1<=a<b<=700, prime factors 43<=p<=5000 with B>=16 of d=4ab-a-b, exact x=pab/d','first_prime_with_two_distinct_triples_in_box':first,'triples_found':len(triples),'first_four_triples':[list(t) for t in triples[:4]],'minimality_scope':'finite search box only; not a claim about any p or multipliers outside these bounds'},indent=2))
