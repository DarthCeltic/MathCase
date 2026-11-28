# Dahan Theorem 3.9 — 5,000-prime finite replay

This is a bounded arithmetic replay of Theorem 3.9 from [Dahan,
arXiv:2608.24035](https://arxiv.org/abs/2608.24035). It tests the first
5,000 consecutive primes `n ≡ 1 (mod 24)`, from `n = 73` through
`n = 485113`, using coprime parameters `u,a ≤ 40`.

Result: **5,000/5,000 succeeded; 0 failed.** The maximum minimal depth was
7 and the mean minimal depth was 1.6134. The depth distribution was
`{1:2335, 2:2343, 3:261, 4:45, 5:14, 6:1, 7:1}`.

The saved rows are in `result.json`. `audit_extended.py` independently checks
prime order, primality, divisibility, congruences, reconstruction, and the
exact integer identity for every row. `audit.txt` records its PASS output.

Run it from this directory:

```powershell
python -B .\check_theorem39_extended.py --count 5000 --pair-bound 40 --output result.json
python -B .\audit_extended.py .\result.json
```

This is finite evidence only. It does not prove the Erdős–Straus conjecture,
an asymptotic statement, or novelty. The original 1,000-row replay remains
available in the sibling `dahan-theorem39-replay-v1` directory.
