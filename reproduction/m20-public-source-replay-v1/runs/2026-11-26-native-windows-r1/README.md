# M20 Collatz replay — native Windows, 26 November 2026

## What this checks

This run rebuilt the M15–M20 source proof for **2,652 listed progressions**. For every natural number k in each listed row, starting at 1,048,576k + r, the recorded 32 Collatz steps end at 531,441k + q, and that value is strictly smaller than the start.

This is a bounded first-drop result for those listed progressions. It does not prove that every Collatz sequence reaches 1, establish a rule for all starting numbers, or claim a new theorem.

## Result

**PASS.** The native Windows replay compiled all 363 source modules in a fresh output tree. All 363 output hashes match the November 18 Phase 2 manifest. All 346 pinned historical Mathlib OLEANs matched their recorded hashes. The 23 axiom groups completed 4,262 declaration queries; the axiom union was propext and Quot.sound, with zero sorryAx results. The 386 staged Lean source files had no sorry or native_decide hits.

The fresh outputs matched 0/363 hashes from the older original-container manifest. That older binary identity was not reproduced; the run matched the November 18 Phase 2 outputs instead.

## How to replay

Use Git, Python 3.11 or later, and the official Lean 4.33.1 toolchain with Lake. Follow [the pinned source bootstrap](../../ORIGINAL_REPLAY.md) from the MathCase repository root. For a fresh full output directory, run:

~~~console
cd reproduction/m20-public-source-replay-v1
python bootstrap_original.py ./m20-workspace
python replay_original.py ./m20-workspace ./m20-full --timeout 1800
python audit_saved_run.py ./m20-full ./m20-workspace --output ./m20-full/artifact-audit.json
~~~

The measured run used one CPU and a 1,800-second per-module timeout. Bootstrap fetched public pinned dependencies before replay. The replay was **not recorded as OS-level network-isolated**. Runtime depends on hardware.

This is an author-side native Windows replay from public pinned sources. A stranger's full replay and independent review are still open. A separate read-only same-host artifact audit rehashed the saved inputs and outputs; it did not run Lean again.

## Evidence in this folder

- execution.json: run identity, toolchain, commands, limits, result, and claim limits.
- status.json: raw runner terminal status.
- stages.jsonl: per-command source/output hashes and exit codes.
- logs.zip: the 772 stdout/stderr files for all 386 replay stages: 363 module compiles and 23 axiom-query groups.
- artifact-audit.json: same-host read-only rehash result and limits.
- bootstrap-receipt.json: path-free bootstrap receipt, hash-bound by execution.json.
- toolchain.json: official toolchain archive and executable hash pins.
- SHA256SUMS: hashes for the evidence files.

The theorem source and historical manifests are linked from [the original proof bundle](https://github.com/DarthCeltic/MathCase/tree/17174a4a6311eb2e32556d9e4fb38255290a36be/reproduction/m15-m20-r2) and [the Phase 2 replay manifest](https://github.com/DarthCeltic/MathCase/tree/17174a4a6311eb2e32556d9e4fb38255290a36be/reproduction/m20-source-replay-2026-11-18).