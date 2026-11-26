# How small can the largest denominator be?

For every prime $p$ up to 10,000 with remainder 1 on division by 24, write $4/p$ as the sum of three distinct unit fractions. Among all triples of positive integers $x<y<z$ that work, how small can the largest denominator $z$ be?

For these 143 primes the sharp uniform bound is **$z \le 1032p$**. Only **$p=9601$** needs the full factor of 1,032. One optimal triple is

$$
\frac{4}{9601}=\frac{1}{2408}+\frac{1}{806484}+\frac{1}{9908232}.
$$

The [table](witnesses.csv) gives one minimizing triple per prime. It compares the best possible denominators over complete decompositions, which answers a different question from the [earlier campaign to find a witness for each filtered input](https://darthceltic.github.io/mathcase/work.html#egyptian). The constant applies to this finite prime set. The computation makes no claim of priority or of a bound beyond 10,000.

## Check the result

Run `python -B verify.py` in this folder. It uses Python 3 and the standard library. It builds the prime list with a sieve, checks the 143 identities in integers, and rules out every smaller largest denominator, row by row. For the hardest prime it also checks that changing the cap from 9,908,231 to 9,908,232 admits a solution.

To regenerate the table separately, run `python -B search.py rebuilt.csv` and then `python -B verify.py rebuilt.csv`. The generator and checker use different searches. A control using the valid triple (2,415, 403,242, 15,457,610) at $p=9601$ checks that a correct identity with a suboptimal denominator fails verification. Results are from local integer arithmetic.

## Why the search is exhaustive

Clearing denominators gives $4xyz=p(xy+xz+yz)$. Since $p$ is prime and odd, at least one denominator must be a multiple $kp$. Once a candidate with largest denominator $z$ is known, only multiples $kp \le  z$ can occur in an equally good or better triple.

The generator subtracts $1/(kp)$. The remaining fraction is $a/b=(4k-1)/(kp)$. For the two remaining denominators $u<v$,

$$
(au-b)(av-b)=b^2.
$$

The first factor is positive and less than $b$. The generator enumerates the positive divisor pairs of $b^2$, keeps the pairs that yield integer, distinct denominators, and compares the resulting triples. It stops with a certified minimum only after the next multiple exceeds the best largest denominator. A search ceiling that is reached prematurely raises an error. All 143 searches terminated with certificates.

The checker instead sets a cap $L=z-1$. For every multiple of $p$ up to $L$, it scans possible smaller residual denominators $u$ directly. The conditions $1/u+1/v=a/b$ and $u<v\le L$ give $u>b/a$, $u<2b/a$, and $u\ge bL/(aL-b)$ whenever $aL>b$. The checker recovers $v=bu/(au-b)$ by exact division. Exhausting these ranges proves that the next smaller cap fails. A witness at $z$ establishes the matching upper bound.

The prime-divisibility split is classical. Elsholtz and Tao discuss solutions classified by which denominators contain $p$; their paper studies solution counts. MathCase records the finite optimization above and its two executable checks. [Elsholtz and Tao, *Counting the number of solutions to the Erdős–Straus equation on unit fractions*](https://arxiv.org/abs/1107.1010)
