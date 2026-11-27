# A centered window for distinct Egyptian-fraction triples

Let `p` be prime and consider distinct positive integers `x < y < z` satisfying

\[
\frac4p=\frac1x+\frac1y+\frac1z.
\]

Write

\[
D(n)=4n^2-6n+1,
\qquad B=\min\{n\ge2:D(n)\ge p\}.
\]

The first-band result in the sibling [`prime-envelope-v1`](../prime-envelope-v1/README.md)
classifies triples below caps with `(s+1)^2 <= B`. This package uses a centered
coordinate to state the exact list under the two denominator-size gates and to
prove uniqueness under a wider, sharp sufficient condition.

## The result

Assume `p >= 43`, `B >= 16`, and `s >= 0`. Put `C=B+s`, and assume

\[
D(C)<2p,\qquad 4C-1<p. \tag{1}
\]

Then there is an exact correspondence between triples with `z <= Cp` and
integer pairs `(c,r)` satisfying

\[
c\ge B,\quad r\ge0,\quad c+r\le C,\quad c-r-1\ge1,
\qquad p=D(c)-4r(r+1). \tag{2}
\]

The pair produces

\[
a=c-r-1,\quad b=c+r,\qquad (x,y,z)=(ab,ap,bp).
\]

This is the general if-and-only-if list under (1); uniqueness is not needed for
this classification. Since `4r(r+1)` is divisible by 8 and
`D(c) ≡ 1-2c (mod 8)`, every possible center obeys

\[
c\equiv (1-p)/2\pmod4.
\]

Thus the centers occupy one residue class modulo 4. For any fixed `c`, at
most one nonnegative `r` can satisfy (2), because `r(r+1)` is strictly
increasing.

In addition, if

\[
s(s-7)<8B-2, \tag{3}
\]

then there is **at most one** triple under `z <= (B+s)p`.

The condition (3) is a sufficient uniqueness bound, not a new hypothesis for
the exact iff list. For large `p`, its allowed width is approximately
`s < 2 p^(1/4)` because `B ~ sqrt(p)/2`; the first-band condition allows about
`p^(1/4)/sqrt(2)` steps. The strict gates in (1) still apply. The finite sweep
below records their actual maximum together with (3) for each prime.

## Proof

Since `x<y<z`, the sum is less than `3/x`, so `x<3p/4<p` and `p` does not
divide `x`. Clearing denominators gives

\[
4xyz=p(xy+xz+yz).
\]

Since `p` is prime and `p` does not divide the smallest denominator `x`, at
least one of `y,z` is divisible by `p`. All three cannot be divisible by `p`,
because their reciprocal sum would be at most `3/p`. If exactly one of `y,z`
is divisible, write that denominator as `kp`. Rearranging the equation shows
that `p` divides `4k-1`. But `kp <= z <= Cp` gives `k <= C`, contradicting
`0 < 4k-1 < p` from (1). Hence

\[
y=ap,\qquad z=bp,\qquad 1\le a<b.
\]

Substitution gives

\[
(4ab-a-b)x=pab.
\]

Set `d=4ab-a-b`. Then `p` divides `d`, since `p` does not divide `x`. Also
`0<d<=D(b)`; here `d` increases with `a` and `a<=b-1`. The cap gives `b<=C`,
so `d<=D(C)<2p`. Thus `d=p`, and then `x=ab`. As `p<=d<=D(b)` and `B`
is the least index with `D(B)>=p`, we have `b>=B`.

Now set

\[
c=(a+b+1)/2,\qquad r=(b-a-1)/2.
\]

The identity `p=4ab-a-b` and oddness of `p` imply that `a+b` is odd, so `c`
and `r` are integers. The ordering gives `r>=0`; direct substitution yields
`a=c-r-1`, `b=c+r`, and

\[
4ab-a-b=D(c)-4r(r+1).
\]

Consequently `D(c)>=p`, hence `c>=B`, and `b<=C` is exactly `c+r<=C`.
This proves that every capped triple appears in (2).

Conversely, a pair satisfying (2) gives `a>=1` and `b>a`. Gate (1) gives
`b<=C<p`, so `ab<ap<bp`. The displayed identity makes `4ab-a-b=p`, which
substituted into the cleared equation verifies the original fraction identity.
The resulting triple has `z=bp<=Cp`. This proves the iff classification.

For uniqueness, suppose a pair from (2) has `c>=B+4`. Set `t=b-B=c+r-B`.
Then `4<=t<=s`, `b=B+t`, and

\[
a=2c-B-t-1\ge B-t+7.
\]

