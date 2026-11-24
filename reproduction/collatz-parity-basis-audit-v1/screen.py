#!/usr/bin/env python3
"""Recompute the union of five proved Collatz parity filters without enumerating 2^32 words.

This is a finite combinatorial audit only. It does not run Lean and does not turn the
component theorems into one Lean theorem.
"""
from __future__ import annotations

import hashlib
import csv
import json
import math
import argparse
from pathlib import Path


PACKAGE = Path(__file__).resolve().parent
REPO = PACKAGE.parents[1]
PREVIOUS = PACKAGE / "evidence" / "screen-v2.json"
PAIR_TSV = REPO / "reproduction" / "collatz-twelve-of-twenty-v1" / "inputs" / "m20-pairs.tsv"
MODULUS = 1 << 32
CHECKS = ((20, "exact12of20", 12, "eq"), (23, "atmost14of23", 14, "le"),
          (24, "atmost15of24", 15, "le"), (31, "atmost19of31", 19, "le"),
          (32, "atmost20of32", 20, "le"))


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def iterative_dp() -> tuple[dict[str, int], int, int]:
    # (ones seen, any filter passed) -> number of prefixes of current length.
    states: dict[tuple[int, bool], int] = {(0, False): 1}
    first_hits = {name: 0 for _, name, _, _ in CHECKS}
    qualifying = 0
    for length in range(1, 33):
        next_states: dict[tuple[int, bool], int] = {}
        for (ones, already), ways in states.items():
            for bit in (0, 1):
                new_ones = ones + bit
                passed_now = False
                name = None
                for checkpoint, candidate, cutoff, relation in CHECKS:
                    if checkpoint != length:
                        continue
                    passed_now = (new_ones == cutoff) if relation == "eq" else (new_ones <= cutoff)
                    if passed_now:
                        name = candidate
                    break
                hit = already or passed_now
                next_states[(new_ones, hit)] = next_states.get((new_ones, hit), 0) + ways
                if passed_now and not already:
                    # Count full 32-bit words, including every possible remaining suffix.
                    first_hits[name] += ways * (1 << (32 - length))
        states = next_states
    qualifying = sum(ways for (_, hit), ways in states.items() if hit)
    return first_hits, qualifying, len(states)


def segment_convolution() -> tuple[dict[str, int], int]:
    # Enumerate only counts in the five disjoint bit segments, not individual words.
    # Segment lengths are 20, 3, 1, 7, 1, matching checkpoints 20, 23, 24, 31, 32.
    lengths = (20, 3, 1, 7, 1)
    names = [name for _, name, _, _ in CHECKS]
    first_hits = {name: 0 for name in names}
    for a in range(21):
        for b in range(4):
            for c in range(2):
                for d in range(8):
                    for e in range(2):
                        ones = (a, a + b, a + b + c, a + b + c + d, a + b + c + d + e)
                        multiplicity = (math.comb(20, a) * math.comb(3, b) * math.comb(1, c)
                                        * math.comb(7, d) * math.comb(1, e))
                        for index, (checkpoint, name, cutoff, relation) in enumerate(CHECKS):
                            count = ones[index]
                            passed = (count == cutoff) if relation == "eq" else (count <= cutoff)
                            if passed:
                                first_hits[name] += multiplicity
                                break
    return first_hits, sum(first_hits.values())


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="write the recomputed JSON receipt to a new path")
    args = parser.parse_args()
    previous = json.loads(PREVIOUS.read_text(encoding="utf-8"))
    dp_hits, dp_union, state_count = iterative_dp()
    segment_hits, segment_union = segment_convolution()
    with PAIR_TSV.open("r", encoding="utf-8", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter="\t"))
    residues = [int(row["r"]) for row in rows]
    unique_residues = len(set(residues))
    exact12_residues = 0
    for residue in residues:
        value = residue
        odd_inputs = 0
        for _ in range(20):
            if value & 1:
                odd_inputs += 1
                value = (3 * value + 1) // 2
            else:
                value //= 2
        exact12_residues += odd_inputs == 12
    result = {
        "schema": "mathcase-collatz-structural-basis-screen-v3",
        "status": "PASS_INDEPENDENT_ITERATIVE_AND_SEGMENT_COUNTS",
        "conditions": [
            {"checkpoint": length, "name": name, "cutoff": cutoff, "relation": relation}
            for length, name, cutoff, relation in CHECKS
        ],
        "first_match_words_mod_2_32": dp_hits,
        "segment_convolution_first_match_words_mod_2_32": segment_hits,
        "union_words_mod_2_32": dp_union,
        "segment_convolution_union_words_mod_2_32": segment_union,
        "words_outside_union_mod_2_32": MODULUS - dp_union,
        "density_percent": 100.0 * dp_union / MODULUS,
        "all_methods_agree": dp_hits == segment_hits and dp_union == segment_union,
        "iterative_terminal_state_count": state_count,
        "m20_pair_rows": len(rows),
        "unique_m20_residues": unique_residues,
        "m20_residues_with_exact_12_of_20": exact12_residues,
        "all_m20_residues_satisfy_exact_12_of_20": exact12_residues == len(rows),
        "source_bindings": {
            "screen_script_sha256": sha256(Path(__file__).resolve()),
            "previous_screen_sha256": sha256(PREVIOUS),
            "m20_pair_tsv_sha256": sha256(PAIR_TSV),
        },
        "previous_screen_match": {
            "union_count_matches": previous.get("union_residue_classes_mod_2_32") == dp_union,
            "first_hit_counts_match": previous.get("first_match_counts_mod_2_32") == dp_hits,
        },
        "limits": "Finite parity-word count only. The component theorems remain separate; no combined Lean theorem, convergence claim, novelty claim, or basis closure is asserted.",
    }
    if not result["all_methods_agree"] or not result["previous_screen_match"]["union_count_matches"]:
        result["status"] = "FAIL_RECONCILIATION"
    rendered = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        destination = args.output.resolve()
        if destination.exists():
            raise SystemExit(f"Refusing to overwrite existing output: {destination}")
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_text(rendered, encoding="utf-8")
    print(json.dumps(result, indent=2, sort_keys=True))
    if args.output:
        print(f"OUTPUT={args.output.resolve()}")


if __name__ == "__main__":
    main()
