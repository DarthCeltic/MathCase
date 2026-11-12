# Egyptian-fraction identity for `n = 3 mod 4`

For every integer `k >= 0`, let `n = 4k + 3`, `m = k + 1`, and `d = nm`.
Then

```text
4/n = 1/m + 1/(d + 1) + 1/(d*(d + 1)).
```

Indeed,

```text
1/(d + 1) + 1/(d*(d + 1)) = 1/d,
1/m + 1/d = 1/m + 1/(n*m) = (n + 1)/(n*m) = 4/n,
```

because `n + 1 = 4m`. All denominators are positive and distinct: `m < d`
since `n >= 3`, `d < d+1`, and `d+1 < d(d+1)` since `d >= 3`.

This settles the stated congruence class by a direct identity. It is not a
novelty claim and does not settle the full Erdős–Straus conjecture. The
accompanying exact check tests 100,000 initial values of `k` with rational
arithmetic; the algebra above, rather than the finite check, proves the
identity for every `k >= 0`.

Two companion dossiers cover the even cases with distinct denominators:

- `n0-mod4-v1/README.md` covers `n = 4k`, `k >= 1`.
- `n2-mod4-v1/README.md` covers `n = 4k + 2`, `k >= 1`; `n=2` has the
  repeated-denominator representation `2 = 1 + 1/2 + 1/2`.

Together these direct constructions cover every even `n >= 2` and every
`n = 3 mod 4`. Three direct constructions and one factor-conditioned identity
cover much of the `n = 1 mod 4` part; see
[`n1-mod4-subfamilies-v1/README.md`](n1-mod4-subfamilies-v1/README.md). Among
the six residue classes modulo 24 inside `n = 1 mod 4`, those constructions
unconditionally cover `5, 9, 13, 17, 21 mod 24`. The conditional identity
also covers `n = 1 mod 24` when `n` or `(n+3)/4` has a prime factor `2 mod 3`.
Values left outside these constructions may still have other Egyptian-fraction
representations. The full conjecture remains unsettled here.

Reopen the exact check and its unit tests with:

```powershell
python scripts/run_egyptian_fraction_n3mod4_check.py --output $env:TEMP\mathcase-egyptian-n3mod4-replay.json
python -m unittest scripts.test_egyptian_fraction_n3mod4_check -v
```

## Bounded search of the remaining n = 1 (mod 12) candidates

A bounded local greedy search tested the first 100,000 `n = 12d + 1` candidates outside Family D, with the first denominator restricted to `q..q+256`. Exact triples were found for 10,850 of 11,156 residual values; 306 were not found within this method and bound. This is finite exploratory coverage only; see the [bounded search note](n1-mod12-residual-search-v1/README.md) and its hash-bound receipt.

Extending the same greedy first-denominator search through offset 4,096 found another 305 exact triples among the 306 misses from the smaller bound. The only remaining input within that method is `n=193`; it is not a counterexample. See the separate extension receipt and method notes.

The final bounded residual case, `n=193`, was resolved by exhaustive exact enumeration of the sorted denominator bounds, with six valid triples. All 11,156 residual inputs in the stated finite interval now have an exact representation; this remains finite evidence, not a proof for all `n`.

A disjoint second tranche extended the factor-conditioned `n=1 mod 12` residual search to `d=100001..200000` (`1,200,013 <= n <= 2,400,001`). All 10,068 residual candidates in that interval now have exact representations after a bounded offset extension for its final miss. See the [second-range receipt](n1-mod12-range-100001-200000-v1/README.md); this remains finite evidence.

A third disjoint tranche extends the same factor-conditioned residual search to `d=200001..300000` (`2,400,013 <= n <= 3,600,001`). It found exact representations for all 9,737 candidates: 9,481 within the first-denominator offset 256 and 256 more through offset 4,096. Combined with the first 200,000 `d` values, the bounded search now has representations for 30,961 residual candidates. See the [third-range receipt](n1-mod12-range-200001-300000-v1/README.md). This is still finite coverage, not a proof for all `n` or a solution to the full Erdős–Straus conjecture.

## First bounded witness stream

