# Paley graph on 101 vertices

The vertices are integers modulo 101. Two vertices are joined when their difference is a nonzero quadratic residue. The verifier searches both this graph and its complement. An exhaustive search with no six-clique in either graph establishes the known lower bound R(6,6) ≥ 102.

The certificate and Python verifier are exact copies of the [MathCase public Pages evidence at commit 558625c](https://github.com/DarthCeltic/DarthCeltic.github.io/tree/558625c51c3a083826681222728ae0b296906da7/evidence/finite-graphs/ramsey-r66-paley101). That directory also includes a separate C++ checker and the two recorded runs.

Run `python scripts/run_public_case.py ramsey66` from the MathCase checkout. The command creates a new local run directory containing the checker's output, status, and hashes. This is a finite graph computation. The exact value of R(6,6) is a separate question.

The exact existential statement is also formalized in Lean. See the [Lean source replay bundle](../ramsey-r66-lean-v1/README.md) for source hashes, the axiom audit, and the successful pinned-container receipt.

## Preserved independent finite-check run

The public runner rechecked the same graph certificate on 2026-11-24. Its path-free receipt records exit 0, 101 vertices, 2,525 edges, 51,981 clique-search nodes, and 54,976 independent-set-search nodes, with no K6 in either color. The [path-free run receipt](runs/2026-11-24/receipt.json) binds the graph and verifier hashes; captured stdout and stderr are beside it. This is a finite certificate check, separate from the Lean proof.
