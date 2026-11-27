# Integer homology from four standard surface cell models

This is the integer-coefficient companion to the neighboring [F₂ triangulation check](../README.md). The two calculations answer different questions: F₂ Betti numbers show dimensions after reducing coefficients modulo two; integer homology can also display torsion such as `Z/2`.

## What the calculation says

For the listed one-vertex cell descriptions, the integer homology groups are:

| Surface model | One face boundary | Integer homology `(H0, H1, H2)` |
| --- | --- | --- |
| Sphere | empty word | `(Z, 0, Z)` |
| Real projective plane | `aa` | `(Z, Z/2, 0)` |
| Torus | `abAB` | `(Z, Z², Z)` |
| Klein bottle | `abAb` | `(Z, Z ⊕ Z/2, 0)` |

Here lowercase letters traverse an edge in its chosen direction and uppercase letters traverse it backwards. For the Klein bottle, `abAb` has signed edge counts `(0, 2)`, so the boundary relation is `2b = 0`. That leaves one unrestricted generator `a` and one order-two class `b`, giving `H1 ≅ Z ⊕ Z/2`. The projective-plane word `aa` similarly gives the relation `2a = 0`.

## Run the checks

Requires Python 3.10+ and only the standard library. From the repository root:

```sh
python -B reproduction/math-at-f2-surface-homology-v1/integer-cw-v1/verify_integer_cw.py --receipt reproduction/math-at-f2-surface-homology-v1/integer-cw-v1/evidence/primary-run.json
python -B reproduction/math-at-f2-surface-homology-v1/integer-cw-v1/independent_check.py --receipt reproduction/math-at-f2-surface-homology-v1/integer-cw-v1/evidence/independent-run.json
python -B reproduction/math-at-f2-surface-homology-v1/integer-cw-v1/test_integer_cw.py
```

The first two commands produce JSON receipts with exact source and input hashes. The focused tests cover all four expected groups, a wrong Klein attaching word, a false `Z/3` projective-plane claim, and invalid edge labels.

## Scope and limits

This is exact arithmetic on four explicitly listed cellular chain models. It assumes the listed cell descriptions are the standard ones for the named surfaces. It does not build those surfaces from first principles, prove the general cellular-homology theorem, or check a Lean formalization. These homology groups are classical; this package is a reproducible worked computation, not a new topology result. The neighboring F₂ package checks three different explicit triangulations, including a projective-plane example whose mod-two Betti numbers do not display its integer `Z/2` torsion.

For background, see Hatcher, *Algebraic Topology*, Section 2.2: <https://pi.math.cornell.edu/~hatcher/AT/AT.pdf>.
