## Fresh public-source replay · 2026-11-26

The published generator and checker were rerun from the exact source blobs in public MathCase commit `5d1dac84b257802c1c3efc01bdb4f8e29cc9df00`. Before execution, all five package files listed in the receipt were compared byte-for-byte with their Git blobs at that commit.

On Python 3.14.7, all three positive commands exited 0: the published checker, the generator, and the checker applied to the regenerated table. The regenerated CSV was byte-for-byte identical to `witnesses.csv` (SHA-256 `b03a1334b709bc74d55b1dfd4ced0941c01428e1b00c376ed8d8c420a00cc9a2`). The checker verified all 143 listed primes and found the largest optimal ratio `z/p = 1032`, attained only at `p = 9601` with `(x,y,z) = (2408,806484,9908232)`.

A negative control used a different valid identity at `p = 9601`, `(2415,403242,15457610)`. The checker exited 1 with `witness for 9601 is not optimal`, finding the recorded minimum instead. The control file is included here so the rejection can be replayed.

This is a fresh operator-run replay of public source on a Windows host. It is an exact finite computation over primes `p ≤ 10000` with `p ≡ 1 (mod 24)`. It does not prove a bound for all such primes, solve the Erdős–Straus conjecture, or count as an independent stranger review. The first local run's receipt assembly failed after the commands; no result was attributed to that run. The corrected receipt harness reran the full positive and negative sequence and captured the results below.

Reproduce from the package directory:

```powershell
python -B verify.py
python -B search.py replay-generated.csv
python -B verify.py replay-generated.csv
python -B verify.py runs/2026-11-26-public-source-r1/control-nonminimal.csv
```

The first three commands should exit 0. The last should exit 1 and report the valid-but-nonminimal triple. The machine-readable, path-free receipt is `receipt.json`.