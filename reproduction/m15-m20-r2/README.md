# MathCase replay evidence package candidate (r2)

**Public reproduction bundle, released 2026-11-18.** This is the surviving 2026-11-17 refresh of the staged r2 package. The earlier 1,027-file inventory recorded in the 2026-11-14 handoff was overwritten; this released snapshot contains 1,036 files including its inventory.

## Recorded work

- The pinned M15-M20 shard replay compiled 229 of 229 Lean modules and reported 4,262 of 4,262 axiom queries. These are finite affine-descent statements.
- A later, separate M20 composition-v1 run compiled 133 intermediates plus the final theorem for 2,652 listed families. It used hash-matched cached M20 shard outputs, stayed under 2 GiB, and reported propext and Quot.sound without sorryAx. It is a composed candidate, not a fresh replay or M4 receipt.
- A pinned Lake fallback scaffold is now staged in project/ with Lean 4.33.1 and the recorded Mathlib commit. The plan-only checker can verify all 229 source/receipt bindings without Lean. The fresh Lake replay remains unexecuted, and its output hashes are not yet verified.
- An owner-local dependency preflight passed against an existing project with identical pins, while the staged candidate correctly fails preflight because it does not bundle the nine dependency checkouts or Mathlib cache. Neither preflight invoked Lean.
- The 4,096-case Collatz structure sample found one of three registered hypotheses in the finite sample and established no general rule.
- A public-safe partial exact-statement graph slice is staged at evidence/knowledge-graph/public-slice-v1/: 4,262 M15-M20 shard theorem records with source and receipt bindings, explicit per-shard M0/M4 limits, and owner-only rows excluded. It supports exact hash matches only, not semantic retrieval.
- Erdős-Straus v9 records finite witnesses through d=10,000,000; it established no new identity and did not solve the conjecture.

## Limits

This package does not prove global Collatz convergence, complete residue classification, novelty, independent public build, or M4. The prime-to-square-root-of-2 dossier is excluded under the owner source-use decision. The 11 locked benchmark payloads remain unopened; ErdosBench is not frozen. No model-based transfer experiment ran. External cost: $0.

The recorded Docker image is not anonymously pullable, and its original build context is incomplete. The new Lake fallback needs a public dependency/cache fetch and has not been run. See PUBLIC_REPRODUCTION.md and BUILD_CONTEXT_STATUS.md.

Read DOSSIER_STATUS.md, PUBLIC_REPRODUCTION.md, and BUILD_CONTEXT_STATUS.md. When importing captured evidence into a Git repository, merge the rules in GITATTRIBUTES_IMPORT.fragment into that repository's existing .gitattributes so Git preserves the original receipt bytes; do not replace existing attributes or hooks. The M20 attempt history and replay panel are under evidence/collatz/m15-m20-pinned-replay/.

## Local read-only preview and checks

From this directory with Python 3.11 or later:

    py -3 -B tools\verify_pinned_sources.py
    py -3 -B tools\verify_public_knowledge_graph_slice.py
    py -3 -B -m unittest discover -s tests -v
    node --check ui\collatz-pinned-replay.js
    py -3 -B tools\replay_pinned_shards_lake.py --plan-only
    py -3 -B tools\replay_pinned_shards_lake.py --project-dir PROJECT_PATH --preflight-only --output-dir PATH_OUTSIDE_PACKAGE
    py -3 -B tools\serve_pinned_collatz_replay.py --port 55137

Open http://127.0.0.1:55137/. The server binds to loopback, verifies the fixed manifest and inventoried file bytes, and refuses writes, path traversal, bad hashes, and cross-origin access. These checks do not run Lean.

The shard replay source commit is 0932323b5e8eeda37505bde3ca03c7ae669670af; its execution branch was not recorded. Separate M20 composition sources and receipts come from private commit c82c9685fe8294b47db8ba90c9a65d6e189553de. The public release preserves this historical staging record. A later two-phase source-to-kernel replay and its limitations are documented in ../m20-source-replay-2026-11-18/README.md. The public MathCase README links to this bundle and to the showcase branch.
