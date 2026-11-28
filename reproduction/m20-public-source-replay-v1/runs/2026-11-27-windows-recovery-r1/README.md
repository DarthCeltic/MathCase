# M20 source replay — Windows recovery record (27 November 2026)

This folder records a bounded recovery of the public M15–M20 replay. It is
supplemental to the full public replay receipts in
`reproduction/m20-public-source-replay-v1/runs/2026-11-26-full-r2/` and the
native-Windows record beside it.

The first Windows attempt used the pinned public sources and completed 134 of
363 module compiles. It then failed while atomically replacing its progress
status file with a Windows access-denied error. The failure is preserved by
hash in `execution.json`; it was not treated as a Lean or theorem failure.

The run-local recovery resumed from those already verified outputs, compiled
the remaining modules and final composition, and ran all 23 axiom groups.
The terminal evidence records 363/363 compiles, 23/23 audits, and 4,262/4,262
axiom queries with every stage exit code 0. All 363 fresh OLEAN hashes match
the November 18 phase-2 manifest; none match the older original-container
manifest. Every audit query reports `[propext, Quot.sound]`; no `sorryAx`,
`native_decide`, `admit`, or source-level `axiom` hit was found in the 386
staged Lean files.

This recovery is not a second independent stranger replay: it reuses the
first attempt's completed outputs after the status-file failure. The public
Linux and native-Windows full replay receipts remain the primary replay
records. The theorem is bounded first descent for 2,652 listed progressions;
it is not a proof of global Collatz convergence or a new general rule.

The large source, OLEAN, and raw-log tree remains on the T: scratch volume.
`stages.jsonl` is copied here as the compact per-stage hash/exit ledger. Git
stores this public text projection with LF line endings; `execution.json`
retains the raw runner-stage hash and also records the public projection hash.
