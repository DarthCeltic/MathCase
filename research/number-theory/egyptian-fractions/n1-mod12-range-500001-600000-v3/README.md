# Sixth bounded `n = 1 mod 12` residual range

This disjoint tranche covers `500001 <= d <= 600000` and `n=12d+1`, so the
full numeric interval is `6,000,013 <= n <= 7,200,001`. It retains candidates
for which neither `n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo
3.

The independently checked base stream contains 9,235 candidates and 9,232
exact triples: 8,983 at first-denominator offsets through 256 and 249 more at
offsets 257..4,096. Its three bounded misses are `n=6,115,729`, `6,355,441`,
and `6,854,761`.

A separate exact extension examined only those three misses at offsets
4,097..65,536 and found a strict triple for each, at offsets 4,327, 6,932,
and 5,685 respectively. The extension receipt stores each triple and its
exact integer-identity result. Both the base verification and extension
receipt replay passed; their receipts and streams are retained here.

Across the six disjoint ranges through `d=600000`, the saved records contain
59,088 factor-conditioned residual candidates with exact representations.
This is finite evidence only. It neither proves a general representation rule
nor solves the full Erdős–Straus conjecture.

The runner and checker bind their source hashes in the manifest. Each run is
capped at 100,000 `d` values and offset 4,096; the extension is capped at
65,536 and 16 explicit misses. No network, model, provider, or GPU was used.

Reproduce into new empty temporary directories from the repository root:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v3.py `
  --start-d 500001 --end-d 600000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-500001-600000

python scripts/verify_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-500001-600000

python scripts/extend_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-500001-600000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-500001-600000-extension.json
```
