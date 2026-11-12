# Bounded search of the n = 1 (mod 12) residual set

The existing factor-conditioned construction covers `n = 12d + 1` when either
`n` or `q = (n + 3)/4` has a prime factor congruent to 2 modulo 3. This
exploratory search inspects the first 100,000 values of `d` that are outside
that identity, then tests a bounded greedy three-unit-fraction method.

For each residual `n`, it tries `x = q + h` for `0 <= h <= 256`. With
`a = 4x - n` and `D = nx`, the remainder after `1/x` is `a/D`. It sets
`y = ceil(D/a)` and accepts `z = Dy/(ay-D)` only when `z` is an integer,
`x < y < z`, and exact integer cross-multiplication confirms
`4/n = 1/x + 1/y + 1/z`.

The saved run examined 11,156 residual inputs (`n` from 13 through 1,200,001).
It found exact triples for 10,850 inputs: 8,753 with `h <= 32`, 1,047 with
`33 <= h <= 64`, 671 with `65 <= h <= 128`, and 379 with `129 <= h <= 256`.
The other 306 were not found within this bounded search; other representations may exist, and the full Erdos-Straus conjecture is not resolved.

The receipt binds the exact candidate set and canonical per-input results by
SHA-256. Reproduce it with:

```powershell
python scripts/search_egyptian_fraction_n1mod12_residuals.py `
  --cases 100000 `
  --max-first-denominator-offset 256 `
  --output research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-receipt-h256.json
python -m unittest scripts.test_egyptian_fraction_n1mod12_residuals -v
```

No provider, model, network, or novelty claim is involved.

## Extension through offset 4,096

The h=256 receipt remains unchanged. Its 306 capped misses were searched only over offsets 257 through 4,096, after reopening the exact h=256 baseline and its source bindings. This extension found 305 more strict exact triples. The sole remaining input, `n=193`, is not found by this greedy method through offset 4,096; that is not a counterexample and makes no claim about other representations.

Receipt: `search-extension-h4096.json`. Reproduce the extension with:

```powershell
python scripts/extend_egyptian_fraction_n1mod12_residual_search.py `
  --cases 100000 `
  --max-total-offset 4096 `
  --output research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/search-extension-h4096.json
python -m unittest scripts.test_egyptian_fraction_n1mod12_residual_extension -v
```

## Exact resolution of the remaining sampled input

The h=4,096 extension left `n=193` outside the greedy method. For any sorted three-denominator solution `x<y<z`, positivity gives `x>n/4`; also `4/n<3/x`, so `x<3n/4`. After choosing `x`, let `a=4x-n` and `D=nx`. The second denominator must satisfy `y>D/a` and `y<2D/a`; these bounds are exhaustive because the remaining two terms are positive and distinct. The exact integer search checked all 15,907 admissible `(x,y)` pairs, finding six triples. One witness is:

```text
4/193 = 1/50 + 1/1380 + 1/1331700.
```

Together with the h=4,096 results, this gives exact three-term representations for all 11,156 residual inputs in the first 100,000 candidate values of `d` (`n=12d+1`, `13 <= n <= 1,200,001`). This is finite coverage of that interval, not a proof for all `n` or a solution of the full conjecture.

Receipt: `exact-n193-resolution.json`. Reproduce with:

```powershell
python scripts/resolve_egyptian_fraction_n193_exhaustively.py `
  --output research/number-theory/egyptian-fractions/n1-mod12-residual-search-v1/exact-n193-resolution.json
python -m unittest scripts.test_egyptian_fraction_n193_exhaustively -v
```
