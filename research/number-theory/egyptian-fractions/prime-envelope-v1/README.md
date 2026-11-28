# How close can three unit fractions come to the smallest allowed largest denominator?

For a prime $p$, consider triples of distinct positive integers $x<y<z$ with $4/p=1/x+1/y+1/z$. A lower bound for $z$ leaves another question. Which primes admit a triple just above that bound? In the band described below, an integer square test answers this question and gives the only possible triple.

For example, the primes **881 and 883** have the same lower index, 16. For 881 the first attainable largest denominator is $19p=16,739$, with $(x,y,z)=(228,10572,16739)$. For 883 no triple has $z$ as small as $19p=16,777$.

## Statement

Set $D(b)=4b^2-6b+1$ and let $B$ be the least integer $b\ge2$ with $D(b)\ge p$.

1. For every prime $p\ge43$, every triple satisfies $z\ge Bp$. Equality holds for some triple exactly when $p=D(B)$. In that case the only triple at equality is $(B(B-1),(B-1)p,Bp)$.
2. Suppose $B\ge16$. Choose any nonnegative integer $s$ with $(s+1)^2\le B$. Some triple satisfies $z\le (B+s)p$ exactly when
   $$D(B)-p=4t(t+1)\quad\text{for an integer }0\le t\le s.$$
   In that case there is exactly one triple below or at this cap. Put $a=B-t-1$ and $b=B+t$ to obtain $(x,y,z)=(ab,ap,bp)$.

Thus the allowed differences start $0,8,24,48,80$. Equivalently, $1+D(B)-p$ must be an odd square $(2t+1)^2$ with $t$ in the stated range. If the test fails, a solution could still have a larger denominator. No assertion here requires the Erdős–Straus conjecture.

## Proof

The four central finite statements also have a Lean 4 formalization in [`lean/`](lean/README.md): the floor bound, its equality characterization, the exact offset classification below each stated cap, and uniqueness of the triple under that cap. The formalization assumes integer primality, the band inequalities $D(B-1)<p\le D(B)$, and the stated size conditions; it proves the algebraic and Diophantine claims from those hypotheses. It does not formalize the sparsity/density estimates in the next section or settle literature priority, which remain ordinary mathematical arguments and open review questions.

Clearing denominators gives $4xyz=p(xy+xz+yz)$. At least one denominator is a multiple of $p$. All three cannot be multiples, since multiplying the original identity by $p$ would give 4 as a sum of three reciprocals of positive integers.

If there is exactly one multiple $kp$, call the other two denominators $u,v$. Then $(4k-1)uv=kp(u+v)$, and $p$ divides neither $u$ nor $v$. Hence $p\mid 4k-1$ and $k\ge(p+1)/4$.

If exactly two are multiples, write them as $ap<bp$ and call the remaining denominator $x$. Set $d=4ab-a-b$. Then $dx=pab$. Because $p$ does not divide $x$, it divides $d$. Also $d>b$ for $1\le a<b$, so $x<ap$ and $z=bp$. Increasing $a$ to $b-1$ shows $p\le d\le D(b)$. In particular, $b\ge B$.

For the first claim, $p\ge43$ implies $B\ge5$. We have $D(B-1)<p$, $D(B-1)>4B-1$, and $D(B)<2D(B-1)$ for $B\ge5$ (expand the quadratics). The single-multiple case therefore exceeds the cap $Bp$. If $b=B$, the positive multiple $d$ of $p$ is less than $2p$, so $d=p$. Since $p$ is odd, $a$ and $B$ have opposite parity. If $a\le B-3$, then $d\le D(B-1)-8<p$. Thus $a=B-1$, giving the claimed equality and triple. Conversely those denominators give the original identity whenever $D(B)$ is prime.

For the second claim, $s\le B/4$. For $B\ge16$ we have $2D(B-1)>25B^2/4$, since their difference is $[7B(B-16)+88]/4$. This also gives $p>D(B-1)>4(B+s)-1$, which excludes a single multiple at the proposed cap. In the two-multiple case write $b=B+t$ with $0\le t\le s$. Then $d\le D(b)<4(B+s)^2\le25B^2/4<2p$. Again $d=p$.

Set $a_0=B-t-1$. At this choice, $d_0=4a_0b-a_0-b=D(B)-4t(t+1)$. The parity condition forces $a-a_0$ to be even. Moving $a$ by two changes $d$ by $2(4b-1)$. If $a\le a_0-2$, then $d\le D(B)-8B+2<D(B-1)$. If $a\ge a_0+2$, then $d\ge D(B)-4t(t+1)+8b-2>D(B)$ since $t(t+1)\le B$. Only $a=a_0$ remains. Conversely when $d_0=p$ the three denominators $(a_0b,a_0p,bp)$ solve the original equation and are distinct. Since $t(t+1)$ increases strictly, at most one such triple exists under the cap.

## How sparse are the primes that come this close?

For any fixed $s$, only $O_s(\sqrt X)$ primes $p\le X$ can have a triple with $z\le (B+s)p$. For all sufficiently large $B$ the second claim applies and permits at most $s+1$ primes for each $B$. There are $O(\sqrt X)$ possible values of $B$.

