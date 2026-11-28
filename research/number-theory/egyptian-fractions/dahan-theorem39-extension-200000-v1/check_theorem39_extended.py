"""Bounded extension of the Dahan Theorem 3.9 arithmetic replay.

This private runner preserves the public 1,000-row script and makes the
finite sample size explicit. It is not an asymptotic or conjecture proof.
"""
import argparse
import hashlib
import json
import math
import time


def prime(n):
    if n < 2:
        return False
    if n % 2 == 0:
        return n == 2
    d = 3
    while d * d <= n:
        if n % d == 0:
            return False
        d += 2
    return True


def hit(n, u, a):
    if math.gcd(u, a) != 1:
        return None
    m = a * n + u
    for s0 in range(1, math.isqrt(m) + 1):
        if m % s0:
            continue
        for s in (s0, m // s0):
            if (s + 1) % (4 * u * a):
                continue
            v = m // s
            if (u + v) % a:
                continue
            c = (u + v) // a
            if (n + c) % (4 * u * v):
                continue
            alpha = (n + c) // (4 * u * v)
            if 4 * a * alpha * u * v - u - v == a * n:
                return {"u": u, "a": a, "s": s, "v": v, "c": c, "alpha": alpha}
    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--count", type=int, default=5000)
    ap.add_argument("--pair-bound", type=int, default=40)
    ap.add_argument("--output", required=True)
    args = ap.parse_args()
    if args.count <= 0 or args.pair_bound <= 0:
        raise SystemExit("count and pair-bound must be positive")
    rows = []
    n = 1
    t0 = time.time()
    while len(rows) < args.count:
        n += 1
        if n % 24 != 1 or not prime(n):
            continue
        found = None
        for depth in range(1, args.pair_bound + 1):
            for a in range(1, depth + 1):
                for u in range(1, depth + 1):
                    if max(a, u) != depth:
                        continue
                    found = hit(n, u, a)
                    if found:
                        break
                if found:
                    break
            if found:
                break
        rows.append({"n": n, **found} if found else {"n": n, "no_witness": True})
    depths = [max(r["u"], r["a"]) for r in rows if "u" in r]
    out = {
        "paper": "arXiv:2608.24035",
        "theorem": "3.9",
        "pairs": f"coprime u,a <= {args.pair_bound}",
        "count": args.count,
        "successes": len(depths),
        "failures": args.count - len(depths),
        "max_minimal_depth": max(depths) if depths else None,
        "mean_minimal_depth": sum(depths) / len(depths) if depths else None,
        "distribution": {str(x): depths.count(x) for x in sorted(set(depths))},
        "first_n": rows[0]["n"],
        "last_n": rows[-1]["n"],
        "elapsed_s": round(time.time() - t0, 3),
        "records": rows,
    }
    raw = json.dumps(out, indent=2, sort_keys=True).encode()
    out["result_sha256"] = hashlib.sha256(raw).hexdigest()
    with open(args.output, "wb") as f:
        f.write(json.dumps(out, indent=2, sort_keys=True).encode() + b"\n")
    print(json.dumps({k: out[k] for k in out if k != "records"}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
