# Clean stranger replay — 2026-11-28

This folder records a fresh replay of the original M20 composition theorem
from the public MathCase sources. It is separate from the earlier recovery
run: no OLEAN or proof output from that run was used.

## Result

`status.json` reports `PASS` after compiling all 363 source modules, matching
all 363 Nov 18 phase-2 OLEAN hashes, passing all 23 axiom-audit groups, and
checking all 4,262 recorded axiom queries. Every compile and audit exited 0;
the audit output reports only `[propext, Quot.sound]`, with no `sorryAx`,
`native_decide`, or compiler-trust axiom. The historical Mathlib inventory
also matched byte-for-byte for all 346 listed entries, with none missing.

This is the bounded M20 claim only: the 2,652 listed families have the
recorded 32-step affine equality and strict decrease. It does not establish
global Collatz convergence or a general rule for all starting values.

## Reproduce

From a clean checkout of this repository, use the pinned public source and
toolchain recipe in [`ORIGINAL_REPLAY.md`](../../ORIGINAL_REPLAY.md):

```console
python bootstrap_original.py ./m20-workspace
python replay_original.py ./m20-workspace ./m20-full --timeout 1800
```

The replay uses Lean 4.33.1, Mathlib commit
`0df444a360eaa60ab8c11dca51a86af692955474`, and source commit
`17174a4a6311eb2e32556d9e4fb38255290a36be`. `stages.jsonl` preserves the
per-module and per-audit exit codes, timings, and hashes. `status.json` is the
path-free terminal receipt; `bootstrap-receipt.json` binds the fresh setup,
tool versions, dependency lock, and executable hashes.

The run was performed on Windows with one Lean worker and a 1,800-second
per-invocation cap. Runtime is machine-dependent. The receipt is a clean
public-source replay on one host, not independent peer review.
