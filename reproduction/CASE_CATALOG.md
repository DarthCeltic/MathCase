# Public case catalog

The [right-triangle midpoint identity](coordinate-right-triangle-midpoint-v1/README.md) gives a worked geometry example and a bounded Lean replay path. The website's [case index](https://darthceltic.github.io/mathcase/cases.html) groups demonstrations by what a visitor can actually do: inspect saved evidence, run exact arithmetic, or replay a local Lean check. Opening the saved reader does not start a new proof or model call. The featured Lean result is the bounded 23/14 first-drop theorem below; source audits and exploratory runs are listed separately as diagnostics.

## One-command local launcher

From the repository root, `python scripts/run_public_case.py list` prints the available command IDs. These IDs are actions, not a count of mathematical results. Each invocation creates a fresh output directory and stops at the first failed check. Routes use local Python or Lean checks; `prime-sqrt2` needs pinned Mathlib or an explicit `--bootstrap` path, selected source checks fetch pinned public files, and `visitor` requires a trusted `.lean` file. No inference model is called.

Use `python scripts/run_public_case.py list` to see the current identifiers. Lower-level commands remain available for targeted reproduction.

Run `python -B scripts/run_public_case.py collatz-parity-envelope-23-14` with Lean 4.33.1 to check the reviewed bounded first-drop theorem. Four modules compiled from a fresh public checkout. The [case README](collatz-parity-envelopes-2026-11-v1/README.md) gives the result and exact scope. The [diagnostics guide](../docs/diagnostics/README.md) lists the separate exploratory checks.

M31 v1, upstream source audits and small worked examples, and bounded solver probes are diagnostics rather than featured results. Their exact commands and limits are in [Diagnostics and lab notes](../docs/diagnostics/README.md).

## Six additional research tracks

