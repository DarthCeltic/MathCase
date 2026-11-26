# MathCase public reproduction evidence

## Report an independent check

If you have access to a machine outside the MathCase project, there are three checks you can repeat from public files. A failed run is worth reporting too.

| What you want to check | Where to start | Expected result |
| --- | --- | --- |
| A small Lean proof | [23-step Collatz proof, exact revision and command](https://github.com/DarthCeltic/MathCase/blob/f6025ba3ca220e5749036976497b71d11852ef29/reproduction/collatz-parity-envelopes-2026-11-v1/evidence/23-14-public-main-2026-11-26/README.md) | Four Lean Core modules compile. For starts at least 3 with at most 14 odd inputs, the 23rd shortcut endpoint lies below the start. |
| A finite arithmetic result, using Python alone | [Smallest possible largest denominators](https://github.com/DarthCeltic/MathCase/tree/6d6791c25dea00d08e3663c0ea3fdbcec6d9dda0/research/number-theory/egyptian-fractions/least-largest-denominator-v1) | The integer checker verifies 143 minima. The unique worst ratio is 1,032 at the prime 9,601. |
| The complete M20 build | [Full source replay instructions at the archived revision](https://github.com/DarthCeltic/MathCase/blob/0b2b343bc09e3608cf458fb693abddfe11726d7c/reproduction/m20-public-source-replay-v1/ORIGINAL_REPLAY.md) | 363 modules compile and 23 audit groups report the axioms of 4,262 declarations. The project run took about 3 hours 43 minutes on one CPU. |

To [report a replay](https://github.com/DarthCeltic/MathCase/issues/new?title=Independent%20replay), give the case, commit from `git rev-parse HEAD`, OS, tool versions, command and outcome. For a failure, the first failing stage and its diagnostic are especially helpful. Small summaries or public log links are sufficient. A comparison of the two outputs, or a discrepancy you can reproduce, gives readers something concrete to follow.

Mathematicians can also [review a statement](https://github.com/DarthCeltic/MathCase/issues/new?title=Mathematical%20review). Identify the declaration and the plain-language sentence you compared. Say whether the hypotheses, conclusion, step convention and literature attribution agree. A literature reference, a counterexample or a suggested correction is welcome. A mathematical review can be recorded independently of a software run.

## Proofs and saved evidence

Start with the [bounded 23/14 Collatz proof](collatz-parity-envelopes-2026-11-v1/README.md). For every start `n ≥ 3` with at most 14 odd inputs in the first 23 accelerated steps, an ordinary iterate is smaller by step 37. Lean counted 7,507,638 qualifying residue classes out of 8,388,608 modulo `2^23`. The package includes the one-command replay and its successful fresh public-checkout receipt.

Visitors can also read the [right-triangle midpoint case](coordinate-right-triangle-midpoint-v1/README.md), start with the [six-dot puzzle](https://darthceltic.github.io/mathcase/) or inspect the [saved proof example](https://darthceltic.github.io/mathcase/reader.html?scope=public#case/hero-prime-divisibility-r1), where Lean rejected an attempt and accepted a correction.

Each package below says what question it addresses, what was actually checked, and what remains open. A receipt records the exact files and tools for a run; it does not by itself prove a broader claim or replace a human review of the wording.

Other preserved verification packages include:

- [M15–M20 package](m15-m20-r2/README.md) — the surviving r2 snapshot, including source, historical receipts, the exact-statement graph, and read-only replay tools. It contains 1,036 files including its regenerated inventory, SHA-256 `98271fc28d712e48714dc21e4a871e5cc112f492c2c13461a7e2e0328690c9ee`.
- [Right-triangle midpoint identity](coordinate-right-triangle-midpoint-v1/README.md) — a known coordinate-model result with an exact R06 Lean source replay; the general coordinate reduction has not been formalized.
- [Twelve-of-twenty Collatz theorem](collatz-twelve-of-twenty-v1/README.md) — one table-free Lean theorem proves 32-step descent for every progression whose first 20 accelerated steps contain exactly 12 odd inputs; Lean also proves the exact 125,970-residue count.
- [M20 rows inside the twelve-of-twenty rule](collatz-m20-twelve-of-twenty-bridge-v1/README.md) — a pinned finite audit checks all 2,652 listed rows against the broader Lean theorem by checking parity counts and matching accelerated and ordinary endpoints. This is not a new Lean run and does not replace the historical M20 replay.
- [At-most-thirteen-of-twenty-two theorem](collatz-at-most-thirteen-of-twenty-two-v2/README.md) — Lean 4.33.1 proves a parity-conditioned first drop by ordinary step 35 for 3,593,934 residue classes modulo `2^22`; the prior failed proof attempt is preserved with its cause.
- [Four parity-envelope statements](collatz-parity-envelopes-2026-11-v1/README.md) — 23/14 is M0-reviewed and Lean-checked; 24/15, 31/19, and 32/20 remain exploratory. The combined script compiles all four and is not a 23/14-only command.
- [Two-window first-drop comparison](collatz-two-window-first-drop-2026-11-v1/README.md) — equal-size 9+6 and 6+9 filters admit 10,082,670 of 16,777,216 parity classes each. Exact affine cutoffs and finite small-start checks give sharp 24/39 versus 10/16 accelerated/ordinary first-drop bounds; a first-window cap of 6 alone suffices for 10/16. This finite arithmetic comparison is not a Lean theorem or a convergence claim.
- [Five-filter union screen](collatz-parity-basis-audit-v1/README.md) — an exact Python count over 32-step parity words, checked by two independent counting methods. It does not combine the component proofs or close the smaller-basis search.
- [Compact affine-family replay](collatz-affine-family-replay-v1/README.md) — an independent five-module Lean-core replay for all 2,652 published pairs and a prespecified 456-row sample.
- [Prime-to-√2 source replay](prime-sqrt2-source-replay-v1/README.md) — public pinned-source compile instructions for the parent and child theorem, with explicit candidate-only limits.
- [18 November source-to-kernel replay](m20-source-replay-2026-11-18/README.md) — two fresh source compilation phases, per-module hashes, axiom outputs, the first Docker watchdog failure, and the explicit historical OLEAN hash difference. Its inventory SHA-256 is `c0b111bc9518f3883e8747e0b8cd97e4340ffca7cd0d55b155629d25bf825bd7`.
- [Original M20 public-source replay runner](m20-public-source-replay-v1/ORIGINAL_REPLAY.md) — source rebuild instructions pinned to public MathCase, Mathlib, and Lean revisions. A full run completed on Nov. 26: 363 modules compiled, all 23 axiom groups and 4,262 theorem-axiom queries passed, and the axiom union was [propext, Quot.sound]. The same-host artifact audit passed; an independent stranger replay remains open. The local Docker image has no public pull URL, so the public reproduction route is the source recipe. See the [Nov. 26 run receipt and logs](m20-public-source-replay-v1/runs/2026-11-26-full-r2/README.md) and the earlier [Nov. 23 saved-run record](m20-public-source-replay-v1/runs/2026-11-23-artifact-audit/README.md) with its distinct limitation.
- [Erdős–Straus campaign](../research/number-theory/egyptian-fractions/README.md) — 100 bounded ranges through `d = 10,000,000`, per-witness files, versioned scripts, and the aggregate audit. The public input inventory is [here](egyptian-fractions-v9/inventory.json).
- [R(5,5) Lean proof bundle](ramsey-r55-lean-v1/README.md) — a known 42-vertex witness, 29 Lean sources, 27 exact chunk receipts, a final composition receipt, and rebuild instructions. The recorded run used a warm cache; clean-checkout reproduction remains open.
- [R(6,6) Paley graph certificate](ramsey-r66-paley101-v1/README.md) — an independent bounded Python search checks the 101-vertex graph and its complement for six-cliques; this finite certificate check is not a Lean proof.
- [R(6,6) Lean witness replay](ramsey-r66-lean-v1/README.md) — an author-side public-source replay rebuilt all three MathCase modules from source under the checked-in Lake lock and passed its axiom audit, reusing the public Mathlib cache fetched during setup. The older container receipt still binds a different historical lock, whose cause is unknown. A stranger's independent rebuild and mathematical review remain open.

The original 363-module source-to-kernel replay bundle concerns a bounded statement about 2,652 listed arithmetic progressions: for each listed `n = 2^20 k + r`, the 32-step value equals its recorded affine expression `3^12 k + q` and is strictly smaller. It does not establish global Collatz convergence, novelty, or M4. The original Docker image is not anonymously pullable. The compact Lean-core replay above is separately reproducible from a clean public checkout and does not substitute for the full 363-module replay. The Nov. 23 author-side full-run artifacts were audited against pinned manifests, but the run did not bind its runner hash; a fresh runner-bound replay remains open.

## Diagnostics and lab notes

Secondary source audits, worked examples for upstream results, selected M31 records, unreviewed Collatz cases, and bounded solver probes remain available in [Diagnostics and lab notes](../docs/diagnostics/README.md). This archive links to the original package paths and states what each check did not establish. A source hash, toy example, or bounded `UNKNOWN` result is not an independent proof replay.

The [TruffleHog history exception](../docs/security/trufflehog-history-exception-2026-11-20.md) records exactly two benign historical test-fixture findings, the current source correction, and the fail-closed monitor. No history rewrite or scanner weakening was performed.

The public MathCase [README](../README.md) links to the live Case Desk, the primary 23/14 theorem, and the secondary diagnostics archive. The companion human-facing site is [darthceltic.github.io](https://darthceltic.github.io/mathcase/).
