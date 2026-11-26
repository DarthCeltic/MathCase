# A Lean-checked witness for R(6,6) ≥ 102

Lean checked a concrete graph on 101 vertices with no six mutually connected vertices and no six mutually disconnected vertices. This reproduces the known lower bound R(6,6) ≥ 102; it is not a new bound and it does not determine the exact Ramsey number.

The exact statement is:

    ∃ G : SimpleGraph (Fin 101), G.CliqueFree 6 ∧ (Gᶜ).CliqueFree 6

In plain words, there is a simple graph on 101 labeled vertices with no clique of size six and no independent set of size six. The statement received M0 YES against packet SHA-256 6e1382f9ad7123aad2c25f4d10e4de7cf168a296029db6144c96b64a2044fae2. M0 records statement fidelity only. This remains candidate evidence: no M4 promotion, signature, or independent mathematical review is claimed.

## What ran

A fresh source-to-kernel run compiled the three listed MathCase modules from source, with no reuse of MathCase OLEAN files, under Lean 4.33.1 and Mathlib commit 0df444a360eaa60ab8c11dca51a86af692955474. The container had networking disabled, one CPU, a 6 GiB memory limit, and 420-second per-module limits. All modules exited 0. The final theorem reports axioms [propext, Classical.choice, Quot.sound]; no sorryAx was reported. The exact source, output OLEAN, and environment hashes are in source-replay-receipt.json.

The original pinned container image is identified by tag and image hash in its receipt, but its anonymous public pull was not verified. The separate public-source Lake project now has a fresh pass under the checked-in lock; the older receipt and its lock mismatch are preserved below as historical evidence. The fresh run rebuilt MathCase outputs from source and passed the exact theorem audit. It reused the public Mathlib cache populated during its first setup run; this is not a fully cold dependency build. The run receipts and the console-encoding failure are in verification/current-lock-replay-manifest.json. The exact history and limits are recorded in the lock-provenance addendum. A later cache-normalization failure and its incremental recovery remain in verification/package-cache-normalization-failure.json; they do not replace either full source receipt.

The exact r3b shell driver is preserved at [verification/source-to-kernel-r3b.sh](verification/source-to-kernel-r3b.sh), with its run manifest hash, runner hash, and source/output bindings in [the r3b provenance record](verification/source-to-kernel-r3b-provenance.json). The [post-run raw-byte audit](verification/postrun-raw-binding-audit-r1.json) records 49 binding checks with no mismatches. This driver expects the recorded container image and its internal mount layout. It is included for command inspection; it is not the public clean-checkout command, and the image has not been verified anonymously pullable.

## One-command replay

Requirements: Python 3, Lean and Lake 4.33.1, and network access for the first download of the pinned public Mathlib dependencies and their build cache. Run this from this directory:

    python -B replay_r66.py

The wrapper verifies the pinned source files and current Lake lock, then refuses to proceed if any listed MathCase OLEAN already exists under the package build tree. It does not delete or reuse MathCase outputs. It fetches the pinned Lake dependencies, obtains the public Mathlib cache, builds the three MathCase modules with one Lake job, prints the axiom audit, and writes a unique receipt under verification/. A clean MathCase output tree is required; cached Mathlib OLEANs are allowed.

The successful current-lock run used the command python -X utf8 -B replay_r66.py before the wrapper learned to configure UTF-8 output itself. It completed in 147.929 seconds, with all three MathCase modules rebuilt and the final audit passing. Lake used one job; this Windows run had no OS-enforced memory cap. The checked-in runner change fixes only console encoding and saved-receipt verification; it was not used to produce that Lean result. The captured command output, exact raw run receipt, execution record, and audit bytes are hash-bound by verification/current-lock-replay-manifest.json.

The --verify-inputs option checks package inputs without invoking Lean or Lake. The --check-clean-build option checks for pre-existing MathCase OLEANs, also without invoking Lean or Lake. The --verify-recorded option checks the new current-lock receipt, raw run-receipt digest, audit text, and current manifest. The --verify-historical option verifies the unchanged older receipt and explicitly reports that it binds a different historical lock. Saved-file verification is not a theorem replay. Focused runner checks run with python -m unittest test_replay_r66_cleanliness.py test_replay_r66_current_receipt.py.

## Current lock and preserved history

The checked-in lake-manifest.json has SHA-256 958b34400c85f0e6e9e1a3ec9c2c67e3df25fcfed9195c53d50302af588f3c0f. The original lake-replay-receipt.json remains unchanged and records the older hash 2a66a99e178e711c07f724bd787aa4cead8b2ae674296b5987cf0906ff3d99e9. The cause of that historical mismatch is still unproven; line-ending normalization does not explain it. The old receipt is not used to claim a current-lock replay.

The new public-source run passed with the checked-in lock and Mathlib commit 0df444a360eaa60ab8c11dca51a86af692955474. The exact raw run receipt is verification/current-lock-replay-r2-pass.json (SHA-256 063fa8bb61a1c48d53158879d5eed3120995bcfd49be270d1290697e397530aa); its execution record is verification/current-lock-execution-r2.json (SHA-256 9a152ca6137a1534e8ba50361fdc8634f78159335ad737dd4b166c2de6294a25). Lean 4.33.1 reported [propext, Classical.choice, Quot.sound]; sorryAx was absent. The run used a fresh MathCase output tree, but reused the public dependency cache fetched in the earlier setup attempt.

The first wrapper run built the project successfully, then failed while printing Lean's warning symbol under the Windows legacy console encoding. Its concise failure summary retains the original raw failure receipt's digest. The same fresh outputs' separate audit command passed; a later clean project-output run then passed the whole wrapper in UTF-8. This was an output-encoding failure, not a Lean proof failure. The checked-in runner now configures UTF-8 output; its output-encoding fix has focused tests, but the checked-in wrapper change was not itself used for the recorded proof build.

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
- source-replay-receipt.json records the original container run inputs, outputs, tool versions, resource limits, and result.
- verification/current-lock-replay-manifest.json binds the fresh public-source run, current lock, captured axiom output, execution record, and preserved historical receipt.

## Earlier attempts

The initial 2 GiB run was killed by the memory limit. A later run stopped on an output-layout setup error. A 4 GiB follow-up hit a recursion-depth limit; that was not an out-of-memory failure. The first composition run then found Lean proof-construction errors. Those failures were preserved in the owner-local run archive. The successful run fixed the missing field import and composition obligations, then completed under the 6 GiB limit. See attempt-history.md for the concise sequence.

The accompanying finite certificate and independent Python checker are in ../ramsey-r66-paley101-v1/. They provide a separate check of the same known graph witness. The Lean replay and finite certificate have different evidence paths.
