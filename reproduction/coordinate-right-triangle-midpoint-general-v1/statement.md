# Statement checked by Lean

For any three points `A`, `B`, and `C` in the real coordinate plane, if the vectors from `A` to `B` and from `A` to `C` have dot product zero, then the midpoint of `B` and `C` has equal squared Euclidean distance to `A`, `B`, and `C`.

The exact Lean declaration is `midpoint_perpendicular_equidistant` in `GeometryGeneral.lean`. It has no distinctness or nonzero-side assumptions. Equal squared distances are the formal conclusion; this is enough to conclude equal ordinary distances because distances are nonnegative.

The stored statement-review packet has SHA-256 `ffb26e7ff0aaeb6b8bbfebbaa6d9cf72b560d708dc5b7c8588410b839eac3957`. Its review record says YES for statement fidelity only. A review of the owner-visible M0 question confirms that it displayed the same 64-character digest. An earlier replay projection incorrectly described it as 63 characters; the original projection remains unchanged, with a correction in [`evidence/m0-packet-hash-correction-2026-11-27.json`](evidence/m0-packet-hash-correction-2026-11-27.json).

This review did not check the proof, establish novelty, or constitute independent mathematical review.