Since `4ab-a-b` increases with `a`,

\[
p=4ab-a-b\ge D(B)-4t(t-7)+32B-8.
\]

For `4<=t<=s`, `t(t-7)<=max(0,s(s-7))`. Condition (3) makes the right side
strictly greater than `D(B)`, contradicting `p<=D(B)`. Hence `B<=c<=B+3`.
Only one of these four consecutive integers lies in the required residue class
modulo 4. For that fixed center, at most one `r` works. Therefore at most one
triple lies below the cap.

### Sharpness at equality

The strict inequality in (3) cannot be replaced uniformly by `<=`, with the
other assumptions retained. The prime `p=25121` has `B=80`, `s=29`, and

\[
s(s-7)=638=8B-2,\quad D(109)=46871<2p,\quad 4(109)-1=435<p.
\]

Yet the two distinct triples

\[
(6320,1984559,2009680),\qquad
(6322,1457018,2738189)
\]

both satisfy the equation and the cap `z<=109p`. Their centers are 80 and 84.
Trial division through `sqrt(25121)=158` certifies primality; the Lean file
also proves this fact and both triples from the kernel-checked definitions.

## Relation to earlier work

The factor-pair structure is established in prior work. Under these caps the
resulting `a,b` are both below `p`; since any common divisor divides
`4ab-a-b=p`, this also gives `gcd(a,b)=1`. Monks and Velingker's
Theorem 2.4 states that fixed multipliers `j,k` determine at most one prime in
`4/p=1/x+1/(pj)+1/(pk)`; when the multipliers are coprime, its prime value is
`4jk-j-k`, exactly the relation used here. Their Theorem 2.1(k) gives a lower
bound of order `p^(3/2)/2` for the largest denominator. This package studies
the whole capped multiplier window for a fixed prime, with the centered
coordinates, residue-class constraint, sufficient uniqueness range, and
equality example made explicit. [Monks and Velingker (2008), Theorems 2.1 and
2.4](https://www.mathematicalgemstones.com/maria/papers/ErdosStraus.pdf).

The viewpoint also uses the established study of complementary divisor pairs
and close factors: Erdős and Rosenfeld analyze differences in the factor-pair
setting, and Chan's *Finding Almost Squares II* studies factorizations whose
factors are close to the square root. Here the factors
`4a-1` and `4b-1` multiply to `4p+1`, while their sum is `8c-6`; the center is
therefore a normalized factor-pair sum. The fourth-root window scale follows
from the explicit inequality (3), not from a claim that the cited works prove
this prime-specific statement. [Erdős and Rosenfeld (1997), *The
factor-difference set of integers*](https://bibliotekanauki.pl/articles/1390928.pdf)
· [Chan (2005), *Finding Almost Squares II*](https://arxiv.org/abs/math/0503438).

## Formalization and finite checks

The Lean 4 files in [`lean/`](lean/README.md) import the merged
[`prime-envelope-v1`](../prime-envelope-v1/lean/README.md) formalization. They
prove the exact center iff, the modulo-4 restriction, uniqueness among four
consecutive centers, and the sharp boundary example including primality of
25121. The checker prints the axiom set of each public theorem; the expected
set is `[propext, Classical.choice, Quot.sound]`.

Run the independent finite sweep from this directory:

```sh
python -B verify.py --limit 1000000 --direct-through 2000 --output verification.json
```

For each prime with `B>=16`, the checker computes the largest width allowed by
the two size gates in (1). It factors `4p+1` and compares every admissible
divisor-pair triple under that full cap with the center-square enumeration.
It separately checks the largest width that also satisfies (3), where the
triples are unique. For each covered prime through 2,000, a second enumeration
ranges over ordinary `x<y` in the original equation. Primes with `B<16` are
counted separately; their floor-cap hits are reported separately too. The
receipt is finite computation, not an unbounded proof or a solution of
Erdős–Straus outside the tested windows.

On the recorded range, the full two-size-gate caps cover 10,515,727 prime/width
pairs and produce 8,790 divisor-pair triples; 389 primes have multiple triples
there. Under the maximal certified uniqueness widths, 4,297 primes have a
triple, versus 1,495 among the same 78,357 eligible primes under the first-band
width. The stricter centered width therefore adds 2,802 primes with a triple
in this finite census. The mean certified slack is 52.84, compared with 16.15
for the first-band slack `floor(sqrt(B))-1`. These are counts on this range,
not density or asymptotic claims. The only second triple in the census that
enters at width equality is the `p=25121` boundary example.
