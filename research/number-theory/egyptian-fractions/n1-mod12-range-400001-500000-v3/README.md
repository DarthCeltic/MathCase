# Fifth bounded `n = 1 mod 12` residual range

This disjoint tranche covers `400001 <= d <= 500000` and `n=12d+1`, so the
full numeric interval is `4,800,013 <= n <= 6,000,001`. It retains candidates
for which neither `n` nor `q=(n+3)/4` has a prime factor congruent to 2 modulo
3.

The independently checked base stream contains 9,351 candidates and 9,346
exact triples: 9,116 at first-denominator offsets through 256 and 230 more at
offsets 257..4,096. Its five bounded misses are `n=5,260,369`, `5,309,329`,
`5,468,929`, `5,650,129`, and `5,678,689`.

A separate exact extension examined only those five misses at offsets
4,097..65,536 and found a strict triple for each, at offsets 6,395, 17,277,
5,031, 5,247, and 4,173 respectively. The extension receipt stores each
triple and its exact integer-identity result. Both the base verification and
the extension receipt replay passed; their receipts and streams are retained
in this directory.

Together, the five disjoint ranges through `d=500000` contain 49,853
factor-conditioned residual candidates, each with an exact representation in
these bounded records. This is finite evidence only. It neither proves a
general representation rule nor solves the full Erdős–Straus conjecture.

The runner and checker bind their source hashes in the manifest. Each run is
capped at 100,000 `d` values and offset 4,096; the extension is capped at
65,536 and 16 explicit misses. No network, model, provider, or GPU was used.

Reproduce into new empty temporary directories from the repository root:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v3.py `
  --start-d 400001 --end-d 500000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-400001-500000

python scripts/verify_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-400001-500000

python scripts/extend_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-400001-500000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-400001-500000-extension.json
```
