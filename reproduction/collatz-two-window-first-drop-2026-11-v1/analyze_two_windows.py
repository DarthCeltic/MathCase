#!/usr/bin/env python3
"""Exact parity-window first-drop comparison for two 12-step filters."""
from __future__ import annotations

import hashlib
import json
import math
import platform
import sys
from datetime import datetime, timezone
from pathlib import Path

HORIZON = 24
WINDOW = 12
MODULUS = 1 << HORIZON
PACKAGE = Path(__file__).resolve().parent


def count_formula(cap1: int, cap2: int) -> int:
    return sum(math.comb(WINDOW, a) for a in range(cap1 + 1)) * sum(
        math.comb(WINDOW, b) for b in range(cap2 + 1)
    )


def endpoint_affine_bound(cap1: int, cap2: int, steps: int) -> dict:
    # For each allowed prefix-count state retain the largest exact affine c.
    # At fixed counts, h is fixed and the drop condition is
    # (2**steps - 3**h) * n > c.
    states = {(0, 0): (0, 0)}  # count state -> (maximum c, attaining word prefix)
    for pos in range(1, steps + 1):
        next_states = {}
        for (a, b), (c, word) in states.items():
            for bit in (0, 1):
                na = a + bit if pos <= WINDOW else a
                nb = b + bit if pos > WINDOW else b
                if na > cap1 or nb > cap2:
                    continue
                nc = 3 * c + (1 << (pos - 1)) if bit else c
                key = (na, nb)
                old_c, old_word = next_states.get(key, (-1, 0))
                nword = (word << 1) | bit
                if nc > old_c or (nc == old_c and nword < old_word):
                    next_states[key] = (nc, nword)
        states = next_states
    candidates = []
    for (a, b), (c, word) in states.items():
        h = a + b
        slope = (1 << steps) - 3**h
        if slope <= 0:
            raise AssertionError("endpoint has a nonpositive slope in an allowed state")
        candidates.append({"required_n": c // slope + 1, "odd_count": h,
                           "odd_count_first_window": a, "odd_count_second_window": b,
                           "max_affine_c": c, "slope": slope,
                           "max_c_attaining_prefix_word": format(word, f"0{steps}b")})
    worst = max(candidates, key=lambda item: (item["required_n"], item["max_affine_c"]))
    return {"steps": steps, "all_start_cutoff_inclusive": worst["required_n"],
            "worst_prefix_state": worst}


def finite_start_control(cap1: int, cap2: int, cutoff: int, bound: int) -> dict:
    checked = 0
    max_shortcut = max_ordinary = 0
    for n in range(3, cutoff):
        bits, first, h, _ = full_trace(n)
        if bits[:WINDOW].count("1") > cap1 or bits[WINDOW:].count("1") > cap2:
            continue
        checked += 1
        if first is None or first > bound:
            raise AssertionError(f"finite-start control exceeds claimed bound at n={n}")
        ordinary = simulate_ordinary(n)
        if ordinary != first + h:
            raise AssertionError(f"finite-start ordinary conversion failed at n={n}")
        max_shortcut = max(max_shortcut, first)
        max_ordinary = max(max_ordinary, ordinary)
    return {"checked_n_range": [3, cutoff - 1], "qualifying_starts_checked": checked,
            "maximum_shortcut_first_drop_in_range": max_shortcut,
            "maximum_ordinary_first_drop_in_range": max_ordinary,
            "all_within_claimed_shortcut_bound": True}


