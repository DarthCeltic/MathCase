# Bounded `n = 1 mod 12` residual range 8900001..9000000

This v9 tranche covers `8900001 <= d <= 9000000` with `n=12d+1` and the
factor-conditioned requirement that neither `n` nor `q=(n+3)/4` has a prime
factor congruent to 2 modulo 3. It scanned 100,000 values of `d` and found
7,873 candidates. The base search produced 7,868
witnesses and 5 misses; the 4,097..65,536 extension found
5 more. All 5 base misses resolved through offset 65,536.

The independent v9 verifier reconstructs candidate coverage with a sieve and
checks exact witness identities. The v8 extension replay is bound to the exact
v9 base manifest, verifier receipt, and extension bytes. The largest selected
first-denominator offset in this range was 16,055 at
`n=107730529`. Offset-stage counts: {'offset_0_256': 7659, 'offset_257_4096': 209, 'offset_4097_65536': 5}.

Candidate residue counts modulo 24 are {'1': 7873}; the known
`n=5 mod 8` family already covers the `n=13 mod 24` portion. The other
`n=1 mod 24` data remain finite witnesses, not a new family proof.

Receipts, streams, and per-range analysis are in this directory. This is finite
factor-conditioned evidence only; the full Erdős-Straus conjecture remains
unsolved. No provider, model, search API, or GPU was used.
