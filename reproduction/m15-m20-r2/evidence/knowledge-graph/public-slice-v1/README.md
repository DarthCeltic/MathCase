# Public safe partial knowledge graph slice (staged candidate)

This is a partial exact-statement index for the M15-M20 shard replay. It contains 4,262 theorem records. Each exact statement, source digest, dependency list, axiom report, and receipt row was checked against source bytes and receipts bundled in this candidate. The graph index supports exact statement-hash matches only; it does not perform semantic retrieval or infer theorem reuse.

## What a row means

A row records the formal statement, its SHA-256, source imports and module-local declarations referenced by the statement block, the recorded axioms and `sorryAx` result, the pinned source path and digest, and the exact per-shard receipt line and digest. Dependency scope is intentionally limited: imported constant closure is not normalized from Lean environment metadata.

Every included row says `m0_status: NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT` and `m4_status: NOT_PROMOTED_PER_SHARD_REPLAY_ONLY`. For M20 rows, the separate aggregate M0 review does not review each shard theorem individually. `novelty_status` remains unassessed. The shard replay is finite affine descent evidence; it does not prove global Collatz convergence or complete residue classification.

The slice excludes 29 owner-local or out-of-package records and three historical aggregate records. It does not include the owner graph, personal paths, locked benchmark content, or √2 material. The root `PACKAGE_INVENTORY.json` binds these files and all included source and receipt bytes. `manifest.sha256` binds this slice manifest; `records.sha256` binds the human-inspectable JSONL record set.

## Verify

From the candidate package root, run `py -3 tools\verify_public_knowledge_graph_slice.py`. The application’s exact-match graph loader can be smoke-tested with the staged slice directory and the SHA-256 of this slice’s `manifest.json`.

This candidate has not been merged or published. The public Lean image and clean-room build context remain unavailable, so these records do not establish independent reproduction. No M4 gate is changed.
