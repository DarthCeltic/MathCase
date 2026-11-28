# Independent review checklist

This is a checklist for a person reviewing MathCase from the public repository.
It is not an approval, signature, M0 review, or M4 promotion. A reviewer may
check software reproduction, mathematical wording, or both.

## 1. Reproduce the bounded 23/14 check

1. Start from a clean checkout and use the pinned command in
   [`collatz-parity-envelopes-2026-11-v1/README.md`](collatz-parity-envelopes-2026-11-v1/README.md).
2. Record the exact commit, Lean version, operating system, command, elapsed
   time, exit code, source hashes, and the printed axiom lists.
3. Confirm that the result is only: for `n >= 3` with at most 14 odd inputs in
   the first 23 accelerated steps, a standard iterate is smaller by step 37.
4. Check that the text does **not** claim global convergence, a solved
   conjecture, an asymptotic density, or novelty.

The arithmetic companion at
[`collatz-23-14-monotone-envelope-v1`](collatz-23-14-monotone-envelope-v1/README.md)
is Python-only proof organization. It is not a substitute for the Lean
replay.

## 2. Reproduce the M20 source replay

1. Follow the [fresh-clone recipe](m20-public-source-replay-v1/ORIGINAL_REPLAY.md)
   with a new output directory.
2. Confirm `status.json` is `PASS`, all 363 modules and 23 audit groups finish,
   and all 4,262 queries are checked.
3. Confirm the recorded axiom union is `[propext, Quot.sound]` and that no
   `sorryAx` or `native_decide` appears.
4. Compare the plain statement with the actual scope: 2,652 listed affine
   progressions after 32 steps. It is not a theorem about every starting
   number or eventual convergence.
5. Preserve any failure, timeout, or mismatch. Do not replace a failed receipt
   with a later successful run in the same evidence folder.

## 3. Reproduce the bounded C7 search package

1. Check out the public MathCase commit named by the C7 package README and
   verify every entry in its `SHA256SUMS` against committed Git blobs.
2. Run the package verifier on the published 367-word control and the saved
   bounded candidate. Run the planted-conflict control and confirm that it is
   rejected.
3. Record the search seed, whole-graph scope, time cap, best size, command,
   and output digest. The published result is `NO_368_FOUND_UNKNOWN`: it is
   neither a 368-word construction nor an impossibility proof.

## 4. Reproduce the finite 3x3 Ising check

1. Run `python -B reproduction/ising-3x3-fixed-up-logconcavity-v1/verify_width3_fixed_up.py`
   into a new output directory.
2. Confirm that direct enumeration and the independent transfer calculation
   agree for every fixed-up-spin profile, and that the interior-zero damaged
   control is rejected.
3. Confirm the four-up/five-up profile is `45, 36, 45` at 8, 10, and 12
   broken edges, so `36^2 < 45*45`. This is a finite 3x3 result only, not a
   thermodynamic-limit theorem or a claim of priority.

## 5. Mathematical wording review

For either result, compare the English sentence with the exact Lean statement:

- Are all hypotheses present?
- Are “accelerated” and “ordinary” step counts distinguished?
- Is the quantified domain exactly the one in the source?
- Does “2,652 families” mean the listed families, rather than all residues?
- Are finite residue counts described as counts in a stated modular space,
  rather than percentages of Collatz trajectories?
- Are prior-work and novelty claims absent or supported by a primary source?

## 6. Report a check

A useful report names the case and commit, gives the command and tool versions,
states PASS/FAIL/TIMEOUT, and links a receipt or first diagnostic. For a wording
review, quote the sentence and declaration compared, then list any missing
hypothesis, counterexample, or literature reference. Reports should preserve
negative results as carefully as positive ones.
