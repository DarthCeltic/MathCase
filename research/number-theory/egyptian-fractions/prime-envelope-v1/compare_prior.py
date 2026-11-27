"""Compare the near-minimum band with Monks and Velingker (2008), Thm. 2.4."""

import json
from collections import defaultdict
from math import gcd, isqrt

from verify import envelope_triples, least_factors, lower_index, max_slack


def compare(limit):
    least = least_factors(limit)
    hits = defaultdict(list)
    largest = lower_index(limit)
    for b in range(2, largest + max_slack(largest) + 1):
        for a in range(1, b):
            numerator = 4 * a * b - a - b
            g = gcd(a, b)
            prime_candidate = numerator // (g * gcd(numerator // g, g))
            if (
                not 43 <= prime_candidate <= limit
                or least[prime_candidate] != prime_candidate
            ):
                continue
            p = prime_candidate
            base = lower_index(p)
            if b <= base + max_slack(base):
                x, remainder = divmod(p * a * b, numerator)
                assert not remainder and 0 < x < a * p
                hits[p].append((x, a * p, b * p))

    equal, one_higher = 0, 0
    for p in range(43, limit + 1):
        if least[p] != p:
            continue
        b = lower_index(p)
        assert hits[p] == envelope_triples(p, max_slack(b)), p
        old_bound = (5 + isqrt(4 * p - 3)) // 4
        if b == old_bound:
            equal += 1
        else:
            assert b == old_bound + 1, p
            one_higher += 1
    return {
        "source": "Monks and Velingker (2008), Theorems 2.1(k) and 2.4",
        "prime_range": [43, limit],
        "primes_checked": equal + one_higher,
        "primes_with_a_triple_in_tested_band": sum(
            bool(triples) for triples in hits.values()
        ),
        "distinct_denominator_floor_equals_prior_floor": equal,
        "distinct_denominator_floor_one_multiplier_higher": one_higher,
    }


if __name__ == "__main__":
    if not __debug__:
        raise SystemExit("Run with assertion checks enabled (omit -O).")
    print(json.dumps(compare(1_000_000), indent=2))
