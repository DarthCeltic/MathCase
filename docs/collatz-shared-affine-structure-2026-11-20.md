# M20 shared affine structure review — 2026-11-20

For the 2,652 M20 rows, a single coefficient inequality explains why the recorded 32-step affine equalities imply strict descent; it does not eliminate any of the 2,652 trajectory equalities.

## What was checked

The exact source is `reproduction/m15-m20-r2/evidence/collatz/m15-m20-pinned-replay/m20-composition-v1/sources/M20CompositionAllFamiliesV1.lean`, covered by the Nov 18 two-phase source replay in `reproduction/m20-source-replay-2026-11-18/`. Its SHA-256 is `8e8fb280df93829c988a360b01276def73e7e5cbd8c9ce8eca70987d5733d3e5`; the replay inventory SHA-256 is `c0b111bc9518f3883e8747e0b8cd97e4340ffca7cd0d55b155629d25bf825bd7`. Parsing the listed rows gives 2,652 distinct input residues `r` and 2,652 distinct outputs `q`; every row uses modulus `2^20`, iterate bound 32, and slope `3^12 = 531,441`. The composition is grouped into 133 modules: 132 groups have 20 rows and one has 12. Grouping organizes the proof but does not merge row obligations.

For every listed row, the source proves the trajectory equality to `3^12*k + q`. The remaining comparison is shared algebra:

```text
(2^20*k + r) - (3^12*k + q)
  = (2^20 - 3^12)*k + (r - q)
  = 517,135*k + (r - q).
```

The minimum intercept gap is `r-q = 117` (at `r=239`, `q=122`); all 2,652 gaps are positive. Thus each listed affine endpoint is strictly smaller for every natural `k`, conditional on its recorded Lean-checked trajectory equality. The existing composed Lean theorem itself includes both equality and inequality for each listed family.

## Does this reduce proof duplication?

No reduction in the number of mathematical cases was found. The prior prefix screen also reduced zero rows: every candidate first qualified at step 32 and corresponded to one existing M20 row. The shared slope and inequality can motivate a future refactor that factors out repeated arithmetic proof code, but that refactor has not been made or measured. The 2,652 separate trajectory equalities remain.

## Scope

The result covers exactly those listed residue progressions, with first descent at the recorded 32-step endpoint. It is not a general Collatz rule, does not cover every residue class, does not prove convergence, and makes no novelty claim. The periodic density `2,652 / 2^20 ≈ 0.252914%` describes the selected residue offsets only, not the share of integers that converge. The M13–M20 audit's `97.394%` is also a finite residue-count measurement, not a convergence probability.
