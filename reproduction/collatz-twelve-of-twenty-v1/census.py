"""Count fixed-parity 32-step progressions modulo 2**20 in two independent ways."""
import argparse
import csv
import hashlib
import json
from pathlib import Path
from itertools import combinations
from math import comb

MODULUS = 2**20
SLOPE = 3**12
STEPS = 32

def ordinary(x):
    return x // 2 if x % 2 == 0 else 3*x + 1

def terminal_by_two_starts(r):
    # Until the first disagreement, all family members share each branch:
    # x and y are the intercept and the intercept plus the slope.
    x, y = r, MODULUS+r
    for _ in range(STEPS):
        if x % 2 != y % 2:
            return None
        x, y = ordinary(x), ordinary(y)
    return (y-x,x)

def words_by_inverse():
    # For 20 accelerated steps, choose exactly 12 odd inputs. Each odd
    # contributes its position's power of 2 times 3 for each later odd input.
    inverse = pow(SLOPE,-1,MODULUS)
    weights = [3**(11-j) for j in range(12)]
    table = {}
    for positions in combinations(range(20),12):
        remainder = sum(weight << position for weight,position in zip(weights,positions))
        r = (-remainder * inverse) % MODULUS
        assert r not in table
        numerator = SLOPE*r + remainder
        assert numerator % MODULUS == 0
        table[r] = numerator // MODULUS
    assert len(table)==comb(20,12)
    return table

def digest(table):
    h=hashlib.sha256()
    for r,q in sorted(table.items()):
        h.update(f"{r}\t{q}\n".encode("ascii"))
    return h.hexdigest()

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--pairs", type=Path, help="optional published MathCase M20 pairs.tsv")
    ap.add_argument("--json", type=Path, help="where to write the summary")
    args=ap.parse_args()
    by_words=words_by_inverse()
    direct={}
    for r in range(MODULUS):
        outcome=terminal_by_two_starts(r)
        if outcome is not None and outcome[0]==SLOPE:
            direct[r]=outcome[1]
    if direct!=by_words:
        raise ValueError("direct iteration and inverse enumeration disagree")
    descending={r:q for r,q in direct.items() if q<r}
    failures={r:q for r,q in direct.items() if q>=r}
    worst_remainder=(2**8)*(3**12-2**12)
    cutoff=worst_remainder//(MODULUS-SLOPE)+1
    max_seen=max(MODULUS*q-SLOPE*r for r,q in direct.items())
    assert max_seen==worst_remainder
    assert all(r<cutoff for r in failures)
    report={
        "ordinary_rule":"even n/2, odd 3n+1","ordinary_steps":STEPS,"modulus":MODULUS,"required_final_slope":SLOPE,
        "residues_examined":MODULUS,"fixed_slope_and_uniform_parity":len(direct),
        "strict_descent_including_k_zero":len(descending),"all_fixed_slope_rows_sha256_tsv_no_header":digest(direct),
        "descent_rows_sha256_tsv_no_header":digest(descending),"exceptions_r_to_q":failures,
        "largest_weighted_remainder":max_seen,"sufficient_lower_cutoff_for_x_with_12_odd_in_20_accelerated":cutoff,
        "computation_type":"independent finite enumerations; applies only to the stated slope and fixed parity. A missing residue is not a counterexample to Collatz."
    }
    if args.pairs:
        with args.pairs.open(encoding="utf-8") as f:
            records=list(csv.DictReader(f, delimiter="\t"))
        published={int(row["r"]):int(row["q"]) for row in records}
        if len(published)!=len(records) or len(records)!=2652 or not published.items()<=descending.items():
            raise ValueError("supplied table is not the expected 2,652-family subset")
        report["published_pair_file_sha256"]=hashlib.sha256(args.pairs.read_bytes()).hexdigest()
        report["published_rows_reproduced"]=len(published)
        report["additional_relative_to_published_table"]=len(descending)-len(published)
    body=json.dumps(report,indent=2,sort_keys=True)+"\n"
    if args.json:
        args.json.write_text(body,encoding="utf-8")
    print(body,end="")
if __name__=="__main__":
    main()
