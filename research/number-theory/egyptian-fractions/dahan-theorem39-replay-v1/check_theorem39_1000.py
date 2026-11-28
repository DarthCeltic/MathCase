"""Finite replay of Dahan arXiv:2608.24035, Theorem 3.9."""
import json, math, time
def prime(n):
    if n<2:return False
    if n%2==0:return n==2
    d=3
    while d*d<=n:
        if n%d==0:return False
        d+=2
    return True
def hit(n,u,a):
    if math.gcd(u,a)!=1:return None
    m=a*n+u
    for s0 in range(1,math.isqrt(m)+1):
        if m%s0:continue
        for s in (s0,m//s0):
            if (s+1)%(4*u*a):continue
            v=m//s
            if (u+v)%a:continue
            c=(u+v)//a
            if (n+c)%(4*u*v):continue
            alpha=(n+c)//(4*u*v)
            if 4*a*alpha*u*v-u-v==a*n:
                return {"u":u,"a":a,"s":s,"v":v,"c":c,"alpha":alpha}
    return None
def main():
    rows=[]; n=1; t0=time.time(); J=40
    while len(rows)<1000:
        n+=1
        if n%24!=1 or not prime(n):continue
        found=None
        for depth in range(1,J+1):
            for a in range(1,depth+1):
                for u in range(1,depth+1):
                    if max(a,u)!=depth:continue
                    found=hit(n,u,a)
                    if found:break
                if found:break
            if found:break
        rows.append({"n":n,**found} if found else {"n":n,"no_witness":True})
    ds=[max(r["u"],r["a"]) for r in rows if "u" in r]
    out={"paper":"arXiv:2608.24035","theorem":"3.9","pairs":"coprime u,a <= 40","count":1000,"successes":len(ds),"failures":1000-len(ds),"max_minimal_depth":max(ds),"mean_minimal_depth":sum(ds)/len(ds),"distribution":{str(x):ds.count(x) for x in sorted(set(ds))},"first_n":rows[0]["n"],"last_n":rows[-1]["n"],"elapsed_s":round(time.time()-t0,3),"records":rows}
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
