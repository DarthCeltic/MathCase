# A Lean-checked witness for R(6,6) ≥ 102

**Plain result:** Lean checked a concrete graph on 101 vertices with no six
mutually connected vertices and no six mutually disconnected vertices. This
reproduces the known lower bound `R(6,6) ≥ 102`; it is not a new bound and it
does not determine the exact Ramsey number.

The exact target is:

```text
∃ G : SimpleGraph (Fin 101), G.CliqueFree 6 ∧ (Gᶜ).CliqueFree 6
```

In plain words, there is a simple graph on 101 labeled vertices with no
clique of size six and no independent set of size six. The recorded M0 YES
binds the wording to packet SHA-256
`6e1382f9ad7123aad2c25f4d10e4de7cf168a296029db6144c96b64a2044fae2`; M0 is
statement fidelity only.

## Current public-source replay

A fresh public-source Lake run rebuilt the three MathCase modules from source
under Lean 4.33.1 and Mathlib commit
`0df444a360eaa60ab8c11dca51a86af692955474`. It used one Lake job, a fresh
MathCase output tree, and the public Mathlib cache. The build and final audit
both exited 0. The reported axioms are `[propext, Classical.choice,
Quot.sound]`; `sorryAx` is absent.

The current-lock replay receipt is
`verification/current-lock-replay-r2-pass.json`, SHA-256
`063fa8bb61a1c48d53158879d5eed3120995bcfd49be270d1290697e397530aa`.
Its execution record and audit bytes are bound by
`verification/current-lock-replay-manifest.json`. The exact command is:

```text
python -B replay_r66.py
```

The wrapper checks source hashes, the current Lake lock, and a clean MathCase
output tree before building. `--verify-recorded` checks the saved current-lock
receipt; `--verify-historical` checks the older receipt separately.

An independent fresh public-clone replay also passed on Nov. 28, 2026. It
started with no MathCase build outputs, fetched the pinned dependencies, built
the three source modules with one Lake job, and ran the audit. The path-free
receipt is [`verification/anonymous-public-main-replay-2026-11-28.json`](verification/anonymous-public-main-replay-2026-11-28.json),
SHA-256
`fbe95f719281196e8f5fa25416fa715d399b38e7a29b105b715f5d6d1a225103`.
The matching source and fresh-output hashes are in
[`verification/anonymous-public-main-hashes-2026-11-28.json`](verification/anonymous-public-main-hashes-2026-11-28.json),
SHA-256
`fac90ad3a6407b0ba73250bc16b46943bc3831966f0974901f6f159114984612`.
It took 1,319.372 seconds including dependency setup; the fresh MathCase build
and audit both exited 0, with the same three allowed axioms and no `sorryAx`.
This is a reproducible public-source replay on one host, not independent
mathematical review and not a new Ramsey bound.

## Preserved historical evidence

The original `lake-replay-receipt.json` remains unchanged. It binds an older
Lake manifest digest (`2a66a99e…`) rather than the current checked-in digest
(`958b3440…`); that historical mismatch is preserved, not normalized away.
The old receipt is not used as evidence for the current-lock replay. Earlier
setup failures, the Windows console-encoding failure, and the source-to-kernel
binding audits remain under `verification/` and `attempt-history.md`.

## Rebuild from public sources

Requirements: Python 3, Lean/Lake 4.33.1, and network access for the first
download of the pinned Mathlib dependencies and cache. From this directory:

```text
lake update
lake exe cache get
lake build -Kjobs=1 MathCase
lake env lean Audit.lean
```

This path may require several gigabytes of temporary disk. It is a known-bound
replay, not a stranger review or a claim of a new Ramsey value. The separate
finite Paley certificate and Python checker are in
`../ramsey-r66-paley101-v1/`.
