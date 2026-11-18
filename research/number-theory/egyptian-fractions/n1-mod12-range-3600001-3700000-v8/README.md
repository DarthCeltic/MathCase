# Bounded `n = 1 mod 12` residual range 3600001..3700000

This disjoint tranche covers `3600001 <= d <= 3700000`, with `n=12d+1`, or
`43,200,013 <= n <= 44,400,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v8 exporter scanned all 100,000 `d` values and produced 8,300
factor-conditioned candidates. Exact greedy search found 8,088
witnesses at offsets 0..256 and 207 more at
offsets 257..4,096. 5 candidates remained after the base search; the
bounded extension found 5 within offsets 4,097..65,536. All 5 base misses resolved through offset 65,536.

The independent v8 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every base triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
reopens the exact base misses and checks each extension identity.

Receipts and streams:

- `witness-stream-v8/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v8.json` records independent candidate-coverage and witness checks.
- `extension-offset-65536-v7.json` records the bounded extension witnesses.
- `extension-verification-v7.json` records the successful extension replay.

Across 37 disjoint ranges through `d=3,700,000`, the campaign records
325,668 exact representations in this factor-conditioned
subset. This remains finite evidence only: it does not prove the full
Erdos-Straus conjecture and makes no novelty claim. Math computation used the
local CPU only; no model, provider, search API, or GPU was used.
