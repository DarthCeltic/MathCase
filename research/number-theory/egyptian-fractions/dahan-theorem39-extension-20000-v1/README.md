# Dahan Theorem 3.9 finite replay — 20,000 primes

This package extends the earlier finite replay of Dahan's Theorem 3.9 for
primes `n ≡ 1 (mod 24)`. It tests coprime `u,a <= 40` using the exact integer
divisor criterion from the paper.

## Result

- `20,000 / 20,000` rows succeeded; no row was left without a witness.
- The sample runs from `n = 73` through `n = 2,172,241`.
- Maximum minimal depth was `8`; mean minimal depth was `1.5714`.
- The independent audit exited `PASS` and rechecked every stored divisor,
  congruence, reconstruction, and identity.
- Generator result SHA-256: `5c37259c0e2721f76176cbc0c7d0e590799965de1570459b3ccaeed301fec734`.
- Audited result-file SHA-256: `2450100229378817c258f33ec1b789aae1bbfddfbe7b3ad1cfb0be97970e03bf`.

## Reproduce

From this directory:

```text
python check_theorem39_extended.py --count 20000 --pair-bound 40 --output reproduced.json
python audit_extended.py full-result.json
```

The run is finite arithmetic evidence only. It does not prove the
Erdős–Straus conjecture, establish an asymptotic bound, or make a novelty or
priority claim. The paper and theorem scope are Dahan, arXiv:2608.24035.
