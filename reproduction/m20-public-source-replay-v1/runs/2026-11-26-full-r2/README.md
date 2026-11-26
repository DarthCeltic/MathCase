# M20 Collatz replay — 26 November 2026

## Result

PASS. A fresh source replay compiled the 363 Lean modules used for the M15–M20 composition and ran all 23 axiom-check groups. Lean printed the axiom list for each of 4,262 declarations; every query exited successfully.

The statement covers 2,652 listed progressions. For every natural number k in each listed row, start at 1,048,576k + r, where r is that row's recorded residue. After the recorded 32 Collatz steps, the value equals 531,441k + q, where q is that row's recorded endpoint, and this value is smaller than the starting value.

This is a bounded first-drop result for those listed progressions. It does not prove that every Collatz sequence eventually reaches 1, does not establish a general rule for all starting numbers, and is not claimed as a new theorem. The exact source theorem is [M20CompositionAllFamiliesV1.lean](https://github.com/DarthCeltic/MathCase/blob/17174a4a6311eb2e32556d9e4fb38255290a36be/reproduction/m15-m20-r2/evidence/collatz/m15-m20-pinned-replay/m20-composition-v1/sources/M20CompositionAllFamiliesV1.lean).

## What was checked

- 363 modules compiled into a fresh output directory; all 363 new OLEAN hashes match the November 18 phase-2 output manifest.
- All 23 axiom groups and all 4,262 printed theorem-axiom queries exited with code 0. Their axiom union is [propext, Quot.sound]. There are no sorryAx results and no sorry or native_decide tokens in the 386 staged Lean source files.
- All 346 pinned historical Mathlib OLEANs matched their recorded SHA-256 values.
- The fresh output OLEANs do not match the older original-container OLEAN hashes: 0 of 363 matched that older manifest. They do match all 363 November 18 phase-2 output hashes. These are two distinct comparisons; the older container's binaries are not being represented as reproduced.
- The replay's terminal status was PASS and the container exited 0. A separate same-host artifact audit rehashed the staged inputs, outputs, logs, and dependencies. It did not run Lean again and is not an independent stranger review.

## How to reproduce from public sources

The replay used a local Docker image tag for this run. This repository does not provide a public pull URL for that image, so the result does not claim the image is anonymously pullable. The supported public route is to install the pinned official Lean 4.33.1 toolchain and use the source bootstrap below.

From the repository root, follow the prerequisites and pinned-source instructions in [ORIGINAL_REPLAY.md](../../ORIGINAL_REPLAY.md). The full command should use the measured 1,800-second per-module limit:

~~~console
python bootstrap_original.py ./m20-workspace
python replay_original.py ./m20-workspace ./m20-smoke --smoke
python replay_original.py ./m20-workspace ./m20-full --timeout 1800
python audit_saved_run.py ./m20-full ./m20-workspace --output ./m20-full/artifact-audit.json
~~~

The November 26 run took 3 hours, 42 minutes, and 30.318 seconds on one CPU with network access disabled. Runtime depends on the machine. The author ran it locally from the pinned public source; a separate stranger's full replay and independent mathematical review remain open.

## Evidence in this folder

- [execution.json](execution.json) records exact pins, command, limits, and artifact hashes.
- [status.json](status.json) is the raw terminal runner status.
- [stages.jsonl](stages.jsonl) records every compile/audit stage, source hash, output hash, and exit code.
- [logs.zip](logs.zip) contains the 772 raw stdout/stderr stage logs.
- [artifact-audit.json](artifact-audit.json) records the same-host read-only artifact audit and its limitations.
