# Collatz parity-filter union audit

Five separately Lean-checked parity conditions can be compared on the common space of 32-step parity words. A finite audit counts their union; it is not a new combined Lean theorem and does not close the search for a smaller proof basis.

## What the screen counted

It counted all `2^32 = 4,294,967,296` possible length-32 parity words and marked a word when at least one checked condition applies:

| Checked condition | First-hit words in the disjoint count |
| --- | ---: |
| Exactly 12 odd inputs in the first 20 steps | 515,973,120 |
| At most 14 odd inputs in the first 23 steps | 3,392,434,176 |
| At most 15 odd inputs in the first 24 steps | 93,272,064 |
| At most 19 odd inputs in the first 31 steps | 100,328,704 |
| At most 20 odd inputs in the first 32 steps | 36,580,845 |

The disjoint counts sum to **4,138,588,909 of 4,294,967,296** words (96.3590%). The other **156,378,387** words satisfy none of these five conditions. The first-hit buckets simply assign an overlapping word to its earliest listed condition.

The 2,652 residue rows in the M20 source table are distinct and all satisfy the exact-12-of-20 condition. This confirms structural coverage of those listed rows by that condition; it does not show that the other historical M15, M16, or M18 collections are subsumed.

## How to reproduce the arithmetic audit

Use Python 3.10 or later from the repository root:

```powershell
python -B reproduction/collatz-parity-basis-audit-v1/screen.py --output .\basis-screen-recomputed.json
```

The output path must not already exist. The script reads the preserved prior screen and the M20 residue table, binds their SHA-256 digests plus its own source digest, and compares two counting methods:

1. a stepwise dynamic program that tracks how many odd inputs have appeared and whether any condition has passed;
2. a binomial segment convolution over the five checkpoint intervals.

Both methods must agree with each other and with the preserved prior screen for the run to report `PASS_INDEPENDENT_ITERATIVE_AND_SEGMENT_COUNTS`. This is CPU-only Python arithmetic, not a Lean run. The component Lean receipts remain the formal results.

## Preserved calculation history

- `evidence/screen-v1-invalid.json` is retained but invalid: the first calculation omitted free suffix completions and reported `93,861,359`. Do not use that count.
- `evidence/screen-v1-failure-audit.json` identifies the error and states how it was repaired.
- `evidence/screen-v2.json` is the prior corrected screen, reporting `4,138,588,909` and its recursive dynamic-program cross-check.
- `evidence/screen-v3.json` is the LF-readable copy of this release's independent iterative/segment-convolution recomputation. The exact original CRLF bytes are preserved at `evidence/screen-v3.original-crlf.bin`, and `evidence/screen-v3-byte-binding.json` binds both hashes. JSON content is unchanged.

## Limits

These five filters have separate proofs and different endpoint bounds: 32, 37, 39, 50, and 52 ordinary steps respectively. The finite union count does not combine those proofs into one theorem, identify a smaller checkable basis, show global Collatz convergence, or establish novelty. The basis search remains open.
