# Shorter large-start proof for the existing Collatz 23/14 result

## In plain words

This is the same bounded Collatz statement already checked in the parent package. For every natural number n at least 3, if no more than 14 of the first 23 accelerated steps are odd, the ordinary Collatz value after exactly 23+h steps is smaller than n, where h is that odd-step count. The accompanying count remains 7,507,638 of the 2^23 residue classes.

This package changes how the large-start part of that proof is written. It does not add a theorem, a starting-number family, or a convergence result.

## What changed in the proof

The earlier large-start argument split into 15 cases for h = 0 through 14. The refactored proof uses the envelope

    F_h(n) = 3^h * (n + 2^(23-h)).

For h < 23, F_h(n) <= F_(h+1)(n). Therefore, when h <= 14, one upper bound at h = 14 handles all 15 values. At that endpoint,

    2^23 * (n + 1) - F_14(n) = 3,605,639*n - 2,440,491,520.

This gap is positive for n >= 677. The original finite check for 3 <= n < 677 remains in place. The refactor reduces the large-start h branches from 15 to 0; it does not remove the finite small-start check or reduce the number of residue classes.

The exact target declaration remains the same as the parent package. The original parent source SHA-256 is recorded in source-pins.json.

## Check it

Requires Lean 4.33.1. The runner checks the version and rejects other Lean releases before creating its output directory. No Mathlib, Docker, or model call is used. The recorded host run used Lean commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6 and Windows x86-64; the binary SHA-256 and exact axiom output are in evidence/.

From this folder, point the runner at your Lean executable and a new empty output directory:

    powershell -NoProfile -ExecutionPolicy Bypass -File .\replay.ps1 -LeanExe PATH_TO_LEAN_EXE -OutDir PATH_TO_NEW_EMPTY_OUTPUT

The runner compiles the three shared public source files and the two added proof files from source, writing every OLEAN to the chosen output directory. It refuses to reuse a non-empty output directory. The saved OLEAN files in evidence are only the outputs of the recorded run; the runner does not read them. The package is stored byte-for-byte in Git so these hashes are stable across Windows and Linux checkouts.

Run the path and receipt checks with:

    python -B .\verify_release.py

## Recorded run

The fresh Lean run exited 0. The descent theorem reports [propext, Quot.sound]; the count and combined theorem report [propext, Classical.choice, Quot.sound]. The full axiom output is preserved in evidence/lean-run.stdout.txt. No sorryAx or native_decide appears in the passing source or audit. The verification script checks the source pins, saved OLEAN hashes, receipt, and the 676/677 boundary arithmetic.

Two earlier draft runs failed before this successful replay: one used tactics unavailable in the Lean Core-only setup; one generated an import with a literal backslash-n. These are implementation failures, not counterexamples. The failures remain preserved in the private working record; this release does not rewrite them.

## Limits

This is an implementation simplification of a classical bounded Collatz consequence, not a novelty claim. It covers only the existing 23/14 condition and exact iterate bound. It does not prove that every Collatz trajectory reaches 1 or otherwise establish global convergence.
