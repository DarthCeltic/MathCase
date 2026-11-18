# Bounded `n = 1 mod 12` residual range 900001..1000000

This disjoint tranche covers `900001 <= d <= 1000000` and `n=12d+1`, within
`10,800,013 <= n <= 12,000,001`. It retains candidates for which neither `n` nor
`q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The independently checked base stream contains 9,044 candidates
and 9,043 exact triples: 8,797 at
first-denominator offsets through 256 and 246 more at
offsets 257..4,096. The 1 base-search misses were `n=11,015,761`.

A separate exact extension searched those misses at offsets 4,097..65,536 and found a strict triple for each, at offsets 7,467. The receipt stores each triple and exact integer-identity result; replay passed.

Across the 10 disjoint ranges through `d=1,000,000`, the saved records contain
95,331 factor-conditioned residual candidates with exact representations.
This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture.

The runner and checker bind source hashes in the manifest. Each run is capped
at 100,000 `d` values and offset 4,096; the extension is capped at 65,536 and
16 explicit misses. No network, model, provider, or GPU was used.

Reproduce from the repository root into new empty temporary directories:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v3.py `
  --start-d 900001 --end-d 1000000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-900001-1000000

python scripts/verify_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-900001-1000000

python scripts/extend_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-900001-1000000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-900001-1000000-extension.json
```
