"""Minimize the largest of three distinct denominators of 4/p on the stated finite set."""

import csv
import sys
from fractions import Fraction
from functools import lru_cache
from math import isqrt
from pathlib import Path


@lru_cache(maxsize=None)
def square_divisors(n):
    """Unsorted positive divisors of n squared, computed from the factors of n."""
    divisors = [1]
    factor = 2
    while factor * factor <= n:
        power = 0
        while n % factor == 0:
            n //= factor
            power += 1
        if power:
            divisors = [d * factor**j for d in divisors for j in range(2 * power + 1)]
        factor += 1
    if n > 1:
        divisors = [d * multiple for d in divisors for multiple in (1, n, n * n)]
    return tuple(divisors)


def best_triple(p):
    best = None
    for k in range(1, 10001):
        multiple = k * p
        if best and multiple > best[0]:
            return tuple(reversed(best))
        # a/b is what remains after subtracting 1/(kp) from 4/p.
        a, b = 4 * k - 1, multiple
        core, exponent = k, 1
        while core % p == 0:
            core //= p
            exponent += 1
        for f in square_divisors(core):
            for j in range(2 * exponent + 1):
                d = f * p**j
                if d >= b or (b + d) % a:
                    continue
                e = b * b // d
                if (b + e) % a:
                    continue
                u, v = (b + d) // a, (b + e) // a
                if multiple == u or multiple == v:
                    continue
                triple = tuple(sorted((multiple, u, v), reverse=True))
                if best is None or triple < best:
                    best = triple
    raise RuntimeError(f"Search ceiling reached before certifying p={p}")


def rows():
    for p in range(25, 10001, 24):
        if all(p % q for q in range(2, isqrt(p) + 1)):
            yield (p, *best_triple(p))


if __name__ == "__main__":
    output = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("witnesses.csv")
    result = list(rows())
    with output.open("w", encoding="ascii", newline="") as f:
        writer = csv.writer(f, lineterminator="\n")
        writer.writerow(("p", "x", "y", "z"))
        writer.writerows(result)
    worst = max(Fraction(z, p) for p, x, y, z in result)
    print(f"{len(result)} primes; sharp uniform z/p bound {worst}")
    print(
        "All maximizers:",
        [(p, x, y, z) for p, x, y, z in result if Fraction(z, p) == worst],
    )
