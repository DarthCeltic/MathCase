"""Verify all witnesses and rule out every smaller largest denominator by integer scanning."""

import csv
import sys
from fractions import Fraction
from math import prod
from pathlib import Path


def primes_in_class():
    sieve = [True] * 10001
    sieve[:2] = [False, False]
    for i in range(2, 101):
        if sieve[i]:
            for j in range(i * i, 10001, i):
                sieve[j] = False
    return [p for p, prime in enumerate(sieve) if prime and p % 24 == 1]


def find_with_cap(p, cap):
    """Enumerate the multiple of p and the smaller of the two remaining denominators."""
    for multiple in range(p, cap + 1, p):
        num, den = 4 * multiple - p, p * multiple
        # 1/u + 1/v = num/den, u < v <= cap.  From v <= cap follows
        # u >= den*cap/(num*cap-den). Distinctness gives u < 2*den/num.
        gap = num * cap - den
        if gap <= 0:
            continue
        low = max(den // num + 1, (den * cap + gap - 1) // gap)
        high = min(cap - 1, (2 * den - 1) // num)
        for u in range(low, high + 1):
            if u == multiple:
                continue
            v, remainder = divmod(den * u, num * u - den)
            if remainder == 0 and u < v <= cap and v != multiple:
                return tuple(sorted((multiple, u, v)))
    return None


def verify(path):
    with path.open(encoding="ascii", newline="") as f:
        reader = csv.reader(f)
        if next(reader) != ["p", "x", "y", "z"]:
            raise ValueError("unexpected CSV columns")
        rows = [tuple(map(int, row)) for row in reader]
    if [row[0] for row in rows] != primes_in_class():
        raise ValueError("prime inventory mismatch")
    for p, x, y, z in rows:
        if not (0 < x < y < z and 4 * x * y * z == p * (x * y + x * z + y * z)):
            raise ValueError(f"invalid witness for {p}")
        better = find_with_cap(p, z - 1)
        if better is not None:
            raise ValueError(f"witness for {p} is not optimal: {better}")
    worst = max(Fraction(z, p) for p, x, y, z in rows)
    maximizers = [(p, x, y, z) for p, x, y, z in rows if Fraction(z, p) == worst]
    for p, x, y, z in maximizers:
        if find_with_cap(p, z) is None:
            raise ValueError(f"checker failed inclusive boundary control for {p}")
    print(f"Verified {len(rows)} distinct-denominator minima; max z/p = {worst}.")
    print("Maximizers:", maximizers)
    density = 1 - prod(Fraction(p - 1, p) for p, x, y, z in rows)
    print(f"Density of integers divisible by a listed prime: {100 * float(density):.8f}%")


if __name__ == "__main__":
    verify(
        Path(sys.argv[1])
        if len(sys.argv) > 1
        else Path(__file__).with_name("witnesses.csv")
    )
