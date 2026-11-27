#!/usr/bin/env python3
"""Independent split-word enumeration of the 23-step residue-aware margins."""
import json
from pathlib import Path

J, HMAX, K = 23, 14, 12
MOD = 1 << J

def local_coefficients(width):
    size = 1 << width
    counts = [0] * size
    coeffs = [0] * size
    for mask in range(size):
        h = mask.bit_count()
        later = h
        c = 0
        for i in range(width):
            if (mask >> i) & 1:
                later -= 1
                c += (1 << i) * (3 ** later)
        counts[mask] = h
        coeffs[mask] = c
    return counts, coeffs

def inverse_three(h):
    return pow(pow(3, h, MOD), -1, MOD)

def main():
    low_h, low_c = local_coefficients(K)
    high_h, high_c = local_coefficients(J-K)
    inv = [inverse_three(h) for h in range(HMAX+1)]
    stats = [{"h": h, "max_coefficient": -1, "min_margin": None, "worst_mask": None,
              "worst_residue": None, "least_n": None, "worst_coefficient": None, "words": 0}
             for h in range(HMAX+1)]
    words = 0
    for hi in range(1 << (J-K)):
        hh = high_h[hi]
        scale_c = high_c[hi] << K
        scale_low = 3 ** hh
        for lo in range(1 << K):
            h = hh + low_h[lo]
            if h > HMAX:
                continue
            c = scale_low * low_c[lo] + scale_c
            residue = (-c * inv[h]) % MOD
            n_min = residue if residue >= 3 else residue + MOD
            margin = (MOD - 3**h) * n_min - c
            s = stats[h]
            s["words"] += 1
            if c > s["max_coefficient"]:
                s["max_coefficient"] = c
            if s["min_margin"] is None or margin < s["min_margin"]:
                s.update(min_margin=margin, worst_mask=(hi << K) | lo,
                         worst_residue=residue, least_n=n_min, worst_coefficient=c)
            words += 1
    return {"method": "independent 12+11 bit split-word enumeration",
            "split": K, "modulus": MOD, "enumerated_masks_with_h_le_14": words,
            "checks": stats,
            "all_residue_aware_margins_positive": all(s["min_margin"] > 0 for s in stats)}

if __name__ == "__main__":
    result = main()
    print(json.dumps(result, indent=2))
    if not result["all_residue_aware_margins_positive"]:
        raise SystemExit(1)
