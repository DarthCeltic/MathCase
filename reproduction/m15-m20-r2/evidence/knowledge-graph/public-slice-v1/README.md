# Public partial knowledge-graph slice: M15–M20

This published MathCase package contains a partial exact-statement index for the M15–M20 shard replay: 4,262 theorem records. Each exact statement, source digest, dependency list, axiom report, and receipt row is checked against source bytes and receipts in the package. The index supports exact statement-hash matches only. It does not perform semantic retrieval or infer theorem reuse.

## What a row means

A row records the formal statement, its SHA-256, source imports and module-local declarations referenced by the statement block, the recorded axioms and `sorryAx` result, the pinned source path and digest, and the exact per-shard receipt line and digest. Dependency scope is intentionally limited: imported constant closure is not normalized from Lean environment metadata.

Every included row says `m0_status: NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT` and `m4_status: NOT_PROMOTED_PER_SHARD_REPLAY_ONLY`. For M20 rows, the separate aggregate M0 review does not review each shard theorem individually. `novelty_status` remains unassessed. The shard replay is finite affine descent evidence; it does not prove global Collatz convergence or complete residue classification.

The slice excludes 29 owner-local or out-of-package records and three historical aggregate records. It does not include the owner graph, personal paths, locked benchmark content, or √2 material. The root `PACKAGE_INVENTORY.json` binds these files and all included source and receipt bytes. `manifest.sha256` binds this slice manifest; `records.sha256` binds the human-inspectable JSONL record set.

## Verify

From the M15–M20 package root, run `py -3 tools\verify_public_knowledge_graph_slice.py`. This verifies the graph files against the pinned source and receipt bytes; it does not run Lean. The separate [original M20 public-source replay instructions](../../../../m20-public-source-replay-v1/ORIGINAL_REPLAY.md) describe that replay path and its limits.

This graph slice is part of the public MathCase repository. Its verifier checks the graph files against the bundled source and receipt bytes; it does not invoke Lean or independently replay the theorem proofs. Read the linked replay records for the exact build status and limitations. These 4,262 records are a partial exact-match index, not a complete MathCase knowledge graph, semantic search system, or proof-reuse engine. No M4 gate is changed.
