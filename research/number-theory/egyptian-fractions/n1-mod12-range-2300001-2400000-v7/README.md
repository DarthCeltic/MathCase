# Bounded `n = 1 mod 12` residual range 2300001..2400000

This disjoint tranche covers `2300001 <= d <= 2400000`, with `n=12d+1`, or
`27,600,013 <= n <= 28,800,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v7 exporter scanned all 100,000 `d` values and produced 8,441
factor-conditioned candidates. Exact greedy search found all 8,441 witnesses
within offsets 0..4,096: 8,204 at offsets 0..256 and 237 at offsets 257..4,096.
No candidate required the bounded 4,097..65,536 extension.

The independent verifier reconstructs candidate coverage with an Eratosthenes
sieve and checks every triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
also verifies the exact base stream and records zero extension misses.

Receipts and streams:

- `witness-stream-v7/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v7.json` records independent candidate-coverage and witness checks.
- `extension-offset-65536-v6.json` records the zero-miss bounded extension.
- `extension-verification-v6.json` records the successful extension replay.

The search was local CPU arithmetic only: no provider, model, search API, GPU,
or paid service. This finite factor-conditioned range does not prove the full
Erdős–Straus conjecture and makes no novelty claim.
