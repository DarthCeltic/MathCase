# Pinned Lake replay context

Status: PREPARED, NOT EXECUTED.

This project metadata pins Lean 4.33.1 and Mathlib v4.33.1. Its Mathlib commit is 0df444a360eaa60ab8c11dca51a86af692955474, matching the commit in the recorded M15-M20 replay manifest. All nine transitive package entries in lake-manifest.json are Git dependencies with commit IDs.

The metadata files were copied byte-for-byte from the tracked MathCase first-rung Lean project. They provide a pinned Lake context for a new replay attempt. They do not recreate the original Docker image, its operating-system packages, prebuilt dependency state, or image digest. They do not include Mathlib source, dependency checkouts, or compiled Mathlib oleans.

From this directory, an operator with network access may materialize the public, commit-pinned dependencies and Mathlib cache with:

    lake exe cache get

Do not run lake update: it may change the dependency lock. The staged replay worker does not download dependencies. Before compiling, it verifies that Lean is already installed and that all nine packages are present at the revisions in the manifest. It disables Git network protocols during Lean invocations.

From the package root, first run the no-Lean input check:

    py -3 -B tools/replay_pinned_shards_lake.py --plan-only

A full replay requires a fresh output directory outside the package root:

    py -3 -B tools/replay_pinned_shards_lake.py --output-dir PATH_OUTSIDE_PACKAGE

For a zero-Lean local environment check, an operator may supply another project directory only when its three metadata files are byte-identical to this project's pins:

    py -3 -B tools/replay_pinned_shards_lake.py --project-dir PROJECT_PATH --preflight-only --output-dir PATH_OUTSIDE_PACKAGE

The preflight checks installed Lean, all nine dependency commit IDs, and the required Mathlib OLEAN, then writes an attempt record with zero Lean invocations. The worker compiles the 229 source files one at a time, compares source and OLEAN hashes with the original receipts, caps each compile at 180 seconds and the whole run at 7,200 seconds, and stops at the first failure. It preserves outputs and failure records in the requested directory. No full Lean replay is claimed.

This runner covers only the 229 shard modules. M20 composition remains separate and would need its own replay from the newly produced shard OLEANs. The existing M20 composition evidence used cached shard outputs.
