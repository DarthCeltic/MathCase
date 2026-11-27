# Why is the midpoint of a right triangle's longest side equally far from its corners?

For a right triangle with corners A = (0,0), B = (a,0), and C = (0,b), where a and b are positive, the midpoint of the longest side BC is equally far from A, B, and C.

## Try the numbers

Take A = (0,0), B = (6,0), and C = (0,8). The midpoint of BC is M = (3,4).

- MA squared = 3² + 4² = 25.
- MB squared = (3−6)² + 4² = 25.
- MC squared = 3² + (4−8)² = 25.

So all three distances are 5. The proof checks the same calculation for every positive a and b in this coordinate model.

## What the Lean theorem says

The source defines squared Euclidean distance for points in ℝ² and proves that the squared distances from (a/2,b/2) to (0,0), (a,0), and (0,b) are equal. The assumptions are a > 0 and b > 0. The positivity assumptions make these points a non-degenerate right triangle with the right angle at the origin.

This is a known coordinate identity. The Lean source proves the algebra in the displayed coordinate model; it does not formalize the rotation-and-translation step from every Euclidean right triangle to that model. It is not a novelty claim.

## What was checked

A fresh R06 source replay compiled the exact source and its axiom audit with Lean 4.33.1 and Mathlib v4.33.1, using a pinned Mathlib cache, networking disabled, one CPU, a 2 GiB memory limit, and a 180-second limit for each Lean process. Both Lean commands exited 0. The theorem's printed axiom list is `[propext, Classical.choice, Quot.sound]`; `sorryAx` is absent from the captured output.

The Lean source SHA-256 is `831db7bfe3ec643eea8ae02e129d87e926bbdc51186566c9dae46d3842e69dcf`. The audit source SHA-256 is `ce304794c34dba1d6e76617e3a20a4e7fe28448643d9878049e31ac8923f248e`. The replay summary binds the OLEANs, stdout, stderr, and exit-code file. It also compares these output hashes to an earlier run that had the incorrect structured field `sorryAx: true`; the original receipt was preserved, not edited. The fresh printed audit resolves that field conflict.

Earlier records include two setup failures and two timeouts before a theorem verdict. A later runner entrypoint setup failure also stopped before Lean started. Those failures remain preserved in the owner record; the R06 exact-source pass supersedes none of their bytes.

The owner-run exact-source replay above used a warm pinned cache; it is not an independent review. An initial anonymous public-clone attempt stopped before Lean compiled anything: `lake update` exited 0 but changed the manifest root name from `mathcase_ramsey_r66` to `mathcase_coordinate_midpoint`. The nine dependency records did not change, and the strict runner correctly refused to proceed. Its path-free failure record is `evidence/anonymous-public-clone-r1-setup-failure.json`; the original local receipt remains preserved. The package manifest now matches `lakefile.toml`. A second owner-run replay passed from a fresh depth-1 sparse clone of public MathCase main at commit `9556a8863d232256ab6113cc6740d0571d628171`, with the Git credential helper disabled and fresh theorem outputs. The runner, all six stages, and the axiom audit exited 0; the post-update manifest hash matched the pinned hash. See `evidence/anonymous-public-clone-r2-replay.json` for versions, timings, hashes, and stage outputs. This is an author-side public-clone replay, not an independent stranger replay or mathematical review.

## Reproduce

Requirements: Python 3, Lean/Lake 4.33.1, and internet access for the first retrieval of the pinned Mathlib source and selected public cache files. The runner makes a new output directory and refuses to continue if the lock or source hashes differ. It compiles the theorem source and runs the axiom audit; it does not modify this package.

    python -B replay.py

Optional output location:

    python -B replay.py --output-dir PATH

The documented command passed in the owner-run fresh public clone recorded above. The result confirms that the package can replay from public source on this host; it does not establish an independent stranger run or mathematical review. The sample values above are elementary arithmetic illustrations; the universal normalized-coordinate identity is the Lean-checked claim.

## Files

- `GeometryMidpoint.lean` — exact R06 theorem source.
- `Audit.lean` — prints the theorem's axioms.
- `lakefile.toml`, `lake-manifest.json`, and `lean-toolchain` — pinned Lean/Mathlib project setup.
- `replay.py` — fresh-directory public replay runner.
- `evidence/r06-replay-summary.json` — path-free projection of the earlier warm-cache exact-source replay.
- `evidence/anonymous-public-clone-r1-setup-failure.json` — path-free record of the initial metadata setup failure; Lean did not run.
- `evidence/anonymous-public-clone-r2-replay.json` — path-free receipt for the fresh public-clone replay.
- `verify_package.py` — offline check of package file hashes and pinned source identity.
