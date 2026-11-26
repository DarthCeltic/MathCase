# MathCase results and their limits

**MathCase has a public, inspectable record of finite mathematics checks. It has not solved Collatz or Erdős–Straus.**

## Four additional parity-conditioned first drops

For every natural start `n ≥ 3`, if at most 14 of the first 23 accelerated Collatz inputs are odd, the ordinary sequence is below `n` at step `23+h`, at most step 37. Lean counted exactly **7,507,638 of 8,388,608** residue classes modulo `2^23` and checked the combined count-and-descent statement. The descent theorem reports `[propext, Quot.sound]`; the count and combined theorem report `[Classical.choice, propext, Quot.sound]`. No `sorryAx` was reported. Ryan's M0 YES is bound to packet SHA-256 `cab441ca8079f71a6c9dbaadcea53a8e38cc8d4e9ee68f18f874f6bf39fb66bb`; the exact source, receipt, and replay instructions are in the [23/14 package](../reproduction/collatz-parity-envelopes-2026-11-v1/README.md). The review reply was reported at Nov 23, 21:57 ET; its hash-bound local record was generated at 23:53 ET.

Three adjacent parameter cases are preserved as **exploratory and not M0-reviewed**:

| Condition | Exact count | Modulus | Maximum ordinary steps | Record |
| --- | ---: | ---: | ---: | --- |
| At most 15 odd inputs in 24 accelerated steps | 15,505,590 | 2^24 = 16,777,216 | 39 | Lean PASS; `[Classical.choice, propext, Quot.sound]` |
| At most 19 odd inputs in 31 accelerated steps | 1,986,838,144 | 2^31 = 2,147,483,648 | 50 | Source compile exit 0 and separate axiom audit PASS with the full axiom set; original receipt still says `FAIL_AUDIT` because its expected set omitted `Classical.choice` |
| At most 20 odd inputs in 32 accelerated steps | 4,058,348,603 | 2^32 = 4,294,967,296 | 52 | Lean PASS; `[Classical.choice, propext, Quot.sound]` |

The exact finite union of these three filters and the 23/14 and 12-of-20 conditions contains **4,138,588,909 of 4,294,967,296** length-32 parity words (96.3590%). A separate dynamic-program screen checked the count by iterative state propagation and binomial segment convolution. It is a finite arithmetic audit of the union of five separately proved conditions, not a single combined Lean theorem, not a natural-density claim, and not proof that the remaining M15/M16/M18 collections are covered by a smaller basis. The first invalid count, `93,861,359`, and its correction are preserved in the [basis-audit package](../reproduction/collatz-parity-basis-audit-v1/README.md). Basis-search closure remains open.

## A precise bounded Collatz statement

For each of the 2,652 listed residue offsets in the M20 Lean package, every natural parameter k gives a starting number 2^20 k + r. After 32 ordinary Collatz steps it equals 3^12 k + q, and that value is strictly smaller than the start.

In symbols, for every listed pair (r, q) and every k in Nat:

    T^32(2^20 k + r) = 3^12 k + q < 2^20 k + r.

The coefficient check is:

    (2^20 k + r) - (3^12 k + q)
      = (2^20 - 3^12)k + (r - q)
      = 517,135k + (r - q).

The table extracted from the 133 composition modules has 2,652 unique input residues. Its smallest intercept gap is r - q = 117, attained at r=239, q=122. Since k is a natural number, every listed gap is positive. Run the [coefficient-table verifier](../scripts/verify_m20_coefficient_gaps.py) to compare all 2,652 table rows directly with the bundled Lean statements, or open the [human-readable coefficient table](m20-coefficient-gaps.tsv).

This states first descent for these 2,652 progressions after a bounded 32 steps. It does not show that every integer descends, prove global Collatz convergence, classify all residues, or establish novelty.

## What the fresh replay checked

Two network-disabled runs used Lean 4.33.1, Mathlib v4.33.1, one CPU, and a 2 GiB limit. Each began with no MathCase OLEAN output available and compiled the 229 shard sources and 134 composition modules from source. All 363 per-module source/output hashes agree across phases. Both runs report 23 successful axiom groups over 4,262 theorem queries, zero sorryAx, and final dependencies [propext, Quot.sound].

The first phase has an outer Docker watchdog exit code 124 even though its run-status and every per-module Lean result record completion and exit code 0. The second phase exits 0. Both facts are preserved in the [replay report](../reproduction/m20-source-replay-2026-11-18/README.md). New OLEAN hashes match between the two phases but differ from the 363 older recorded OLEAN hashes. The report does not describe those historical bytes as reproduced.

