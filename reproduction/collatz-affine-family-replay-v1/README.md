# Portable replay of the 2,652 listed families and a 456-row sample

## Plain statement

For each of 2,652 published coefficient pairs `(r,q)` and every natural `k`, 32 ordinary Collatz steps take `1,048,576k+r` to `531,441k+q`, which is smaller than the start. A separate theorem checks the same conclusion for 456 qualifying pairs from a prespecified, disjoint 4,096-residue sample.

This compact five-module Lean-core replay is a new proof route. It does not replay the historical 229 shard modules plus 133 composition chunks and final composition from the M15–M20 archive. Keep those evidence paths distinct.

## Rebuild the exact theorem sources

Use Python 3 and Lean 4.33.1. From this directory:

```sh
python verify_parity.py --receipt runs/fresh-replay.json
```

The runner compiles five modules in a temporary directory with one Lean worker and checks every recorded axiom output. The 2,652 and 456 finite row lists are represented in `M20Table.lean` and `Outside456.lean`; no Mathlib, Docker, model key, or external service is required.

## Regenerate the row inputs

The published M20 coefficient pairs are pinned in `PAIRS.tsv`. From this directory:

```sh
python generate_m20_table.py PAIRS.tsv runs/M20Table.generated.lean
python generate_outside.py inputs/SPLIT.json inputs/PREDICTIONS.json PAIRS.tsv runs/Outside456.generated.lean
```

Both generators reject input bytes whose SHA-256 differs from the recorded pins. Compare generated files byte-for-byte with the checked-in Lean sources before compiling.

## Evidence and limits

`replay-receipt.json` is the supplied source receipt. Fresh output belongs in `runs/` and does not overwrite it. The theorem checks exact finite lists for every `k`; it does not establish global Collatz convergence, that every start eventually reaches 1, novelty, or model improvement. The 456 sample is prespecified but remains a finite list, not a general rule.
