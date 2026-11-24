# MathCase results and their limits

**MathCase has a public, inspectable record of finite mathematics checks. It has not solved Collatz or Erdős–Straus.**

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

This is not yet a clean-room replay by a stranger. The recorded image is not anonymously pullable, and the full image build context is incomplete. The Lake fallback in the package is prepared but has not been run.

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
- **Affine-trace families:** selected Lean lemmas cover 2^31 k + 111 and 2^31 k + 223 in 50 steps, and 2^29 k + 167 in 47 steps. Each is a restricted all-parameter result.
- **Erdős–Straus:** the public 100-range campaign bundle records 831,860 factor-conditioned candidates with 831,860 exact witnesses through denominator parameter d=10,000,000. Its aggregate audit checked all 831,860 identities and resolved 427 bounded-search misses under a fixed 65,536 offset cap. The largest observed offset was 35,498. This is a finite filtered computation, not a proof of the conjecture or a new identity. See the [campaign data and reproduction instructions](../research/number-theory/egyptian-fractions/README.md) and [aggregate audit](../research/number-theory/egyptian-fractions/campaign-v9-10m-audit-v1/summary.md).
- **Prime divisibility and square-root-of-2:** the Case Desk shows known-result checking and proof reuse. These are calibration examples, not novel theorems. The separate restricted dossier materials are not part of the reproduction bundle.

The [public reproduction index](../reproduction/README.md) provides source, status, and replay evidence. The Nov 12 [showcase source branch](https://github.com/DarthCeltic/MathCase/tree/codex/math-results-showcase-20261112) contains additional historical research files; some status notes there predate the Nov 18 replay documented here.
