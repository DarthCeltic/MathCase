# M31 unresolved odd residue structure sample v1

## Frozen scope and hypotheses

This experiment samples 4,096 odd residue classes modulo `2^31` that are absent from the exact M30 arithmetic-only coverage mask and from all 1,900,470 saved M31 strict-affine families found through 128 symbolic steps. The M30 mask is reconstructed from the pinned local M15–M30 package chain; the M31 compressed scan and its independent pair-validation receipt are hash-bound before sampling.

The sample is uniform without replacement over that finite eligible population. A SHA-256 counter stream with seed `mathcase-collatz-m31-unresolved-odd-v1:2026-11-01` draws odd classes; rejection removes M30-covered classes, saved M31 family residues, and duplicate draws. The first 2,048 accepted classes are the discovery split and the next 2,048 are the holdout. Each representative is `r + 2^31`.

Three hypotheses are registered before execution:

1. **Initial 2-adic tail:** in each split, the maximum absolute deviation of the observed `v2(3n+1)` frequencies for buckets `1,2,3,4,5,6+` from geometric probabilities `1/2,1/4,1/8,1/16,1/32,1/32` is at most `0.06`.
2. **Concrete descent:** at least 50% of fixed representatives in each split reach an odd-to-odd iterate strictly below the representative within 64 odd-to-odd transitions.
3. **Longer affine screen:** at least 1% of each split gains a strict affine certificate between steps 129 and 192 under the registered M31 parity-affine recurrence.

All thresholds and the split are fixed before the run; the holdout is not used to change hypotheses. Report counts and rates even when a hypothesis fails. No adaptive search follows this sample.

## Interpretation limits

These are finite conditional statistics for one deterministically selected population and one fixed representative per class. They do not imply a universal distribution, a general descent theorem, or a proof/refutation of the Collatz conjecture. Any affine certificates remain arithmetic candidates until independently formalized. The experiment uses local CPU computation only: no model/provider/search/network calls, GPU, Lean build, or M4 claim.