The separate [frontier package](../research/frontier-2026-11/README.md) includes bounded checks for `vdw-2-7`, `ws-5`, `ramsey-3-3-3-3`, `vdw-5-3`, `egyptian-28k-21`, and `ramsey-6-6`. Run `python scripts/run_frontier_case.py list` to inspect them, then run one ID. Command IDs across either runner are not a count of results. A bounded search can still end `UNKNOWN`; read its per-check result before interpreting it. The visitor summaries are on the [frontier page](https://darthceltic.github.io/mathcase/frontier.html).

For the `prime-sqrt2` route, `--stage-timeout SECONDS` overrides the 600-second default for each Lean compile, exact-target audit, and negative-control stage. For example: `python scripts/run_public_case.py prime-sqrt2 --mathlib PATH_TO_PINNED_MATHLIB --stage-timeout 900`. A timeout exits 124 and writes a JSON receipt with `TIMEOUT`, the stage name, configured limit, and elapsed time. The deliberate dropped-primality control is recorded as `REJECTED` inside an overall `PASS`; that expected rejection is not a timeout or a failed replay.

## Included actions

- **Right-triangle midpoint:** `python scripts/run_public_case.py geometry-midpoint` rebuilds the known squared-distance identity for the normalized model `(0,0)`, `(a,0)`, `(0,b)`, with positive `a,b`. It does not formalize the coordinate reduction for every Euclidean right triangle; the public clean replay is still unverified. Read the [human explanation and limits](coordinate-right-triangle-midpoint-v1/README.md).

- **Diagnostics and lab notes:** [VP/VNP source identity and arithmetic example](../docs/diagnostics/README.md), [matrix example](../docs/diagnostics/README.md), [Riemann source check](../docs/diagnostics/README.md), and bounded solver outcomes. These commands check only their stated examples, bytes, or bounded searches; they do not independently verify the upstream mathematical results.


- **Prime divisibility:** saved model attempt, Lean rejection of the first candidate, and checked correction. Open the [saved reader case](https://darthceltic.github.io/mathcase/reader.html?scope=public#case/hero-prime-divisibility-r1).
- **Composite counterexample:** exact local calculation for `4 ∣ 2²` but `4 ∤ 2`. Open the [saved reader case](https://darthceltic.github.io/mathcase/reader.html?scope=public#case/hero-composite-counterexample-r1).
- **√2 child:** a local source replay is available in `reproduction/prime-sqrt2-source-replay-v1/`. It compiles the public parent then child from pinned source bytes. This is candidate-only source replay evidence; it does not promote dossier status.
- **Collatz:** the 2,652-row affine proof route, the new 12-of-20 parity theorem and count, and an independent single-pair model comparison have separate commands and scopes under `reproduction/` and `research/`.
- **Collatz at most 12 of 20:** `python scripts/run_public_case.py collatz-at-most-twelve` compiles the family-wide variable-step theorem, audits its axioms, and enumerates all 1,048,576 parity residues. It covers 86.841% of the modular residue classes at steps `20+h`, with `n >= 3`; it does not prove convergence.
- **Collatz at most 13 of 21:** `python scripts/run_public_case.py collatz-at-most-thirteen` recompiles five Lean-core modules from a fresh temporary directory, checks complete wrapped axiom reports, and enumerates all 2,097,152 residues. It covers 1,898,712 classes (90.5376%) at steps `21+h`, for `n >= 3`; the exactly-14-odd boundary is checked separately, and this does not prove convergence.
- **Collatz at most 13 of 22:** `python scripts/run_public_case.py collatz-at-most-thirteen-22` compiles four Lean-core modules from fresh source copies, audits the exact axiom reports, and checks the coefficient thresholds plus all qualifying starts from 3 through 312. It proves a first drop by ordinary step 35 for every `n >= 3` whose first 22 accelerated inputs contain at most 13 odd inputs; exactly 3,593,934 of 4,194,304 residue classes qualify (85.6861%). This is bounded descent, not global convergence.
- **M20 rows inside the 12-of-20 rule:** `python scripts/run_public_case.py collatz-m20-twelve-of-twenty-bridge` checks all 2,652 published rows against the saved 12-of-20 Lean theorem: every row has the required parity count and the same base endpoint under two step-by-step calculations. The existing theorem then supplies the all-`k` result. This is a finite bridge audit, not a new Lean run, and does not replace the older M20 replay.
- **Ramsey R(6,6):** an independent Python checker exhaustively searches the 101-vertex Paley graph and complement for six-cliques. Run `python scripts/run_public_case.py ramsey66`; this is a finite certificate check, not a Lean proof or an exact value for R(6,6).
- **Ramsey R(6,6) Lean replay:** the separate [Lean bundle](ramsey-r66-lean-v1/README.md) checks the known 101-vertex witness. An author-side public-source replay rebuilt all three MathCase modules with no pre-existing MathCase OLEANs and passed under the checked-in Lake lock; it reused the public Mathlib cache fetched during setup. The original container receipt still binds an older lock with an unexplained mismatch. A stranger's independent rebuild and mathematical review remain open.
- **Ramsey and Erdős–Straus:** use the [human work ledger](https://darthceltic.github.io/mathcase/work.html#ramsey) for the known Ramsey witness and finite computations, and the [Erdős–Straus section](https://darthceltic.github.io/mathcase/work.html#egyptian) for the bounded search and one identity family. Neither page claims to solve the corresponding open problem.

## Bring a theorem of your own

Use the visitor workbench to start from the 4-and-2 counterexample, edit the plain claim, then open the technical details to set the exact Lean proposition and theorem name. Export the full case and run the target-bound check:

```sh
python scripts/run_public_case.py visitor --case-packet path/to/YourCase.mathcase.json
```

The checker asks the pinned Lean compiler to prove the exact proposition using the named declaration, prints the axiom dependencies, and writes a receipt with source, target, claim, generated-input, stdout, and stderr hashes. A matching hash binds the recorded bytes; it does not prove the English sentence is a faithful description of the Lean target. A person must make that review. The import button compares the receipt to the current workbench draft. This is local visitor evidence, not an M0/M4 dossier decision, signature, novelty claim, or authenticated MathCase run. For sources that import Mathlib, use `--lake-project PATH` with a prepared Lean 4.33.1 project; this command does not install or fetch dependencies.

The backward-compatible source-only route still exists for quick compiler syntax checks:

```sh
python3 scripts/check_visitor_case.py path/to/YourTheorem.lean --receipt YourTheorem.receipt.json
```

This legacy receipt only says Lean accepted the submitted file. It does not compare a displayed proposition, report axioms, establish novelty, or certify an M0/M4 dossier gate.
