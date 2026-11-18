# Bounded `n = 1 mod 12` residual range 1000001..1100000

This disjoint tranche covers `1000001 <= d <= 1100000` and `n=12d+1`, within
`12,000,013 <= n <= 13,200,001`. It retains candidates for which neither `n`
nor `q=(n+3)/4` has a prime factor congruent to 2 modulo 3.

The frozen base search checked 100,000 `d` values. Its independently sieved
candidate stream contains 8,871 factor-conditioned residuals. Exact greedy
search through first-denominator offset 4,096 found 8,868 triples: 8,640
within offsets 0..256 and 228 more within offsets 257..4,096. The three
base misses were extended only across offsets 4,097..65,536; all three now
have strict exact triples, at offsets 5,714, 6,159, and 4,919. Thus every
candidate in this finite tranche has one recorded representation under the
specified search bounds.

The independent v4 verifier reconstructs the candidate set with an
Eratosthenes sieve and checks every exported witness by the integer identity
`4xyz = n(xy + xz + yz)` and strict denominator order. The extension receipt
reopened against the exact base manifest and all three explicit misses.

The original v3 exporter also refused this interval at its deliberate
`d <= 1,000,000` ceiling before creating an output directory; its captured
trace is preserved at `attempt-failures/legacy-v3-range-cap.stderr.log`. The
range was then given a versioned v4 pipeline with a raised overall domain cap
but the same 100,000-input per-run ceiling.

The first extension attempt used the existing v2 extender, which deliberately
refused the new v4 base-manifest schema before searching. That refusal is
preserved at `attempt-failures/extension-v2-refused-v4-manifest.json`. The first
v3 extension receipt resolved all three misses but bound the wrong checker
path; its bytes and metadata are retained under `attempt-failures/` as
superseded. A regression assertion now binds the v4 checker hash. The corrected
r2 receipt at `extension-offset-65536-v3-r2.json` reopens successfully. These
were pipeline compatibility/provenance issues, not mathematical failures.

Across the 11 disjoint ranges through `d=1,100,000`, the records contain
104,202 factor-conditioned residual candidates with exact representations.
This remains finite evidence only. It neither proves a general representation
rule nor solves the full Erdős–Straus conjecture. No network, model, provider,
GPU, or paid service was used.

Reproduce from the repository root into a new empty temporary directory:

```powershell
python scripts/export_egyptian_fraction_witness_stream_v4.py `
  --start-d 1000001 --end-d 1100000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-1000001-1100000

python scripts/verify_egyptian_fraction_witness_stream_v4.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-1000001-1100000 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-1000001-1100000\verification-receipt.json

python scripts/extend_egyptian_fraction_witness_stream_v3.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-1000001-1100000 `
  --max-total-offset 65536 `
  --output $env:TEMP\mathcase-egyptian-witness-stream-1000001-1100000\extension-receipt.json
```
