# Exact families inside `n = 1 mod 4`

These identities cover three unconditional infinite families and one
factor-conditioned family inside the `n = 1 mod 4` part of the Erdős–Straus
dossier. They are elementary constructions, not a novelty claim and not a
solution of the full conjecture.

For `n = 4k + 1`, set `q = k + 1 = (n + 3)/4` and `D = n q`. Then

```text
4/n = 1/q + 3/D,
```

because `1/q + 3/(nq) = (n+3)/(nq) = 4/n`.

## Family A: `n = 5 mod 8`

Write `n = 8a + 5`, with `a >= 0`. Then `q = 2a + 2` is even, so `D/2` is
an integer. Since `1/D + 1/(D/2) = 3/D`,

```text
4/n = 1/q + 1/D + 1/(D/2).
```

The denominators are strictly increasing when sorted: `q < D/2 < D`, since
`D/2 = n q / 2` and `n >= 5`.

## Family B: `n = 9 mod 12`

Write `n = 12b + 9`, with `b >= 0`. Then `q = 3b + 3` and `D = n q` are
divisible by `3`; set `t = D/3`. Using `1/t = 1/(t+1) + 1/(t(t+1))`,

```text
4/n = 1/q + 1/(t+1) + 1/(t(t+1)).
```

Here `t > q` because `t = n q / 3` and `n >= 9`, so the denominators are
positive and distinct, with `q < t+1 < t(t+1)`.

## Family C: `n = 5 mod 12`

Write `n = 12c + 5`, with `c >= 0`, and again set `q = (n+3)/4` and
`D = n q`. Since `n = 2 mod 3`, its prime factorization contains a prime
`p = 2 mod 3`; otherwise its product would be `1 mod 3`. The denominator `q`
is also `2 mod 3`, so `D = 1 mod 3`. Set `v = D^2/p` and

```text
x = (D+p)/3,    y = (D+v)/3.
```

Both are integers: `p` divides `D`, `p = 2 mod 3`, and
`v = D^2/p = 2 mod 3`. Also `p v = D^2`, so

```text
(3x-D)(3y-D) = p v = D^2,
9xy - 3D(x+y) + D^2 = D^2,
1/x + 1/y = 3/D.
```

Therefore `4/n = 1/q + 1/x + 1/y`. The denominators are positive and
distinct: `D > p`, so `x < y`; and `x > q` because
`D+p-3q = q(n-3)+p > 0` for `n >= 5`.

## Family D: `n = 1 mod 12` with a factor `2 mod 3`

Write `n = 12d + 1`, with `d >= 1`, and set `q = (n+3)/4 = 3d+1` and
`D = n q`. If either `n` or `q` has a prime factor `p = 2 mod 3`, then
`p | D` and `D = 1 mod 3`. With `v = D^2/p`, set

```text
x = (D+p)/3,    y = (D+v)/3.
```

As in Family C, both denominators are integers and `p v = D^2` gives
`1/x + 1/y = 3/D`. Therefore `4/n = 1/q + 1/x + 1/y`. For `n >= 13`,
`D > p`, `x < y`, and `x > q`, so all three denominators are positive and
distinct. This family is conditional on finding the stated prime factor; it
does not claim that every `n = 1 mod 12` meets that condition.

## Coverage boundary

Among the six residue classes modulo `24` that satisfy `n = 1 mod 4`, Family
A covers `5, 13, 21 mod 24`, and Family B covers `9, 21 mod 24`. Their union
covers four of those six classes; the overlap is `21 mod 24`. Family C covers
`5, 17 mod 24` and overlaps Family A at `5 mod 24`. Together the three
families cover `5, 9, 13, 17, 21 mod 24`; only `1 mod 24` remains outside
the unconditional constructions. Family D also covers `n = 1 mod 24` whenever
`n` or `q=(n+3)/4` has a prime factor `2 mod 3`; because Family A covers
`13 mod 24`, this leaves only `n = 1 mod 24` values for which both `n` and `q`
have only prime factors `1 mod 3` outside these constructions. This is a useful
reduction of the residue search, not a proof for every `n = 1 mod 4`.

The accompanying offline checker evaluates 100,000 exact rational cases in
each unconditional family by default and 100,000 candidates for Family D. It
verifies positivity and distinctness of all three denominators, including the
selected prime factors in Families C and D. The Family D receipt records both
eligible and excluded candidates. The algebra above proves every included
identity; the finite checker is a reproducibility and regression receipt.

Run locally with:

```powershell
python scripts/run_egyptian_fraction_n1mod4_subfamilies_check.py `
  --output $env:TEMP\mathcase-egyptian-n1mod4-replay.json
python -m unittest scripts.test_egyptian_fraction_n1mod4_subfamilies_check -v
```

No network, model, provider, novelty, or full-conjecture claim is involved.
