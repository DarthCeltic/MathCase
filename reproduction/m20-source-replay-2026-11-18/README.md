# M20 source-to-kernel replay — 18 November 2026

## What was checked

The pinned Lean 4.33.1 / Mathlib v4.33.1 source package was compiled twice in the sealed Docker image. Each phase started without any MathCase OLEAN output in the workspace, compiled the 229 shard inputs and 134 composition modules from source, and ran 23 axiom groups over 4,262 theorem queries. The final theorem is the conjunction for 2,652 listed progressions: after 32 standard Collatz steps the value equals its recorded affine expression and is strictly smaller than its starting value.

This is bounded first descent for those listed progressions. It is not global Collatz convergence, complete residue coverage, a novelty claim, or an M4 dossier result.

## Results and failure record

- Phase 1: all 363 per-module Lean exit codes are 0; all 23 axiom groups exit 0; sorryAx count 0. Its run-status says COMPLETED, but the outer Docker driver exit code is 124 (watchdog timeout). Keep that as a failure of the outer run wrapper.
- Phase 2: the same 363 module exit codes and 23 axiom groups pass; the outer Docker exit code is 0.
- Cross-run comparison: all 363 module rows agree on source SHA-256, fresh OLEAN SHA-256, stdout SHA-256, stderr SHA-256, and exit code. All 23 axiom groups agree on source and output hashes, exit code, and sorryAx count. The final axiom report is [propext, Quot.sound].
- The new OLEAN hashes match between the two fresh phases. They differ from all 363 historical OLEAN hashes recorded by the older replay; the table exposes both values and does not claim historical OLEAN byte reproduction.
- Both phases used 1 CPU, 2 GiB memory, network disabled, and no MathCase OLEAN reuse. The image digest and per-module timings are retained in the copied run records and output manifests.

## Candidate source provenance

The theorem source SHA-256 is 8e8fb280df93829c988a360b01276def73e7e5cbd8c9ce8eca70987d5733d3e5. The phase-2 receipt binds Candidate A. Candidate B was independently rehashed to the same value, but the provenance addendum explicitly says Candidate B was not consumed by the phase-2 binding. Do not describe Candidate B as the compiled input.

## Files in this folder

- phase-summary.tsv: phase-level run and receipt hashes.
- cross-replay-check.tsv: all 363 module-by-module source and output comparisons, including historical OLEAN hashes.
- axiom-cross-check.tsv: all 23 axiom group comparisons.
- phase-1/ and phase-2/: exact public-safe compile/axiom records, text outputs, run status, output manifests, and outer Docker exit-code bytes.
- candidate-source-check.json: exact source provenance addendum; it contains no workstation path.
- PUBLIC_REPLAY_INVENTORY.json: SHA-256 and byte-size inventory of the public evidence files (excluding itself).

The full raw private receipts and input bindings are not copied because they contain workstation-local paths. Their original receipt SHA-256 values are recorded in phase-summary.tsv; the TSVs and hash manifests are derived public evidence, not replacements for the private originals.

For a source path beginning inputs/sources/repository/, remove the inputs/ prefix and find the file in ../m15-m20-r2/. For a path beginning inputs/evidence/, remove inputs/ and find the file in ../m15-m20-r2/. The public package verifier binds the underlying source hashes.
