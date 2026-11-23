# Riemann Hypothesis: inspect an external proof

Every nontrivial zero of the Riemann zeta function has real part one half. Levent Alpöge announced a Claude-assisted proof on November 20, 2026. The Lean FRO and Mathlib Initiative published their verification the next day. The community checked both the formal statement's correspondence to the mathematical question and the validity of the proof. The release also treats generalized RH for Dirichlet L-functions. [Author's announcement](https://alpo.ge/remark.pdf) · [Lean/Mathlib joint statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/)

## Run the MathCase source check

Run `python check_sources.py` with Python 3.10 or later. The command fetches four small, commit-pinned files totaling 14,421 bytes and prints a JSON record of their lengths and SHA-256 hashes. A mismatch or inaccessible reference gives a nonzero exit. It runs no upstream code, only inspects bytes, and retains no downloaded source. The result concerns these source files only. The full proof and its dependencies have a separate upstream verification record.

- [Canonical Mathlib target](https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/NumberTheory/LSeries/RiemannZeta.lean#L185). Mathlib accounts for the trivial negative even zeros and the pole at one.
- [Independent challenge](https://github.com/leanprover-community/riemann-hypothesis/blob/0df13c6021f92a746687929a26f1b6dc286aef09/src/Challenge.lean). This file lists the five statements with placeholders so their types can be compared independently of the proofs.
- [Original proof entry point](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Main.lean). The declarations refer to an extensive imported library.
- [Comparator configuration](https://github.com/leanprover-community/riemann-hypothesis/blob/0df13c6021f92a746687929a26f1b6dc286aef09/comparator.json). This pins the named targets and permitted axioms.

## Reproduce the proof upstream

Andrew Sutherland's release page publishes independent builds, checker logs, SHA-256 sums, and instructions. The compressed proof export is 7,699,933,588 bytes and expands to 61,570,595,788 bytes. Its uncompressed SHA-256 is `5ea74b912147c5c93cc2b6d70cc727cf908df2f62ac6a20480a3fa02f6be244e`. The separate challenge expands to 350,862,970 bytes, SHA-256 `bd484ac9886a96f26b1d9a7a59ebd45b7a70d102c015d4f31f9302bbdd6ab2b9`. Sutherland also identifies the author's 14-part source archive as 239,275,554 bytes when joined, SHA-256 `9631b4f020199e580ba86178cb56c6e9b09f690c2369a80dc4334aa93f49c7fc`. These larger sizes and hashes are upstream reports. [MIT verification files and checksums](https://math.mit.edu/~drew/grh/)

For the full upstream comparison, follow **Check it yourself** on the MIT page. It specifies Lean v4.36.0, roughly 100 GB RAM and 70 GB disk, and the decompression options for both exports. After obtaining the upstream files and comparing the uncompressed checksums, the full command is shown below. The same page gives an alternative using a pinned build of con-leche. The original proof sources use Lean/Mathlib v4.33.1. Each verification log identifies its checker, artifact and outcome. [Upstream reproducibility instructions](https://math.mit.edu/~drew/grh/)

```sh
lake comparator --config ./comparator.json --challenge-from-export ./challenge.ndjson --solution-from-export ./solution.ndjson
```

Mathlib publishes under Apache-2.0. The community mirror states that Alpöge's original submission was released without a license. This catalog points to upstream artifacts and distributes the MathCase reference checker and metadata. [Mathlib license](https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/LICENSE) · [Mirror license note](https://github.com/leanprover-community/riemann-hypothesis#license)
