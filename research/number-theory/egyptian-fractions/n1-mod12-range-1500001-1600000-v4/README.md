# Bounded `n = 1 mod 12` residual range 1500001..1600000

This disjoint tranche covers `1500001 <= d <= 1600000` and `n=12d+1`, within
`18,000,013 <= n <= 19,200,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The exact bounded search scanned 100,000 `d` values and independently
verified 8,704 factor-conditioned candidates. It found
8,704 triples through offset 4,096: 8,455 at
offsets 0..256 and 249 more at offsets 257..4,096.
The base stream had 0 misses. The extension searched
only those misses through offset 65,536 and found 0;
0 remain inside the combined cap.
The independent v4 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every exported triple by exact integer identity
`4xyz = n(xy + xz + yz)` and strict denominator order. The extension receipt
reopens against the base manifest and explicit misses.

This is finite evidence only. It does not solve the full Erdős–Straus
conjecture. No network, model, provider, GPU, or paid service was used.
