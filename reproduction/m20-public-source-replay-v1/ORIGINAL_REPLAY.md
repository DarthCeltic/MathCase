# Build the original M20 Collatz proof from public sources

This replay compiles the original 363 historical Lean source files and runs their 23 axiom-query groups. The input manifests fix every source SHA-256. The 32-step statement concerns 2,652 listed progressions. The related small symbolic proof has its own runner and different source files.

## Requirements

Install Git, Python 3.11 or later, and the official Lean 4.33.1 toolchain with Lake. With elan installed, use `elan toolchain install leanprover/lean4:v4.33.1`. Choose a scratch folder on a drive with space for the public Git checkouts, the Mathlib dependency cache, and several GB of generated proof files. The November 26 full replay, including compilation and audits, took 3 hours, 42 minutes, and 30.318 seconds on one CPU with network off. It used an explicit 1,800-second per-module limit; the runner default remains 600 seconds. Actual duration depends on the machine.

```console
python bootstrap_original.py ./m20-workspace
python replay_original.py ./m20-workspace ./m20-smoke --smoke
python replay_original.py ./m20-workspace ./m20-full --timeout 1800
```

Bootstrap downloads MathCase from public commit 17174a4a6311eb2e32556d9e4fb38255290a36be and Mathlib from 0df444a360eaa60ab8c11dca51a86af692955474. It checks out the eight official dependency revisions listed in that Mathlib manifest and downloads the public cache for Mathlib.Data.Nat.Prime.Basic, the only external module imported by the 229 shard sources. The optional repeatable `--also-cache Mathlib.Module` flag can prepare dependencies for a different proof in the same scratch space. A successful bootstrap writes `bootstrap-receipt.json`, including the bootstrap script, dependency lock, tool versions, executable hashes, and cache command log hashes. Run the replay with the same Python and Lake executables.

The compiler reads the public source files in the historical order and writes fresh OLEAN files in a new output directory. Each Lean process has one worker and a default ten-minute wall-clock limit per module. The only MathCase compiled artifacts on its import path are generated in that run. Use a fresh output folder for each replay so that an unsuccessful run remains inspectable. Existing unrelated workloads and Git checkouts are unnecessary.

## What the run records

`status.json` tracks the last completed stage and total checks. New v2 run receipts bind the replay script, bootstrap script and receipt, Python, Lake, and Lean executables. `stages.jsonl` records each completed command's exit status, duration, and input/output hashes; the two folders under each output named `sources` and `logs` contain the exact staged source and compiler output. The proof builds 229 original inputs, 133 composition modules, and the final theorem. The final theorem's recorded axiom output is compared with the historical result. All 23 axiom groups must reproduce their recorded text after normalizing platform line endings, cover 4,262 queries, and contain zero sorryAx reports.

The public-runtime replay uses the original source and official Mathlib revision. `historical-mathlib-inventory.sha256` contains 346 OLEAN names and hashes from the old container. The file's SHA-256 is 55431285c8f0d3e71a18991f70c010b411c12f1e138f2e7739adad9cc94c9e69, which the previously published Phase 2 output manifest binds. The runner reports which dependency binaries match those historical bytes. The old image digest, prebuilt intermediary bytes, and same-host logs are historical evidence. An earlier author-side full run reported success and its saved files match the published source/output manifests, but its receipt did not bind the runner script hash. See the [saved-run audit](runs/2026-11-23-artifact-audit/README.md); keep it as an audited historical record, not a runner-bound replay. The November 26 full run is runner-bound and passed; its path-free receipt, stage hashes, logs, and same-host artifact audit are in [the r2 evidence folder](runs/2026-11-26-full-r2/README.md). A stranger's full replay and independent review remain open.

[Original proof bundle](https://github.com/DarthCeltic/MathCase/tree/17174a4a6311eb2e32556d9e4fb38255290a36be/reproduction/m15-m20-r2) · [Historical manifests](https://github.com/DarthCeltic/MathCase/tree/17174a4a6311eb2e32556d9e4fb38255290a36be/reproduction/m20-source-replay-2026-11-18) · [Official Mathlib source](https://github.com/leanprover-community/mathlib4/tree/0df444a360eaa60ab8c11dca51a86af692955474)
