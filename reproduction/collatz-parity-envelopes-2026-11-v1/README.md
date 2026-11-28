# Collatz parity envelopes: bounded first drops

Lean checked four different conditions under which the Collatz sequence falls below its start. Only 23/14 has a human-reviewed statement; the other three remain exploratory. None proves the Collatz conjecture.

## Reproduce the reviewed 23/14 proof

Install Lean 4.33.1 and make its `lean` executable available on your path. From the root of a fresh MathCase checkout, run:

```sh
python -B scripts/run_public_case.py collatz-parity-envelope-23-14 --lean PATH_TO_LEAN_4_33_1
```

The launcher builds the four required modules from source in a new output directory. Lean Core is sufficient. The command checks the exact target and its axioms, then writes the replay receipt to that directory.

We ran this command on Windows from a fresh, credentials-disabled clone of [the tested public commit](https://github.com/DarthCeltic/MathCase/commit/f9250c96eed7000e5441ad83854b58898521b1a1) using the official Lean 4.33.1 release. It passed in 14.251 seconds with all four module exits at zero. The descent theorem uses `propext` and `Quot.sound`. The count and combined statement also use `Classical.choice`. The [replay receipt](evidence/23-14-official-replay/public-launcher/replay-result.json) and [verification record](evidence/23-14-official-replay/public-launcher/verification.json) give the source and toolchain hashes. An independent third-party rerun remains open.

The target uses the exact original proof bytes preserved in `AtMostFourteen23.original-crlf.bin`. The runner verifies that snapshot against its hash and checks that the adjacent readable source differs only in newline encoding. The [release manifest](evidence/23-14-official-replay/release-manifest.json) also binds the earlier replay and points to its archived runner.

The [diagnostics guide](../../docs/diagnostics/README.md) keeps the broader exploratory checks available. To inspect the four-target runner, see [replay.py](replay.py).

## Current public-main replay

The same scoped launcher was rerun from the anonymous public `main` checkout at `ab6ff689860696e06726c74b5336782210a8f10f`. Lean 4.33.1 compiled all four required modules into a new output directory; every module exited 0, the expected axiom lists matched, and the runner rejected any `sorryAx` token in captured module output. The [human-readable replay record](evidence/23-14-public-main-2026-11-26/README.md) gives the command setup, official toolchain and source/output hashes. The fresh run used 57.682 seconds summed across the four Lean invocations. This is a local replay from public source, not an independent third-party review.

A first invocation in the same environment reached the `elan` shim without a default toolchain and failed before Lean read any source; its exact error is in the [setup-failure record](evidence/23-14-public-main-2026-11-26/setup-failure.txt). After putting the hash-verified official Lean 4.33.1 binary directory on `PATH`, the exact public command passed. The package's reproduction instructions already require the matching Lean executable on `PATH`.
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
