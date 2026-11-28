# Dahan Theorem 3.9 finite replay — 100,000 primes

This package is a bounded integer-arithmetic replay of Dahan,
[arXiv:2608.24035](https://arxiv.org/abs/2608.24035), Theorem 3.9. It tests
the first 100,000 primes `n ≡ 1 (mod 24)` using coprime `u,a <= 40`.

## Result

- `100,000 / 100,000` rows succeeded; zero rows failed.
- The sample runs from `n = 73` through `n = 12,222,697`.
- Maximum minimal depth was `14`; mean minimal depth was `1.53213`.
- The independent audit rechecked every stored divisor, congruence,
  reconstruction, and Egyptian-fraction identity.
- Audited result SHA-256: `F814AB3853703CD129910A6574BF7B77CE8B329D8535965D52B55882650765EF`.

This is finite arithmetic evidence only. It does not prove the
Erdős–Straus conjecture, establish an asymptotic bound, or make a novelty or
priority claim. It is not a Lean proof of the conjecture.

## Reproduce

From the MathCase repository root:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-100000-v1/check_theorem39_extended.py --count 100000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-100000-v1/audit_extended.py full-result.json
```

The run uses local Python only: no model/provider/API calls and $0 external
spend.
