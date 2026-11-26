"""Check truncated local binomial quotients by traversing their monomial graphs."""

from collections import Counter
from itertools import product
from math import gcd


def quotient_dimension(p, relations, cutoff):
    """Dimension over F_p after all monomials of degree >= cutoff are killed."""
    monomials = [(i, j) for i in range(cutoff) for j in range(cutoff - i)]
    edges = {u: [] for u in monomials}
    killed = set()
    for m, n, coefficient in relations:
        inverse = pow(coefficient, -1, p)
        for i, j in monomials:
            u = (i, j + m)
            v = (i + n, j)
            if u in edges and v in edges:
                # u = coefficient * v. Propagate their values relative to a root.
                edges[u].append((v, inverse))
                edges[v].append((u, coefficient))
            elif u in edges:
                killed.add(u)
            elif v in edges:
                killed.add(v)

    dimension = 0
    value = {}
    for root in monomials:
        if root in value:
            continue
        value[root] = 1
        stack = [root]
        survives = True
        while stack:
            u = stack.pop()
            if u in killed:
                survives = False
            for v, multiplier in edges[u]:
                expected = (value[u] * multiplier) % p
                if v in value:
                    if value[v] != expected:
                        survives = False
                else:
                    value[v] = expected
                    stack.append(v)
        dimension += survives
    return dimension


def check_family():
    tally = Counter()
    for p in (2, 3, 5):
        for m, n, a, b in product(range(1, 4), repeat=4):
            d = gcd(m, a)
            for A, B in product(range(1, p), repeat=2):
                relations = [(m, n, A), (a, b, B)]
                tied = n*a == m*b
                if tied and pow(A, a//d, p) == pow(B, m//d, p):
                    assert quotient_dimension(p, relations, 9) > quotient_dimension(p, relations, 5)
                    tally[p, "common component"] += 1
                else:
                    length = min(n*a, m*b)
                    assert quotient_dimension(p, relations, length) == length
                    assert quotient_dimension(p, relations, length+1) == length
                    tally[p, "finite local length"] += 1
    return tally


if __name__ == "__main__":
    totals = check_family()
    for key in sorted(totals):
        print(*key, totals[key])
    print(sum(totals.values()), "parameter choices checked")
