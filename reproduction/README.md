# MathCase public reproduction evidence

**Question an AI proof. Check it in Lean. Build on what holds.**

Four public evidence bundles cover the current flagship work:

- [M15–M20 package](m15-m20-r2/README.md) — the surviving r2 snapshot, including source, historical receipts, the exact-statement graph, and read-only replay tools. It contains 1,036 files including its regenerated inventory, SHA-256 `98271fc28d712e48714dc21e4a871e5cc112f492c2c13461a7e2e0328690c9ee`.
- [18 November source-to-kernel replay](m20-source-replay-2026-11-18/README.md) — two fresh source compilation phases, per-module hashes, axiom outputs, the first Docker watchdog failure, and the explicit historical OLEAN hash difference. Its inventory SHA-256 is `c0b111bc9518f3883e8747e0b8cd97e4340ffca7cd0d55b155629d25bf825bd7`.
- [Erdős–Straus campaign](../research/number-theory/egyptian-fractions/README.md) — 100 bounded ranges through `d = 10,000,000`, per-witness files, versioned scripts, and the aggregate audit. The public input inventory is [here](egyptian-fractions-v9/inventory.json).
- [R(5,5) Lean proof bundle](ramsey-r55-lean-v1/README.md) — a known 42-vertex witness, 29 Lean sources, 27 exact chunk receipts, a final composition receipt, and rebuild instructions. The recorded run used a warm cache; clean-checkout reproduction remains open.

The 1,027-file inventory stated in the 14 November handoff is not the inventory in the surviving directory. The staged package was refreshed on 17 November to add the unexecuted Lake fallback; the older payload snapshot was overwritten. This release labels the surviving contents and does not claim byte identity with the lost 1,027-file inventory.

The replay establishes a bounded statement about 2,652 listed arithmetic progressions: for each listed `n = 2^20 k + r`, the 32-step value equals its recorded affine expression `3^12 k + q` and is strictly smaller. It does not establish global Collatz convergence, novelty, or M4. A stranger has not yet reproduced the proof from a clean public checkout: the recorded Docker image requires authentication and the full image build context is incomplete.

The [TruffleHog history exception](../docs/security/trufflehog-history-exception-2026-11-20.md) records exactly two benign historical test-fixture findings, the current source correction, and the fail-closed monitor. No history rewrite or scanner weakening was performed.

The public MathCase [README](../README.md) links to the live Case Desk and the showcase branch. The companion human-facing research site is [darthceltic.github.io](https://darthceltic.github.io/).
