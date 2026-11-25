# Weak Schur(5): one near-miss, three edits

## What was checked

MathCase saved a five-color assignment for the numbers 1 through 208. It misses the rule in one place: 4, 8, and 12 share a color, even though 4 + 8 = 12.

We asked whether changing at most three entries in this exact assignment could remove every forbidden same-color sum. Z3 5.3.1 returned `unsat` for the full encoded check. The solver output is not a proof certificate. A separate exhaustive computation checks every repair of this assignment within three changes. Neither result rules out repairs using four or more changes, says anything about other starting assignments, or establishes whether a valid 208-number coloring exists.

The starting assignment came from one fixed-seed, 30-chain heuristic run; its public provenance summary and source-record hash are in `candidate-origin.json`. The three-change query is distinct from the earlier ten-change query, which used a different starting assignment with three conflicts. The public JSON is normalized to UTF-8/LF; `candidate-origin.json` records both its public file hash and the original source-file hash, while preserving the exact same 208 colors.

A separate Python program exhaustively checked every possible edit assignment at distances one, two, and three that could remove the original conflict. It checked 12, 9,888, and 4,054,144 assignments respectively, with no valid repair; the fewest remaining conflicts at those distances were 9, 8, and 7. Any edit set that misses 4, 8, and 12 leaves the original conflict in place. The finite enumeration uses exact score deltas over all 10,712 constraints, with direct full-rescore checks. It is about this one assignment only.

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

`candidate.json` preserves the exact one-conflict color sequence from the previously recorded capped search (its public JSON bytes are normalized to UTF-8/LF). `check-at-most-three.smt2` includes every distinct-addend constraint and the distance limit. The local solver returned `unsat` with exit code 0 in 3.93 seconds; there was no proof certificate. The source search and earlier direct checks are separate evidence. `exhaustive_radius3.py` and `exhaustive-radius3-result.json` record the independent finite enumeration. No Lean attempt ran, no new bound is claimed, and the overall Weak Schur(5) question remains open.
