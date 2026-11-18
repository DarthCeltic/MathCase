# Bounded `n = 1 mod 12` residual range 2700001..2800000

This disjoint tranche covers `2700001 <= d <= 2800000`, with `n=12d+1`, or
`32,400,013 <= n <= 33,600,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v7 exporter scanned all 100,000 `d` values and produced 8,462
factor-conditioned candidates. Exact greedy search found 8,215 witnesses at
offsets 0..256 and 244 more at offsets 257..4,096. Three candidates remained
after the base search; the bounded extension found all three within offsets
4,097..65,536. Every candidate therefore has an exact representation under the
combined search caps.

The independent verifier reconstructs candidate coverage with an Eratosthenes
sieve and checks every triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
reopens the exact base misses and verifies each extension identity.

Receipts and streams:

- `witness-stream-v7/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v7.json` records independent candidate-coverage and witness checks.
- `extension-offset-65536-v6.json` records the three bounded extension witnesses.
- `extension-verification-v6.json` records the successful extension replay.

The search was local CPU arithmetic only: no provider, model, search API, GPU,
or paid service. This finite factor-conditioned range does not prove the full
Erdős–Straus conjecture and makes no novelty claim.
