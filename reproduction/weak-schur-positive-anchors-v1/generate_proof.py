#!/usr/bin/env python3
"""Optionally regenerate the bundled full-anchor DRAT proof with Glucose4."""
from __future__ import annotations

import argparse
import hashlib
from pathlib import Path

import pysat
from pysat.solvers import Glucose4

from positive_anchor_check import build_cnf, load_seed

EXPECTED_PROOF_SHA256 = "8c52034bd7e7d0bcbffde1cff1891a53408d44949fa2cf52198fec629cf5cf17"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True, help="path for the regenerated raw DRAT proof")
    parser.add_argument("--conflicts", type=int, default=300_000)
    args = parser.parse_args()
    if pysat.__version__ != "1.9.dev25":
        raise SystemExit(f"Use python-sat==1.9.dev25 for the recorded deterministic proof; found {pysat.__version__}")

    seed, _ = load_seed("rowley")
    anchors = [n for n in range(1, 208) if seed[n] in (1, 3)]
    formula, clause_count = build_cnf(seed, anchors)
    clauses = [[int(token) for token in line.split()[:-1]] for line in formula.decode("ascii").splitlines()[1:]]
    if len(clauses) != clause_count:
        raise ValueError("DIMACS clause count mismatch")
    with Glucose4(bootstrap_with=clauses, with_proof=True) as solver:
        solver.conf_budget(args.conflicts)
        status = solver.solve_limited()
        if status is not False:
            raise SystemExit(f"Expected UNSAT under 66 positive anchors; solver returned {status!r}")
        proof = ("\n".join(solver.get_proof()) + "\n").encode("ascii")
        conflicts = solver.accum_stats()["conflicts"]
    digest = hashlib.sha256(proof).hexdigest()
    if digest != EXPECTED_PROOF_SHA256:
        raise SystemExit(f"Regenerated proof digest differs from the recorded proof: {digest}")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(proof)
    print(f"UNSAT; {conflicts} conflicts; {len(proof)} DRAT bytes; sha256={digest}")


if __name__ == "__main__":
    main()
