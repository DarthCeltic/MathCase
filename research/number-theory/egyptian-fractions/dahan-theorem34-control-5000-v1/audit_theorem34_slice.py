import hashlib, json, math, sys
def prime(n):
    if n<2:return False
    if n%2==0:return n==2
    d=3
    while d*d<=n:
        if n%d==0:return False
        d+=2
    return True
def main(path):
    raw=open(path,'rb').read(); d=json.loads(raw); bound=d['u_bound']; prev=0
    assert d['successes']+d['failures']==d['count']
    for row in d['records']:
        n=row['n']; assert n>prev and n%24==1 and prime(n); prev=n
        if 'no_witness' in row: continue
        u,s,v,alpha=(row[k] for k in ('u','s','v','alpha'))
        assert 1<=u<=bound and (n+u)%s==0 and (s+1)%(4*u)==0
        assert v==(n+u)//s and alpha==(s+1)//(4*u)
        assert 4*alpha*u*v-u-v==n
    print(json.dumps({'status':'PASS','count':d['count'],'successes':d['successes'],'failures':d['failures'],'result_sha256':hashlib.sha256(raw).hexdigest()},indent=2))
if __name__=='__main__':main(sys.argv[1])
