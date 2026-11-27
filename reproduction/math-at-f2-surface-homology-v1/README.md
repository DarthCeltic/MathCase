# F2 homology of three triangulated surfaces

This small standalone case computes simplicial homology over the two-element field `F₂` for three explicit closed triangulated surfaces: the tetrahedral sphere, a periodic 3×3 triangulation of the torus, and the six-vertex triangulation of the real projective plane.

It forms the simplicial boundary maps `∂₁ : C₁ → C₀` and `∂₂ : C₂ → C₁` exactly with bit vectors, verifies `∂₁∂₂ = 0`, and computes their ranks by binary row elimination. As an independent check, it enumerates each map's image under XOR and checks that the image cardinality is the same power of two. It also checks that every edge lies in exactly two triangles, the 1-skeleton is connected, the Euler characteristic agrees with the Betti numbers, and face orientations propagate consistently exactly for the orientable examples.

## Results

| Surface | `(vertices, edges, triangles)` | `(rank ∂₁, rank ∂₂)` | `(b₀, b₁, b₂)` over `F₂` | `χ` |
| --- | ---: | ---: | ---: | ---: |
| Tetrahedral sphere | `(4, 6, 4)` | `(3, 3)` | `(1, 0, 1)` | `2` |
| Periodic 3×3 torus | `(9, 27, 18)` | `(8, 17)` | `(1, 2, 1)` | `0` |
| Six-vertex real projective plane | `(6, 15, 10)` | `(5, 9)` | `(1, 1, 1)` | `1` |

The real projective plane is nonorientable, but its top homology over `F₂` is nonzero: modulo two, orientation signs coincide. The code obtains `b₂=1` directly from the boundary rank.

## Reproduce

Requires Python 3.10 or newer and only the standard library. From the repository root:

```sh
python -B reproduction/math-at-f2-surface-homology-v1/homology.py
```

The command prints a short PASS summary and regenerates [`verification.json`](verification.json). The file contains the counts, ranks, Betti numbers, Euler characteristics, and the checked structural properties.

## Explicit triangulations

- Sphere: the four triangular faces on vertices `0,1,2,3`, namely all 3-element subsets.
- Torus: vertices `(i,j)` with both coordinates modulo 3. For each square with lower-left `(i,j)`, use triangles `((i,j),(i+1,j),(i+1,j+1))` and `((i,j),(i,j+1),(i+1,j+1))`, with coordinates reduced modulo 3.
- Real projective plane: the ten faces `012, 013, 024, 035, 045, 125, 134, 145, 234, 235`.


This is an exact computation for these three finite complexes. It is not a general topology library, a proof of a theorem about every surface triangulation, or a claim about an automated geometry pipeline.

## Integer coefficients and torsion

The [integer simplicial companion](integer-simplicial-v1/README.md) reuses these same three triangle lists over `Z` and adds a 3×3 twisted-grid Klein bottle. An independent exact rank/minor calculation confirms the Smith-normal-form results; the Klein result matches the separate [integer CW model](integer-cw-v1/README.md). For the projective-plane mesh, integer `H1 = Z/2Z` while its `F₂` first Betti number is 1. These are finite calculations, not a general topology prover.
