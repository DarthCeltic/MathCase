# Why is a right triangle's hypotenuse midpoint equally far from its corners?

If the two sides meeting at a right angle start at `A`, then the midpoint of the opposite side is equally far from `A`, `B`, and `C`. This result is about points with real coordinates; it includes the zero-length edge cases allowed by the formal statement.

## Try one by hand

Take `A=(0,0)`, `B=(6,0)`, and `C=(0,8)`. The two vectors are perpendicular because `6·0 + 0·8 = 0`. The midpoint is `M=(3,4)`, and each squared distance is 25:

- To `A`: `3² + 4² = 25`.
- To `B`: `(3−6)² + 4² = 25`.
- To `C`: `3² + (4−8)² = 25`.

The theorem is more general than this axis-aligned example. For `A=(1,−2)`, `B=(4,2)`, and `C=(−3,1)`, the side vectors `(3,4)` and `(−4,3)` have dot product 0. The midpoint is `(1/2,3/2)`, and each squared distance is `25/2`.

If instead `C=(−3,2)`, the dot product is 4 and the squared distances are `65/4`, `49/4`, and `49/4`. The right-angle condition is essential. Run `python -B check_examples.py` to check both examples and this changed-condition control using exact rational arithmetic.

## What the Lean theorem checks

Read the [exact statement and statement-review limits](statement.md), then the source in `GeometryGeneral.lean`.

The source defines the midpoint and squared distance for points in `ℝ × ℝ`. For any three points `A`, `B`, and `C`, when

`(Bₓ − Aₓ)(Cₓ − Aₓ) + (Bᵧ − Aᵧ)(Cᵧ − Aᵧ) = 0`,

the midpoint of `B` and `C` has equal squared distances to `A`, `B`, and `C`. There are no distinctness or nonzero-edge assumptions. The proof expands the three squared coordinate expressions and uses the zero dot product to cancel the cross terms.

This is a familiar coordinate theorem, not a novelty claim. It does not formalize coordinate equivalence for every abstract Euclidean plane or introduce a new geometry library.

## What was checked and what failed

An earlier exact-source run compiled this theorem and its separate `#print axioms` audit under Lean 4.33.1 and Mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474`. Both commands exited 0 in 176 seconds; the audit printed `[propext, Classical.choice, Quot.sound]`, with no `sorryAx` and no `native_decide`. The theorem OLEAN SHA-256 is `37a60c62309b4d79a80921905668c5d2510ebd0e39d53bf470f8237f60f3fcac`. The path-free receipt projection and historical output bytes are under `evidence/r04/`.

The two first runs timed out at 180 seconds while loading Mathlib imports, before theorem elaboration. The third exposed a Lean source error: real division required a `noncomputable section`; it exited 1 before theorem elaboration. The source was corrected without changing the proposition, and the fourth run passed. The failure record is preserved in [`evidence/attempt-history.json`](evidence/attempt-history.json); no timeout or compile failure was a mathematical counterexample.

The first execution of this new public-package runner stopped before dependency setup because of a Python variable-name error in the runner. Its exact path-free receipt is [`evidence/public-package-replay-r1-failure.json`](evidence/public-package-replay-r1-failure.json). The runner was corrected; the fresh public-package replay is a separate later record.

Run 04 was an owner-side exact-source compile with pinned Mathlib outputs mounted read-only; its path-free [receipt projection](evidence/r04-source-replay.json) and captured output hashes are preserved here. The package also includes a separate command that creates a fresh project/output directory and fetches the dependencies named by the checked-in lock. That command produces a receipt and logs in the caller-selected output folder; this repository does not claim a public-package replay until a receipt is linked here. A replay by the package maintainer is not an independent stranger review.

The statement review is recorded as YES for wording only. The review record's stored 64-character packet hash matches `statement.md`; the chat response displayed a 63-character digest, so exact message-to-packet hash binding is imperfect. The discrepancy remains visible in the evidence.

## Reproduce

Requirements: Python 3, Lean/Lake 4.33.1, and network access for the first public dependency and Mathlib cache downloads. Run from this folder and choose an output directory on a drive with enough free space:

    python -B replay.py --output-dir PATH_TO_A_NEW_DIRECTORY

The replay uses one Lake build job and a 3,600-second cap per stage. It does not impose an operating-system memory limit. The runner writes stage logs and a path-free JSON receipt into the output directory; it never changes the source package.

## Files

- `GeometryGeneral.lean` — exact all-coordinate theorem source.
- `Audit.lean` — prints the theorem's axiom dependencies.
- `statement.md` — plain statement, exact target location, and statement-review scope.
- `lakefile.toml`, `lake-manifest.json`, and `lean-toolchain` — pinned project and dependency setup.
- `check_examples.py` — exact worked examples and a changed-condition control.
- `replay.py` — fresh-output source replay runner.
- `verify_package.py` and `SHA256SUMS.txt` — offline package integrity and evidence checks.
- `evidence/r04-source-replay.json` — path-free summary of the first successful exact-source run.
- `evidence/attempt-history.json` — path-free record of the two timeouts, source fix, and pass.
- `evidence/public-package-replay-r1-failure.json` — preserved first-run setup failure in the new public runner.
- `evidence/r04/` — preserved successful-run output files, including the exact OLEAN and axiom text.
