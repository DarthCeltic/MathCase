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

## Two disjoint 12-step parity windows

A separate finite arithmetic comparison studies caps of 9 then 6 odd accelerated inputs, and the reversed caps of 6 then 9. Each matched two-window filter admits exactly 10,082,670 of the `2^24` parity classes; both are subsets of the existing 24/15 gate and do not improve its class coverage. Their sharp maximum first drops are respectively 24 accelerated / 39 ordinary steps and 10 / 16 steps. The first-window cap of 6 alone suffices for the 10 / 16 bound, admitting 10,280,960 classes; this broader filter is not a subset of 24/15 because it permits up to 18 odd inputs overall. The [reproducible package](../reproduction/collatz-two-window-first-drop-2026-11-v1/README.md) gives exact affine bounds, all-start coverage of the finite small-start ranges, and residue-word witnesses `n=283` and `n=347`. It is not a Lean theorem or a claim about full Collatz convergence.

The [general two-window atlas](../reproduction/collatz-window-atlas-v1/README.md) makes this comparison reusable for every pair of positive window lengths with total at most 24. Its full 12+12 gate classifies 16,490,635 of 16,777,216 residue classes as dropping for every class member by shortcut step 24, with 286,581 classes having no member that drops by then; the independent affine audit found no mixed classes. An 8+16 gate with caps 5+10 and a 16+8 gate with caps 10+5 each admit 12,844,569 classes and are fully covered, while their sharp maxima differ: 8/13 steps at `n=39` versus 16/26 at `n=359`. These are finite, parity-conditioned first-drop results, not statements of global convergence or novelty.

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

## What the full source replay checked

The Nov 18 sealed replay used two clean phases. Each compiled 229 shard modules and 134 composition modules, covering the exact statement for 2,652 listed progressions; both phases agreed on all 363 source/output hashes. Both completed 23 axiom groups over 4,262 declaration queries, with axiom union `[propext, Quot.sound]` and no `sorryAx`. The phase-one Docker watchdog exit 124 remains preserved even though its per-module Lean commands finished; Phase 2 exited 0. The older original-container OLEAN hashes were not reproduced.

The public-source recipe has since completed **two runner-bound full replays** on Nov 26. The Linux-container replay completed in 3:42:30.318 with network access disabled; the separate native Windows replay completed in 3:51:54.679 and was not recorded as OS-level network-isolated. Both compiled all 363 modules from fresh MathCase output trees, completed all 23 axiom groups and 4,262 queries, and match all 363 November 18 Phase 2 OLEAN hashes. Each matched all 346 pinned historical Mathlib OLEANs. Both matched 0/363 OLEAN hashes from the older original-container manifest. A clean public-clone replay is also recorded in the [2026-11-28 receipt](../reproduction/m20-public-source-replay-v1/runs/2026-11-28-clean-stranger-r1/README.md). Independent mathematical review remains open.

A separate Nov 27 Windows run also preserves a useful failure-and-recovery record. Its first pass stopped after 134 of 363 modules when the runner could not replace its progress file (`WinError 5`). A run-local recovery then reached 363/363 modules, 23/23 audit groups, and 4,262/4,262 queries, with the expected `[propext, Quot.sound]` axiom set and no `sorryAx`. Because that recovery reused its own completed outputs after the status-file failure, it is supplemental artifact evidence, not a third independent replay. The [failure and recovery record](../reproduction/m20-public-source-replay-v1/runs/2026-11-27-windows-recovery-r1/README.md) keeps both outcomes visible.

The exact theorem remains bounded to the 2,652 recorded progressions. It does not prove that every integer descends, show that every Collatz sequence reaches 1, classify all residues, or establish novelty. The original Docker image is still not verified as anonymously pullable; the supported public route is the pinned-source recipe in [ORIGINAL_REPLAY.md](../reproduction/m20-public-source-replay-v1/ORIGINAL_REPLAY.md).

Evidence: [Linux replay](../reproduction/m20-public-source-replay-v1/runs/2026-11-26-full-r2/README.md) · [native Windows replay](../reproduction/m20-public-source-replay-v1/runs/2026-11-26-native-windows-r1/README.md) · [original Nov 18 replay report](../reproduction/m20-source-replay-2026-11-18/README.md).

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
- A separate replay of Dahan's Theorem 3.9 criterion succeeded on 20,000 primes `n ≡ 1 (mod 24)` through `n=2,172,241`, with coprime `u,a <= 40`; the maximum minimal depth was 8 and an independent row audit passed. This is a finite replay of the paper's criterion, not an Erdős–Straus proof, asymptotic result, or novelty claim. See the [20,000-row package](../research/number-theory/egyptian-fractions/dahan-theorem39-extension-20000-v1/README.md).
- **Prime divisibility and square-root-of-2:** the Case Desk shows known-result checking and proof reuse. These are calibration examples, not novel theorems. The separate restricted dossier materials are not part of the reproduction bundle.

The [public reproduction index](../reproduction/README.md) provides source, status, and replay evidence. The Nov 12 [showcase source branch](https://github.com/DarthCeltic/MathCase/tree/codex/math-results-showcase-20261112) contains additional historical research files; some status notes there predate the Nov 18 replay documented here.
- **C7 five-symbol search (2026-11-28):** A whole-graph randomized greedy search over all 16,807 vertices, with no fixed seed or diagonal restriction, ran 180 seconds and reached a pairwise-valid code of size 253. The published 367-word baseline passed the same independent checker and a planted adjacent-word control was rejected. No 368 witness was found; this does not rule one out or change the known bounds. [Reproduction package](../research/frontier-2026-11/shannon-c7-368-whole-graph-greedy-v1/README.md).
- **C7 surplus-neighborhood pilot (2026-11-28):** A separate bounded exchange search tested whether compatible outsiders could replace fewer words from the known 367 seed. Its best recorded set had size 2 against a three-word neighborhood (surplus −1); the direct verifier and damaged control passed. This does not exhaust the criterion or rule out a 368 code. [Reproduction package](../research/frontier-2026-11/shannon-c7-368-surplus-neighborhood-v1/README.md).
