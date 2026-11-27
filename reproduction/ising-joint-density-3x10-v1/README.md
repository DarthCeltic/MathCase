# Exact joint energy and magnetization counts for a 3×10 Ising torus

For this fixed 3×10 periodic grid, this package counts every spin arrangement by both its number of disagreeing neighboring pairs and its total magnetization. The result is an exact finite table for all 1,073,741,824 labeled arrangements.

The table is indexed by `B` and the number `U` of +1 spins; convert to magnetization with `M = 2U − 30`. For example, the six lowest-energy arrangements all have `B = 50`, energy `−40`, and `M = 0`. The joint table confirms their magnetization, which the earlier energy-only histogram could not show.

The joint table also gives the finite-system response to a uniform magnetic field. Let `B` be the number of disagreeing bonds, `M` the sum of the spins, and `E₀ = 60 − 2B`. If a field is included using `E_h = E₀ − hM`, then

```text
Z(β,h) = Σ_(B,M) g(B,M) exp(−β[(60 − 2B) − hM]),
```

where `g(B,M)` is the table produced here. This defines a finite-system sum; it does not assert a thermodynamic limit or a phase transition.

## What is checked

- A row-transfer dynamic program computes the exact joint counts using integer arithmetic.
- A separately implemented C++20 Gray-code enumeration visits all `2^30` spin assignments and builds the same joint table.
- Summing over magnetization reproduces the previously published, independently computed 3×10 energy histogram.
- Summing over energy gives the binomial count for each number of up spins; global-spin-flip symmetry, parity, total count, and the six ground states are checked.
- A site-by-site brute-force oracle on a smaller 3×6 torus agrees with the row-transfer method. A deliberately damaged table is rejected.

These are exact finite computations, not Lean proofs. Exact finite Ising density-of-states calculations are established prior work: Beale derived exact finite-lattice energy distributions ([Physical Review Letters 76, 78 (1996)](https://doi.org/10.1103/PhysRevLett.76.78)); Stošć, Milošević, and Stanley used transfer matrices for finite-lattice density-of-states and partition-function calculations in nonzero magnetic field ([Physical Review B 41, 11466 (1990)](https://doi.org/10.1103/PhysRevB.41.11466)). This package makes no novelty or priority claim.

## Reproduce

Requirements: Python 3.10+ and a C++20 compiler (`g++` or `clang++`). No network, external service, GPU, or paid tool is used. Choose a new output directory on a scratch volume:

```text
python -B reproduction/ising-joint-density-3x10-v1/run_case.py --cxx g++ --output-dir <new-scratch-directory>
```

The command runs the focused small-grid tests, computes the 3×10 table by transfer, compiles and runs the independent full enumeration, compares both tables, and writes a receipt plus both exact tables. The runner canonicalizes the C++ JSON line ending to LF before hashing, so the saved table bytes are stable across Windows and Linux. To run just the focused tests, change to this directory and use:

```text
python -B -m unittest -v test_joint_density.py
```

The run is recorded in [the receipt](evidence/run-receipt.json). Its two matching tables are [row transfer](evidence/joint-density-3x10.json) and [Gray-code enumeration](evidence/gray-joint-density-3x10.json); the focused test and compiler logs are beside them. A fresh public-branch clone reran the command in 10.66 seconds and reproduced both table hashes; this is an author-side replay, not an outside review ([summary](evidence/fresh-public-branch-replay.json), [runner receipt](evidence/fresh-public-branch/run-receipt.json), and [logs](evidence/fresh-public-branch/run-logs/)). To verify the saved hashes and table without rebuilding:

```text
python -B reproduction/ising-joint-density-3x10-v1/verify_saved.py
```

`SHA256SUMS` binds the package files and saved evidence.

## Scope

The model is a 3×10 square grid with periodic boundaries in both directions. Each of the 60 undirected nearest-neighbor bonds is counted once. A spin is −1 or +1, `B` counts opposite-spin bonds, `E₀ = 60 − 2B`, and `M` is the sum of all 30 spins. The output is a finite exact enumeration for this one lattice size. It does not prove a general formula for other sizes or any infinite-volume behavior.
