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

`python replay_r66.py --verify-recorded` additionally requires the historic Lake receipt's lock hash to equal the checked-in lock hash. It currently fails closed with `HISTORICAL_LOCK_MISMATCH`. The disposable pass/reject exercise invoked no Lean or Lake commands.

## Remaining work

The old lock bytes are unavailable in the saved trees, so the historic receipt cannot presently be tied to the checked-in lock. A fresh source build and axiom audit under the exact current lock, with a new receipt that binds that lock, are still needed. That full replay was not run as part of this forensic check. This package verifies the known Paley(101) witness for the established lower bound `R(6,6) ≥ 102`; it does not establish a new bound or the exact Ramsey number.
