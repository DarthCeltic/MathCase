# A Lean-checked witness for R(6,6) ≥ 102

Lean checked a concrete graph on 101 vertices with no six mutually connected vertices and no six mutually disconnected vertices. This reproduces the known lower bound R(6,6) ≥ 102; it is not a new bound and it does not determine the exact Ramsey number.

The exact statement is:

    ∃ G : SimpleGraph (Fin 101), G.CliqueFree 6 ∧ (Gᶜ).CliqueFree 6

In plain words, there is a simple graph on 101 labeled vertices with no clique of size six and no independent set of size six. The statement received M0 YES against packet SHA-256 6e1382f9ad7123aad2c25f4d10e4de7cf168a296029db6144c96b64a2044fae2. M0 records statement fidelity only. This remains candidate evidence: no M4 promotion, signature, or independent mathematical review is claimed.

## What ran

A fresh source-to-kernel run compiled the three listed MathCase modules from source, with no reuse of MathCase OLEAN files, under Lean 4.33.1 and Mathlib commit 0df444a360eaa60ab8c11dca51a86af692955474. The container had networking disabled, one CPU, a 6 GiB memory limit, and 420-second per-module limits. All modules exited 0. The final theorem reports axioms [propext, Classical.choice, Quot.sound]; no sorryAx was reported. The exact source, output OLEAN, and environment hashes are in source-replay-receipt.json.

The pinned local container image used for that receipt is identified by tag and image hash there; its anonymous public pull was not verified. A separate Lake project is provided below so readers can rebuild from the public Lean and Mathlib sources. That route also passed from a fresh standalone package directory in the current public MathCase checkout: a one-job Lake build exited 0, followed by an axiom audit matching the pinned-container result. It used the public Mathlib cache; it was not a whole-repository anonymous clone. See lake-replay-receipt.json and verification/lake-build-summary.md. A later cache-normalization failure and its incremental recovery are also preserved in verification/package-cache-normalization-failure.json; they do not replace the earlier full source replay.

## Rebuild from the public sources

Requirements: Lean and Lake 4.33.1, Python 3, and network access for the first download of the pinned public Mathlib dependencies and their build cache. From this directory, fetch dependencies and the Mathlib cache:

    lake update
    lake exe cache get

Then build the MathCase library and print the axiom audit:

    lake build -Kjobs=1 MathCase
    lake env lean Audit.lean

The lakefile pins Mathlib v4.33.1, and lake-manifest.json binds it to commit 0df444a360eaa60ab8c11dca51a86af692955474. This public-source route may require several gigabytes of temporary disk and does not impose a local memory limit. The recorded 6 GiB cap applies to the container replay, not to an unconfigured reader's machine.

## Source files

- MathCase/R66/Foundation.lean defines the Paley graph and verifies its finite graph properties.
- MathCase/R66/Rows/Representative.lean checks a representative edge case.
- MathCase/R66/Composition.lean composes the graph symmetries and proves the exact existential target.
- Audit.lean prints the final theorem's axiom dependencies.
- source-manifest.json binds the source files to the successful replay.
- source-replay-receipt.json records exact inputs, outputs, tool versions, resource limits, and result.

## Earlier attempts

The initial 2 GiB run was killed by the memory limit. A later run stopped on an output-layout setup error. A 4 GiB follow-up hit a recursion-depth limit; that was not an out-of-memory failure. The first composition run then found Lean proof-construction errors. Those failures were preserved in the owner-local run archive. The successful run fixed the missing field import and composition obligations, then completed under the 6 GiB limit. See attempt-history.md for the concise sequence.

The accompanying finite certificate and independent Python checker are in ../ramsey-r66-paley101-v1/. They provide a separate check of the same known graph witness. The Lean replay and finite certificate have different evidence paths.
