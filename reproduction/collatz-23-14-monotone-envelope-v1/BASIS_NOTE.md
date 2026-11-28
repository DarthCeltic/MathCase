# 23/14 proof-compression note — 2026-11-28

## Result

The numeric part of the public 23/14 proof does not need fifteen separate
`omega` branches for `h = 0, ..., 14` at the mathematical level.

For fixed `n`, define

\[
 F_h(n) = 3^h\bigl(n+2^{23-h}\bigr).
\]

For `0 <= h < 14`, direct expansion gives

\[
 F_{h+1}(n)-F_h(n)=3^h\bigl(2n+2^{22-h}\bigr)>0
\]

for every natural `n`. Therefore `h <= 14` implies
`F_h(n) <= F_14(n)`; one endpoint inequality is enough.

At the endpoint,

\[
 2^{23}(n+1)-3^{14}(n+2^9)
 = 3{,}605{,}639 n - 2{,}440{,}491{,}520.
\]

This affine gap is positive at `n = 677` (`526,083`) and increases with `n`.
Thus the large-start numeric proof can be organized as two reusable facts:

1. monotonicity in the odd-count parameter `h`; and
2. the single endpoint check at `h = 14`, with the lower bound `n >= 677`.

This replaces the current fifteen case splits in the source-level arithmetic
argument. It is a proof-basis reduction, not a new Collatz result: the same
condition (`at most 14 odd inputs in the first 23 accelerated steps`) and the
same ordinary-step bound remain in force.

## Independent exact arithmetic check

The constants were recomputed with integer arithmetic:

```text
2^23 - 3^14       = 3,605,639
2^23 - 3^14*2^9   = -2,440,491,520
gap(677)          = 526,083
```

The small-start branch (`n < 677`) is unchanged and still requires its
finite certificate. The next formalization step would be a separately
reviewed Lean lemma for the monotonicity and affine endpoint; no Lean attempt
was run for this note, and no new authorization or theorem claim is implied.

## Limits and prior-art boundary

This is an algebraic refactoring of the existing proof's bound, not a claim
of a smaller Collatz modulus, a density improvement, convergence, or novelty.
Terras/Everett-style parity-vector arguments remain the relevant prior-art
context. Any public promotion should bind a fresh source/axiom receipt after
the formal lemmas are written and reviewed.

## 2026-11-28 checker receipt

The accompanying Python checker exited `0` with status
`PASS_ARITHMETIC_COMPRESSION_CHECK`. Its SHA-256 is
`313fe50224aabab1b8226840b7a3c66fd6885ec39aa0607c8730a0972829309e`; the
fresh JSON run receipt is `basis-run-2026-11-28.json` with SHA-256
`1553aea462bd320be446c5957a49d79008f984f9380722f730c631cc43008341`.
The receipt checks the increment identity, endpoint constants, and the five
sample values listed above. It does not certify the finite lower branch or
compile Lean.

## Independent small-branch audit

A separate direct interpreter checked every start `3 <= n < 677`. It counted
odd inputs across the first 23 accelerated steps, then evaluated the ordinary
Collatz map for exactly `23 + h` steps. Of the 674 starts, 548 met the
`h <= 14` filter and all 548 had a strict decrease; the failure list was
empty. Checker SHA-256:
`0b0f1261a17959b12ab3a2c5413f0141de8166e56e8eb0a455f67072c14d80b5`.
Receipt SHA-256:
`d592c573ed9819efc730ff9cf17afee0057cbcdd81d2142eb853f38eccc03153`.
This is independent finite arithmetic evidence only. It does not replace the
existing Lean finite certificate or authorize a formal source change.

A second implementation reconstructed the accelerated path from ordinary
Collatz steps and compared its endpoint and consumed-step count with a direct
ordinary interpreter. It found zero mismatches across all 674 starts and the
same 548 qualifying starts. Cross-checker SHA-256:
`c08cacb04acc7ee295381f63482a2bc49c0811b93f9167dc76512994f67f342f`.
Cross-check receipt SHA-256:
`f504eeee262cbdcb63258f59308c812527c1562836db1f1ef6e23ca3847207a6`.
