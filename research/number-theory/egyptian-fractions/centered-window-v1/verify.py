"""Independent finite checks for the centered-window Egyptian-fraction result.

No third-party packages are required.  The full sweep factors 4p+1 and uses
its divisor pairs (4a-1, 4b-1); a separate small-prime check enumerates x,y
directly from the original equation.
"""

import argparse
from datetime import datetime, timezone
import hashlib
import json
import sys
from math import isqrt
from pathlib import Path


def D(b):
    return 4 * b * b - 6 * b + 1


def lower_index(p):
    """Least b >= 2 with D(b) >= p, by integer square root only."""
    b = (3 + isqrt(4 * p + 5)) // 4
    return b if D(b) >= p else b + 1


def sieve(limit):
    prime = bytearray(b"\x01") * (limit + 1)
    if limit >= 0:
        prime[0] = 0
    if limit >= 1:
        prime[1] = 0
    for q in range(2, isqrt(limit) + 1):
        if prime[q]:
            start = q * q
            prime[start : limit + 1 : q] = b"\x00" * (((limit - start) // q) + 1)
    return [q for q in range(2, limit + 1) if prime[q]]


def is_prime_by_trial(p):
    return p >= 2 and all(p % q for q in range(2, isqrt(p) + 1))


def factor(n, primes):
    """Trial-factor n using a shared prime list; return prime/exponent pairs."""
    result = []
    remainder = n
    for q in primes:
        if q * q > remainder:
            break
        if remainder % q == 0:
            exponent = 0
            while remainder % q == 0:
                remainder //= q
                exponent += 1
            result.append((q, exponent))
    if remainder > 1:
        result.append((remainder, 1))
    return result


def divisors_from_factorization(factors):
    divisors = [1]
    for q, exponent in factors:
        old = divisors[:]
        power = 1
        for _ in range(exponent):
            power *= q
            divisors.extend(d * power for d in old)
    return divisors


def divisor_triples(p, B, s, primes):
    """Enumerate triples via (4a-1)(4b-1)=4p+1, independent of centers."""
    n = 4 * p + 1
    factors = factor(n, primes)
    found = []
    for u in divisors_from_factorization(factors):
        if u * u >= n:
            continue
        v, remainder = divmod(n, u)
        if remainder or u % 4 != 3 or v % 4 != 3:
            continue
        a, b = (u + 1) // 4, (v + 1) // 4
        if not (1 <= a < b and B <= b <= B + s):
            continue
        x, y, z = a * b, a * p, b * p
        assert 0 < x < y < z
        assert 4 * x * y * z == p * (x * y + x * z + y * z)
        assert 4 * a * b - a - b == p
        found.append((x, y, z))
    return sorted(found)


def centered_triples(p, B, s):
    """Enumerate the proposed centered formula using an exact square test."""
    found = []
    c0 = B + (((1 - p) // 2 - B) % 4)
    for c in range(c0, B + s + 1, 4):
        radicand = D(c) - p + 1
        if radicand < 0:
            continue
        odd_root = isqrt(radicand)
        if odd_root * odd_root != radicand or odd_root % 2 == 0:
            continue
        r = (odd_root - 1) // 2
        a, b = c - r - 1, c + r
        if a < 1 or b > B + s:
            continue
        assert p == D(c) - 4 * r * (r + 1)
        found.append((a * b, a * p, b * p))
    return sorted(found)


def max_certified_slack(p, B):
    """Largest s satisfying all three strict/scope hypotheses."""
    if type(p) is not int or type(B) is not int or p < 43 or B < 16:
        raise ValueError("the certified sweep requires integer p >= 43 and B >= 16")
    if not is_prime_by_trial(p) or lower_index(p) != B:
        raise ValueError("p must be prime and B must be its exact lower index")
    s = 0
    while (
        D(B + s) < 2 * p
        and 4 * (B + s) - 1 < p
        and s * (s - 7) < 8 * B - 2
    ):
        s += 1
    if s == 0:
        raise AssertionError("s=0 must satisfy the hypotheses for B >= 16")
    return s - 1


def max_size_gate_slack(p, B):
    """Largest s satisfying the two size hypotheses, without uniqueness."""
    if type(p) is not int or type(B) is not int or p < 43 or B < 16:
        raise ValueError("the size-gate sweep requires integer p >= 43 and B >= 16")
    if not is_prime_by_trial(p) or lower_index(p) != B:
        raise ValueError("p must be prime and B must be its exact lower index")
    c = B
    while D(c + 1) < 2 * p and 4 * (c + 1) - 1 < p:
        c += 1
    if D(c) >= 2 * p or 4 * c - 1 >= p:
        raise AssertionError("the zero-width size gates should hold for B>=16")
    return c - B


def ordinary_xy_search(p, cap):
    """Enumerate x<y directly from the cleared original equation."""
    found = []
    first_x = p // 4 + 1
    last_x = (3 * p - 1) // 4
    for x in range(first_x, last_x + 1):
        numerator, denominator = 4 * x - p, p * x
        # z>y and z<=cap give these exact finite bounds on y.
        margin = cap * numerator - denominator
        if numerator <= 0 or margin <= 0:
            continue
        first_y = max(
            x + 1,
            denominator // numerator + 1,
            (cap * denominator + margin - 1) // margin,
        )
        last_y = min(cap - 1, (2 * denominator - 1) // numerator)
        for y in range(first_y, last_y + 1):
            z, remainder = divmod(denominator * y, numerator * y - denominator)
            if remainder == 0 and y < z <= cap:
                assert 4 * x * y * z == p * (x * y + x * z + y * z)
                found.append((x, y, z))
    return sorted(found)


def check_boundary(primes):
    p, B, s = 25121, 80, 29
    assert is_prime_by_trial(p) and isqrt(p) == 158
    assert D(B - 1) < p == D(B)
    assert D(B + s) < 2 * p and 4 * (B + s) - 1 < p
    assert s * (s - 7) == 8 * B - 2 == 638
    expected = [
        (6320, 1984559, 2009680),
        (6322, 1457018, 2738189),
    ]
    assert divisor_triples(p, B, s, primes) == expected
    centers = [
        ((y // p) + (z // p) + 1) // 2
        for x, y, z in expected
    ]
    assert centers == [80, 84]
    assert all(4 * x * y * z == p * (x * y + x * z + y * z) for x, y, z in expected)
    assert max_certified_slack(p, B) == 28
    return {"p": p, "B": B, "s": s, "triples": [list(t) for t in expected], "centers": centers}


def run(limit, direct_through):
    if type(limit) is not int or limit < 43:
        raise ValueError("limit must be an integer >= 43")
    if type(direct_through) is not int or direct_through < 43:
        raise ValueError("direct-through must be an integer >= 43")
    primes_through = sieve(max(isqrt(4 * limit + 1), isqrt(4 * 25121 + 1)) + 1)
    primes_in_range = sieve(limit)
    small_B = [p for p in primes_in_range if 43 <= p <= limit and lower_index(p) < 16]
    targets = [p for p in primes_in_range if 43 <= p <= limit and lower_index(p) >= 16]
    counts = {
        "all_primes_43_to_limit": len([p for p in primes_in_range if p >= 43]),
        "excluded_B_below_16": len(small_B),
        "excluded_B_below_16_floor_hits": sum(
            bool(divisor_triples(p, lower_index(p), 0, primes_through)) for p in small_B
        ),
        "certified_B_at_least_16": len(targets),
        "divisor_enumerations": 0,
        "center_formula_matches": 0,
        "all_size_gate_center_entries": 0,
        "all_size_gate_multiple_triple_primes": 0,
        "second_triple_at_width_equality_primes": 0,
        "size_gate_widths_checked": 0,
        "direct_xy_primes": 0,
        "first_band_nonempty_windows": 0,
        "nonempty_certified_windows": 0,
        "additional_nonempty_windows_over_first_band": 0,
        "unique_triple_windows": 0,
    }
    gains = []
    max_s = 0
    s_sum = 0
    old_window_sum = 0
    old_window_equal_new = 0
    for p in targets:
        B = lower_index(p)
        s = max_certified_slack(p, B)
        size_s = max_size_gate_slack(p, B)
        assert D(B - 1) < p <= D(B)
        assert D(B + s) < 2 * p and 4 * (B + s) - 1 < p
        assert s * (s - 7) < 8 * B - 2
        all_divisor = divisor_triples(p, B, size_s, primes_through)
        all_centered = centered_triples(p, B, size_s)
        assert all_divisor == all_centered, (p, B, size_s, all_divisor, all_centered)
        counts["all_size_gate_center_entries"] += len(all_divisor)
        counts["size_gate_widths_checked"] += size_s + 1
        if len(all_divisor) > 1:
            counts["all_size_gate_multiple_triple_primes"] += 1
            by_largest = sorted(all_divisor, key=lambda triple: triple[2])
            second_s = by_largest[1][2] // p - B
            if second_s * (second_s - 7) == 8 * B - 2:
                counts["second_triple_at_width_equality_primes"] += 1
        divisor = [triple for triple in all_divisor if triple[2] <= (B + s) * p]
        centered = [triple for triple in all_centered if triple[2] <= (B + s) * p]
        assert divisor == centered, (p, B, s, divisor, centered)
        counts["divisor_enumerations"] += 1
        counts["center_formula_matches"] += 1
        if divisor:
            counts["nonempty_certified_windows"] += 1
            assert len(divisor) == 1, (p, B, s, divisor)
            counts["unique_triple_windows"] += 1
        if p <= direct_through:
            direct = ordinary_xy_search(p, (B + s) * p)
            assert direct == divisor, (p, B, s, direct, divisor)
            counts["direct_xy_primes"] += 1
        first_band_s = isqrt(B) - 1
        assert first_band_s >= 0
        first_band_has_triple = bool(divisor and divisor[0][2] <= (B + first_band_s) * p)
        if first_band_has_triple:
            counts["first_band_nonempty_windows"] += 1
        if divisor and not first_band_has_triple:
            counts["additional_nonempty_windows_over_first_band"] += 1
        old_window_sum += first_band_s
        s_sum += s
        max_s = max(max_s, s)
        old_window_equal_new += s == first_band_s
        gains.append(s - first_band_s)
    boundary = check_boundary(primes_through)
    return {
        "classification": "FINITE_CHECKS_ONLY_NOT_A_PROOF_OR_UNBOUNDED_CLAIM",
        "prime_range": [43, limit],
        "centered_window_domain": "p prime >= 43 with B >= 16; smaller B counted separately and excluded",
        "maximal_slack_definition": "largest s >= 0 satisfying D(B+s)<2p, 4(B+s)-1<p, and s(s-7)<8B-2",
        "counts": counts,
        "slack_comparison_to_first_band": {
            "first_band_max_s": "floor(sqrt(B))-1",
            "sum_centered_max_s": s_sum,
            "sum_first_band_max_s": old_window_sum,
            "mean_centered_max_s": s_sum / len(targets) if targets else None,
            "mean_first_band_max_s": old_window_sum / len(targets) if targets else None,
            "maximum_centered_s": max_s,
            "centered_s_strictly_larger_count": sum(g > 0 for g in gains),
            "same_s_count": old_window_equal_new,
            "smaller_s_count": sum(g < 0 for g in gains),
            "largest_slack_gain": max(gains, default=0),
        },
        "sharp_boundary_example": boundary,
        "limitations": [
            "divisor enumeration checks the finite algebraic parameterization through 4p+1",
            "direct x,y enumeration is an independent check only through the requested cutoff",
            "the sweep does not establish Erdős-Straus for primes outside each tested cap",
        ],
    }


def main():
    if not __debug__:
        raise SystemExit("Run with assertions enabled; do not use python -O.")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--limit", type=int, default=1_000_000)
    parser.add_argument("--direct-through", type=int, default=2000)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = run(args.limit, args.direct_through)
    checker_hash = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    result["run_metadata"] = {
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "command": "python -B " + " ".join(sys.argv),
        "python_version": sys.version.split()[0],
        "checker_sha256": checker_hash,
    }
    encoded = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.write_text(encoded, encoding="utf-8", newline="\n")
        digest = hashlib.sha256(args.output.read_bytes()).hexdigest()
        print(json.dumps({"receipt": str(args.output), "sha256": digest, "counts": result["counts"]}, indent=2))
    else:
        sys.stdout.write(encoded)


if __name__ == "__main__":
    main()
