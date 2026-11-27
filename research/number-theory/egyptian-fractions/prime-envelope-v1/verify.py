"""Exact lower-envelope and near-envelope tests for three distinct unit fractions."""

import argparse
import csv
import json
from collections import defaultdict
from math import isqrt
from pathlib import Path


def ceiling_polynomial(b):
    return 4 * b * b - 6 * b + 1


def lower_index(p):
    b = (3 + isqrt(4 * p + 5)) // 4
    return b if ceiling_polynomial(b) >= p else b + 1


def max_slack(b):
    return isqrt(b) - 1 if b >= 16 else 0


def envelope_triples(p, slack):
    b = lower_index(p)
    difference = ceiling_polynomial(b) - p
    # 1 + difference = (2t+1)^2 exactly when difference = 4t(t+1).
    k = isqrt(1 + difference)
    t = (k - 1) // 2
    if t > slack or 4 * t * (t + 1) != difference:
        return []
    left, right = b - t - 1, b + t
    return [(left * right, left * p, right * p)]


def least_factors(limit):
    least = list(range(limit + 1))
    for q in range(2, isqrt(limit) + 1):
        if least[q] == q:
            for m in range(q * q, limit + 1, q):
                if least[m] == m:
                    least[m] = q
    return least


def ordinary_pair_search(p, cap):
    """Enumerate x<y first, using only the original equation and z<=cap."""
    found = []
    for x in range(p // 4 + 1, (3 * p - 1) // 4 + 1):
        numerator, denominator = 4 * x - p, p * x
        margin = cap * numerator - denominator
        if margin <= 0:
            continue
        first = max(
            x + 1,
            denominator // numerator + 1,
            (cap * denominator + margin - 1) // margin,
        )
        last = min(cap - 1, (2 * denominator - 1) // numerator)
        for y in range(first, last + 1):
            z, remainder = divmod(denominator * y, numerator * y - denominator)
            if remainder == 0 and y < z <= cap:
                found.append((x, y, z))
    return sorted(found)


def multiplier_search(limit):
    """Scan all multiplier pairs. Test every prime factor, including proper factors."""
    last_index = lower_index(limit) + max_slack(lower_index(limit))
    smallest = least_factors(max(limit, ceiling_polynomial(last_index)))
    found = defaultdict(list)
    for b in range(2, last_index + 1):
        for a in range(1, b):
            d = 4 * a * b - a - b
            remainder = d
            while remainder > 1:
                p = smallest[remainder]
                while remainder % p == 0:
                    remainder //= p
                if p < 43 or p > limit:
                    continue
                base = lower_index(p)
                if b > base + max_slack(base):
                    continue
                x, residue = divmod(p * a * b, d)
                if residue == 0 and x < a * p:
                    found[p].append((x, a * p, b * p))
    return smallest, found


def run_checks(limit, direct_through, historical_table):
    smallest, observed = multiplier_search(limit)
    counts = {
        "primes": 0,
        "exactly_at_floor": 0,
        "strictly_above_floor_in_band": 0,
        "no_triple_in_band": 0,
        "ordinary_pair_searches": 0,
        "historical_minima_compared": 0,
    }
    examples = {}
    for p in range(43, limit + 1):
        if smallest[p] != p:
            continue
        b = lower_index(p)
        slack = max_slack(b)
        cap = (b + slack) * p
        assert ceiling_polynomial(b - 1) < p <= ceiling_polynomial(b)
        assert 4 * (b + slack) - 1 < p  # rules out a lone multiple kp at this cap
        predicted = envelope_triples(p, slack)
        assert sorted(observed[p]) == predicted, (p, observed[p], predicted)
        if p <= direct_through:
            assert ordinary_pair_search(p, cap) == predicted, p
            counts["ordinary_pair_searches"] += 1
        counts["primes"] += 1
        if predicted:
            x, y, z = predicted[0]
            assert 0 < x < y < z and 4 * x * y * z == p * (x * y + x * z + y * z)
            t = z // p - b
            examples.setdefault(t, {"p": p, "B": b, "triple": [x, y, z]})
            counts[
                "exactly_at_floor" if t == 0 else "strictly_above_floor_in_band"
            ] += 1
        else:
            counts["no_triple_in_band"] += 1
    with historical_table.open(encoding="utf-8", newline="") as f:
        for row in csv.DictReader(f):
            p, x, y, z = (int(row[key]) for key in ("p", "x", "y", "z"))
            if not 43 <= p <= limit:
                continue
            b = lower_index(p)
            cap = (b + max_slack(b)) * p
            assert z >= b * p
            expected_under_cap = [(x, y, z)] if z <= cap else []
            assert observed[p] == expected_under_cap, p
            counts["historical_minima_compared"] += 1
    return {
        "prime_range": [43, limit],
        "direct_through": direct_through,
        "counts": counts,
        "first_attaining_prime_by_offset": examples,
    }


def main():
    if not __debug__:
        raise SystemExit("Run with assertion checks enabled (omit -O).")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--prime", type=int, help="inspect one prime >= 43")
    parser.add_argument(
        "--slack", type=int, help="use a smaller certified band for that prime"
    )
    parser.add_argument(
        "--limit", type=int, default=1_000_000, help="sweep limit (default one million)"
    )
    parser.add_argument(
        "--direct-through",
        type=int,
        default=2000,
        help="ordinary x,y enumeration cutoff",
    )
    args = parser.parse_args()
    if args.prime is not None:
        p = args.prime
        if p < 43 or any(p % k == 0 for k in range(2, isqrt(p) + 1)):
            parser.error("a prime of at least 43 is required")
        b = lower_index(p)
        s = max_slack(b) if args.slack is None else args.slack
        if not 0 <= s <= max_slack(b):
            parser.error(f"certified slack for this prime is 0 through {max_slack(b)}")
        result = {
            "p": p,
            "B": b,
            "largest_denominator_cap": (b + s) * p,
            "triples_under_cap": envelope_triples(p, s),
        }
    else:
        if args.slack is not None or args.limit < 43 or args.direct_through < 0:
            parser.error(
                "use --slack with --prime; the sweep needs limit >= 43 and a nonnegative direct cutoff"
            )
        table = (
            Path(__file__).resolve().parent.parent
            / "least-largest-denominator-v1"
            / "witnesses.csv"
        )
        result = run_checks(args.limit, args.direct_through, table)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
