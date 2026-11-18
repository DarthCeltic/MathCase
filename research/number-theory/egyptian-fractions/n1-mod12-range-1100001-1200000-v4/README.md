# Bounded `n = 1 mod 12` residual range 1100001..1200000

This disjoint tranche covers `1100001 <= d <= 1200000` and `n=12d+1`, within
`13,200,013 <= n <= 14,400,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The frozen base search scanned 100,000 `d` values and independently verified
8,896 factor-conditioned candidates. It found
8,894 triples through first-denominator offset 4,096:
8,641 at offsets 0..256 and
253 at offsets 257..4,096. The base search
left 2 explicit misses. The separately
bounded extension searched only those misses through offset 65,536 and found
2 more; no miss remains inside the combined bounds.
Extension offsets: 6427, 12657.

The independent v4 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every exported triple by the exact integer
identity `4xyz = n(xy + xz + yz)` and strict denominator ordering. The
extension receipt reopens against this tranche's base manifest and explicit
miss set.

This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture. No network, model, provider, GPU,
or paid service was used.
