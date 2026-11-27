# Collatz parity-envelope cutoff lemma

## What this proves

For fixed natural numbers `A > B` and `C`, the Lean theorem gives the exact least natural starting value `n` for which

`B * (n + C) < A * (n + 1)`.

If `B*C < A`, the cutoff is 0. Otherwise it is `floor((B*C-A)/(A-B)) + 1`. The proof is an if-and-only-if for every `n`.

For a parity prefix of length `t`, an odd-input count `h` has the coefficient envelope `3^h * (n + 2^(t-h))`. The included general theorem proves that every admitted envelope with `h <= H` lies below `2^t*(n+1)` exactly when the cutoff at `H` is met. This isolates the shared coefficient step from the separate Collatz endpoint argument.

Lean also checks the exact coefficient cutoffs for eight parameter pairs already recorded in MathCase: 20/12 = 262, 21/13 = 808, 22/13 = 313, 23/14 = 677, 24/15 = 3,019, 27/17 = 26,018, 31/19 = 4,830, and 32/20 = 17,667. The last three rows are coefficient calculations only; they do not review or replay those Collatz target theorems.

## Verification

The files use Lean Core (`Init`) only. The recorded run compiled both Lean modules into a fresh output directory on Lean 4.33.1. `division_cutoff_iff` reports `[propext, Quot.sound]`; the generic coefficient and all-admitted-envelope theorems report `[propext, Classical.choice, Quot.sound]`; the eight closed cutoff equalities report no axioms. No `sorryAx` or `native_decide` appears in the passing source/audit. A deliberately false 23/14 cutoff of 678 is rejected by Lean.

The public-main context used for the recorded parameter comparison was MathCase commit `f2b7ecedf233b56e78bdb171681afb8afad48a67`. That commit was the remote main tip at the time of the run. This package compiles its own included Lean sources; it does not compile the separate Collatz target files.

## Reproduce

Use Lean 4.33.1 and an empty output directory outside this package:

```powershell
python -B replay.py --lean "<path-to-Lean-4.33.1>/lean.exe" --out "<new-empty-output-directory>"
python -B verify_cutoffs.py
python -B verify_package.py --output "<same-output-directory>"
```

The replay verifies its source pins, refuses a nonempty output directory, and records Lean’s version, executable hash, module outputs, axiom output, and the damaged control. It makes no network calls; OS-level network isolation was not configured in the recorded run. No external model/provider was used.

The `evidence/failed-drafts.json` file records three setup/compiler failures before the passing run. Their original raw logs are preserved in the private MathCase evidence folder and are intentionally omitted from the public projection because they contain local machine paths.

## What it does not prove

This is a reusable exact inequality and a proof-structure aid. It does not establish a new Collatz descent family, improve a known bound, remove finite small-start checks, or prove convergence. A Collatz descent theorem still needs its own endpoint estimate, small-start check, statement review, and replay record.