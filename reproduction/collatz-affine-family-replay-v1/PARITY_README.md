# Checking whole Collatz families with one affine computation

The theorem covers the ordinary Collatz map (even inputs halve, odd inputs take 3n+1). For each of the 2,652 distinct published pairs (r,q) and every nonnegative integer k, exactly 32 steps from 1,048,576k+r land on 531,441k+q, which is strictly smaller than the start. A second theorem gives the same statement for 456 qualifying pairs from a prespecified sample of 4,096 residues disjoint from the published table.

## Run the checks

With Python 3 and Lean 4.33.1 installed, run:

```console
python verify_parity.py --receipt replay.json
```

An explicit Lean executable can be selected with `--lean`. Each run compiles the five Lean files below in a fresh temporary directory, uses one Lean worker, and records the status, compile time, output, toolchain version, and source SHA-256. The default time limit is 120 seconds per file. The sources need only Lean's bundled libraries. No provider key, Docker image, or Mathlib snapshot is needed.

## Why one calculation proves a whole row

Represent a family as s·k+r. When s is even, every member has the parity of r. An even r advances the pair to (s/2, r/2). An odd r advances it to (3s, 3r+1). An odd slope with steps remaining makes the checker decline. Induction over the number of successful steps proves that this finite coefficient computation agrees with ordinary iteration simultaneously for every k. The bound on the slope and the strict intercept inequality then give descent.

- `CollatzAffineTrace.lean` is the existing MathCase proof that a trace of valid affine steps applies to every parameter. [Published source](https://github.com/DarthCeltic/DarthCeltic.github.io/blob/558625c51c3a083826681222728ae0b296906da7/evidence/collatz/affine-trace-families/sources/CollatzAffineTrace.lean)
- `SymbolicFamilies.lean` constructs that trace from a successful executable check and proves that its iterator agrees with the recursion used in the original M20 shards.
- `M20ExactSmoke.lean` uses the exact iterator declarations from the first original shard, establishes a definitional bridge, checks two original row statements, rejects a deliberately wrong q, and checks refusal on a mixed-parity input.
- `M20Table.lean` proves `MathCase.M20Table.all_rows` for every row from the pinned public input and every k. Lean's kernel reduces row certificates in 83 batches.
- `Outside456.lean` proves `MathCase.Outside456.all_rows` for the prespecified qualifying sample, in 15 batches.

`generate_m20_table.py PAIRS.tsv M20Table.lean` regenerates the published-row source. The input SHA-256 is `30f06904507a35d180fab9d0d9195759047d13edfd857c04e2ef483eaf75194a`. [Published pairs](https://github.com/DarthCeltic/DarthCeltic.github.io/blob/558625c51c3a083826681222728ae0b296906da7/evidence/collatz/m20-source-replay-2026-11-18/coefficient-audit/pairs.tsv)

`generate_outside.py SPLIT.json PREDICTIONS.json PAIRS.tsv Outside456.lean` uses prespecified outside residues and independently calculates the endpoints by scalar iteration. It compares the resulting qualifying pairs with the recorded predictions after completing the calculation. Both generators write deterministic UTF-8/LF output.

## Source-byte cleanup and fresh receipt

The supplied `replay-receipt.json` and first fresh receipt remain unchanged. Two input files had redundant blank lines after their final source lines; their exact original bytes are preserved under `runs/initial-source-bytes/`, with old and current hashes in `runs/source-eof-cleanup.json`. The current sources now end in one LF newline. `runs/fresh-public-replay-2026-11-23-eof-clean.json` records a fresh compile of all five modules from these cleaned bytes; every module passed with the recorded `[propext, Quot.sound]` audits.

## Scope

The new proof replaces the original row-specific proofs of symbolic trajectories with one generic theorem and finite arithmetic on every row. The 2,652 published rows still require individual kernel-reduced checks. The aggregate theorem uses a list-membership proposition; the original build used a conjunction of shard theorems. The historical binary artifacts and 363-module build have their own replay requirements. The sources here do not run that build.

The separate 456-family theorem concerns only the listed rows. The membership list and generated conclusions are checked in Lean; the split, out-of-table property and the sample count are checked by the generator. A bounded decrease neither establishes convergence nor proves that the first decrease occurred on step 32. The parity calculation is a familiar elementary method. This replay does not establish priority, independent mathematical review, or a model-performance improvement.
