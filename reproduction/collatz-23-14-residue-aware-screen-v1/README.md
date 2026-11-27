# 23/14 Collatz: a residue-aware finite screen

## What this checks

The existing Lean-checked 23/14 result is bounded: when the first 23 accelerated Collatz inputs contain at most 14 odd steps, the ordinary sequence is below its start by step `23 + h`. There are 7,507,638 such parity words among the 2^23 possible words. This package checks that finite parity range by a second computational route. It does not claim a new Collatz theorem or anything about convergence.

For a fixed 23-bit parity word `eps` with `h` odd bits, the accelerated recurrence gives

`2^23 * x = 3^h * n + c`,

where `c = sum(2^i * 3^(number of odd bits after i))` over odd positions `i`. The endpoint being an integer forces one starting residue modulo 2^23: `n = -c * inverse(3^h) mod 2^23`. The least representative of that residue which is at least 3 is `n0`. Because `2^23 > 3^14`, the margin `(2^23 - 3^h) * n - c` increases with `n` for every `h <= 14`; so checking it at `n0` checks every larger start in that residue class.

The inverse-residue condition also forces the prescribed parity word: if the final affine numerator is divisible by 2^23, each prefix numerator is divisible by its corresponding power of 2. At each step, the chosen even or odd branch is therefore the actual parity branch. This elementary bridge is explained here but is not yet a separate Lean lemma in this package.

## Results

- C++ direct-mask enumeration and a separate Python split-word enumeration agree on all 7,507,638 parity masks with `h <= 14`, including every per-`h` row.
- Every residue-aware minimum margin is positive. In units of an accelerated-step drop, the minimum drops for `h=0..14` are:
  `8388607, 2097151, 524287, 131071, 32767, 8191, 2047, 511, 127, 31, 7, 2, 97, 97, 67`.
- The direct accelerated trajectory for the worst mask at each `h` agrees with the mask, coefficient identity, residue and reported margin.
- Lean 4.33.1 kernel-checked the arithmetic predicate on masks `0..16,383` (16,384 masks); `#print axioms` reports `[propext]`. A second Lean check verifies all hard-coded powers and inverse powers through `h=14` and reports no axioms. The prefix Lean run is not the full enumeration and does not prove the whole 23/14 theorem.
- A coarser coefficient-only maximum passes its sufficient inequality only for `h=0..3`; it fails for `h=4..14`. This is a failed compression approach, not a counterexample to Collatz descent.

The full 23-bit C++/Python run is computational evidence, not a Lean proof. The existing 23/14 theorem remains the Lean-checked result. This package makes no proof-compression, novelty, or convergence claim.

## Reproduce

Requires Python 3 and a C++17 compiler (g++). From this folder, run the complete replay and controls with one command:

```powershell
python -B .\reproduce.py
```

The runner rebuilds both implementations, compares their fresh outputs with the pinned records, checks all 7,507,638 masks, simulates each per-h worst case, verifies the short-word recurrence, and rejects damaged-margin and altered-residue controls. It writes only a temporary C++ binary; set TEMP and TMP first if you want that scratch elsewhere.


To reproduce the Lean checks, use Lean 4.33.1:

```powershell
lean .\LeanPrefixCheck16384Optimized.lean
lean .\LeanTableValidation.lean
```

The files use Lean Core only; there is no Mathlib dependency. The prefix proof is intentionally limited to 16,384 masks because kernel reduction grows quickly. Do not infer full Lean coverage from that check.

## Failure record

- The coefficient-only inequality does not close `h=4..14`; see `python-envelope.json` and `exhaustive_envelope.cpp`.
- An initial residue recurrence omitted the inverse of 3. A first inverse-table value was also wrong. Both failed prototypes and their diagnosis are kept in `failures/`.
- The full 23-bit enumeration has not been completed in Lean.

## Status

Reproducible exploratory computation. Independent mathematical review is open. External spend: $0.
