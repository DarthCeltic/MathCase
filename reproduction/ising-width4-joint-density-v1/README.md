# Width-four Ising transfer finite check

Status: a bounded exact computation and a transparent bijection argument. This is not Lean-verified and is not a new Ising result.

For a periodic 4 by L square lattice, write each column as a four-bit state s in {0,1}^4. Let v(s) count disagreements around that column's vertical cycle, h(s,t) be the Hamming distance between adjacent columns, and p(s) count plus spins (bits equal to 1). Define
A[s,t] = x^(v(s)+h(s,t)) z^p(s).

Expanding trace(A^L) sums over closed sequences of column states. Such a sequence is exactly one spin assignment on the labeled periodic grid. Each column contributes its vertical disagreements and plus spins once, and each adjacent-column transition contributes its horizontal disagreements once, including the closing seam. Therefore the coefficient of x^b z^u counts labeled configurations with b broken bonds and u plus spins. This argument applies for every L >= 3; the computation below checks only a finite range.

The checker compares two implementations:
- direct enumeration of all grid bit strings;
- a separate dynamic program over the 16 possible column states.

It also checks the total number of configurations, the two uniform configurations, the exact single-spin-flip bins, spin-inversion symmetry, a bond-count ceiling, and a damaged transfer rule that omits vertical bonds.

Reproduce with Python 3.14 or compatible, no third-party packages:

    python -B verify_width4.py --max-length 5 --max-seconds 120 --output evidence/runs/your-run/receipt.json

The experiment is bounded to periodic width four and lengths 3 through 5. Its exact state counts are 4,096, 65,536, and 1,048,576. It makes no thermodynamic-limit, phase-transition, novelty, or priority claim. Prior finite Ising density-of-states transfer methods are established; see Beale, Physical Review Letters 76 (1996), DOI 10.1103/PhysRevLett.76.78, and Stosic, Milosevic, and Stanley, Physical Review B 41 (1990), DOI 10.1103/PhysRevB.41.11466.

This public package records a finite computational check. It contains no Lean proof.

## Cross-check against the existing square result

At L=4, summing the joint histogram over the plus-spin count must recover the existing 4-by-4 broken-bond density of states. The comparison checker pins the public receipt bytes from MathCase main at commit a3caed11b3cca198439e3d85aae67dd3fa56a55a (SHA-256 0cb4edc0a8c30d292ed5f644939f138d5ddfd4e2b0d6bfb14a5dd29181f44528). The exact marginal matched all 33 broken-bond bins, and the one-bin damaged control was rejected. This corroborates one shared finite slice; it is not an independent proof of the all-L identity.

Run the comparison from a full MathCase checkout:

    python -B compare_square_l4.py --joint-receipt evidence/runs/your-run/receipt.json --reference ../ising-square-torus-dos-v1/evidence/density-of-states.json --output evidence/runs/your-run/square-l4-crosscheck.json

The checked counts are:

| L | Assignments | Nonzero (broken bonds, plus spins) bins |
|---:|---:|---:|
| 3 | 4,096 | 45 |
| 4 | 65,536 | 80 |
| 5 | 1,048,576 | 136 |

The calculation uses no random seed, external service, or third-party Python dependency. It is a finite computational cross-check, not Lean verification.
