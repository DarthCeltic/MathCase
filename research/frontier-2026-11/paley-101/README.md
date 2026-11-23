# How much must the 101-vertex Paley coloring change?

Every red/blue coloring of the same 101 labeled vertices that has no monochromatic six-clique and differs from Paley(101) changes at least 16 old edges. At least eight originally red edges turn blue and at least eight originally blue edges turn red. Combining this with the separately supplied certificate for the unmodified base shows that adding a 102nd vertex requires changing at least 16 of the original edges. Whether 16 changes suffice remains open in this experiment.

```sh
python paley_recolor.py
```

The program uses only Python's standard library. It checks the symmetry and performs the complete finite enumeration below.

1. In Paley(101), an edge is red precisely when its nonzero difference is a square modulo 101. An affine map `t ↦ a + dt` sends the pair (0,1) to any ordered pair. Multiplication by a square preserves both colors and multiplication by a nonsquare swaps them.
2. Consider changing the red edge (0,1) to blue. There are 25 vertices originally blue-adjacent to both endpoints. Among those vertices, 96 four-element sets have all six internal edges blue. Each set would make a blue six-clique with 0 and 1 after the proposed change.
3. To avoid each such clique, at least one other edge in its six vertices must change from blue to red. For every such changed edge, choose one endpoint among the 25 common neighbors. Every one of the 96 four-sets must contain at least one chosen endpoint: its changed edge has both endpoints in the six-set and at least one in that four-set.
4. A program checks all 480,700 seven-element subsets of the 25 common neighbors. None meet every four-set. Any smaller hitting set could be enlarged to seven, so none of those work either. The eight vertices `8, 35, 39, 61, 62, 67, 75, 91` do meet every four-set. Thus changing a red edge forces at least eight distinct blue-to-red changes.
5. By the same affine and color symmetry, any blue-to-red change forces at least eight red-to-blue changes. Any distinct good coloring has at least one change, so it must have changes in both directions. Their counts sum to at least 16.

This is a finite obstruction around a particular known lower-bound witness. It leaves different starting colorings and larger coordinated edits available. No claim of prior literature novelty is made.
