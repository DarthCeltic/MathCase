# Twelve odd accelerated inputs give a checked 32-step descent

## Plain statement

For every natural number whose first 20 accelerated Collatz inputs contain exactly 12 odd values, the value after 32 ordinary Collatz steps is smaller than the start. There are exactly 125,970 such residue classes modulo 1,048,576, and every natural-number progression in each class has the stated descent.

## Exact claim

For `r : Fin 1,048,576` with `odds r 20 = 12`, and every `k : Nat`:

```text
ordinaryIter (1,048,576*k + r) 32
  = 531,441*k + acceleratedIter r 20
  < 1,048,576*k + r
```

`acceleratedIter` halves an even input; for an odd input it applies `(3n+1)/2`. Thus 20 accelerated steps with 12 odd inputs correspond to 32 ordinary steps. The Lean theorem `counted_progressions_descend` proves the exact residue count and the family-wide endpoint and strict inequality. Its count proof uses Pascal recursion on the two sibling residue classes, not a million-row tactic search.

The proved count is exactly 125,970 out of 1,048,576 residue classes (about 12.013%). It is the density of this fixed residue set modulo `2^20`, not a percentage of Collatz solved. The result gives no eventual-return rule and does not prove convergence.

## Rebuild

Use Lean 4.33.1 and Python 3. From this directory:

```sh
python check_word_bound.py --output runs/word-replay.json
python verify_count.py --output runs/count-replay.json
python census.py --pairs inputs/m20-pairs.tsv --json runs/census-replay.json
```

Each Lean runner copies only the required source modules into a fresh temporary directory, compiles with one worker, and checks the recorded axiom lists. The count runner also compiles a negative control and requires Lean to reject the incorrect count 125,971. The independent finite census compares direct ordinary-step trajectories for all 1,048,576 residues with inverse enumeration of all `choose(20,12)` accelerated parity words; it verifies the 2,652 published rows as a subset. The census is independent computational corroboration, not a substitute for the Lean proof.

## Evidence and limits

- `receipt.json` and `count-receipt.json` are the original source receipts. Fresh-clone replay outputs belong in `runs/` and do not replace them.
- Lean reports `[propext, Quot.sound]` for the descent modules and `[propext, Classical.choice, Quot.sound]` for the count theorem. No `sorryAx` is reported.
- `census.json` is the supplied independent finite run summary. Re-run the script to reproduce it.
- This is a bounded parity-conditioned descent theorem for the standard Collatz map. It is not a proof of global convergence, a novelty claim, or an independent mathematical review.
