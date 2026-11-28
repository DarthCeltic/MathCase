import hashlib, json
from pathlib import Path

def prime(n):
    if n < 2: return False
    if n % 2 == 0: return n == 2
    d = 3
    while d*d <= n:
        if n % d == 0: return False
        d += 2
    return True

def main():
    p = Path('result.json'); raw = p.read_bytes(); d = json.loads(raw)
    assert d['count'] == 1000 and d['successes'] == 1000 and d['failures'] == 0
    for row in d['records']:
        n,u,a,s,v,c,alpha = (row[k] for k in ('n','u','a','s','v','c','alpha'))
        assert n % 24 == 1 and prime(n)
        assert 1 <= u <= 40 and 1 <= a <= 40
        import math
        assert math.gcd(u,a) == 1
        assert (a*n+u) % s == 0 and (s+1) % (4*u*a) == 0
        assert v == (a*n+u)//s and (u+v) % a == 0 and c == (u+v)//a
        assert (n+c) % (4*u*v) == 0 and alpha == (n+c)//(4*u*v)
        assert 4*a*alpha*u*v-u-v == a*n
    out={'status':'PASS','count':d['count'],'successes':d['successes'],'failures':d['failures'],'result_sha256':hashlib.sha256(raw).hexdigest()}
    Path('audit.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__ == '__main__': main()
