# MathCase research by subject

The [subject table](aixiv-subjects.tsv) gives a question and a concrete check for every subject listed by aiXiv on November 26, 2026. The listing contained 155 subject codes in 12 fields. It marked 40 open and 115 coming soon. [Official aiXiv directory](https://aixiv.online/categories)

## Reading the table

| MathCase evidence | What a reader can inspect |
| --- | --- |
| Checked case | A public computation or proof, with its inputs, scope and a way to check the result. |
| Supporting artifact | Source material or software relevant to the question. The row explains what it contributes. |
| Proposed | A research question and the check that would give evidence for it. An em dash means no artifact is linked. |

The availability column records aiXiv's status on the snapshot date. The evidence column describes MathCase's work. Several subjects can lead to one study. For instance, the statistical mechanics and two mathematical physics entries share one [Ising model study](https://github.com/DarthCeltic/MathCase/tree/87a3a9a685be17ff5024327507777f1a5980eb0f/reproduction/ising-square-torus-dos-v1). Likewise, both combinatorics and discrete mathematics point to the same [Weak Schur result](https://github.com/DarthCeltic/MathCase/tree/28adad574cb35f3e717cc108071de46fb99fb927/research/frontier-2026-11/weak-schur-5/class-extensions).

## Examples

- One [plane-curve study](https://github.com/DarthCeltic/MathCase/tree/518f6edc5ea8bc9c37d08b472b795d6f33216342/reproduction/monomial-branch-intersections-v1) tests intersection multiplicities and local quotient dimensions over three finite fields. It appears under algebraic geometry and commutative algebra.

- The [surface homology case](https://github.com/DarthCeltic/MathCase/tree/81345da818c62519ee620bdb77dd5ff1237e1bb6/reproduction/math-at-f2-surface-homology-v1) computes the homology of three explicit triangulations over the field with two elements.
- The [six-of-ten Collatz theorem](https://github.com/DarthCeltic/MathCase/tree/159e92d9c719896582d36dc6042866f03316184b/reproduction/collatz-six-of-ten-lean-v1) proves a first-descent bound. The [parity-window atlas](https://github.com/DarthCeltic/MathCase/tree/6649e9490648e74b8c9bc76c6e6a13901aba225c/reproduction/collatz-window-atlas-v1) also gives an algorithms reader two ways to count eligible residue classes.
- The computational complexity entry links a source audit of the VP/VNP research request. The multiagent systems proposal asks whether distributing a task among agents improves outcomes against a single-agent control.

## Recheck the dated listing

The original categories page used for comparison had SHA-256 `696ed02924f3d2693d713e5d92c76a1b83d76689b9ca46ac1baf54c317ebcd62`. The [dated extract](aixiv-categories-2026-11-26.html) preserves the field headings, availability labels, and subject names from that page. Run the following from a fresh checkout.

```sh
python -B research/subjects/verify_subject_map.py
```

Pass a saved copy of the official HTML as an argument to check it directly. The verifier matches codes, names, fields and availability with the HTML. It also checks that the questions and checks are unique and that a row claiming evidence supplies a public URL. The table records MathCase research and proposals. Publication on aiXiv has its own record.
