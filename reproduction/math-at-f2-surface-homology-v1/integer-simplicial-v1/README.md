# Integer homology of the same three surfaces

This companion uses the **same three triangle lists** as the neighboring F₂ case and changes only the coefficient system: it computes their homology over the integers. That comparison makes a familiar distinction visible: the real projective plane has a `Z/2Z` torsion group in integer `H1`, while its first Betti number over F₂ is also 1. The F₂ number alone does not tell a reader whether that group is a free copy of `Z` or 2-torsion.

## What was computed

For each listed mesh, orient every edge from its lower-numbered vertex to its higher-numbered vertex and every face by increasing vertex order. Form the exact integer boundary maps `∂1 : C1 → C0` and `∂2 : C2 → C1`, and check `∂1∂2 = 0`. The code checks that the 1-skeleton is connected, each edge occurs in exactly two faces, and every vertex link is one cycle.

For `H1`, a spanning tree gives an integral basis for the cycle group: each edge outside the tree supplies one cycle coordinate. Project the face boundaries into those coordinates, then compute the Smith normal form of the resulting integer presentation matrix. A separate program checks its rational rank with exact fractions and computes the torsion order from the gcd of **all** maximal minors. For the only nontrivial torsion order here, 2, the group is necessarily `Z/2Z`.

| Explicit mesh | `H0` over `Z` | `H1` over `Z` | `H2` over `Z` | Existing F₂ Betti numbers |
| --- | --- | --- | --- | --- |
| Tetrahedral sphere | `Z` | `0` | `Z` | `(1, 0, 1)` |
| Periodic 3×3 torus | `Z` | `Z²` | `Z` | `(1, 2, 1)` |
| Six-vertex real projective plane | `Z` | `Z/2Z` | `0` | `(1, 1, 1)` |

For the projective plane, this is the point of the side-by-side calculation: over `Z`, `H1 = Z/2Z` and `H2 = 0`; over F₂, the listed Betti numbers are `b1 = 1` and `b2 = 1`. These are exact calculations for these three meshes, not new topology results and not a general homology engine.

## Run it

Requires Python 3.10 or newer and only the standard library. From the repository root, choose a **new output directory** so a replay does not overwrite the archived receipts:

First check the archived source and receipt bytes, then replay into a new output directory:

```sh
python -B reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/verify_hashes.py
python -B reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/verify_package.py --out path/to/fresh-output
```

The archived run checked 3,083 maximal minors across the three models. The replay command reruns the Smith-normal-form calculation, the independent rank/minor calculation, and seven negative-control checks: each implementation rejects a missing face, a disconnected mesh, and two spheres joined at one vertex; an incorrect triangle-boundary sign also makes `∂1∂2` nonzero. It writes path-free result and receipt JSON files to the chosen directory.

Run the focused regression tests from the repository root:

```sh
python -B -m unittest discover -s reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1 -p "test_*.py" -v
```

The archived `evidence/` files record one run. A new run should use a separate output directory; its elapsed time and receipt hashes will naturally differ.

## Boundaries

The input is the three finite meshes in [`../homology.py`](../homology.py). The package does not accept arbitrary surfaces or prove that these meshes classify all surfaces. It does not use Lean; both checks are exact Python integer/rational arithmetic. The surrounding [F₂ calculation](../README.md) and the [integer cellular examples](../integer-cw-v1/README.md) are separate finite models and methods.
