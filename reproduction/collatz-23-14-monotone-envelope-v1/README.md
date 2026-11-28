# Collatz 23/14 monotone envelope

This package records a small arithmetic refactor of the existing 23/14
bounded-descent argument. It is not a new Collatz theorem, a convergence
result, or a density claim.

For a fixed starting value `n`, the endpoint expression for `h` odd inputs is

`F_h(n) = 3^h (n + 2^(23-h))`.

For `0 <= h < 14`,

`F_(h+1)(n) - F_h(n) = 3^h (2n + 2^(22-h)) > 0`.

So the cases `h <= 14` are bounded by the single endpoint `h = 14`. The
endpoint gap against `2^23 (n+1)` is

`3,605,639 n - 2,440,491,520`,

which is positive from `n = 677` onward (gap `526,083` at 677). The remaining
finite branch is `3 <= n < 677`: 674 starts were checked, 548 met the
`h <= 14` filter, and all 548 strictly descended.

## Reproduce

From this directory:

```text
python check_basis.py --output basis-run-reproduced.json
python check_small.py --output small-audit-reproduced.json
python check_small_crosscheck.py --output small-crosscheck-reproduced.json
```

The first command checks the algebraic increment identity, endpoint constants,
and five sample rows. The next two are independent finite arithmetic checks of
the small branch; the cross-check reconstructs the accelerated path from
ordinary steps. All three commands are ordinary Python checks, not Lean
compilations.

## Scope and limits

This package does not replace the existing Lean proof or its receipts. It does
not establish convergence, generalize the 23/14 filter, reduce the underlying
modulus, or claim novelty over Terras/Everett-style parity arguments. A Lean
monotonicity lemma would require its own reviewed source and receipt.

The detailed derivation and original run hashes are in `BASIS_NOTE.md`.
