# Replay the public prime lemma and its square-root-of-two child

The runner compiles the pinned prime-divisibility parent source and then the square-root-of-two child source, in a fresh temporary directory against official Mathlib 4.33.1. It checks the exact parent and child target declarations, prints their axioms, and requires Lean to reject a negative control with the primality premise removed.

## Run from the MathCase repository root

Install Lean/Lake 4.33.1, Python 3 and Git. First setup fetches the official pinned Mathlib commit and its cache; it needs network access and several gigabytes of disk:

```sh
python -B reproduction/prime-sqrt2-source-replay-v1/verify_prime_sqrt2.py --bootstrap ../mathcase-mathlib-4.33.1 --output reproduction/prime-sqrt2-source-replay-v1/runs/replay.json
```

After the pinned Mathlib checkout and cache exist, the local-only command is:

```sh
python -B reproduction/prime-sqrt2-source-replay-v1/verify_prime_sqrt2.py --mathlib ../mathcase-mathlib-4.33.1 --output reproduction/prime-sqrt2-source-replay-v1/runs/replay.json
```

The runner binds both source files to their recorded SHA-256 values and verifies the Mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474` plus every dependency revision from its manifest. It does not use precompiled MathCase objects. Build output and the new JSON receipt are written only to temporary/local paths.

Each Lean stage has a 600-second default. To use a different bounded limit, add `--stage-timeout SECONDS` to either command. For example, `--stage-timeout 900` allows up to 15 minutes per module compile, exact-target audit, or negative-control compile; it does not change the separate dependency-bootstrap limit. A timed-out stage writes a JSON receipt with status `TIMEOUT`, the stage, limit, and elapsed time, then exits 124. The negative control's expected result is `REJECTED` inside an overall `PASS`.

## Status boundary

This command reproduces a mathematical source check. It does not record a new M0 review, grant proof-use rights, create a standard M4 receipt, promote a dossier gate, or make a novelty claim. It checks a classical theorem, not a new result. The previously saved child compilation record remains candidate evidence only.

## Public-source replay recorded 23 November 2026

An anonymous-clone replay compiled the parent and then the child from pinned public source and dependencies. Both exact target audits passed with [Classical.choice, Quot.sound, propext]; the negative control with primality removed was rejected. The newly produced parent and child OLEAN hashes matched the earlier recorded bytes. The receipt is prime-sqrt2-anonymous-replay-2026-11-23.json (SHA-256 7566cb4bb6e81b4123d570930218ea06fe04522a898286df27ada20125a0cd5a). Its 8.544s parent and 15.733s child timings belong to that particular environment and are not portable runtime guarantees. This technical replay changes no review, permission, or dossier status.
