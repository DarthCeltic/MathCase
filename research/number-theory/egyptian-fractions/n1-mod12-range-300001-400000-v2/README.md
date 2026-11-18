# Fourth bounded `n = 1 mod 12` residual range

This disjoint tranche covers `300001 <= d <= 400000` and `n=12d+1`, or
`3,600,013 <= n <= 4,800,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The independent sieve and integer-identity checker verified 9,541 candidates
and 9,536 exact triples in the base stream: 9,294 at offsets through 256 and
242 at offsets 257..4,096. The five base-stream misses are `n=3,846,769`,
`4,068,289`, `4,403,569`, `4,592,449`, and `4,597,609`.

A separately bounded exact extension searched offsets 4,097..65,536 for only
those five misses and found strict triples for all five, at offsets 5,004,
4,391, 4,146, 4,821, and 9,062 respectively. Its receipt is
[`extension-offset-65536.json`](extension-offset-65536.json) (SHA-256 `723f649a5f51e99839cdff2c53ac90ecb26822c64752193c03a3a19d9f5b5d98`).
Thus every one of the 9,541 candidates has an exact witness within the two
recorded bounds; neither bounded search is a proof of a general result.

The per-candidate record, base triples, run manifest, and verification receipt
are under [`witness-stream-v2/`](witness-stream-v2/). The manifest binds the
versioned 400,000-cap runner and checker. Each run still covers at most
100,000 `d` values; the older 300,000-cap receipts and source files are
unchanged.

This is finite local CPU evidence only. It does not prove the full
Erdos-Straus conjecture or claim novelty. No network, model, provider, or GPU
was used.

Reproduce from the repository root into a new empty directory:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v2.py `
  --start-d 300001 --end-d 400000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-300001-400000

python scripts/verify_egyptian_fraction_witness_stream_v2.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-300001-400000
```
