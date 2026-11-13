# Independent review guide

MathCase links mathematical statements to bounded computation, Lean checks, saved receipts, and later reuse. This page points reviewers to the public math artifacts and asks for specific criticism. It does not claim that MathCase has solved an open problem or produced a novel theorem.

## Start here

1. Read the [evidence atlas](MATH_RESULTS.md) for the result-by-result status and limits.
2. Read the [research-system roadmap](MATHCASE_RESEARCH_ROADMAP.md) for the intended workflow and known gaps.
3. Choose one artifact below and check its statement, assumptions, inputs, or accounting.

## Review targets

### Collatz residual structure sample

Inspect `research/collatz/structure-sample/m31-unresolved-odd-v1/` and the generator and verifier in `scripts/sample_collatz_m31_unresolved_structure.py` and `scripts/verify_collatz_m31_unresolved_structure.py`.

Please check whether the frozen sample, discovery/holdout split, 64-step rates, and recorded failures support exactly the bounded conclusions in the atlas. The experiment does not establish a general Collatz rule.

### Selected all-parameter Lean families

Inspect `research/collatz/affine-trace/` and the M15, M16, M18, and M20 Lean trees. Please flag a statement mismatch, hidden assumption, dependency issue, or proof that does not establish its documented family claim. These public sources have not received a fresh Lean replay in this release, so the atlas does not present them as a public replay attestation.

### Egyptian–Straus finite streams

Inspect `research/number-theory/egyptian-fractions/` and the local exact-checking scripts. Please check the candidate population definition, stream disjointness, witness identities, and treatment of misses/extensions. These bounded streams and restricted identities do not prove the full conjecture.

## Report a finding

Open an issue in the [MathCase GitHub repository](https://github.com/DarthCeltic/MathCase/issues) with:

- the exact file and theorem, row, or record;
- whether the concern is mathematical, a formal statement, computation/reproduction, provenance, or wording;
- a minimal counterexample, corrected statement, or reproducible command when possible;
- the source commit or file hash you reviewed.

Corrections and negative findings are useful. Please keep a result at its current evidence level unless a new artifact supports changing it.

## Verification boundary

Run `python scripts/verify_math_results_release.py` from the repository root to check listed file hashes, the saved M13 byte bindings and coverage arithmetic, the M31 sample receipt bindings, and the presence of selected Lean sources. This is an integrity check; it does not compile Lean or establish mathematical correctness. The public M15–M20 bundle has no fresh Lean replay receipt. M21–M31 aggregate screens are finite arithmetic evidence, not Lean proofs. Collatz remains unsolved in this work. The √2 child remains M0 unassessed with source use limited to storage/computation.

## Community fit

For Lean/mathlib API or contribution questions, use the [Lean community contribution guide](https://leanprover-community.github.io/contribute/index.html) and its public Zulip channels. For AI formalization infrastructure, the open [Tau Ceti project](https://github.com/TauCetiProject/TauCeti) and its roadmap/review workflow are closer fits than a generic software promotion post. A focused review question is more useful than a broad claim about autonomous problem solving.
