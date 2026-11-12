# Complete witness stream for the third bounded residual tranche

This companion preserves the original range runner and receipt. It exports every factor-conditioned candidate and every search result for `200001 <= d <= 300000`, then checks candidate coverage with a separate prime sieve and checks every witness with exact integer arithmetic.

The target set is `n=12*d+1` where neither `n` nor `q=(n+3)/4` has a prime factor congruent to `2 modulo 3`. Each exported triple uses positive, strictly increasing denominators and satisfies

```text
4*x*y*z = n*(x*y + x*z + y*z).
```

This is a finite witness and candidate-coverage check for the stated interval. It does not prove that the greedy search would find no alternative beyond its bound for a missing row, establish the condition for all `n`, solve the full Erdos-Straus conjecture, or make a novelty claim.

Reproduce into a new empty directory:

```powershell
python scripts/export_egyptian_fraction_witness_stream.py `
  --start-d 200001 --end-d 300000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream

python scripts/verify_egyptian_fraction_witness_stream.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream `
  --output $env:TEMP\mathcase-egyptian-verification-receipt.json
```

The existing runner refuses to overwrite an output directory. Candidate, result, and witness JSONL files are independently hash-bound by `run-manifest.json`. The verifier does not import the range search or prime-factor classifier; it recomputes eligible candidates with a sieve and checks every listed triple with integer arithmetic. The verification receipt records the verifier source hash.

Focused tests:

```powershell
python -m unittest scripts.test_verify_egyptian_fraction_witness_stream -v
```
