# Bounded `n = 1 mod 12` residual range 600001..700000

This disjoint tranche covers `600001 <= d <= 700000` and `n=12d+1`, within
`7,200,013 <= n <= 8,400,001`. It retains candidates for which neither `n` nor
`q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The independently checked base stream contains 9,168 candidates
and 9,168 exact triples: 8,928 at
first-denominator offsets through 256 and 240 more at
offsets 257..4,096. The base stream had no misses to extend.

The extension receipt replay confirms there were zero base misses to extend.

Across the 7 disjoint ranges through `d=700,000`, the saved records contain
68,256 factor-conditioned residual candidates with exact representations.
This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture.

The runner and checker bind source hashes in the manifest. Each run is capped
at 100,000 `d` values and offset 4,096; the extension is capped at 65,536 and
16 explicit misses. No network, model, provider, or GPU was used.

Reproduce from the repository root into new empty temporary directories:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v3.py `
  --start-d 600001 --end-d 700000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-600001-700000

python scripts/verify_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-600001-700000

python scripts/extend_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-600001-700000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-600001-700000-extension.json
```
