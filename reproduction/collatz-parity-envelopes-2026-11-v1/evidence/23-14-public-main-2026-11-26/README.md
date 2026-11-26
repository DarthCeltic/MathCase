# 23/14 replay from public MathCase main

For every natural start covered by the 23-step filter, if at most 14 of the first 23 accelerated steps begin at an odd value, the ordinary Collatz sequence drops below its start by step 23+h, where h is the number of odd inputs in those 23 accelerated steps. The separate exact count is 7,507,638 qualifying residue classes out of 8,388,608. This is a bounded first-drop result, not a proof of Collatz convergence.

## What was checked

The published case command rebuilt the four Lean Core modules from source in a new output directory and exited 0 on public MathCase main commit `ab6ff689860696e06726c74b5336782210a8f10f`. Lean was the official Windows 4.33.1 release (toolchain commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`). The four Lean process timings sum to 57.682 seconds. `AtMostFourteen23` also emits an unused-simp-argument warning for `ih`; the warning is preserved in its log, and the module still compiled and passed the axiom checks. The axiom sets reported by Lean are in `replay-result.json` and the corresponding output is available in `logs/`.

The toolchain release archive SHA-256 is `f63029c0e1e6daed0f4807481b6fcd8f8b77fbce6d63f205c7f9191072387a7a`; the executable SHA-256 is `af49bacfabaa1fea71332ca0feae0fa1a60912219d5902291adc79f905bffb8d`. `verification.json` binds these toolchain hashes, the main commit, all source and OLEAN hashes, module exit codes, axiom lists, log hashes, and the replay-result hash.

To reproduce, install the official Lean 4.33.1 release, place its `bin` directory first on `PATH`, then run from the root of a fresh public MathCase checkout:

```powershell
python -B scripts/run_public_case.py collatz-parity-envelope-23-14 --out <new-output-parent>
```

The first local invocation used the `elan` shim without a default toolchain and failed before reading Lean source. That setup failure is preserved privately; it is not a mathematical failure. The passing run used the official binary directly through `PATH`. The runner made no dependency fetch or provider call; this record does not claim OS-enforced network isolation or an independent third-party replay.

## Files

- [`verification.json`](verification.json) — path-free run summary and all bindings.
- [`replay-result.json`](replay-result.json) — tool-generated Lean run receipt.
- [`logs/`](logs/) — axiom output and the source warning from the four modules; one temporary materialized-source path was replaced with its module filename.
- [`SHA256SUMS`](SHA256SUMS) — hashes of the files in this record.