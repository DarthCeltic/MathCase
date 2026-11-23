# Egyptian fractions when n = 28k + 21

At (k=0) this starts with 4/21. One exact answer is **1/7 + 1/22 + 1/462**. Another is **1/6 + 1/63 + 1/126**. Each route below works for every nonnegative integer k.

The saved construction sets n = 28k+21, x = 7(k+1) and t = n(k+1). Because 4x = n+7 and nx = 7t, the difference 4/n − 1/x is exactly 1/t. Splitting that difference as 1/(t+1) + 1/[t(t+1)] gives the first construction.

A second route scales 4/7 = 1/2 + 1/21 + 1/42. For every positive m, the witnesses for 4/(7m) are (2m, 21m, 42m). Taking m = 4k+3 gives the second construction above.

**Reproduce.** With Python 3 and Lean 4.33.1 installed, run `python verify_family.py --k 2 --receipt my-result.json` from this directory. Family28.lean is the exact original MathCase source. FamilyWitness.lean imports it, checks positivity and strict denominator ordering, and proves the full cross-multiplied equality for the three actual unit fractions. It also proves the scaling construction. The runner checks the declared axioms, rejects the changed denominator 41m, and independently evaluates integer and rational arithmetic examples.

These are infinite families within the classical Erdős–Straus problem. The full conjecture asks for a representation for **every** integer n ≥ 2. A number divisible by 7 is already covered by scaling the small solution at 7. This is a reproducible proof of a known kind of identity, with no claim of priority. [Elsholtz and Tao on the Erdős–Straus equation](https://doi.org/10.1017/S1446788712000468)