The Lake fallback was later run on the author's host from pinned public MathCase and Mathlib revisions. Its saved source, compiler-output, OLEAN, and dependency files were rehashed against the published manifests and matched. That older run did not record the replay runner's hash, so it is not a runner-bound receipt or a stranger reproduction. A fresh v2 run that binds the exact runner and toolchain remains open. The recorded Docker image is not anonymously pullable, and its full build context is incomplete.

## A checked known Ramsey lower bound

There exists a simple graph on 42 vertices with no clique of size five and no independent set of size five. Lean checked the exact proposition `∃ G : SimpleGraph (Fin 42), G.CliqueFree 5 ∧ (Gᶜ).CliqueFree 5`, which witnesses the known lower bound `R(5,5) ≥ 43`. The proof used 27 checked chunks plus a final composition; its reported axioms are `[propext, Classical.choice, Quot.sound]`. The exact sources and receipts are in the [public R(5,5) bundle](../reproduction/ramsey-r55-lean-v1/README.md). The statement received M0 YES. The result is not new, does not determine `R(5,5)`, was run with a warm local cache, and has not been independently reviewed or rebuilt from a fresh checkout. M4 remains unpromoted.

The [shared affine-structure review](collatz-shared-affine-structure-2026-11-20.md) explains the Collatz result's common coefficient inequality and why it does not reduce its 2,652 trajectory equalities.

## Other public bounded results

- **Collatz M13:** the Lean source covers 7,825 of 8,192 residue classes with a first descent within 1 to 21 ordinary steps. This does not close a whole modulus class or prove convergence.
- **At most 13 odd inputs in 22 accelerated steps:** Lean 4.33.1 proves that every start `n ≥ 3` satisfying this parity condition falls below its start after `22+h` ordinary steps, where `h ≤ 13` is the odd-input count. The exact count is 3,593,934 of 4,194,304 residue classes (85.6861%). This is a separate filter from the 21-step result; it proves no global convergence or novelty. See the [source and replay guide](../reproduction/collatz-at-most-thirteen-of-twenty-two-v2/README.md).
- **At most 17 odd inputs in 27 accelerated steps:** Lean 4.33.1 proves that every start `n ≥ 26,018` satisfying this parity condition falls below its start after `27+h` ordinary steps, so no later than step 44. A separate arithmetic audit counts 126,025,204 of 134,217,728 residue classes (93.8961%); this is not a natural-density claim, a percent of Collatz solved, or a separate Lean numeral theorem. This filter is distinct from the 20-, 21-, and 22-step filters. See the [source, receipt, and replay guide](../reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/README.md).
- **Accumulated M15–M20 coverage:** the public source branch reports 1,021,248 of 1,048,576 residue classes (97.394%) with a listed bounded first descent. This is a finite residue count, not the fraction of Collatz trajectories that converge.
- **M21–M31 screens:** arithmetic-only paired trajectory screens report 2,123,841,570 of 2,147,483,648 classes covered. These screens are not one Lean theorem; selected M29/M31 families have separate Lean statements.
- **M31 structure sample:** a frozen 4,096-class sample reported 64-step concrete-descent rates of 97.754% on discovery and 97.998% on holdout. Only one of three registered hypotheses passed; no general rule was established.
- **M31 step 34:** a finite census over 23,642,078 fixed odd representatives reports 18,391,741 with a below-start iterate through accelerated step 34; the separate arithmetic verifier matched the primary result. The v1 package's CRLF text-hygiene failure remains visible. An additive byte audit rebinds the archived original protocols to their receipts; it does not rerun or upgrade the calculation. The result covers one representative per class only. See the [failure and input-binding record](../reproduction/m31-step34-crlf-binding-v1/README.md).
- **Affine-trace families:** selected Lean lemmas cover 2^31 k + 111 and 2^31 k + 223 in 50 steps, and 2^29 k + 167 in 47 steps. Each is a restricted all-parameter result.
- **Erdős–Straus:** the public 100-range campaign bundle records 831,860 factor-conditioned candidates with 831,860 exact witnesses through denominator parameter d=10,000,000. Its aggregate audit checked all 831,860 identities and resolved 427 bounded-search misses under a fixed 65,536 offset cap. The largest observed offset was 35,498. This is a finite filtered computation, not a proof of the conjecture or a new identity. See the [campaign data and reproduction instructions](../research/number-theory/egyptian-fractions/README.md) and [aggregate audit](../research/number-theory/egyptian-fractions/campaign-v9-10m-audit-v1/summary.md).
- **Prime divisibility and square-root-of-2:** the Case Desk shows known-result checking and proof reuse. These are calibration examples, not novel theorems. The separate restricted dossier materials are not part of the reproduction bundle.

The [public reproduction index](../reproduction/README.md) provides source, status, and replay evidence. The Nov 12 [showcase source branch](https://github.com/DarthCeltic/MathCase/tree/codex/math-results-showcase-20261112) contains additional historical research files; some status notes there predate the Nov 18 replay documented here.
