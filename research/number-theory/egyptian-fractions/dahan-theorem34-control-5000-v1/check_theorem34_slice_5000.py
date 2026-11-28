"""Finite a=1 control for Dahan arXiv:2608.24035, Theorem 3.4."""
import argparse, hashlib, json, math, time

def prime(n):
    if n < 2: return False
    if n % 2 == 0: return n == 2
    d = 3
    while d*d <= n:
        if n % d == 0: return False
        d += 2
    return True

def witness(n, u, limit):
    m = n + u
    for s0 in range(1, math.isqrt(m) + 1):
        if m % s0: continue
        for s in (s0, m // s0):
            if (s + 1) % (4*u): continue
            v = m // s
            alpha = (s + 1) // (4*u)
            if 4*alpha*u*v - u - v == n:
                return {"u":u, "s":s, "v":v, "alpha":alpha}
    return None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--count', type=int, default=5000)
    ap.add_argument('--u-bound', type=int, default=40)
    ap.add_argument('--output', required=True)
    args = ap.parse_args()
    rows=[]; n=1; t0=time.time()
    while len(rows) < args.count:
        n += 1
        if n % 24 != 1 or not prime(n): continue
        found=None
        for u in range(1, args.u_bound+1):
            found=witness(n,u,args.u_bound)
            if found: break
        rows.append({"n":n,**found} if found else {"n":n,"no_witness":True})
    us=[r['u'] for r in rows if 'u' in r]
    out={"paper":"arXiv:2608.24035","theorem":"3.4","slice":"a=1",
         "u_bound":args.u_bound,"count":args.count,"successes":len(us),
         "failures":args.count-len(us),"first_n":rows[0]['n'],"last_n":rows[-1]['n'],
         "distribution":{str(x):us.count(x) for x in sorted(set(us))},
         "elapsed_s":round(time.time()-t0,3),"records":rows}
    raw=json.dumps(out,indent=2,sort_keys=True).encode()
    out['result_sha256']=hashlib.sha256(raw).hexdigest()
    with open(args.output,'wb') as f: f.write(json.dumps(out,indent=2,sort_keys=True).encode()+b'\n')
    print(json.dumps({k:out[k] for k in out if k!='records'},indent=2,sort_keys=True))
if __name__=='__main__': main()
