import json, math, sys

def alternate_hits(n, u):
    m=n+u; rows=[]
    for q0 in range(1,math.isqrt(m)+1):
        if m%q0: continue
        for q in (q0,m//q0):
            if (q+1)%(4*u): continue
            v=m//q; alpha=(q+1)//(4*u)
            if 4*alpha*u*v-u-v==n:
                rows.append((q,v,alpha))
    return rows

def main(path):
    d=json.load(open(path)); assert d['failures']==8 and d['successes']==3
    for row in d['records']:
        n=row['n']; u=row.get('u')
        if u is None:
            for candidate in range(1,n+1):
                assert not alternate_hits(n,candidate), (n,candidate)
        else:
            assert (row['s'],row['v'],row['alpha']) in alternate_hits(n,u)
    print(json.dumps({'status':'PASS','rows':len(d['records']),'resolved':d['successes'],'unresolved':d['failures']},indent=2))
if __name__=='__main__': main(sys.argv[1])
