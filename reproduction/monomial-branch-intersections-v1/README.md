# Local intersection multiplicities of binomial plane curves

This package checks a classical exact formula for intersections of two binomial plane curves over small prime fields. The equations in the family need not be irreducible individually; any shared component is identified explicitly and is not assigned a finite local intersection multiplicity:

```text
f = y^m - A*x^n
 g = y^a - B*x^b
```

with positive exponents and nonzero `A,B` in `F_p`. The formula is the order of the binomial resultant

```text
Res_y(f,g) = (A^(a/d) * x^(n*a/d) - B^(m/d) * x^(b*m/d))^d,
d = gcd(m,a),
```

up to an overall sign. If `n*a != m*b`, the order is `min(n*a,m*b)`. If the weights tie and the two coefficients differ in `F_p`, the order is that common weight. If both tie, the resultant vanishes and the branches share a component, so there is no isolated local intersection multiplicity. For an isolated pair, the order equals the length of the local quotient, by the classical local intersection/resultant theorem; this is not a new formula or a priority claim. Reference: William Fulton, *Algebraic Curves*, Chapter 3, Section 3 (intersection numbers).

## Exact finite checks

[`intersections.py`](intersections.py) evaluates eleven explicit cases over `F₂`, `F₃`, and `F₅`. For each, it constructs the truncated local quotient

```text
F_p[x,y] / (f,g,(x,y)^N)
```

by a Macaulay matrix on monomials `x^i y^j` with `i+j < N`, and computes its rank by exact modular elimination. The isolated cases use `N=L`, where `L` is the predicted length. Since the resultant says the local ideal is m-primary and its length is `L`, the standard finite-length/Nakayama bound gives `m^L=0`; the cutoff therefore captures the full local quotient. The runner also checks the dimension one cutoff later and records the Hilbert-function increments. This plateau check is applied only after the isolated case is established; it is not used to infer isolation.

The common-component cases are separated before interpreting quotient dimensions. Their resultant is identically zero, which is the algebraic reason the intersection is not isolated. The finite truncated dimensions at cutoffs 4 through 9 are included as data only; no stabilization claim is drawn from two equal dimensions, and no finite scan is offered as a proof of non-isolation.

[`monomial_graph_control.py`](monomial_graph_control.py) is an independent, standard-library checker. Instead of linear algebra, it counts connected components of the truncated monomial relation graph, tracks scalar consistency around cycles, and removes components killed at the degree boundary. It sweeps every `m,n,a,b ∈ {1,2,3}` and every nonzero `A,B` for `p=2,3,5`: 1,596 isolated tuples agree with the predicted length at cutoffs `L` and `L+1`; 105 common-component tuples show growth from cutoff 5 to 9. The latter finite growth is supporting data only; the resultant criterion supplies the common-component classification.

## Selected examples

| Example | Field and branches | Result |
| --- | --- | --- |
| Transverse lines | `F₃`: `y-x`, `y-2x` | isolated, multiplicity 1 |
| Tangent parabolas | `F₃`: `y-x²`, `y-2x²` | isolated, multiplicity 2 |
| Coincident tangent branch | `F₃`: `y-x²`, `y-x²` | common component |
| `x=y²`, `x²=y³` | `F₅` | isolated, multiplicity 3 |
| `x=y²`, `x²=y⁴` | `F₅` | common component |
| `x=y²`, `x²=y⁵` | `F₅` | isolated, multiplicity 4 |
| `x=y²`, `x²=y⁶` | `F₅` | isolated, multiplicity 4 |
| Equal weight, unequal coefficients | `F₃`: `y²-x`, `y⁴-2x²` | isolated, multiplicity 4 |

The complete eleven-case receipt is [`verification.json`](verification.json). It includes resultant weights and coefficient checks, Macaulay dimensions/ranks, Hilbert increments, and the cutoffs used for each case.

## Reproduce

Requires Python 3.10 or newer and only the standard library. From the repository root:

```sh
python -B reproduction/monomial-branch-intersections-v1/intersections.py
python -B reproduction/monomial-branch-intersections-v1/monomial_graph_control.py
```

The first command prints its case results and regenerates the JSON receipt. The second prints the independent sweep totals. Both commands are deterministic. Scope is limited to these exact finite computations and the cited classical local formula; this package does not claim a general symbolic algebra system.
