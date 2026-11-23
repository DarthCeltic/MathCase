# Paley graph on 101 vertices

The vertices are integers modulo 101. Two vertices are joined when their difference is a nonzero quadratic residue. The verifier searches both this graph and its complement. An exhaustive search with no six-clique in either graph establishes the known lower bound R(6,6) ≥ 102.

The certificate and Python verifier are exact copies of the [MathCase public Pages evidence at commit 558625c](https://github.com/DarthCeltic/DarthCeltic.github.io/tree/558625c51c3a083826681222728ae0b296906da7/evidence/finite-graphs/ramsey-r66-paley101). That directory also includes a separate C++ checker and the two recorded runs.

Run `python scripts/run_public_case.py ramsey66` from the MathCase checkout. The command creates a new local run directory containing the checker's output, status, and hashes. This is a finite graph computation. The exact value of R(6,6) is a separate question.
