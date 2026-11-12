# Bounded `n = 1 mod 12` residual range 800001..900000

This disjoint tranche covers `800001 <= d <= 900000` and `n=12d+1`, within
`9,600,013 <= n <= 10,800,001`. It retains candidates for which neither `n` nor
`q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The independently checked base stream contains 8,976 candidates
and 8,972 exact triples: 8,726 at
first-denominator offsets through 256 and 246 more at
offsets 257..4,096. The 4 base-search misses were `n=10,042,561`, `n=10,349,089`, `n=10,356,481`, `n=10,617,601`.

A separate exact extension searched those misses at offsets 4,097..65,536 and found a strict triple for each, at offsets 5,545, 12,063, 4,574, 4,359. The receipt stores each triple and exact integer-identity result; replay passed.

Across the 9 disjoint ranges through `d=900,000`, the saved records contain
86,287 factor-conditioned residual candidates with exact representations.
This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture.

The runner and checker bind source hashes in the manifest. Each run is capped
at 100,000 `d` values and offset 4,096; the extension is capped at 65,536 and
16 explicit misses. No network, model, provider, or GPU was used.

Reproduce from the repository root into new empty temporary directories:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v3.py `
  --start-d 800001 --end-d 900000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-800001-900000

python scripts/verify_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-800001-900000

python scripts/extend_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-800001-900000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-800001-900000-extension.json
```
