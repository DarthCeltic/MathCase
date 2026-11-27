# Integer homology for four explicit surfaces

This companion computes integer homology for the **same three triangle lists** as the neighboring F₂ case and adds one explicit 3×3 twisted-grid triangulation of the Klein bottle. That comparison makes a familiar distinction visible: the real projective plane has a `Z/2Z` torsion group in integer `H1`, while its first Betti number over F₂ is also 1. The F₂ number alone does not tell a reader whether that group is a free copy of `Z` or 2-torsion.

## What was computed

For each listed mesh, orient every edge from its lower-numbered vertex to its higher-numbered vertex and every face by increasing vertex order. Form the exact integer boundary maps `∂1 : C1 → C0` and `∂2 : C2 → C1`, and check `∂1∂2 = 0`. The code checks that the 1-skeleton is connected, each edge occurs in exactly two faces, and every vertex link is one cycle.

For `H1`, a spanning tree gives an integral basis for the cycle group: each edge outside the tree supplies one cycle coordinate. Project the face boundaries into those coordinates, then compute the Smith normal form of the resulting integer presentation matrix. A separate program checks its rational rank with exact fractions and computes the torsion order from the gcd of **all** maximal minors. For the only nontrivial torsion order here, 2, the group is necessarily `Z/2Z`.

| Explicit mesh | `H0` over `Z` | `H1` over `Z` | `H2` over `Z` | Existing F₂ Betti numbers |
| --- | --- | --- | --- | --- |
| Tetrahedral sphere | `Z` | `0` | `Z` | `(1, 0, 1)` |
| Periodic 3×3 torus | `Z` | `Z²` | `Z` | `(1, 2, 1)` |
| Six-vertex real projective plane | `Z` | `Z/2Z` | `0` | `(1, 1, 1)` |
| Twisted 3×3 Klein grid | `Z` | `Z ⊕ Z/2Z` | `0` | `(1, 2, 1)` |

For the projective plane, this is the point of the side-by-side calculation: over `Z`, `H1 = Z/2Z` and `H2 = 0`; over F₂, the listed Betti numbers are `b1 = 1` and `b2 = 1`. These are exact calculations for the listed finite models, not new topology results and not a general homology engine.

## A torus and Klein bottle with the same mesh size

The Klein example starts with a 3×3 square grid. Identify `(i+3,j)` with `(i,j)` and identify `(i,j+3)` with `(-i,j)`, then split each square by the documented diagonal rule. The checker confirms this is a connected closed triangulated surface: 9 vertices, 27 edges, 18 faces, and one cycle around every vertex. The existing F₂ checker finds Betti numbers `(1,2,1)` and verifies nonorientability. Over `Z`, the exact answer is `H1 = Z ⊕ Z/2Z` and `H2 = 0`.

The neighboring periodic 3×3 torus has the same counts `(9,27,18)`, but its integer `H1` is `Z²` and `H2 = Z`. The Klein result also matches the group from the separate [standard CW calculation](../integer-cw-v1/README.md). This is a comparison of two explicit models, not a claim that the code recognizes arbitrary spaces.

The replay also checks the adjacent CW package's listed source, model, and receipt hashes, compares its two saved Klein results, and checks a small path-free report of fresh CW-source runs. It verifies that the reported source and model hashes match the CW package manifest, that the listed checks and negative controls passed, and that all five focused tests passed. The report records the source checkout and hashes of the raw receipts. To rerun the CW calculations themselves, use the commands in the linked CW README; `verify_package.py` checks their recorded evidence rather than launching them again.

## Run it

Requires Python 3.10 or newer and only the standard library. From the repository root, first verify the listed source and evidence bytes, then replay into a **new output directory** so a run cannot overwrite the archived receipts:

```sh
python -B reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/verify_hashes.py
python -B reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1/verify_package.py --out path/to/fresh-output
```

The archived run checked 3,102 maximal minors across the four models. The replay command reruns the Smith-normal-form calculation, the independent rank/minor calculation, and seven negative-control checks: each implementation rejects a missing face, a disconnected mesh, and two spheres joined at one vertex; an incorrect triangle-boundary sign also makes `∂1∂2` nonzero. It writes path-free result and receipt JSON files to the chosen directory.

Run the focused regression tests from the repository root:

```sh
python -B -m unittest discover -s reproduction/math-at-f2-surface-homology-v1/integer-simplicial-v1 -p "test_*.py" -v
```

The archived `evidence/` files record the four-model run. The preceding three-model receipts remain in the earlier repository history. A new run should use a separate output directory; its elapsed time and receipt hashes will naturally differ. The package hash check covers the listed package files, including the CW cross-check report; the linked CW package has its own manifest.

## Boundaries

The first three inputs are the finite meshes in [`../homology.py`](../homology.py); the Klein grid is generated by a second explicit quotient rule in each checker. The package does not accept arbitrary surfaces or prove that these meshes classify all surfaces. It does not use Lean; both checks are exact Python integer/rational arithmetic. The surrounding [F₂ calculation](../README.md) and the [integer cellular examples](../integer-cw-v1/README.md) are separate finite models and methods.
