# Public-source Lake replay

Date: 2026-11-24

From the fresh standalone package directory, Lake fetched the pinned Mathlib sources, decompressed 8,689 cached Mathlib files with no cache misses, and built the package with one job. The build completed successfully with exit 0 and reported 1,171 jobs. The three MathCase proof modules were compiled from the packaged source; the package had no prior MathCase OLEAN files.

The separate Audit.lean check exited 0 and printed [propext, Classical.choice, Quot.sound]. It reported no sorryAx. The exact output bytes and OLEAN hashes are in lake-replay-receipt.json.

This was a new package build inside the existing public MathCase checkout, not a clone of the whole repository. It used public GitHub source and Mathlib cache access. No model/provider/search API was called and no paid spend occurred. The host build had no enforced memory limit; the largest sampled Lean process working set was about 3.56 GiB, a periodic sample rather than a peak.

After package metadata was normalized to LF, lake build -Kjobs=1 MathCase was run again and exited 0 (1,171 jobs); the final Audit.lean output hash was unchanged.

After that successful source replay, a packaging line-ending script accidentally changed files in the ignored generated dependency cache. One subsequent incremental Lake command exited 3221225477 (0xC0000005) before producing a theorem verdict; the proof source hashes were unchanged. This failure is preserved in package-cache-normalization-failure.json. The damaged generated Qq clone was replaced at its locked revision, then a bounded one-job incremental build and axiom audit passed. That recovery run reused the already-built theorem modules, so it is not described as another full source replay.

## Lock-provenance qualification (2026-11-24)

The saved historical `lake-replay-receipt.json` records lock SHA-256
`2a66a99e178e711c07f724bd787aa4cead8b2ae674296b5987cf0906ff3d99e9`; the
checked-in manifest is
`958b34400c85f0e6e9e1a3ec9c2c67e3df25fcfed9195c53d50302af588f3c0f`. That
historical mismatch is preserved. The later current-lock replay is bound by
`verification/current-lock-replay-r2-pass.json` and its manifest; it is the
receipt used for the present PASS claim.
