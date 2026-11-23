# MathCase public reproduction evidence

**Question an AI proof. Check it in Lean. Build on what holds.**

Nine public evidence bundles and supplementary replay routes cover the current work:

- [M15–M20 package](m15-m20-r2/README.md) — the surviving r2 snapshot, including source, historical receipts, the exact-statement graph, and read-only replay tools. It contains 1,036 files including its regenerated inventory, SHA-256 `98271fc28d712e48714dc21e4a871e5cc112f492c2c13461a7e2e0328690c9ee`.
- [Twelve-of-twenty Collatz theorem](collatz-twelve-of-twenty-v1/README.md) — one table-free Lean theorem proves 32-step descent for every progression whose first 20 accelerated steps contain exactly 12 odd inputs; Lean also proves the exact 125,970-residue count.
- [Compact affine-family replay](collatz-affine-family-replay-v1/README.md) — an independent five-module Lean-core replay for all 2,652 published pairs and a prespecified 456-row sample.
- [Prime-to-√2 source replay](prime-sqrt2-source-replay-v1/README.md) — public pinned-source compile instructions for the parent and child theorem, with explicit candidate-only limits.
- [External Riemann source audit](riemann-source-audit-v1/README.md) — checks byte identity for four pinned upstream sources. It does not replay or validate the external proof.
- [18 November source-to-kernel replay](m20-source-replay-2026-11-18/README.md) — two fresh source compilation phases, per-module hashes, axiom outputs, the first Docker watchdog failure, and the explicit historical OLEAN hash difference. Its inventory SHA-256 is `c0b111bc9518f3883e8747e0b8cd97e4340ffca7cd0d55b155629d25bf825bd7`.
- [Original M20 public-source replay runner](m20-public-source-replay-v1/ORIGINAL_REPLAY.md) — rebuild instructions pinned to public MathCase, Mathlib, and Lean revisions. The included smoke receipt records one successful shard compile only; the full 363-module replay and 4,262 axiom queries have not completed.
- [Erdős–Straus campaign](../research/number-theory/egyptian-fractions/README.md) — 100 bounded ranges through `d = 10,000,000`, per-witness files, versioned scripts, and the aggregate audit. The public input inventory is [here](egyptian-fractions-v9/inventory.json).
- [R(5,5) Lean proof bundle](ramsey-r55-lean-v1/README.md) — a known 42-vertex witness, 29 Lean sources, 27 exact chunk receipts, a final composition receipt, and rebuild instructions. The recorded run used a warm cache; clean-checkout reproduction remains open.
- [R(6,6) Paley graph certificate](ramsey-r66-paley101-v1/README.md) — an independent bounded Python search checks the 101-vertex graph and its complement for six-cliques; this finite certificate check is not a Lean proof.

The 1,027-file inventory stated in the 14 November handoff is not the inventory in the surviving directory. The staged package was refreshed on 17 November to add the unexecuted Lake fallback; the older payload snapshot was overwritten. This release labels the surviving contents and does not claim byte identity with the lost 1,027-file inventory.

The original 363-module source-to-kernel replay bundle establishes a bounded statement about 2,652 listed arithmetic progressions: for each listed `n = 2^20 k + r`, the 32-step value equals its recorded affine expression `3^12 k + q` and is strictly smaller. It does not establish global Collatz convergence, novelty, or M4. The original 363-module Docker replay is not yet available as an anonymously pullable image. The compact Lean-core replay above is separately reproducible from a clean public checkout and does not substitute for that 363-module run.

The [TruffleHog history exception](../docs/security/trufflehog-history-exception-2026-11-20.md) records exactly two benign historical test-fixture findings, the current source correction, and the fail-closed monitor. No history rewrite or scanner weakening was performed.

The public MathCase [README](../README.md) links to the live Case Desk and the showcase branch. The companion human-facing research site is [darthceltic.github.io](https://darthceltic.github.io/).
