# Bounded `n = 1 mod 12` residual range 1300001..1400000

This disjoint tranche covers `1300001 <= d <= 1400000` and `n=12d+1`, within
`15,600,013 <= n <= 16,800,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The frozen base search scanned 100,000 `d` values and independently verified
8,786 factor-conditioned candidates. It found
8,785 triples through first-denominator offset 4,096:
8,546 at offsets 0..256 and
239 at offsets 257..4,096. The base search
left 1 explicit misses. The separately
bounded extension searched only those misses through offset 65,536 and found
1 more; no miss remains inside the combined bounds.
Extension offsets: 35498.

The independent v4 verifier reconstructs candidate coverage with an
Eratosthenes sieve and checks every exported triple by the exact integer
identity `4xyz = n(xy + xz + yz)` and strict denominator ordering. The
extension receipt reopens against this tranche's base manifest and explicit
miss set.

This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture. No network, model, provider, GPU,
or paid service was used.
