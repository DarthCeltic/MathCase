# Dahan Theorem 3.9 finite replay — 500,000 primes

**Plain result:** an exact integer-arithmetic replay of Dahan's Theorem 3.9
succeeded on the first **500,000** eligible primes with `n ≡ 1 (mod 24)`.
Every generated row passed a separately run divisor, congruence,
reconstruction, and Egyptian-fraction identity audit.

This is a finite replay of a published criterion. It is not an asymptotic
bound, a proof of the Erdős–Straus conjecture, or a novelty or priority claim.

## Receipt

- eligible rows: `500,000 / 500,000`
- failures: `0`
- first `n`: `73`
- last `n`: `67,928,593`
- coprime pair bound: `u,a <= 40`
- maximum minimal depth: `14`
- mean minimal depth: `1.50016`
- elapsed time: `186.125 s` for generation; the audit was run separately
- generated-result digest embedded by the runner: `41925c92c16bee4627a39e9c954429673969791e353e2a11b0a6924920beda71`
- final generated JSON file digest: `4549da5d23212f1948799497efd06db0a410bbfd5c288f746d16d052ded84dbf`
- independent audit output digest: `6e7009cad416fa32f3d1a3af3d027306d81b31cdbfb02146bdca96e37014c7fe`
- external calls and spend: `0` and `$0`

The exact depth distribution is preserved in the generation log used to make
this compact receipt. The public package keeps the receipt and source hashes,
not the 66 MB generated row file.

## Reproduce

From a MathCase checkout:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/check_theorem39_extended.py --count 500000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/audit_extended.py full-result.json
```

The first command should report `500000` successes and `0` failures. The
second command independently rechecks every generated row and should report
`status: PASS`. The runner and audit source are pinned in `SHA256SUMS`.
