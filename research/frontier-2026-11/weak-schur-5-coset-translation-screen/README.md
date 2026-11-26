# Weak Schur 208: translated multiplicative-coset screen

## Result

This case exhausts one explicit five-color family for the weak Schur problem at 208. For each prime `q ≡ 1 (mod 5)` from 211 through 1000, choose the least primitive root `g` and color `x ∈ [1,208]` by `log_g(x+b) mod 5` in `F_q`, for every translation `b = 0,...,q-1`. If `x+b = 0`, that position is a wildcard which may receive any of the five colors.

The screen covers 30 primes and all 17,500 translations. Every translation has a monochromatic distinct-addend triple using only nonzero residues, so assigning a color to a zero cannot repair it. The minimum conflict count after the best zero assignment is 209, attained at `q=311`, `g=17`, `b=0`; the compact receipt includes all 209 triples. There are 10,712 constraints per candidate (`a < b`, `a+b ≤ 208`).

This excludes only the stated translated multiplicative-coset family at those 30 primes. It does not exclude arbitrary five-colorings of `[1,208]`, prove that 208 is impossible, determine `WS(5)`, or claim a new bound. Fred Rowley supplied the first 207 example; Vicenzi et al. report a distinct construction of the same size. This screen is a finite-family check and does not change the established lower bound `WS(5) ≥ 207`. See [Rowley’s original example and the separate Vicenzi et al. witness](../WEAK_SCHUR.md#can-a-207-number-coloring-reach-208).

## Reproduce

Python 3.10 or later, standard library only. From this directory run:

```text
python -B run_case.py
```

The command writes `screen-receipt.json`, then independently recomputes every prime, translation, per-prime tally, and the best conflict list into `verification-receipt.json`. The checker recovers each color through the fifth-power character exponent `(q-1)/5` and counts constraints with direct nested-pair enumeration, independent of the primary power-map tally. It also checks a simple valid three-point coloring, a one-triple negative control, and that equal-addend `1+1=2` is outside this case's predicate. No network, solver, model, Lean, or nonstandard package is used.

The deterministic least-root choice does not restrict the family by color labels: any other primitive root changes discrete-log classes by a permutation of the five colors. The finite prime interval and translation family are the stated scope.

## Files

- `screen.py` — exhaustive family screen and compact per-prime result.
- `check_exact.py` — separately implemented prime/root calculation and direct-pair audit.
- `run_case.py` — public entry command.
- `screen-receipt.json` — primary result and 209-conflict witness.
- `verification-receipt.json` — independent recomputation and controls.
- `SHA256SUMS.txt` — source and receipt hashes.
