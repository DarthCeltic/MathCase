# Public case catalog

The website's [case index](https://darthceltic.github.io/cases.html) groups the available demonstrations by what a visitor can actually do: inspect saved evidence, run exact arithmetic, or replay a local Lean check. Opening the saved reader does not start a new proof or model call.

## One-command local launcher

From the repository root, run `python scripts/run_public_case.py list` to list the ten public case IDs. Then run one case, for example `python scripts/run_public_case.py collatz` or `python scripts/run_public_case.py ramsey66`. Each invocation creates a fresh output directory and stops at the first failed check. The default routes use local Python/Lean checks; `prime-sqrt2` needs a pinned Mathlib checkout or an explicit `--bootstrap` path, `riemann` fetches four hash-pinned public source files, and `visitor` requires a trusted `.lean` file. No inference model is called.

The available IDs are `counterexample`, `prime-sqrt2`, `collatz`, `collatz-table`, `model-pilot`, `ramsey55`, `ramsey66`, `egyptian`, `riemann`, and `visitor`. The lower-level commands below remain available for targeted reproduction.

For the `prime-sqrt2` route, `--stage-timeout SECONDS` overrides the 600-second default for each Lean compile, exact-target audit, and negative-control stage. For example: `python scripts/run_public_case.py prime-sqrt2 --mathlib PATH_TO_PINNED_MATHLIB --stage-timeout 900`. A timeout exits 124 and writes a JSON receipt with `TIMEOUT`, the stage name, configured limit, and elapsed time. The deliberate dropped-primality control is recorded as `REJECTED` inside an overall `PASS`; that expected rejection is not a timeout or a failed replay.

## Included actions

- **Prime divisibility:** saved model attempt, Lean rejection of the first candidate, and checked correction. Open the [saved reader case](https://darthceltic.github.io/reader.html?scope=public#case/hero-prime-divisibility-r1).
- **Composite counterexample:** exact local calculation for `4 ∣ 2²` but `4 ∤ 2`. Open the [saved reader case](https://darthceltic.github.io/reader.html?scope=public#case/hero-composite-counterexample-r1).
- **√2 child:** a local source replay is available in `reproduction/prime-sqrt2-source-replay-v1/`. It compiles the public parent then child from pinned source bytes. This is candidate-only source replay evidence; it does not promote dossier status.
- **Collatz:** the 2,652-row affine proof route, the new 12-of-20 parity theorem and count, and an independent single-pair model comparison have separate commands and scopes under `reproduction/` and `research/`.
- **Ramsey R(6,6):** an independent Python checker exhaustively searches the 101-vertex Paley graph and complement for six-cliques. Run `python scripts/run_public_case.py ramsey66`; this is a finite certificate check, not a Lean proof or an exact value for R(6,6).
- **Ramsey and Erdős–Straus:** use the [human work ledger](https://darthceltic.github.io/work.html#ramsey) for the known Ramsey witness and finite computations, and the [Erdős–Straus section](https://darthceltic.github.io/work.html#egyptian) for the bounded search and one identity family. Neither page claims to solve the corresponding open problem.

## Bring a theorem of your own

Use the visitor workbench to write a Lean file, save it, and request a compiler check. For a reproducible local check of a trusted Lean source, the public CLI command is:

```sh
python3 scripts/check_visitor_case.py path/to/YourTheorem.lean --receipt YourTheorem.receipt.json
```

A compiler-accepted file shows that Lean accepted that formal statement and proof. It does not by itself confirm that the statement captures your informal problem, establish novelty, or certify an M0/M4 dossier gate.
