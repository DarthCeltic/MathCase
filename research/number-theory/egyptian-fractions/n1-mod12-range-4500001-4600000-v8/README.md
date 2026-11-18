# Bounded `n = 1 mod 12` residual range 4500001..4600000

This disjoint tranche covers `4500001 <= d <= 4600000`, with `n=12d+1`, or
`54,000,013 <= n <= 55,200,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v8 exporter scanned all 100,000 `d` values and produced 8,235
factor-conditioned candidates. Exact greedy search found 8,010
witnesses at offsets 0..256 and 219 more at
offsets 257..4,096. 6 candidates remained after the base search; the
bounded extension found 6 within offsets 4,097..65,536. All 6 base misses resolved through offset 65,536.

The independent v8 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every base triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
reopens the exact base misses and checks each extension identity.

Receipts and streams:

- `witness-stream-v8/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v8.json` records independent candidate-coverage and witness checks.
- `extension-offset-65536-v7.json` records the bounded extension witnesses.
- `extension-verification-v7.json` records the successful extension replay.

Across 46 disjoint ranges through `d=4,600,000`, the campaign records
399,915 exact representations in this factor-conditioned
subset. This remains finite evidence only: it does not prove the full
Erdos-Straus conjecture and makes no novelty claim. Math computation used the
local CPU only; no model, provider, search API, or GPU was used.
