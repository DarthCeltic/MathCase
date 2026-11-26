# Exact finite Ising densities on periodic square lattices

## Model and result

This case tabulates the exact density of states for the zero-field antiferromagnetic nearest-neighbor Ising model on periodic square tori of side `L=3,4,5`. Spins are `σᵢ ∈ {−1,+1}` and the coupling convention is

```text
H = Σ_edges σᵢ σⱼ = aligned_bonds − broken_bonds.
```

Each horizontal and vertical periodic edge is counted once, so there are `2L²` bonds and `H = 2L² − 2B`, where `B` is the number of broken (opposed-spin) bonds. The committed [density-of-states receipt](evidence/density-of-states.json) gives the exact number of labelled spin assignments at every possible `B` for each size.

| `L` | Configurations | Maximum `B` | Ground energy `H` | Ground-state degeneracy |
|---:|---:|---:|---:|---:|
| 3 | 512 | 12 | −6 | 102 |
| 4 | 65,536 | 32 | −32 | 2 |
| 5 | 33,554,432 | 40 | −30 | 2,470 |

The full histogram is computed in two independent ways: an exact integer row-transfer dynamic program and a C++20 binary-reflected Gray-code enumeration that visits all `2^(L²)` spin assignments, updating only the four bonds incident to the flipped spin. Every bin agrees, including the `L=5` run over all 33,554,432 states.

## Odd-square ground-state formula

For odd `L`, every periodic row cycle and every periodic column cycle has odd length. Each therefore contains at least one aligned bond. There are at least `2L` aligned bonds, so `B ≤ 2L²−2L`. The checkerboard assignment `σ(r,c)=(-1)^(r+c)` attains this bound: each row and column has exactly one aligned wrap edge. Thus the antiferromagnetic ground energy is `H_min = 4L−2L²`.

The labelled ground-state degeneracy is

```text
D(L) = 2L [ binom(2L,L) − L ],  for odd L ≥ 3.
```

Here is a count. A cyclic row with exactly one aligned horizontal edge has `2L` possible labelled states: choose the aligned edge and one spin, then the other spins are forced. Moving the aligned edge clockwise while flipping the next spin arranges these states on a cycle of length `2L`; its graph distance is the Hamming distance between row states. For consecutive rows write `sⱼ=(-1)^j rⱼ`. Since `L` is odd, periodic closure gives `s_L=-s_0`, the antipodal row state. The number of vertically aligned bonds is the sum of the `L` Hamming distances from `sⱼ` to `sⱼ₊₁`, and is at least the antipodal distance `L`. A ground state attains equality, so its row sequence follows one of the two shortest arcs from a row state to its antipode. Each orientation is a weak composition of `L` into `L` increments, giving `binom(2L−1,L−1)` sequences. The two orientations count the same `L` single-jump sequences, so the number per first row is `2 binom(2L−1,L−1)−L`. Multiplying by the `2L` first rows and using `2 binom(2L−1,L−1)=binom(2L,L)` gives the formula.

The independent [odd-square row-mask check](evidence/odd-ground-formula.json) evaluates the closed count against a transfer that counts row sequences directly, without using the binomial expression in its counting step. It checks all odd `L=3,5,…,25`; selected values are `D(3)=102`, `D(5)=2,470`, `D(7)=47,950`, `D(9)=874,998`, and `D(25)=6,320,530,321,886,350`.

## Rectangular ground-state extension

The same frustration count gives a useful finite rectangular check for periodic lattices with `W,H ≥ 3`. The minimum aligned-bond count is

```text
A_min = (W odd ? H : 0) + (H odd ? W : 0).
```

It is attained by alternating rows and columns with the necessary odd-cycle seams. Thus `B_max=2WH−A_min` and, under this package's energy convention, `H_min=2A_min−2WH`. The labelled degeneracy is `2` when both dimensions are even; `2W` when only `W` is odd; `2H` when only `H` is odd; and

```text
2W [ 2 binom(W+H−1,H−1) − H ]
```

when both dimensions are odd. For the odd-by-odd case, the row-cycle argument above uses `H` increments summing to antipodal distance `W`; the two arcs have `binom(W+H−1,H−1)` weak compositions each and share the `H` single-jump paths. The original [unconstrained rectangular row-transfer check](evidence/rectangle-ground-states.json) tests all nine cases `3≤W,H≤5`, including transposed sizes and all parity combinations. A separate [wider rectangle check](evidence/wide-rectangle-ground-states.json) tests 36 sizes with `3≤W≤6` and `3≤H≤11`; it directly compares transposes only when both orientations are in that set (16 cases). Both are unconstrained max-count row-mask dynamic programs that use the formulas only for comparison. They verify ground energy and degeneracy only; the full rectangular density of states is outside this package.

## Prior work and claim boundary

Exact finite Ising energy distributions are established prior work; see Paul D. Beale, [“Exact Distribution of Energies in the Two-Dimensional Ising Model”](https://doi.org/10.1103/PhysRevLett.76.78), *Physical Review Letters* 76, 78 (1996). Van Ede van der Pals and Gaspard, [*Physical Review E* 49, 79 (1994)](https://doi.org/10.1103/PhysRevE.49.79), §III.B, Eq. 3.4, state the odd-square extremal energy in their convention and note its degeneracy exceeds two. This case presents a small reproducible reference implementation and a direct count; it makes no physics-discovery or priority claim for the closed degeneracy formula.

## Reproduce

Use Python 3.10+ and a C++20 compiler (`g++` or `clang++`). From the repository root, pass a new output directory on a scratch volume:

```text
python -B reproduction/ising-square-torus-dos-v1/run_case.py --cxx <path-to-g++-or-clang++> --output-dir <new-output-directory>
python -B reproduction/ising-square-torus-dos-v1/verify_odd_ground_formula.py --output <new-output-directory>/odd-ground-formula.json
python -B reproduction/ising-square-torus-dos-v1/verify_rectangular_ground_states.py --output <new-output-directory>/rectangle-ground-states.json
python -B reproduction/ising-square-torus-dos-v1/verify_wide_rectangles.py --output <new-output-directory>/wide-rectangle-ground-states.json
```

The first command compiles the Gray-code enumerator in a temporary directory under the chosen output directory, writes the full histograms and a verification record, and checks exact state totals, global-flip pairs, two aligned all-spin configurations, checkerboard frustration, and equality of the two histograms. The later commands test the closed odd-square count and its rectangular ground-state extension, including the wider finite rectangle range. They use only exact integer arithmetic and the Python standard library. No external service, stochastic search, GPU, or paid tool is used.
