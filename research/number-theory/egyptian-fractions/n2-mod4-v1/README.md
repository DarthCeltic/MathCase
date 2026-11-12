# Egyptian-fraction identity for `n = 2 mod 4`, `n >= 6`

Let `n = 4k + 2` with `k >= 1`. Set `m = 2k + 1`, `a = k + 1`, and `d = ma`.
Then `n = 2m`, `m + 1 = 2a`, and

```text
4/n = 1/a + 1/(d + 1) + 1/(d*(d + 1)).
```

The last two terms sum to `1/d`, and

```text
1/a + 1/d = 1/a + 1/(m*a) = (m + 1)/(m*a) = 2/m = 4/n.
```

The denominators are positive and distinct: `a < d` because `m >= 3`, then
`d < d+1 < d(d+1)` because `d >= 6`. The exact local check covers
`k=1..100000` (`n=6..400002`); the algebra proves the formula for every
`k >= 1`.

This settles the stated congruence class by a direct identity. It is not a
novelty claim and does not settle the full Erdős–Straus conjecture. The case
`n=2` is outside the distinct-denominator statement; the usual repeated-unit
fraction identity is `2 = 1 + 1/2 + 1/2`.

Reopen the check with:

```powershell
python scripts/run_egyptian_fraction_n2mod4_check.py --output $env:TEMP\mathcase-egyptian-n2mod4-replay.json
python -m unittest scripts.test_egyptian_fraction_n2mod4_check -v
```
