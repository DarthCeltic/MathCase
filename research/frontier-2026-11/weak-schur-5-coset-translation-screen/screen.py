"""Exhaust the stated translated multiplicative-coset family for n=208."""
from __future__ import annotations

import hashlib
import json
import math
import time
from pathlib import Path

N = 208
Q_MIN, Q_MAX = 211, 1000
TRIPLES = [(a, b, a + b) for a in range(1, N + 1)
           for b in range(a + 1, N + 1) if a + b <= N]


def primes_in_scope() -> list[int]:
    return [q for q in range(Q_MIN, Q_MAX + 1)
            if q % 5 == 1 and all(q % d for d in range(2, math.isqrt(q) + 1))]


def prime_factors(n: int) -> list[int]:
    out = []
    d = 2
    while d * d <= n:
        if n % d == 0:
            out.append(d)
            while n % d == 0:
                n //= d
        d += 1
    if n > 1:
        out.append(n)
    return out


def primitive_root(q: int) -> int:
    factors = prime_factors(q - 1)
    return next(g for g in range(2, q)
                if all(pow(g, (q - 1) // p, q) != 1 for p in factors))


def power_classes(q: int, g: int) -> list[int]:
    """Map each nonzero residue to its discrete-log class modulo five."""
    classes = [-1] * q
    x = 1
    for exponent in range(q - 1):
        if classes[x] != -1:
            raise AssertionError("generator cycle repeated")
        classes[x] = exponent % 5
        x = (x * g) % q
    if x != 1 or any(classes[x] < 0 for x in range(1, q)):
        raise AssertionError("selected value is not a primitive root")
    return classes


def count_bad(colors: list[int], ignore_unassigned_zero: bool = False) -> list[list[int]]:
    bad = []
    for a, b, c in TRIPLES:
        ca, cb, cc = colors[a], colors[b], colors[c]
        if ignore_unassigned_zero and min(ca, cb, cc) < 0:
            continue
        if ca >= 0 and ca == cb == cc:
            bad.append([a, b, c])
    return bad


def run() -> dict:
    started = time.perf_counter()
    primes = primes_in_scope()
    per_prime = []
    global_best = N * len(TRIPLES) + 1
    best_samples = []
    candidate_count = 0
    zero_free_survivors = 0

    for q in primes:
        g = primitive_root(q)
        classes = power_classes(q, g)
        q_survivors = 0
        q_best = N * len(TRIPLES) + 1
        q_best_b = []
        for shift in range(q):
            candidate_count += 1
            colors = [-1] + [classes[(x + shift) % q] for x in range(1, N + 1)]
            zeros = [x for x in range(1, N + 1) if colors[x] < 0]
            if len(zeros) > 1:
                raise AssertionError("more than one zero residue in [1,208]")
            fixed_bad = count_bad(colors, ignore_unassigned_zero=True)
            if not fixed_bad:
                q_survivors += 1
                zero_free_survivors += 1
            if zeros:
                z = zeros[0]
                options = []
                for color in range(5):
                    colors[z] = color
                    options.append(count_bad(colors))
                score = min(map(len, options))
                chosen = next(color for color, bad in enumerate(options)
                              if len(bad) == score)
                bad = options[chosen]
            else:
                score, chosen, bad = len(fixed_bad), None, fixed_bad
            if score < q_best:
                q_best, q_best_b = score, [(shift, chosen, bad)]
            elif score == q_best:
                q_best_b.append((shift, chosen, bad))

        per_prime.append({
            "q": q,
            "primitive_root": g,
            "translations_tested": q,
            "zero_free_survivors": q_survivors,
            "minimum_conflicts_after_best_zero_color": q_best,
            "first_best_translation": q_best_b[0][0],
        })
        if q_best < global_best:
            global_best = q_best
            best_samples = [(q, *sample) for sample in q_best_b]
        elif q_best == global_best:
            best_samples.extend((q, *sample) for sample in q_best_b)

    best = best_samples[0]
    q, shift, zero_color, violations = best
    return {
        "schema": "mathcase-ws5-coset-translation-screen-v1",
        "scope": {
            "n": N,
            "color_rule": "color x by log_g(x+b) mod 5 in F_q; zero residue is a wildcard assigned any color",
            "q": "prime, 211 <= q <= 1000, q congruent to 1 mod 5",
            "translations": "every b in 0,...,q-1 for one deterministic primitive root per q",
            "constraints": "a < b and a+b <= 208 (equal addends excluded)",
            "limit": "exhausts this translated multiplicative-coset family only; no claim about arbitrary five-colorings or WS(5)",
        },
        "prime_count": len(primes),
        "primes": primes,
        "translation_count": candidate_count,
        "distinct_addend_constraints": len(TRIPLES),
        "zero_free_survivors": zero_free_survivors,
        "minimum_conflicts_after_best_zero_color": global_best,
        "minimum_example": {
            "q": q,
            "primitive_root": primitive_root(q),
            "translation": shift,
            "zero_color": zero_color,
            "conflicts": len(violations),
            "violations": violations,
        },
        "per_prime": per_prime,
        "elapsed_seconds": round(time.perf_counter() - started, 3),
    }


def main() -> None:
    receipt = run()
    Path("screen-receipt.json").write_text(
        json.dumps(receipt, separators=(",", ":")) + "\n", encoding="utf-8")
    print(json.dumps({k: receipt[k] for k in (
        "prime_count", "translation_count", "distinct_addend_constraints",
        "zero_free_survivors", "minimum_conflicts_after_best_zero_color",
        "elapsed_seconds")}, indent=2))
    print(json.dumps({
        "minimum_example": {k: receipt["minimum_example"][k] for k in (
            "q", "primitive_root", "translation", "zero_color", "conflicts")},
        "first_five_conflicts": receipt["minimum_example"]["violations"][:5],
    }, indent=2))


if __name__ == "__main__":
    main()
