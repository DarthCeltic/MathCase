# Collatz parity envelopes: bounded first drops

Lean checked four different conditions under which the Collatz sequence falls below its start. Only 23/14 has a human-reviewed statement; the other three remain exploratory. None proves the Collatz conjecture.

## Reproduce the source checks

Install Lean 4.33.1 locally. The toolchain is pinned in `lean-toolchain`. From the repository root run:

```sh
python -B reproduction/collatz-parity-envelopes-2026-11-v1/replay.py
```

This combined command builds the 23/14 target and the separate exploratory 24/15, 31/19, and 32/20 targets. For the reviewed 23/14 target alone, use the separately recorded source runner instead:

```sh
python -B reproduction/collatz-parity-envelopes-2026-11-v1/replay-scoped-validation-v2.py --lean /path/to/lean --output /path/to/new/replay-output
```

The output directory must be new. This runner compiles the 23/14 target and shared prerequisite modules; it does not compile the other three parameter targets. The recorded run used `replay-scoped-validation.py`, SHA-256 `4f26cc3145d22dbcdc87029b693bcac04f8ece4eddc1ef63357043fad7dbee2d`. `replay-scoped-validation-v2.py` differs only in the argparse help description (SHA-256 `0ac4c95f1219efb960e5f23258959bd03bf22d857117d0236c86a889e49710f7`); it was not itself Lean-run. The [runner manifest](evidence/23-14-official-replay/runner-manifest.json) binds both files and records the AST comparison. The execution receipt binds the exact runner used for the recorded pass.

The combined `replay.py` script creates a new temporary output directory, compiles the three shared modules, four target modules, and two axiom-audit modules with one Lean process at a time, records compiler output and source/olean hashes, checks each expected theorem axiom set, and rejects any `sorryAx` report. It does not download Lean or dependencies. The proofs use Lean Core only; no Mathlib or Docker is required. For a recorded route through the common case launcher, use `python -B scripts/run_public_case.py collatz-parity-envelope-23-14`.

Git requires LF text in this repository. The exact original CRLF bytes of `AtMostFourteen23.lean` and `AxiomAudit31.lean` are therefore kept in adjacent `.original-crlf.bin` files. The replay script verifies each byte snapshot and that its LF-readable `.lean` copy is otherwise identical, then compiles the exact preserved bytes. `evidence/source-byte-bindings.json` records the original and display hashes and binds each snapshot to its public receipt projection and the original private receipt digest. The prior 23/14 receipt binds `AtMostFourteen23.lean` at SHA-256 `680d0ea3f62203261456ec4a9e75b5294bbf0991cb769321ba96bd7cd789d175`.

### Recorded public-source 23/14 replay

An author-side run from an anonymous public clone at MathCase source commit `343e9e9fcbd002bc474fffc9ed5faace1351cd37` used the separate target runner above. It compiled four modules, each with exit code 0, in 30.906 seconds total. Lean reported version 4.33.1; the execution receipt records executable SHA-256 `af49bacfabaa1fea71332ca0feae0fa1a60912219d5902291adc79f905bffb8d` and official archive SHA-256 `f63029c0e1e6daed0f4807481b6fcd8f8b77fbce6d63f205c7f9191072387a7a`. The target receipt records the exact theorem axiom dependencies: the union is `[Classical.choice, propext, Quot.sound]`; it reports no `sorryAx`, `native_decide`, or `trustCompiler` dependency. The target covers 7,507,638 residue classes out of 8,388,608 modulo `2^23`, with bounded descent by at most 37 ordinary steps for `n ≥ 3` when at most 14 of the first 23 accelerated inputs are odd.