def dp_summary(cap1: int, cap2: int) -> dict:
    # State: (odd count in each window, first strict slope crossing, odds then).
    # A strict crossing at t means 2**t > 3**h_t. For large members of a
    # residue class, no drop is possible before the first such crossing.
    states = {(0, 0, 0, 0): (1, 0)}  # key -> (path count, smallest word integer)
    for pos in range(1, HORIZON + 1):
        next_states: dict[tuple[int, int, int, int], tuple[int, int]] = {}
        for (a, b, first, first_h), (ways, word) in states.items():
            for bit in (0, 1):
                na = a + bit if pos <= WINDOW else a
                nb = b + bit if pos > WINDOW else b
                if na > cap1 or nb > cap2:
                    continue
                h = na + nb
                nf, nfh = first, first_h
                if nf == 0 and (1 << pos) > 3**h:
                    nf, nfh = pos, h
                key = (na, nb, nf, nfh)
                old_ways, old_word = next_states.get(key, (0, word << 1 | bit))
                next_states[key] = (old_ways + ways, min(old_word, word << 1 | bit))
        states = next_states

    total = sum(ways for ways, _ in states.values())
    crossings = [key[2] for key in states]
    if total != count_formula(cap1, cap2):
        raise AssertionError("DP path count disagrees with the binomial product")
    if not crossings or min(crossings) == 0:
        raise AssertionError("a qualifying path had no strict crossing by step 24")
    max_shortcut = max(crossings)
    max_ordinary = max(first + first_h for _, _, first, first_h in states)
    shortcut_key = min(
        (key for key in states if key[2] == max_shortcut),
        key=lambda key: states[key][1],
    )
    ordinary_key = min(
        (key for key in states if key[2] + key[3] == max_ordinary),
        key=lambda key: states[key][1],
    )
    return {
        "class_count": total,
        "max_slope_crossing_shortcut_steps": max_shortcut,
        "max_slope_crossing_ordinary_steps": max_ordinary,
        "shortcut_word": format(states[shortcut_key][1], f"0{HORIZON}b"),
        "ordinary_word": format(states[ordinary_key][1], f"0{HORIZON}b"),
        "shortcut_word_count": states[shortcut_key][0],
        "ordinary_word_count": states[ordinary_key][0],
    }


def affine(bits: str, steps: int) -> tuple[int, int]:
    h = c = 0
    for t, bit in enumerate(bits[:steps]):
        if bit == "1":
            c = 3 * c + (1 << t)
            h += 1
    return h, c


