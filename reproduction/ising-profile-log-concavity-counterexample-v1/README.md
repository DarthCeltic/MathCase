# A finite Ising log-concavity counterexample

## The question we tested

A natural pattern to test is whether, at each fixed number of up spins, the counts by disagreeing neighboring pairs form a log-concave sequence. This example checks one finite case; it does not claim the pattern is a published conjecture.

## What this example shows

No. On the periodic `4 Ã— 3` square grid, among configurations with exactly five up spins, the counts with 14, 16, and 18 disagreeing edges are `276`, `60`, and `24`. Log-concavity would require the middle count squared to be at least the product of its neighbors. Here,

`60Â² = 3,600 < 276 Ã— 24 = 6,624`.

This is one exact finite counterexample to that proposed pattern. The calculation counts all `choose(12, 5) = 792` five-vertex subsets and measures their boundary edges in the explicit 24-edge periodic grid. It matches the five-up-spin slice of the [previously checked 4×L joint histogram](../ising-width4-joint-density-v1/README.md). A damaged-count control is rejected.

## Reproduce

From a MathCase checkout with Python 3 and Git available:

```text
python -B reproduction/ising-profile-log-concavity-counterexample-v1/verify_counterexample.py --output reproduction/ising-profile-log-concavity-counterexample-v1/evidence/runs/your-run/receipt.json
```

The checker pins the reference receipt by SHA-256 and compares its own complete subset count against the committed histogram before reporting the counterexample. The recorded run is in `evidence/runs/4x3-main-replay-2026-11-27/receipt.json`; `SHA256SUMS.txt` lists the README, checker, and recorded receipt (it does not hash itself).

## Scope

This says only that this finite `4 Ã— 3`, five-up-spin profile is not log-concave. It does not establish behavior for other sizes, a general theorem, a thermodynamic-limit statement, or any novelty or priority claim. It is an exploratory exact enumeration, not a Lean proof.
