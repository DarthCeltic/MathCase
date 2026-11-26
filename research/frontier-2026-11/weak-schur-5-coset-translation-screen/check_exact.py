"""Independent direct-pair audit of screen-receipt.json and small controls."""
from __future__ import annotations

import itertools
import json
import math
import time
from pathlib import Path

N = 208


def prime(n: int) -> bool:
    return n > 1 and all(n % d for d in range(2, math.isqrt(n) + 1))


def root(q: int) -> int:
    factors = []
    remainder = q - 1
    divisor = 2
    while divisor * divisor <= remainder:
        if remainder % divisor == 0:
            factors.append(divisor)
            while remainder % divisor == 0:
                remainder //= divisor
        divisor += 1
    if remainder > 1:
        factors.append(remainder)
    return next(g for g in range(2, q)
                if all(pow(g, (q - 1) // p, q) != 1 for p in factors))


def direct_conflicts(colors: list[int], zero: int | None = None,
                     chosen: int | None = None, limit: int = N) -> list[list[int]]:
    conflicts = []
    for a in range(1, limit + 1):
        for b in range(a + 1, limit + 1):
            c = a + b
            if c > limit:
                break
            ca = chosen if a == zero else colors[a]
            cb = chosen if b == zero else colors[b]
            cc = chosen if c == zero else colors[c]
            if ca is not None and ca == cb == cc:
                conflicts.append([a, b, c])
    return conflicts


def classes_by_character(q: int, g: int) -> list[int | None]:
    """Recover log_g(x) mod 5 with x^((q-1)/5), not a full log table."""
    zeta = pow(g, (q - 1) // 5, q)
    roots = {pow(zeta, k, q): k for k in range(5)}
    if len(roots) != 5:
        raise AssertionError("g did not induce five distinct character values")
    return [None] + [roots[pow(x, (q - 1) // 5, q)] for x in range(1, q)]


def audit_controls() -> dict:
    positive = [None, 1, 2, 3]
    negative = [None, 1, 1, 1]
    positive_bad = direct_conflicts(positive, limit=3)
    negative_bad = direct_conflicts(negative, limit=3)
    # The only distinct-addend constraint on [1,3] is 1+2=3.
    if positive_bad or negative_bad != [[1, 2, 3]]:
        raise AssertionError("small positive/negative control failed")
    # The equal-addend equation 1+1=2 is intentionally outside the predicate.
    equal_only = [None, 1, 2] + [0] * (N - 2)
    if direct_conflicts(equal_only, limit=2):
        raise AssertionError("equal-addend control failed")
    return {
        "positive_three_point_coloring": {"colors_1_to_3": [1, 2, 3], "conflicts": 0},
        "negative_three_point_coloring": {"colors_1_to_3": [1, 1, 1], "conflicts": 1, "first": [1, 2, 3]},
        "equal_addends_excluded": {"example": "1+1=2", "conflicts": 0},
    }


def run() -> dict:
    started = time.perf_counter()
    source = json.loads(Path("screen-receipt.json").read_text(encoding="utf-8"))
    want_primes = [q for q in range(211, 1001) if q % 5 == 1 and prime(q)]
    by_q = {row["q"]: row for row in source["per_prime"]}
    if source["primes"] != want_primes or len(by_q) != len(want_primes):
        raise AssertionError("prime list mismatch")

    total = 0
    all_survivors = 0
    global_best = N * (N * N) + 1
    best_example = None
    per_prime_checked = []
    for q in want_primes:
        g = root(q)
        classes = classes_by_character(q, g)
        q_survivors = 0
        q_best = N * (N * N) + 1
        first_best_translation = None
        for shift in range(q):
            total += 1
            colors = [None] + [classes[(x + shift) % q] for x in range(1, N + 1)]
            zeros = [x for x in range(1, N + 1) if colors[x] is None]
            if len(zeros) > 1:
                raise AssertionError("multiple zero residues")
            fixed = direct_conflicts(colors)
            if not fixed:
                q_survivors += 1
            if zeros:
                z = zeros[0]
                choices = [direct_conflicts(colors, z, color) for color in range(5)]
                score = min(map(len, choices))
                chosen = next(c for c, bad in enumerate(choices) if len(bad) == score)
                bad = choices[chosen]
            else:
                score, chosen, bad = len(fixed), None, fixed
            if score < q_best:
                q_best, first_best_translation = score, shift
            if score < global_best:
                global_best = score
                best_example = {"q": q, "primitive_root": g, "translation": shift,
                                "zero_color": chosen, "conflicts": len(bad), "violations": bad}
        row = by_q[q]
        expected = {"primitive_root": g, "translations_tested": q,
                    "zero_free_survivors": q_survivors,
                    "minimum_conflicts_after_best_zero_color": q_best,
                    "first_best_translation": first_best_translation}
        if any(row.get(key) != value for key, value in expected.items()):
            raise AssertionError(f"per-prime mismatch at q={q}: {expected}")
        all_survivors += q_survivors
        per_prime_checked.append(q)

    recorded = source["minimum_example"]
    if (total != source["translation_count"]
            or all_survivors != source["zero_free_survivors"]
            or global_best != source["minimum_conflicts_after_best_zero_color"]
            or best_example != recorded):
        raise AssertionError("direct-pair totals or best example disagree")
    return {
        "schema": "mathcase-ws5-coset-direct-audit-v1",
        "method": "separate prime/root implementation; fifth-power character exponent (q-1)/5 for colors and direct nested-pair enumeration; no imports from screen.py",
        "primes_recomputed": len(per_prime_checked),
        "translations_recomputed": total,
        "distinct_addend_constraints_per_translation": sum(
            1 for a in range(1, N + 1) for b in range(a + 1, N + 1) if a + b <= N),
        "zero_free_survivors": all_survivors,
        "minimum_conflicts_after_best_zero_color": global_best,
        "best_example_matches": True,
        "controls": audit_controls(),
        "elapsed_seconds": round(time.perf_counter() - started, 3),
        "scope": source["scope"]["limit"],
    }


def main() -> None:
    result = run()
    Path("verification-receipt.json").write_text(
        json.dumps(result, separators=(",", ":")) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