The exact-byte witness stream for `1 <= d <= 100000` is now preserved at [`n1-mod12-range-1-100000-v1/README.md`](n1-mod12-range-1-100000-v1/README.md). It accounts for all 11,156 candidates, with `n=193` retained as a bounded-search miss and linked to its separate exhaustive exact resolution. This is finite evidence only.

## Fourth bounded witness range

A versioned, disjoint `300001..400000` run verified 9,541 factor-conditioned candidates and exported 9,536 exact triples within offset 4,096. A separate extension found exact triples for the five base-stream misses through offset 65,536. This brings the four disjoint ranges through `d=400000` to 40,502 residual candidates with exact representations in the saved records; it remains finite evidence only. See [`n1-mod12-range-300001-400000-v2/README.md`](n1-mod12-range-300001-400000-v2/README.md). The older hash-bound runs remain unchanged.

## Fifth bounded witness range

A fifth disjoint tranche covers `d=400001..500000`. The independent sieve and
integer-identity checker verified 9,351 factor-conditioned candidates and
9,346 base-stream triples through offset 4,096. A separate bounded extension
found triples for the five base misses through offset 65,536. Across the five
disjoint tranches through `d=500000`, the saved records now contain exact
representations for 49,853 residual candidates. This remains finite evidence,
not a proof for all `n` or a solution to the full Erdős–Straus conjecture. See
[`n1-mod12-range-400001-500000-v3/README.md`](n1-mod12-range-400001-500000-v3/README.md).

## Sixth bounded witness range

A sixth disjoint tranche covers `d=500001..600000`. The independent sieve and
integer-identity checker verified 9,235 factor-conditioned candidates and
9,232 base-stream triples through offset 4,096. A separate bounded extension
found triples for the three base misses through offset 65,536. Across the six
disjoint tranches through `d=600000`, the saved records now contain exact
representations for 59,088 residual candidates. This remains finite evidence,
not a proof for all `n` or a solution to the full Erdős–Straus conjecture. See
[`n1-mod12-range-500001-600000-v3/README.md`](n1-mod12-range-500001-600000-v3/README.md).

## Bounded witness range `600001..700000`

A disjoint tranche covered `d=600001..700000` and verified 9,168 factor-conditioned candidates. The base stream has 9,168 exact triples through offset 4,096. The separately replayed extension receipt confirms there were no base misses. Across the 7 disjoint ranges through `d=700,000`, the records now contain exact representations for 68,256 residual candidates. This is finite evidence only. See [`n1-mod12-range-600001-700000-v3/README.md`](n1-mod12-range-600001-700000-v3/README.md).

## Bounded witness range `700001..800000`

A disjoint tranche covered `d=700001..800000` and verified 9,055 factor-conditioned candidates. The base stream has 9,051 exact triples through offset 4,096. A separate bounded extension found witnesses for each of 4 base misses through offset 65,536. Across the 8 disjoint ranges through `d=800,000`, the records now contain exact representations for 77,311 residual candidates. This is finite evidence only. See [`n1-mod12-range-700001-800000-v3/README.md`](n1-mod12-range-700001-800000-v3/README.md).

## Bounded witness range `800001..900000`

A disjoint tranche covered `d=800001..900000` and verified 8,976 factor-conditioned candidates. The base stream has 8,972 exact triples through offset 4,096. A separate bounded extension found witnesses for each of 4 base misses through offset 65,536. Across the 9 disjoint ranges through `d=900,000`, the records now contain exact representations for 86,287 residual candidates. This is finite evidence only. See [`n1-mod12-range-800001-900000-v3/README.md`](n1-mod12-range-800001-900000-v3/README.md).

## Bounded witness range `900001..1000000`

A disjoint tranche covered `d=900001..1000000` and verified 9,044 factor-conditioned candidates. The base stream has 9,043 exact triples through offset 4,096. A separate bounded extension found witnesses for each of 1 base misses through offset 65,536. Across the 10 disjoint ranges through `d=1,000,000`, the records now contain exact representations for 95,331 residual candidates. This is finite evidence only. See [`n1-mod12-range-900001-1000000-v3/README.md`](n1-mod12-range-900001-1000000-v3/README.md).
