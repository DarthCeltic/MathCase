# A two-diagonal envelope for three unit fractions

Let `D(n)=4n^2-6n+1`, and for a prime `p` let `B` be the least integer `n>=2` with `D(n)>=p`. This note extends the project's [prime-envelope result](../prime-envelope-v1/README.md) from one admissible diagonal to two. It gives a sufficient-window uniqueness theorem with two arithmetic families. It is not a claim about solutions beyond the stated cap or about priority in the literature.

## Theorem

Let `p>=43` be prime and `B>=16`. Let `s>=0` be an integer such that

```text
D(B+s) < 2p,       4(B+s)-1 < p,       s(s-3) < 4B-1.
```

For positive integers `x<y<z` satisfying

```text
4/p = 1/x + 1/y + 1/z
```

and `z <= (B+s)p`, exactly one of the following can occur:

- There is no such triple; or
- There is exactly one such triple, with `b=B+t`, `a=B-t-1+2j`, and

  ```text
  0 <= t <= s,   j in {0,1},   1 <= a < b,
  D(B)-p = 4t(t+1) - j(8(B+t)-2),
  (x,y,z)=(ab, ap, bp).
  ```

Conversely, any admissible `t,j` satisfying the displayed equation gives that triple. Thus the condition characterizes all triples at or below the cap and implies at most one. The `j=0` and `j=1` right sides are respectively `0 mod 4` and `2 mod 4`; within each family the value is strictly increasing over its admissible `t` values (`j=1` is admissible only for `t>=1`). Hence no two parameters yield the same gap.

The three hypotheses have distinct jobs: `D(B+s)<2p` makes the two-multiple numerator equal to `p`; `4(B+s)-1<p` excludes a decomposition with exactly one denominator divisible by `p`; and the final inequality excludes shifts `j>=2`.

## Proof

Clearing denominators gives

```text
4xyz = p(xy+xz+yz).
```

At least one of `x,y,z` is divisible by `p`. If none were, reduction modulo `p` would give `p | 4xyz`, impossible. If all three were multiples, write them `Ap<Bp<Cp`; then `4=1/A+1/B+1/C <= 1+1/2+1/3 < 4`, a contradiction. Thus exactly one or two denominators are multiples of `p`.

If exactly one is a multiple, write it as `kp` and the others as `u,v`. The equation becomes `(4k-1)uv=kp(u+v)`. Since `p` divides neither `u` nor `v`, reduction modulo `p` implies `p | 4k-1`, so `4k-1>=p`. The cap gives `k<=B+s`, contradicting `4(B+s)-1<p`.

For exactly two multiples, write them `ap<bp`, and call the remaining denominator `x`. Define `d=4ab-a-b`. Clearing denominators gives `dx=pab`. Since `p` does not divide `x`, `p|d`. Also `d>b` for `1<=a<b`; hence `x<ap`, so the ordering is `x<ap<bp` and `z=bp`. From the cap `b<=B+s`. Since `d<=D(b)<=D(B+s)<2p` and `p|d` with `d>0`, it follows that `d=p`.

Write `b=B+t` with `0<=t<=s`. The equation `4ab-a-b=p` and oddness of `p` force `a+b` odd. Put `a_0=B-t-1`, which has the required parity, so `a=a_0+2j` for an integer `j`. Direct expansion gives

```text
4a_0b-a_0-b = D(B)-4t(t+1),
4ab-a-b = D(B)-4t(t+1)+2j(4b-1).
```

Equating this with `p` yields the theorem's gap equation.

If `j<=-1`, then

```text
p <= D(B)-4t(t+1)-2(4(B+t)-1)
  <= D(B)-8B+2 = D(B-1)-8 < p,
```

where `D(B-1)<p` follows from the definition of `B`. This is impossible.

If `j>=2`, then `p>=D(B)-4t(t+1)+4(4(B+t)-1)`. The hypothesis `s(s-3)<4B-1` implies `t(t-3)<4B-1` for every `0<=t<=s`: the convex quadratic has its maximum on this integer interval at an endpoint, and both endpoint values are strictly below `4B-1`. Equivalently,

```text
4t(t+1) < 2(8(B+t)-2),
```

so the `j=2` lower bound is strictly greater than `D(B)>=p`, again impossible. This verifies the edge values too: for `t=0` the inequality is `0<16B-4`; for `t=1` it is `8<16B+12`.

Therefore `j` is 0 or 1. For `j=0`, `a=B-t-1`; for `j=1`, `a=B-t+1`, which satisfies `a<b` exactly when `t>=1`. The gap values in the first family are `4t(t+1)`, strictly increasing from `t=0`. For the second family, `F(t)=4t(t+1)-(8(B+t)-2)` has `F(t+1)-F(t)=8t`, strictly positive for admissible `t>=1`. Their residues modulo 4 differ, so a gap cannot occur in both. This proves uniqueness.