A wider window also misses almost every prime. Write $\log$ for the natural logarithm. The number of primes $p\le X$ that admit a triple with $z\le (1/2+1/\log^2 p)p^{3/2}$ is $O(X/\log^2 X)$. Indeed, for large $p$ the single-multiple case exceeds this cap. In the other case $b\le(1/2+1/\log^2 p)\sqrt p$ gives $d<4b^2<2p$, hence $p=4ab-a-b$. It follows that $a>p/(4b)$ and
$$b-a < (b-\sqrt p/2)(1+\sqrt p/(2b))\le 2\sqrt p/\log^2 p.$$
For $\sqrt X<p\le X$ we have $b\le\sqrt X$ for large $X$ and $b-a\le8\sqrt X/\log^2 X$. Each integer pair determines at most one $p$, so counting the pairs gives the bound. Smaller primes add at most $\sqrt X$. Dividing by the prime counting function, which is asymptotic to $X/\log X$, gives relative density zero among the primes.

## Replay

### Check one visitor-supplied prime and offset

`check_input.py` evaluates the exact offset criterion stated above for one
structured input `(p,s)`. It uses deterministic integer arithmetic; it does
**not** launch Lean or create a new formal proof. The result is classified as
an attained triple, no triple **under the requested cap**, or unsupported
input. In particular, a negative result does not exclude larger denominators.
The receipt binds the exact `PrimeBand.lean` and evaluator bytes by SHA-256,
and has its own integrity digest. Verification reruns the arithmetic and
checks those source pins against this checkout.

```sh
python -B check_input.py --prime 881 --offset 3 --out 881.json
python -B check_input.py --verify 881.json
python -B check_input.py --prime 883 --offset 3 --out 883.json
python -B check_input.py --prime 887 --offset 3 --out new-input.json
python -B check_input.py --prime 884 --offset 3 --out unsupported.json
python -B -m unittest test_check_input.py
```

From the repository root, the same two-step check is available through the
standard catalog:

```sh
python -B scripts/run_public_case.py prime-envelope --prime 881 --offset 3
```

The launcher creates a new run directory, writes `result.json`, and then runs
the receipt verifier against that exact file.

For `p=881,s=3`, the cap is `19p` and the unique triple is
`(228,10572,16739)`. For `p=883,s=3`, the receipt says only that no triple
exists through `19p`; it does not rule out a larger one. Composite or
out-of-theorem inputs are marked `UNSUPPORTED_INPUT`, never as mathematical
exclusions. A changed receipt is rejected by `--verify`.

The package theorem version is `prime-envelope-v1`; its Lean source is
[`lean/PrimeBand.lean`](lean/PrimeBand.lean), whose existing Lean replay and
axiom report are documented in [`lean/README.md`](lean/README.md). The per-
input receipt records that this command is arithmetic evaluation of the
Lean-classified rule, not a fresh Lean run.

From this directory run the following with Python 3.10 or newer.

```sh
python -B verify.py --prime 881
python -B verify.py --prime 883
python -B verify.py
```

The default sweep covers all **78,485 primes from 43 through one million**. It found 156 attaining $Bp$, another 1,346 inside the tested band, and 76,983 with no triple inside it. For $B<16$ the tested band is the single cap $Bp$. The checker enumerates all candidate multiplier pairs and every prime divisor of $4ab-a-b$, verifies integrality and reconstructs the triple. A second search enumerates ordinary $x<y$ without using the multiplier argument for all 290 primes from 43 through 2,000. The program also compares every one of the project’s 143 earlier exact minima. [Saved results](verification.json) · [Earlier minimax table](../least-largest-denominator-v1/README.md)

## Prior work and review

Monks and Velingker (2008) already prove a lower bound of order $p^{3/2}/2$ for the largest denominator. Their Theorem 2.1(k) gives the integer multiplier $\lfloor(5+\sqrt{4p-3})/4\rfloor$, allowing repeated denominators. Their Theorem 2.4 also identifies the only possible prime when the two multipliers $a,b$ are fixed. They include a table of these values. The distinct-denominator question here fixes the prime and asks for the exact attainable multipliers in a whole band above its floor. [Monks and Velingker, Theorems 2.1 and 2.4](https://www.mathematicalgemstones.com/maria/papers/ErdosStraus.pdf)

Run `python -B compare_prior.py` to reproduce the comparison. Enumerating multiplier pairs with their Theorem 2.4 gives exactly the same 1,502 primes with a triple in the tested band. Among the 78,485 primes checked, the two floor multipliers coincide 39,335 times. For 39,150 primes the distinct-denominator floor is one higher. These counts compare the displayed bounds under their respective hypotheses. They establish neither priority for our specialization nor the existence of a triple outside the tested band.

Elsholtz and Tao develop the one- and two-multiple classifications and note that the largest denominator is divisible by $p$. Chamberland gives a structural criterion for two-multiple decompositions. These ideas predate this calculation. The specific propositions offered for review here are the exact offsets and uniqueness under the stated cap, and the resulting scarcity estimate. Literature priority and independent review of these statements remain open. The proof above is an ordinary mathematical argument, and the replay is an integer calculation. [Elsholtz and Tao, section 2](https://doi.org/10.1017/S1446788712000468) · [Chamberland, 2026](https://math.colgate.edu/~integers/aa42/aa42.pdf)
