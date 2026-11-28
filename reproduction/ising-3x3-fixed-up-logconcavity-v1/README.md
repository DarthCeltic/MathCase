# A smaller finite Ising log-concavity check

## What question did we test?

For a fixed number of up spins, do the counts of configurations by broken neighboring edges form a log-concave sequence? The earlier 4×3 example already showed that this pattern can fail. This package checks the smaller periodic 3×3 torus.

## What did the check find?

Yes, the same kind of finite failure already appears on 3×3. With exactly four up spins—and, by flipping every spin, exactly five—the counts at 8, 10, and 12 broken edges are:

```text
45, 36, 45
```

Log-concavity would require `36² ≥ 45×45`. Instead, `1,296 < 2,025`.

The other eight fixed-up-spin profiles passed this finite test. The checker enumerates all `2^9 = 512` labeled assignments on the periodic grid, and an independent 8-state column-transfer dynamic program reproduces every fixed-up-spin profile. Each row has the expected `choose(9,u)` configurations.

## Zero-bin rule

The primary profile uses the naturally spaced even broken-edge counts because odd counts are impossible on this torus. Leading and trailing zero bins are trimmed. Interior zero bins are retained and count as a failure when their two neighbors are positive. The raw integer-bond profile is also included in the receipt for transparency.

## Reproduce it

From the root of a MathCase checkout with Python 3:

```text
python -B reproduction/ising-3x3-fixed-up-logconcavity-v1/verify_width3_fixed_up.py --output reproduction/ising-3x3-fixed-up-logconcavity-v1/evidence/runs/your-run/receipt.json
```

The checked-in `precomputed-receipt.json` records the same result before a fresh run. Two fresh outputs are preserved under `evidence/runs/3x3-main-replay-2026-11-27/` and `evidence/runs/3x3-main-replay-2026-11-27-r2/`; the first packaging failure is preserved beside them. A fresh run of this checked-in script from an isolated worktree at public main commit `bfc1ab3` is recorded at `evidence/runs/3x3-main-replay-2026-11-28/receipt.json`. It reproduces the same finite result with the same two methods in the checker; it is a rerun, not an external review. `SHA256SUMS.txt` binds the source, explanation, and recorded receipts.

## Limits

This is an exact finite computation on one 3×3 torus. It is not Lean-verified, does not establish a general theorem or a thermodynamic-limit statement, and makes no novelty or priority claim.
