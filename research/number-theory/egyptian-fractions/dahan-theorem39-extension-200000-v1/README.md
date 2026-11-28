# Dahan Theorem 3.9 finite replay — 200,000 primes

This package is a bounded integer-arithmetic replay of Dahan,
[arXiv:2608.24035](https://arXiv.org/abs/2608.24035), Theorem 3.9. It tests
the first 200,000 primes `n ≡ 1 (mod 24)` using coprime `u,a <= 40`.

## Result

- `200,000 / 200,000` rows succeeded; zero rows failed.
- The sample runs from `n = 73` through `n = 25,637,881`.
- Maximum minimal depth was `14`; mean minimal depth was `1.517915`.
- The independent audit rechecked every stored divisor, congruence,
  reconstruction, and Egyptian-fraction identity.
- Audited result SHA-256: `280150B038B1821B16C812DC6C3AE54AF97A9C5464924CAEDF521A280B7F3AE0`.

This is finite arithmetic evidence only. It does not prove the
Erdős–Straus conjecture, establish an asymptotic bound, or make a novelty or
priority claim. It is not a Lean proof of the conjecture.

## Reproduce

From the MathCase repository root:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/check_theorem39_extended.py --count 200000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/audit_extended.py full-result.json
```

The run uses local Python only: no model/provider/API calls and $0 external
spend.
