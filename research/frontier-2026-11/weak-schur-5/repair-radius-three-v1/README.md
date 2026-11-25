# Weak Schur(5): one near-miss, three edits

## What was checked

MathCase saved a five-color assignment for the numbers 1 through 208. It misses the rule in one place: 4, 8, and 12 share a color, even though 4 + 8 = 12.

We asked whether changing at most three entries in this exact assignment could remove every forbidden same-color sum. Z3 5.3.1 returned `unsat` for the full encoded check. This is a bounded solver result about one saved assignment. It is not a proof certificate, does not rule out repairs using four or more changes, and says nothing about other assignments or whether a valid 208-number coloring exists.

The starting assignment came from one fixed-seed, 30-chain heuristic run; its public provenance summary and source-record hash are in `candidate-origin.json`. The three-change query is distinct from the earlier ten-change query, which used a different starting assignment with three conflicts. The public JSON is normalized to UTF-8/LF; `candidate-origin.json` records both its public file hash and the original source-file hash, while preserving the exact same 208 colors.

## Check the package

With Python 3.10 or later, run:

```text
python verify_public_artifact.py
```

This independently checks all 10,712 allowed triples in the saved assignment using two implementations, checks a planted-error control, reconstructs the full query byte-for-byte, and verifies the preserved solver output and package hashes. It does not run Lean or a solver.

To regenerate only the SMT-LIB query and audit it:

```text
python prepare_query.py
python verify_public_artifact.py
```

If Z3 5.3.1 is available, the query can be run with:

```text
z3 -T:45 check-at-most-three.smt2
```

The recorded run used one CPU, 2 GiB of memory, no network, a 45-second solver timeout, and a 55-second host cap. Its exact local container image ID and path-free result are in `solver-result.json`. The image build is not included here, so this is not yet a clean-room replay package. The public formula and input are available for independent checking with another compatible Z3 build.

## Evidence and limits

`candidate.json` is the exact one-conflict assignment from the previously recorded capped search. `check-at-most-three.smt2` includes every distinct-addend constraint and the distance limit. The local solver returned `unsat` with exit code 0 in 3.93 seconds; there was no proof certificate. The source search and earlier direct checks are separate evidence. No Lean attempt ran, no new bound is claimed, and the overall Weak Schur(5) question remains open.
