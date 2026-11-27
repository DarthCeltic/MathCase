#!/usr/bin/env python3
"""Cross-check the two full residue-aware enumerations and their controls."""
import json
import math
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MOD = 1 << 23
HMAX = 14

def parse_cpp(path):
    text = path.read_text(encoding="utf-8-sig")
    count_match = re.search(r"enumerated_masks_with_h_le_14=(\d+)", text)
    if not count_match:
        raise ValueError("C++ output lacks the enumerated-mask count")
    rows = {}
    pattern = re.compile(
        r"h=(\d+) max_coefficient=(\d+) worst_mask=(\d+) worst_residue=(\d+) "
        r"least_n=(\d+) worst_c=(\d+) min_margin=(\d+) (PASS|FAIL)"
    )
    for m in pattern.finditer(text):
        h = int(m.group(1))
        rows[h] = {"max_coefficient": int(m.group(2)), "worst_mask": int(m.group(3)),
                   "worst_residue": int(m.group(4)), "least_n": int(m.group(5)),
                   "worst_coefficient": int(m.group(6)), "min_margin": int(m.group(7)),
                   "passes": m.group(8) == "PASS"}
    return int(count_match.group(1)), rows

def direct_coefficient(mask, j=23):
    h = mask.bit_count()
    later = h
    c = 0
    for i in range(j):
        if (mask >> i) & 1:
            later -= 1
            c += (1 << i) * (3 ** later)
    return c

def accelerated(x):
    return (3*x + 1)//2 if x & 1 else x//2

def main():
    py = json.loads((ROOT / "residue-aware-python.json").read_text(encoding="utf-8-sig"))
    cpp_count, cpp = parse_cpp(ROOT / "residue-aware-cpp.txt")
    expected_count = sum(math.comb(23, h) for h in range(15))
    assert cpp_count == py["enumerated_masks_with_h_le_14"] == expected_count == 7507638
    assert len(cpp) == len(py["checks"]) == 15
    simulations = []
    for p in py["checks"]:
        h = p["h"]
        c = cpp[h]
        for key in ("max_coefficient", "worst_mask", "worst_residue", "least_n", "worst_coefficient", "min_margin"):
            assert p[key] == c[key], (h, key, p[key], c[key])
        assert c["passes"] and c["min_margin"] > 0
        mask = c["worst_mask"]
        assert mask.bit_count() == h
        assert direct_coefficient(mask) == c["worst_coefficient"]
        assert (pow(3, h, MOD) * c["worst_residue"] + c["worst_coefficient"]) % MOD == 0
        bad_residue = (c["worst_residue"] + 1) % MOD
        assert (pow(3, h, MOD) * bad_residue + c["worst_coefficient"]) % MOD != 0
        n = c["least_n"]
        x = n
        observed = 0
        for i in range(23):
            bit = (mask >> i) & 1
            assert (x & 1) == bit, (h, i, mask, x)
            observed += bit
            x = accelerated(x)
        assert observed == h
        assert MOD * x == (3**h) * n + c["worst_coefficient"]
        assert c["min_margin"] == MOD * (n - x) > 0
        simulations.append({"h": h, "mask": mask, "least_start": n,
                            "endpoint_after_23_accelerated": x,
                            "drop": n-x, "margin": c["min_margin"]})
    assert py["all_residue_aware_margins_positive"]

    naive = json.loads((ROOT / "python-envelope.json").read_text(encoding="utf-8-sig"))
    assert naive["all_pass"] is False
    assert [x["h"] for x in naive["checks"] if x["passes"]] == [0, 1, 2, 3]
    assert [x["h"] for x in naive["checks"] if not x["passes"]] == list(range(4, 15))

    # Damaged-control check: a zero claimed minimum margin must be rejected.
    damaged = [dict(x) for x in py["checks"]]
    damaged[11]["min_margin"] = 0
    assert not all(x["min_margin"] > 0 for x in damaged)

    # The coefficient recurrence and direct sum agree exhaustively for shorter words.
    import derive_envelope
    assert derive_envelope.short_bruteforce_check()
    print("PASS: C++ and independent Python split enumeration agree on all 15 rows")
    print(f"PASS: {expected_count:,} parity masks with at most 14 odd bits were counted and checked")
    print("PASS: worst-mask direct trajectories match parity, coefficient identity, residue and margin")
    print("PASS: damaged zero-margin control rejected; altered residue control rejected")
    print("PASS: coefficient-only envelope matches short-word brute force and is explicitly false for h=4..14")
    print("RESIDUE_AWARE_MINIMUM_DROPS=" + ",".join(str(x["drop"]) for x in simulations))
    print("FULL_23_BIT_ENUMERATION_IS_NOT_A_LEAN_PROOF")

if __name__ == "__main__":
    main()
