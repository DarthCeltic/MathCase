# Can the quadratic coloring reach 3,704?

Rabung's quadratic-residue construction gives a two-coloring of 3,703 consecutive integers with no monochromatic seven-term arithmetic progression. This experiment tries to add one integer while allowing three entire residue classes to be recolored. [Rabung's paper](https://doi.org/10.4153/CMB-1979-012-1)

## The proposed family

Index the interval by `x = 0,...,3703`. For each translation `s = 0,...,616`, freely assign either color to every cell whose residue modulo 617 is 0, 1, or −s. Assign the other cells color 0 if x+s is a nonzero square modulo 617 and color 1 otherwise. The two coincident-residue cases have 14 free cells each. The other 615 cases each have 20 free cells. This gives 644,907,008 assignments summed over the translation parameters. Interchanging the two color names preserves all progression constraints.

## Result and proof

Every translation admits the same short style of contradiction. Each certificate lists seven progressions with six fixed cells of a single color in each progression. To avoid creating a monochromatic progression, its seventh cell must take the opposite color. The seven forced cells then make a monochromatic progression themselves, with common difference 617. Across all 617 translations, 4,319 forcing progressions and 617 final progressions were independently checked.

For instance, at translation 0, the forced cells are 1, 618, 1235, 1852, 2469, 3086, 3703. The progression 1, 286, 571, 856, 1141, 1426, 1711 has six fixed nonsquares after its first entry. It forces cell 1 to use the square color. The other six progressions force the same color at the other six cells.

Each contradiction uses only 39–42 distinct fixed cells. For that translation, it survives arbitrary recolorings outside those particular cells. A candidate that escapes this obstruction must break at least one of those fixed assignments. The global question of a progression-free coloring on 3,704 integers remains open in this experiment.

## Reproduce

Python 3, standard library. Run in this directory:

```sh
python vdw_structured.py
python verify_obstruction.py certificates.json
python -m unittest -v test_obstruction
```

The generator enumerates squares directly. The independent checker uses Euler's criterion, reconstructs every arithmetic progression, and checks the certificate's variable cells, bounds, forced colors and translation coverage. Tests reject a flipped color, a false witness with multiple free cells, and a repeated translation. The certificate uses zero-based coordinates. Add one to every cell to express it in the usual interval [1,3704]. The verifier records the SHA-256 of the exact input.
