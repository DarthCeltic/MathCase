# VP versus VNP: a small calculation, then an un-replayed proof

## Start with the example

Take the 2 by 2 matrix whose entries are all 1. Its permanent counts the two ways to match each row with a different column, so the answer is 1×1 + 1×1 = 2. The determinant subtracts one matching, so it is 1×1 − 1×1 = 0.

This is a worked example, not a proof of the large result. In characteristic 2, the value 2 becomes 0, so these two expressions agree on this matrix.

## What the upstream formalization claims

The pinned upstream project states lower bounds for arithmetic circuits computing the Hamiltonian-cycle polynomial, states a permanent lower bound for fields whose characteristic is not 2, and derives a separation between VP and VNP. These are statements about arithmetic circuits and polynomials. They do not settle the ordinary P-versus-NP question.

Credit for the research result and formalization belongs to the upstream Anthropic formal-math project. MathCase did not author the theorem, and the checks in this package do not independently validate it.

## What MathCase checked

- The worked 2 by 2 calculation and a deliberately wrong answer control run locally with Python.
- The source-audit command fetches seven exact files from upstream commit 11b6c7e3c927df2658f513b6b68ea7f8929c62c5, compares their SHA-256 values, and checks selected target names and Comparator settings.
- The raw Lean proof text is not redistributed in this package; the audit reads source bytes in memory and writes only hashes.

These checks establish the identity of selected upstream files and the arithmetic of one example. They do not parse Lean, compile any theorem, check proof axioms, run Comparator or nanoda, or independently validate the claimed result.

## Upstream pins and verification status

Project: [anthropics/formal-math, vp-vnp at the pinned commit](https://github.com/anthropics/formal-math/tree/11b6c7e3c927df2658f513b6b68ea7f8929c62c5/vp-vnp), commit 11b6c7e3c927df2658f513b6b68ea7f8929c62c5.

The upstream project pins Lean 4.33.1 and Mathlib commit 0df444a360eaa60ab8c11dca51a86af692955474. Its Comparator configuration names five declarations and enables nanoda. MathCase's local exact proof build did not reach its target or axiom audit; the separate Comparator/nanoda workflow was not run. This package therefore presents no MathCase Lean pass.

## Run the checks

Offline worked example and tests:

    python example_check.py
    python -m unittest -v
    python verify_manifest.py

Pinned source-byte check; this requires a direct HTTPS connection to raw.githubusercontent.com:

    python audit_sources.py

The package manifest can be refreshed with python verify_manifest.py --write. It covers every package file except itself.

The source checker fails closed on a missing file or a hash mismatch. It saves no downloaded proof source.

## Files

- example_check.py: arithmetic demonstration and damaged-answer control.
- audit_sources.py: seven pinned upstream byte checks and configuration/name checks.
- test_audit_sources.py: offline checker controls.
- source-audit-receipt.json: the result from the published pinned-source audit.
- PUBLIC_MANIFEST.json: SHA-256 inventory of this package.