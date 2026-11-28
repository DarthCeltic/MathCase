import hashlib, json, math, sys

def prime(n):
    if n < 2: return False
    if n % 2 == 0: return n == 2
    d = 3
    while d*d <= n:
        if n % d == 0: return False
        d += 2
    return True

def main(path):
    raw = open(path, 'rb').read()
    d = json.loads(raw)
    count = d['count']
    assert d['successes'] == count and d['failures'] == 0
    bound = int(d['pairs'].rsplit('<=', 1)[1])
    prev = 0
    for row in d['records']:
        n,u,a,s,v,c,alpha = (row[k] for k in ('n','u','a','s','v','c','alpha'))
        assert n > prev and n % 24 == 1 and prime(n)
        prev = n
        assert 1 <= u <= bound and 1 <= a <= bound and math.gcd(u,a) == 1
        assert (a*n+u) % s == 0 and (s+1) % (4*u*a) == 0
        assert v == (a*n+u)//s and (u+v) % a == 0 and c == (u+v)//a
        assert (n+c) % (4*u*v) == 0 and alpha == (n+c)//(4*u*v)
        assert 4*a*alpha*u*v-u-v == a*n
    print(json.dumps({'status':'PASS','count':count,'successes':d['successes'],'failures':d['failures'],'first_n':d['first_n'],'last_n':d['last_n'],'result_sha256':hashlib.sha256(raw).hexdigest()}, indent=2))

if __name__ == '__main__': main(sys.argv[1])
