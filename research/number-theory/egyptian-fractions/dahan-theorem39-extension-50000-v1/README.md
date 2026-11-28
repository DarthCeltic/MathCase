# Dahan Theorem 3.9 finite replay — 50,000 primes

This package extends MathCase's bounded arithmetic replay of Dahan,
[arXiv:2608.24035](https://arxiv.org/abs/2608.24035), Theorem 3.9. It tests
the first 50,000 primes `n ≡ 1 (mod 24)` with coprime `u,a <= 40`.

## Result

- `50,000 / 50,000` rows succeeded; zero rows failed.
- The sample runs from `n = 73` through `n = 5,816,089`.
- Maximum minimal depth was `14`; mean minimal depth was `1.5494`.
- The independent audit rechecked every stored divisor, congruence,
  reconstruction, and identity.
- Result SHA-256: `BF929637454C294C5C0BB10E45E3A46BD73C31B730E1458CFB40B810EA031BFF`.

This is finite arithmetic evidence only. It does not prove the Erdős–Straus
conjecture, establish an asymptotic bound, or make a novelty or priority claim.

## Reproduce

From the MathCase repository root:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-50000-v1/check_theorem39_extended.py --count 50000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-50000-v1/audit_extended.py full-result.json
```

The run uses local Python only: no model/provider/API calls and $0 external
spend.
