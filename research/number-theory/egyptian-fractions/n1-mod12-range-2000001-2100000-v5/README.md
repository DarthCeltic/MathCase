# Bounded `n = 1 mod 12` residual range 2000001..2100000

This disjoint tranche covers `2000001 <= d <= 2100000`, with `n=12d+1`, or
`24,000,013 <= n <= 25,200,001`. Candidates are retained only when neither
`n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The local v5 exporter scanned all 100,000 `d` values and produced 8,555
factor-conditioned candidates. Exact greedy search found 8,313 representations
at first-denominator offsets 0..256 and 241 more at offsets 257..4,096. One
candidate remained after the base search. The bounded extension found its
representation at offset 5,417, so all 8,555 candidates have a witness within
the combined offset cap of 65,536.

The independent verifier reconstructs candidate coverage with an Eratosthenes
sieve and checks every base triple using exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator ordering. The extension replay
reopens the exact base misses and verifies the extension receipt. The resolved
candidate is `n=24,990,001`, with denominators
`6,252,918`, `7,210,577,596`, and `112,695,332,525,842,607,436`.

Receipts and streams:

- `witness-stream-v5/run-manifest.json` binds the exact source files and three output streams.
- `verification-receipt-v5.json` records the independent candidate-coverage and witness checks.
- `extension-offset-65536-v4.json` records the one bounded extension witness.
- `extension-verification-v4.json` records the successful extension replay.

The search was local CPU arithmetic only: no provider, model, search API, GPU,
or paid service. This finite factor-conditioned range does not prove the full
Erdős–Straus conjecture and makes no novelty claim.
