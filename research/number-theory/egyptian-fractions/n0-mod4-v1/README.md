# Egyptian-fraction identity for `n = 0 mod 4`

For `n = 4k`, `k >= 1`, put `d = k(k+1)`. Then

```text
4/n = 1/k = 1/(k + 1) + 1/(d + 1) + 1/(d*(d + 1)).
```

The last two fractions sum to `1/d`, and

```text
1/(k + 1) + 1/d
= 1/(k + 1) + 1/(k*(k + 1))
= (k + 1)/(k*(k + 1))
= 1/k.
```

The denominators are positive and strictly increasing for `k >= 1`: with
`d=k(k+1)`, we have `k+1 < d+1 < d(d+1)` because `d > k` and `d > 1`.
The exact local check covers `k=1..100000` (`n=4..400000`); the algebra
proves the identity for every `k >= 1`.

This settles the stated congruence class by a direct identity. It is not a
novelty claim and does not settle the full Erdős–Straus conjecture.

Reopen the check with:

```powershell
python scripts/run_egyptian_fraction_n0mod4_check.py --output $env:TEMP\mathcase-egyptian-n0mod4-replay.json
python -m unittest scripts.test_egyptian_fraction_n0mod4_check -v
```
