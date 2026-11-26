# R(6,6) Lake lock provenance addendum

Checked: 2026-11-24, 18:21 EST.

## Finding

The saved public-source Lake receipt reports a successful source build and axiom audit, but its recorded `lake-manifest.json` SHA-256 is `2a66a99e178e711c07f724bd787aa4cead8b2ae674296b5987cf0906ff3d99e9`. The manifest checked into this package has SHA-256 `958b34400c85f0e6e9e1a3ec9c2c67e3df25fcfed9195c53d50302af588f3c0f`. The current package verifier therefore rejects treating the historic receipt as bound to the current lock. The old receipt was not edited.

## Bytes and dependencies checked

- The checked-in manifest blob and its working file are byte-identical. The file is 3,153 bytes, uses LF line endings, and `.gitattributes` specifies `eol=lf`.
- Converting that current file to CRLF yields SHA-256 `2fa4d16f4151a40badebe2bb2e5388f60f54301984c824578b928c27cb345482`, which is not the historic receipt hash.
- All nine dependency revisions in the current manifest match the installed dependency repositories, including Mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474`.
- Every MathCase source hash and OLEAN output hash recorded for the four package modules matches the saved Lake receipt. The Mathlib `Mathlib.Algebra.Field.ZMod` source also matches its recorded hash.
- Two saved historical ZMod OLEAN copies match the recorded SHA-256 `938c6f7059ce287a2b2c97015a0bec40760213bd7e56aba66ced6f1ad20ad667`. The currently installed public-cache OLEAN has SHA-256 `1e99e408925cea505f04d374a331c5f414afe16f343d56081466605dda415499`, so it is not the saved historical output.
- The historical manifest bytes were not found in the saved R(6,6) package/run trees that were checked. The package-metadata LF-normalization chronology is a plausible explanation for the mismatch, but the exact cause is unproven: the post-normalization build note records no replacement manifest hash.

## What the lightweight checks establish

`python replay_r66.py --verify-inputs` checks the current package's pinned files and recorded audit text. It does not invoke Lean or Lake and is not a theorem replay. In a disposable copy, this check passed unchanged inputs and rejected a one-byte-mutated manifest with `INPUT_HASH_MISMATCH`.

The --verify-recorded option now checks the fresh receipt for the current Lake lock. The --verify-historical option confirms that the original older receipt is unchanged and still binds the older lock. Both checks operate on saved files only; neither invokes Lean or Lake. The disposable pass/reject exercise invoked no Lean or Lake commands.

## Remaining work

At the time of the original forensic check, no fresh current-lock replay was available. That gap was closed by the run recorded below. The reason for the older receipt's lock mismatch remains unknown. This package checks a known Paley(101) witness for the established lower bound R(6,6) ≥ 102; it does not establish a new bound or the exact Ramsey number.

## Update: fresh current-lock public-source replay

On 2026-11-25, a fresh project-output run compiled the three MathCase modules from the public source commit 343e9e9 under the checked-in Lake manifest SHA-256 958b34400c85f0e6e9e1a3ec9c2c67e3df25fcfed9195c53d50302af588f3c0f. Mathlib 0df444a360eaa60ab8c11dca51a86af692955474 and Lean 4.33.1 were used. All build and audit commands exited 0; the axiom set was [propext, Classical.choice, Quot.sound], with no sorryAx. The recorded wall time was 147.929 seconds. The official public Mathlib cache fetched during the earlier setup attempt was reused; no pre-existing MathCase OLEANs were used.

The first wrapper invocation completed the project build but failed while Python printed a Lean warning character through the Windows legacy console encoding. Its original raw receipt remains in the private run archive; the public summary records its exact SHA-256 and the successful build stage. The later UTF-8 run passed. The checked-in wrapper now configures UTF-8 output and its focused regression test forces the prior cp1252 environment. The wrapper-source change itself was not run through a second full Lean build.

The current-lock run record, execution record, normalized audit output, failure summary, and unchanged historical receipt are bound by verification/current-lock-replay-manifest.json. The raw current-lock run JSON hash is also recorded in the execution receipt. The old 2a66... lock mismatch remains unresolved as a historical provenance question and is not overwritten by the new current-lock receipt. This is an author-side public-source replay, not an independent second-host replay or human review.
