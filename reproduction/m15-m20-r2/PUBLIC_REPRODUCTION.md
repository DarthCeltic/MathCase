# Public reproduction status

Status: INCOMPLETE FOR STRANGER REPRODUCTION. The export and read-only viewer pass local static checks. A two-phase owner-local source-to-kernel replay completed on 2026-11-18; its paired records are at ../m20-source-replay-2026-11-18/README.md. No stranger has yet replayed the proofs from a fresh public checkout.

## Local package checks

From the package root with Python 3.11 or later:

    py -3 -B tools\verify_pinned_sources.py
    py -3 -B tools\verify_public_knowledge_graph_slice.py
    py -3 -B -m unittest discover -s tests -v
    node --check ui\collatz-pinned-replay.js

The pinned-source verifier checks all 229 Lean sources against manifest.tsv. The graph-slice verifier checks 4,262 exact statement/source/receipt bindings, dependencies, axioms, M0/M4 labels, and the root package inventory. The local API suite exercises loopback test servers only. These checks do not run Lean.

For the read-only local viewer:

    py -3 -B tools\serve_pinned_collatz_replay.py --port 55137

Open http://127.0.0.1:55137/. The server binds to loopback, verifies the fixed manifest and inventoried file bytes, and refuses writes, path traversal, bad hashes, and cross-origin access.

## Staged Lean replay path

project/ provides pinned Lean and Lake metadata. Its Mathlib commit matches the recorded replay, but dependency sources and OLEAN cache files are not included. In a fresh checkout, an operator may materialize the public dependencies and Mathlib cache from inside project/:

    lake exe cache get

This requires network access and was not run while staging this candidate. Do not run lake update because it may change the lock. After all dependencies are present at the locked commits and the Lean toolchain is installed, from the package root:

    py -3 -B tools\replay_pinned_shards_lake.py --plan-only
    py -3 -B tools\replay_pinned_shards_lake.py --project-dir PROJECT_PATH --preflight-only --output-dir PATH_OUTSIDE_PACKAGE
    py -3 -B tools\replay_pinned_shards_lake.py --output-dir PATH_OUTSIDE_PACKAGE

The plan check validates the staged sources and receipts without Lean. The environment preflight is also Lean-free; it accepts another project only if all three Lake metadata files match the staged pins byte-for-byte, then checks the installed toolchain, nine dependency commits, and Mathlib OLEAN. This Lake-based fallback has not been run here. A separate sealed Docker source replay is documented at ../m20-source-replay-2026-11-18/README.md. The Lake runner writes results to a new directory outside the package, checks expected source and OLEAN hashes, and stops at the first failure.

An owner-local preflight passed against an existing project with matching pins: all nine dependency checkouts matched their manifest commits and the required Mathlib OLEAN was present. The candidate's own project directory has no dependency checkouts or Mathlib cache, so its replay preflight correctly stops before any Lean invocation. This local result does not establish clean-room reproduction.

The recorded Docker image digest is not anonymously pullable. The original Docker build context is incomplete, and the Lake fallback is a separate unexecuted path. Therefore a stranger has not yet reproduced the 229-shard replay from this package.

## M20 composition

The separate M20 composition-v1 run compiled 133 intermediate modules and a final theorem for 2,652 listed finite families, using cached, hash-matched M20 shard OLEANs. It did not replay the 229 shards. Its receipts and the three failed attempts remain in evidence/collatz/m15-m20-pinned-replay/. This is a finite candidate, not global Collatz convergence, complete residue coverage, novelty, or M4.

The exported M20 archive can be checked without Lean by running `python -B tools/verify_m20_composition_bundle.py`. This validates the exported inventory, source digests, receipt row bindings, the 133-module composition chain, and the 2,652 listed statements. It reports `ARCHIVE_BINDINGS_PASS_NOT_FRESH_REPLAY`: OLEAN bytes are absent, so it does not independently replay or validate the compiled proof objects.
