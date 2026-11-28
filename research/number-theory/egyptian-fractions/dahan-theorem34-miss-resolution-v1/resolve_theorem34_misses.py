"""Resolve the 11 a=1,u<=40 control misses by searching unrestricted u."""
import hashlib, json, math, time

TARGETS=[409,577,5569,9601,23929,57457,83449,102001,329617,353329,427249]

def witness(n,u):
    m=n+u
    for s0 in range(1,math.isqrt(m)+1):
        if m%s0: continue
        for s in (s0,m//s0):
            if (s+1)%(4*u): continue
            v=m//s
            alpha=(s+1)//(4*u)
            if 4*alpha*u*v-u-v==n:
                return {'n':n,'u':u,'s':s,'v':v,'alpha':alpha}
    return None

def main():
    t0=time.time(); rows=[]
    for n in TARGETS:
        found=None
        for u in range(1,n+1):
            found=witness(n,u)
            if found: break
        rows.append(found or {'n':n,'no_witness':True})
    out={'paper':'arXiv:2608.24035','theorem':'3.4','slice':'a=1',
         'targets':TARGETS,'search':'u from 1 through n for each capped miss',
         'successes':sum('u' in r for r in rows),'failures':sum('u' not in r for r in rows),
         'elapsed_s':round(time.time()-t0,3),'records':rows}
    raw=json.dumps(out,indent=2,sort_keys=True).encode(); out['result_sha256']=hashlib.sha256(raw).hexdigest()
    print(json.dumps(out,indent=2,sort_keys=True))
if __name__=='__main__': main()
