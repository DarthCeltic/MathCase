# Public case catalog

The website's [case index](https://darthceltic.github.io/cases.html) groups the available demonstrations by what a visitor can actually do: inspect saved evidence, run exact arithmetic, or replay a local Lean check. Opening the saved reader does not start a new proof or model call.

## One-command local launcher

From the repository root, run `python scripts/run_public_case.py list` to list the seventeen public case IDs. Then run one case, for example `python scripts/run_public_case.py collatz` or `python scripts/run_public_case.py ramsey66`. Each invocation creates a fresh output directory and stops at the first failed check. The default routes use local Python/Lean checks; `prime-sqrt2` needs a pinned Mathlib checkout or an explicit `--bootstrap` path, `riemann` fetches four hash-pinned public source files, and `visitor` requires a trusted `.lean` file. No inference model is called.

The available IDs are counterexample, prime-sqrt2, collatz, collatz-at-most-twelve, collatz-at-most-thirteen, collatz-at-most-thirteen-22, collatz-at-most-seventeen-27, collatz-parity-envelope-23-14, collatz-table, model-pilot, ramsey55, ramsey66, egyptian, riemann, vp-vnp-example, vp-vnp-source-audit, and visitor. The lower-level commands below remain available for targeted reproduction.

The `collatz-parity-envelope-23-14` route compiles nine Lean Core modules in a fresh temporary output directory, audits all printed axiom dependencies, and preserves source/olean hashes. It covers the reviewed 23/14 result plus the exploratory 24/15, 31/19, and 32/20 cases. It does not run Mathlib or Docker and does not make the exploratory statements human-reviewed.

## Six additional research tracks

The separate [frontier package](../research/frontier-2026-11/README.md) includes runnable bounded checks for `vdw-2-7`, `ws-5`, `ramsey-3-3-3-3`, `vdw-5-3`, `egyptian-28k-21`, and `ramsey-6-6`. Run `python scripts/run_frontier_case.py list` to inspect them, then run one ID. These six bounded checks remain separate from the seventeen public case IDs above. The runner records whether each command exited successfully; a bounded search can still end `UNKNOWN`, so read the per-check result before interpreting it. The human-facing summaries are on the [frontier page](https://darthceltic.github.io/frontier.html).

For the `prime-sqrt2` route, `--stage-timeout SECONDS` overrides the 600-second default for each Lean compile, exact-target audit, and negative-control stage. For example: `python scripts/run_public_case.py prime-sqrt2 --mathlib PATH_TO_PINNED_MATHLIB --stage-timeout 900`. A timeout exits 124 and writes a JSON receipt with `TIMEOUT`, the stage name, configured limit, and elapsed time. The deliberate dropped-primality control is recorded as `REJECTED` inside an overall `PASS`; that expected rejection is not a timeout or a failed replay.

## Included actions

- VP versus VNP: run the local 2x2 example with python scripts/run_public_case.py vp-vnp-example, or check seven pinned upstream source files with python scripts/run_public_case.py vp-vnp-source-audit. Neither command compiles Lean or validates the upstream theorem. See the [worked example and scope](vp-vnp-source-audit-v1/README.md).


- **Prime divisibility:** saved model attempt, Lean rejection of the first candidate, and checked correction. Open the [saved reader case](https://darthceltic.github.io/reader.html?scope=public#case/hero-prime-divisibility-r1).
- **Composite counterexample:** exact local calculation for `4 ∣ 2²` but `4 ∤ 2`. Open the [saved reader case](https://darthceltic.github.io/reader.html?scope=public#case/hero-composite-counterexample-r1).
- **√2 child:** a local source replay is available in `reproduction/prime-sqrt2-source-replay-v1/`. It compiles the public parent then child from pinned source bytes. This is candidate-only source replay evidence; it does not promote dossier status.
- **Collatz:** the 2,652-row affine proof route, the new 12-of-20 parity theorem and count, and an independent single-pair model comparison have separate commands and scopes under `reproduction/` and `research/`.
- **Collatz at most 12 of 20:** `python scripts/run_public_case.py collatz-at-most-twelve` compiles the family-wide variable-step theorem, audits its axioms, and enumerates all 1,048,576 parity residues. It covers 86.841% of the modular residue classes at steps `20+h`, with `n >= 3`; it does not prove convergence.
- **Collatz at most 13 of 21:** `python scripts/run_public_case.py collatz-at-most-thirteen` recompiles five Lean-core modules from a fresh temporary directory, checks complete wrapped axiom reports, and enumerates all 2,097,152 residues. It covers 1,898,712 classes (90.5376%) at steps `21+h`, for `n >= 3`; the exactly-14-odd boundary is checked separately, and this does not prove convergence.
- **Collatz at most 13 of 22:** `python scripts/run_public_case.py collatz-at-most-thirteen-22` compiles four Lean-core modules from fresh source copies, audits the exact axiom reports, and checks the coefficient thresholds plus all qualifying starts from 3 through 312. It proves a first drop by ordinary step 35 for every `n >= 3` whose first 22 accelerated inputs contain at most 13 odd inputs; exactly 3,593,934 of 4,194,304 residue classes qualify (85.6861%). This is bounded descent, not global convergence.
- **Collatz at most 17 of 27:** `python scripts/run_public_case.py collatz-at-most-seventeen-27` compiles five Lean-core modules from fresh source copies, checks the parameterized descent lemma and all 18 coefficient cases, then runs a separate exact integer audit. For every `n >= 26,018` with at most 17 odd inputs among the first 27 accelerated steps, an ordinary iterate at step `27+h <= 44` is smaller. The audit counts 126,025,204 of 134,217,728 qualifying residue classes (93.8961%) by two arithmetic methods; that numeric sum is not a separate Lean numeral theorem. This is bounded descent, not global convergence or natural density.
- **Ramsey R(6,6):** an independent Python checker exhaustively searches the 101-vertex Paley graph and complement for six-cliques. Run `python scripts/run_public_case.py ramsey66`; this is a finite certificate check, not a Lean proof or an exact value for R(6,6).
- **Ramsey R(6,6) Lean replay:** the separate [Lean bundle](ramsey-r66-lean-v1/README.md) checks the known 101-vertex witness. Its recorded pinned-container source replay passed; the current public Lake lock does not match the older Lake receipt, so the clean Lake rebuild is still open.
- **Matrix multiplication:** the [2×2 worked example](matrix-exponent-2x2-v1/README.md) checks one ordinary and one Strassen calculation and includes a damaged-result control. The upstream `9/4` theorem is not independently replayed here: the exact Lean target was not reached before timeout, and Comparator was not run.
- **Ramsey and Erdős–Straus:** use the [human work ledger](https://darthceltic.github.io/work.html#ramsey) for the known Ramsey witness and finite computations, and the [Erdős–Straus section](https://darthceltic.github.io/work.html#egyptian) for the bounded search and one identity family. Neither page claims to solve the corresponding open problem.

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
