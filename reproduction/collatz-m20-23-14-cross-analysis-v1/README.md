# How the M20 families overlap with the 23/14 filter

This small reproduction compares two already published, bounded Collatz results. It checks how the 2,652 listed affine families from the M20 replay split under the separate 23-step parity filter.

## Result

The M20 table lists 2,652 families of the form

```text
2^20 k + r  ->  3^12 k + q after 20 accelerated steps
```

For each family, write its parameter as `k = 8m + j`, where `0 <= j < 8`. This splits it into eight residue classes modulo `2^23`. The checker evaluates all 21,216 resulting classes in two ways: direct accelerated integer iteration and an exact affine numerator recurrence. It additionally checks the listed endpoint by 32 ordinary Collatz steps at each base residue `r`. A deliberately incorrect endpoint is rejected by both accelerated-iteration methods.

Every family has the same odd-input count distribution over its eight classes: one class has 12 odd inputs in the first 23 accelerated steps, three have 13, three have 14, and one has 15. The published 23/14 theorem covers the first seven classes. That is 18,564 of 21,216 classes (87.5%); the eighth class per family is outside its cutoff.

## Reproduce

Use Python 3.10 or later. From this directory, run:

```sh
python -B analyze.py --output run-result.json
```

The script locates the two neighboring reproduction packages, checks their pinned SHA-256 source hashes, runs both arithmetic implementations and the negative control, and writes a path-free JSON result. It does not compile Lean or rebuild M20. Compare the output’s checks and counts with `result-independent.json`.

## What this does and does not show

This is a finite cross-check of 2,652 listed families and their 21,216 residue-class refinements. It does not prove that the 23/14 condition covers each entire M20 family: one of the eight refined classes per family has 15 odd inputs. The M20 result separately proves descent for every parameter in its listed families; the 23/14 result applies to all starts meeting its own parity condition. These checks established no proof-obligation deduplication, new Collatz theorem, global convergence, or novelty claim.

The affine M20 replay uses a generic affine-trace proof and an iterator adapter. The 23/14 development uses an ordinary-to-accelerated bridge, a scaled upper bound, residue lifting, and parity-word counting. They are distinct proof routes and are left separate.

## Source records

- The affine family table, symbolic-family checker, and trace library are in [`collatz-affine-family-replay-v1`](../collatz-affine-family-replay-v1/README.md). The exact pinned table is `PAIRS.tsv`.
- The 23/14 statement and Lean replay are in [`collatz-parity-envelopes-2026-11-v1`](../collatz-parity-envelopes-2026-11-v1/STATEMENTS.md).
- The separate historical replay of the original M15–M20 sources is documented in [`m20-public-source-replay-v1`](../m20-public-source-replay-v1/ORIGINAL_REPLAY.md). This cross-analysis does not rerun that replay.

`result-independent.json` records the checked counts and source hashes. `SHA256SUMS.txt` binds the three files in this package.
