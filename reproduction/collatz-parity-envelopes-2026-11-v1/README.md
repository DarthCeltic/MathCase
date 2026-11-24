# Collatz parity envelopes: four bounded first drops

Lean checked four different conditions under which the Collatz sequence falls below its start. Only 23/14 has a human-reviewed statement; the other three remain exploratory. None proves the Collatz conjecture.

## Reproduce the source checks

Install Lean 4.33.1 locally. The toolchain is pinned in `lean-toolchain`. From the repository root run:

```sh
python -B reproduction/collatz-parity-envelopes-2026-11-v1/replay.py
```

The script creates a new temporary output directory, compiles the three shared modules, four target modules, and two axiom-audit modules with one Lean process at a time, records compiler output and source/olean hashes, checks each expected theorem axiom set, and rejects any `sorryAx` report. It does not download Lean or dependencies. The proofs use Lean Core only; no Mathlib or Docker is required. For a recorded route through the common case launcher, use `python -B scripts/run_public_case.py collatz-parity-envelope-23-14`.

Git requires LF text in this repository. The exact original CRLF bytes of `AtMostFourteen23.lean` and `AxiomAudit31.lean` are therefore kept in adjacent `.original-crlf.bin` files. The replay script verifies each byte snapshot and that its LF-readable `.lean` copy is otherwise identical, then compiles the exact preserved bytes. `evidence/source-byte-bindings.json` records the original and display hashes and binds each snapshot to its public receipt projection and the original private receipt digest. The prior 23/14 receipt binds `AtMostFourteen23.lean` at SHA-256 `680d0ea3f62203261456ec4a9e75b5294bbf0991cb769321ba96bd7cd789d175`.

The public replay script was prepared for this release but was not run during publication. The receipts below bind the earlier local source-to-kernel runs. A stranger's clean-checkout replay remains open until someone runs this published script from a fresh public clone. This package is not the 363-module M20 Docker replay.

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

- 23/14: `evidence/receipt-23-14.json`; original receipt SHA-256 `9fcb62099417bd0ad46a60dc0addab267b18145f893fb5ff2761e25dba904497`.
- 24/15: `evidence/receipt-24-15.json`; original receipt SHA-256 `afd7c5abf086158475616b9d14981904bc7107bc5c6c5fc5974fd1ca8cee6734`. The preflight failure from the stale source filename is preserved in the failure history.
- 31/19: source compile projection `evidence/receipt-31-19.json`; separate axiom audit [receipt](evidence/receipt-31-19-independent-axiom-audit-v2.json). The original `FAIL_AUDIT` receipt remains recorded as such. The separate audit passed with `Classical.choice` by auditing the already-compiled OLEAN (`fresh_source_compilation: false`); it was not a second source compilation. The exact bytes of the audit source are also preserved because its historical input used CRLF. The public replay script is a new fresh-source path and has not been run in this release.
- 32/20: `evidence/receipt-32-20.json`; original receipt SHA-256 `d2f7a576935ab96fc515be68ea05d2259abb2509070bd810b51fcba5bf761479`.
- Failed 31/19 proof attempts and the 24/15 preflight failure: `evidence/failure-history.json`.
- Hash-bound 23/14 statement review: `evidence/m0-review-23-14.json`. Ryan's release note gives the YES reply at Nov 23, 21:57 ET; the stored hash-bound record was generated at 23:53 ET, shown separately.

## What this establishes

Each theorem proves a parity-conditioned bounded first drop for every natural start covered by that condition. The percentages, if computed from the exact rows, are shares of their respective finite residue spaces. The filters are not a cumulative Collatz coverage score. No global convergence, novelty, or priority claim is made. M4 remains unpromoted.
