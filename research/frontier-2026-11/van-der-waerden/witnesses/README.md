# Two van der Waerden colorings

How long can a row be colored before some equally spaced positions must share a color? Here W(r,k) counts colors first and terms second. A coloring of positions 1 through N with no single-color k-term arithmetic progression gives W(r,k) ≥ N+1.

| Case | Full coloring checked | Progressions with a positive step | Recorded lower bound |
| --- | ---: | ---: | --- |
| Two colors, seven terms | 3,703 positions | 1,140,833 | W(2,7) ≥ 3,704 |
| Five colors, three terms | 170 positions | 7,140 | W(5,3) ≥ 171 |

**Rabung's two-color construction.** John R. Rabung's 1979 paper gives the 3,703 bound from quadratic residues modulo 617. The generator colors positions indexed internally by x = 0,…,3702. Nonzero squares modulo 617 and the first six multiples of 617 receive color 0. All other positions, including x=3702, receive color 1. The runner checks the resulting full interval. A separate upstream cross-check reads a file from Heule's certificate archive. Despite having 3,703 bytes, that file contains 3,702 color symbols and one line break. Prepending the color a yields another valid full-length witness. [Rabung's paper](https://doi.org/10.4153/CMB-1979-012-1) · [Pinned author-hosted certificate](https://github.com/marijnheule/vdWaerden/blob/d18a9106ba9b720b18fd8d92946cf8b67746eab6/certificates/W_2_7_617.cert)

**Heule's five-color construction.** Marijn J. H. Heule published the 170-point construction and its repetition and rotation symmetries. The runner reconstructs the full coloring from its 17-position seed by advancing each color one place modulo 5 every 17 positions. The online cross-check compares all 170 positions with the author's pinned certificate. [Heule's paper, §4.2 and Figure 6](https://www.cs.cmu.edu/~mheule/publications/JOC_08_03_A01.pdf) · [Pinned author-hosted certificate](https://github.com/marijnheule/vdWaerden/blob/d18a9106ba9b720b18fd8d92946cf8b67746eab6/certificates/W_5_3_170.cert)

## Run the checks

Use Python 3.10 or later. Run each command with either `2-7` or `5-3`. Only `upstream` contacts the network.

```sh
python vdw.py coloring 2-7
python vdw.py check 2-7
python vdw.py repair 2-7 --radius 4
python vdw.py upstream 2-7
python -m unittest -v
```

`coloring` writes all the color digits followed by one LF. `check` enumerates every pair of start and step, then uses a separate color-bitset intersection algorithm. Both found zero monochromatic progressions in both advertised witnesses. In each negative control the first k points were set to zero. Both methods detected the same 22 violations in the seven-term case and six in the three-term case. Witness digests refer to the normalized digit stream printed by `coloring`.

## Can this specific coloring grow by one position?

The bounded search tries a new point on either end, in every possible color, while allowing at most four of the old positions to change color. For a violated progression, a repair must change at least one of its positions. The search branches over every permitted position and alternative final color, with duplicate partial repairs counted only once per endpoint/color trial. A limit of 20,000 distinct search states per trial is enforced. A cap hit has its own status.

All four endpoint/color trials completed for the 3,703-position witness, and all ten completed for the 170-position witness. Neither coloring has a one-point extension within four old recolorings. The recorded lists give the violating progressions for every unedited endpoint choice. For left extensions the coordinates refer to the reflected old interval with the trial endpoint on its right. This local exhaustive calculation concerns only the two generated witnesses. Other colorings or larger changes can behave differently; determining either van der Waerden number remains a separate question. The two lower bounds are reproductions, not new records.
