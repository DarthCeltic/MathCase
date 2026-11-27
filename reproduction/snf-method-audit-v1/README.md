# Bounded Smith-normal-form method audit

## What this checks

The public surface-homology package computes integer Smith factors with Euclidean row and column moves. This small audit compares that reducer with a separate exact calculation on 130 deterministic integer matrices, including singular, rectangular, and zero-containing cases.

The independent calculation uses rational Gaussian elimination for rank and the gcd of every maximal minor for each determinantal divisor. The two methods agreed on every case. A deliberately changed Smith output was rejected.

This is a finite method audit. It does not prove the reducer correct for every integer matrix and does not replace a formal Lean proof that each transformation preserves the presented cokernel.

## Reproduce

From the repository root:

    python -B reproduction/snf-method-audit-v1/check_snf_random.py --repo . --output reproduction/snf-method-audit-v1/evidence/runs/your-run/receipt.json

The archived receipt records the source hash, deterministic seed, case count, controls, and limits. The first harness launch failed before loading the public module because its dynamic loader omitted `__file__`; that setup failure is preserved in `evidence/attempt-01-import-failure.txt`. The corrected harness run is the recorded PASS.

## Scope

The source being audited is the existing `integer_homology.py` reducer. The audit gives evidence for the listed finite matrices only. It makes no new topology claim, no novelty or priority claim, and uses no Lean or external service.
