# Reproducible second-range Egyptian-fraction witness stream

This companion exports the full factor-conditioned candidate list, bounded search results, and exact witness triples for `100001 <= d <= 200000`, with `n=12*d+1` and `q=(n+3)/4`.

The stream contains 10,068 candidate/result rows and 10,067 witness triples: 9,777 first found at offsets through 256 and 290 found through offset 4,096. The remaining `n=1609969` row is explicitly `NOT_FOUND_WITHIN_BOUND`; its separate exact extension receipt records a witness at offset 4,452 (`residual-1609969-offset-65536.json`, SHA-256 `962fe144cd9cc747e5c6ba248cbfff52d6e31d2afc185db665ef3211f7c77b86`). The stream verifier independently recomputes candidate coverage with an Eratosthenes sieve and checks every exported triple by integer identity. It does not verify the separate extension receipt as part of this stream.

This is bounded finite evidence only. It does not prove the Erdős-Straus conjecture, claim novelty, or establish any result outside this interval.

Reproduce into a new empty directory:

```powershell
python scripts/export_egyptian_fraction_witness_stream.py `
  --start-d 100001 --end-d 200000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-100001-200000

python scripts/verify_egyptian_fraction_witness_stream.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-100001-200000 `
  --output $env:TEMP\mathcase-egyptian-witness-verification-100001-200000.json
```

The run and verification manifests bind source and output hashes and record zero network, model, provider, or GPU use.
