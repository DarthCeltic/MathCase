# Bounded `n = 1 mod 12` residual range 1900001..2000000

This disjoint tranche covers `1900001 <= d <= 2000000` and `n=12d+1`, within
`22,800,013 <= n <= 24,000,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The frozen run scanned 100,000 `d` values and independently verified
8,562 factor-conditioned candidates. Exact greedy search found
8,559 triples through offset 4,096: 8,356 at
offsets 0..256 and 203 at offsets 257..4,096. It left
3 base misses. The bounded extension searched only
those misses through offset 65,536, found 3, and leaves
0 within the combined caps.
Extension offsets: 8637, 5135, 4925.

The independent v4 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every triple by exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator order. The extension receipt
reopens against the exact base manifest and explicit misses.

This is finite evidence only and does not solve the full Erdős–Straus
conjecture. No network, model, provider, GPU, or paid service was used.
