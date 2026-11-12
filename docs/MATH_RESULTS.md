# MathCase: results, evidence, and what they mean

This page is a candid inventory of the mathematics currently present in MathCase. It separates Lean-checked statements, finite computation, exploratory work, and pending human review. Nothing here claims that Collatz or Erdős–Straus is solved, or that MathCase has produced a new theorem.

## What MathCase does today

MathCase links a stated mathematical claim to candidate reasoning, computation, Lean checking, saved execution records, and later reuse. The public Case Desk is read-only and presents three saved examples. This is a useful inspectable workflow; it is not yet an autonomous, general-purpose open-problem research system.

## Results at a glance

| Area | What exists | Evidence class | Honest limit |
| --- | --- | --- | --- |
| R0b | Lean checks the known theorem Nat.add_assoc with no extra axioms. | Known theorem / local calibration | Process calibration, not discovery. |
| Prime divisibility | A known prime-divisibility result has a saved model proposal, one rejected attempt, and a corrected Lean-accepted proof. | Saved candidate plus Lean check | Not novel mathematics or an independent human review. Historical record: two model calls, $0.000660. |
| Square root of 2 | The child compilation reused the saved parent object file. Parent M4 is PASS; the child M4 is PARTIAL. | Compiled-reuse record | M0 statement review is UNASSESSED; source use remains storage/computation only. No proof-use permission is granted here. |
| Collatz M13 | A Lean source proves bounded first descent for 7,825 of 8,192 residue classes, within 1–21 ordinary steps. | Public source plus saved compile record; exact hashes and coverage were checked against public main | It is not a percentage of trajectories that converge, a whole-class closure, a standard M4 receipt, or a Collatz solution. No fresh Lean build was run for this release. |
| Collatz M15–M20 | Individual all-parameter affine families extend the cumulative covered residue count to 1,021,248 of 1,048,576 classes at M20. | Lean sources and bounded scans are included; historical local pinned-run claims were reopened from the private archive | Not global descent or convergence. Raw machine-local run receipts are not in this public bundle; no fresh Lean replay or standard M4 receipt is claimed. The optional M20 all-shard conjunction hit the 2 GiB cap and is not verified. |
| Collatz M21–M31 | Arithmetic-only residue screens report 2,123,841,570 of 2^31 classes covered, leaving 23,642,078. | Bounded arithmetic screens with paired validation | These screens are not Lean proofs. Only selected M29/M31 families are separately formalized. The full large scans and private receipts are not included here. |
| Collatz M29/M31 families | Selected Lean lemmas prove strict descent for every natural parameter in three residue families; a Lean-checked composition gives one 97-step family. A separate lemma says universal strict descent would imply termination. | Restricted all-parameter Lean statements from saved local checks | The universal premise is not proved. These statements do not solve Collatz and are not a system-level AI transfer result. |
| Collatz structure sample | A frozen sample of 4,096 M31 residual classes has 64-step concrete-descent rates of 97.754% and 97.998% on its discovery and holdout splits. The exact residual population has v2(3n+1)=1 for every class member. | Reproducible finite experiment and exact finite residue audit | Of three preregistered hypotheses, only the ≥50% concrete-descent hypothesis passed; the geometric-tail deviation hypothesis and the 129–192-step affine-certificate hypothesis failed. No 129–192-step affine certificate was found. Sample rates do not establish a general rule. Reusing a checked M29 formula on 64 instances is formula reuse, not AI learning. |
| Egyptian–Straus | Direct identities cover every even n≥2 and every n≡3 mod 4, plus several n≡1 mod 4 subfamilies. Ten disjoint bounded streams cover 95,331 factor-conditioned n=12d+1 candidates through d=1,000,000: 95,307 base witnesses plus 24 exact extensions. | Algebraic identities plus exact finite computation; data and local checker scripts are included | The finite stream is a selected residual population, not all integers through 12,000,001. The full Erdős–Straus conjecture remains open in this work. |
| Aaronson–Ambainis | A third-party proof report was ingested as external research context. | External intake only | MathCase did not generate, formalize, replay, or independently validate that proof. It is not a MathCase result. |

## Collatz details

The public M13 artifact is already present under proofs/collatz/remaining-residues. Its receipt binds the exact Lean source, compiler output, and exit-code bytes; its coverage file lists 7,825 covered and 367 uncovered residues, with no duplicates. This release verified those file hashes and coverage arithmetic against public main. It did not recompile Lean.

The new M15, M16, M18, and M20 folders expose the generated Lean source and the scan inputs used to choose the listed affine families. Their cumulative counts are 31,473/32,768; 63,422/65,536; 254,649/262,144; and 1,021,248/1,048,576. The statements concern each listed family for every natural parameter k. The public files make the mathematics inspectable, but the underlying machine-specific run receipts remain private, so this branch is not a public replay attestation.

M21–M31 add arithmetic-only finite screening. The summed coverage is 2,123,841,570 of 2,147,483,648 residue classes. M31 alone recomputed more than 1.3 billion transitions in its saved pair validator. That is meaningful search evidence, but it is not a formal proof of the screen or of global descent.

The selected affine lemmas include M29 residue 167, M31 residues 111 and 223, and a checked M29-to-M31 composition. These give restricted strict descent for every parameter. The conditional bridge formalizes the implication from universal strict descent to eventual termination; it does not establish its premise.

## Egyptian–Straus details

For n=4k+3, with m=k+1 and d=n*m, the identity is

4/n = 1/m + 1/(d+1) + 1/(d(d+1)).

It follows by direct algebra and has distinct positive denominators. Separate direct constructions cover even n, and additional identities cover several n≡1 mod 4 subfamilies. The public data contains ten disjoint, exact witness streams for a factor-conditioned residual population, plus the bounded extensions that resolve each base-stream miss. Local scripts use exact integer arithmetic. These results are finite or restricted identities; they do not solve the full conjecture.

## What the system has not shown

- No novel theorem has received independent mathematical review.
- The public M15–M20 bundle has no fresh public Lean replay receipt.
- The arithmetic-only M21–M31 counts are not formalized as one theorem.
- MathCase has not demonstrated autonomous long-horizon proof discovery across open problems.
- The square-root-of-2 child has no completed M0 statement review or proof-use grant.
- No real M7 learner pilot has been run; it remains on hold.
- The external Aaronson–Ambainis report belongs to another team and is not evidence of MathCase capability.

## What should happen next

1. Have a mathematician review the exact statement and proof boundaries before any novelty or public discovery claim.
2. Build a clean, pinned, offline replay project for M15–M20 and publish new receipts only after a successful bounded replay. Do not attempt the known failing M20 aggregate under the same memory limit.
3. Keep the Collatz structural experiment narrow: preregister at most three hypotheses, use a fixed held-out sample, and require a general proof or a clearly bounded theorem before upgrading the claim.
4. Run one controlled knowledge-transfer evaluation with equal budgets and a later target; distinguish formula reuse from measured learning.
5. Continue other math tracks through exact statements, source clearance, bounded experiments, independent checks, and versioned dossiers. Keep external search results separate from proof input.
6. Complete the square-root-of-2 human M0 review and source-scope decision before any proof-use or learner-pilot work.

For the engineering roadmap to make MathCase a stronger research system, see MATHCASE_RESEARCH_ROADMAP.md. The artifact and hash index for this branch is research/math-results/release-manifest.json.
