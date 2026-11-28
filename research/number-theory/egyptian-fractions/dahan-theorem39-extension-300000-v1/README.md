# Dahan Theorem 3.9 finite replay — 300,000 primes

**Plain result:** an exact integer-arithmetic replay of Dahan's Theorem 3.9
succeeded on the first **300,000** eligible primes with `n ≡ 1 (mod 24)`.
Every stored row passed the independent divisor, congruence, reconstruction,
and Egyptian-fraction identity audit.

This is a finite replay of a published criterion. It is not an asymptotic
bound, a proof of the Erdős–Straus conjecture, or a novelty or priority claim.

## Receipt

- eligible rows: `300,000 / 300,000`
- failures: `0`
- first `n`: `73`
- last `n`: `39,469,273`
- coprime pair bound: `u,a <= 40`
- maximum minimal depth: `14`
- mean minimal depth: `1.5102333333333333`
- search elapsed time: `81.766 s`
- external calls and spend: `0` and `$0`
- generated result SHA-256: `05d481151dad3ce22b3cc7f065a648a4e54e9d26dd302dcbc8e82e1d0b1e473e`
- independent audit output SHA-256: `1f679a2ba3692277de84b45073b89151595460cafe84c8fd12583719a77ad18e`

The exact distribution by minimal depth is recorded in `receipt.json`.

## Reproduce

From a MathCase checkout:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/check_theorem39_extended.py --count 300000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/audit_extended.py full-result.json
```

The first command should report `300000` successes and `0` failures. The
second command independently rechecks every generated row.
