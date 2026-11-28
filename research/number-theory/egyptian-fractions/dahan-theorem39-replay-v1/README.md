# Erdős–Straus Theorem 3.9 finite replay — 1,000 primes

This is an independent finite arithmetic replay of [Dahan, arXiv:2608.24035](https://arxiv.org/abs/2608.24035),
Theorem 3.9. It tests the first 1,000 primes `n ≡ 1 (mod 24)` using coprime
`u,a ≤ 40`, reconstructs the divisor witness, and checks the exact identity.

Result: **1,000/1,000 succeeded, 0 failed**. Minimal-depth distribution was
`{1:435, 2:492, 3:55, 4:13, 5:4, 6:1}`, mean depth `1.662`, maximum depth
`6`, covering `n=73` through `n=83689`. A separate audit rechecked primality,
divisibility, congruences, reconstruction and the identity for every row.

This is finite evidence only. It does not prove the Erdős–Straus conjecture,
an asymptotic statement, or novelty. The earlier 400-prime result and the
primary paper remain the comparison baseline.

```powershell
python -B .\check_theorem39_1000.py > result.json
python -B .\audit_result.py
```
