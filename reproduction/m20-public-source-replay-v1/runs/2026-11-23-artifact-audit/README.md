# Nov. 23 saved M20 run: artifact audit

The saved run reported a successful rebuild of the theorem for 2,652 listed Collatz progressions: after 32 steps, each value equals its recorded affine expression and is smaller than its start. This bounded result does not prove global Collatz convergence. A later read-only audit rehashed the saved files against the public Phase 2 manifests. It found 386 matching staged sources, 363 matching compiled OLEAN files, 772 matching stdout/stderr logs, 23 matching axiom groups with 4,262 queries and no `sorryAx`, and all 346 inventoried Mathlib OLEAN files byte-identical to the historical inventory.

This is an audit of files saved on the author's machine, not a fresh Lean run or an independent stranger reproduction. The original run did not record the replay runner's SHA-256, so the exact script that orchestrated it is not bound. The saved status and stage records are included here so the limits are visible. The updated runner writes the missing script and toolchain bindings for future runs.

## Files

- `saved-status.json` — the original path-free run status.
- `saved-stages.jsonl` — the original per-source and per-output hashes.
- `artifact-audit.json` — the read-only audit result, source pins, counts, and limitation.
- `../../audit_saved_run.py` — the checker for anyone with access to the saved run directory and its bootstrap workspace.

The artifact audit passed on the exact saved output. It did not rerun Lean. The original container OLEANs remain distinct: 0 of 363 compiled OLEANs match that older container, while all 363 match the published Nov. 18 Phase 2 OLEAN manifest.