Conversely, for an admissible pair satisfying the equation, set `x=ab`, `y=ap`, and `z=bp`. The relation `4ab-a-b=p` rearranges to `4ab=p+a+b`, which after division by `abp` is exactly the original equation. The hypotheses give `b<=B+s<p`, so `x<ap<bp`, and `z` is within or at the cap.

## A wider-window example

The first `j=1` prime in the theorem's range is `p=1471`, `B=20`, `s=7`, `t=7`, with `a=14`, `b=27`, and triple `(378,20594,39717)`. The regression check enumerates all admissible `t` for `B=16..20`; for `B>=21`, `p>D(B-1)>=D(20)=1481`. The wider `j=1` family also captures the useful case `p=1637`, `B=21`, `s=7`, `t=7`. Then

```text
D(20)=1481 < 1637 < D(21)=1639,
D(28)=2969 < 3274=2p,
4*28-1=111 < 1637,
7(7-3)=28 < 83=4*21-1,
D(21)-p=2=4*7*8-(8*28-2).
```

The unique triple at or below `28p` is `(420,24555,45836)`, whose largest denominator is exactly `28p`. It satisfies `420 < 15p < 28p` and the Egyptian-fraction identity. The earlier `j=0` equation would require the gap to be a multiple of 8 and misses this case.

Do not confuse this sufficient window with an exhaustive classification for the prime. For `p=887`, the maximal certified width is `s=5` and its cap has no solution, but `(230,8870,20401)` is a valid triple with multipliers `10,23`. The tempting `s=7` extension is out of scope because `D(23)=1979>1774=2p`; the checker returns no theorem prediction for that request.

A bounded exact scan of two-multiple representations with `1<=a<b<=700` and prime factors `43<=p<=5000` finds `p=821` as its first prime with two distinct triples among primes with `B>=16`. For example, `(209,18062,31198)` is beyond the theorem's `16p` cap; it comes from `a=22,b=38,d=4p`. The scan's finite bounds do not establish that `821` is the first prime with two decompositions overall, and it does not enumerate one-multiple representations.

## Exact replay

With Python 3.10 or newer, from this directory run:

```sh
python -B test_theorem.py
python -B verify.py --prime 1471
python -B verify.py --prime 1637 --slack 7
python -B verify.py --prime 887 --slack 7
python -B verify.py --limit 1000000 --direct-through 2000
python -B bounded_overlap.py
```

For each prime with `B>=16`, the checker chooses the maximal integer `s` satisfying all three theorem inequalities; for `B<16` it checks only the prior floor cap `Bp`. It enumerates every multiplier pair in each prime's own cap, testing every prime factor of `4ab-a-b` and exact integrality of `x=pab/d`. Independently, it enumerates ordinary `x<y` from the original equation for every prime through 2,000 using the same per-prime cap. The saved output reports 78,485 primes, 128 floor-only cases with `B<16`, 2,187 `j=0` hits, 888 `j=1` hits, 75,410 primes with no hit, and 290 direct ordinary-pair searches. The earlier `s=floor(sqrt(B))-1` window contained 1,502 hits; the maximal certified widths add 1,573. This is a finite exact replay, not a claim about solutions outside each tested cap. `verification.json` is its saved receipt; `bounded-overlap.json` records the explicitly finite overlap exploration.

The Lean sources in `lean/` formalize the classification iff with explicit coordinates and uniqueness at or below the cap. `TwoDiagonal.lean` imports `PrimeBand` from the sibling `prime-envelope-v1/lean/PrimeBand.lean`. After both sibling packages are present in a fresh clone, run from the repository root with Lean 4.33.1:

```sh
out="$(mktemp -d)"
LEAN_PATH="$out" lean -o "$out/PrimeBand.olean" research/number-theory/egyptian-fractions/prime-envelope-v1/lean/PrimeBand.lean
LEAN_PATH="$out" lean -o "$out/TwoDiagonal.olean" research/number-theory/egyptian-fractions/two-diagonal-envelope-v1/lean/TwoDiagonal.lean
LEAN_PATH="$out" lean research/number-theory/egyptian-fractions/two-diagonal-envelope-v1/lean/CheckTwo.lean
```

`CheckTwo.lean` reports the axiom dependencies for both formalized theorems: `[propext, Classical.choice, Quot.sound]`.

## Prior work and scope

The project's earlier [prime-envelope note](../prime-envelope-v1/README.md) discusses Monks and Velingker (2008), and cites the standard one-/two-multiple structural results. This note builds on that credited context and makes no priority claim. Independent scholarly review and literature-priority assessment remain open.
