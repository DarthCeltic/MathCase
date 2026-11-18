# Bounded `n = 1 mod 12` residual range 1700001..1800000

This disjoint tranche covers `1700001 <= d <= 1800000` and `n=12d+1`, within
`20,400,013 <= n <= 21,600,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The frozen run scanned 100,000 `d` values and independently verified
8,617 factor-conditioned candidates. Exact greedy search found
8,613 triples through offset 4,096: 8,397 at
offsets 0..256 and 216 at offsets 257..4,096. It left
4 base misses. The bounded extension searched only
those misses through offset 65,536, found 4, and leaves
0 within the combined caps.
Extension offsets: 4767, 13815, 5708, 5333.

The independent v4 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every triple by exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator order. The extension receipt
reopens against the exact base manifest and explicit misses.

This is finite evidence only and does not solve the full Erdős–Straus
conjecture. No network, model, provider, GPU, or paid service was used.
