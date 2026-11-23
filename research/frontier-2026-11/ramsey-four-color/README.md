# One more vertex in two Ramsey colorings

Can an existing Ramsey coloring grow by one vertex while keeping every old edge? This package lets you answer that question for two fixed colorings. Each extension test allows every color on every new edge.

| Starting graph | What the finite check establishes |
| --- | --- |
| A four-color K50 reconstructed from Chung's construction | All 19,600 triangles avoid a single color. This gives the known lower bound R(3,3,3,3) ≥ 51. Every possible attachment of vertex 51 creates a monochromatic triangle. |
| The red/blue Paley graph on the integers modulo 101 | Both colors have 36,360 complete five-vertex sets and zero complete six-vertex sets. Every possible attachment of vertex 102 creates a monochromatic six-vertex set. |

These extension results fix all old edges. They leave open a different starting graph or a coordinated recoloring. Both Ramsey numbers remain undetermined by these computations.

## Run the checks

Python 3.10 or later suffices. Run these commands from this directory. The two certificate checks regenerate the entire instance from the graph definition before checking each logical inference.

```sh
python four_color.py --extension-nodes 350000
python paley_extension.py
python verify_refutation.py K51-fixed proofs/K51-fixed.lrat
python verify_refutation.py unrestricted proofs/unrestricted.lrat
python crosscheck_encodings.py
```

The four-color search exhausts its tree within 120 recursive calls. A smaller budget can return INCONCLUSIVE_NODE_LIMIT. The Paley finite search additionally checks 2,097,152 neighborhoods invariant under multiplication by 36 modulo 101. Its independent unrestricted certificate covers all 101 binary choices, including neighborhoods with no symmetry. The independent translation-based checker reconstructs the same 72,720 clauses by a different enumeration of the five-vertex sets.

## What the constraints mean

For the K50 matrix, each new edge receives exactly one of four colors. If an old edge has color c, its two endpoints cannot both acquire new edges of color c. This accounts for every new triangle. For Paley(101), the incident edges of a red five-clique cannot all turn red and those of a blue five-clique cannot all turn blue. Those are exactly the ways a new monochromatic six-clique could arise. Each finite witness is also checked before the extension is considered.

The two refutations are explicit LRAT proof files using reverse unit propagation. They use 2,473 antecedent steps for the four-color graph and 25,819 for Paley. The standard-library checker tests every necessary unit step until it derives an empty clause. An upstream DRAT-trim run independently accepted the solver proofs. This package provides finite, certificate-checked computation.

## Construction and upstream work

Fan Chung's 1973 construction gives a four-color K50. This implementation computes three cosets of the multiplicative group of GF(16), forms three 16-vertex blocks and adds two vertices. Its 50 by 50 output uses digits 1–4 off the diagonal, zero on the diagonal, and SHA-256 229eb103d0e8605db8799846061ca4f67d1c73c10499200713c1fe16915a0f4f for the LF-terminated ASCII rows. The block permutations follow Robertson's explicit presentation. All numerical edge data here are generated from the construction. [Chung's original result](https://doi.org/10.1016/0012-365X(73)90125-8) · [Robertson, Figure 2.1](https://cst.temple.edu/sites/cst/files/Robertson.pdf)

The Paley construction colors a pair red when its difference is a nonzero quadratic residue modulo 101 and blue otherwise. The fixed-graph extension tests here establish no claim of mathematical priority. In the four-color literature, Miloš Tatarević's November 2026 revision reports an upper bound of 60. That separate upstream computation was outside this run. [Versioned preprint](https://arxiv.org/abs/2610.36648v2)

## Recreate the SAT certificates (optional)

The certificates above can be checked entirely offline. To regenerate the underlying SAT evidence, install python-sat==1.9.dev24 in a separate Python environment and put drat-trim from upstream revision 2e3b2dc0ecf938addbd779d42877b6ed69d9a985 on PATH.

```sh
python paley_extension.py --cnf-directory generated
python sat_crosscheck.py generated
drat-trim generated/K51-fixed.cnf generated/K51-fixed.drup -L generated/K51-fixed.lrat
drat-trim generated/unrestricted.cnf generated/unrestricted.drup -L generated/unrestricted.lrat
```

Both unrestricted encodings were refuted within the saved conflict budgets. The saved results bind the DIMACS and LRAT bytes. [DRAT-trim upstream](https://github.com/marijnheule/drat-trim/tree/2e3b2dc0ecf938addbd779d42877b6ed69d9a985)