def residue_for_word(bits: str) -> tuple[int, int, int]:
    # Incrementally solve the unique residue modulo 2**t at every prefix.
    r = h = c = 0
    for t, char in enumerate(bits):
        bit = int(char)
        denom = 1 << t
        numerator = 3**h * r + c
        if numerator % denom:
            raise AssertionError("prefix residue lost divisibility invariant")
        current_parity = (numerator // denom) & 1
        q = (bit - current_parity) & 1
        r += q * denom
        if bit:
            c = 3 * c + denom
            h += 1
    return r, h, c


def simulate_accelerated(n: int, limit: int = HORIZON) -> tuple[str, int | None, int, int]:
    x = n
    word = []
    h = 0
    for t in range(1, limit + 1):
        odd = x & 1
        word.append(str(odd))
        if odd:
            x = (3 * x + 1) // 2
            h += 1
        else:
            x //= 2
        if x < n:
            return "".join(word), t, h, x
    return "".join(word), None, h, x


def simulate_ordinary(n: int, cap: int = 200) -> int | None:
    x = n
    for steps in range(1, cap + 1):
        x = 3 * x + 1 if x & 1 else x // 2
        if x < n:
            return steps
    return None


def witness(n: int, label: str, cap1: int, cap2: int, expected_shortcut: int, expected_ordinary: int) -> dict:
    full_bits, first, observed_h, end_value = full_trace(n)
    if full_bits[:WINDOW].count("1") > cap1 or full_bits[WINDOW:].count("1") > cap2:
        raise AssertionError(f"witness does not satisfy its gate: {label}")
    if first != expected_shortcut or first + observed_h != expected_ordinary:
        raise AssertionError(f"witness does not attain both maxima: {label}")
    residue, full_h, full_c = residue_for_word(full_bits)
    h, c = affine(full_bits, first)
    slope = (1 << first) - 3**h
    threshold = c // slope + 1
    if slope <= 0 or n < threshold:
        raise AssertionError(f"witness affine threshold failed: {label}")
    if residue != n % MODULUS:
        raise AssertionError(f"witness residue mismatch: {label}")
    alt_residue = (-full_c * pow(3**full_h, -1, MODULUS)) % MODULUS
    if alt_residue != residue:
        raise AssertionError("incremental residue disagrees with modular inverse control")
    ordinary = simulate_ordinary(n)
    if ordinary != first + observed_h:
        raise AssertionError("ordinary/accelerated first-drop conversion failed")
    return {
        "label": label,
        "word": full_bits,
        "word_hex": f"0x{int(full_bits, 2):06x}",
        "residue_mod_2_24": residue,
        "modulus": MODULUS,
        "n": n,
        "first_drop_accelerated_step": first,
        "odd_inputs_through_drop": observed_h,
        "first_drop_ordinary_step": ordinary,
        "affine_c_at_first_drop_step": c,
        "slope_at_first_drop_step": slope,
        "least_integer_threshold_for_first_drop": threshold,
        "endpoint_value_at_first_drop": end_value,
        "odd_count_first_window": full_bits[:WINDOW].count("1"),
        "odd_count_second_window": full_bits[WINDOW:].count("1"),
    }


def full_trace(n: int) -> tuple[str, int | None, int, int]:
    x = n
    word = []
    h = 0
    first = None
    first_h = 0
    first_value = 0
    for t in range(1, HORIZON + 1):
        odd = x & 1
        word.append(str(odd))
        if odd:
            x = (3 * x + 1) // 2
            h += 1
        else:
            x //= 2
        if first is None and x < n:
            first, first_h, first_value = t, h, x
    return "".join(word), first, first_h, first_value


def find_small_witness(cap1: int, cap2: int, shortcut: int, ordinary: int) -> int:
    # Bounded direct-start scan locates a compact certificate; it is not used
    # as the all-start proof, which comes from the affine inequalities.
    for n in range(3, 100_001):
        bits, first, h, _ = full_trace(n)
        if (bits[:WINDOW].count("1") <= cap1
                and bits[WINDOW:].count("1") <= cap2
                and first == shortcut and first + h == ordinary):
            return n
    raise AssertionError("no compact witness found in the declared scan range")
def brute_control() -> dict:
    # Independent tiny-horizon exhaustive control for DP counting and crossing.
    horizon, window, cap_a, cap_b = 8, 4, 2, 3
    accepted = 0
    max_cross = max_ordinary = 0
    for word in range(1 << horizon):
        bits = format(word, f"0{horizon}b")
        if bits[:window].count("1") > cap_a or bits[window:].count("1") > cap_b:
            continue
        accepted += 1
        h = 0
        cross = None
        for t, bit in enumerate(bits, 1):
            h += int(bit)
            if cross is None and (1 << t) > 3**h:
                cross = (t, h)
        if cross is None:
            continue
        max_cross = max(max_cross, cross[0])
        max_ordinary = max(max_ordinary, cross[0] + cross[1])
    formula = sum(math.comb(window, a) for a in range(cap_a + 1)) * sum(
        math.comb(window, b) for b in range(cap_b + 1)
    )
    # Explicit enumeration is independent of the production DP.
    if accepted != formula:
        raise AssertionError("tiny exhaustive count control failed")
    return {"horizon": horizon, "accepted_words": accepted, "binomial_control": formula,
            "max_crossing_shortcut": max_cross, "max_crossing_ordinary": max_ordinary}


def analyze() -> dict:
    gates = {
        "9+6": {"first_12_at_most_odd": 9, "second_12_at_most_odd": 6},
        "6+9": {"first_12_at_most_odd": 6, "second_12_at_most_odd": 9},
        "6+12-first-only": {"first_12_at_most_odd": 6, "second_12_at_most_odd": 12},
    }
    results = {}
    for label, gate in gates.items():
        cap1, cap2 = gate["first_12_at_most_odd"], gate["second_12_at_most_odd"]
        dp = dp_summary(cap1, cap2)
        max_shortcut = dp["max_slope_crossing_shortcut_steps"]
        max_ordinary = dp["max_slope_crossing_ordinary_steps"]
        small = find_small_witness(cap1, cap2, max_shortcut, max_ordinary)
        bound_steps = max_shortcut
        affine_bound = endpoint_affine_bound(cap1, cap2, bound_steps)
        cutoff = affine_bound["all_start_cutoff_inclusive"]
        finite_control = finite_start_control(cap1, cap2, cutoff, bound_steps)
        if finite_control["maximum_shortcut_first_drop_in_range"] > max_shortcut:
            raise AssertionError("finite starts exceed the claimed shortcut maximum")
        if finite_control["maximum_ordinary_first_drop_in_range"] > max_ordinary:
            raise AssertionError("finite starts exceed the claimed ordinary maximum")
        results[label] = {
            "gate": gate,
            **dp,
            "sharp_max_actual_first_drop_accelerated_steps": max_shortcut,
            "sharp_max_actual_first_drop_ordinary_steps": max_ordinary,
            "max_shortcut_witness": witness(small, label + " max shortcut", cap1, cap2, max_shortcut, max_ordinary),
            "max_ordinary_witness": witness(small, label + " max ordinary", cap1, cap2, max_shortcut, max_ordinary),
            "all_start_proof": {
                "large_n_affine_endpoint_bound": affine_bound,
                "direct_finite_start_control": finite_control,
                "logic": "At the stated endpoint, exact affine-c bounds prove descent for every n at or above the cutoff. Every smaller n >= 3 is then checked directly with an independent integer-orbit simulation. A slope crossing without the affine-c check is not treated as an all-start proof.",
            },
            "small_witness_scan": {"starts_checked_in_order_through_inclusive": small,
                                   "first_maximal_witness_found": small},
        }

    global_24_15 = sum(math.comb(HORIZON, h) for h in range(16))
    tiny = brute_control()
    if results["9+6"]["class_count"] != results["6+9"]["class_count"]:
        raise AssertionError("reversed windows must admit identical numbers of classes")
    if results["9+6"]["max_slope_crossing_shortcut_steps"] != 24:
        raise AssertionError("unexpected 9+6 sharp crossing")
    if results["6+9"]["max_slope_crossing_shortcut_steps"] != 10:
        raise AssertionError("unexpected 6+9 sharp crossing")
    if results["9+6"]["max_slope_crossing_ordinary_steps"] != 39:
        raise AssertionError("unexpected 9+6 ordinary maximum")
    if results["6+9"]["max_slope_crossing_ordinary_steps"] != 16:
        raise AssertionError("unexpected 6+9 ordinary maximum")
    if results["6+12-first-only"]["max_slope_crossing_shortcut_steps"] != 10:
        raise AssertionError("unexpected first-window-only shortcut maximum")
    if results["6+12-first-only"]["max_slope_crossing_ordinary_steps"] != 16:
        raise AssertionError("unexpected first-window-only ordinary maximum")
    return {
        "title": "Two 12-step Collatz parity-window first-drop comparison",
        "schema_version": 1,
        "generated_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "method": "exact dynamic program over all parity words, affine all-start bounds, compact direct-start witness scan, residue-word certificates, and independent tiny exhaustive control",
        "map": "accelerated x -> x/2 for even x; x -> (3*x+1)/2 for odd x",
        "window_definition": "oddness is read at the input to each accelerated step; windows are positions 1-12 and 13-24",
        "global_24_15_reference_class_count": global_24_15,
        "two_window_class_count": results["9+6"]["class_count"],
        "two_window_class_fraction_of_all_words": results["9+6"]["class_count"] / (1 << HORIZON),
        "global_24_15_class_fraction": global_24_15 / (1 << HORIZON),
        "gates": results,
        "controls": {"tiny_exhaustive": tiny, "residue_methods_agree": True,
                     "direct_witness_simulation": True},
        "limitations": [
            "This is a bounded parity-filter comparison, not a claim that every Collatz trajectory converges.",
            "The reported maxima concern first drops guaranteed/attained within the stated 24-step filter window.",
            "A strict slope crossing alone does not certify small starts; the all-start bounds below separately include affine constants and n >= 3.",
            "No Lean theorem, novelty claim, or independent mathematical review is included.",
        ],
    }


def main() -> None:
    report = analyze()
    report["runtime"] = {"python": platform.python_version(), "implementation": platform.python_implementation()}
    script_bytes = Path(__file__).read_bytes()
    report["artifact_sha256"] = hashlib.sha256(script_bytes).hexdigest()
    cpp_source = PACKAGE / "check_all_residues.cpp"
    cpp_output = PACKAGE / "independent-residue-scan.csv"
    if cpp_source.exists() and cpp_output.exists():
        report["independent_full_residue_scan"] = {
            "source": cpp_source.name,
            "source_sha256": hashlib.sha256(cpp_source.read_bytes()).hexdigest(),
            "record": cpp_output.name,
            "record_sha256": hashlib.sha256(cpp_output.read_bytes()).hexdigest(),
            "classes_scanned_per_gate": 1 << HORIZON,
            "method": "direct accelerated-orbit simulation from the least n>=3 in each 24-bit residue class",
        }
    out = PACKAGE / "receipt.json"
    out.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"receipt": str(out), "class_count": report["two_window_class_count"],
                      "global_24_15_count": report["global_24_15_reference_class_count"],
                      "gates": {k: {"shortcut": v["max_slope_crossing_shortcut_steps"],
                                    "ordinary": v["max_slope_crossing_ordinary_steps"],
                                    "shortcut_witness": v["max_shortcut_witness"]["n"],
                                    "ordinary_witness": v["max_ordinary_witness"]["n"]}
                                for k, v in report["gates"].items()},
                      "tiny_control": report["controls"]["tiny_exhaustive"]}, indent=2))


if __name__ == "__main__":
    main()