The script made no network requests, but operating-system network isolation was not enforced. This is an author-side public-clone replay, not an independent third-party replay. The direct Python invocation had no outer global timeout; the runner set 900 seconds per Lean process and the full run completed in 30.906 seconds, within the authorized 600-second ceiling. The [execution procedure addendum](evidence/23-14-official-replay/execution-procedure-addendum.json) records that the ceiling was not enforced by an outer watchdog; the PASS is for the Lean result, with that procedure limitation noted. The exact [result receipt](evidence/23-14-official-replay/replay-result.json) has SHA-256 `a174ea50afcd541dd9d618a48626b581692664fd69217d1aef8e7e9c6f6a65aa`; the [execution receipt](evidence/23-14-official-replay/execution-receipt.json) has SHA-256 `3e2fc2a054a049a26428f05b425d4fa158e1286863a5a9bc39fdb1cab9a6c27f`. Path-sanitized module transcripts are in `evidence/23-14-official-replay/logs/`; the result receipt's relative log references resolve to these copies. The only redaction replaces the single absolute source path in `AtMostFourteen23.txt` with `materialized-inputs/AtMostFourteen23.lean`; the raw logs remain private. The sanitized transcript hashes are recorded in [`logs/SHA256SUMS`](evidence/23-14-official-replay/logs/SHA256SUMS). These receipts do not establish global convergence, novelty, or independent review. This package is not the 363-module M20 Docker replay.

## Results

| Filter | Exact qualifying classes | Modulus | Maximum ordinary steps | Status |
|---|---:|---:|---:|---|
| 23 accelerated steps, at most 14 odd | 7,507,638 | 8,388,608 | 37 | Lean PASS; M0 YES |
| 24 steps, at most 15 odd | 15,505,590 | 16,777,216 | 39 | Lean PASS; exploratory, M0 not reviewed |
| 31 steps, at most 19 odd | 1,986,838,144 | 2,147,483,648 | 50 | Source compile exit 0; separate audit `[Classical.choice, propext, Quot.sound]` passed; exploratory |
| 32 steps, at most 20 odd | 4,058,348,603 | 4,294,967,296 | 52 | Lean PASS; exploratory, M0 not reviewed |

All counts and their claim boundaries are in `STATEMENTS.md` and `evidence/summary.json`. The three exploratory cases have not received an M0 YES.

## Receipts and failures

The public-safe receipt projections preserve the original private receipt hashes, module source hashes, exit codes, stdout/stderr hashes, OLEAN hashes, and axiom reports while omitting workstation paths and absolute command arrays. They are new public projections, not byte-for-byte copies of the local receipts.

- 23/14: `evidence/receipt-23-14.json`; original receipt SHA-256 `9fcb62099417bd0ad46a60dc0addab267b18145f893fb5ff2761e25dba904497`. The additional public-source run is under `evidence/23-14-official-replay/`.
- 24/15: `evidence/receipt-24-15.json`; original receipt SHA-256 `afd7c5abf086158475616b9d14981904bc7107bc5c6c5fc5974fd1ca8cee6734`. The preflight failure from the stale source filename is preserved in the failure history.
- 31/19: source compile projection `evidence/receipt-31-19.json`; separate axiom audit [receipt](evidence/receipt-31-19-independent-axiom-audit-v2.json). The original `FAIL_AUDIT` receipt remains recorded as such. The separate audit passed with `Classical.choice` by auditing the already-compiled OLEAN (`fresh_source_compilation: false`); it was not a second source compilation. The exact bytes of the audit source are also preserved because its historical input used CRLF. This target remains exploratory and was not part of the scoped 23/14 replay.
- 32/20: `evidence/receipt-32-20.json`; original receipt SHA-256 `d2f7a576935ab96fc515be68ea05d2259abb2509070bd810b51fcba5bf761479`.
- Failed 31/19 proof attempts and the 24/15 preflight failure: `evidence/failure-history.json`.
- Hash-bound 23/14 statement review: `evidence/m0-review-23-14.json`. Ryan's release note gives the YES reply at Nov 23, 21:57 ET; the stored hash-bound record was generated at 23:53 ET, shown separately.

## What this establishes

Each theorem proves a parity-conditioned bounded first drop for every natural start covered by that condition. The percentages, if computed from the exact rows, are shares of their respective finite residue spaces. The filters are not a cumulative Collatz coverage score. No global convergence, novelty, or priority claim is made. M4 remains unpromoted.
