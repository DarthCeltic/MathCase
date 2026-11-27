#!/usr/bin/env python3
"""Exact coefficient-envelope DP for the 23/14 accelerated Collatz filter."""
import json
from pathlib import Path

J = 23
H_MAX = 14

def envelope(jmax: int):
    # None means the pair (j,h) is impossible; B[0][0] = 0.
    rows = [[None] * (jmax + 1) for _ in range(jmax + 1)]
    rows[0][0] = 0
    for j in range(jmax):
        for h in range(j + 1):
            b = rows[j][h]
            if b is None:
                continue
            even = 2 * b
            rows[j + 1][h] = even if rows[j + 1][h] is None else max(rows[j + 1][h], even)
            odd = 3**h + 2 * b
            rows[j + 1][h + 1] = odd if rows[j + 1][h + 1] is None else max(rows[j + 1][h + 1], odd)
    return rows

def direct_coefficient(mask: int, j: int) -> int:
    # Bit i is the accelerated input parity at position i.
    total = 0
    later_odds = mask.bit_count()
    for i in range(j):
        if (mask >> i) & 1:
            later_odds -= 1
            total += (2**i) * (3**later_odds)
    return total

def short_bruteforce_check():
    for j in range(0, 13):
        rows = envelope(j)
        brute = [None] * (j + 1)
        for mask in range(1 << j):
            h = mask.bit_count()
            c = direct_coefficient(mask, j)
            brute[h] = c if brute[h] is None else max(brute[h], c)
        assert rows[j] == brute, (j, rows[j], brute)
    return True

def build_certificate():
    rows = envelope(J)
    checks = []
    for h in range(H_MAX + 1):
        b = rows[J][h]
        threshold = (2**J - 3**h) * 3
        checks.append({
            "h": h,
            "max_coefficient": b,
            "descent_threshold_at_n3": threshold,
            "strict_margin": threshold - b,
            "passes": b < threshold,
        })
    return {
        "claim_scope": "For n >= 3 with at most 14 odd inputs among the first 23 accelerated steps, the exact ordinary iterate at step 23+h is below n, provided every listed envelope inequality passes.",
        "j": J,
        "h_max": H_MAX,
        "recurrence": "B(0,0)=0; B(j+1,h)=max(2*B(j,h), 3^(h-1)+2*B(j,h-1)), omitting impossible terms.",
        "coefficient_formula": "c=sum_{i:eps_i=1} 2^i*3^(sum_{k>i} eps_k)",
        "short_bruteforce_check": short_bruteforce_check(),
        "checks": checks,
        "all_pass": all(x["passes"] for x in checks),
    }

if __name__ == "__main__":
    out = build_certificate()
    print(json.dumps(out, indent=2))
    if not out["all_pass"]:
        raise SystemExit(1)
