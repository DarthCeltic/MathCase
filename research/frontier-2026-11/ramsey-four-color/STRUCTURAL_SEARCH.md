# Trying different Ramsey colorings

These two searches change edges in the starting coloring itself. Run the scripts alongside `four_color.py` and `paley_extension.py` from the fixed-witness package. Both use only Python's standard library.

```sh
python chung_recolor.py
python paley_structural.py
```

## Four colors on 50 vertices

The script considers every recoloring of one or two distinct old edges of the published K50 matrix. For each edge there are three possible replacements. If the first change creates at least two triangles of one color, a change to a different edge can remove at most one such triangle: distinct triangles through the first edge have distinct third vertices. This reduces the 6,747,300 two-edit candidates to 56,280 pairs that require a direct test. For each pair the program recolors both edges and checks every triangle through a changed edge. All other triangles have their original colors.

There are 96 good colorings at distance one and 3,792 at distance two. The script checks all 32 relabelings it uses against the complete original edge matrix, groups the surviving changes by those relabelings, and exhausts every possible attachment of the new vertex for each representative. The 3 single-edit and 156 double-edit classes all fail to extend. The fixed matrix itself is covered by the separate certificate. Any hypothetical good K51 built this way must change at least three old edges.

## Two colors on 101 vertices

An independent certificate already excludes extensions of unmodified Paley(101). Here we go beyond the 15-edit exclusion by flipping whole families of edges before trying to attach vertex 102.

| Modification of old edges | Labeled choices covered | Edges flipped per choice |
| --- | ---: | ---: |
| Switch the cut around one vertex | 101 | 100 |
| Switch the cut around two vertices | 5,050 | 198 |
| Switch the cut around three vertices | 166,650 | 294 |
| Flip one circulant distance class | 50 | 101 |
| Flip one red and one blue circulant distance class | 625 | 202 |

The affine maps `v ↦ a + dv` permute the original vertices and preserve its coloring up to exchanging red and blue. Multiplication permutes undirected distance classes. These symmetries reduce the listed families to 33 representatives. Each modified base already contains a monochromatic K6. The program returns its six actual vertices and checks all 15 edges again with Euler's quadratic-residue criterion. For example, after switching the cut at vertex 0 the six vertices `0, 2, 3, 7, 8, 27` form a red clique. No modified base in this search remained eligible for the extension solver.

These bounds apply to the specified starting graphs and changes. Other colorings of K51 or K102 are still available to search. All claims here are finite computational results.
