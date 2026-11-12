# First bounded n = 1 (mod 12) residual witness stream

This exact-byte bundle covers `1 <= d <= 100000`, with `n=12d+1` and
`q=(n+3)/4`, retaining candidates for which neither `n` nor `q` has a prime
factor congruent to 2 modulo 3.

The independent verifier checked all 11,156 candidates by an Eratosthenes
sieve and verified every exported triple by integer identity. It accepted
11,155 exact witnesses: 10,850 at first-denominator offsets through 256 and
305 through offset 4,096. `n=193` is explicitly `NOT_FOUND_WITHIN_BOUND` in
this stream. Its separate exact enumeration receipt at
`../n1-mod12-residual-search-v1/exact-n193-resolution.json` records six valid
triples, so this bounded-search miss is not a counterexample.

This is finite computational evidence only. It does not prove the full
Erdos-Straus conjecture or claim novelty. The run and verification used local
CPU computation only: no network, model, provider, or GPU.

Reproduce into a new empty directory from the repository root:

```powershell
python scripts/export_egyptian_fraction_witness_stream.py `
  --start-d 1 --end-d 100000 --max-total-offset 4096 `
  --output-dir $env:TEMP\mathcase-egyptian-witness-stream-1-100000

python scripts/verify_egyptian_fraction_witness_stream.py `
  --bundle $env:TEMP\mathcase-egyptian-witness-stream-1-100000
```

The run manifest binds all source and stream hashes; the verification receipt
binds the candidate, results, and witness streams and records the independent
coverage and identity checks.
