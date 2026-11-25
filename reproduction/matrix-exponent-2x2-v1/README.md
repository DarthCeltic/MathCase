# Matrix multiplication: a small worked example

## Try the arithmetic

Multiply the two matrices

```text
A = [[1, 2], [3, 4]]    B = [[5, 6], [7, 8]]
```

The usual row-by-column method gives

```text
[[1×5 + 2×7, 1×6 + 2×8],
 [3×5 + 4×7, 3×6 + 4×8]] = [[19, 22], [43, 50]].
```

That uses eight scalar multiplications and four additions. Strassen’s 2×2 identities use seven scalar multiplications. For this same input, the seven products are `p1 = -2`, `p2 = 24`, `p3 = 35`, `p4 = 8`, `p5 = 65`, `p6 = -30`, and `p7 = -22`. Recombining them gives 19, 22, 43, and 50 in the same four positions. Forming the seven products takes ten additions/subtractions, and recombining takes eight more: 18 total.

The example shows how a multiplication can be exchanged for more additions and subtractions. It is a calculation on one pair of integer matrices, not evidence for an asymptotic exponent.

## What the upstream paper claims

The pinned [OpenAI/math project snapshot](https://github.com/openai/math/tree/3344da59991ed94f9ba711217b29c1d760badfa6) includes the paper [The matrix multiplication exponent is nine-fourths](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/The-matrix-multiplication-exponent-is-nine-fourths-November-24-2026/paper.pdf). The paper claims the matrix multiplication exponent is 9/4, matching a previously known upper bound. Its [Lean scope note](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/107.md) describes formal targets for division-free polynomial identities over fields. This package attributes that result to the upstream paper/project; it does not independently verify individual-author identities.

The pinned challenge names `square_exponent`, `dual_exponent`, and `rectangular_exponent`. See [source-audit.json](source-audit.json) for the upstream file identifiers and recorded hashes. It contains hashes only, not upstream Lean source or lock contents.

## Run the local example

With Python 3.10 or later, run these commands from this folder:

```sh
python check_matrix_example.py
python -m unittest -v
python verify_package.py
```

The deterministic checker evaluates the ordinary and Strassen formulas and checks that both produce the same product. Its deliberately damaged expected-result control should fail:

```sh
python check_matrix_example.py --wrong-control
```

That local check does not contact the upstream repository or run Lean. The source hashes are a recorded identity receipt, not a live network check.

## Lean replay status

The bounded Lean-only attempt used the pinned Lean 4.34.1 toolchain and Mathlib revision listed in [source-audit.json](source-audit.json). Its 592-module source preflight was exact, but the sequential dependency build reached its 45-minute cap while compiling `OAI.LinearAlgebra.MatrixExponent.Control.BucketNet`, after 164 missing OAI modules had compiled and 35 existing OLeans had been reused. The exact solution target was **not reached**. Its theorem compilation and axiom audit are **not reached**, and the separate upstream Comparator/nanoda workflow was **not run**. See [attempt-02-summary.json](attempt-02-summary.json). This timeout is not a proof failure or a theorem verdict.

The local explanation, example checker, source-hash record, and replay-status summary were prepared by MathCase. The mathematical result is attributed at the upstream paper/project level.
