# M15-M20 pinned shard replay - public export view

This derived export records finite, hash-bound Collatz affine-descent replay evidence. It is not the private raw execution manifest. Source files, shard receipts, grouped axiom receipts, logs, and result rows are preserved byte-for-byte.

## Recorded shard result

- 229 of 229 Lean shard modules compiled in the pinned local run.
- 4,262 of 4,262 axiom queries were reported; outputs list propext and Quot.sound; no sorryAx was reported.
- These are finite affine-descent results only. They do not prove Collatz convergence, complete residue coverage, novelty, or M4.

## Separate M20 aggregate composition

The 229-shard replay did not include the aggregate theorem. A separate later composition-v1 run compiled 133 intermediate modules and a final theorem for the exact 2,652-family target using cached M20 OLEANs whose hashes matched the earlier replay. All 134 output receipts exited zero under 2 GiB. Ryan's M0 was YES for statement fidelity only. No M4 gate changed. Details are in m20-composition-v1/README.md.

Three failed composition attempts, including the 200000-heartbeat timeout, and the earlier operator-stopped 2 GiB attempt remain in m20-composition-v1/attempt-history.md.

The exact image pullability and complete build provenance are not established from a fresh public checkout. See package-root BUILD_CONTEXT_STATUS.md. Do not call this clean-room reproduction until an independent operator repeats the run.
