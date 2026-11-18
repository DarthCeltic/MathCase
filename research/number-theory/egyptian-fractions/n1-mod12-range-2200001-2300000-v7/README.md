# Bounded `n = 1 mod 12` residual range 2200001..2300000

This disjoint tranche covers `2200001 <= d <= 2300000`, with `n=12d+1`, or
`26,400,013 <= n <= 27,600,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v7 exporter scanned all 100,000 `d` values and produced 8,534
factor-conditioned candidates. Exact greedy search found 8,295 representations
at first-denominator offsets 0..256 and 232 more at offsets 257..4,096. Seven
candidates remained after the base search. The bounded extension found all
seven at offsets 4,187, 4,221, 4,483, 4,515, 4,827, 5,057, and 5,091. Thus
every candidate has a saved exact representation within the combined offset
cap of 65,536.

The independent verifier reconstructs candidate coverage with an Eratosthenes
sieve and checks every base triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
reopens the exact base misses and verifies each extension identity.

Receipts and streams:

- `witness-stream-v7/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v7.json` records independent candidate-coverage and witness checks.
- `extension-offset-65536-v6.json` records the seven bounded extension witnesses.
- `extension-verification-v6.json` records the successful extension replay.

The search was local CPU arithmetic only: no provider, model, search API, GPU,
or paid service. This finite factor-conditioned range does not prove the full
Erdős–Straus conjecture and makes no novelty claim.
