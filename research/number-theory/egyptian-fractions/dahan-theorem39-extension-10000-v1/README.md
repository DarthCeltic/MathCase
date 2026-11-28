# Dahan Theorem 3.9 — 10,000-prime finite replay

This extends the published finite replay to the first 10,000 consecutive
primes `n ≡ 1 (mod 24)`, from `n=73` through `n=1028473`, using coprime
`u,a≤40`.

Result: **10,000/10,000 succeeded; 0 failed.** The minimal-depth
distribution was `{1:4851, 2:4543, 3:495, 4:73, 5:33, 6:3, 7:1, 8:1}`;
mean depth 1.5912 and maximum depth 8.

The matched bounded control fixes `a=1` and searches `u≤40`: **9,984/10,000
succeeded; 16 had no witness under that cap**. The two tables are separate
finite controls, not an unrestricted theorem.

`full-result.json` and `a1-control-result.json` contain the exact rows.
The paired audit scripts recheck primality, divisibility, congruences,
reconstruction, and the exact identity. Run from this directory:

```powershell
python -B .\check_theorem39_extended.py --count 10000 --pair-bound 40 --output full-result.json
python -B .\audit_extended.py .\full-result.json
python -B .\check_theorem34_slice_10000.py --count 10000 --u-bound 40 --output a1-control-result.json
python -B .\audit_theorem34_slice.py .\a1-control-result.json
```

This is finite evidence only. It does not prove Erdős–Straus, an asymptotic
statement, or novelty.

The [`comparison-with-a1-control.json`](comparison-with-a1-control.json)
joins the two saved tables: 8,227 minimum-depth rows use `a=1`, 1,773 use
`a>1`, and all 16 control misses are recovered by the two-parameter replay.
The full replay's largest selected `u` is 8, versus 36 in the bounded
control. This is a finite table comparison only.
