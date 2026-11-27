"""Exact checks for the two-diagonal Egyptian-fraction envelope theorem."""
import argparse
import json
from math import isqrt


def D(b):
    return 4*b*b - 6*b + 1


def lower_index(p):
    b = (3 + isqrt(4*p + 5)) // 4
    return b if D(b) >= p else b + 1


def window_hypotheses(p, B, s):
    return {
        "D_B_plus_s_lt_2p": D(B+s) < 2*p,
        "single_multiple_excluded": 4*(B+s)-1 < p,
        "j_bound": s*(s-3) < 4*B-1,
    }


def theorem_hypotheses(p, B, s):
    return {
        "p_prime_at_least_43": p >= 43 and all(p % q for q in range(2, isqrt(p)+1)),
        "B_at_least_16": B >= 16,
        "D_B_minus_1_lt_p_le_D_B": D(B-1) < p <= D(B),
        **window_hypotheses(p,B,s),
    }


def max_certified_slack(p, B=None):
    if B is None:
        B=lower_index(p)
    if B < 16:
        return 0
    s=0
    while all(window_hypotheses(p,B,s+1).values()):
        s+=1
    return s


def primes_to(n):
    sieve = bytearray(b'\x01') * (n+1)
    if n >= 0: sieve[0] = 0
    if n >= 1: sieve[1] = 0
    for q in range(2, isqrt(n)+1):
        if sieve[q]:
            sieve[q*q:n+1:q] = b'\x00' * (((n-q*q)//q)+1)
    return [p for p in range(2,n+1) if sieve[p]], sieve


def factor_primes(d, spf):
    out=[]
    while d > 1:
        q=spf[d]
        out.append(q)
        while d % q == 0: d//=q
    return out


def predicted(p, B, s):
    gap=D(B)-p
    out=[]
    for t in range(s+1):
        b=B+t
        for j in (0,1):
            a=B-t-1+2*j
            if a < 1 or a >= b: continue
            rhs=4*t*(t+1)-j*(8*(B+t)-2)
            if gap == rhs:
                triple=(a*b,a*p,b*p)
                assert 0 < triple[0] < triple[1] < triple[2]
                assert 4*triple[0]*triple[1]*triple[2] == p*sum((triple[0]*triple[1],triple[0]*triple[2],triple[1]*triple[2]))
                out.append(triple)
    return sorted(out)


def ordinary_pair_search(p, cap):
    """Enumerate x<y directly from the original equation, with z<=cap."""
    found=[]
    for x in range(p//4+1, (3*p-1)//4+1):
        n,d=4*x-p,p*x
        margin=cap*n-d
        if margin <= 0: continue
        first=max(x+1,d//n+1,(cap*d+margin-1)//margin)
        last=min(cap-1,(2*d-1)//n)
        for y in range(first,last+1):
            z,r=divmod(d*y,n*y-d)
            if r==0 and y<z<=cap: found.append((x,y,z))
    return sorted(found)


def multiplier_sweep(limit, direct_through):
    primes, _=primes_to(limit)
    observed={p:[] for p in primes if p>=43}
    Bs={p:lower_index(p) for p in observed}
    ss={p:max_certified_slack(p,Bs[p]) for p in observed}
    maxb=max(Bs[p]+ss[p] for p in observed)
    # d <= D(maxb); this sieve permits exact factor extraction for every pair.
    dmax=D(maxb)
    # Extend smallest-prime-factor table to dmax.
    spf=list(range(dmax+1))
    for q in range(2,isqrt(dmax)+1):
        if spf[q]==q:
            for m in range(q*q,dmax+1,q):
                if spf[m]==m: spf[m]=q
    for b in range(2,maxb+1):
        for a in range(1,b):
            d=4*a*b-a-b
            if d>b and d<=dmax:
                for p in factor_primes(d,spf):
                    if p not in observed: continue
                    B,s=Bs[p],ss[p]
                    if b>B+s: continue
                    x,r=divmod(p*a*b,d)
                    if r==0 and x<a*p:
                        observed[p].append((x,a*p,b*p))
    counts={'primes':0,'multiplier_pair_checks':0,'ordinary_pair_checks':0,'j0':0,'j1':0,'no_solution_in_window':0}
    examples={}
    for p in primes:
        if p<43: continue
        B,s=Bs[p],ss[p]
        assert D(B-1)<p<=D(B)
        if B>=16:
            assert all(theorem_hypotheses(p,B,s).values())
            assert not all(theorem_hypotheses(p,B,s+1).values())
        exp=predicted(p,B,s)
        obs=sorted(observed[p])
        assert obs==exp,(p,B,s,obs,exp)
        cap=(B+s)*p
        if p<=direct_through:
            assert ordinary_pair_search(p,cap)==exp,("ordinary",p,exp)
            counts['ordinary_pair_checks']+=1
        counts['primes']+=1
        if exp:
            t=exp[0][2]//p-B
            j=(exp[0][1]//p-(B-t-1))//2
            counts['j1' if j else 'j0']+=1
            examples.setdefault(f't={t},j={j}',{'p':p,'B':B,'s':s,'triple':list(exp[0])})
        else: counts['no_solution_in_window']+=1
    counts['multiplier_pair_checks']=sum(max(0,b-1) for b in range(2,maxb+1))
    return {'prime_range':[43,limit],'window':'maximal s>=0 satisfying all theorem inequalities for B>=16; floor cap Bp for B<16','counts':counts,'first_examples_by_family':examples}


def inspect_prime(p, s=None):
    B=lower_index(p)
    if s is None: s=max_certified_slack(p,B)
    if s<0: raise ValueError('s must be nonnegative')
    hypotheses=theorem_hypotheses(p,B,s)
    certified=all(hypotheses.values())
    return {'status':'certified' if certified else 'out_of_scope','certified':certified,'p':p,'B':B,'s':s,'cap':(B+s)*p,'hypotheses':hypotheses,'gap':D(B)-p,'families':predicted(p,B,s) if certified else []}


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--prime',type=int)
    ap.add_argument('--slack',type=int)
    ap.add_argument('--limit',type=int,default=1_000_000)
    ap.add_argument('--direct-through',type=int,default=2_000)
    a=ap.parse_args()
    if a.prime is not None:
        result=inspect_prime(a.prime,a.slack)
    else:
        result=multiplier_sweep(a.limit,a.direct_through)
    print(json.dumps(result,indent=2))

if __name__=='__main__': main()
