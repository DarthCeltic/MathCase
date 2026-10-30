#!/usr/bin/env python3
"""Serve the MathCase UI and only the exact local files linked from it."""

from __future__ import annotations

import argparse
import hashlib
import html.parser
import os
import json
import mimetypes
import posixpath
import re
import subprocess
import threading
import tempfile
import uuid
import urllib.error
import urllib.request
from datetime import datetime, timedelta, timezone
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from hero_counterexample import CASE_ID as COUNTEREXAMPLE_CASE_ID, case_context as counterexample_case_context, read_record as read_counterexample_record
from portable_hero_records import portable_hero_run, portable_artifact_path, portable_artifact_paths
from prime_pilot_records import available_pilot_runs, read_pilot_context
from urllib.parse import parse_qs, unquote, urlsplit

from local_file_lock import exclusive_file_lock
try:
    from local_run_archive import run_summaries as read_local_run_archive
except ModuleNotFoundError:
    from scripts.local_run_archive import run_summaries as read_local_run_archive
try:
    from local_computation_store import LocalComputationError, append_review as append_local_computation_review, create_computation as create_local_computation, list_cases as list_local_computation_cases, read_artifact as read_local_computation_artifact, read_case as read_local_computation_case, read_reviews as read_local_computation_reviews
except ModuleNotFoundError:
    from scripts.local_computation_store import LocalComputationError, append_review as append_local_computation_review, create_computation as create_local_computation, list_cases as list_local_computation_cases, read_artifact as read_local_computation_artifact, read_case as read_local_computation_case, read_reviews as read_local_computation_reviews
try:
    from two_congruence_proof_review_store import ProofCompanionReviewError, append_review as append_two_congruence_proof_review, read_view as read_two_congruence_proof_view
except ModuleNotFoundError:
    from scripts.two_congruence_proof_review_store import ProofCompanionReviewError, append_review as append_two_congruence_proof_review, read_view as read_two_congruence_proof_view
from proofdesk_dispatch import (
    CAMPAIGN_BUDGET_STATUS_SCHEMA,
    DISPATCH_CASE_BOUND_REQUEST_SCHEMA,
    DISPATCH_CASE_BINDING_SCHEMA,
    DISPATCH_RUN_CEILING_MICROS,
    ProofDeskDispatcher,
)
from problem_queue import ProblemQueue
from problem_drafts import MAX_REQUEST_BYTES as PROBLEM_DRAFT_REQUEST_MAX_BYTES, ProblemDraftStore
from draft_research import (
    DEFAULT_STORE_PATH as DRAFT_RESEARCH_STORE_REL,
    VIEW_SCHEMA as DRAFT_RESEARCH_VIEW_SCHEMA,
    append_event as append_draft_research_event,
    completed_for_draft as completed_draft_research,
    read_events as read_draft_research_events,
    reserved_count as draft_research_reserved_count,
)
from user_problem_cases import PREPARE_SCHEMA as USER_CASE_PREPARE_SCHEMA, STORE_SCHEMA as USER_CASE_STORE_SCHEMA, UserProblemCaseStore

try:
    from lean_expr_metrics import parse_metrics_output
except ModuleNotFoundError:
    from scripts.lean_expr_metrics import parse_metrics_output


ROOT = Path(__file__).resolve().parents[1]
import public_case_desk
PUBLIC_PROFILE = (ROOT / "public-case-desk.json").is_file()
UI_ROUTE = "ui/prototype/index.html"
BOARD_ROUTE = "data/local/staging/status-board-r1-20261021/board.html"
PREVIEW_CAPABILITIES_SCHEMA = "mathcase-local-preview-capabilities-v1"
PREVIEW_API_CONTRACT_ID = "mathcase-local-preview-contract-r38"
PREVIEW_SHUTDOWN_REQUEST_SCHEMA = "mathcase-local-preview-shutdown-request-v1"
PREVIEW_SHUTDOWN_RESPONSE_SCHEMA = "mathcase-local-preview-shutdown-v1"
NAT_M6_ATTACHMENT_PARENT_SHA256 = "205a37023bcff8adbed43c7a1cee1776c5cebc8b1a1b36e8412e5c8c658010f1"
NAT_PUBLIC_SAVED_CHECK_PATH = "ui/prototype/data/nat-add-assoc-saved-check.json"
NAT_PUBLIC_SAVED_CHECK_SHA256 = "13841316d120ecdbe1573582a39d7bddd85bfa32c2c829845b79c3e5d4520e8e"
NAT_PUBLIC_SAVED_CHECK_RUN_ID = "r0b-solve-local-control-20261023-r3"
NAT_PUBLIC_SAVED_CHECK_RECEIPT_SHA256 = "e4abfaac779a1508eda8534c3f20128c109c4e76575dd04ae63164170dbb4092"
NAT_M6_ATTACHMENT_DOSSIER_PATH = "data/local/dossier-store/cases/nat-add-assoc/205a37023bcff8adbed43c7a1cee1776c5cebc8b1a1b36e8412e5c8c658010f1.json"
NAT_M6_ATTACHMENT_M4_PATH = "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/receipts/lean-3debdf3b11dcf0b051559b2f6a9ed3ad.json"
NAT_M6_ATTACHMENT_METRICS_DIR = "data/local/verification/goal-continuation-2026-10-23/m6-solve-local-r0b-proof-r1"
NAT_M6_ATTACHMENT_M4_RECEIPT_SHA256 = "e4abfaac779a1508eda8534c3f20128c109c4e76575dd04ae63164170dbb4092"
NAT_M6_ATTACHMENT_METRICS_SHA256 = "b8d9ff4222c1a4f024ea18b40412f3cfafbd829a1f860a862c7d57c88164d350"
NAT_M6_ATTACHMENT_SOURCE_SHA256 = "21f8f83408d7a35ac16ac750da68fa806247197b6b225758ef02a53e266d5d86"
NAT_M6_ATTACHMENT_INSTRUMENTED_SOURCE_SHA256 = "82bb8a410dd86904f26f2a99a9a9adc9f3509eb825bf166d81b5acfb5ddbe353"
M6_ATTACHMENT_REQUEST_SCHEMA = "mathcase-m6-dossier-attachment-request-v1"
M6_ATTACHMENT_RESPONSE_SCHEMA = "mathcase-m6-dossier-attachment-view-v1"
M6_ATTACHMENT_BODY_MAX_BYTES = 1024
NAT_M6_DOSSIER_MAX_BYTES = 4 << 20
CAMPAIGN_BUDGET_RECONCILIATION_SCHEMA = "mathcase-owner-campaign-budget-reconciliation-v1"
CAMPAIGN_BUDGET_RECONCILIATION_REL = "data/local/config/campaign-budget-reconciliation.json"
CAMPAIGN_BUDGET_EVIDENCE_ROOT = "data/local/verification/campaign-budget-evidence"
CAMPAIGN_BUDGET_RECONCILIATION_MAX_BYTES = 64 << 10
CAMPAIGN_BUDGET_EVIDENCE_MAX_BYTES = 20 << 20
CAMPAIGN_BUDGET_FRESHNESS_SECONDS = 24 * 60 * 60
CAMPAIGN_AGGREGATE_CEILING_MICROS = 10_000_000
CAMPAIGN_BUDGET_OWNER_IDENTITIES = frozenset({"DarthCeltic", "DarthCeltic85"})
PROOF_COMPANION_EVIDENCE_ROUTES = (
    "proofs/first-rung/evidence/two-congruence-parent-r1/parent-dossier.json",
    "proofs/first-rung/evidence/two-congruence-parent-r1/parent-arithmetic-artifact.json",
    "proofs/first-rung/MathCaseCongruenceFamily.lean",
    "proofs/first-rung/evidence/congruence-family-r1/attempt.json",
    "proofs/first-rung/evidence/congruence-family-r1/source.lean",
    "proofs/first-rung/evidence/congruence-family-r1/lean-output.txt",
    "proofs/first-rung/evidence/congruence-family-r2/attempt.json",
    "proofs/first-rung/evidence/congruence-family-r2/lean-output.txt",
    "proofs/first-rung/MathCaseGeneralizedCRT.lean",
    "proofs/first-rung/evidence/generalized-crt-r1/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r1/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r2/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r2/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r2/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r3/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r3/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r3/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r4/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r4/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r4/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r5/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r5/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r5/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r6/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r6/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r6/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r7/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r7/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r7/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-r8/attempt.json",
    "proofs/first-rung/evidence/generalized-crt-r8/source.lean",
    "proofs/first-rung/evidence/generalized-crt-r8/lean-output.txt",
    "proofs/first-rung/evidence/three-congruence-r2/enumerate_period.py",
    "proofs/first-rung/evidence/three-congruence-r2/initial-derivation.md",
    "proofs/first-rung/MathCaseFiniteGeneralizedCRT.lean",
    "proofs/first-rung/evidence/generalized-crt-list-r1/source.lean",
    "proofs/first-rung/evidence/generalized-crt-list-r1/run-record.json",
    "proofs/first-rung/evidence/generalized-crt-list-r1/lean-output.txt",
    "proofs/first-rung/evidence/generalized-crt-list-r1/README.md",
    "proofs/first-rung/evidence/generalized-crt-list-r1/attempt-history.md",
    "proofs/first-rung/evidence/generalized-crt-list-r1/SHA256SUMS.txt",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/run-record.json",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/README.md",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/SHA256SUMS.txt",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/MathCaseCandidate.lean",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/MathCaseSqrtTwoInfiniteDescent.lean",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/explanation-draft-r1.json",
)
SQRT2_RATIONAL_BRIDGE_ROUTES = (
    "proofs/first-rung/Sqrt2RationalBridge.lean",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/run-record.json",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/README.md",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/SHA256SUMS.txt",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/attempt-01-failure.txt",
    "proofs/first-rung/evidence/sqrt2-rational-bridge-r1/source.lean",
    "proofs/first-rung/evidence/sqrt2-irrational-r2/run-record.json",
    "proofs/first-rung/evidence/sqrt2-irrational-r2/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt2-irrational-r2/README.md",
    "proofs/first-rung/evidence/sqrt2-irrational-r2/SHA256SUMS.txt",
    "proofs/first-rung/evidence/sqrt2-irrational-r2/source.lean",
)
SQRT2_UNIFIED_ROUTES = (
    "proofs/first-rung/Sqrt2Unified.lean",
    "proofs/first-rung/evidence/sqrt2-unified-r1/run-record.json",
    "proofs/first-rung/evidence/sqrt2-unified-r1/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt2-unified-r1/README.md",
    "proofs/first-rung/evidence/sqrt2-unified-r1/SHA256SUMS.txt",
    "proofs/first-rung/evidence/sqrt2-unified-r1/source.lean",
    "proofs/first-rung/evidence/sqrt2-unified-r1/explanation-drafts-r1.json",
)
SQRT2_EQUIVALENCE_ROUTES = (
    "proofs/first-rung/Sqrt2Equivalence.lean",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/run-record.json",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/README.md",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/SHA256SUMS.txt",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/source.lean",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/explanation-drafts-r2.json",
    "proofs/first-rung/evidence/sqrt2-equivalence-r2/proof-chunks-r2.json",
)
SQRT2_INFINITE_DESCENT_ROUTES = (
    "proofs/first-rung/MathCaseSqrtTwoInfiniteDescent.lean",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r1/attempt-01.lean",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r1/lean-output.txt",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r1/failure-classification.json",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r1/SHA256SUMS.txt",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/source.lean",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/run-record.json",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/proof-chunks.json",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/explanation-drafts.json",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/README.md",
    "proofs/first-rung/evidence/sqrt2-infinite-descent-r2/SHA256SUMS.txt",
    "ui/prototype/sqrt2-infinite-descent-dossier.json",
    "ui/prototype/sqrt2-infinite-descent-companion.html",
    "ui/prototype/sqrt2-infinite-descent-companion.js",
)
SQRT_PRIME_DESCENT_ROUTES = (
    "proofs/first-rung/MathCasePrimeInfiniteDescent.lean",
    "proofs/first-rung/evidence/sqrt-prime-infinite-descent-r1/run-record.json",
    "proofs/first-rung/evidence/sqrt-prime-infinite-descent-r1/lean-stdout.txt",
    "proofs/first-rung/evidence/sqrt-prime-infinite-descent-r1/proof-chunks.json",
    "proofs/first-rung/evidence/sqrt-prime-infinite-descent-r1/explanation-drafts.json",
    "proofs/first-rung/evidence/sqrt-prime-infinite-descent-r1/README.md",
    "ui/prototype/sqrt-prime-infinite-descent-dossier.json",
    "ui/prototype/sqrt-prime-infinite-descent-companion.html",
    "ui/prototype/sqrt-prime-infinite-descent-companion.js",
)
PRIME_INFINITUDE_ROUTES = (
    "ui/prototype/prime-infinitude-proof-companion.html",
    "ui/prototype/prime-infinitude-proof-companion.js",
    "ui/prototype/prime-infinitude-proof-companion-dossier.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/source-binding.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/check_candidate.py",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/candidate.lean",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/lean-kernel-check-receipt.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/lean-stdout.txt",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/lean-stderr.txt",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/proof-metrics.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/proof-chunks.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/explanation-drafts.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/source-location-reconciliation.json",
    "data/local/staging/problem-queue/experimental-campaign/l3-1-prime-infinitude-first-pass-r1/pantograph-search/known-result-replay-r10-strict-bound/independent-review-packet.json",
    "data/local/verification/project-continuation-2026-10-21/m3-mathlib-build-r1/workspace/Mathlib/Data/Nat/Prime/Infinite.lean",
    "data/local/verification/project-continuation-2026-10-21/m3-mathlib-build-r1/workspace/LICENSE",
    "scripts/local_owned_process.py",
)
MUL_ONE_DIV_DIRECT_ROUTES = (
    "proofs/first-rung/evidence/mul-one-div-direct-r1/source.lean",
    "proofs/first-rung/evidence/mul-one-div-direct-r1/lean-stdout.txt",
    "proofs/first-rung/evidence/mul-one-div-direct-r1/run-record.json",
    "proofs/first-rung/evidence/mul-one-div-direct-r1/README.md",
    "proofs/first-rung/evidence/mul-one-div-direct-r1/SHA256SUMS.txt",
)


PORTABLE_HERO_EVIDENCE_PREFIX = "docs/portable-hero/evidence/proofdesk-ui-hero-prime-divisibility-r1-20261028T152753Z-8d06f9d0e04b"
PORTABLE_HERO_EVIDENCE_FILES = (
    "problem.json",
    "provider-solve.json",
    "calls/provider-call-03fc4531d62acfb94a871d921ad5bc67.response.json",
    "lean-receipts/lean-ddfc54f448b3f8237561ccad22c4496d.json",
    "calls/provider-call-165cbb886bd767baa84793dd35f1094c.request.json",
    "calls/provider-call-165cbb886bd767baa84793dd35f1094c.response.json",
    "lean-receipts/lean-48a7b6c489cdefa1e7783ffdefbd6f24.json",
    "completion-receipt.json",
)
PORTABLE_HERO_PACKAGE_ROUTES = (
    "ui/prototype/portable-hero-tour.html",
    "docs/portable-hero/manifest.json",
    "docs/portable-hero/evidence/tavily-search.json",
    "docs/portable-hero/evidence/statement-revision-note.json",
    "proofs/first-rung/evidence/composite-counterexample-r1/statement.json",
    "proofs/first-rung/evidence/composite-counterexample-r1/check.json",
    *(f"{PORTABLE_HERO_EVIDENCE_PREFIX}/{relative_path}" for relative_path in PORTABLE_HERO_EVIDENCE_FILES),
)


def _preview_server_build_sources() -> tuple[tuple[str, Path], ...]:
    if PUBLIC_PROFILE:
        return public_case_desk.source_paths(ROOT)
    return (
        ("scripts/serve_ui_preview.py", Path(__file__).resolve()),
        ("scripts/proofdesk_dispatch.py", Path(__file__).with_name("proofdesk_dispatch.py").resolve()),
        ("scripts/lean_runtime_warm.py", Path(__file__).with_name("lean_runtime_warm.py").resolve()),
        ("scripts/problem_queue.py", Path(__file__).with_name("problem_queue.py").resolve()),
        ("scripts/problem_drafts.py", Path(__file__).with_name("problem_drafts.py").resolve()),
        ("scripts/user_problem_cases.py", Path(__file__).with_name("user_problem_cases.py").resolve()),
        ("config/problem_queue_intake.json", ROOT / "config/problem_queue_intake.json"),
        ("config/pyramid_campaign_proposal.json", ROOT / "config/pyramid_campaign_proposal.json"),
        ("config/project-chronology.json", ROOT / "config/project-chronology.json"),
        ("scripts/local_file_lock.py", Path(__file__).with_name("local_file_lock.py").resolve()),
        ("scripts/local_run_archive.py", Path(__file__).with_name("local_run_archive.py").resolve()),
        ("schemas/local-proofdesk-provider-profile-v1.schema.json", ROOT / "schemas/local-proofdesk-provider-profile-v1.schema.json"),
        ("scripts/local_computation_store.py", Path(__file__).with_name("local_computation_store.py").resolve()),
        ("scripts/two_congruence_proof_review_store.py", Path(__file__).with_name("two_congruence_proof_review_store.py").resolve()),
        ("scripts/lean_expr_metrics.py", Path(__file__).with_name("lean_expr_metrics.py").resolve()),
        ("cmd/mathcase/main.go", ROOT / "cmd/mathcase/main.go"),
        ("cmd/mathcase/dossier_attach_queue_m4.go", ROOT / "cmd/mathcase/dossier_attach_queue_m4.go"),
        ("cmd/mathcase/dossier_m6.go", ROOT / "cmd/mathcase/dossier_m6.go"),
        ("cmd/mathcase/case_init.go", ROOT / "cmd/mathcase/case_init.go"),
        ("cmd/mathcase/dossier_store.go", ROOT / "cmd/mathcase/dossier_store.go"),
        ("cmd/mathcase/solve_provider.go", ROOT / "cmd/mathcase/solve_provider.go"),
        ("internal/solver/lean_statement.go", ROOT / "internal/solver/lean_statement.go"),
        ("internal/solver/lean_preflight.go", ROOT / "internal/solver/lean_preflight.go"),
        ("internal/solver/lean_verifier.go", ROOT / "internal/solver/lean_verifier.go"),
        ("internal/solver/lean_snapshot_runtime.go", ROOT / "internal/solver/lean_snapshot_runtime.go"),
        ("internal/solver/lean_sandbox.go", ROOT / "internal/solver/lean_sandbox.go"),
        ("internal/solver/lean_import_preparation.go", ROOT / "internal/solver/lean_import_preparation.go"),
        ("internal/catalog/catalog.go", ROOT / "internal/catalog/catalog.go"),
        ("internal/domain/dossier.go", ROOT / "internal/domain/dossier.go"),
        ("internal/domain/local_computation.go", ROOT / "internal/domain/local_computation.go"),
        ("internal/domain/statement_digest.go", ROOT / "internal/domain/statement_digest.go"),
        ("config/local-computation/two-congruence-example.json", ROOT / "config/local-computation/two-congruence-example.json"),
        ("cmd/mathcase/attackability_forecast_validate.go", ROOT / "cmd/mathcase/attackability_forecast_validate.go"),
        ("internal/persistence/attackability_forecast_store.go", ROOT / "internal/persistence/attackability_forecast_store.go"),
        ("ui/prototype/index.html", ROOT / "ui/prototype/index.html"),
        ("scripts/hero_counterexample.py", ROOT / "scripts/hero_counterexample.py"),
        ("scripts/portable_hero_records.py", ROOT / "scripts/portable_hero_records.py"),
        ("scripts/prime_pilot_records.py", ROOT / "scripts/prime_pilot_records.py"),
        ("ui/prototype/case-reading.js", ROOT / "ui/prototype/case-reading.js"),
        ("ui/prototype/case-reading.css", ROOT / "ui/prototype/case-reading.css"),
        ("assets/mathcase-branding-kit/mathcase-lockup-960.png", ROOT / "assets/mathcase-branding-kit/mathcase-lockup-960.png"),
        *((route, ROOT / route) for route in PORTABLE_HERO_PACKAGE_ROUTES),
        ("ui/prototype/data/campaign-experimental-results.json", ROOT / "ui/prototype/data/campaign-experimental-results.json"),
        ("ui/prototype/project-chronology.js", ROOT / "ui/prototype/project-chronology.js"),
        ("ui/prototype/proofdesk-dispatch.js", ROOT / "ui/prototype/proofdesk-dispatch.js"),
        ("ui/prototype/user-problem-intake.js", ROOT / "ui/prototype/user-problem-intake.js"),
        ("ui/prototype/review-handoff.js", ROOT / "ui/prototype/review-handoff.js"),
        ("ui/prototype/case-style-inspector.js", ROOT / "ui/prototype/case-style-inspector.js"),
        ("ui/prototype/proof-structure-inspector.js", ROOT / "ui/prototype/proof-structure-inspector.js"),
        ("ui/prototype/nat-law-explorer.js", ROOT / "ui/prototype/nat-law-explorer.js"),
        ("ui/prototype/gcd-certificate.js", ROOT / "ui/prototype/gcd-certificate.js"),
        ("ui/prototype/gcd-certificate.html", ROOT / "ui/prototype/gcd-certificate.html"),
        ("ui/prototype/integer-equation.js", ROOT / "ui/prototype/integer-equation.js"),
        ("ui/prototype/two-congruence.js", ROOT / "ui/prototype/two-congruence.js"),
        ("ui/prototype/multi-congruence.js", ROOT / "ui/prototype/multi-congruence.js"),
        ("ui/prototype/two-congruence-solver.html", ROOT / "ui/prototype/two-congruence-solver.html"),
        ("ui/prototype/local-computation-subcheck.js", ROOT / "ui/prototype/local-computation-subcheck.js"),
        ("ui/prototype/integer-equation.html", ROOT / "ui/prototype/integer-equation.html"),
        ("ui/prototype/two-congruence-proof-companion.html", ROOT / "ui/prototype/two-congruence-proof-companion.html"),
        ("ui/prototype/two-congruence-proof-companion.js", ROOT / "ui/prototype/two-congruence-proof-companion.js"),
        ("ui/prototype/two-congruence-proof-companion-dossier.json", ROOT / "ui/prototype/two-congruence-proof-companion-dossier.json"),
        ("ui/prototype/three-congruence-proof-companion.html", ROOT / "ui/prototype/three-congruence-proof-companion.html"),
        ("ui/prototype/three-congruence-proof-companion.js", ROOT / "ui/prototype/three-congruence-proof-companion.js"),
        ("ui/prototype/three-congruence-proof-companion-dossier.json", ROOT / "ui/prototype/three-congruence-proof-companion-dossier.json"),
        ("ui/prototype/sqrt2-proof-companion.html", ROOT / "ui/prototype/sqrt2-proof-companion.html"),
        ("ui/prototype/sqrt2-proof-companion.js", ROOT / "ui/prototype/sqrt2-proof-companion.js"),
        ("ui/prototype/sqrt2-math-case-dossier.json", ROOT / "ui/prototype/sqrt2-math-case-dossier.json"),
        ("ui/prototype/sqrt2-math-case-dossier-r2.json", ROOT / "ui/prototype/sqrt2-math-case-dossier-r2.json"),
        ("proofs/first-rung/MathCaseTwoCongruence.lean", ROOT / "proofs/first-rung/MathCaseTwoCongruence.lean"),
        ("proofs/first-rung/MathCaseThreeCongruence.lean", ROOT / "proofs/first-rung/MathCaseThreeCongruence.lean"),
        ("proofs/first-rung/evidence/three-congruence-r2/run-record.json", ROOT / "proofs/first-rung/evidence/three-congruence-r2/run-record.json"),
        ("proofs/first-rung/evidence/three-congruence-r2/lean-stdout.txt", ROOT / "proofs/first-rung/evidence/three-congruence-r2/lean-stdout.txt"),
        ("proofs/first-rung/evidence/three-congruence-r2/enumeration-output.txt", ROOT / "proofs/first-rung/evidence/three-congruence-r2/enumeration-output.txt"),
        ("proofs/first-rung/evidence/three-congruence-r2/README.md", ROOT / "proofs/first-rung/evidence/three-congruence-r2/README.md"),
        ("proofs/first-rung/evidence/three-congruence-r2/SHA256SUMS.txt", ROOT / "proofs/first-rung/evidence/three-congruence-r2/SHA256SUMS.txt"),
        ("proofs/first-rung/evidence/three-congruence-r2/attempt-01-failure.txt", ROOT / "proofs/first-rung/evidence/three-congruence-r2/attempt-01-failure.txt"),
        ("proofs/first-rung/evidence/three-congruence-r2/attempt-02-failure.txt", ROOT / "proofs/first-rung/evidence/three-congruence-r2/attempt-02-failure.txt"),
        *((relative_path, ROOT / relative_path) for relative_path in PROOF_COMPANION_EVIDENCE_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in SQRT2_RATIONAL_BRIDGE_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in SQRT2_UNIFIED_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in SQRT2_EQUIVALENCE_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in SQRT2_INFINITE_DESCENT_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in SQRT_PRIME_DESCENT_ROUTES),
        *((relative_path, ROOT / relative_path) for relative_path in PRIME_INFINITUDE_ROUTES),
        ("proofs/first-rung/MulOneDivDefinitions.lean", ROOT / "proofs/first-rung/MulOneDivDefinitions.lean"),
        *((relative_path, ROOT / relative_path) for relative_path in MUL_ONE_DIV_DIRECT_ROUTES),
        ("proofs/first-rung/evidence/two-congruence-m6-r1/run-receipt.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r1/run-receipt.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r1/lean-version-preflight.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r1/lean-version-preflight.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r2/run-receipt.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r2/run-receipt.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r2/lean-version-preflight.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r2/lean-version-preflight.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/metrics-receipt.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/metrics-receipt.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/run-receipt.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/run-receipt.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/lean-version-preflight.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/lean-version-preflight.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/proof-dependency-observation.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/proof-dependency-observation.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/run-request.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/run-request.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/snapshot-manifest.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/snapshot-manifest.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/source.lean", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/source.lean"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/instrumented.lean", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/instrumented.lean"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/metrics-helper.lean", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/metrics-helper.lean"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lakefile.toml", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lakefile.toml"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lake-manifest.json", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lake-manifest.json"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lean-toolchain", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lean-toolchain"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/stdout.bin", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/stdout.bin"),
        ("proofs/first-rung/evidence/two-congruence-m6-r3/stderr.bin", ROOT / "proofs/first-rung/evidence/two-congruence-m6-r3/stderr.bin"),
        ("ui/prototype/statement-review-handoff.js", ROOT / "ui/prototype/statement-review-handoff.js"),
        ("schemas/statement-review-response-v1.schema.json", ROOT / "schemas/statement-review-response-v1.schema.json"),
        ("schemas/statement-review-request-v1.schema.json", ROOT / "schemas/statement-review-request-v1.schema.json"),
        ("schemas/owner-campaign-budget-reconciliation-v1.schema.json", ROOT / "schemas/owner-campaign-budget-reconciliation-v1.schema.json"),
        ("config/taste-style-reference-proposal.json", ROOT / "config/taste-style-reference-proposal.json"),
        ("schemas/flywheel/m7-explanation-taxonomy-v2.schema.json", ROOT / "schemas/flywheel/m7-explanation-taxonomy-v2.schema.json"),
    )


def _preview_source_digest(relative_path: str, path: Path) -> str:
    if path.is_symlink():
        raise FileNotFoundError(f"Preview source path must not be a symlink: {relative_path}")
    if path.is_file():
        return hashlib.sha256(path.read_bytes()).hexdigest()
    if relative_path.startswith("data/local/"):
        return "ABSENT_OWNER_LOCAL"
    raise FileNotFoundError(f"Required preview source file is missing: {relative_path}")


def _preview_server_build_sha256() -> str:
    sources = _preview_server_build_sources()
    manifest = "mathcase-local-preview-build-v1\n" + "".join(
        f"{relative_path}\t{_preview_source_digest(relative_path, path)}\n"
        for relative_path, path in sources
    )
    return hashlib.sha256(manifest.encode("ascii")).hexdigest()


PREVIEW_SERVER_BUILD_SHA256 = _preview_server_build_sha256()
PREVIEW_RUNTIME_INSTANCE_ID = uuid.uuid4().hex
PREVIEW_STARTED_AT_UTC = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
CANONICAL_PREVIEW_PORT = 55135
CASE_SOURCE_ACQUISITION_PATH = "data/local/verification/goal-continuation-2026-10-23/case-source-reopen-r1/source-acquisition-receipt.json"
PREVIEW_CAPABILITIES = (
    "case_catalog_read",
    "case_context_read",
    "dossier_m6_attach_read",
    "two_congruence_proof_companion_read",
    "two_congruence_proof_review_read_write",
    "qualification_status_read",
    "review_packet_read",
    "review_packet_draft_read_write",
    "review_notes_read_write",
    "system_assurance_review_read_write",
    "proofdesk_provider_run_evidence_read",
    "private_run_evidence_archive_read_v1",
    "lean_warm_runtime_status_v1",
    "proofdesk_frozen_provider_context_snapshot_v1",
    "proofdesk_chat_completion_reserved_fields_gate_v1",
    "proofdesk_pinned_provider_context_disclosure_v1",
    "preview_local_shutdown_v1",
    "proofdesk_known_theorem_run_dispatch",
    "proofdesk_dispatch_idempotency_v2",
    "proofdesk_case_bound_dispatch_v1",
    "proofdesk_case_revision_dispatch_v2",
    "proofdesk_request_status_read",
    "proofdesk_aggregate_campaign_budget_gate",
    "preview_single_instance_per_checkout",
    "tavily_research_control_v2",
    "draft_bound_tavily_research_v1",
    "safe_runtime_replacement_status",
    "governed_case_intake_v1",
    "resumable_problem_queue_v1",
    "bounded_problem_batch_plans_v1",
    "bounded_local_solver_dispatch_v1",
    "problem_queue_owner_use_evidence_pin_v1",
    "queue_successful_result_dossier_attachment_v1",
    "case_bound_taste_style_view_v1",
    "proof_structure_inspector_v1",
    "gcd_bezout_certificate_v1",
    "integer_equation_solver_v1",
    "two_congruence_solver_v1",
    "multi_congruence_solver_v1",
    "three_congruence_proof_companion_read_v1",
    "case_bound_local_computation_v1",
    "case_bound_local_computation_review_v1",
    "case_bound_local_computation_subcheck_v1",
    "governed_statement_review_handoff_v1",
    "durable_statement_review_responses_v1",
    "source_bound_statement_review_context_v1",
    "plain_language_statement_review_form_v1",
    "queue_item_bound_statement_review_v1",
    "queue_item_scoped_statement_review_history_v1",
    "campaign_experimental_results_read_v2",
    "user_authored_problem_drafts_v1",
    "user_authored_case_prepare_v1",
    "user_authored_case_provider_context_v1",
)
CAMPAIGN_EXPERIMENTAL_RESULTS_PATH = "ui/prototype/data/campaign-experimental-results.json"
PROOFDESK_EVIDENCE_DIR = "data/local/verification/proofdesk-nebius-20261024-r1"
PROOFDESK_FORALL_SOURCE_PATH = PROOFDESK_EVIDENCE_DIR + "/calls/problem-forall-n-n-eq-n-chat-session.json"
PROOFDESK_RECONCILIATION_NAME = re.compile(r"outcome-reconciliation-r(\d+)\.json\Z")
EXTRA_ROUTES = {
    *PORTABLE_HERO_PACKAGE_ROUTES,
    "ui/prototype/data/campaign-experimental-results.json",
    "ui/prototype/README.md",
    "ui/prototype/gcd-certificate.html",
    "ui/prototype/gcd-certificate.js",
    "ui/prototype/review-handoff.js",
    "ui/prototype/case-style-inspector.js",
    "ui/prototype/proof-structure-inspector.js",
    "ui/prototype/nat-law-explorer.js",
    "ui/prototype/gcd-certificate.js",
    "ui/prototype/gcd-certificate.html",
    "ui/prototype/integer-equation.html",
    "ui/prototype/integer-equation.js",
    "ui/prototype/two-congruence.js",
    "ui/prototype/multi-congruence.js",
    "ui/prototype/two-congruence-proof-companion.html",
    "ui/prototype/two-congruence-proof-companion.js",
    "ui/prototype/two-congruence-proof-companion-dossier.json",
    "ui/prototype/three-congruence-proof-companion.html",
    "ui/prototype/three-congruence-proof-companion.js",
    "ui/prototype/three-congruence-proof-companion-dossier.json",
    "ui/prototype/sqrt2-proof-companion.html",
    "ui/prototype/sqrt2-proof-companion.js",
    "ui/prototype/sqrt2-math-case-dossier.json",
    "ui/prototype/sqrt2-math-case-dossier-r2.json",
    "proofs/first-rung/MathCaseTwoCongruence.lean",
    "proofs/first-rung/MathCaseThreeCongruence.lean",
    "proofs/first-rung/evidence/three-congruence-r2/run-record.json",
    "proofs/first-rung/evidence/three-congruence-r2/lean-stdout.txt",
    "proofs/first-rung/evidence/three-congruence-r2/enumeration-output.txt",
    "proofs/first-rung/evidence/three-congruence-r2/README.md",
    "proofs/first-rung/evidence/three-congruence-r2/SHA256SUMS.txt",
    "proofs/first-rung/evidence/three-congruence-r2/attempt-01-failure.txt",
    "proofs/first-rung/evidence/three-congruence-r2/attempt-02-failure.txt",
    *PROOF_COMPANION_EVIDENCE_ROUTES,
    *SQRT2_RATIONAL_BRIDGE_ROUTES,
    *SQRT2_UNIFIED_ROUTES,
    *SQRT2_EQUIVALENCE_ROUTES,
    *SQRT2_INFINITE_DESCENT_ROUTES,
    *SQRT_PRIME_DESCENT_ROUTES,
    *PRIME_INFINITUDE_ROUTES,
    "proofs/first-rung/MulOneDivDefinitions.lean",
    *MUL_ONE_DIV_DIRECT_ROUTES,
    "proofs/first-rung/evidence/two-congruence-m6-r1/run-receipt.json",
    "proofs/first-rung/evidence/two-congruence-m6-r1/lean-version-preflight.json",
    "proofs/first-rung/evidence/two-congruence-m6-r2/run-receipt.json",
    "proofs/first-rung/evidence/two-congruence-m6-r2/lean-version-preflight.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/metrics-receipt.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/run-receipt.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/lean-version-preflight.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/proof-dependency-observation.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/run-request.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/snapshot-manifest.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/source.lean",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/instrumented.lean",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/metrics-helper.lean",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lakefile.toml",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lake-manifest.json",
    "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/lean-toolchain",
    "proofs/first-rung/evidence/two-congruence-m6-r3/stdout.bin",
    "proofs/first-rung/evidence/two-congruence-m6-r3/stderr.bin",
    "ui/prototype/local-computation-subcheck.js",
    "ui/prototype/statement-review-handoff.js",
    "schemas/statement-review-response-v1.schema.json",
    "schemas/statement-review-request-v1.schema.json",
    "schemas/owner-campaign-budget-reconciliation-v1.schema.json",
    "config/taste-style-reference-proposal.json",
    "schemas/flywheel/m7-explanation-taxonomy-v2.schema.json",
    "data/local/verification/nat-proof-dependencies-2026-10-24-r1/assembled-r2/dependency-inventory.json",
    "scripts/serve_ui_preview.py",
    "scripts/test_serve_ui_preview.py",
    "data/local/staging/bootstrap-dossier-0000/catalog.snapshot.v2.json",
    CASE_SOURCE_ACQUISITION_PATH,
    "data/local/source-cache/leanprover-community/mathlib4/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/Data/List/Basic.lean",
    "data/local/source-cache/leanprover-community/mathlib4/0df444a360eaa60ab8c11dca51a86af692955474/LICENSE",
    "data/local/source-cache/leanprover/lean4/819816b2e0a3bf405af45ae5c7af2491d8f5bee6/src/Init/Data/Nat/Basic.lean",
    "data/local/source-cache/leanprover/lean4/819816b2e0a3bf405af45ae5c7af2491d8f5bee6/LICENSE",
    "data/local/staging/status-board-r1-20261021/run-receipt.json",
    "data/local/staging/mathlib-proof-pairs/m3-count-reconciliation-r3-20261022/count-reconciliation-r14.json",
    "data/local/verification/goal-continuation-2026-10-24/m3-seed-assurance-r9-r2/seed-assurance-audit.json",
    "data/local/verification/goal-continuation-2026-10-24/m3-seed-assurance-r9-r2/report.md",
    "data/local/verification/goal-continuation-2026-10-24/m3-seed-assurance-r9-r2/run-receipt.json",
    "data/local/staging/full-envelope-taxonomy-r11-r12-20261024/coverage-report.json",
    "data/local/verification/goal-continuation-2026-10-22/m3-heldout-freeze-package-r15/freeze-package.json",
    "data/local/verification/goal-continuation-2026-10-22/m3-heldout-freeze-package-r16-r2/freeze-package.json",
    "data/local/verification/goal-continuation-2026-10-22/m3-heldout-freeze-package-r16-r2/OWNER_REVIEW.md",
    "data/local/verification/goal-continuation-2026-10-22/m3-heldout-freeze-package-r16-r2/package-run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-22/m3-heldout-freeze-package-r16-r2/seed-assurance/seed-assurance-audit.json",
    "data/local/verification/goal-continuation-2026-10-24/m3-heldout-freeze-package-r17-r2/freeze-package.json",
    "data/local/verification/goal-continuation-2026-10-24/m3-heldout-freeze-package-r17-r2/OWNER_REVIEW.md",
    "data/local/verification/goal-continuation-2026-10-24/m3-heldout-freeze-package-r17-r2/package-run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-24/m3-heldout-freeze-package-r17-r2/seed-assurance/seed-assurance-audit.json",
    "data/local/verification/goal-continuation-2026-10-23/m4-r0b-e2e-snapshot-r1/e2e-artifact-audit-r2.json",
    "data/local/verification/goal-continuation-2026-10-23/m4-r0b-e2e-snapshot-r1/e2e-run-r5/receipts/lean-e145e8f033aa8d30bf01aeca99188429.json",
    "data/local/verification/goal-continuation-2026-10-23/bootstrap-calibration-audit-live-r4/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/bootstrap-calibration-audit-live-r4/stdout.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/m4-m6-evidence-link-audit-r1.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/stdout.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/problem.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/launch-summary.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/receipts/lean-3debdf3b11dcf0b051559b2f6a9ed3ad.json",
    PROOFDESK_FORALL_SOURCE_PATH,
    "data/local/verification/goal-continuation-2026-10-23/m6-solve-local-r0b-proof-r1/metrics-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/m6-solve-local-r0b-proof-r1/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/m6-score-consumer-r3/score.json",
    "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/m6-score-consumer-r3/run-receipt.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r2.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r3.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r4.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r5.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r6.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/candidate-exposition/bf04010fad1f7ad69cec6e02f32dd2e874307cffdb9cfc32d28c2b0d07d9415a.json",
    "ui/prototype/data/nat-add-assoc-explanation-drafts.json",
    "ui/prototype/data/nat-add-assoc-explanation-drafts-r4.json",
    "data/local/dossier-store/cases/nat-add-assoc/205a37023bcff8adbed43c7a1cee1776c5cebc8b1a1b36e8412e5c8c658010f1.json",
    "data/local/dossier-store/cases/nat-add-assoc/2cdba339989b50f620ca75513bb52182eccde4674d79c19241e919e510b69ca2.json",
    "data/local/dossier-store/cases/nat-add-assoc/0d89ec8aae0a61acb6d72fbaa25b31c190d69a8f3a40550c8e1ff42e4cf9d5ee.json",
    "data/local/dossier-store/cases/nat-add-assoc/8baf22f2043645292e8b1824dcd21f9b30ba5db483bc0847ec2d78caada58579.json",
    "data/local/dossier-store/cases/nat-add-assoc/699a5c0b82a153c2c38e7746960cf64a55f19e7a8b7622177a607b554ca5a7e4.json",
    "data/local/dossier-store/cases/nat-add-assoc/909e198954c8060dd431e262d0499308714f243ff9deda40d04a0960be7de409.json",
    "data/local/staging/nat-add-assoc-case-handoff-r1/source-ui-1c665461cb6f1f418343bc158a6b5fa4f81799e4546cb073c96ba4c7df01b18f.html",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/run-receipt-r4.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/run-receipt-r5.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/run-receipt-r3.json",
    "data/local/verification/search-integration-r1/current-source-runtime-control/run-receipt.json",
    "data/local/verification/search-integration-r1/current-source-runtime-control/go-test.stdout.jsonl",
    "data/local/verification/search-integration-r1/current-source-cli-controls/run-receipt.json",
    "data/local/verification/search-integration-r1/current-source-cli-controls-r2/run-receipt.json",
    "data/local/verification/search-integration-r1/current-source-cli-controls-r2/go-test.stdout.jsonl",
    "data/local/verification/search-integration-r1/current-source-cli-controls-r2/docker-process-trace.jsonl",
    "cmd/mathcase/main_test.go",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r5/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r6/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r7/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r8/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r9/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r10/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r11/run-receipt.json",
    "data/local/verification/goal-continuation-2026-10-23/pantograph-search-docker-control-r1/attempt-r12/run-receipt.json",
    "internal/application/local_search_test.go",
}
QUALIFICATION_ROOT = ROOT / "data/local/verification"
QUALIFICATION_DATE_ROOT_NAME = re.compile(r"goal-continuation-(\d{4})-(\d{2})-(\d{2})\Z")
QUALIFICATION_RUN_NAME = re.compile(r"current-tree-qualification-r\d+-(\d{8})\Z")
QUALIFICATION_RECEIPT_NAME = re.compile(r"qualification-run-receipt(?:-r\d+)?\.json\Z")
SOURCE_DIGEST = re.compile(r"[0-9a-f]{64}\Z")
REVIEW_STORE_PATH = ROOT / "data/local/staging/case-feedback/owner-notes.jsonl"
REVIEW_PACKET_DRAFT_STORE_PATH = ROOT / "data/local/staging/case-feedback/review-packet-drafts.jsonl"
STATEMENT_REVIEW_RESPONSE_STORE_PATH = ROOT / "data/local/staging/case-feedback/statement-review-responses.jsonl"
STATEMENT_REVIEW_RESPONSE_DISPOSITION_STORE_PATH = ROOT / "data/local/staging/case-feedback/statement-review-response-dispositions.jsonl"
SYSTEM_ASSURANCE_REVIEW_STORE_PATH = ROOT / "data/local/staging/case-feedback/system-assurance-reviews.jsonl"
TAVILY_RESEARCH_STORE_PATH = ROOT / "data/local/staging/case-feedback/tavily-research.jsonl"
TAVILY_DRAFT_RESEARCH_STORE_PATH = ROOT / DRAFT_RESEARCH_STORE_REL
TAVILY_AUTHORIZATION_PATH = ROOT / "data/local/config/tavily-research-authorization.json"
TAVILY_LIVE_CALL_LIMIT = 5
TAVILY_BASIC_SEARCH_CREDIT_COST = 1
TAVILY_USAGE_PREFLIGHT_TIMEOUT_SECONDS = 8
SYSTEM_ASSURANCE_REVIEW_SCOPE_ID = "mathcase-system-assurance-v1"
SYSTEM_ASSURANCE_REVIEW_SCOPE = (
    "Local review of the six listed MathCase evidence components: current software checks, known-result proof, "
    "pair-bank assembly, dossier readiness, held-out evaluation, and a discovery-class result. Checklist completion "
    "does not establish general mathematical ability, external accreditation, a gate change, signing authority, or training authority."
)
SYSTEM_ASSURANCE_REVIEW_COMPONENTS = frozenset(
    {"software", "known-math", "pair-bank", "dossier", "heldout", "research"}
)
REVIEW_AUDIT_PATH = "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/m4-m6-evidence-link-audit-r1.json"
REVIEW_AUDIT_SHA256 = "3bf3ec225797d46b0affe3a98c3a787a1f19ae635c1d5c448dcd180ef625a30f"
NAT_CASE_HANDOFF_PATH = "data/local/staging/nat-add-assoc-case-handoff-r1/handoff-record-r6.json"
NAT_CASE_HANDOFF_SHA256 = "84abf5acf5812d53be2cea571c208c72ad5cabef594cff1c63540dcf27473ee2"
NAT_CASE_CANDIDATE_PATH = "ui/prototype/data/nat-add-assoc-explanation-drafts-r4.json"
NAT_CASE_CANDIDATE_SHA256 = "c79fd6bf96be7696e66edbb94e5663081919122d38bab2a1463b38c7c7065680"
NAT_CASE_PRIOR_CANDIDATE_PATH = "data/local/staging/nat-add-assoc-case-handoff-r1/candidate-exposition/bf04010fad1f7ad69cec6e02f32dd2e874307cffdb9cfc32d28c2b0d07d9415a.json"
NAT_CASE_PRIOR_CANDIDATE_SHA256 = "bf04010fad1f7ad69cec6e02f32dd2e874307cffdb9cfc32d28c2b0d07d9415a"
NAT_CASE_DOSSIER_PATH = "data/local/dossier-store/cases/nat-add-assoc/909e198954c8060dd431e262d0499308714f243ff9deda40d04a0960be7de409.json"
NAT_CASE_DOSSIER_SHA256 = "909e198954c8060dd431e262d0499308714f243ff9deda40d04a0960be7de409"
NAT_CASE_M6_PARENT_DOSSIER_SHA256 = "205a37023bcff8adbed43c7a1cee1776c5cebc8b1a1b36e8412e5c8c658010f1"
NAT_CASE_SOURCE_SNAPSHOT_PATH = "data/local/staging/nat-add-assoc-case-handoff-r1/source-ui-1c665461cb6f1f418343bc158a6b5fa4f81799e4546cb073c96ba4c7df01b18f.html"
NAT_CASE_SOURCE_SNAPSHOT_SHA256 = "1c665461cb6f1f418343bc158a6b5fa4f81799e4546cb073c96ba4c7df01b18f"
BOOTSTRAP_M0_CATALOG_PATH = "data/local/staging/bootstrap-dossier-0000/catalog.snapshot.v2.json"
BOOTSTRAP_M0_CATALOG_FILE_SHA256 = "844e910ad0ac9b769a5234a468ba71bd79b566fd90ba545b6bc6669a369952bf"
CASE_SOURCE_ACQUISITION_SHA256 = "e4e9d0beaaba11ed601501e25f297c4bfd598ef4d928d2e9653d84c4a3763790"
NAT_CORE_SOURCE_ID = "lean4_nat_basic_v4331"
REVIEW_ID = re.compile(r"review-[0-9]{13}-[a-f0-9]{4,32}\Z")
REVIEW_PACKET_DRAFT_ID = re.compile(r"packet-draft-[0-9]{13}-[a-f0-9]{4,32}\Z")
STATEMENT_REVIEW_RESPONSE_ID = re.compile(r"statement-review-[0-9a-f]{64}\Z")
STATEMENT_REVIEW_RESPONSE_MAX_BYTES = 512 * 1024
REVIEW_STORE_MAX_BYTES = 16 * 1024 * 1024
REVIEW_BODY_MAX_BYTES = 8 * 1024 * 1024
REVIEW_ZERO_HASH = "0" * 64
BOOTSTRAP_CASE_ID = "bootstrap-dossier-0000"
BOOTSTRAP_PROBLEM_ID = "mathlib_list_mem_pair_v4331"
CASE_SOURCE_BINDINGS = {
    BOOTSTRAP_CASE_ID: (BOOTSTRAP_PROBLEM_ID, "mathlib_list_basic_v4331", "List.mem_pair"),
    "nat-add-assoc": ("nat-add-assoc", NAT_CORE_SOURCE_ID, "Nat.add_assoc"),
}
BOOTSTRAP_REVIEW_QUESTION_IDS = (
    "statement_fidelity",
    "assumptions_scope",
    "proof_alignment",
    "kernel_and_axioms",
    "tier_high_school",
    "tier_associate",
    "tier_bachelor",
    "tier_master",
    "tier_doctorate",
    "cross_tier_consistency",
    "other_concerns",
)
M3_PAIR_REGISTRY_PATH = "data/local/staging/mathlib-proof-pairs/m3-queue-run-r1-20261021/pair-registry.jsonl"
M3_PAIR_RECONCILIATION_PATH = "data/local/staging/mathlib-proof-pairs/m3-count-reconciliation-r3-20261022/count-reconciliation-r14.json"
PORTABLE_CASE_LIBRARY_DIR = "ui/prototype/data/case-library"
PORTABLE_CASE_LIBRARY_MANIFEST_PATH = f"{PORTABLE_CASE_LIBRARY_DIR}/manifest.json"
BOOTSTRAP_DIR = "data/local/staging/bootstrap-dossier-0000"
BOOTSTRAP_M6_DIR = "data/local/verification/bootstrap-m6-expression-metrics-20261025-r1"
BOOTSTRAP_M6_METRICS_PATH = f"{BOOTSTRAP_M6_DIR}/metrics-receipt.json"
BOOTSTRAP_M6_RUN_PATH = f"{BOOTSTRAP_M6_DIR}/run-receipt.json"
BOOTSTRAP_M6_REQUEST_PATH = f"{BOOTSTRAP_M6_DIR}/run-request.json"
BOOTSTRAP_M6_SNAPSHOT_PATH = f"{BOOTSTRAP_M6_DIR}/snapshot/snapshot-manifest.json"
BOOTSTRAP_M6_RAW_FILE_PINS = {
    f"{BOOTSTRAP_M6_DIR}/snapshot/source.lean": "7022f28c1c14672193dd752644b01473e94f3e5553636603b82c69c00312be89",
    f"{BOOTSTRAP_M6_DIR}/snapshot/instrumented.lean": "dfd94d26138631ace50e4f2f1251f6632d0e4594ba99b05bb7cb1a7af848e209",
    f"{BOOTSTRAP_M6_DIR}/snapshot/metrics-helper.lean": "24840842c2f93fbe4b3548c26cb8e3e97e91fd2d8e4f93b8d0f15716781cd329",
    f"{BOOTSTRAP_M6_DIR}/stdout.bin": "8098efc0ff00efd163c00618c6dd87f7524c7c764a0dbc0b6b5cabaf6e081fe6",
    f"{BOOTSTRAP_M6_DIR}/stderr.bin": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
}
BOOTSTRAP_AUDIT_DIR = "data/local/verification/goal-continuation-2026-10-23/bootstrap-calibration-audit-live-r4"
BOOTSTRAP_FILE_PINS = {
    f"{BOOTSTRAP_DIR}/dossier-revision-v5.json": "7b6c02824a58172480cdf570b8000a9ed3ae4472847fba84101e3c3da81ee21e",
    f"{BOOTSTRAP_DIR}/expositor-bundle.json": "689728c6049015e363e8bb22d3ac5f86892fa95e1fc1a4f18cb40256f732ffac",
    f"{BOOTSTRAP_DIR}/bootstrap-gate-waits-r24.json": "dbac02828fd3de9d57c35fa1b1524f50ba08660bfc35d818fc4d164e9155e800",
    f"{BOOTSTRAP_AUDIT_DIR}/stdout.json": "8ad8d3488f199f793a50cb288c6665e2d0ee85730ffffd06c6aa243e2ae78041",
    f"{BOOTSTRAP_AUDIT_DIR}/run-receipt.json": "21a58f56ad20f32df9bebc519aeffbc19b8fd47e24dd7d6b0e3cb0f1cd6c660c",
    BOOTSTRAP_M6_METRICS_PATH: "12cd249a55ac31925d650a5ccc99e2125ca3a8b79cc6e4ea785a903d7449d2e4",
    BOOTSTRAP_M6_RUN_PATH: "532c816b82c920976b0900f98b255477b4e8db9d5ad7fbb88b7bcb034e83833b",
    BOOTSTRAP_M6_REQUEST_PATH: "7443b46d42f102d4ae413e27360377bd9a68393b79e783794600a06af04aa239",
    BOOTSTRAP_M6_SNAPSHOT_PATH: "0d80f9a9fee247f7d04318f3bb7d095e0412ec328c1b225eecbc3169e64e564e",
    f"{BOOTSTRAP_M6_DIR}/lean-version-preflight.json": "20924fb912e610c58ed2a54532ef84a2c7b08535ae43b2cf0dbddfebdb2b1fff",
    f"{BOOTSTRAP_M6_DIR}/proof-dependency-observation.json": "af7dd21622e8f961f56075989994c60592a980803f95898d2a7003347913e970",
}
BOOTSTRAP_RUN_PINS = {
    "bootstrap0000-m4-lean-9427d358eaec5f0818668d9d8b314145": (
        f"{BOOTSTRAP_DIR}/receipts/lean-9427d358eaec5f0818668d9d8b314145.json",
        "51bdc9c64fb83a7cf0b79af3b8273130df1ca2d514044ddd49f72b1d83a8de6e",
    ),
    "bootstrap0000-m4-lean-91511fd727c3a7cb2194411756f7e4a4": (
        f"{BOOTSTRAP_DIR}/receipts/lean-91511fd727c3a7cb2194411756f7e4a4.json",
        "29f52fff66508e609a2256e157a243a69d845f6804a75a845364f9e315f2158e",
    ),
    "bootstrap0000-m4-lean-f3f27190f1ecf49e19e83419ad227c0b": (
        f"{BOOTSTRAP_DIR}/receipts/lean-f3f27190f1ecf49e19e83419ad227c0b.json",
        "9c96e9720570478552683eca2828259a50cd2ca52018627bbc643dd2ab16d6d0",
    ),
}
BOOTSTRAP_TIER_ORDER = ["HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE"]


class _LinkParser(html.parser.HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.references: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        attributes = dict(attrs)
        for key in ("href", "src"):
            value = attributes.get(key)
            if value:
                self.references.append(value)


def _route_for_reference(reference: str, referring_route: str) -> str | None:
    parsed = urlsplit(reference)
    if parsed.scheme or parsed.netloc or not parsed.path:
        return None
    decoded = unquote(parsed.path)
    if "\\" in decoded or "\x00" in decoded:
        return None
    if decoded.startswith("/"):
        route = posixpath.normpath(decoded.lstrip("/"))
    else:
        route = posixpath.normpath(posixpath.join(posixpath.dirname(referring_route), decoded))
    if route == "api" or route.startswith("api/"):
        return None
    if route in ("", ".", "..") or route.startswith("../") or route.startswith("/"):
        return None
    return route


def _is_link_or_reparse_point(path: Path, metadata: os.stat_result | None = None) -> bool:
    if metadata is None:
        try:
            metadata = path.lstat()
        except OSError:
            return True
    if path.is_symlink() or bool(getattr(metadata, "st_file_attributes", 0) & 0x400):
        return True
    is_junction = getattr(path, "is_junction", None)
    if callable(is_junction):
        try:
            return bool(is_junction())
        except OSError:
            return True
    return False


def _is_safe_regular_file(path: Path) -> bool:
    try:
        relative = path.relative_to(ROOT)
    except ValueError:
        return False
    cursor = ROOT
    for part in relative.parts:
        cursor = cursor / part
        try:
            metadata = cursor.lstat()
        except OSError:
            return False
        if _is_link_or_reparse_point(cursor, metadata):
            return False
    return path.is_file()


def _is_missing_optional_local_route(route: str, root: Path | None = None) -> bool:
    """Return true only for an absent owner-local artifact with no linked path component."""
    root = ROOT if root is None else root
    parts = route.split("/")
    if (
        not route.startswith("data/local/")
        or route.startswith("/")
        or "\\" in route
        or "\x00" in route
        or any(part in ("", ".", "..") for part in parts)
    ):
        return False
    cursor = root
    for part in parts:
        cursor = cursor / part
        try:
            metadata = cursor.lstat()
        except FileNotFoundError:
            return True
        except OSError:
            return False
        if _is_link_or_reparse_point(cursor, metadata):
            return False
    return False


def _parse_source_manifest(raw: bytes) -> dict[str, str]:
    """Parse the exact SHA-256/path rows captured by a tree qualification."""
    try:
        lines = raw.decode("utf-8").splitlines()
    except UnicodeDecodeError as exc:
        raise ValueError("source manifest is not UTF-8") from exc
    entries: dict[str, str] = {}
    for line in lines:
        digest, separator, route = line.partition("\t")
        if not separator or not SOURCE_DIGEST.fullmatch(digest) or not route:
            raise ValueError("source manifest contains a malformed row")
        parts = route.split("/")
        if route.startswith("/") or "\\" in route or any(part in ("", ".", "..") for part in parts):
            raise ValueError("source manifest contains an unsafe path")
        if route in entries:
            raise ValueError("source manifest contains a duplicate path")
        entries[route] = digest
    if not entries:
        raise ValueError("source manifest is empty")
    return entries


def _validate_qualification_manifest(
    receipt: dict[str, object], manifest_path: str, manifest_bytes: bytes
) -> tuple[dict[str, str], str]:
    """Reopen and validate the saved test-to-manifest binding before comparison."""
    source_snapshot = receipt.get("source_snapshot")
    if not isinstance(source_snapshot, dict):
        raise ValueError("suite receipt has no source snapshot")
    before = source_snapshot.get("before")
    after = source_snapshot.get("after")
    if not isinstance(before, dict) or not isinstance(after, dict):
        raise ValueError("suite receipt has an incomplete source snapshot")
    if (
        receipt.get("result") != "PASS"
        or source_snapshot.get("byte_identical_after_tests") is not True
        or (
            source_snapshot.get("changed_source_paths") is not None
            and source_snapshot.get("changed_source_paths") != []
        )
        or after.get("path") != manifest_path
        or after.get("sha256") != hashlib.sha256(manifest_bytes).hexdigest()
        or before.get("sha256") != after.get("sha256")
    ):
        raise ValueError("suite receipt does not bind this unchanged source manifest")
    if not isinstance(receipt.get("go"), dict) or receipt["go"].get("exit_code") != 0:
        raise ValueError("suite receipt does not record a passing Go suite")
    python = receipt.get("python")
    if not isinstance(python, dict):
        raise ValueError("suite receipt does not record Python suites")
    if any(
        not isinstance(python.get(name), dict) or python[name].get("exit_code") != 0
        for name in ("project_tests", "scripts_tests")
    ):
        raise ValueError("suite receipt does not record passing Python suites")
    return _parse_source_manifest(manifest_bytes), hashlib.sha256(manifest_bytes).hexdigest()


def _git_output(root: Path, *args: str) -> bytes:
    completed = subprocess.run(
        ["git", *args], cwd=root, check=True, stdout=subprocess.PIPE,
        stderr=subprocess.PIPE, timeout=10,
    )
    return completed.stdout


def _current_source_manifest(root: Path) -> dict[str, str]:
    """Hash tracked plus non-ignored untracked files, matching the qualification scope."""
    tracked = _git_output(root, "ls-files", "-z", "--cached")
    untracked = _git_output(root, "ls-files", "-z", "--others", "--exclude-standard")
    paths = {item for item in tracked.split(b"\0") if item}
    paths.update(item for item in untracked.split(b"\0") if item)
    entries: dict[str, str] = {}
    for raw_route in paths:
        route = raw_route.decode("utf-8")
        path = root.joinpath(*route.split("/"))
        if path.is_symlink() or not path.is_file():
            continue
        entries[route] = hashlib.sha256(path.read_bytes()).hexdigest()
    return entries


def _compare_source_maps(expected: dict[str, str], current: dict[str, str]) -> dict[str, object]:
    expected_paths, current_paths = set(expected), set(current)
    added = sorted(current_paths - expected_paths)
    removed = sorted(expected_paths - current_paths)
    changed = sorted(path for path in expected_paths & current_paths if expected[path] != current[path])
    discrepancy_paths = sorted(set(added) | set(removed) | set(changed))
    change_class_counts = {"implementation": 0, "tests": 0, "documentation": 0, "other": 0}
    for route in discrepancy_paths:
        parts = {part.lower() for part in route.replace("\\", "/").split("/")}
        name = route.rsplit("/", 1)[-1].lower()
        suffix = Path(name).suffix
        if (
            "tests" in parts
            or "test" in parts
            or name.startswith("test_")
            or name.endswith(("_test.py", "_test.go", ".test.js", ".test.ts", ".spec.js", ".spec.ts"))
        ):
            change_class = "tests"
        elif "docs" in parts or suffix in {".md", ".rst"} or name.startswith(("readme.", "changelog.", "contributing.")):
            change_class = "documentation"
        elif suffix in {".py", ".go", ".js", ".mjs", ".cjs", ".ts", ".tsx", ".jsx", ".html", ".css", ".lean", ".sh", ".ps1"}:
            change_class = "implementation"
        else:
            change_class = "other"
        change_class_counts[change_class] += 1
    return {
        "matches": not added and not removed and not changed,
        "expected_count": len(expected),
        "current_count": len(current),
        "added_paths": added,
        "removed_paths": removed,
        "changed_paths": changed,
        "change_class_counts": change_class_counts,
        "documentation_only": bool(discrepancy_paths) and change_class_counts["documentation"] == len(discrepancy_paths),
        "current_manifest_sha256": hashlib.sha256(
            "".join(f"{current[path]}\t{path}\n" for path in sorted(current)).encode("utf-8")
        ).hexdigest(),
    }


def _is_qualification_run_route(parts: list[str]) -> bool:
    if len(parts) != 6 or parts[:3] != ["data", "local", "verification"]:
        return False
    date_root = QUALIFICATION_DATE_ROOT_NAME.fullmatch(parts[3])
    run_dir = QUALIFICATION_RUN_NAME.fullmatch(parts[4])
    return bool(date_root and run_dir and "".join(date_root.groups()) == run_dir.group(1))


def _source_match_report(root: Path, receipt_route: str, manifest_route: str) -> dict[str, object]:
    parts = receipt_route.split("/")
    if not _is_qualification_run_route(parts) or not QUALIFICATION_RECEIPT_NAME.fullmatch(parts[5]):
        raise ValueError("suite receipt path is outside the qualification allowlist")
    if manifest_route != "/".join(parts[:5] + ["source-snapshot-after.tsv"]):
        raise ValueError("manifest path is not the suite receipt's after-snapshot")
    receipt_path = root.joinpath(*receipt_route.split("/"))
    manifest_path = root.joinpath(*manifest_route.split("/"))
    if not _is_safe_regular_file(receipt_path) or not _is_safe_regular_file(manifest_path):
        raise ValueError("suite receipt or manifest is missing or unsafe")
    receipt_bytes = receipt_path.read_bytes()
    manifest_bytes = manifest_path.read_bytes()
    if len(receipt_bytes) > 4_000_000 or len(manifest_bytes) > 10_000_000:
        raise ValueError("suite receipt or source manifest exceeds the local preview size limit")
    receipt = json.loads(receipt_bytes)
    if not isinstance(receipt, dict):
        raise ValueError("suite receipt is not a JSON object")
    expected, manifest_sha256 = _validate_qualification_manifest(receipt, manifest_route, manifest_bytes)
    comparison = _compare_source_maps(expected, _current_source_manifest(root))
    try:
        branch = _git_output(root, "branch", "--show-current").decode("utf-8").strip()
        head = _git_output(root, "rev-parse", "HEAD").decode("ascii").strip()
    except (OSError, subprocess.SubprocessError) as exc:
        raise ValueError("current Git identity could not be read") from exc
    return {
        "schema_version": "mathcase-source-snapshot-comparison-v1",
        "tested_snapshot": "PASS",
        "tested_branch": receipt.get("branch"),
        "tested_head": receipt.get("head"),
        "current_branch": branch,
        "current_head": head,
        "head_matches": head == receipt.get("head"),
        "branch_matches": branch == receipt.get("branch"),
        "receipt_sha256": hashlib.sha256(receipt_bytes).hexdigest(),
        "manifest_path": manifest_route,
        "manifest_sha256": manifest_sha256,
        **comparison,
    }


def _qualification_routes() -> set[str]:
    """Allow the exact receipt files from dated qualification-run directories."""
    if QUALIFICATION_ROOT.is_symlink() or not QUALIFICATION_ROOT.is_dir():
        return set()
    routes: set[str] = set()
    for date_root in QUALIFICATION_ROOT.iterdir():
        if (
            date_root.is_symlink()
            or not date_root.is_dir()
            or not QUALIFICATION_DATE_ROOT_NAME.fullmatch(date_root.name)
        ):
            continue
        for run_dir in date_root.iterdir():
            route_prefix = ["data", "local", "verification", date_root.name, run_dir.name]
            if (
                run_dir.is_symlink()
                or not run_dir.is_dir()
                or not _is_qualification_run_route(route_prefix + ["qualification-run-receipt.json"])
            ):
                continue
            for path in run_dir.iterdir():
                if (
                    (QUALIFICATION_RECEIPT_NAME.fullmatch(path.name) or path.name == "source-snapshot-after.tsv")
                    and _is_safe_regular_file(path)
                ):
                    routes.add(path.relative_to(ROOT).as_posix())
    return routes


def _python_suite_summary(
    root: Path, receipt_route: str, suite_key: str, receipt_row: object
) -> dict[str, object]:
    """Bind Python suite counts to the exact saved runner output named by its receipt."""
    output_names = {
        "project_tests": {
            "stdout": {
                "python-project-tests-stdout.txt",
                "project-tests-stdout.txt",
                "python-project-stdout.txt",
            },
            "stderr": {
                "python-project-tests-stderr.txt",
                "project-tests-stderr.txt",
                "python-project-stderr.txt",
            },
        },
        "scripts_tests": {
            "stdout": {
                "python-script-tests-stdout.txt",
                "scripts-tests-stdout.txt",
                "python-scripts-stdout.txt",
            },
            "stderr": {
                "python-script-tests-stderr.txt",
                "scripts-tests-stderr.txt",
                "python-scripts-stderr.txt",
            },
        },
    }
    if suite_key not in output_names or not isinstance(receipt_row, dict):
        raise ValueError("Python suite receipt is malformed")
    if receipt_row.get("exit_code") != 0:
        raise ValueError("Python suite did not record a successful exit")
    tests_run = receipt_row.get("tests_run")
    if not isinstance(tests_run, int) or isinstance(tests_run, bool) or tests_run < 0:
        raise ValueError("Python suite receipt has no valid test count")

    parts = receipt_route.split("/")
    if len(parts) != 6 or not _is_qualification_run_route(parts):
        raise ValueError("Python suite receipt is outside the qualification run")
    run_prefix = "/".join(parts[:5])
    outputs: dict[str, dict[str, object]] = {}
    combined: list[str] = []
    root_resolved = root.resolve(strict=True)
    for stream in ("stdout", "stderr"):
        route = receipt_row.get(f"{stream}_path")
        expected_sha = receipt_row.get(f"{stream}_sha256")
        if (
            not isinstance(route, str)
            or route.rpartition("/")[0] != run_prefix
            or route.rpartition("/")[2] not in output_names[suite_key][stream]
            or not isinstance(expected_sha, str)
            or not SOURCE_DIGEST.fullmatch(expected_sha)
        ):
            raise ValueError(f"Python {suite_key} {stream} link is missing or outside its run")
        output_path = root.joinpath(*route.split("/"))
        try:
            resolved = output_path.resolve(strict=True)
            resolved.relative_to(root_resolved)
            cursor = root_resolved
            for part in output_path.relative_to(root).parts:
                cursor = cursor / part
                if cursor.is_symlink():
                    raise ValueError("Python suite output crosses a symbolic link")
            if not resolved.is_file() or resolved.stat().st_size > 16_000_000:
                raise ValueError("Python suite output is missing or exceeds the read limit")
            raw = resolved.read_bytes()
        except (OSError, ValueError) as exc:
            raise ValueError(f"Python {suite_key} {stream} output is unavailable or unsafe") from exc
        actual_sha = hashlib.sha256(raw).hexdigest()
        if actual_sha != expected_sha:
            raise ValueError(f"Python {suite_key} {stream} output digest does not match its receipt")
        try:
            text = raw.decode("utf-8")
        except UnicodeDecodeError as exc:
            raise ValueError(f"Python {suite_key} {stream} output is not UTF-8") from exc
        combined.append(text)
        outputs[stream] = {"path": route, "sha256": actual_sha}

    lines = "\n".join(combined).splitlines()
    run_summaries = [line.strip() for line in lines if re.fullmatch(r"Ran\s+\d+\s+tests?\s+in\s+.+", line.strip())]
    result_summaries = [line.strip() for line in lines if re.fullmatch(r"OK(?: \(skipped=\d+\))?", line.strip())]
    if len(run_summaries) != 1 or len(result_summaries) != 1:
        raise ValueError(f"Python {suite_key} output has no unique passing count summary")
    run_match = re.match(r"Ran\s+(\d+)\s+tests?\s+in\s+", run_summaries[0])
    if run_match is None or int(run_match.group(1)) != tests_run:
        raise ValueError(f"Python {suite_key} output count does not match its receipt")
    skipped_match = re.fullmatch(r"OK \(skipped=(\d+)\)", result_summaries[0])
    tests_skipped = int(skipped_match.group(1)) if skipped_match else 0
    if tests_skipped > tests_run:
        raise ValueError(f"Python {suite_key} skipped count exceeds its test count")
    return {
        "exit_code": 0,
        "tests_run": tests_run,
        "tests_passed": tests_run - tests_skipped,
        "tests_skipped": tests_skipped,
        "tests_failed": 0,
        "summary_found": True,
        "summary": f"{run_summaries[0]}\n{result_summaries[0]}",
        "outputs": outputs,
    }


def _qualification_status(root: Path) -> dict[str, object]:
    """Return the newest readable run and newest fully validated passing snapshot."""
    candidates: list[tuple[float, str, dict[str, object], dict[str, object], str]] = []
    invalid_receipt_count = 0
    undated_receipt_count = 0
    for route in sorted(_qualification_routes()):
        if not route.endswith("/qualification-run-receipt.json") and not re.search(r"/qualification-run-receipt-r\d+\.json\Z", route):
            continue
        path = root.joinpath(*route.split("/"))
        try:
            raw = path.read_bytes()
            if len(raw) > 4_000_000:
                invalid_receipt_count += 1
                continue
            receipt = json.loads(raw)
        except (OSError, ValueError, json.JSONDecodeError, TypeError):
            invalid_receipt_count += 1
            continue
        if not isinstance(receipt, dict):
            invalid_receipt_count += 1
            continue
        completed = receipt.get("completed_at_utc") or receipt.get("finished_at_utc") or receipt.get("recorded_at_utc")
        if not isinstance(completed, str):
            undated_receipt_count += 1
            continue
        try:
            timestamp = datetime.fromisoformat(completed.replace("Z", "+00:00"))
            if timestamp.tzinfo is None:
                timestamp = timestamp.replace(tzinfo=timezone.utc)
            candidates.append((timestamp.timestamp(), route, receipt, {"sha256": hashlib.sha256(raw).hexdigest()}, completed))
        except (ValueError, TypeError, OverflowError):
            invalid_receipt_count += 1
    if not candidates:
        raise ValueError("no readable dated qualification receipts are available")

    candidates.sort(key=lambda item: (item[0], item[1]), reverse=True)

    def describe(candidate: tuple[float, str, dict[str, object], dict[str, object], str]) -> dict[str, object]:
        _timestamp, route, receipt, digest, completed = candidate
        parts = route.split("/")
        expected_manifest = "/".join(parts[:5] + ["source-snapshot-after.tsv"])
        source_snapshot = receipt.get("source_snapshot")
        after = source_snapshot.get("after") if isinstance(source_snapshot, dict) else None
        manifest_path = after.get("path") if isinstance(after, dict) else None
        manifest_sha = after.get("sha256") if isinstance(after, dict) else None
        snapshot_binding = "INVALID"
        if isinstance(manifest_path, str) and manifest_path == expected_manifest and isinstance(manifest_sha, str):
            manifest_file = root.joinpath(*manifest_path.split("/"))
            if _is_safe_regular_file(manifest_file):
                manifest_bytes = manifest_file.read_bytes()
                if hashlib.sha256(manifest_bytes).hexdigest() == manifest_sha:
                    before = source_snapshot.get("before") if isinstance(source_snapshot, dict) else None
                    if (
                        isinstance(before, dict)
                        and before.get("sha256") == manifest_sha
                        and source_snapshot.get("byte_identical_after_tests") is True
                    ):
                        snapshot_binding = "PASS"
        result = receipt.get("result")
        python_counts: dict[str, object] | None = None
        if result == "PASS" and snapshot_binding == "PASS":
            try:
                manifest_bytes = root.joinpath(*expected_manifest.split("/")).read_bytes()
                _validate_qualification_manifest(receipt, expected_manifest, manifest_bytes)
                python_receipt = receipt.get("python")
                if not isinstance(python_receipt, dict):
                    raise ValueError("passing qualification has no Python suite records")
                python_counts = {
                    suite: _python_suite_summary(root, route, suite, python_receipt.get(suite))
                    for suite in ("project_tests", "scripts_tests")
                }
            except (ValueError, OSError, json.JSONDecodeError, TypeError):
                snapshot_binding = "INVALID"
        return {
            "receipt_path": route,
            "receipt_sha256": digest["sha256"],
            "completed_at_utc": completed,
            "result": result if isinstance(result, str) else "UNKNOWN",
            "branch": receipt.get("branch") if isinstance(receipt.get("branch"), str) else None,
            "head": receipt.get("head") if isinstance(receipt.get("head"), str) else None,
            "manifest_path": manifest_path if isinstance(manifest_path, str) else None,
            "manifest_sha256": manifest_sha if isinstance(manifest_sha, str) else None,
            "snapshot_binding": snapshot_binding,
            "python_counts": python_counts,
        }

    latest_attempt = describe(candidates[0])
    latest_passing = None
    passing_receipts: list[dict[str, object]] = []
    for candidate in candidates:
        summary = describe(candidate)
        if summary["result"] == "PASS" and summary["snapshot_binding"] == "PASS":
            passing_receipts.append(summary)
            if latest_passing is None:
                latest_passing = summary
    if latest_passing is None:
        raise ValueError("no passing qualification is bound to an unchanged source snapshot")
    return {
        "schema_version": "mathcase-qualification-status-v1",
        "latest_attempt": latest_attempt,
        "latest_passing": latest_passing,
        "passing_receipts": passing_receipts,
        "invalid_receipt_count": invalid_receipt_count,
        "undated_receipt_count": undated_receipt_count,
    }


def _is_live_qualification_route(route: str) -> bool:
    """Allow a newly written qualification receipt without restarting the preview."""
    parts = route.split("/")
    if (
        not _is_qualification_run_route(parts)
        or not (QUALIFICATION_RECEIPT_NAME.fullmatch(parts[5]) or parts[5] == "source-snapshot-after.tsv")
    ):
        return False
    return _is_safe_regular_file(ROOT.joinpath(*parts))


def build_allowlist() -> set[str]:
    """Build exact routes from the UI surfaces and verified case evidence."""
    if PUBLIC_PROFILE:
        return public_case_desk.file_routes(ROOT)
    routes = {UI_ROUTE, BOARD_ROUTE, *EXTRA_ROUTES, *_qualification_routes()}
    try:
        for source_path in portable_artifact_paths(ROOT):
            portable_artifact_path(ROOT, source_path)
            routes.add(source_path)
    except (OSError, ValueError, KeyError, TypeError):
        pass
    try:
        prepared_receipt = json.loads(
            _safe_repo_file(ROOT, PRIME_PREPARED_CONTEXT_RECEIPT_PATH).read_text(encoding="utf-8")
        )
        statement_sha256 = prepared_receipt.get("statement_sha256") if isinstance(prepared_receipt, dict) else None
        prepared_context = _prime_prepared_provider_context(ROOT, statement_sha256)
        if prepared_context.get("state") == "PREPARED_NOT_SENT":
            routes.update({PRIME_PREPARED_CONTEXT_PATH, PRIME_PREPARED_CONTEXT_RECEIPT_PATH})
    except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError, UnicodeDecodeError):
        # Prepared call inputs are served only when their exact-statement digest
        # and separate no-call authorization hold reopen successfully.
        pass
    try:
        library = _local_case_library(ROOT)
        pair_bank = library.get("pair_bank", {})
        if isinstance(pair_bank, dict):
            routes.update(path for path in (pair_bank.get("registry_path"), pair_bank.get("reconciliation_path")) if isinstance(path, str))
        for item in library.get("records", []):
            if not isinstance(item, dict):
                continue
            for source in item.get("detail_sources", []):
                if not isinstance(source, dict):
                    continue
                route = source.get("path")
                digest = source.get("sha256")
                if (
                    not isinstance(route, str)
                    or not route
                    or route.startswith("/")
                    or "\\" in route
                    or "\x00" in route
                    or any(part in ("", ".", "..") for part in route.split("/"))
                    or not isinstance(digest, str)
                    or not re.fullmatch(r"[0-9a-f]{64}", digest)
                ):
                    continue
                try:
                    evidence_path = _safe_local_artifact(ROOT, route)
                    if _digest_bytes(evidence_path.read_bytes()) == digest:
                        routes.add(route)
                except (OSError, ValueError):
                    continue
        routes.update(_portable_case_evidence_routes(ROOT))
    except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError):
        # The API will report the read-model defect. The static prototype stays
        # available, but unverified dynamic artifacts are never allowlisted.
        pass
    try:
        local_cases = list_local_computation_cases(ROOT)
    except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError):
        local_cases = []
    for local_case in local_cases:
        if not isinstance(local_case, dict) or not isinstance(local_case.get("case_id"), str):
            continue
        try:
            context = read_local_computation_case(ROOT, local_case["case_id"])
        except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError):
            continue
        for source in context.get("sources", []):
            if not isinstance(source, dict):
                continue
            route = source.get("path")
            if (
                isinstance(route, str)
                and route
                and not route.startswith("/")
                and "\\" not in route
                and "\x00" not in route
                and all(part not in ("", ".", "..") for part in route.split("/"))
            ):
                routes.add(route)
    for route in (UI_ROUTE, BOARD_ROUTE):
        page = ROOT.joinpath(*route.split("/"))
        if not _is_safe_regular_file(page):
            if _is_missing_optional_local_route(route):
                continue
            raise FileNotFoundError(f"required preview page is missing or unsafe: {route}")
        parser = _LinkParser()
        parser.feed(page.read_text(encoding="utf-8"))
        for reference in parser.references:
            linked = _route_for_reference(reference, route)
            if linked:
                linked_path = ROOT.joinpath(*linked.split("/"))
                if not _is_safe_regular_file(linked_path):
                    if _is_missing_optional_local_route(linked):
                        continue
                    raise FileNotFoundError(f"preview link points to a missing or unsafe file: {linked}")
                routes.add(linked)
    safe_routes = set()
    for route in routes:
        if route.startswith(".") or "\\" in route or "\x00" in route:
            continue
        path = ROOT.joinpath(*route.split("/"))
        if _is_safe_regular_file(path):
            safe_routes.add(route)
            continue
        try:
            packaged_path = _safe_local_artifact(ROOT, route)
        except (OSError, ValueError):
            continue
        if _is_safe_regular_file(packaged_path):
            safe_routes.add(route)
    missing = {
        route for route in EXTRA_ROUTES - safe_routes
        if not _is_missing_optional_local_route(route)
    }
    if missing:
        raise FileNotFoundError("required local status inputs are missing: " + ", ".join(sorted(missing)))
    return safe_routes


class _TargetTextParser(html.parser.HTMLParser):
    """Read only the text and provenance attributes of one named UI element."""

    def __init__(self, target_id: str) -> None:
        super().__init__(convert_charrefs=True)
        self.target_id = target_id
        self.depth = 0
        self.text: list[str] = []
        self.attributes: dict[str, str] = {}
        self.matches = 0

    def handle_starttag(self, _tag: str, attrs: list[tuple[str, str | None]]) -> None:
        values = dict(attrs)
        if self.depth == 0 and values.get("id") == self.target_id:
            self.matches += 1
            self.depth = 1
            self.attributes = {key: value for key, value in values.items() if value is not None}
        elif self.depth:
            self.depth += 1

    def handle_endtag(self, _tag: str) -> None:
        if self.depth:
            self.depth -= 1

    def handle_data(self, data: str) -> None:
        if self.depth:
            self.text.append(data)


def _canonical_json_bytes(value: object) -> bytes:
    return json.dumps(value, sort_keys=True, ensure_ascii=False, separators=(",", ":")).encode("utf-8")


def _javascript_json_bytes(value: object) -> bytes:
    """Match JSON.stringify insertion-order bytes for the browser binding contract."""
    return json.dumps(value, ensure_ascii=False, separators=(",", ":")).encode("utf-8")


def _digest_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def _run_mathcase_m6(command: str, arguments: list[str]) -> dict[str, object]:
    completed = subprocess.run(
        ["go", "run", "./cmd/mathcase", command, *arguments],
        cwd=ROOT,
        check=False,
        capture_output=True,
        text=True,
        timeout=90,
    )
    if completed.returncode != 0:
        detail = (completed.stderr or completed.stdout or "command refused without a diagnostic").strip()
        raise ValueError(f"MathCase {command} refused: {detail[:1200]}")
    try:
        result = json.loads(completed.stdout)
    except (json.JSONDecodeError, TypeError) as exc:
        raise ValueError(f"MathCase {command} returned invalid JSON") from exc
    if not isinstance(result, dict):
        raise ValueError(f"MathCase {command} returned an unsupported result")
    return result


def _nat_m6_attachment_candidate() -> dict[str, object]:
    project_root = str(ROOT)
    result = _run_mathcase_m6("dossier-attach-m6", [
        "--project-root", project_root,
        "--dossier", str(ROOT / NAT_M6_ATTACHMENT_DOSSIER_PATH),
        "--parent-sha256", NAT_M6_ATTACHMENT_PARENT_SHA256,
        "--m4-receipt", str(ROOT / NAT_M6_ATTACHMENT_M4_PATH),
        "--metrics-dir", str(ROOT / NAT_M6_ATTACHMENT_METRICS_DIR),
        "--dry-run",
    ])
    if result.get("schema_version") != "mathcase-m6-dossier-attachment-v1" or result.get("status") != "VALIDATED_NO_WRITE" or \
        result.get("case_id") != "nat-add-assoc" or result.get("problem_id") != "nat-add-assoc" or \
        result.get("parent_dossier_sha256") != NAT_M6_ATTACHMENT_PARENT_SHA256 or \
        result.get("m4_receipt_sha256") != NAT_M6_ATTACHMENT_M4_RECEIPT_SHA256 or \
        result.get("m6_metrics_receipt_sha256") != NAT_M6_ATTACHMENT_METRICS_SHA256 or \
        result.get("generated_source_sha256") != NAT_M6_ATTACHMENT_SOURCE_SHA256 or \
        result.get("instrumented_source_sha256") != NAT_M6_ATTACHMENT_INSTRUMENTED_SOURCE_SHA256 or \
        result.get("core_expr_nodes") != 233 or result.get("core_expr_depth") != 17 or \
        result.get("binder_nodes") != 4 or result.get("constant_reference_nodes") != 95:
        raise ValueError("fixed Nat M4/M6 attachment candidate no longer matches its pinned identity")
    return result


def _reopen_nat_m6_revision(candidate: dict[str, object], dossier_sha256: str) -> dict[str, object]:
    result = _run_mathcase_m6("dossier-read-m6", [
        "--project-root", str(ROOT),
        "--store-root", str(ROOT / "data/local/dossier-store"),
        "--case-id", "nat-add-assoc",
        "--dossier-sha256", dossier_sha256,
    ])
    for field in (
        "schema_version", "case_id", "problem_id", "dossier_sha256", "parent_dossier_sha256", "m4_receipt_sha256",
        "m6_metrics_receipt_sha256", "generated_source_sha256", "core_expr_nodes",
        "instrumented_source_sha256",
        "core_expr_depth", "binder_nodes", "constant_reference_nodes",
    ):
        expected = candidate.get(field) if field not in {"schema_version", "dossier_sha256"} else None
        if field == "schema_version":
            if result.get(field) != "mathcase-m6-dossier-attachment-v1":
                raise ValueError("reopened Nat M6 dossier has an unsupported output schema")
        elif field == "dossier_sha256":
            if result.get(field) != dossier_sha256:
                raise ValueError("reopened Nat M6 dossier hash does not match the selected immutable revision")
        elif result.get(field) != expected:
            raise ValueError(f"reopened Nat M6 dossier changed its pinned {field}")
    if result.get("status") != "REOPENED_EXACT_DOSSIER_AND_EXECUTION_CHAIN":
        raise ValueError("MathCase did not reopen the exact Nat dossier and M4/M6 execution chain")
    return result


def _nat_m6_attached_revision(candidate: dict[str, object]) -> dict[str, object] | None:
    directory = ROOT / "data/local/dossier-store/cases/nat-add-assoc"
    if _is_link_or_reparse_point(directory):
        raise ValueError("Nat dossier store path is unsafe")
    if not directory.exists():
        return None
    parent_sha256 = candidate.get("parent_dossier_sha256")
    if not isinstance(parent_sha256, str) or not SOURCE_DIGEST.fullmatch(parent_sha256):
        raise ValueError("Nat M6 attachment candidate has an invalid parent dossier digest")
    parent_path = directory / f"{parent_sha256}.json"
    if not _is_safe_regular_file(parent_path):
        raise ValueError("Nat M6 attachment parent dossier is unavailable or unsafe")
    parent_raw = parent_path.read_bytes()
    if len(parent_raw) > NAT_M6_DOSSIER_MAX_BYTES or _digest_bytes(parent_raw) != parent_sha256:
        raise ValueError("Nat M6 attachment parent dossier bytes do not match its pinned identity")
    try:
        parent_dossier = json.loads(parent_raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("Nat M6 attachment parent dossier is invalid JSON") from exc
    parent_case = parent_dossier.get("case") if isinstance(parent_dossier, dict) else None
    parent_version = parent_case.get("version") if isinstance(parent_case, dict) else None
    if not isinstance(parent_case, dict) or parent_case.get("id") != "nat-add-assoc" or not isinstance(parent_version, int):
        raise ValueError("Nat M6 attachment parent dossier has an unsupported case identity or version")
    successor_version = parent_version + 1
    matches: list[tuple[str, str]] = []
    for path in directory.glob("*.json"):
        if not _is_safe_regular_file(path):
            raise ValueError("Nat dossier store contains an unsafe snapshot path")
        digest = path.stem
        if not SOURCE_DIGEST.fullmatch(digest):
            continue
        if path.stat().st_size > NAT_M6_DOSSIER_MAX_BYTES:
            raise ValueError("Nat dossier store contains a snapshot larger than the bounded M6 reader limit")
        raw = path.read_bytes()
        if _digest_bytes(raw) != digest:
            raise ValueError("Nat dossier store contains a snapshot whose bytes do not match its filename")
        try:
            dossier = json.loads(raw)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("Nat dossier store contains invalid JSON") from exc
        case = dossier.get("case") if isinstance(dossier, dict) else None
        if not isinstance(case, dict) or case.get("id") != "nat-add-assoc":
            raise ValueError("Nat dossier snapshot has an unsupported case identity")
        reference = dossier.get("m6_structural_metrics")
        if reference is None:
            continue
        if not isinstance(reference, dict) or reference.get("schema_version") != "mathcase-m6-structural-metrics-ref-v1" or \
            reference.get("m4_receipt_sha256") != candidate.get("m4_receipt_sha256") or \
            reference.get("metrics_receipt_sha256") != candidate.get("m6_metrics_receipt_sha256") or \
            reference.get("generated_source_sha256") != candidate.get("generated_source_sha256"):
            raise ValueError("Nat dossier store contains a conflicting M6 structural measurement")
        version = case.get("version") if isinstance(case, dict) else None
        if not isinstance(version, int) or version < 2:
            raise ValueError("Nat M6 dossier successor has an invalid case version")
        if reference.get("parent_dossier_sha256") != parent_sha256 or version != successor_version:
            # A later immutable dossier may carry this same M6 reference, but
            # dossier-read-m6 validates the exact successor that first attached it.
            continue
        updated_at = case.get("updated_at")
        if not isinstance(updated_at, str) or not updated_at:
            raise ValueError("Nat M6 dossier successor has no recorded update time")
        matches.append((updated_at, digest))
    if not matches:
        return None
    # Multiple exact same-version attachment attempts can differ only by their
    # immutable update time. Reopen the latest one deterministically.
    _updated_at, digest = max(matches)
    reopened = _reopen_nat_m6_revision(candidate, digest)
    return {"case_version": successor_version, **reopened}


def _proofdesk_read_bound(root: Path, path_value: object, expected_sha256: object) -> tuple[bytes, str, str]:
    if not isinstance(path_value, str) or not path_value or not isinstance(expected_sha256, str) or not SOURCE_DIGEST.fullmatch(expected_sha256):
        raise ValueError("Proof Desk record has an invalid evidence path or SHA-256")
    raw_path = Path(path_value)
    if raw_path.is_absolute():
        try:
            relative = Path(os.path.abspath(raw_path)).relative_to(root.resolve(strict=True)).as_posix()
        except (OSError, ValueError) as exc:
            raise ValueError("Proof Desk evidence path is outside the local project") from exc
    else:
        relative = path_value.replace("\\", "/")
    parts = relative.split("/")
    if any(part in {"", ".", ".."} for part in parts) or not relative.startswith(PROOFDESK_EVIDENCE_DIR + "/"):
        raise ValueError("Proof Desk evidence path is outside its fixed local receipt directory")
    path = _safe_local_artifact(root, relative)
    contents = path.read_bytes()
    actual = _digest_bytes(contents)
    if actual != expected_sha256:
        raise ValueError(f"Proof Desk evidence digest mismatch: {relative}")
    return contents, relative, actual


def _proofdesk_status(root: Path = ROOT) -> dict[str, object]:
    """Reopen the latest provider-run reconciliation and every linked receipt."""
    root_path = root.resolve(strict=True)
    evidence_dir = root_path.joinpath(*PROOFDESK_EVIDENCE_DIR.split("/"))
    try:
        evidence_dir.resolve(strict=True).relative_to(root_path)
    except (OSError, ValueError) as exc:
        raise ValueError("Proof Desk evidence directory is missing or outside the project") from exc
    candidates: list[tuple[int, Path]] = []
    for candidate in evidence_dir.iterdir():
        match = PROOFDESK_RECONCILIATION_NAME.fullmatch(candidate.name)
        if match:
            try:
                safe_candidate = _safe_local_artifact(root_path, candidate.relative_to(root_path).as_posix())
            except (OSError, ValueError):
                continue
            candidates.append((int(match.group(1)), safe_candidate))
    if not candidates:
        raise ValueError("No saved Proof Desk provider reconciliation is available")
    revision_number, source_path = max(candidates, key=lambda item: item[0])
    source_relative = source_path.relative_to(root_path).as_posix()
    source_bytes = source_path.read_bytes()
    source_sha256 = _digest_bytes(source_bytes)
    try:
        reconciliation = json.loads(source_bytes)
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValueError("Latest Proof Desk reconciliation is not valid JSON") from exc
    if not isinstance(reconciliation, dict) or reconciliation.get("schema") not in {
        "mathcase-proofdesk-outcome-reconciliation-v3",
        "mathcase-proofdesk-outcome-reconciliation-v4",
    } or reconciliation.get("revision") != f"r{revision_number}":
        raise ValueError("Latest Proof Desk reconciliation has an unexpected schema or revision")

    evidence: list[dict[str, str]] = [{"kind": "reconciliation", "path": source_relative, "sha256": source_sha256}]

    def read_link(kind: str, path_value: object, expected_sha256: object) -> bytes:
        contents, relative, digest = _proofdesk_read_bound(root_path, path_value, expected_sha256)
        evidence.append({"kind": kind, "path": relative, "sha256": digest})
        return contents

    parent = reconciliation.get("parent_reconciliation")
    if not isinstance(parent, dict):
        raise ValueError("Proof Desk reconciliation is missing its parent link")
    read_link("parent_reconciliation", parent.get("path"), parent.get("sha256"))

    ledgers = reconciliation.get("ledgers")
    cumulative = reconciliation.get("cumulative")
    if not isinstance(ledgers, list) or not ledgers or not isinstance(cumulative, dict):
        raise ValueError("Proof Desk reconciliation is missing its cumulative accounting")
    ledger_calls = 0
    ledger_cost = 0
    ledger_calls_by_provider_id: dict[str, dict[str, object]] = {}
    for ledger in ledgers:
        if not isinstance(ledger, dict):
            raise ValueError("Proof Desk ledger entry is malformed")
        ledger_bytes = read_link("cost_ledger", ledger.get("path"), ledger.get("sha256"))
        ledger_rows: list[dict[str, object]] = []
        try:
            for line in ledger_bytes.decode("utf-8").splitlines():
                if not line:
                    continue
                row = json.loads(line)
                record = row.get("record") if isinstance(row, dict) else None
                if not isinstance(record, dict):
                    raise ValueError("ledger row has no record object")
                ledger_rows.append(record)
        except (UnicodeDecodeError, json.JSONDecodeError, ValueError) as exc:
            raise ValueError("Proof Desk call ledger contains a malformed row") from exc
        finished_rows = [row for row in ledger_rows if row.get("call_state") == "finished"]
        started_rows = [row for row in ledger_rows if row.get("call_state") == "started"]
        finished_ids = [row.get("id") for row in finished_rows]
        started_ids = [row.get("id") for row in started_rows]
        if len(set(finished_ids)) != len(finished_ids) or set(started_ids) != set(finished_ids):
            raise ValueError("Proof Desk ledger has unmatched or duplicate call events")
        recorded_count = len(finished_rows)
        recorded_cost = 0
        for row in finished_rows:
            estimate = row.get("estimated_cost_micros")
            ceiling = row.get("cost_ceiling_micros")
            if not isinstance(estimate, int) or estimate < 0 or not isinstance(ceiling, int) or ceiling <= 0 or estimate > ceiling:
                raise ValueError("Proof Desk ledger contains a call outside its per-call ceiling")
            recorded_cost += estimate
            provider_call_id = row.get("provider_call_id")
            if isinstance(provider_call_id, str) and provider_call_id:
                if provider_call_id in ledger_calls_by_provider_id:
                    raise ValueError("Proof Desk ledgers contain a duplicate provider call identity")
                ledger_calls_by_provider_id[provider_call_id] = row
        if recorded_count != ledger.get("finished_call_count") or recorded_cost != ledger.get("cost_micros"):
            raise ValueError("Proof Desk ledger metadata does not match its recorded calls and costs")
        ledger_calls += recorded_count
        ledger_cost += recorded_cost
    if ledger_calls != cumulative.get("finished_call_count") or ledger_cost != cumulative.get("total_cost_micros"):
        raise ValueError("Proof Desk ledger totals do not reconcile with the cumulative summary")
    if cumulative.get("all_calls_within_per_call_ceiling") is not True:
        raise ValueError("Proof Desk reconciliation does not attest that all calls were within the stated ceiling")

    appended_runs = reconciliation.get("appended_runs")
    if not isinstance(appended_runs, list) or not appended_runs:
        raise ValueError("Proof Desk reconciliation has no run records")
    runs: list[dict[str, object]] = []
    run_hashes: dict[str, str] = {}
    run_values: dict[str, dict[str, object]] = {}
    run_attempts_by_id: dict[str, dict[str, object]] = {}
    for record in appended_runs:
        if not isinstance(record, dict):
            raise ValueError("Proof Desk run entry is malformed")
        run_bytes = read_link("run_result", record.get("path"), record.get("sha256"))
        run_value = json.loads(run_bytes)
        if not isinstance(run_value, dict) or run_value.get("run_id") != record.get("run_id") or run_value.get("solved") is not record.get("solved"):
            raise ValueError("Proof Desk run result does not match its reconciliation row")
        run_id = str(record.get("run_id"))
        run_hashes[run_id] = str(record.get("sha256"))
        run_values[run_id] = run_value
        attempts = run_value.get("attempts")
        if not isinstance(attempts, list):
            raise ValueError("Proof Desk run result has no typed attempt list")
        for source_attempt in attempts:
            if (
                not isinstance(source_attempt, dict)
                or not isinstance(source_attempt.get("id"), str)
                or source_attempt.get("run_id") != run_id
                or source_attempt.get("problem_id") != run_value.get("problem_id")
                or source_attempt["id"] in run_attempts_by_id
            ):
                raise ValueError("Proof Desk run result contains an invalid or duplicate attempt identity")
            run_attempts_by_id[source_attempt["id"]] = source_attempt
        runs.append({
            "run_id": run_value.get("run_id"),
            "problem_id": run_value.get("problem_id"),
            "provider_id": run_value.get("provider_id"),
            "model_id": run_value.get("model_id"),
            "solved": run_value.get("solved") is True,
            "attempt_count": len(attempts) if isinstance(attempts, list) else 0,
            "proof": run_value.get("proof") if isinstance(run_value.get("proof"), str) else None,
            "path": record.get("path"),
            "sha256": record.get("sha256"),
        })

    attempts = reconciliation.get("appended_attempts")
    if not isinstance(attempts, list):
        raise ValueError("Proof Desk attempt reconciliation is malformed")
    attempt_links = (
        ("run_result", "run_result_path", "run_result_sha256"),
        ("provider_call_receipt", "provider_call_receipt_path", "provider_call_receipt_sha256"),
        ("provider_request", "provider_request_path", "provider_request_sha256"),
        ("provider_response", "provider_response_path", "provider_response_sha256"),
        ("item_clearance", "input_clearance_path", "input_clearance_sha256"),
        ("lean_receipt", "lean_receipt_path", "lean_receipt_sha256"),
    )
    attempts_by_id: dict[str, dict[str, object]] = {}
    clearances_by_attempt: dict[str, bytes] = {}
    normalized_attempts: list[dict[str, object]] = []
    matched_run_attempt_ids: set[str] = set()
    for attempt in attempts:
        if not isinstance(attempt, dict) or attempt.get("run_id") not in run_hashes:
            raise ValueError("Proof Desk attempt is not bound to an included run")
        if attempt.get("run_result_sha256") != run_hashes[attempt["run_id"]]:
            raise ValueError("Proof Desk attempt does not bind the exact included run result")
        linked_values: dict[str, bytes] = {}
        for kind, path_key, digest_key in attempt_links[1:-1]:
            linked_bytes = read_link(kind, attempt.get(path_key), attempt.get(digest_key))
            linked_values[kind] = linked_bytes
            if kind == "item_clearance" and isinstance(attempt.get("attempt_id"), str):
                clearances_by_attempt[attempt["attempt_id"]] = linked_bytes
        try:
            call_receipt = json.loads(linked_values["provider_call_receipt"])
        except (KeyError, UnicodeDecodeError, json.JSONDecodeError) as exc:
            raise ValueError("Proof Desk provider call receipt is not valid JSON") from exc
        if not isinstance(call_receipt, dict):
            raise ValueError("Proof Desk provider call receipt is not a JSON object")
        receipt_bindings = (
            (call_receipt.get("provider_id"), attempt.get("provider_id")),
            (call_receipt.get("model_requested"), attempt.get("model_id")),
            (call_receipt.get("provider_call_id"), attempt.get("provider_call_id")),
        )
        if any(left != right for left, right in receipt_bindings):
            raise ValueError("Proof Desk provider call receipt does not match its attempt identity")
        receipt_schema = call_receipt.get("schema_version")
        known_protocols = {
            "mathcase-chat-completions-call-receipt-v1": "openai-chat-completions",
            "mathcase-anthropic-messages-call-receipt-v1": "anthropic-messages",
        }
        protocol_id = call_receipt.get("protocol_id")
        if not isinstance(protocol_id, str) or not protocol_id:
            protocol_id = known_protocols.get(receipt_schema)
        if not isinstance(protocol_id, str) or not protocol_id:
            raise ValueError("Proof Desk provider call receipt does not identify its API protocol")
        lean_path = attempt.get("lean_receipt_path")
        lean_sha256 = attempt.get("lean_receipt_sha256")
        if lean_path is None and lean_sha256 is None:
            if attempt.get("outcome") != "NO_PROGRESS" or attempt.get("failure_class") != "no_proof_candidate":
                raise ValueError("Proof Desk attempt without a Lean receipt lacks an explicit no-proof disposition")
        elif isinstance(lean_path, str) and isinstance(lean_sha256, str):
            read_link("lean_receipt", lean_path, lean_sha256)
        else:
            raise ValueError("Proof Desk attempt has an incomplete Lean receipt link")
        attempt_id = attempt.get("attempt_id")
        if isinstance(attempt_id, str):
            if attempt_id in attempts_by_id:
                raise ValueError("Proof Desk reconciliation contains a duplicate attempt identity")
            attempts_by_id[attempt_id] = attempt
            source_attempt = run_attempts_by_id.get(attempt_id)
            if source_attempt is None:
                raise ValueError("Proof Desk attempt is absent from its hash-pinned run result")
            joined_fields = (
                ("run_id", "run_id"),
                ("problem_id", "problem_id"),
                ("provider_id", "provider_id"),
                ("model_id", "model_id"),
                ("provider_call_id", "provider_call_id"),
                ("outcome", "outcome"),
                ("failure_class", "failure_class"),
                ("cost_micros", "cost_micros"),
                ("stage", "stage"),
            )
            if any(attempt.get(left) != source_attempt.get(right) for left, right in joined_fields):
                raise ValueError("Proof Desk attempt summary disagrees with its hash-pinned run result")
            ledger_call = ledger_calls_by_provider_id.get(str(attempt.get("provider_call_id")))
            if (
                ledger_call is None
                or ledger_call.get("estimated_cost_micros") != attempt.get("cost_micros")
                or ledger_call.get("provider_id") != attempt.get("provider_id")
                or ledger_call.get("run_id") != attempt.get("run_id")
            ):
                raise ValueError("Proof Desk attempt cost or provider identity does not match the finished cost ledger")
            matched_run_attempt_ids.add(attempt_id)
            normalized_attempts.append({
                "run_id": attempt.get("run_id"),
                "attempt_id": attempt_id,
                "problem_id": attempt.get("problem_id"),
                "provider_id": attempt.get("provider_id"),
                "model_id": attempt.get("model_id"),
                "provider_call_id": attempt.get("provider_call_id"),
                "protocol_id": protocol_id,
                "endpoint": call_receipt.get("endpoint"),
                "stage": attempt.get("stage"),
                "outcome": attempt.get("outcome"),
                "failure_class": attempt.get("failure_class"),
                "failure_summary": source_attempt.get("failure_summary"),
                "cost_micros": attempt.get("cost_micros"),
                "started_at_utc": source_attempt.get("started_at"),
                "finished_at_utc": source_attempt.get("finished_at"),
                "candidate_sha256": attempt.get("candidate_sha256") or source_attempt.get("candidate_sha256"),
                "lean_receipt_path": _proofdesk_normalize_path(root_path, attempt.get("lean_receipt_path")) if isinstance(attempt.get("lean_receipt_path"), str) else None,
                "lean_receipt_sha256": attempt.get("lean_receipt_sha256"),
                "provider_call_receipt_path": _proofdesk_normalize_path(root_path, attempt.get("provider_call_receipt_path")),
                "provider_call_receipt_sha256": attempt.get("provider_call_receipt_sha256"),
                "input_clearance_path": _proofdesk_normalize_path(root_path, attempt.get("input_clearance_path")),
                "input_clearance_sha256": attempt.get("input_clearance_sha256"),
            })
    if matched_run_attempt_ids != set(run_attempts_by_id):
        raise ValueError("Proof Desk reconciliation does not cover every attempt in its hash-pinned run results")

    auth_scope = reconciliation.get("authorization_scope")
    if not isinstance(auth_scope, dict):
        raise ValueError("Proof Desk reconciliation is missing its authorization scope")
    read_link("owner_clearance", auth_scope.get("owner_clearance_path"), auth_scope.get("owner_clearance_sha256"))

    outcomes = cumulative.get("outcomes")
    verified_attempts = 0
    if isinstance(outcomes, list):
        for outcome in outcomes:
            if isinstance(outcome, dict) and outcome.get("classification") == "KERNEL_AND_AXIOM_AUDIT_PASSED":
                verified_attempts += int(outcome.get("count", 0))

    verification_retries = reconciliation.get("verification_retries", [])
    if not isinstance(verification_retries, list):
        raise ValueError("Proof Desk verification-retry list is malformed")
    verified_replays: list[dict[str, object]] = []
    replayed_attempt_ids: set[str] = set()
    replay_passes_by_run: dict[str, int] = {}
    for retry_record in verification_retries:
        if not isinstance(retry_record, dict):
            raise ValueError("Proof Desk verification-retry entry is malformed")
        linkage_bytes = read_link("verification_replay", retry_record.get("linkage_receipt_path"), retry_record.get("linkage_receipt_sha256"))
        lean_bytes = read_link("verification_replay_lean", retry_record.get("lean_receipt_path"), retry_record.get("lean_receipt_sha256"))
        prior_retry_bytes = read_link("verification_replay_prior", retry_record.get("prior_retry_receipt_path"), retry_record.get("prior_retry_receipt_sha256"))
        problem_source_bytes = read_link("verification_replay_problem_source", retry_record.get("problem_source_path"), retry_record.get("problem_source_sha256"))
        builder_bytes = read_link("verification_replay_linkage_builder", retry_record.get("builder_path"), retry_record.get("builder_sha256"))
        try:
            linkage_value = json.loads(linkage_bytes)
            lean_value = json.loads(lean_bytes)
            prior_retry_value = json.loads(prior_retry_bytes)
            problem_source_value = json.loads(problem_source_bytes)
        except (UnicodeDecodeError, json.JSONDecodeError) as exc:
            raise ValueError("Proof Desk verification-retry evidence is not valid JSON") from exc
        if not builder_bytes:
            raise ValueError("Proof Desk verification-replay linkage builder is empty")
        parent_attempt_id = linkage_value.get("attempt_id") if isinstance(linkage_value, dict) else None
        parent_attempt = attempts_by_id.get(parent_attempt_id) if isinstance(parent_attempt_id, str) else None
        if parent_attempt is None or parent_attempt_id in replayed_attempt_ids:
            raise ValueError("Proof Desk verification replay is unbound or duplicated")
        clearance_bytes = clearances_by_attempt.get(parent_attempt_id)
        try:
            clearance_value = json.loads(clearance_bytes) if clearance_bytes is not None else None
        except (UnicodeDecodeError, json.JSONDecodeError) as exc:
            raise ValueError("Proof Desk replay parent clearance is not valid JSON") from exc
        if not isinstance(clearance_value, dict):
            raise ValueError("Proof Desk verification replay has no parsed item clearance")
        if not isinstance(problem_source_value, dict):
            raise ValueError("Proof Desk replay problem source is not a JSON object")
        _validate_saved_proof_replay_linkage(
            linkage_value, lean_value, prior_retry_value, problem_source_value,
            problem_source_bytes, parent_attempt, clearance_value, retry_record, root_path,
        )
        replayed_attempt_ids.add(parent_attempt_id)
        run_id = str(parent_attempt.get("run_id"))
        replay_passes_by_run[run_id] = replay_passes_by_run.get(run_id, 0) + 1
        verified_replays.append({
            "run_id": run_id,
            "problem_id": parent_attempt.get("problem_id"),
            "attempt_id": parent_attempt_id,
            "provider_id": parent_attempt.get("provider_id"),
            "model_id": parent_attempt.get("model_id"),
            "provider_call_id": parent_attempt.get("provider_call_id"),
            "original_attempt_outcome": parent_attempt.get("outcome"),
            "original_failure_class": parent_attempt.get("failure_class"),
            "status": "PASSED_ON_SAVED_PROOF_REPLAY",
            "recorded_at_utc": linkage_value.get("recorded_at_utc"),
            "cost_micros": 0,
            "linkage_receipt_path": retry_record.get("linkage_receipt_path"),
            "linkage_receipt_sha256": retry_record.get("linkage_receipt_sha256"),
            "lean_receipt_path": retry_record.get("lean_receipt_path"),
            "lean_receipt_sha256": retry_record.get("lean_receipt_sha256"),
        })
    for run in runs:
        run_id = str(run.get("run_id"))
        run["saved_proof_replay_pass_count"] = replay_passes_by_run.get(run_id, 0)
    verified_attempts += len(verified_replays)

    models = cumulative.get("models")
    if not isinstance(models, list) or any(not isinstance(model, dict) for model in models):
        raise ValueError("Proof Desk model identity summary is malformed")
    result = {
        "schema_version": "mathcase-local-proofdesk-status-v1",
        "state": "VERIFIED",
        "source": {"path": source_relative, "sha256": source_sha256, "recorded_at_utc": reconciliation.get("recorded_at_utc")},
        "provider_id": auth_scope.get("provider"),
        "protocol": "Per-call protocol from each provider receipt",
        "protocol_ids": sorted({str(item["protocol_id"]) for item in normalized_attempts}),
        "finished_call_count": ledger_calls,
        "total_cost_micros": ledger_cost,
        "total_cost_usd": cumulative.get("total_cost_usd"),
        "per_call_ceiling_micros": cumulative.get("per_call_ceiling_micros"),
        "all_calls_within_per_call_ceiling": cumulative.get("all_calls_within_per_call_ceiling"),
        "verified_attempt_count": verified_attempts,
        "provider_run_verified_attempt_count": verified_attempts - len(verified_replays),
        "saved_proof_replay_count": len(verified_replays),
        "latest_verified_replay": verified_replays[-1] if verified_replays else None,
        "models": models,
        "runs": runs,
        "attempts": normalized_attempts,
        "verified_replays": verified_replays,
        "evidence": evidence,
        "not_established": list(reconciliation.get("claim_boundary", {}).get("not_established", [])),
    }
    result["campaign_local_ledger_rollup"] = _campaign_local_ledger_rollup(root_path)
    return result


def _campaign_provider_budget_key(provider_id: object) -> str:
    if not isinstance(provider_id, str) or not provider_id.strip():
        raise ValueError("campaign cost ledger provider ID is missing")
    if provider_id == "nebius-token-factory":
        return "nebius"
    return provider_id


def _campaign_local_ledger_rollup(
    root: Path = ROOT,
    *,
    include_finished_cost_details: bool = False,
) -> dict[str, object]:
    """Join local call journals strictly; this is not account reconciliation by itself."""
    relative_paths = [
        "data/local/verification/proofdesk-nebius-20261024-r1/cost-ledger.jsonl",
        "data/local/verification/proofdesk-nebius-20261024-r1/chat-adapter-costs.jsonl",
        "data/local/verification/proofdesk-nebius-20261024-r1/explicit-provider-profile-r1/costs.jsonl",
        "data/local/verification/proofdesk-nebius-20261024-r1/explicit-provider-profile-r2/costs.jsonl",
        "data/local/verification/proofdesk-ui-dispatch-r1/cost-ledger.jsonl",
    ]
    calls: dict[str, dict[str, object]] = {}
    conflicting_ids: set[str] = set()
    for relative in relative_paths:
        path = root / relative
        if not path.is_file():
            continue
        for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), start=1):
            if not line.strip():
                continue
            try:
                envelope = json.loads(line)
                record = envelope.get("record") if isinstance(envelope, dict) else None
                if not isinstance(record, dict):
                    raise ValueError("record is not an object")
                # The durable cost-record ID exists on both the start reservation
                # and finish record; provider_call_id only appears after HTTP.
                call_id = record.get("id")
                if not isinstance(call_id, str) or not call_id:
                    raise ValueError("record ID is missing")
                call_state = record.get("call_state")
                if call_state not in {"started", "finished"}:
                    raise ValueError("call state is invalid")
                cost = record.get("estimated_cost_micros")
                if type(cost) is not int or cost < 0:
                    raise ValueError("estimated cost is invalid")
                prior = calls.get(call_id)
                if prior is None or (prior.get("call_state") != "finished" and call_state == "finished"):
                    calls[call_id] = {**record, "ledger_path": relative}
                elif prior.get("call_state") == call_state == "finished":
                    prior_cost = prior.get("estimated_cost_micros")
                    if type(prior_cost) is not int or cost > prior_cost:
                        calls[call_id] = {**record, "ledger_path": relative}
                    if (
                        cost != prior_cost
                        or record.get("provider_id") != prior.get("provider_id")
                    ):
                        conflicting_ids.add(call_id)
                elif prior.get("call_state") == "started" and call_state == "started":
                    if cost > int(prior.get("estimated_cost_micros", 0)):
                        calls[call_id] = {**record, "ledger_path": relative}
            except (json.JSONDecodeError, TypeError, ValueError) as exc:
                raise ValueError(f"campaign cost ledger is malformed at {relative}:{line_number}") from exc
    finished = [row for row in calls.values() if row.get("call_state") == "finished"]
    reserved = [row for row in calls.values() if row.get("call_state") != "finished"]
    cost_micros = sum(int(row.get("estimated_cost_micros", 0)) for row in finished
                      if type(row.get("estimated_cost_micros")) is int and row.get("estimated_cost_micros", 0) >= 0)
    cost_by_provider: dict[str, int] = {}
    finished_cost_observations: list[dict[str, object]] = []
    for row in finished:
        provider_key = _campaign_provider_budget_key(row.get("provider_id"))
        cost = int(row["estimated_cost_micros"])
        finished_at = _campaign_budget_timestamp(row.get("finished_at"), field="campaign cost ledger finished_at")
        cost_by_provider[provider_key] = cost_by_provider.get(provider_key, 0) + cost
        finished_cost_observations.append({
            "provider_budget_key": provider_key,
            "finished_at": finished_at,
            "estimated_cost_micros": cost,
        })
    outcome_categories: dict[str, dict[str, int]] = {}
    for dimension, field in (("transport", "transport_outcome"), ("provider", "provider_outcome"),
                             ("generation", "generation_outcome"), ("oracle", "oracle_status_at_capture")):
        counts: dict[str, int] = {}
        for row in finished:
            value = str(row.get(field) or "not_recorded")
            counts[value] = counts.get(value, 0) + 1
        outcome_categories[dimension] = counts
    provider_calls: dict[str, int] = {}
    for row in finished:
        provider = str(row.get("provider_id") or "not_recorded")
        provider_calls[provider] = provider_calls.get(provider, 0) + 1
    result: dict[str, object] = {
        "state": "LOCAL_LEDGER_ROLLUP_ONLY",
        "unique_finished_call_count": len(finished),
        "unique_unfinished_reservation_count": len(reserved),
        "conflicting_duplicate_call_count": len(conflicting_ids),
        "recorded_estimated_cost_micros": cost_micros,
        "recorded_estimated_cost_micros_by_provider": dict(sorted(cost_by_provider.items())),
        "recorded_estimated_cost_usd": round(cost_micros / 1_000_000, 6),
        "recorded_outcome_categories": outcome_categories,
        "provider_call_counts": provider_calls,
        "ledger_paths": relative_paths,
        "aggregate_owner_ceiling_usd": 10.0,
        "aggregate_ceiling_funding_basis": "OWNER_OWNED_PREPAID_ONLY; includes all prior use and reservations",
        "account_reconciliation": "INCOMPLETE; local ledgers do not establish all account use or reservations",
        "available_headroom_usd": None,
        "claim_boundary": "Recorded local estimates only; not account balance, complete spend reconciliation, or provider success rate.",
    }
    if include_finished_cost_details:
        result["_finished_cost_observations"] = finished_cost_observations
    return result


def _campaign_budget_timestamp(value: object, *, field: str) -> datetime:
    if not isinstance(value, str) or not value.strip():
        raise ValueError(f"{field} is missing")
    try:
        parsed = datetime.fromisoformat(value.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError(f"{field} is invalid") from exc
    if parsed.tzinfo is None:
        raise ValueError(f"{field} must include a timezone")
    return parsed.astimezone(timezone.utc)


def _read_campaign_budget_reconciliation(root: Path, *, now: datetime | None = None) -> dict[str, object]:
    """Read a fresh owner attestation and hash-bound redacted account evidence."""
    path = root / CAMPAIGN_BUDGET_RECONCILIATION_REL
    if not path.exists():
        raise FileNotFoundError(CAMPAIGN_BUDGET_RECONCILIATION_REL)
    resolved = _safe_local_artifact(root, CAMPAIGN_BUDGET_RECONCILIATION_REL)
    raw = resolved.read_bytes()
    if len(raw) > CAMPAIGN_BUDGET_RECONCILIATION_MAX_BYTES:
        raise ValueError("campaign budget reconciliation exceeds its size limit")
    record = json.loads(raw.decode("utf-8", errors="strict"))
    expected_fields = {
        "schema_version", "owner_identity", "owner_attestation", "reconciled_at_utc",
        "usage_period_start_utc", "aggregate_ceiling_micros", "all_accounts_reviewed",
        "all_prior_openai_nebius_usage_included", "topups_enabled", "enabled_providers", "accounts",
    }
    if not isinstance(record, dict) or set(record) != expected_fields:
        raise ValueError("campaign budget reconciliation fields do not match the required schema")
    if record.get("schema_version") != CAMPAIGN_BUDGET_RECONCILIATION_SCHEMA:
        raise ValueError("campaign budget reconciliation schema is unsupported")
    if record.get("owner_identity") not in CAMPAIGN_BUDGET_OWNER_IDENTITIES:
        raise ValueError("campaign budget reconciliation owner identity is not recognized")
    if record.get("owner_attestation") != (
        "I confirm every listed account is mine, uses owner-owned prepaid funds only, "
        "has no pay-as-you-go or top-ups, and includes all prior OpenAI/Nebius usage under this $10 limit."
    ):
        raise ValueError("campaign budget owner attestation is missing")
    if (
        type(record.get("aggregate_ceiling_micros")) is not int
        or record["aggregate_ceiling_micros"] != CAMPAIGN_AGGREGATE_CEILING_MICROS
        or record.get("all_accounts_reviewed") is not True
        or record.get("all_prior_openai_nebius_usage_included") is not True
        or record.get("topups_enabled") is not False
    ):
        raise ValueError("campaign budget reconciliation does not meet the $10 prepaid-only scope")
    enabled_providers = record.get("enabled_providers")
    if (
        not isinstance(enabled_providers, list)
        or not enabled_providers
        or any(provider not in {"openai", "nebius"} for provider in enabled_providers)
        or len(set(enabled_providers)) != len(enabled_providers)
    ):
        raise ValueError("campaign budget enabled provider list is invalid")

    current = (now or datetime.now(timezone.utc)).astimezone(timezone.utc)
    reconciled_at = _campaign_budget_timestamp(record.get("reconciled_at_utc"), field="reconciled_at_utc")
    period_start = _campaign_budget_timestamp(record.get("usage_period_start_utc"), field="usage_period_start_utc")
    if reconciled_at > current + timedelta(minutes=5) or period_start > reconciled_at:
        raise ValueError("campaign budget reconciliation timestamps are inconsistent")
    if (current - reconciled_at).total_seconds() > CAMPAIGN_BUDGET_FRESHNESS_SECONDS:
        raise TimeoutError("campaign budget reconciliation is stale")

    accounts = record.get("accounts")
    if not isinstance(accounts, list) or not accounts:
        raise ValueError("campaign budget reconciliation has no account evidence")
    expected_account_fields = {
        "provider_id", "account_ref", "owner_owned", "pay_as_you_go_enabled",
        "all_prior_usage_included", "cumulative_usage_micros", "cumulative_usage_basis", "available_prepaid_micros",
        "checked_at_utc", "evidence_path", "evidence_sha256",
    }
    seen_accounts: set[tuple[str, str]] = set()
    providers: set[str] = set()
    usage_micros = 0
    prepaid_micros = 0
    usage_by_provider: dict[str, int] = {}
    prepaid_by_provider: dict[str, int] = {}
    prepaid_observed_at_by_provider: dict[str, datetime] = {}
    evidence_digests: list[str] = []
    evidence_root = CAMPAIGN_BUDGET_EVIDENCE_ROOT + "/"
    for account in accounts:
        if not isinstance(account, dict) or set(account) != expected_account_fields:
            raise ValueError("campaign budget account evidence fields are invalid")
        provider_id = account.get("provider_id")
        account_ref = account.get("account_ref")
        if provider_id not in {"openai", "nebius"}:
            raise ValueError("campaign budget account provider is unsupported")
        if not isinstance(account_ref, str) or not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9._ -]{0,79}", account_ref):
            raise ValueError("campaign budget account reference must be a redacted label")
        if re.search(r"(?i)(sk-[A-Za-z0-9]|nvapi-|tvly-|api[-_ ]?key|secret|bearer)", account_ref):
            raise ValueError("campaign budget account reference appears to contain a credential")
        identity = (provider_id, account_ref)
        if identity in seen_accounts:
            raise ValueError("campaign budget account is duplicated")
        seen_accounts.add(identity)
        providers.add(provider_id)
        if (
            account.get("owner_owned") is not True
            or account.get("pay_as_you_go_enabled") is not False
            or account.get("all_prior_usage_included") is not True
            or account.get("cumulative_usage_basis") not in {"EXACT_OBSERVED", "CONSERVATIVE_UPPER_BOUND"}
        ):
            raise ValueError("campaign budget account is shared, pay-as-you-go, or missing prior usage")
        for field in ("cumulative_usage_micros", "available_prepaid_micros"):
            amount = account.get(field)
            if type(amount) is not int or amount < 0:
                raise ValueError(f"campaign budget {field} is invalid")
        checked_at = _campaign_budget_timestamp(account.get("checked_at_utc"), field="account checked_at_utc")
        if checked_at < period_start or checked_at > reconciled_at or (current - checked_at).total_seconds() > CAMPAIGN_BUDGET_FRESHNESS_SECONDS:
            raise TimeoutError("campaign budget account evidence is stale or outside the usage period")

        evidence_path = account.get("evidence_path")
        if (
            not isinstance(evidence_path, str)
            or "\\" in evidence_path
            or not evidence_path.startswith(evidence_root)
            or ".." in Path(evidence_path).parts
        ):
            raise ValueError("campaign budget evidence path is outside its private evidence directory")
        expected_digest = account.get("evidence_sha256")
        if not isinstance(expected_digest, str) or not re.fullmatch(r"[0-9a-f]{64}", expected_digest):
            raise ValueError("campaign budget evidence digest is invalid")
        evidence_file = _safe_local_artifact(root, evidence_path)
        if evidence_file.stat().st_size > CAMPAIGN_BUDGET_EVIDENCE_MAX_BYTES:
            raise ValueError("campaign budget account evidence exceeds its size limit")
        observed_digest = hashlib.sha256(evidence_file.read_bytes()).hexdigest()
        if observed_digest != expected_digest:
            raise ValueError("campaign budget account evidence digest does not match")
        evidence_digests.append(observed_digest)
        usage_micros += account["cumulative_usage_micros"]
        prepaid_micros += account["available_prepaid_micros"]
        usage_by_provider[provider_id] = usage_by_provider.get(provider_id, 0) + account["cumulative_usage_micros"]
        prepaid_by_provider[provider_id] = prepaid_by_provider.get(provider_id, 0) + account["available_prepaid_micros"]
        prior_check = prepaid_observed_at_by_provider.get(provider_id)
        if prior_check is None or checked_at < prior_check:
            prepaid_observed_at_by_provider[provider_id] = checked_at
    if providers != set(enabled_providers):
        raise ValueError("every enabled campaign provider must have reconciled account evidence, and disabled providers must not be funded by this record")
    return {
        "reconciliation_path": CAMPAIGN_BUDGET_RECONCILIATION_REL,
        "reconciliation_sha256": hashlib.sha256(raw).hexdigest(),
        "evidence_receipt_sha256s": sorted(evidence_digests),
        "reconciled_at_utc": reconciled_at.isoformat().replace("+00:00", "Z"),
        "usage_period_start_utc": period_start.isoformat().replace("+00:00", "Z"),
        "account_count": len(accounts),
        "reported_cumulative_usage_micros": usage_micros,
        "available_owner_prepaid_micros": prepaid_micros,
        "enabled_providers": sorted(enabled_providers),
        "reported_cumulative_usage_by_provider_micros": usage_by_provider,
        "available_prepaid_by_provider_micros": prepaid_by_provider,
        "prepaid_observed_at_utc_by_provider": {
            provider: checked_at.isoformat().replace("+00:00", "Z")
            for provider, checked_at in sorted(prepaid_observed_at_by_provider.items())
        },
    }


def _campaign_dispatch_budget_status(root: Path = ROOT) -> dict[str, object]:
    """Require fresh, hash-bound owner account evidence before allowing any paid UI dispatch."""
    try:
        rollup = _campaign_local_ledger_rollup(root, include_finished_cost_details=True)
    except (OSError, ValueError, TypeError, UnicodeError) as exc:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_STATUS_INVALID",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "available_headroom_micros": None,
            "reason": f"Paid proof dispatch is paused because a local campaign cost ledger is malformed or unavailable ({type(exc).__name__}). No provider call was sent.",
        }
    if int(rollup.get("unique_unfinished_reservation_count", 0)) > 0:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_UNFINISHED_RESERVATION",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "recorded_local_cost_micros": rollup.get("recorded_estimated_cost_micros"),
            "local_unfinished_reservation_count": rollup.get("unique_unfinished_reservation_count"),
            "account_reconciliation": "INCOMPLETE",
            "available_headroom_micros": None,
            "reason": "Paid proof dispatch is paused while an earlier local reservation has no finished cost record. Reconcile it before another request.",
        }
    if int(rollup.get("conflicting_duplicate_call_count", 0)) > 0:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_STATUS_INVALID",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "available_headroom_micros": None,
            "reason": "Paid proof dispatch is paused because duplicate local call records disagree. Reconcile the records before another request.",
        }
    try:
        reconciliation = _read_campaign_budget_reconciliation(root)
    except FileNotFoundError:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_HEADROOM_UNKNOWN",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "recorded_local_cost_micros": rollup.get("recorded_estimated_cost_micros"),
            "local_unfinished_reservation_count": 0,
            "account_reconciliation": "MISSING",
            "available_headroom_micros": None,
            "reason": "Paid proof dispatch is paused because fresh prepaid-balance and prior-usage evidence is not configured for enabled provider accounts. No provider call was sent.",
        }
    except TimeoutError:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_RECONCILIATION_STALE",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "account_reconciliation": "STALE",
            "available_headroom_micros": None,
            "reason": "Paid proof dispatch is paused because provider-account budget evidence is older than 24 hours. Refresh the reconciliation before another request.",
        }
    except (OSError, ValueError, TypeError, UnicodeError, json.JSONDecodeError) as exc:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_RECONCILIATION_INVALID",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "account_reconciliation": "INVALID",
            "available_headroom_micros": None,
            "reason": f"Paid proof dispatch is paused because provider-account budget reconciliation or its redacted evidence is invalid ({type(exc).__name__}). No provider call was sent.",
        }
    reported_by_provider = reconciliation["reported_cumulative_usage_by_provider_micros"]
    local_by_provider = rollup["recorded_estimated_cost_micros_by_provider"]
    # Account usage and prepaid balances are both snapshots. Compare reported
    # usage with only local costs that predate each provider's snapshot, then
    # add deduplicated local calls completed afterward exactly once.
    observed_at_by_provider = {
        provider: _campaign_budget_timestamp(value, field="prepaid observation timestamp")
        for provider, value in reconciliation["prepaid_observed_at_utc_by_provider"].items()
    }
    post_snapshot_local_cost_by_provider: dict[str, int] = {}
    for observation in rollup.get("_finished_cost_observations", []):
        provider = str(observation["provider_budget_key"])
        observed_at = observed_at_by_provider.get(provider)
        if observed_at is not None and observation["finished_at"] > observed_at:
            post_snapshot_local_cost_by_provider[provider] = (
                post_snapshot_local_cost_by_provider.get(provider, 0)
                + int(observation["estimated_cost_micros"])
            )
    providers_with_spend = set(reported_by_provider) | set(local_by_provider)
    reconciled_usage_by_provider = {}
    for provider in sorted(providers_with_spend):
        post_snapshot_cost = post_snapshot_local_cost_by_provider.get(provider, 0)
        local_before_snapshot = max(0, int(local_by_provider.get(provider, 0)) - post_snapshot_cost)
        reconciled_usage_by_provider[provider] = (
            max(int(reported_by_provider.get(provider, 0)), local_before_snapshot) + post_snapshot_cost
        )
    used_micros = sum(reconciled_usage_by_provider.values())

    adjusted_prepaid_by_provider = {
        provider: max(0, int(amount) - post_snapshot_local_cost_by_provider.get(provider, 0))
        for provider, amount in reconciliation["available_prepaid_by_provider_micros"].items()
    }
    adjusted_prepaid_total = sum(adjusted_prepaid_by_provider.values())
    headroom_micros = min(
        max(0, CAMPAIGN_AGGREGATE_CEILING_MICROS - used_micros),
        adjusted_prepaid_total,
    )
    provider_headroom_micros = {
        provider: min(amount, headroom_micros)
        for provider, amount in adjusted_prepaid_by_provider.items()
    }
    accounting = {
        "recorded_local_cost_micros_by_provider": local_by_provider,
        "reconciled_usage_micros_by_provider": reconciled_usage_by_provider,
        "reconciled_cumulative_usage_micros": used_micros,
        "post_snapshot_local_cost_micros_by_provider": post_snapshot_local_cost_by_provider,
        "adjusted_prepaid_by_provider_micros": adjusted_prepaid_by_provider,
        "adjusted_prepaid_total_micros": adjusted_prepaid_total,
    }
    if headroom_micros < DISPATCH_RUN_CEILING_MICROS:
        return {
            "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
            "state": "BLOCKED_HEADROOM_INSUFFICIENT",
            "ready": False,
            "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
            "recorded_local_cost_micros": rollup.get("recorded_estimated_cost_micros"),
            **reconciliation,
            **accounting,
            "account_reconciliation": "OWNER_ATTESTED_EVIDENCE_CURRENT",
            "available_headroom_micros": headroom_micros,
            "provider_available_headroom_micros": provider_headroom_micros,
            "reason": f"Paid proof dispatch is paused because reconciled owner-owned prepaid headroom is below the full ${DISPATCH_RUN_CEILING_MICROS / 1_000_000:.2f} run reservation.",
        }
    return {
        "schema_version": CAMPAIGN_BUDGET_STATUS_SCHEMA,
        "state": "READY",
        "ready": True,
        "aggregate_ceiling_micros": CAMPAIGN_AGGREGATE_CEILING_MICROS,
        "recorded_local_cost_micros": rollup.get("recorded_estimated_cost_micros"),
        **reconciliation,
        **accounting,
        "account_reconciliation": "OWNER_ATTESTED_EVIDENCE_CURRENT",
        "available_headroom_micros": headroom_micros,
        "provider_available_headroom_micros": provider_headroom_micros,
        "reason": "Fresh owner-attested evidence covers enabled provider accounts, prior campaign usage, owner-owned prepaid funding, and the full dispatch reservation.",
    }


def _validate_saved_proof_replay_linkage(
    linkage: object,
    lean: object,
    prior_retry: object,
    problem_source: dict[str, object],
    problem_source_bytes: bytes,
    parent_attempt: dict[str, object],
    clearance: dict[str, object],
    linkage_record: dict[str, object],
    root: Path,
) -> None:
    """Accept a saved-proof replay only through its exact statement and receipt bindings."""
    if not isinstance(linkage, dict) or not isinstance(lean, dict) or not isinstance(prior_retry, dict):
        raise ValueError("Proof Desk verification replay must contain typed JSON receipts")
    if linkage.get("schema_version") != "mathcase-saved-proof-replay-linkage-v1" or linkage.get("status") != "VERIFIED" or linkage.get("outcome") != "SAVED_PROOF_REPLAY_PASSED":
        raise ValueError("Proof Desk saved-proof replay linkage is not a passing typed receipt")
    if linkage.get("verification_replay_cost_micros") != 0 or linkage.get("provider_call_count") != 0 or linkage_record.get("provider_call_count") != 0:
        raise ValueError("Proof Desk verifier replay must not be counted as a provider call")
    if parent_attempt.get("outcome") != "ERROR" or parent_attempt.get("failure_class") != "verification":
        raise ValueError("Proof Desk saved-proof replay must retain its original verifier-infrastructure failure")
    statement = problem_source.get("statement")
    lean_statement = problem_source.get("lean_statement")
    problem_id = problem_source.get("id")
    if not isinstance(statement, str) or not isinstance(lean_statement, str) or not isinstance(problem_id, str):
        raise ValueError("Proof Desk replay source lacks the exact informal and Lean statements")
    raw_statement_sha256 = hashlib.sha256(lean_statement.encode("utf-8")).hexdigest()
    statement_digest = _problem_statement_digest(problem_id, statement, lean_statement)
    source_sha256 = hashlib.sha256(problem_source_bytes).hexdigest()
    bindings = (
        (linkage.get("run_id"), parent_attempt.get("run_id")),
        (linkage.get("attempt_id"), parent_attempt.get("attempt_id")),
        (linkage.get("problem_id"), parent_attempt.get("problem_id")),
        (linkage.get("provider_id"), parent_attempt.get("provider_id")),
        (linkage.get("model_id"), parent_attempt.get("model_id")),
        (linkage.get("provider_call_id"), parent_attempt.get("provider_call_id")),
        (linkage.get("provider_call_receipt_path"), parent_attempt.get("provider_call_receipt_path")),
        (linkage.get("provider_call_receipt_sha256"), parent_attempt.get("provider_call_receipt_sha256")),
        (linkage.get("provider_request_sha256"), parent_attempt.get("provider_request_sha256")),
        (linkage.get("provider_response_sha256"), parent_attempt.get("provider_response_sha256")),
        (linkage.get("proof_sha256"), parent_attempt.get("candidate_sha256")),
        (linkage.get("problem_id"), clearance.get("theorem_id")),
        (linkage.get("input_clearance_path"), parent_attempt.get("input_clearance_path")),
        (linkage.get("input_clearance_sha256"), parent_attempt.get("input_clearance_sha256")),
        (linkage.get("lean_statement_sha256"), raw_statement_sha256),
        (linkage.get("lean_statement_sha256"), clearance.get("statement_sha256")),
        (linkage.get("problem_statement_digest"), statement_digest),
        (linkage.get("proof_sha256"), lean.get("proof_sha256")),
        (linkage.get("problem_statement_digest"), lean.get("problem_statement_sha256")),
        (linkage.get("manifest_sha256"), lean.get("snapshot_manifest_sha256")),
        (linkage.get("image_digest"), lean.get("execution_image")),
        (linkage.get("problem_source_sha256"), source_sha256),
        (_proofdesk_normalize_path(root, linkage.get("problem_source_path")), _proofdesk_normalize_path(root, linkage_record.get("problem_source_path"))),
        (linkage.get("problem_source_sha256"), linkage_record.get("problem_source_sha256")),
        (linkage.get("manifest_path"), prior_retry.get("manifest_path")),
        (linkage.get("provider_call_id"), linkage_record.get("provider_call_id")),
        (linkage.get("proof_sha256"), linkage_record.get("proof_sha256")),
        (_proofdesk_normalize_path(root, linkage.get("lean_receipt_path")), _proofdesk_normalize_path(root, linkage_record.get("lean_receipt_path"))),
        (linkage.get("lean_receipt_sha256"), linkage_record.get("lean_receipt_sha256")),
        (_proofdesk_normalize_path(root, linkage.get("prior_retry_receipt_path")), _proofdesk_normalize_path(root, linkage_record.get("prior_retry_receipt_path"))),
        (linkage.get("prior_retry_receipt_sha256"), linkage_record.get("prior_retry_receipt_sha256")),
        (_proofdesk_normalize_path(root, linkage.get("builder_path")), _proofdesk_normalize_path(root, linkage_record.get("builder_path"))),
        (linkage.get("builder_sha256"), linkage_record.get("builder_sha256")),
    )
    if any(left != right for left, right in bindings):
        raise ValueError("Proof Desk verification replay identity, clearance, proof, source, manifest, or image binding does not match")
    if prior_retry.get("schema_version") != "mathcase-saved-proof-verification-retry-r1" or prior_retry.get("status") != "PASSED":
        raise ValueError("Proof Desk replay linkage does not preserve a passing prior replay receipt")
    prior_bindings = (
        (prior_retry.get("provider_call_id"), parent_attempt.get("provider_call_id")),
        (prior_retry.get("provider_call_receipt_sha256"), parent_attempt.get("provider_call_receipt_sha256")),
        (prior_retry.get("proof_sha256"), parent_attempt.get("candidate_sha256")),
        (prior_retry.get("statement_sha256"), clearance.get("statement_sha256")),
        (prior_retry.get("manifest_sha256"), linkage.get("manifest_sha256")),
        (prior_retry.get("image_digest"), linkage.get("image_digest")),
        (prior_retry.get("lean_receipt_path"), linkage.get("lean_receipt_path")),
        (prior_retry.get("lean_receipt_sha256"), linkage.get("lean_receipt_sha256")),
    )
    if any(left != right for left, right in prior_bindings):
        raise ValueError("Proof Desk saved-proof replay linkage does not match its prior replay receipt")
    if lean.get("schema_version") != "mathcase-lean-verification-v3" or lean.get("status") != "PASSED" or lean.get("kernel_passed") is not True or lean.get("axioms_passed") is not True:
        raise ValueError("Proof Desk verification replay does not carry a passed kernel and axiom receipt")
    if not isinstance(lean.get("sandbox_execution"), dict) or "--network=none" not in lean["sandbox_execution"].get("command_argv", []):
        raise ValueError("Proof Desk saved-proof replay lacks a network-disabled Lean execution receipt")


def _proofdesk_normalize_path(root: Path, path_value: object) -> str:
    """Normalize absolute and project-relative evidence references to one safe identity."""
    if not isinstance(path_value, str) or not path_value:
        raise ValueError("Proof Desk evidence binding contains an invalid path")
    raw_path = Path(path_value)
    if raw_path.is_absolute():
        try:
            relative = Path(os.path.abspath(raw_path)).relative_to(root.resolve(strict=True)).as_posix()
        except (OSError, ValueError) as exc:
            raise ValueError("Proof Desk evidence binding points outside the local project") from exc
    else:
        relative = path_value.replace("\\", "/")
    parts = relative.split("/")
    if any(part in {"", ".", ".."} for part in parts) or not relative.startswith(PROOFDESK_EVIDENCE_DIR + "/"):
        raise ValueError("Proof Desk evidence binding is outside its fixed local receipt directory")
    return relative


def _problem_statement_digest(problem_id: str, statement: str, lean_statement: str) -> str:
    """Match domain.ProblemStatementDigest's ordered Go JSON payload."""
    payload = json.dumps(
        {"problem_id": problem_id, "statement": statement, "lean_statement": lean_statement},
        ensure_ascii=False,
        separators=(",", ":"),
    )
    payload = payload.replace("&", "\\u0026").replace("<", "\\u003c").replace(">", "\\u003e")
    payload = payload.replace("\u2028", "\\u2028").replace("\u2029", "\\u2029")
    return hashlib.sha256(payload.encode("utf-8")).hexdigest()


def _read_pinned_json(root: Path, relative_path: str, expected_sha256: str) -> tuple[dict[str, object], str]:
    parts = relative_path.split("/")
    if not SOURCE_DIGEST.fullmatch(expected_sha256) or not relative_path.startswith("data/local/") or any(part in {"", ".", ".."} for part in parts):
        raise ValueError("case source is not an exact local artifact pin")
    path = root.joinpath(*parts)
    if not _is_safe_regular_file(path):
        raise ValueError(f"pinned case source is unavailable: {relative_path}")
    raw = path.read_bytes()
    actual = _digest_bytes(raw)
    if actual != expected_sha256:
        raise ValueError(f"pinned case source changed: {relative_path}")
    value = json.loads(raw)
    if not isinstance(value, dict):
        raise ValueError(f"pinned case source is not a JSON object: {relative_path}")
    return value, actual


def _read_case_source_view(
    root: Path, case_id: str, problem_id: str, source_id: str
) -> dict[str, object]:
    """Reopen one case's exact source file and emit a navigation excerpt only."""
    expected_binding = CASE_SOURCE_BINDINGS.get(case_id)
    if expected_binding is None or expected_binding[:2] != (problem_id, source_id):
        raise ValueError("source pin does not belong to the selected case and problem")

    receipt_path = _safe_local_artifact(root, CASE_SOURCE_ACQUISITION_PATH)
    receipt_bytes = receipt_path.read_bytes()
    receipt_sha = _digest_bytes(receipt_bytes)
    if receipt_sha != CASE_SOURCE_ACQUISITION_SHA256:
        raise ValueError("case source acquisition receipt changed")
    receipt = json.loads(receipt_bytes)
    if (
        not isinstance(receipt, dict)
        or receipt.get("schema_version") != "mathcase-source-reopening-acquisition-v1"
        or receipt.get("status") != "SOURCE_BYTES_REOPENED_AND_PIN_MATCHED"
        or not isinstance(receipt.get("records"), list)
    ):
        raise ValueError("case source acquisition receipt has an unsupported shape")
    matches = [item for item in receipt["records"] if isinstance(item, dict) and item.get("source_id") == source_id]
    if len(matches) != 1:
        raise ValueError("case source acquisition receipt does not contain one exact source pin")
    record = matches[0]
    repository = record.get("repository")
    revision = record.get("revision")
    locator = record.get("locator")
    if (
        not isinstance(repository, str)
        or not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", repository)
        or not isinstance(revision, str)
        or not re.fullmatch(r"[0-9a-f]{40}", revision)
        or not isinstance(locator, str)
        or locator.startswith("/")
        or "\\" in locator
        or any(part in ("", ".", "..") for part in locator.split("/"))
        or record.get("use_scope") != "LOCAL_SOURCE_REOPENING_ONLY"
        or record.get("gate_effect") != "NONE"
        or record.get("training_use") != "NOT_AUTHORIZED"
        or record.get("provider_input_in_this_run") is not False
    ):
        raise ValueError("case source pin has unsafe provenance or scope")

    expected_raw_url = f"https://raw.githubusercontent.com/{repository}/{revision}/{locator}"
    expected_browser_url = f"https://github.com/{repository}/blob/{revision}/{locator}"
    expected_license_url = f"https://github.com/{repository}/blob/{revision}/LICENSE"
    if (
        record.get("raw_url") != expected_raw_url
        or record.get("browser_url") != expected_browser_url
        or record.get("license_url") != expected_license_url
        or record.get("license") != "Apache-2.0"
        or record.get("source_http_status") != 200
        or record.get("license_http_status") != 200
    ):
        raise ValueError("case source URLs or license provenance do not match the pinned commit")

    source_path_value = record.get("local_artifact_path")
    license_path_value = record.get("local_license_path")
    source_sha = record.get("source_sha256")
    license_sha = record.get("license_sha256")
    declaration_name = record.get("declaration_name")
    if (
        not isinstance(source_path_value, str)
        or not isinstance(license_path_value, str)
        or not isinstance(source_sha, str)
        or not SOURCE_DIGEST.fullmatch(source_sha)
        or not isinstance(license_sha, str)
        or not SOURCE_DIGEST.fullmatch(license_sha)
        or not isinstance(declaration_name, str)
        or not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_']*", declaration_name)
    ):
        raise ValueError("case source pin is missing a source, license, or declaration digest")
    source_path = _safe_local_artifact(root, source_path_value)
    source_bytes = source_path.read_bytes()
    if _digest_bytes(source_bytes) != source_sha or len(source_bytes) != record.get("source_bytes"):
        raise ValueError("case source-file bytes do not match the pinned source record")
    license_path = _safe_local_artifact(root, license_path_value)
    license_bytes = license_path.read_bytes()
    if (
        _digest_bytes(license_bytes) != license_sha
        or len(license_bytes) != record.get("license_bytes")
        or b"Apache License" not in license_bytes
        or b"Version 2.0" not in license_bytes
    ):
        raise ValueError("case source license bytes do not match the Apache-2.0 pin")

    try:
        lines = source_bytes.decode("utf-8").splitlines(keepends=True)
    except UnicodeDecodeError as exc:
        raise ValueError("case source file is not UTF-8") from exc
    declaration_pattern = re.compile(
        r"^\s*(?:(?:protected|private|unsafe|noncomputable)\s+)*(?:theorem|lemma)\s+(?:_root_\.)?([A-Za-z_][A-Za-z0-9_'.]*)\b"
    )
    declarations = [
        (index, match.group(1), line)
        for index, line in enumerate(lines, 1)
        if (match := declaration_pattern.match(line)) is not None
        and match.group(1).split(".")[-1] == declaration_name
    ]
    if len(declarations) != 1:
        raise ValueError("case source declaration is missing or ambiguous")
    declaration_line, found_name, header_line = declarations[0]
    namespace_pattern = re.compile(r"^\s*namespace\s+([A-Za-z_][A-Za-z0-9_.]*)\s*$")
    namespace_matches = [
        (index, match.group(1))
        for index, line in enumerate(lines[:declaration_line - 1], 1)
        if (match := namespace_pattern.match(line.rstrip("\r\n"))) is not None
    ]
    namespace_line = namespace_matches[-1] if namespace_matches else None
    context_lines: list[dict[str, object]] = []
    context_start = namespace_line[0] if namespace_line else 1
    if namespace_line:
        context_lines.append({"line": namespace_line[0], "text": lines[namespace_line[0] - 1].rstrip("\r\n")})
    for kind in ("universe", "variable"):
        matches_in_scope = [
            (index, line)
            for index, line in enumerate(lines[context_start:declaration_line - 1], context_start + 1)
            if line.lstrip().startswith(kind + " ")
        ]
        if matches_in_scope:
            index, line = matches_in_scope[-1]
            context_lines.append({"line": index, "text": line.rstrip("\r\n")})
    context_lines.sort(key=lambda item: int(item["line"]))
    qualified_name = (
        found_name
        if "." in found_name or not namespace_line
        else f"{namespace_line[1]}.{found_name}"
    )
    expected_qualified_name = expected_binding[2] if expected_binding else None
    header_sha = _digest_bytes(header_line.encode("utf-8"))
    if (
        qualified_name != expected_qualified_name
        or declaration_line != record.get("declaration_line_start")
        or declaration_line != record.get("declaration_line_end")
        or header_sha != record.get("declaration_header_sha256")
        or header_line.rstrip("\r\n") != record.get("declaration_header_text")
    ):
        raise ValueError("case source declaration locator does not match its exact source bytes")
    header_colon = -1
    delimiter_depth = 0
    for index, character in enumerate(header_line):
        if character in "{([":
            delimiter_depth += 1
        elif character in "})]":
            delimiter_depth = max(0, delimiter_depth - 1)
        elif character == ":" and delimiter_depth == 0:
            header_colon = index
            break
    if header_colon < 0:
        raise ValueError("case source declaration header has no type separator")
    declaration_type = header_line[header_colon + 1 :].strip()
    proof_introducer = re.search(r"\s*:=\s*by\b.*\Z", declaration_type)
    if proof_introducer is not None:
        declaration_type = declaration_type[: proof_introducer.start()].rstrip()

    return {
        "schema_version": "mathcase-original-source-view-v1",
        "source_id": source_id,
        "repository": repository,
        "revision": revision,
        "locator": locator,
        "url": expected_browser_url,
        "local_artifact_path": source_path.relative_to(root.resolve()).as_posix(),
        "source_bytes": len(source_bytes),
        "source_sha256": source_sha,
        "license": "Apache-2.0",
        "license_url": expected_license_url,
        "local_license_path": license_path.relative_to(root.resolve()).as_posix(),
        "license_sha256": license_sha,
        "declaration_name": qualified_name,
        "declaration_line_start": declaration_line,
        "declaration_line_end": declaration_line,
        "declaration_header_text": header_line.rstrip("\r\n"),
        "declaration_header_sha256": header_sha,
        "declaration_type_text": declaration_type,
        "context_lines": context_lines,
        "context_selection": "NAVIGATION_ONLY_NOT_SEMANTIC_REVIEW",
        "acquisition_receipt_path": CASE_SOURCE_ACQUISITION_PATH,
        "acquisition_receipt_sha256": receipt_sha,
        "evidence_class": "PINNED_SOURCE_BYTES_REOPENED",
        "statement_fidelity": "NOT_REVIEWED",
        "gate_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
    }


def _normalize_lean_type_text(value: str) -> str:
    """Normalize whitespace and the forall glyph for a text-only comparison."""
    return re.sub(r"\s+", " ", value.replace("∀", "forall")).strip()


def _bootstrap_m0_catalog(
    root: Path, dossier: dict[str, object], problem: dict[str, object]
) -> tuple[dict[str, object], dict[str, object], dict[str, object], str]:
    catalog, catalog_file_sha = _read_pinned_json(
        root, BOOTSTRAP_M0_CATALOG_PATH, BOOTSTRAP_M0_CATALOG_FILE_SHA256
    )
    content = catalog.get("content_sha256")
    payload = dict(catalog)
    payload.pop("content_sha256", None)
    if (
        not isinstance(content, str)
        or _digest_bytes(_javascript_json_bytes(payload)) != content
        or content != dossier.get("catalog_snapshot_sha256")
    ):
        raise ValueError("Bootstrap M0 catalog snapshot does not match the dossier content pin")
    problems = catalog.get("problems")
    sources = catalog.get("sources")
    dossier_sources = dossier.get("sources")
    if not isinstance(problems, list) or not isinstance(sources, list) or not isinstance(dossier_sources, list):
        raise ValueError("Bootstrap M0 catalog snapshot has no problem or source list")
    m0_problems = [item for item in problems if isinstance(item, dict) and item.get("id") == problem.get("id")]
    if len(m0_problems) != 1:
        raise ValueError("Bootstrap M0 catalog does not identify one exact problem")
    m0_problem = m0_problems[0]
    if (
        m0_problem.get("informal_statement") != problem.get("statement")
        or m0_problem.get("lean_statement") != problem.get("lean_statement")
        or m0_problem.get("source_ids") != problem.get("source_ids")
    ):
        raise ValueError("Bootstrap dossier statement or source identity differs from the pinned M0 catalog")
    source_ids = m0_problem.get("source_ids")
    if not isinstance(source_ids, list) or len(source_ids) != 1:
        raise ValueError("Bootstrap M0 problem must resolve one pinned source for this review packet")
    m0_sources = [item for item in sources if isinstance(item, dict) and item.get("id") == source_ids[0]]
    if len(m0_sources) != 1:
        raise ValueError("Bootstrap M0 catalog does not identify one exact source")
    m0_source = m0_sources[0]
    dossier_source_matches = [item for item in dossier_sources if isinstance(item, dict) and item.get("id") == source_ids[0]]
    if len(dossier_source_matches) != 1:
        raise ValueError("Bootstrap dossier does not identify one exact source record")
    dossier_source = dossier_source_matches[0]
    metadata = dossier_source.get("metadata")
    if not isinstance(metadata, dict) or any((
        m0_source.get("url") != dossier_source.get("url"),
        m0_source.get("item_locator") != "Mathlib/Data/List/Basic.lean",
        m0_source.get("revision") != metadata.get("revision"),
        m0_source.get("content_sha256") != metadata.get("sha256"),
        m0_source.get("license") != metadata.get("license"),
    )):
        raise ValueError("Bootstrap M0 source identity differs from the dossier source record")
    return catalog, m0_problem, m0_source, catalog_file_sha


def _bootstrap_m6_metrics(
    root: Path,
    records: dict[str, dict[str, object]],
    selected_run: dict[str, object],
) -> dict[str, object]:
    """Reopen pinned M6 metrics and prove they measure this selected M4 source."""
    metrics_receipt = records[BOOTSTRAP_M6_METRICS_PATH]
    run_receipt = records[BOOTSTRAP_M6_RUN_PATH]
    run_request = records[BOOTSTRAP_M6_REQUEST_PATH]
    snapshot = records[BOOTSTRAP_M6_SNAPSHOT_PATH]
    selected_source_sha = selected_run.get("generated_source_sha256")
    declaration = "mathcase_candidate"
    if not isinstance(selected_source_sha, str) or not SOURCE_DIGEST.fullmatch(selected_source_sha):
        raise ValueError("selected Bootstrap M4 run has no generated-source digest for M6 linkage")
    m6_source_sha = metrics_receipt.get("source_sha256")
    if not isinstance(m6_source_sha, str) or not SOURCE_DIGEST.fullmatch(m6_source_sha):
        raise ValueError("pinned Bootstrap M6 receipt has no valid generated-source digest")

    raw_files: dict[str, bytes] = {}
    for path, expected_sha in BOOTSTRAP_M6_RAW_FILE_PINS.items():
        artifact_path = _safe_local_artifact(root, path)
        raw = artifact_path.read_bytes()
        if _digest_bytes(raw) != expected_sha:
            raise ValueError(f"pinned Bootstrap M6 artifact changed: {path}")
        raw_files[path] = raw

    if (
        metrics_receipt.get("schema_version") != "mathcase-m6-lean-expr-metrics-v4"
        or metrics_receipt.get("status") != "METRICS_RECORDED"
        or metrics_receipt.get("evidence_class") != "PINNED_ISOLATED_EXECUTION"
        or metrics_receipt.get("declaration") != declaration
        or metrics_receipt.get("run_receipt_path") != "run-receipt.json"
        or metrics_receipt.get("run_receipt_sha256") != BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_RUN_PATH]
        or metrics_receipt.get("snapshot_manifest_path") != "snapshot/snapshot-manifest.json"
        or metrics_receipt.get("snapshot_manifest_sha256") != BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_SNAPSHOT_PATH]
        or run_receipt.get("schema_version") != "mathcase-m6-pinned-lean-run-v2"
        or run_receipt.get("status") != "EXECUTED_PASS"
        or run_receipt.get("evidence_class") != "PINNED_ISOLATED_EXECUTION"
        or run_receipt.get("source_sha256") != m6_source_sha
        or run_receipt.get("declaration") != declaration
        or run_receipt.get("axiom_observations") != metrics_receipt.get("axiom_observations")
        or run_receipt.get("run_request_path") != "run-request.json"
        or run_receipt.get("run_request_sha256") != BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_REQUEST_PATH]
        or run_receipt.get("snapshot_id") != snapshot.get("snapshot_id")
        or run_request.get("schema_version") != "mathcase-m6-pinned-lean-run-request-v2"
        or run_request.get("source_sha256") != m6_source_sha
        or run_request.get("declaration") != declaration
        or run_request.get("snapshot_id") != snapshot.get("snapshot_id")
        or run_request.get("snapshot_manifest_sha256") != BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_SNAPSHOT_PATH]
        or run_receipt.get("configuration", {}).get("network_mode") != "none"
    ):
        raise ValueError("Bootstrap M6 receipt chain does not bind its pinned source and isolated run")

    source_bytes = raw_files[f"{BOOTSTRAP_M6_DIR}/snapshot/source.lean"]
    if _digest_bytes(source_bytes) != m6_source_sha:
        raise ValueError("Bootstrap M6 snapshot source differs from its pinned generated-source digest")
    snapshot_files = snapshot.get("files")
    source_row = next((item for item in snapshot_files if isinstance(item, dict) and item.get("path") == "source.lean"), None) if isinstance(snapshot_files, list) else None
    if not isinstance(source_row, dict) or source_row.get("sha256") != m6_source_sha or source_row.get("bytes") != len(source_bytes):
        raise ValueError("Bootstrap M6 source snapshot manifest does not bind its pinned generated source")

    stdout = _safe_local_artifact(root, f"{BOOTSTRAP_M6_DIR}/stdout.bin").read_bytes()
    stderr = _safe_local_artifact(root, f"{BOOTSTRAP_M6_DIR}/stderr.bin").read_bytes()
    parsed_metrics = parse_metrics_output((stdout + b"\n" + stderr).decode("utf-8", errors="replace"))
    if parsed_metrics != metrics_receipt.get("metrics"):
        raise ValueError("Bootstrap M6 expression metrics differ from the captured Lean output")
    m6_axioms = metrics_receipt.get("axiom_observations")
    if not isinstance(m6_axioms, dict) or not isinstance(m6_axioms.get(declaration), list):
        raise ValueError("Bootstrap M6 axiom observations are missing or malformed")

    if m6_source_sha != selected_source_sha:
        return {
            "state": "NOT_LINKED",
            "reason": "The saved M6 probe is valid for a different generated source. This selected M4 run remains intact; no M6 measurements are attributed to it.",
            "evidence_class": metrics_receipt.get("evidence_class"),
            "source_sha256": m6_source_sha,
            "selected_m4_source_sha256": selected_source_sha,
            "source_matches_selected_m4_generated_source": False,
            "declaration": declaration,
            "metrics": None,
            "axiom_observations": m6_axioms,
            "receipt_path": BOOTSTRAP_M6_METRICS_PATH,
            "receipt_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_METRICS_PATH],
            "run_receipt_path": BOOTSTRAP_M6_RUN_PATH,
            "run_receipt_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_RUN_PATH],
            "run_request_path": BOOTSTRAP_M6_REQUEST_PATH,
            "run_request_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_REQUEST_PATH],
            "snapshot_manifest_path": BOOTSTRAP_M6_SNAPSHOT_PATH,
            "snapshot_manifest_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_SNAPSHOT_PATH],
            "selected_m4_receipt_sha256": selected_run.get("receipt_sha256"),
            "scope_note": metrics_receipt.get("scope_note"),
        }

    if m6_axioms.get(declaration) != selected_run.get("observed_axioms"):
        raise ValueError("Bootstrap M6 axiom observation differs from the selected M4 receipt")

    return {
        "state": "EXECUTED_PASS",
        "evidence_class": metrics_receipt.get("evidence_class"),
        "source_sha256": m6_source_sha,
        "source_matches_selected_m4_generated_source": True,
        "declaration": declaration,
        "metrics": parsed_metrics,
        "axiom_observations": m6_axioms,
        "receipt_path": BOOTSTRAP_M6_METRICS_PATH,
        "receipt_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_METRICS_PATH],
        "run_receipt_path": BOOTSTRAP_M6_RUN_PATH,
        "run_receipt_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_RUN_PATH],
        "run_request_path": BOOTSTRAP_M6_REQUEST_PATH,
        "run_request_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_REQUEST_PATH],
        "snapshot_manifest_path": BOOTSTRAP_M6_SNAPSHOT_PATH,
        "snapshot_manifest_sha256": BOOTSTRAP_FILE_PINS[BOOTSTRAP_M6_SNAPSHOT_PATH],
        "m4_receipt_sha256": selected_run.get("receipt_sha256"),
        "scope_note": metrics_receipt.get("scope_note"),
    }


def _dedupe_case_sources(sources: list[dict[str, object]]) -> list[dict[str, object]]:
    seen: set[tuple[str, str]] = set()
    unique: list[dict[str, object]] = []
    for source in sources:
        path = source.get("path")
        if not isinstance(path, str):
            continue
        digest = source.get("sha256")
        identity = (path, digest.lower() if isinstance(digest, str) else "<unhashed>")
        if identity in seen:
            continue
        seen.add(identity)
        unique.append(source)
    return unique


def _load_bootstrap_case(root: Path, run_id: str | None = None) -> dict[str, object]:
    records = {
        path: _read_pinned_json(root, path, digest)[0]
        for path, digest in BOOTSTRAP_FILE_PINS.items()
    }
    dossier_path = f"{BOOTSTRAP_DIR}/dossier-revision-v5.json"
    bundle_path = f"{BOOTSTRAP_DIR}/expositor-bundle.json"
    waits_path = f"{BOOTSTRAP_DIR}/bootstrap-gate-waits-r24.json"
    audit_path = f"{BOOTSTRAP_AUDIT_DIR}/stdout.json"
    audit_receipt_path = f"{BOOTSTRAP_AUDIT_DIR}/run-receipt.json"
    dossier = records[dossier_path]
    bundle = records[bundle_path]
    audit = records[audit_path]
    audit_receipt = records[audit_receipt_path]
    waits = records[waits_path]
    case = dossier.get("case")
    problem = dossier.get("problem")
    author_receipt = dossier.get("author_agent_run_receipt")
    if not all(isinstance(value, dict) for value in (case, problem, author_receipt)):
        raise ValueError("Bootstrap dossier is missing its case, problem, or author run identity")
    if (
        case.get("id") != BOOTSTRAP_CASE_ID
        or problem.get("id") != BOOTSTRAP_PROBLEM_ID
        or dossier.get("claim_class") != "BOOTSTRAP/CALIBRATION"
        or audit.get("case_id") != BOOTSTRAP_CASE_ID
        or audit.get("problem_id") != BOOTSTRAP_PROBLEM_ID
        or audit.get("status") != "NOT_READY_FOR_DELIVERY"
        or audit.get("delivery_ready") is not False
        or not isinstance(bundle.get("tiers"), list)
        or [item.get("tier") for item in bundle["tiers"] if isinstance(item, dict)] != BOOTSTRAP_TIER_ORDER
        or bundle.get("problem_id") != BOOTSTRAP_PROBLEM_ID
        or bundle.get("canon_snapshot_sha256") != dossier.get("catalog_snapshot_sha256")
        or not isinstance(audit.get("m7_evidence"), dict)
        or audit["m7_evidence"].get("disposition") != "BLOCKED"
        or audit["m7_evidence"].get("integrity_verified") is not False
        or audit["m7_evidence"].get("external_identity_authenticated") is not False
    ):
        raise ValueError("Bootstrap case, author output, and live audit identities do not agree")
    m0_catalog, m0_problem, m0_source, m0_catalog_sha = _bootstrap_m0_catalog(root, dossier, problem)
    original_source = _read_case_source_view(
        root, BOOTSTRAP_CASE_ID, BOOTSTRAP_PROBLEM_ID, str(m0_source.get("id"))
    )
    if audit_receipt.get("stdout_sha256") != BOOTSTRAP_FILE_PINS[audit_path]:
        raise ValueError("Bootstrap live audit receipt does not bind the displayed audit output")
    audit_tiers = audit.get("exposition_tiers")
    exposition_tiers = dossier.get("expositions")
    if not isinstance(audit_tiers, list) or not isinstance(exposition_tiers, list):
        raise ValueError("Bootstrap audit or dossier is missing the five exposition tiers")
    if [item.get("tier") for item in audit_tiers if isinstance(item, dict)] != BOOTSTRAP_TIER_ORDER or [item.get("tier") for item in exposition_tiers if isinstance(item, dict)] != BOOTSTRAP_TIER_ORDER:
        raise ValueError("Bootstrap tier order differs between source records")
    if any(item.get("exposition_present") is not True or item.get("evaluation_accepted") is not False for item in audit_tiers):
        raise ValueError("Bootstrap audit no longer supports the displayed candidate-only tier state")
    if any(not isinstance(item.get("text"), str) or not item.get("text") for item in exposition_tiers):
        raise ValueError("Bootstrap dossier contains an empty exposition tier")
    if not isinstance(waits.get("gates"), list) and not isinstance(waits.get("gates"), dict):
        raise ValueError("Bootstrap gate-waits record has an unsupported shape")
    audited_author_receipt = audit.get("agent_run_receipt")
    if not isinstance(audited_author_receipt, dict) or audited_author_receipt.get("receipt_id") != author_receipt.get("receipt_id"):
        raise ValueError("Bootstrap author receipt differs between dossier and live audit")
    if bundle.get("expositor_model_id") != author_receipt.get("model"):
        raise ValueError("Bootstrap author model alias differs between bundle and run receipt")

    attempts = dossier.get("attempts")
    evidence = dossier.get("evidence")
    if not isinstance(attempts, list) or not isinstance(evidence, list):
        raise ValueError("Bootstrap dossier is missing its attempt or evidence records")
    evidence_by_id = {item.get("id"): item for item in evidence if isinstance(item, dict)}
    runs: list[dict[str, object]] = []
    for attempt in attempts:
        if not isinstance(attempt, dict):
            raise ValueError("Bootstrap attempt list contains an invalid item")
        candidate_run_id = attempt.get("run_id")
        pin = BOOTSTRAP_RUN_PINS.get(candidate_run_id)
        if not isinstance(candidate_run_id, str) or pin is None:
            raise ValueError("Bootstrap dossier contains an unpinned M4 attempt")
        receipt_path, expected_sha = pin
        receipt, receipt_sha = _read_pinned_json(root, receipt_path, expected_sha)
        evidence_id = receipt.get("evidence_id")
        linked_evidence = evidence_by_id.get(evidence_id)
        if not isinstance(linked_evidence, dict) or attempt.get("problem_id") != BOOTSTRAP_PROBLEM_ID or attempt.get("run_id") != linked_evidence.get("added_by_run_id"):
            raise ValueError("Bootstrap attempt is not linked to its exact dossier evidence record")
        if (
            receipt.get("problem_id") != BOOTSTRAP_PROBLEM_ID
            or receipt.get("status") != "PASSED"
            or receipt.get("kernel_passed") is not True
            or receipt.get("axioms_passed") is not True
            or receipt.get("output_truncated") is not False
            or receipt.get("proof_sha256") != bundle.get("proof_sha256")
            or not isinstance(receipt.get("problem_statement_sha256"), str)
        ):
            raise ValueError("Bootstrap M4 receipt does not pass the saved statement, proof, and axiom checks")
        input_proof = receipt.get("input_proof")
        if input_proof is not None and (
            not isinstance(input_proof, str)
            or _digest_bytes(input_proof.encode("utf-8")) != receipt.get("proof_sha256")
        ):
            raise ValueError("Bootstrap M4 proof text does not match its pinned proof digest")
        runs.append({
            "run_id": candidate_run_id,
            "evidence_id": evidence_id,
            "recorded_at_utc": receipt.get("recorded_at_utc"),
            "proof": input_proof,
            "proof_text_source": "SELECTED_M4_RECEIPT" if isinstance(input_proof, str) else "NOT_EMBEDDED_IN_SELECTED_RECEIPT",
            "proof_text_source_receipt_path": receipt_path if isinstance(input_proof, str) else None,
            "proof_text_source_receipt_sha256": receipt_sha if isinstance(input_proof, str) else None,
            "proof_sha256": receipt.get("proof_sha256"),
            "generated_source_sha256": receipt.get("generated_source_sha256"),
            "statement_sha256": receipt.get("problem_statement_sha256"),
            "receipt_path": receipt_path,
            "receipt_sha256": receipt_sha,
            "status": receipt.get("status"),
            "kernel_passed": receipt.get("kernel_passed"),
            "axioms_passed": receipt.get("axioms_passed"),
            "observed_axioms": receipt.get("observed_axioms"),
            "imports": receipt.get("imports"),
            "lean_version": receipt.get("lean_version"),
        })
    for run in runs:
        if isinstance(run.get("proof"), str):
            continue
        proof_witness = next((item for item in runs if isinstance(item.get("proof"), str)
            and item.get("statement_sha256") == run.get("statement_sha256")
            and item.get("proof_sha256") == run.get("proof_sha256")), None)
        if proof_witness is not None:
            run["proof"] = proof_witness["proof"]
            run["proof_text_source"] = "EXACT_DIGEST_MATCHING_PINNED_M4_RECEIPT"
            run["proof_text_source_receipt_path"] = proof_witness["receipt_path"]
            run["proof_text_source_receipt_sha256"] = proof_witness["receipt_sha256"]
    dossier_m4 = dossier.get("m4_receipt")
    if not isinstance(dossier_m4, dict):
        raise ValueError("Bootstrap dossier has no current M4 receipt binding")
    selected_by_receipt = next((item for item in runs if item["evidence_id"] == dossier_m4.get("evidence_id") and item["receipt_sha256"] == dossier_m4.get("receipt_sha256")), None)
    if selected_by_receipt is None:
        raise ValueError("Bootstrap dossier's current M4 receipt does not resolve to a pinned run")
    selected_run_id = run_id or str(selected_by_receipt["run_id"])
    selected_run = next((item for item in runs if item["run_id"] == selected_run_id), None)
    if selected_run is None:
        raise ValueError("selected Bootstrap run is not an exact pinned run in the dossier")
    if bundle.get("proof_sha256") != selected_run.get("proof_sha256") or bundle.get("canon_snapshot_sha256") != dossier.get("catalog_snapshot_sha256"):
        raise ValueError("Bootstrap exposition does not refer to the selected proof and catalog snapshot")
    metrics = _bootstrap_m6_metrics(root, records, selected_run)

    context = {
        "schema_version": "mathcase-bootstrap-case-context-v1",
        "case_id": BOOTSTRAP_CASE_ID,
        "problem_id": BOOTSTRAP_PROBLEM_ID,
        "title": problem.get("title"),
        "claim_class": dossier.get("claim_class"),
        "informal_statement": problem.get("statement"),
        "lean_statement": problem.get("lean_statement"),
        "statement_audit": {
            "status": "NOT_PASSED",
            "passed": False,
            "basis": "Pinned M0 audit state; reopening the source bytes does not establish semantic fidelity.",
        },
        "original_source": original_source,
        "m0_catalog": {
            "path": BOOTSTRAP_M0_CATALOG_PATH,
            "file_sha256": m0_catalog_sha,
            "content_sha256": m0_catalog.get("content_sha256"),
            "problem": m0_problem,
            "source": m0_source,
        },
        "catalog_status": problem.get("m0_status"),
        "dossier_status": audit.get("status"),
        "delivery_ready": audit.get("delivery_ready"),
        "runs": runs,
        "selected_run": selected_run,
        "metrics": metrics,
        "expositor": {
            "state": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
            "author_call_id": bundle.get("author_call_id"),
            "model_alias": author_receipt.get("model"),
            "immutable_model_snapshot": "NOT_EXPOSED",
            "author_receipt_id": author_receipt.get("receipt_id"),
            "bundle_sha256": BOOTSTRAP_FILE_PINS[bundle_path],
            "dossier_sha256": BOOTSTRAP_FILE_PINS[dossier_path],
            "tiers": [
                {"tier": bundle_item["tier"], "structured_output": bundle_item, "text": dossier_item["text"], "proof_ref": dossier_item.get("proof_ref"), "evaluation_present": False, "evaluation_accepted": False}
                for bundle_item, dossier_item in zip(bundle["tiers"], exposition_tiers, strict=True)
            ],
            "audit": audit.get("m7_evidence"),
        },
        "gates": {item.get("gate"): item.get("status") for item in audit.get("gate_statuses", []) if isinstance(item, dict)},
        "review_bindings": _bootstrap_review_bindings_from_records(records, selected_run, BOOTSTRAP_FILE_PINS, metrics),
        "sources": _dedupe_case_sources([
            {"path": path, "sha256": digest}
            for path, digest in sorted(BOOTSTRAP_FILE_PINS.items())
        ] + [
            {"path": BOOTSTRAP_M0_CATALOG_PATH, "sha256": m0_catalog_sha},
            {"path": original_source["local_artifact_path"], "sha256": original_source["source_sha256"]},
            {"path": original_source["local_license_path"], "sha256": original_source["license_sha256"]},
            {"path": CASE_SOURCE_ACQUISITION_PATH, "sha256": original_source["acquisition_receipt_sha256"]},
            {"path": metrics["receipt_path"], "sha256": metrics["receipt_sha256"]},
            {"path": metrics["run_receipt_path"], "sha256": metrics["run_receipt_sha256"]},
            {"path": metrics["run_request_path"], "sha256": metrics["run_request_sha256"]},
            {"path": metrics["snapshot_manifest_path"], "sha256": metrics["snapshot_manifest_sha256"]},
            {"path": f"{BOOTSTRAP_M6_DIR}/snapshot/source.lean", "sha256": metrics["source_sha256"]},
            {"path": f"{BOOTSTRAP_M6_DIR}/stdout.bin", "sha256": BOOTSTRAP_M6_RAW_FILE_PINS[f"{BOOTSTRAP_M6_DIR}/stdout.bin"]},
        ]),
    }
    context["review_packet"] = _bootstrap_review_packet(root, context, dossier)
    return context


def _bootstrap_review_packet(root: Path, context: dict[str, object], dossier: dict[str, object]) -> dict[str, object]:
    """Project the pinned Bootstrap case into an exact-content review draft."""
    problem = dossier.get("problem")
    selected = context.get("selected_run")
    expositor = context.get("expositor")
    metrics = context.get("metrics")
    tiers = expositor.get("tiers") if isinstance(expositor, dict) else None
    if not isinstance(problem, dict) or not isinstance(selected, dict) or not isinstance(tiers, list) or len(tiers) != 5 or not isinstance(metrics, dict) or metrics.get("state") not in {"EXECUTED_PASS", "NOT_LINKED"}:
        raise ValueError("Bootstrap review packet cannot resolve its exact statement, selected run, and five tiers")
    metrics_linked = metrics.get("state") == "EXECUTED_PASS"

    source_ids = problem.get("source_ids")
    sources = dossier.get("sources")
    if not isinstance(source_ids, list) or not source_ids or not isinstance(sources, list):
        raise ValueError("Bootstrap review packet has no M0 source locator")
    source = next((item for item in sources if isinstance(item, dict) and item.get("id") == source_ids[0]), None)
    if not isinstance(source, dict):
        raise ValueError("Bootstrap review packet cannot reopen its M0 source locator")
    metadata = source.get("metadata")
    if not isinstance(metadata, dict) or not isinstance(metadata.get("sha256"), str) or not SOURCE_DIGEST.fullmatch(metadata["sha256"]):
        raise ValueError("Bootstrap review packet M0 source locator lacks a content digest")
    original_source = context.get("original_source")
    m0_catalog = context.get("m0_catalog")
    if not isinstance(original_source, dict) or not isinstance(m0_catalog, dict):
        raise ValueError("Bootstrap review packet cannot reopen its pinned M0 catalog and source bytes")
    m0_source = m0_catalog.get("source")
    if (
        not isinstance(m0_source, dict)
        or original_source.get("source_id") != source.get("id")
        or original_source.get("source_sha256") != metadata.get("sha256")
        or original_source.get("revision") != metadata.get("revision")
        or original_source.get("license") != metadata.get("license")
        or m0_source.get("id") != source.get("id")
        or m0_source.get("url") != original_source.get("url")
        or m0_source.get("item_locator") != original_source.get("locator")
        or m0_source.get("revision") != original_source.get("revision")
        or m0_source.get("content_sha256") != original_source.get("source_sha256")
        or m0_source.get("license") != original_source.get("license")
        or m0_catalog.get("content_sha256") != dossier.get("catalog_snapshot_sha256")
        or m0_catalog.get("file_sha256") != BOOTSTRAP_M0_CATALOG_FILE_SHA256
    ):
        raise ValueError("Bootstrap case context no longer binds the same M0 source bytes and catalog")

    exposition_records = dossier.get("expositions")
    if not isinstance(exposition_records, list) or len(exposition_records) != 5:
        raise ValueError("Bootstrap review packet has no exact exposition source list")
    author_receipt_paths = {item.get("proof_ref") for item in exposition_records if isinstance(item, dict)}
    if len(author_receipt_paths) != 1:
        raise ValueError("Bootstrap tiers do not resolve to one explicit author proof receipt")
    author_receipt_path = next(iter(author_receipt_paths))
    dossier_path = f"{BOOTSTRAP_DIR}/dossier-revision-v5.json"
    if not isinstance(author_receipt_path, str):
        raise ValueError("Bootstrap exposition author receipt path is invalid")
    author_path = _safe_local_artifact(root, author_receipt_path, dossier_path)
    author_receipt_path = author_path.relative_to(root.resolve()).as_posix()
    author_bytes = author_path.read_bytes()
    author_receipt = json.loads(author_bytes)
    author_sha = _digest_bytes(author_bytes)
    selected_proof_sha = selected.get("proof_sha256")
    selected_statement_sha = selected.get("statement_sha256")
    if (
        author_receipt.get("proof_sha256") != selected_proof_sha
        or author_receipt.get("problem_statement_sha256") != selected_statement_sha
        or author_receipt.get("input_proof") != selected.get("proof")
        or author_receipt.get("status") != "PASSED"
        or author_receipt.get("kernel_passed") is not True
        or author_receipt.get("axioms_passed") is not True
    ):
        raise ValueError("Bootstrap exposition author receipt does not bind the selected M4 statement and proof")

    bundle_path = f"{BOOTSTRAP_DIR}/expositor-bundle.json"
    catalog_source = {
        "source_id": source.get("id"),
        "title": source.get("title"),
        "url": source.get("url"),
        "publisher": source.get("publisher"),
        "revision": metadata.get("revision"),
        "license": metadata.get("license"),
        "source_content_sha256": metadata.get("sha256"),
        "source_bytes_in_packet": False,
        "source_bytes_note": "The exact pinned source file was reopened locally and its SHA-256 matched the M0 record. The full file is not embedded; the exact declaration excerpt appears below. This is not a semantic statement-fidelity review.",
        "fetch_status": source.get("fetch_status"),
        "audit_status": source.get("audit_status"),
    }
    packet_tiers = []
    tier_text_hashes: dict[str, str] = {}
    tier_structure_hashes: dict[str, str] = {}
    for tier in tiers:
        if not isinstance(tier, dict) or not isinstance(tier.get("text"), str) or not isinstance(tier.get("structured_output"), dict):
            raise ValueError("Bootstrap review packet contains an incomplete exposition tier")
        name = str(tier.get("tier"))
        text_sha = _digest_bytes(tier["text"].encode("utf-8"))
        structure_sha = _digest_bytes(_canonical_json_bytes(tier["structured_output"]))
        tier_text_hashes[name] = text_sha
        tier_structure_hashes[name] = structure_sha
        packet_tiers.append({
            "tier": name,
            "text": tier["text"],
            "structured_output": tier["structured_output"],
            "text_sha256": text_sha,
            "structured_output_sha256": structure_sha,
            "proof_ref": tier.get("proof_ref"),
            "evaluation_present": tier.get("evaluation_present"),
            "evaluation_accepted": tier.get("evaluation_accepted"),
        })

    content_bindings = {
        "case_id": context.get("case_id"),
        "problem_id": context.get("problem_id"),
        "selected_run_id": selected.get("run_id"),
        "informal_statement_sha256": _digest_bytes(str(problem.get("statement", "")).encode("utf-8")),
        "lean_statement_sha256": _digest_bytes(str(problem.get("lean_statement", "")).encode("utf-8")),
        "m4_statement_sha256": selected_statement_sha,
        "proof_sha256": selected_proof_sha,
        "m4_receipt_sha256": selected.get("receipt_sha256"),
        "m6_metrics_receipt_sha256": metrics.get("receipt_sha256") if metrics_linked else None,
        "m6_run_receipt_sha256": metrics.get("run_receipt_sha256") if metrics_linked else None,
        "author_proof_receipt_sha256": author_sha,
        "dossier_sha256": BOOTSTRAP_FILE_PINS[dossier_path],
        "expositor_bundle_sha256": BOOTSTRAP_FILE_PINS[bundle_path],
        "catalog_snapshot_sha256": dossier.get("catalog_snapshot_sha256"),
        "catalog_snapshot_file_sha256": m0_catalog.get("file_sha256"),
        "catalog_source_sha256": metadata.get("sha256"),
        "original_source_sha256": original_source.get("source_sha256"),
        "original_source_license_sha256": original_source.get("license_sha256"),
        "source_declaration_header_sha256": original_source.get("declaration_header_sha256"),
        "source_acquisition_receipt_sha256": original_source.get("acquisition_receipt_sha256"),
        "tier_text_sha256": tier_text_hashes,
        "tier_structure_sha256": tier_structure_hashes,
    }
    packet_sources = [
        {"path": dossier_path, "sha256": BOOTSTRAP_FILE_PINS[dossier_path]},
        {"path": bundle_path, "sha256": BOOTSTRAP_FILE_PINS[bundle_path]},
        {"path": selected.get("receipt_path"), "sha256": selected.get("receipt_sha256")},
    ]
    if metrics_linked:
        packet_sources.extend([
            {"path": metrics.get("receipt_path"), "sha256": metrics.get("receipt_sha256")},
            {"path": metrics.get("run_receipt_path"), "sha256": metrics.get("run_receipt_sha256")},
            {"path": metrics.get("snapshot_manifest_path"), "sha256": metrics.get("snapshot_manifest_sha256")},
        ])
    packet_sources.extend([
        {"path": author_receipt_path, "sha256": author_sha},
        {"path": catalog_source.get("url"), "sha256": metadata.get("sha256"), "revision": metadata.get("revision")},
        {"path": m0_catalog.get("path"), "sha256": m0_catalog.get("file_sha256"), "content_sha256": m0_catalog.get("content_sha256")},
        {"path": original_source.get("local_artifact_path"), "sha256": original_source.get("source_sha256"), "revision": original_source.get("revision")},
        {"path": original_source.get("local_license_path"), "sha256": original_source.get("license_sha256"), "license": original_source.get("license")},
        {"path": original_source.get("acquisition_receipt_path"), "sha256": original_source.get("acquisition_receipt_sha256")},
    ])
    packet: dict[str, object] = {
        "schema_version": "mathcase-review-packet-v1",
        "status": "DRAFT",
        "case_id": context.get("case_id"),
        "problem_id": context.get("problem_id"),
        "claim_class": context.get("claim_class"),
        "selected_run_id": selected.get("run_id"),
        "source_statement": {
            "text": problem.get("statement"),
            "locator": catalog_source,
            "statement_origin": "Exact human-readable statement stored in the pinned M0 dossier record.",
            "statement_audit": context.get("statement_audit"),
            "original_source": original_source,
            "assumptions_note": "The pinned M0 record has no separate assumptions field. The formal statement's binders are displayed below; do not infer additional assumptions.",
        },
        "formal_statement": {
            "text": problem.get("lean_statement"),
            "scope": ["implicit α : Type u", "implicit a, b, c : α"],
            "hypotheses_note": "No separate distinctness, decidable-equality, or other hypothesis is recorded in the source statement.",
        },
        "proof": {
            "text": selected.get("proof"),
            "sha256": selected_proof_sha,
            "m4_run": selected,
            "observed_axioms": selected.get("observed_axioms"),
            "structure_metrics": metrics,
        },
        "proof_lineage": {
            "same_statement_and_proof_bytes": True,
            "author_receipt": {"path": author_receipt_path, "sha256": author_sha, "imports": author_receipt.get("imports"), "status": author_receipt.get("status")},
            "selected_m4_receipt": {"path": selected.get("receipt_path"), "sha256": selected.get("receipt_sha256"), "imports": selected.get("imports"), "status": selected.get("status")},
            "m6_metrics": {
                "receipt_path": metrics.get("receipt_path"),
                "receipt_sha256": metrics.get("receipt_sha256"),
                "run_receipt_path": metrics.get("run_receipt_path"),
                "run_receipt_sha256": metrics.get("run_receipt_sha256"),
                "source_sha256": metrics.get("source_sha256"),
                "source_matches_selected_m4_generated_source": metrics.get("source_matches_selected_m4_generated_source"),
                "linked_to_selected_run": metrics_linked,
                "state": metrics.get("state"),
                "scope_note": metrics.get("scope_note"),
            },
            "note": "The author receipt and selected M4 receipt bind the same statement digest, proof digest, and proof text. " + ("M6 measures the exact selected M4 generated source in a separate pinned, network-isolated run." if metrics_linked else "The pinned M6 probe is valid but belongs to a different M4 generated source; no M6 measurements are attributed to this selected run.") + " Import lists and execution lineages remain visible separately.",
        },
        "expositions": packet_tiers,
        "review_questions": [
            {"id": "statement_fidelity", "prompt": "Does the plain-language source statement preserve the formal claim, including the inclusive 'or' and the meaning of list membership?", "source_hint": "Compare the source and formal statements above."},
            {"id": "assumptions_scope", "prompt": "Are the type and element binders clear, and is the absence of extra hypotheses described accurately?", "source_hint": "Formal statement and assumptions note."},
            {"id": "proof_alignment", "prompt": "Does the displayed proof text correspond to the exact checked Lean proof, and are any M6 structure measurements described without implying proof quality?", "source_hint": "Selected M4 receipt, M6 linkage state, and proof-lineage details." if not metrics_linked else "Selected M4 receipt, exact-source M6 metrics, and proof-lineage details."},
            {"id": "kernel_and_axioms", "prompt": "Are the kernel result, observed axioms, Lean version, and imports represented accurately and with enough context?", "source_hint": "Selected M4 receipt details."},
            {"id": "tier_high_school", "prompt": "Does the high-school tier explain both directions without adding unsupported claims?", "source_hint": "HIGH_SCHOOL text and structured output."},
            {"id": "tier_associate", "prompt": "Is the associate tier's list-tail explanation understandable and mathematically accurate?", "source_hint": "ASSOCIATE text and structured output."},
            {"id": "tier_bachelor", "prompt": "Does the bachelor tier handle generality and boundary cases without assuming decidable equality?", "source_hint": "BACHELOR text and structured output."},
            {"id": "tier_master", "prompt": "Does the master tier distinguish the mathematical argument from what the simplifier did?", "source_hint": "MASTER text and structured output."},
            {"id": "tier_doctorate", "prompt": "Does the doctorate tier preserve the calibration-only claim boundary and avoid implying discovery?", "source_hint": "DOCTORATE text and structured output."},
            {"id": "cross_tier_consistency", "prompt": "Do the five tiers remain consistent about assumptions, repeated entries, both directions, and the proof's limits?", "source_hint": "Compare all five tiers."},
            {"id": "other_concerns", "prompt": "What important concern is missing from the questions above?", "source_hint": "Give a precise tier, sentence, or source location when possible."},
        ],
        "review_state": {
            "reviewer_identity": "MISSING · no independent reviewer identity has been authenticated",
            "review_scope": "MISSING · the V3 statement-review scope has not been approved or bound",
            "independence": "NOT ESTABLISHED · different model-name strings do not prove reviewer independence",
            "m7": "BLOCKED · M7 explanation review needs fresh item-specific clearance and authenticated observations",
            "next_action": "Owner: decide whether to approve an independent reviewer and exact V3 statement-review scope. M7 is separate: fresh item-specific clearance is required before independent explanation review. This draft satisfies neither.",
            "gate_effect": "NONE",
            "training_use": "NOT_AUTHORIZED",
        },
        "content_bindings": content_bindings,
        "sources": packet_sources,
    }
    packet["packet_sha256"] = _digest_bytes(_canonical_json_bytes(packet))
    return packet


def _bootstrap_review_bindings_from_records(records: dict[str, dict[str, object]], selected_run: dict[str, object], pins: dict[str, str], metrics: dict[str, object]) -> dict[str, dict[str, object]]:
    dossier = records[f"{BOOTSTRAP_DIR}/dossier-revision-v5.json"]
    bundle = records[f"{BOOTSTRAP_DIR}/expositor-bundle.json"]
    exposition_tiers = dossier["expositions"]
    statement_sha = selected_run["statement_sha256"]
    proof_sha = selected_run["proof_sha256"]
    m4_sha = selected_run["receipt_sha256"]
    exposition_text = "\n\n".join(item["text"] for item in exposition_tiers)
    exposition_sha = _digest_bytes(exposition_text.encode("utf-8"))
    case_id = BOOTSTRAP_CASE_ID
    statement_parts = {
        "schema_version": "mathcase-review-binding-v1",
        "target_kind": "statement",
        "case_id": case_id,
        "problem_statement_sha256": statement_sha,
    }
    proof_parts = {
        "schema_version": "mathcase-review-binding-v1",
        "target_kind": "proof",
        "case_id": case_id,
        "problem_statement_sha256": statement_sha,
        "proof_sha256": proof_sha,
        "m4_receipt_sha256": m4_sha,
        "m6_metrics_receipt_sha256": metrics.get("receipt_sha256") if metrics.get("state") == "EXECUTED_PASS" else None,
        "m6_run_receipt_sha256": metrics.get("run_receipt_sha256") if metrics.get("state") == "EXECUTED_PASS" else None,
    }
    exposition_parts = {
        "schema_version": "mathcase-review-binding-v2",
        "target_kind": "draft_explanation",
        "case_id": case_id,
        "problem_statement_sha256": statement_sha,
        "proof_sha256": proof_sha,
        "exposition_sha256": exposition_sha,
        "m4_receipt_sha256": m4_sha,
        "bundle_sha256": pins[f"{BOOTSTRAP_DIR}/expositor-bundle.json"],
        "dossier_sha256": pins[f"{BOOTSTRAP_DIR}/dossier-revision-v5.json"],
        "m6_metrics_receipt_sha256": metrics.get("receipt_sha256") if metrics.get("state") == "EXECUTED_PASS" else None,
        "m6_run_receipt_sha256": metrics.get("run_receipt_sha256") if metrics.get("state") == "EXECUTED_PASS" else None,
        "author_receipt_id": dossier["author_agent_run_receipt"]["receipt_id"],
        "run_id": selected_run["run_id"],
    }

    def make(kind: str, target_sha: str, parts: dict[str, object], exposition: str | None = None) -> dict[str, object]:
        return {
            "kind": kind,
            "case_id": case_id,
            "problem_statement_sha256": statement_sha,
            "proof_sha256": proof_sha,
            "exposition_sha256": exposition,
            "target_sha256": target_sha,
            "evidence_revision_sha256": _digest_bytes(_javascript_json_bytes(parts)),
        }

    return {
        "statement": make("statement", str(statement_sha), statement_parts),
        "proof": make("proof", str(proof_sha), proof_parts),
        "draft_explanation": make("draft_explanation", exposition_sha, exposition_parts, exposition_sha),
    }


def _validated_note_shape(note: object) -> dict[str, object]:
    top_keys = {
        "schema_version", "id", "created_at", "reviewer_label", "identity_status",
        "feedback_type", "body", "target", "gate_effect", "training_use",
    }
    target_keys = {
        "kind", "case_id", "problem_statement_sha256", "proof_sha256",
        "exposition_sha256", "target_sha256", "evidence_revision_sha256",
    }
    if not isinstance(note, dict) or set(note) != top_keys:
        raise ValueError("review note has an unsupported shape")
    target = note.get("target")
    schema = note.get("schema_version")
    expected_target_keys = target_keys | {"run_id"} if schema == "mathcase-owner-review-note-v3" else target_keys
    if not isinstance(target, dict) or set(target) != expected_target_keys:
        raise ValueError("review note target has an unsupported shape")
    kind = target.get("kind")
    if schema == "mathcase-owner-review-note-v1":
        if kind not in {"statement", "proof"} or target.get("exposition_sha256") is not None:
            raise ValueError("review note version does not match its target")
    elif schema == "mathcase-owner-review-note-v2":
        if kind != "draft_explanation" or not isinstance(target.get("exposition_sha256"), str):
            raise ValueError("review note version does not match its target")
    elif schema == "mathcase-owner-review-note-v3":
        if kind not in {"statement", "proof", "draft_explanation"} or not isinstance(target.get("run_id"), str) or not target["run_id"]:
            raise ValueError("run-bound review note version does not match its target")
        if kind == "draft_explanation" and not isinstance(target.get("exposition_sha256"), str):
            raise ValueError("run-bound exposition note has no exposition digest")
        if kind != "draft_explanation" and target.get("exposition_sha256") is not None:
            raise ValueError("run-bound statement or proof note unexpectedly has an exposition digest")
    else:
        raise ValueError("review note version is unsupported")
    if not isinstance(note.get("id"), str) or not REVIEW_ID.fullmatch(note["id"]):
        raise ValueError("review note ID is malformed")
    if not isinstance(note.get("created_at"), str):
        raise ValueError("review note timestamp is missing")
    try:
        timestamp = datetime.fromisoformat(note["created_at"].replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("review note timestamp is invalid") from exc
    if timestamp.tzinfo is None:
        raise ValueError("review note timestamp must include a timezone")
    if not isinstance(note.get("reviewer_label"), str) or len(note["reviewer_label"]) > 80:
        raise ValueError("review note label is invalid")
    if note.get("feedback_type") not in {"OBSERVATION", "QUESTION", "CONCERN", "CORRECTION"}:
        raise ValueError("review note feedback type is unsupported")
    body = note.get("body")
    if not isinstance(body, str) or not body.strip() or len(body) > 5000:
        raise ValueError("review note body must contain 1 to 5000 characters")
    if any(ord(char) < 32 and char not in "\n\r\t" for char in body):
        raise ValueError("review note body contains a control character")
    if (
        note.get("identity_status") != "UNVERIFIED_SELF_DESCRIPTION"
        or note.get("gate_effect") != "NONE"
        or note.get("training_use") != "NOT_AUTHORIZED"
    ):
        raise ValueError("review notes cannot declare identity, gate effect, or training authority")
    if target.get("case_id") not in {"nat-add-assoc", BOOTSTRAP_CASE_ID}:
        raise ValueError("review note case ID is not in the local preview")
    for key in ("problem_statement_sha256", "proof_sha256", "target_sha256", "evidence_revision_sha256"):
        value = target.get(key)
        if not isinstance(value, str) or not SOURCE_DIGEST.fullmatch(value):
            raise ValueError(f"review note {key} is malformed")
    if schema in {"mathcase-owner-review-note-v2", "mathcase-owner-review-note-v3"} and kind == "draft_explanation":
        if not SOURCE_DIGEST.fullmatch(target["exposition_sha256"]):
            raise ValueError("review note exposition digest is malformed")
    if target["target_sha256"] != (target["problem_statement_sha256"] if kind == "statement" else target["proof_sha256"] if kind == "proof" else target["exposition_sha256"]):
        raise ValueError("review note target digest does not match its target")
    return note


def _validated_system_assurance_review_shape(value: object) -> dict[str, object]:
    keys = {
        "schema_version", "id", "recorded_at_utc", "scope_id", "scope_statement",
        "scope_statement_sha256", "reviewer_label", "identity_status", "reviewed_components",
        "gate_effect", "training_use",
    }
    if not isinstance(value, dict) or set(value) != keys:
        raise ValueError("system-assurance review record has an unsupported shape")
    if value.get("schema_version") != "mathcase-system-human-review-v2":
        raise ValueError("system-assurance review schema is unsupported")
    if not isinstance(value.get("id"), str) or not REVIEW_ID.fullmatch(value["id"]):
        raise ValueError("system-assurance review ID is malformed")
    recorded_at = value.get("recorded_at_utc")
    if not isinstance(recorded_at, str):
        raise ValueError("system-assurance review timestamp is missing")
    try:
        timestamp = datetime.fromisoformat(recorded_at.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("system-assurance review timestamp is invalid") from exc
    if timestamp.tzinfo is None:
        raise ValueError("system-assurance review timestamp must include a timezone")
    if value.get("scope_id") != SYSTEM_ASSURANCE_REVIEW_SCOPE_ID or value.get("scope_statement") != SYSTEM_ASSURANCE_REVIEW_SCOPE:
        raise ValueError("system-assurance review scope is not the supported checklist scope")
    expected_scope_hash = _digest_bytes(SYSTEM_ASSURANCE_REVIEW_SCOPE.encode("utf-8"))
    if value.get("scope_statement_sha256") != expected_scope_hash:
        raise ValueError("system-assurance review scope digest does not match its statement")
    if value.get("reviewer_label") != "Local human reviewer (identity unverified)":
        raise ValueError("system-assurance review identity label is unsupported")
    if value.get("identity_status") != "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED":
        raise ValueError("system-assurance review cannot claim an authenticated identity")
    if value.get("gate_effect") != "NONE" or value.get("training_use") != "NOT_AUTHORIZED":
        raise ValueError("system-assurance review cannot change gates or authorize training")
    reviewed = value.get("reviewed_components")
    if not isinstance(reviewed, dict) or not set(reviewed).issubset(SYSTEM_ASSURANCE_REVIEW_COMPONENTS):
        raise ValueError("system-assurance review component set is unsupported")
    if any(not isinstance(digest, str) or not SOURCE_DIGEST.fullmatch(digest) for digest in reviewed.values()):
        raise ValueError("system-assurance review component digest is malformed")
    return value


def _read_nat_case_handoff(
    root: Path,
    problem: dict[str, object],
    m4: dict[str, object],
    m6: dict[str, object],
    artifact_refs: dict[str, str],
) -> tuple[dict[str, object], dict[str, object], dict[str, object], str]:
    """Reopen the five-tier draft, prior extraction witness, and M4/M6 dossier."""
    handoff, handoff_sha = _read_pinned_json(root, NAT_CASE_HANDOFF_PATH, NAT_CASE_HANDOFF_SHA256)
    if handoff_sha != NAT_CASE_HANDOFF_SHA256 or handoff.get("schema_version") != "mathcase-nat-case-handoff-v1" or handoff.get("status") != "INCOMPLETE_UNSIGNED":
        raise ValueError("the Nat case handoff record is not the pinned incomplete local record")
    if handoff.get("case_id") != "nat-add-assoc" or handoff.get("problem_id") != problem.get("id"):
        raise ValueError("the Nat case handoff identifies a different case or problem")

    m4_path, m6_path, m6_run_path = m4.get("lean_receipt_path"), m6.get("receipt_path"), m6.get("run_receipt_path")
    if not all(isinstance(value, str) for value in (m4_path, m6_path, m6_run_path)):
        raise ValueError("the Nat handoff cannot bind the exact M4/M6 receipt paths")
    expected_sources = (
        ("m4_receipt", m4_path),
        ("m6_metrics_receipt", m6_path),
        ("m6_run_receipt", m6_run_path),
    )
    for field, path_value in expected_sources:
        entry = handoff.get(field)
        if not isinstance(entry, dict) or entry.get("path") != path_value or entry.get("sha256") != artifact_refs.get(path_value):
            raise ValueError(f"the Nat handoff has a mismatched {field} pin")

    def read_asset(entry: object, *, prefix: str, label: str, as_json: bool = True) -> tuple[object, str]:
        if not isinstance(entry, dict):
            raise ValueError(f"the Nat handoff has no {label} reference")
        relative = entry.get("path")
        expected = entry.get("sha256")
        if (
            not isinstance(relative, str) or not relative.startswith(prefix)
            or not isinstance(expected, str) or not SOURCE_DIGEST.fullmatch(expected)
        ):
            raise ValueError(f"the Nat handoff {label} path or digest is malformed")
        path = _safe_local_artifact(root, relative)
        raw = path.read_bytes()
        actual = _digest_bytes(raw)
        if actual != expected:
            raise ValueError(f"the Nat handoff {label} digest does not match its bytes")
        if not as_json:
            return raw, actual
        try:
            value = json.loads(raw)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError(f"the Nat handoff {label} JSON is malformed") from exc
        if not isinstance(value, dict):
            raise ValueError(f"the Nat handoff {label} is not a JSON object")
        return value, actual

    candidate_entry = handoff.get("candidate_exposition")
    prior_entry = handoff.get("previous_candidate_exposition")
    dossier_entry = handoff.get("dossier")
    source_entry = handoff.get("source_html_snapshot")
    candidate, candidate_sha = read_asset(
        candidate_entry, prefix="ui/prototype/data/", label="tiered explanation draft",
    )
    prior_candidate, prior_sha = read_asset(
        prior_entry,
        prefix="data/local/staging/nat-add-assoc-case-handoff-r1/candidate-exposition/",
        label="prior untiered exposition",
    )
    dossier, dossier_sha = read_asset(
        dossier_entry,
        prefix="data/local/dossier-store/cases/nat-add-assoc/",
        label="DossierStore snapshot",
    )
    source_raw, source_sha = read_asset(
        source_entry,
        prefix="data/local/staging/nat-add-assoc-case-handoff-r1/source-ui-",
        label="prior source UI snapshot",
        as_json=False,
    )
    assert isinstance(candidate, dict) and isinstance(prior_candidate, dict) and isinstance(dossier, dict) and isinstance(source_raw, bytes)
    if not isinstance(candidate_entry, dict) or candidate_entry.get("path") != NAT_CASE_CANDIDATE_PATH or candidate_sha != NAT_CASE_CANDIDATE_SHA256:
        raise ValueError("the Nat tiered exposition is not the pinned draft artifact")
    if not isinstance(prior_entry, dict) or prior_entry.get("path") != NAT_CASE_PRIOR_CANDIDATE_PATH or prior_sha != NAT_CASE_PRIOR_CANDIDATE_SHA256:
        raise ValueError("the prior Nat exposition is not the retained content-addressed artifact")
    if not isinstance(dossier_entry, dict) or dossier_entry.get("path") != NAT_CASE_DOSSIER_PATH or dossier_sha != NAT_CASE_DOSSIER_SHA256:
        raise ValueError("the Nat DossierStore snapshot is not the pinned dossier revision")
    if not isinstance(source_entry, dict) or source_entry.get("path") != NAT_CASE_SOURCE_SNAPSHOT_PATH or source_sha != NAT_CASE_SOURCE_SNAPSHOT_SHA256:
        raise ValueError("the retained prior source HTML is not the pinned extraction witness")
    if Path(dossier_entry["path"]).name != f"{dossier_sha}.json":
        raise ValueError("the Nat dossier filename is not content addressed")

    prior_text = prior_candidate.get("text")
    if (
        prior_candidate.get("schema_version") != "mathcase-candidate-exposition-v1"
        or prior_candidate.get("status") != "CANDIDATE_ONLY_NOT_ACCEPTED_M7"
        or prior_candidate.get("case_id") != "nat-add-assoc"
        or prior_candidate.get("problem_id") != problem.get("id")
        or prior_candidate.get("problem_statement_sha256") != problem.get("statement_sha256")
        or prior_candidate.get("run_id") != m4.get("run_id")
        or prior_candidate.get("proof_sha256") != m4.get("proof_sha256")
        or not isinstance(prior_text, str)
        or not isinstance(prior_candidate.get("text_sha256"), str)
        or _digest_bytes(prior_text.encode("utf-8")) != prior_candidate.get("text_sha256")
    ):
        raise ValueError("the retained prior Nat exposition is malformed or belongs to a different proof")
    source_parser = _TargetTextParser("draft-explanation")
    source_parser.feed(source_raw.decode("utf-8"))
    if source_parser.matches != 1 or "".join(source_parser.text) != prior_text:
        raise ValueError("the retained prior source HTML does not match its untiered exposition")
    if source_parser.attributes.get("data-parent-proof-sha256") != m4.get("proof_sha256") or source_parser.attributes.get("data-parent-run-id") != m4.get("run_id"):
        raise ValueError("the retained prior source HTML does not identify the exact parent M4 run and proof")

    m4_sha, m6_sha, m6_run_sha = artifact_refs[m4_path], artifact_refs[m6_path], artifact_refs[m6_run_path]
    expected_candidate = {
        "schema_version": "mathcase-tiered-exposition-draft-v1",
        "status": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
        "origin": "LOCAL_AUTHORED_DRAFT",
        "case_id": "nat-add-assoc",
        "problem_id": problem.get("id"),
        "informal_statement": problem.get("informal_statement"),
        "lean_statement": problem.get("lean_statement"),
        "problem_statement_sha256": problem.get("statement_sha256"),
        "run_id": m4.get("run_id"),
        "proof_sha256": m4.get("proof_sha256"),
        "proof_text": m4.get("proof"),
        "m4_receipt_sha256": m4_sha,
        "m6_metrics_receipt_sha256": m6_sha,
        "m6_run_receipt_sha256": m6_run_sha,
    }
    for field, expected in expected_candidate.items():
        if candidate.get(field) != expected:
            raise ValueError(f"the Nat five-tier draft does not bind its exact {field}")
    if _digest_bytes(str(candidate.get("proof_text", "")).encode("utf-8")) != candidate.get("proof_sha256"):
        raise ValueError("the Nat five-tier draft proof text does not match its proof digest")
    expected_source = {
        "source_id": "lean4_nat_basic_v4331",
        "repository": "leanprover/lean4",
        "revision": "819816b2e0a3bf405af45ae5c7af2491d8f5bee6",
        "path": "src/Init/Data/Nat/Basic.lean",
        "line": 166,
        "file_sha256": "92edcd298633bc57f70cf6c9cea73a3b6f984b91b3c8cc8fcc72f57bada0ee36",
        "license": "Apache-2.0",
        "license_url": "https://github.com/leanprover/lean4/blob/819816b2e0a3bf405af45ae5c7af2491d8f5bee6/LICENSE",
        "statement_comparison": "NORMALIZED_TEXT_MATCH",
        "semantic_review": "NOT_PERFORMED",
    }
    if candidate.get("source") != expected_source:
        raise ValueError("the Nat five-tier draft source binding changed or lacks its review boundary")
    tiers = candidate.get("tiers")
    expected_tiers = ["HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE"]
    if not isinstance(tiers, list) or len(tiers) != len(expected_tiers):
        raise ValueError("the Nat explanation bundle must contain exactly five audience tiers")
    for index, tier in enumerate(tiers):
        if not isinstance(tier, dict) or tier.get("tier") != expected_tiers[index]:
            raise ValueError("the Nat explanation bundle has a missing, duplicate, or reordered tier")
        for field in ("title", "purpose", "explanation", "example", "boundary"):
            value = tier.get(field)
            if not isinstance(value, str) or not value.strip() or "\x00" in value:
                raise ValueError(f"the Nat explanation tier {expected_tiers[index]} has an invalid {field}")
    review = candidate.get("review")
    if (
        not isinstance(review, dict) or review.get("status") != "NOT_REVIEWED"
        or review.get("identity_status") != "UNVERIFIED"
        or not isinstance(review.get("questions"), list) or len(review["questions"]) != 5
        or any(not isinstance(question, str) or not question.strip() for question in review["questions"])
        or candidate.get("gate_effect") != "NONE"
        or candidate.get("training_use") != "NOT_AUTHORIZED"
        or candidate.get("public_export") != "NOT_CLEARED"
    ):
        raise ValueError("the Nat explanation draft review or use boundary is incomplete")
    candidate["artifact_path"] = candidate_entry["path"]
    candidate["artifact_sha256"] = candidate_sha

    expected_ref = {
        "schema_version": "mathcase-candidate-exposition-ref-v1",
        "status": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
        "relative_path": candidate_entry["path"],
        "artifact_sha256": candidate_sha,
        "case_id": "nat-add-assoc",
        "problem_id": problem.get("id"),
        "problem_statement_sha256": problem.get("statement_sha256"),
        "run_id": m4.get("run_id"),
        "proof_sha256": m4.get("proof_sha256"),
        "generated_source_sha256": m4.get("generated_source_sha256"),
        "m4_receipt_sha256": m4_sha,
        "m6_metrics_receipt_sha256": m6_sha,
        "m6_run_receipt_sha256": m6_run_sha,
    }
    m4_receipt = json.loads(_safe_local_artifact(root, m4_path).read_text(encoding="utf-8"))
    dossier_candidate = dossier.get("candidate_exposition")
    if (
        dossier.get("schema_version") != "mathcase-dossier-v2"
        or dossier.get("case", {}).get("id") != "nat-add-assoc"
        or dossier.get("problem", {}).get("id") != problem.get("id")
        or dossier_candidate != expected_ref
        or dossier.get("m4_receipt") != {"evidence_id": m4_receipt.get("evidence_id"), "receipt_sha256": m4_sha}
    ):
        raise ValueError("the reopened dossier does not bind the exact tiered draft and M4 receipt")
    m6_ref = dossier.get("m6_structural_metrics")
    if (
        not isinstance(m6_ref, dict)
        or m6_ref.get("status") != "ATTACHED_STRUCTURAL_ONLY"
        or m6_ref.get("parent_dossier_sha256") != NAT_CASE_M6_PARENT_DOSSIER_SHA256
        or m6_ref.get("m4_receipt_sha256") != m4_sha
        or m6_ref.get("metrics_receipt_sha256") != m6_sha
        or m6_ref.get("run_receipt_sha256") != m6_run_sha
        or m6_ref.get("problem_statement_sha256") != problem.get("statement_sha256")
        or m6_ref.get("generated_source_sha256") != m4.get("generated_source_sha256")
    ):
        raise ValueError("the reopened dossier does not bind the exact M4/M6 structural chain")
    if dossier.get("claim_class") != "BOOTSTRAP/CALIBRATION" or dossier.get("claim_class_note") != "Known result; plumbing proof only; not a discovery-class dossier.":
        raise ValueError("the Nat dossier has an incorrect claim class")
    if dossier.get("expositions", []) != [] or dossier.get("exposition_evaluations", []) != [] or dossier.get("verdict", {}).get("status") != "UNRESOLVED":
        raise ValueError("the Nat draft was incorrectly promoted to accepted exposition or a resolved verdict")
    gate_status = {item.get("gate"): item.get("status") for item in dossier.get("verifications", []) if isinstance(item, dict)}
    if gate_status != {"V1": "PASSED", "V2": "PASSED", "V3": "BLOCKED", "V4": "BLOCKED", "V5": "BLOCKED", "V6": "BLOCKED", "V7": "BLOCKED"}:
        raise ValueError("the Nat dossier gate states do not preserve the exact M4-only readiness boundary")
    return handoff, dossier, candidate, handoff_sha


def _current_review_bindings(root: Path = ROOT, case_id: str = "nat-add-assoc", run_id: str | None = None) -> dict[str, dict[str, object]]:
    """Reopen the pinned current M4/M6 chain before accepting a browser annotation."""
    if case_id == BOOTSTRAP_CASE_ID:
        return _load_bootstrap_case(root, run_id).get("review_bindings", {})
    if case_id != "nat-add-assoc":
        raise ValueError("case ID is not in the local preview")
    audit_path = root.joinpath(*REVIEW_AUDIT_PATH.split("/"))
    if not _is_safe_regular_file(audit_path):
        raise ValueError("the pinned M4/M6 review context is unavailable")
    audit_bytes = audit_path.read_bytes()
    if _digest_bytes(audit_bytes) != REVIEW_AUDIT_SHA256:
        raise ValueError("the pinned M4/M6 review context changed")
    audit = json.loads(audit_bytes)
    if audit.get("schema_version") != "mathcase-m4-m6-evidence-link-audit-v1" or audit.get("status") != "PASS_WITH_OPEN_CONSUMER_GAP" or audit.get("claim_class") != "BOOTSTRAP/CALIBRATION":
        raise ValueError("the M4/M6 review context is not the expected calibration run")
    refs_list = audit.get("artifact_refs")
    if not isinstance(refs_list, list):
        raise ValueError("the M4/M6 review context has no artifact manifest")
    refs: dict[str, str] = {}
    for item in refs_list:
        if not isinstance(item, dict) or not isinstance(item.get("path"), str) or not isinstance(item.get("sha256"), str):
            raise ValueError("the M4/M6 artifact manifest is malformed")
        if item["path"] in refs:
            raise ValueError("the M4/M6 artifact manifest contains duplicate paths")
        refs[item["path"]] = item["sha256"]

    def read_ref(route: str) -> dict[str, object]:
        expected = refs.get(route)
        parts = route.split("/")
        if not expected or not SOURCE_DIGEST.fullmatch(expected) or not route.startswith("data/local/") or any(part in {"", ".", ".."} for part in parts):
            raise ValueError("the M4/M6 artifact path is not pinned")
        path = root.joinpath(*parts)
        if not _is_safe_regular_file(path):
            raise ValueError("a pinned M4/M6 artifact is unavailable")
        raw = path.read_bytes()
        if _digest_bytes(raw) != expected:
            raise ValueError("a pinned M4/M6 artifact changed")
        value = json.loads(raw)
        if not isinstance(value, dict):
            raise ValueError("a pinned M4/M6 JSON artifact is malformed")
        return value

    stdout_path = "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/stdout.json"
    problem_path = "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/problem.json"
    launch_path = "data/local/verification/goal-continuation-2026-10-23/solve-local-r0b-control-r3/launch-summary.json"
    m4 = audit.get("m4")
    m6 = audit.get("m6")
    problem_info = audit.get("problem")
    if not all(isinstance(value, dict) for value in (m4, m6, problem_info)):
        raise ValueError("the M4/M6 review context is incomplete")
    if run_id is not None and run_id != m4.get("run_id"):
        raise ValueError("selected Nat.add_assoc run is not the exact run in the pinned M4/M6 audit")
    lean_path = m4.get("lean_receipt_path")
    metrics_path = m6.get("receipt_path")
    m6_run_path = m6.get("run_receipt_path")
    if not all(isinstance(path, str) for path in (lean_path, metrics_path, m6_run_path)):
        raise ValueError("the M4/M6 review context is missing receipt paths")
    result, problem, launch = read_ref(stdout_path), read_ref(problem_path), read_ref(launch_path)
    lean, metrics, m6_run = read_ref(lean_path), read_ref(metrics_path), read_ref(m6_run_path)
    proof_text = m4.get("proof")
    proof_sha = m4.get("proof_sha256")
    statement_sha = problem_info.get("statement_sha256")
    if (
        not isinstance(proof_text, str)
        or _digest_bytes(proof_text.encode("utf-8")) != proof_sha
        or result.get("proof") != proof_text
        or lean.get("input_proof") != proof_text
        or lean.get("proof_sha256") != proof_sha
        or lean.get("problem_statement_sha256") != statement_sha
        or lean.get("status") != "PASSED"
        or lean.get("kernel_passed") is not True
        or lean.get("axioms_passed") is not True
        or problem.get("lean_statement") != problem_info.get("lean_statement")
        or launch.get("network") != "none"
        or metrics.get("source_sha256") != lean.get("generated_source_sha256")
        or m6.get("linked_to_m4_generated_source") is not True
        or m6_run.get("status") != "EXECUTED_PASS"
        or not isinstance(statement_sha, str)
        or not isinstance(proof_sha, str)
    ):
        raise ValueError("the exact M4 proof, statement, axiom audit, or M6 source link does not agree")

    _, _, candidate_exposition, _ = _read_nat_case_handoff(root, problem_info, m4, m6, refs)
    exposition_sha = candidate_exposition["artifact_sha256"]

    m4_sha, m6_sha, m6_run_sha = refs[lean_path], refs[metrics_path], refs[m6_run_path]
    base = {
        "schema_version": "mathcase-review-binding-v1",
        "target_kind": "statement",
        "case_id": "nat-add-assoc",
        "problem_statement_sha256": statement_sha,
    }
    statement = {
        "kind": "statement", "case_id": "nat-add-assoc",
        "problem_statement_sha256": statement_sha, "proof_sha256": proof_sha,
        "exposition_sha256": None, "target_sha256": statement_sha,
        "evidence_revision_sha256": _digest_bytes(_javascript_json_bytes(base)),
    }
    proof_parts = {
        "schema_version": "mathcase-review-binding-v1", "target_kind": "proof",
        "case_id": "nat-add-assoc", "problem_statement_sha256": statement_sha,
        "proof_sha256": proof_sha, "m4_receipt_sha256": m4_sha,
        "m6_metrics_sha256": m6_sha, "m6_run_receipt_sha256": m6_run_sha,
    }
    proof = {
        "kind": "proof", "case_id": "nat-add-assoc",
        "problem_statement_sha256": statement_sha, "proof_sha256": proof_sha,
        "exposition_sha256": None, "target_sha256": proof_sha,
        "evidence_revision_sha256": _digest_bytes(_javascript_json_bytes(proof_parts)),
    }
    exposition_parts = {
        "schema_version": "mathcase-review-binding-v2", "target_kind": "draft_explanation",
        "case_id": "nat-add-assoc", "problem_statement_sha256": statement_sha,
        "proof_sha256": proof_sha, "exposition_sha256": exposition_sha,
        "m4_receipt_sha256": m4_sha, "m6_metrics_sha256": m6_sha,
        "m6_run_receipt_sha256": m6_run_sha,
    }
    exposition = {
        "kind": "draft_explanation", "case_id": "nat-add-assoc",
        "problem_statement_sha256": statement_sha, "proof_sha256": proof_sha,
        "exposition_sha256": exposition_sha, "target_sha256": exposition_sha,
        "evidence_revision_sha256": _digest_bytes(_javascript_json_bytes(exposition_parts)),
    }
    return {"statement": statement, "proof": proof, "draft_explanation": exposition}


def _load_proofdesk_forall_case(root: Path, run_id: str | None = None) -> dict[str, object]:
    """Render the saved reflexive-equality case from the verified Proof Desk record."""
    status = _proofdesk_status(root)
    source_path = _safe_local_artifact(root, PROOFDESK_FORALL_SOURCE_PATH)
    source_bytes = source_path.read_bytes()
    source_sha = _digest_bytes(source_bytes)
    try:
        problem = json.loads(source_bytes)
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValueError("Proof Desk known-result statement is not valid JSON") from exc
    if (
        not isinstance(problem, dict)
        or problem.get("id") != "forall-n-n-eq-n"
        or problem.get("title") != "Reflexive natural-number equality"
        or problem.get("statement") != "Every natural number equals itself."
        or problem.get("lean_statement") != "∀ n : Nat, n = n"
    ):
        raise ValueError("Proof Desk known-result source does not match the selected theorem")

    case_attempts = [item for item in status["attempts"] if item.get("problem_id") == problem["id"]]
    if not case_attempts:
        raise ValueError("Proof Desk reconciliation contains no attempts for the selected known result")
    clearance_records: dict[tuple[str, str], dict[str, object]] = {}
    evidence: list[dict[str, object]] = [
        {"kind": "problem_statement", "label": "Known-result statement", "path": PROOFDESK_FORALL_SOURCE_PATH, "sha256": source_sha},
        {"kind": "reconciliation", "label": "Verified Proof Desk record", **status["source"]},
    ]
    statement_sha = hashlib.sha256(problem["lean_statement"].encode("utf-8")).hexdigest()
    for attempt in case_attempts:
        if attempt.get("input_clearance_path") is None or attempt.get("input_clearance_sha256") is None:
            raise ValueError("Proof Desk known-result attempt has no item-scoped input clearance")
        clearance_bytes, clearance_path, clearance_sha = _proofdesk_read_bound(
            root, attempt["input_clearance_path"], attempt["input_clearance_sha256"]
        )
        try:
            clearance = json.loads(clearance_bytes)
        except (UnicodeDecodeError, json.JSONDecodeError) as exc:
            raise ValueError("Proof Desk known-result clearance is not valid JSON") from exc
        if (
            not isinstance(clearance, dict)
            or clearance.get("schema") != "mathcase-provider-input-clearance-v1"
            or clearance.get("theorem_id") != problem["id"]
            or clearance.get("statement") != problem["lean_statement"]
            or clearance.get("statement_sha256") != statement_sha
            or clearance.get("authorized_content") != "theorem statement and proof attempts only"
            or clearance.get("training_authorized") is not False
        ):
            raise ValueError("Proof Desk known-result clearance does not match the exact permitted statement")
        clearance_records[(clearance_path, clearance_sha)] = clearance
        evidence.append({"kind": "item_clearance", "label": "Statement-only provider clearance", "path": clearance_path, "sha256": clearance_sha})

    case_runs: list[dict[str, object]] = []
    run_by_id: dict[str, dict[str, object]] = {}
    for run_record in status["runs"]:
        if run_record.get("problem_id") != problem["id"]:
            continue
        run_id_value = run_record.get("run_id")
        if not isinstance(run_id_value, str):
            raise ValueError("Proof Desk known-result run is missing its identity")
        run_bytes, run_path, run_sha = _proofdesk_read_bound(root, run_record.get("path"), run_record.get("sha256"))
        try:
            run_value = json.loads(run_bytes)
        except (UnicodeDecodeError, json.JSONDecodeError) as exc:
            raise ValueError("Proof Desk known-result run is not valid JSON") from exc
        if not isinstance(run_value, dict) or run_value.get("run_id") != run_id_value or run_value.get("problem_id") != problem["id"]:
            raise ValueError("Proof Desk known-result run identity changed after reconciliation")
        linked_attempts = [item for item in case_attempts if item.get("run_id") == run_id_value]
        passing_attempt = next((item for item in linked_attempts if item.get("outcome") == "PASS"), None)
        lean_receipt: dict[str, object] | None = None
        lean_path: str | None = None
        lean_sha: str | None = None
        if passing_attempt is not None:
            lean_bytes, lean_path, lean_sha = _proofdesk_read_bound(
                root, passing_attempt.get("lean_receipt_path"), passing_attempt.get("lean_receipt_sha256")
            )
            try:
                lean_receipt = json.loads(lean_bytes)
            except (UnicodeDecodeError, json.JSONDecodeError) as exc:
                raise ValueError("Proof Desk successful Lean receipt is not valid JSON") from exc
            expected_proof = run_value.get("proof")
            expected_proof_sha = hashlib.sha256(expected_proof.encode("utf-8")).hexdigest() if isinstance(expected_proof, str) else None
            expected_problem_digest = _problem_statement_digest(problem["id"], problem["statement"], problem["lean_statement"])
            clearance = clearance_records.get((passing_attempt["input_clearance_path"], passing_attempt["input_clearance_sha256"]))
            if (
                not isinstance(lean_receipt, dict)
                or lean_receipt.get("schema_version") != "mathcase-lean-verification-v3"
                or lean_receipt.get("status") != "PASSED"
                or lean_receipt.get("kernel_passed") is not True
                or lean_receipt.get("axioms_passed") is not True
                or lean_receipt.get("problem_id") != problem["id"]
                or lean_receipt.get("problem_statement_sha256") != expected_problem_digest
                or lean_receipt.get("proof_sha256") != expected_proof_sha
                or not isinstance(clearance, dict)
                or clearance.get("statement_sha256") != statement_sha
            ):
                raise ValueError("Proof Desk successful proof does not bind to the exact statement, kernel, and axiom checks")
        row = {
            "run_id": run_id_value,
            "recorded_at_utc": run_value.get("recorded_at_utc"),
            "provider_id": run_value.get("provider_id"),
            "model_id": run_value.get("model_id"),
            "protocol_id": passing_attempt.get("protocol_id") if passing_attempt else (linked_attempts[0].get("protocol_id") if linked_attempts else None),
            "proof": run_value.get("proof") if isinstance(run_value.get("proof"), str) else None,
            "proof_sha256": lean_receipt.get("proof_sha256") if isinstance(lean_receipt, dict) else None,
            "statement_sha256": statement_sha,
            "receipt_path": run_path,
            "receipt_sha256": run_sha,
            "lean_receipt_path": lean_path,
            "lean_receipt_sha256": lean_sha,
            "status": "PASSED" if isinstance(lean_receipt, dict) else ("NOT_SOLVED" if run_value.get("solved") is False else "UNVERIFIED"),
            "kernel_passed": lean_receipt.get("kernel_passed") is True if isinstance(lean_receipt, dict) else False,
            "axioms_passed": lean_receipt.get("axioms_passed") is True if isinstance(lean_receipt, dict) else False,
            "observed_axioms": lean_receipt.get("observed_axioms") if isinstance(lean_receipt, dict) else None,
            "lean_version": lean_receipt.get("lean_version") if isinstance(lean_receipt, dict) else None,
            "attempt_count": len(linked_attempts),
        }
        run_by_id[run_id_value] = row
        case_runs.append(row)
        evidence.append({"kind": "run_result", "label": "Saved model-run record", "path": run_path, "sha256": run_sha})
        if lean_path and lean_sha:
            evidence.append({"kind": "lean_receipt", "label": "Pinned Lean proof check", "path": lean_path, "sha256": lean_sha})

    if not case_runs:
        raise ValueError("Proof Desk reconciliation has no saved runs for the selected known result")
    selected = run_by_id.get(run_id) if run_id else next(
        (item for item in reversed(case_runs) if item.get("status") == "PASSED"), case_runs[-1]
    )
    if selected is None:
        raise ValueError("selected run is not in the exact saved known-result history")

    attempt_events: list[dict[str, object]] = []
    for attempt in case_attempts:
        event = {key: value for key, value in attempt.items() if key not in {"input_clearance_path", "input_clearance_sha256"}}
        event.update({"event_type": "PROVIDER_ATTEMPT", "cost_micros": attempt["cost_micros"]})
        attempt_events.append(event)
        for field_path, field_sha in (
            (attempt.get("provider_call_receipt_path"), attempt.get("provider_call_receipt_sha256")),
            (attempt.get("lean_receipt_path"), attempt.get("lean_receipt_sha256")),
        ):
            if isinstance(field_path, str) and isinstance(field_sha, str):
                kind = "provider_call_receipt" if field_path == attempt.get("provider_call_receipt_path") else "lean_receipt"
                evidence.append({"kind": kind, "label": "Provider call receipt" if kind == "provider_call_receipt" else "Lean attempt receipt", "path": field_path.replace("\\", "/"), "sha256": field_sha})
    for replay in status["verified_replays"]:
        if replay.get("problem_id") != problem["id"]:
            continue
        replay_event = {**replay, "event_type": "SAVED_PROOF_REPLAY", "cost_micros": 0}
        attempt_events.append(replay_event)
        evidence.extend([
            {"kind": "verification_replay", "label": "Saved-proof replay linkage", "path": replay["linkage_receipt_path"], "sha256": replay["linkage_receipt_sha256"]},
            {"kind": "verification_replay_lean", "label": "Saved-proof Lean replay", "path": replay["lean_receipt_path"], "sha256": replay["lean_receipt_sha256"]},
        ])
    attempt_events.sort(key=lambda item: (str(item.get("started_at_utc") or item.get("recorded_at_utc") or ""), str(item.get("event_type"))))
    case_cost = sum(int(item.get("cost_micros", 0)) for item in case_attempts)
    return {
        "schema_version": "mathcase-case-context-v1",
        "case_id": "forall-n-n-eq-n",
        "problem_id": problem["id"],
        "title": problem["title"],
        "claim_class": "KNOWN_RESULT_REBUILD",
        "informal_statement": problem["statement"],
        "lean_statement": problem["lean_statement"],
        "statement_sha256": statement_sha,
        "question": "Does every natural number equal itself?",
        "why_this_case": "A small known-result control that demonstrates a provider can propose Lean proof text and the pinned checker can validate it. It is pipeline evidence, not a new discovery or a broad capability result.",
        "assumptions": "No extra mathematical assumptions are listed; the variable ranges over Nat, the natural numbers.",
        "uncertainty": "The selected proof is checked for this exact statement. No independent M7 review or evidence about harder problems is established.",
        "explanation": {
            "state": "LOCAL_EXPLANATORY_NOTE_NOT_REVIEWED_M7",
            "text": "Reflexivity means a value equals itself. Given any natural number n, the goal is n = n, so Lean closes it with reflexivity (rfl).",
            "boundary": "A plain-language note written from the statement; it is not a model response, independent review, or accepted M7 exposition.",
        },
        "original_source": None,
        "source_statement_comparison": {"status": "NO_EXTERNAL_CATALOGUE_SOURCE", "semantic_review": "NOT_REQUIRED_FOR_THIS_OWNER_DISCLOSED_CONTROL"},
        "runs": case_runs,
        "selected_run": selected,
        "attempt_events": attempt_events,
        "case_cost_micros": case_cost,
        "case_provider_call_count": len(case_attempts),
        "metrics": {"state": "NO_M6_RECEIPT_FOR_THIS_CASE", "reason": "No proof-structure measurement is linked to this known-result case."},
        "expositor": {"state": "NO_ACCEPTED_M7_EXPOSITION", **problem.get("explanation", {})},
        "dossier": None,
        "delivery_ready": None,
        "dossier_status": "NO_DOSSIER_FOR_THIS_CONTROL",
        "gates": {"M4": "PROOF_CHECKED" if selected.get("status") == "PASSED" else "NOT_PASSED", "M7": "NO_ACCEPTED_EXPOSITION"},
        "review_bindings": {},
        "review_packet": None,
        "sources": evidence,
        "provider_accounting": {
            "case_call_count": len(case_attempts),
            "case_cost_micros": case_cost,
            "global_call_count": status["finished_call_count"],
            "global_cost_micros": status["total_cost_micros"],
        },
    }


def _campaign_projection(root: Path) -> dict[str, object]:
    projection, _, _ = _read_local_json(root, CAMPAIGN_EXPERIMENTAL_RESULTS_PATH)
    if (
        projection.get("schema_version") != "mathcase-campaign-experimental-results-v2"
        or not isinstance(projection.get("results"), list)
        or not isinstance(projection.get("attempts"), list)
    ):
        raise ValueError("campaign experimental results are unavailable or unsupported")
    return projection


def _campaign_case_context(
    root: Path,
    case_id: str,
    run_id: str | None = None,
    *,
    projection: dict[str, object] | None = None,
) -> dict[str, object]:
    match = re.fullmatch(r"campaign-(l[1-6]-[1-5])", case_id)
    if match is None:
        raise ValueError("campaign case identity is invalid")
    slot_id = match.group(1).upper()
    current = projection if projection is not None else _campaign_projection(root)
    attempts = current.get("attempts")
    results = current.get("results")
    records: list[dict[str, object]] = []
    seen: set[tuple[str, str]] = set()
    for collection in (attempts, results):
        if not isinstance(collection, list):
            continue
        for item in collection:
            if not isinstance(item, dict) or item.get("slot_id") != slot_id:
                continue
            item_run_id = item.get("run_id")
            item_status = item.get("attempt_status")
            if not isinstance(item_run_id, str) or not isinstance(item_status, str):
                continue
            identity = (item_run_id, item_status)
            if identity in seen:
                continue
            seen.add(identity)
            records.append(item)
    if not records:
        raise ValueError("campaign slot has no saved run evidence")

    records.sort(key=lambda item: (str(item.get("started_at") or ""), str(item.get("run_id") or "")))
    attempts_by_run: dict[str, list[dict[str, object]]] = {}
    for item in records:
        attempts_by_run.setdefault(str(item["run_id"]), []).append(item)

    runs: list[dict[str, object]] = []
    for item_run_id, linked in attempts_by_run.items():
        primary = next(
            (item for item in linked if item.get("attempt_status") != "MANUAL_KNOWN_RESULT_CHECK"),
            linked[-1],
        )
        solver = primary.get("solver") if isinstance(primary.get("solver"), dict) else {}
        lean = primary.get("lean_verification") if isinstance(primary.get("lean_verification"), dict) else {}
        manual_checks = [
            {
                "status": manual.get("attempt_status"),
                "summary": manual.get("plain_result"),
                "manual_known_result_check": manual.get("manual_known_result_check"),
                "evidence_files": manual.get("evidence_files", {}),
            }
            for manual in linked
            if manual.get("attempt_status") == "MANUAL_KNOWN_RESULT_CHECK"
        ]
        runs.append({
            "run_id": item_run_id,
            "campaign_attempt": True,
            "recorded_at_utc": primary.get("finished_at") or primary.get("started_at"),
            "status": primary.get("attempt_status"),
            "attempt_status": primary.get("attempt_status"),
            "actual_search": primary.get("actual_search") is True,
            "plain_result": primary.get("plain_result"),
            "failure_class": solver.get("failure_class") or primary.get("failure_class"),
            "search_mode": primary.get("search_mode"),
            "proof": solver.get("proof"),
            "proof_sha256": solver.get("proof_sha256"),
            "metrics": solver.get("metrics"),
            "kernel_passed": lean.get("kernel_passed") is True,
            "axioms_passed": lean.get("axioms_passed") if isinstance(lean.get("axioms_passed"), bool) else None,
            "axiom_policy_status": lean.get("axiom_policy_status") if isinstance(lean.get("axiom_policy_status"), str) else "NOT_RECORDED",
            "m4_receipt_status": lean.get("m4_receipt_status") or "NOT_CREATED",
            "lean_status": lean.get("status", "NOT_RUN"),
            "standard_reopen_status": lean.get("standard_reopen_status", "NOT_REOPENED"),
            "observed_axioms": lean.get("observed_axioms", []),
            "related_manual_check": primary.get("related_manual_check"),
            "manual_checks": manual_checks,
            "evidence_files": primary.get("evidence_files", {}),
            "attempt_history": linked,
            "started_at": primary.get("started_at"),
            "finished_at": primary.get("finished_at"),
        })
    if run_id is not None:
        selected = next((item for item in runs if item["run_id"] == run_id), None)
        if selected is None:
            raise ValueError("selected campaign run is not available for this slot")
    else:
        selected = runs[-1]

    selected_record = next(
        (item for item in records if item.get("run_id") == selected["run_id"] and item.get("attempt_status") != "MANUAL_KNOWN_RESULT_CHECK"),
        next(item for item in records if item.get("run_id") == selected["run_id"]),
    )
    drafts = selected_record.get("five_explanation_drafts")
    drafts = drafts if isinstance(drafts, list) else []
    questions = selected_record.get("review_questions")
    questions = questions if isinstance(questions, list) else []
    lean_statement = selected_record.get("lean_statement")
    if not isinstance(lean_statement, str) or not lean_statement.strip():
        raise ValueError("campaign run has no exact Lean statement")
    problem_id = selected_record.get("problem_id")
    if not isinstance(problem_id, str) or not problem_id:
        raise ValueError("campaign run has no problem identity")
    evidence_files = selected.get("evidence_files") if isinstance(selected.get("evidence_files"), dict) else {}
    source_binding_ref = evidence_files.get("source_binding")
    source_allows_provider_input: bool | None = None
    source_provider_input_status = "NOT_ESTABLISHED"
    if (
        isinstance(source_binding_ref, dict)
        and isinstance(source_binding_ref.get("path"), str)
        and isinstance(source_binding_ref.get("sha256"), str)
    ):
        try:
            source_binding, _source_binding_sha256 = _read_pinned_json(
                root, source_binding_ref["path"], source_binding_ref["sha256"],
            )
        except (OSError, ValueError, json.JSONDecodeError):
            source_provider_input_status = "PINNED_SOURCE_REOPEN_FAILED"
        else:
            allowed_uses = source_binding.get("allowed_uses")
            rights_status = source_binding.get("rights_status")
            binding_matches_case = (
                source_binding.get("schema_version") == "mathcase-experimental-source-binding-v1"
                and source_binding.get("item_id") == f"{case_id}-{problem_id}"
                and source_binding.get("campaign_slot_id") == slot_id
                and source_binding.get("problem_id") == problem_id
                and source_binding.get("exact_lean_statement") == lean_statement
            )
            if not binding_matches_case:
                source_provider_input_status = "PINNED_SOURCE_IDENTITY_MISMATCH"
            elif (
                not isinstance(allowed_uses, list)
                or not all(isinstance(item, str) for item in allowed_uses)
                or not isinstance(rights_status, str)
            ):
                source_provider_input_status = "NOT_ESTABLISHED"
            elif "PROVIDER_INPUT_ONE_EXACT_CONTEXT" in allowed_uses and "NO_PROVIDER_INPUT" in rights_status:
                source_provider_input_status = "CONFLICTING_PINNED_SOURCE_PERMISSIONS"
            elif "PROVIDER_INPUT_ONE_EXACT_CONTEXT" in allowed_uses:
                source_allows_provider_input = True
                source_provider_input_status = "PERMITTED_BY_PINNED_SOURCE"
            elif "NO_PROVIDER_INPUT" in rights_status:
                source_allows_provider_input = False
                source_provider_input_status = "PROHIBITED_BY_PINNED_SOURCE"
            elif "PROVIDER_INPUT_ONLY_UNDER_SEPARATE_EXACT_CLEARANCE" in rights_status:
                source_provider_input_status = "REQUIRES_SEPARATE_EXACT_CLEARANCE"
            else:
                source_allows_provider_input = False
                source_provider_input_status = "PROHIBITED_BY_PINNED_SOURCE"
    sources = [
        {"path": ref["path"], "sha256": ref["sha256"], "label": kind.replace("_", " ").title()}
        for kind, ref in evidence_files.items()
        if isinstance(kind, str) and isinstance(ref, dict)
        and isinstance(ref.get("path"), str) and isinstance(ref.get("sha256"), str)
    ]
    title = selected_record.get("title")
    return {
        "schema_version": "mathcase-case-context-v1",
        "case_id": case_id,
        "campaign_case": True,
        "campaign_slot_id": slot_id,
        "problem_id": problem_id,
        "title": f"{slot_id} · {title if isinstance(title, str) else problem_id}",
        "claim_class": "OWNER_AUTHORIZED_EXPERIMENTAL_LOCAL_ATTEMPT",
        "informal_statement": selected_record.get("informal_statement") or "Campaign statement awaiting independent meaning review.",
        "formalization_scope": selected_record.get("formalization_scope"),
        "lean_statement": lean_statement,
        "statement_sha256": _digest_bytes(lean_statement.encode("utf-8")),
        "source_allows_provider_input": source_allows_provider_input,
        "source_provider_input_status": source_provider_input_status,
        "runs": runs,
        "selected_run": selected,
        "attempt_events": [
            {
                "event_type": "CAMPAIGN_EXPERIMENTAL_ATTEMPT",
                "run_id": item.get("run_id"),
                "attempt_id": item.get("solver_attempt_id") or item.get("run_id"),
                "started_at_utc": item.get("started_at"),
                "finished_at_utc": item.get("finished_at"),
                "outcome": item.get("attempt_status"),
                "actual_search": item.get("actual_search") is True,
                "failure_class": (item.get("solver") or {}).get("failure_class") if isinstance(item.get("solver"), dict) else item.get("failure_class"),
                "failure_summary": item.get("plain_result"),
                "evidence_files": item.get("evidence_files", {}),
            }
            for item in records
        ],
        "attempt_history": selected.get("attempt_history", []),
        "five_explanation_drafts": drafts,
        "review_questions": questions,
        "expositor": {
            "state": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
            "tiers": drafts,
        },
        "metrics": {"state": "NOT_MEASURED_FOR_CAMPAIGN_CASE", "reason": "No M6 quality or proof-structure measurement is attached to this campaign case."},
        "dossier_status": "EXPERIMENTAL_PENDING_REVIEW",
        "delivery_ready": False,
        "gates": {
            "statement_fidelity": "PENDING_INDEPENDENT_REVIEW",
            "M4": "NOT_PROMOTED_FROM_EXPERIMENTAL_ATTEMPT",
            "M6": "NOT_MEASURED",
            "M7": "NOT_REVIEWED",
            "public_export": "NOT_CLEARED",
            "training_use": "NOT_AUTHORIZED",
        },
        "review_bindings": {},
        "review_packet": None,
        "sources": sources,
        "why_this_case": "Owner-authorized bounded campaign attempt. This exact run and its evidence are shown separately from older Bootstrap records; no review or delivery gate is promoted.",
        "case_provider_call_count": 0,
        "case_cost_micros": 0,
    }


PRIME_MODEL_CASE_ID = "hero-prime-divisibility-r1"
PRIME_CHILD_CASE_ID = "hero-sqrt2-parent-reuse-r2"
PRIME_CHILD_RUN_ID = "prime-sqrt2-direct-parent-child-20261028-r2"
PRIME_MODEL_RUN_ID = "proofdesk-ui-hero-prime-divisibility-r1-20261028T152753Z-8d06f9d0e04b"
PRIME_MODEL_REUSE_RECORD_PATH = "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/run-record.json"
PRIME_MODEL_REUSE_RECORD_SHA256 = "11df307558e3dec0391a2afac40dd2ac931273dede2894cac8a872aa87a8f304"
PRIME_MODEL_EXPLANATION_DRAFT_PATH = "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/explanation-draft-r1.json"
PRIME_PREPARED_CONTEXT_PATH = "data/local/verification/hero-prime-auto-context-20261028-r1/provider-context-preview-v3.json"
PRIME_PREPARED_CONTEXT_RECEIPT_PATH = "data/local/verification/hero-prime-auto-context-20261028-r1/automatic-context-preview-receipt.json"


def _prime_prepared_provider_context(root: Path, statement_sha256: str) -> dict[str, object]:
    """Expose the exact prepared context separately from immutable historical model inputs."""
    try:
        context_raw = _safe_repo_file(root, PRIME_PREPARED_CONTEXT_PATH).read_bytes()
        receipt_raw = _safe_repo_file(root, PRIME_PREPARED_CONTEXT_RECEIPT_PATH).read_bytes()
        if len(context_raw) > (4 << 20) or len(receipt_raw) > (128 << 10):
            raise ValueError("the prepared context preview exceeds its local display bound")
        context_sha256 = _digest_bytes(context_raw)
        receipt_sha256 = _digest_bytes(receipt_raw)
        context = json.loads(context_raw.decode("utf-8", errors="strict"))
        receipt = json.loads(receipt_raw.decode("utf-8", errors="strict"))
        if not isinstance(context, dict) or not isinstance(receipt, dict):
            raise ValueError("the prepared context preview or receipt is not a JSON object")
        if (
            context.get("schema_version") != "mathcase-provider-prompt-context-v3"
            or receipt.get("schema_version") != "mathcase-automatic-provider-context-preview-v1"
            or receipt.get("case_id") != PRIME_MODEL_CASE_ID
            or receipt.get("context_path") != PRIME_PREPARED_CONTEXT_PATH
            or receipt.get("context_sha256") != context_sha256
            or receipt.get("statement_sha256") != statement_sha256
            or receipt.get("provider_calls_sent_by_this_preview") != 0
        ):
            raise ValueError("the prepared context preview does not match its exact case, statement, digest, or no-call receipt")
        problem = context.get("problem")
        if (
            not isinstance(problem, dict)
            or not isinstance(problem.get("lean_statement"), str)
            or _digest_bytes(problem["lean_statement"].encode("utf-8")) != statement_sha256
        ):
            raise ValueError("the prepared context preview is not bound to the selected Lean statement")
        tavily = context.get("tavily_research")
        if not isinstance(tavily, dict):
            raise ValueError("the prepared context preview has no reconciled research section")
        if not str(receipt.get("dispatch_state", "")).startswith("BLOCKED_UNTIL_OWNER_REVIEWS_AND_AUTHORIZES_THIS_EXACT_CONTEXT_DIGEST"):
            raise ValueError("the prepared context preview does not retain its exact-digest authorization hold")
        sources = tavily.get("sources")
        sources = sources if isinstance(sources, list) else []
        signatures = context.get("library_signatures")
        signatures = signatures if isinstance(signatures, list) else []
        attempts = context.get("prior_provider_attempts")
        attempts = attempts if isinstance(attempts, list) else []
        return {
            "state": "PREPARED_NOT_SENT",
            "case_id": PRIME_MODEL_CASE_ID,
            "statement_sha256": statement_sha256,
            "context_sha256": context_sha256,
            "context_path": PRIME_PREPARED_CONTEXT_PATH,
            "receipt_path": PRIME_PREPARED_CONTEXT_RECEIPT_PATH,
            "receipt_sha256": receipt_sha256,
            "research_reference_count": len(sources),
            "research_metering_status": str(tavily.get("metering_status") or "UNVERIFIED_METERING"),
            "selected_signature_count": len(signatures),
            "prior_provider_attempt_count": len(attempts),
            "provider_calls_sent": 0,
            "authorization_state": receipt["dispatch_state"],
        }
    except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError, UnicodeDecodeError) as exc:
        return {
            "state": "UNAVAILABLE",
            "reason": str(exc),
            "context_path": PRIME_PREPARED_CONTEXT_PATH,
            "receipt_path": PRIME_PREPARED_CONTEXT_RECEIPT_PATH,
        }


def _prime_model_explanation_draft(
    root: Path,
    *,
    case_revision_sha256: str,
    statement_sha256: str,
    selected_run: dict[str, object],
    child_reuse: dict[str, object],
) -> dict[str, object]:
    """Load a local prose draft only when it binds the exact saved proof and child."""
    raw = _safe_repo_file(root, PRIME_MODEL_EXPLANATION_DRAFT_PATH).read_bytes()
    if len(raw) > 32 << 10:
        raise ValueError("the saved hero explanation draft exceeds its local read bound")
    digest = _digest_bytes(raw)
    candidate = json.loads(raw.decode("utf-8", errors="strict"))
    if not isinstance(candidate, dict):
        raise ValueError("the saved hero explanation draft is not a JSON object")
    expected = {
        "schema_version": "mathcase-hero-explanation-draft-v1",
        "status": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
        "origin": "LOCAL_TASK_AUTHORED_FROM_PINNED_EVIDENCE",
        "case_id": PRIME_MODEL_CASE_ID,
        "case_revision_sha256": case_revision_sha256,
        "problem_id": PRIME_MODEL_CASE_ID,
        "statement_sha256": statement_sha256,
        "problem_statement_sha256": selected_run.get("problem_statement_sha256"),
        "run_id": selected_run.get("run_id"),
        "proof_sha256": selected_run.get("proof_sha256"),
        "lean_receipt_sha256": selected_run.get("lean_receipt_sha256"),
        "child_reuse_record_path": child_reuse.get("record_path"),
        "child_reuse_record_sha256": child_reuse.get("record_sha256"),
        "child_source_path": child_reuse.get("child_source_path"),
        "child_source_sha256": child_reuse.get("child_source_sha256"),
        "compiled_child_path": child_reuse.get("compiled_module_path"),
        "compiled_child_sha256": child_reuse.get("compiled_module_sha256"),
    }
    for field, value in expected.items():
        if candidate.get(field) != value:
            raise ValueError(f"the saved hero explanation draft does not bind its exact {field}")
    title = candidate.get("title")
    text = candidate.get("text")
    review = candidate.get("review")
    if (
        not isinstance(title, str) or not title.strip()
        or not isinstance(text, str) or not text.strip()
        or candidate.get("text_sha256") != _digest_bytes(text.encode("utf-8"))
        or not isinstance(review, dict)
        or review.get("status") != "NOT_REVIEWED"
        or review.get("identity_status") != "NO_HUMAN_REVIEWER_CLAIMED"
        or review.get("gate_effect") != "NONE"
        or review.get("training_use") != "NOT_AUTHORIZED"
        or review.get("signing") != "NOT_PERFORMED"
        or review.get("public_export") != "NOT_CLEARED"
    ):
        raise ValueError("the saved hero explanation draft or its review boundary is incomplete")
    return {
        "state": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
        "origin": candidate["origin"],
        "title": title,
        "text": text,
        "candidate_artifact_path": PRIME_MODEL_EXPLANATION_DRAFT_PATH,
        "candidate_artifact_sha256": digest,
        "exposition_sha256": candidate["text_sha256"],
        "case_revision_sha256": case_revision_sha256,
        "run_id": selected_run["run_id"],
        "proof_sha256": selected_run["proof_sha256"],
        "review_status": review["status"],
        "identity_status": review["identity_status"],
        "gate_effect": review["gate_effect"],
        "training_use": review["training_use"],
        "signing": review["signing"],
        "public_export": review["public_export"],
        "review_boundary": review.get("boundary"),
    }


def _local_run_archive_artifact_view(artifact: object) -> dict[str, object]:
    return {
        "kind": artifact.kind,
        "sha256": artifact.sha256,
        "size_bytes": artifact.size_bytes,
    }


def _local_run_archive_summary_view(run: object) -> dict[str, object]:
    return {
        "run_id": run.run_id,
        "launch_recorded_at_utc": run.launch_recorded_at_utc,
        "completion_recorded_at_utc": run.completion_recorded_at_utc,
        "launch_status": run.launch_status,
        "completion_status": run.completion_status,
        "provider_id": run.provider_id,
        "model_id": run.model_id,
        "results": [
            {
                "status": result.status,
                "provider_solved": result.provider_solved,
                "artifact": _local_run_archive_artifact_view(result.artifact),
            }
            for result in run.results
        ],
        "lean_receipts": [
            {
                "schema_version": receipt.schema_version,
                "status": receipt.status,
                "artifact": _local_run_archive_artifact_view(receipt.artifact),
            }
            for receipt in run.lean_receipts
        ],
        "artifacts": [_local_run_archive_artifact_view(artifact) for artifact in run.artifact_refs],
    }


def _saved_proofdesk_run(root: Path, dispatcher: object, run_id: str) -> dict[str, object]:
    # Existing owner data always takes precedence, including a failed digest
    # check. The portable package never repairs or conceals a changed record.
    original = root / "data/local/verification/proofdesk-ui-dispatch-r1" / run_id
    if run_id == PRIME_MODEL_RUN_ID and not os.path.lexists(original):
        return portable_hero_run(root, run_id)
    get_run = getattr(dispatcher, "get_run", None)
    if not callable(get_run):
        raise ValueError("the local Proof Desk run reader is unavailable")
    return get_run(run_id)


def _prime_model_case_context(root: Path, dispatcher: object, run_id: str | None = None) -> dict[str, object]:
    """Reopen the saved prime-divisibility run and its exact compiled child as one experimental case."""
    selected_run_id = run_id or PRIME_MODEL_RUN_ID
    if selected_run_id != PRIME_MODEL_RUN_ID:
        original = _prime_model_case_context(root, dispatcher)
        return read_pilot_context(root, dispatcher, original, selected_run_id)
    run = _saved_proofdesk_run(root, dispatcher, selected_run_id)
    if (
        run.get("problem_id") != PRIME_MODEL_CASE_ID
        or run.get("status") != "COMPLETED"
        or run.get("solved") is not True
        or not isinstance(run.get("proof"), str)
    ):
        raise ValueError("the saved provider run is not a completed checked prime-divisibility result")
    artifacts = run.get("artifacts")
    if not isinstance(artifacts, list):
        raise ValueError("the saved provider run has no verified artifact list")
    artifact_by_path = {
        item.get("path"): item
        for item in artifacts
        if isinstance(item, dict) and isinstance(item.get("path"), str)
    }

    def read_pinned(path: str, expected_sha256: str, *, max_bytes: int = 4 << 20) -> tuple[dict[str, object], bytes]:
        source = _safe_repo_file(root, path)
        raw = source.read_bytes()
        if len(raw) > max_bytes or _digest_bytes(raw) != expected_sha256:
            raise ValueError(f"saved hero evidence changed or exceeds its bound: {path}")
        value = json.loads(raw.decode("utf-8", errors="strict"))
        if not isinstance(value, dict):
            raise ValueError(f"saved hero evidence is not a JSON object: {path}")
        return value, raw

    problem_path = f"data/local/verification/proofdesk-ui-dispatch-r1/{selected_run_id}/problem.json"
    problem_ref = artifact_by_path.get(problem_path)
    if not isinstance(problem_ref, dict) or not isinstance(problem_ref.get("sha256"), str):
        raise ValueError("the saved run does not bind its exact problem and prompt context")
    problem, _problem_raw = read_pinned(problem_path, problem_ref["sha256"], max_bytes=2 << 20)
    if (problem.get("id") != PRIME_MODEL_CASE_ID
            or not isinstance(problem.get("statement"), str)
            or not isinstance(problem.get("lean_statement"), str)):
        raise ValueError("the saved problem identity or formal statement changed")
    statement = problem["lean_statement"]
    provider_context = problem.get("provider_context")
    if not isinstance(provider_context, dict) or not isinstance(provider_context.get("content"), str):
        raise ValueError("the actual assembled model context is unavailable")
    context_raw = provider_context["content"].encode("utf-8")
    context_sha256 = _digest_bytes(context_raw)
    if provider_context.get("sha256") != context_sha256:
        raise ValueError("the exact context recorded for the model request does not match its digest")
    context_content = json.loads(context_raw.decode("utf-8", errors="strict"))
    if not isinstance(context_content, dict):
        raise ValueError("the assembled model context is malformed")
    context_problem = context_content.get("problem")
    source_binding = context_content.get("source_binding")
    if (
        not isinstance(context_problem, dict)
        or context_problem.get("lean_statement") != statement
        or not isinstance(source_binding, dict)
        or source_binding.get("exact_lean_statement") != statement
        or "PROVIDER_INPUT_ONE_EXACT_CONTEXT" not in source_binding.get("allowed_uses", [])
    ):
        raise ValueError("the exact problem statement or provider-use clearance is not bound to the saved context")
    # UI clearances key the exact Lean text, while the verifier receipt keys
    # the full domain problem identity (id + informal + Lean statement).
    statement_sha256 = _digest_bytes(statement.encode("utf-8"))
    problem_statement_sha256 = _problem_statement_digest(
        str(problem.get("id")), str(problem.get("statement")), statement,
    )

    reuse, _reuse_raw = read_pinned(PRIME_MODEL_REUSE_RECORD_PATH, PRIME_MODEL_REUSE_RECORD_SHA256)
    parent = reuse.get("provider_parent")
    child = reuse.get("child_module")
    source_binding_ref = reuse.get("source_binding")
    if (
        reuse.get("status") != "COMPILED_REUSE_PASS"
        or reuse.get("attempt_count_delta") != 0
        or reuse.get("provider_calls_this_step") != 0
        or not isinstance(parent, dict)
        or parent.get("run_id") != selected_run_id
        or parent.get("problem_id") != PRIME_MODEL_CASE_ID
        or parent.get("case_context_sha256") != context_sha256
        or parent.get("proof_sha256") != _digest_bytes(run["proof"].encode("utf-8"))
        or not isinstance(child, dict)
        or "MathCaseCandidate" not in child.get("imports", [])
        or child.get("uses_exact_parent_declaration") != "mathcase_candidate"
        or child.get("application") != "mathcase_candidate 2 n (by decide) h"
        or child.get("compile_exit_code") != 0
        or not isinstance(source_binding_ref, dict)
    ):
        raise ValueError("the saved child-reuse record is not bound to this exact parent proof")
    binding_path = source_binding_ref.get("path")
    binding_sha256 = source_binding_ref.get("sha256")
    if not isinstance(binding_path, str) or not isinstance(binding_sha256, str):
        raise ValueError("the parent source binding is missing")
    binding, _binding_raw = read_pinned(binding_path, binding_sha256, max_bytes=256 << 10)
    source_path = binding.get("source_path")
    source_sha256 = binding.get("source_sha256")
    if (
        binding.get("exact_lean_statement") != statement
        or not isinstance(source_path, str)
        or not isinstance(source_sha256, str)
        or source_binding.get("source_sha256") != source_sha256
        or _digest_bytes(_safe_repo_file(root, source_path).read_bytes()) != source_sha256
    ):
        raise ValueError("the source-bound theorem does not match the saved provider statement")

    attempts = run.get("attempts")
    if not isinstance(attempts, list) or not attempts:
        raise ValueError("the saved provider attempts are unavailable")
    passed_attempt = next((item for item in attempts if isinstance(item, dict) and item.get("outcome") == "PASS"), None)
    if not isinstance(passed_attempt, dict):
        raise ValueError("the saved provider run has no Lean-passed attempt")
    evidence_ids = passed_attempt.get("evidence_ids")
    evidence_id = evidence_ids[0] if isinstance(evidence_ids, list) and len(evidence_ids) == 1 else None
    receipt_path = f"data/local/verification/proofdesk-ui-dispatch-r1/{selected_run_id}/lean-receipts/{evidence_id}.json"
    receipt_ref = artifact_by_path.get(receipt_path)
    if not isinstance(evidence_id, str) or not isinstance(receipt_ref, dict) or not isinstance(receipt_ref.get("sha256"), str):
        raise ValueError("the successful model proof has no hash-bound Lean receipt")
    lean_receipt, _lean_raw = read_pinned(receipt_path, receipt_ref["sha256"], max_bytes=2 << 20)
    if (
        lean_receipt.get("evidence_id") != evidence_id
        or lean_receipt.get("problem_id") != PRIME_MODEL_CASE_ID
        or lean_receipt.get("problem_statement_sha256") != problem_statement_sha256
        or lean_receipt.get("proof_sha256") != _digest_bytes(run["proof"].encode("utf-8"))
        or lean_receipt.get("status") != "PASSED"
        or lean_receipt.get("kernel_passed") is not True
        or lean_receipt.get("axioms_passed") is not True
    ):
        raise ValueError("the exact standard Lean receipt does not pass for this saved statement and proof")

    call_records: list[dict[str, object]] = []
    run_prefix = f"data/local/verification/proofdesk-ui-dispatch-r1/{selected_run_id}/calls/"
    for path, ref in artifact_by_path.items():
        if not path.startswith(run_prefix) or not path.endswith(".receipt.json"):
            continue
        call_receipt, _call_raw = read_pinned(path, str(ref.get("sha256") or ""), max_bytes=512 << 10)
        if call_receipt.get("schema_version") != "mathcase-chat-completions-call-receipt-v1":
            raise ValueError("a saved provider call receipt has an unsupported schema")
        request_path = path[:-len(".receipt.json")] + ".request.json"
        response_path = path[:-len(".receipt.json")] + ".response.json"
        request_ref = artifact_by_path.get(request_path)
        response_ref = artifact_by_path.get(response_path)
        if (
            not isinstance(request_ref, dict)
            or not isinstance(response_ref, dict)
            or call_receipt.get("request_sha256") != request_ref.get("sha256")
            or call_receipt.get("response_sha256") != response_ref.get("sha256")
        ):
            raise ValueError("a provider request or response does not match its call receipt")
        call_records.append({
            "started_at_utc": call_receipt.get("started_at_utc"),
            "prompt_tokens": call_receipt.get("prompt_tokens"),
            "completion_tokens": call_receipt.get("completion_tokens"),
            "model_id": call_receipt.get("model_returned") or call_receipt.get("model_requested"),
            "provider_call_receipt_path": path,
            "provider_call_receipt_sha256": ref.get("sha256"),
            "provider_request_path": request_path,
            "provider_request_sha256": request_ref.get("sha256"),
            "provider_response_path": response_path,
            "provider_response_sha256": response_ref.get("sha256"),
        })
    call_records.sort(key=lambda item: str(item.get("started_at_utc") or ""))
    if len(call_records) != len(attempts) or len(attempts) != run.get("provider_call_count"):
        raise ValueError("saved provider call receipts do not account for every recorded model attempt")
    provider_attempts: list[dict[str, object]] = []
    for attempt, call in zip(attempts, call_records, strict=True):
        if (
            not isinstance(attempt, dict)
            or attempt.get("prompt_tokens") != call.get("prompt_tokens")
            or attempt.get("completion_tokens") != call.get("completion_tokens")
        ):
            raise ValueError("provider calls cannot be matched to the saved attempt sequence")
        attempt_ids = attempt.get("evidence_ids")
        attempt_id = attempt_ids[0] if isinstance(attempt_ids, list) and len(attempt_ids) == 1 else None
        attempt_lean_path = f"data/local/verification/proofdesk-ui-dispatch-r1/{selected_run_id}/lean-receipts/{attempt_id}.json"
        attempt_lean_ref = artifact_by_path.get(attempt_lean_path)
        if not isinstance(attempt_id, str) or not isinstance(attempt_lean_ref, dict) or not isinstance(attempt_lean_ref.get("sha256"), str):
            raise ValueError("a recorded model attempt has no exact Lean receipt")
        attempt_lean, _attempt_lean_raw = read_pinned(attempt_lean_path, attempt_lean_ref["sha256"], max_bytes=2 << 20)
        if (
            attempt_lean.get("evidence_id") != attempt_id
            or attempt_lean.get("problem_id") != PRIME_MODEL_CASE_ID
            or attempt_lean.get("problem_statement_sha256") != problem_statement_sha256
        ):
            raise ValueError("an attempt Lean receipt does not match its exact problem")
        attempt_proof = attempt_lean.get("input_proof")
        attempt_proof_sha256 = attempt_lean.get("proof_sha256")
        if (
            not isinstance(attempt_proof, str)
            or not isinstance(attempt_proof_sha256, str)
            or _digest_bytes(attempt_proof.encode("utf-8")) != attempt_proof_sha256
        ):
            raise ValueError("a model attempt Lean receipt does not bind its exact proof input")
        if attempt.get("outcome") == "PASS":
            if (
                attempt_lean.get("status") != "PASSED"
                or attempt_lean.get("kernel_passed") is not True
                or attempt_lean.get("axioms_passed") is not True
                or attempt.get("verified_proof_sha256") != attempt_proof_sha256
            ):
                raise ValueError("the recorded passing attempt does not match its passing Lean receipt")
        elif attempt_lean.get("status") == "PASSED":
            raise ValueError("a non-passing attempt points to a Lean-passing receipt")
        provider_attempts.append({
            "run_id": selected_run_id,
            "attempt_id": attempt_id,
            "stage": attempt.get("stage"),
            "outcome": attempt.get("outcome"),
            "failure_class": attempt.get("failure_class"),
            "failure_summary": attempt.get("failure_summary"),
            "cost_micros": attempt.get("cost_micros"),
            "cost_known": attempt.get("cost_known"),
            "prompt_tokens": attempt.get("prompt_tokens"),
            "completion_tokens": attempt.get("completion_tokens"),
            "model_id": call.get("model_id"),
            **call,
            "lean_receipt_path": attempt_lean_path,
            "lean_receipt_sha256": attempt_lean_ref["sha256"],
            "lean_status": attempt_lean.get("status"),
            "kernel_passed": attempt_lean.get("kernel_passed"),
            "axioms_passed": attempt_lean.get("axioms_passed"),
        })

    child_source_path = child.get("source_path")
    child_source_sha256 = child.get("source_sha256")
    if not isinstance(child_source_path, str) or not isinstance(child_source_sha256, str):
        raise ValueError("the compiled child source identity is missing")
    child_source = _safe_repo_file(root, child_source_path).read_text(encoding="utf-8")
    if (
        _digest_bytes(child_source.encode("utf-8")) != child_source_sha256
        or "import MathCaseCandidate" not in child_source
        or "mathcase_candidate 2 n (by decide) h" not in child_source
    ):
        raise ValueError("the child source no longer imports and applies the exact checked parent theorem")
    compiled_child_relative = (Path(PRIME_MODEL_REUSE_RECORD_PATH).parent / str(child.get("compiled_module_path", ""))).as_posix()
    compiled_child = _safe_repo_file(root, compiled_child_relative).read_bytes()
    if _digest_bytes(compiled_child) != child.get("compiled_module_sha256"):
        raise ValueError("the child compilation artifact does not match its saved receipt")

    completed_at = run.get("completed_at_utc") or run.get("started_at_utc")
    selected = {
        "run_id": selected_run_id,
        "recorded_at_utc": completed_at,
        "status": "PASSED",
        "provider_dispatch_status": run.get("status"),
        "provider_id": run.get("provider_id"),
        "model_id": run.get("model_id"),
        "provider_call_count": run.get("provider_call_count"),
        "provider_cost_micros": sum(int(item.get("cost_micros") or 0) for item in attempts if isinstance(item, dict)),
        "proof": run["proof"],
        "proof_sha256": _digest_bytes(run["proof"].encode("utf-8")),
        "problem_statement_sha256": problem_statement_sha256,
        "kernel_passed": True,
        "axioms_passed": True,
        "receipt_path": run.get("completion_receipt"),
        "receipt_sha256": run.get("completion_receipt_sha256"),
        "lean_receipt_path": receipt_path,
        "lean_receipt_sha256": receipt_ref["sha256"],
        "provider_context_sha256": context_sha256,
        "provider_case_id_at_dispatch": context_content.get("case_identity", {}).get("case_id"),
        "actual_search": False,
    }
    run_history = [{
        "run_id": selected_run_id,
        "recorded_at_utc": completed_at,
        "status": "PASSED",
        "kernel_passed": True,
        "axioms_passed": True,
        "proof": run["proof"],
        "proof_sha256": selected["proof_sha256"],
        "receipt_path": selected["receipt_path"],
        "receipt_sha256": selected["receipt_sha256"],
    }]
    case_sources = [
        {"path": problem_path, "sha256": problem_ref["sha256"], "label": "Exact problem and automatically assembled provider context"},
        {"path": binding_path, "sha256": binding_sha256, "label": "Source-bound experimental statement and use permissions"},
        {"path": run.get("completion_receipt"), "sha256": run.get("completion_receipt_sha256"), "label": "Completed provider and proof-check run"},
        {"path": receipt_path, "sha256": receipt_ref["sha256"], "label": "Pinned Lean proof and axiom receipt"},
    ]
    for item in provider_attempts:
        for path_key, sha_key, label in (
            ("provider_request_path", "provider_request_sha256", "Exact model request and assembled context"),
            ("provider_response_path", "provider_response_sha256", "Exact model response"),
            ("provider_call_receipt_path", "provider_call_receipt_sha256", "Provider call receipt"),
            ("lean_receipt_path", "lean_receipt_sha256", "Lean check for this model attempt"),
        ):
            case_sources.append({"path": item[path_key], "sha256": item[sha_key], "label": label})
    prepared_provider_context = _prime_prepared_provider_context(root, statement_sha256)
    context: dict[str, object] = {
        "schema_version": "mathcase-case-context-v1",
        "case_id": PRIME_MODEL_CASE_ID,
        "problem_id": PRIME_MODEL_CASE_ID,
        "title": problem.get("title") or "Prime divisibility in a square",
        "claim_class": "EXPERIMENTAL_KNOWN_RESULT_REPLAY",
        "informal_statement": context_problem.get("informal_statement") or problem.get("statement"),
        "formalization_scope": {
            "pinned_informal_statement": context_problem.get("informal_statement") or problem.get("statement"),
            "summary": "Known-result experimental replay. The exact formal statement, source binding, model context, Lean pass, and compiled child are linked; meaning review remains pending.",
        },
        "lean_statement": statement,
        "statement_sha256": statement_sha256,
        "original_source": None,
        "source_statement_comparison": {"method": "EXACT_SOURCE_BOUND_FORMAL_TEXT", "status": "TEXT_MATCH", "semantic_review": "PENDING_INDEPENDENT_REVIEW"},
        "runs": run_history,
        "selected_run": selected,
        "attempt_history": [
            {"run_id": item["run_id"], "attempt_id": item["attempt_id"], "attempt_status": item["outcome"], "failure_class": item["failure_class"], "plain_result": item["failure_summary"], "actual_search": False}
            for item in provider_attempts
        ],
        "provider_attempts": provider_attempts,
        "expositor": None,
        "metrics": {"state": "NOT_LINKED", "reason": "No independent quality review or proof-structure measurement is linked to this provider-generated proof."},
        "dossier_status": "EXPERIMENTAL_REVIEW_PENDING",
        "delivery_ready": False,
        "research_allowed": True,
        "research_scope": "BOUNDED_FREE_GRANT_RELATED_WORK_ONLY; NOT NOVELTY REVIEW",
        "research_disabled_reason": None,
        "review_bindings": {},
        "review_packet": None,
        "sources": case_sources,
        "why_this_case": "Explore the checked prime-divisibility proof, then test a value or follow the lemma into the √2 case.",
        "saved_run_linkage": {
            "status": "VERIFIED_AFTER_DISPATCH",
            "case_id": PRIME_MODEL_CASE_ID,
            "run_id": selected_run_id,
            "problem_id": PRIME_MODEL_CASE_ID,
            "problem_statement_sha256": problem_statement_sha256,
            "lean_statement_sha256": statement_sha256,
            "provider_context_sha256": context_sha256,
            "source_binding_path": binding_path,
            "source_binding_sha256": binding_sha256,
            "lean_receipt_path": receipt_path,
            "lean_receipt_sha256": receipt_ref["sha256"],
            "dispatch_case_id": context_content.get("case_identity", {}).get("case_id"),
            "read_only": True,
            "gate_effect": "NONE",
        },
        "case_provider_call_count": run.get("provider_call_count", 0),
        "case_cost_micros": selected["provider_cost_micros"],
        "source_allows_provider_input": True,
        "source_provider_input_status": "PERMITTED_BY_PINNED_SOURCE",
        "provider_context": {
            "sha256": context_sha256,
            "selected_signature_count": len(context_content.get("library_signatures", [])),
            "retrieval_count": len(context_content.get("retrieval", [])),
            "prior_provider_attempt_count": len(context_content.get("prior_provider_attempts", [])),
            "problem_definition_count": len(context_problem.get("definitions", [])),
            "worked_example_count": len(context_content.get("worked_examples", [])),
            "prior_failure_diagnostics": [item.get("diagnostic") for item in context_content.get("prior_provider_attempts", []) if isinstance(item, dict)],
        },
        "prepared_provider_context": prepared_provider_context,
        "child_reuse": {
            "case_id": PRIME_CHILD_CASE_ID,
            "run_id": PRIME_CHILD_RUN_ID,
            "record_path": PRIME_MODEL_REUSE_RECORD_PATH,
            "record_sha256": PRIME_MODEL_REUSE_RECORD_SHA256,
            "child_source_path": child_source_path,
            "child_source_sha256": child_source_sha256,
            "compiled_module_path": compiled_child_relative,
            "compiled_module_sha256": child.get("compiled_module_sha256"),
            "compile_elapsed_ms": child.get("compile_elapsed_ms"),
        },
        "boundary": {
            "attempt_population": "SUPPLEMENTAL_INTEGRATION_NOT_CAMPAIGN_ATTEMPT",
            "meaning_review": "PENDING_INDEPENDENT_REVIEW",
            "training": "NOT_AUTHORIZED",
            "public_export": "NOT_AUTHORIZED",
            "certification_promotion": "NOT_AUTHORIZED",
        },
    }
    case_revision_sha256 = _case_context_revision_sha256(context)
    child_reuse = context.get("child_reuse")
    if not isinstance(child_reuse, dict):
        raise ValueError("the saved prime-divisibility case has no linked child reuse record")
    if not PUBLIC_PROFILE:
        context["expositor"] = _prime_model_explanation_draft(
            root,
            case_revision_sha256=case_revision_sha256,
            statement_sha256=statement_sha256,
            selected_run=selected,
            child_reuse=child_reuse,
        )
    else:
        context["explanation_availability"] = "Excluded pending independent exposition review."
    context["case_revision_sha256"] = case_revision_sha256
    context["runs"] = available_pilot_runs(root, dispatcher, context)
    try:
        counterexample = read_counterexample_record(root)
        context["checked_counterexample"] = {
            "case_id": COUNTEREXAMPLE_CASE_ID,
            "run_id": counterexample["receipt"]["run_id"],
            "status": "COUNTEREXAMPLE_CHECKED",
            "checker": "PYTHON_INTEGER_DIVMOD",
            "calculation": counterexample["receipt"]["calculation"],
            "receipt_path": "proofs/first-rung/evidence/composite-counterexample-r1/check.json",
            "receipt_sha256": counterexample["receipt_sha256"],
            "chronology": "A later local check of a demonstration claim; not an input to the historical model proof.",
        }
    except (OSError, ValueError, KeyError, TypeError):
        pass
    return context


def _prime_child_case_context(root: Path, dispatcher: object, run_id: str | None = None) -> dict[str, object]:
    if run_id and run_id != PRIME_CHILD_RUN_ID:
        raise ValueError("the selected run does not belong to the compiled child")
    parent = _prime_model_case_context(root, dispatcher)
    reuse = parent["child_reuse"]
    source_path = reuse["child_source_path"]
    source = _safe_repo_file(root, source_path).read_text(encoding="utf-8")
    statement = "Irrational (Real.sqrt (2 : ℝ))"
    if "theorem sqrt_two_irrational : " + statement not in source:
        raise ValueError("the child no longer proves the recorded irrationality statement")
    selected = {"run_id": PRIME_CHILD_RUN_ID, "status": "COMPILED_REUSE_PASS", "actual_search": False,
                "recorded_at_utc": "2026-10-28T15:56:55.8589569Z",
                "proof": source, "proof_sha256": reuse["child_source_sha256"],
                "receipt_path": PRIME_MODEL_REUSE_RECORD_PATH, "receipt_sha256": PRIME_MODEL_REUSE_RECORD_SHA256,
                "provider_call_count": 0, "provider_cost_micros": 0}
    return {"schema_version": "mathcase-case-context-v1", "case_id": PRIME_CHILD_CASE_ID,
            "problem_id": PRIME_CHILD_CASE_ID, "title": "Square root of two: reuse the checked prime lemma",
            "claim_class": "COMPILED_PARENT_REUSE", "lean_statement": statement,
            "informal_statement": "Prove that the real square root of 2 is irrational by infinite descent, using the exact checked prime-divisibility lemma at p = 2.",
            "why_this_case": "The saved child imports the captured parent module and applies its declaration at p = 2. This is a saved Lean compilation, with no new execution on open.",
            "selected_run": selected, "runs": [selected], "attempt_history": [],
            "parent_reuse": {"case_id": PRIME_MODEL_CASE_ID, "run_id": PRIME_MODEL_RUN_ID,
                             "proof_sha256": parent["selected_run"]["proof_sha256"],
                             "application": "mathcase_candidate 2 n (by decide) h"},
            "expositor": None, "case_cost_micros": 0, "case_provider_call_count": 0,
            "dossier_status": "COMPILED_REUSE_PASS", "delivery_ready": False,
            "source_allows_provider_input": False, "research_allowed": False,
            "review_bindings": {}, "review_packet": None,
            "sources": [{"path": source_path, "sha256": reuse["child_source_sha256"], "label": "Exact compiled child Lean source"},
                        {"path": PRIME_MODEL_REUSE_RECORD_PATH, "sha256": PRIME_MODEL_REUSE_RECORD_SHA256, "label": "Parent binding and successful child compilation"},
                        {"path": reuse["compiled_module_path"], "sha256": reuse["compiled_module_sha256"], "label": "Compiled child module"}],
            "boundary": {"meaning_review": "PENDING", "training": "NOT_AUTHORIZED", "public_export": "NOT_AUTHORIZED",
                         "verification": "SAVED_LEAN_COMPILATION_NO_STANDARD_M4_CHILD_RECEIPT"}}


def _case_context_revision_sha256(context: dict[str, object]) -> str:
    case_id = context.get("case_id")
    problem_id = context.get("problem_id")
    statement_key = next((
        key for key in ("lean_statement", "statement", "question", "informal_statement")
        if isinstance(context.get(key), str) and str(context.get(key)).strip()
    ), None)
    statement = context.get(statement_key) if statement_key is not None else None
    if not isinstance(case_id, str) or not case_id or not isinstance(problem_id, str) or not problem_id:
        raise ValueError("case revision requires one exact case and problem identity")
    if not isinstance(statement, str):
        raise ValueError("case revision requires a stable saved problem statement")

    refs: list[dict[str, str]] = []
    sources = context.get("sources", [])
    if not isinstance(sources, list):
        raise ValueError("case revision source references are malformed")
    for source in sources:
        if not isinstance(source, dict):
            raise ValueError("case revision source reference is malformed")
        path = source.get("path")
        digest = source.get("sha256")
        if not isinstance(path, str) or not path or not isinstance(digest, str) or not SOURCE_DIGEST.fullmatch(digest):
            raise ValueError("case revision source reference lacks its exact path and digest")
        refs.append({"path": path, "sha256": digest})

    original_source = context.get("original_source")
    original_source_identity: dict[str, str] = {}
    if original_source is not None:
        if not isinstance(original_source, dict):
            raise ValueError("case revision original source identity is malformed")
        for key in (
            "source_id", "revision", "local_artifact_path", "source_sha256",
            "local_license_path", "license_sha256", "acquisition_receipt_path",
            "acquisition_receipt_sha256",
        ):
            value = original_source.get(key)
            if isinstance(value, str) and value:
                if key.endswith("sha256") and not SOURCE_DIGEST.fullmatch(value):
                    raise ValueError("case revision original source digest is malformed")
                original_source_identity[key] = value

    informal = context.get("informal_statement")
    revision = {
        "schema_version": "mathcase-case-revision-v1",
        "case_id": case_id,
        "problem_id": problem_id,
        "statement_field": statement_key,
        "statement_text_sha256": _digest_bytes(statement.encode("utf-8")),
        "problem_statement_sha256": context.get("problem_statement_sha256") if isinstance(context.get("problem_statement_sha256"), str) and SOURCE_DIGEST.fullmatch(str(context.get("problem_statement_sha256"))) else None,
        "case_version": context.get("case_version") if isinstance(context.get("case_version"), str) else None,
        "catalog_snapshot_sha256": context.get("catalog_snapshot_sha256") if isinstance(context.get("catalog_snapshot_sha256"), str) and SOURCE_DIGEST.fullmatch(str(context.get("catalog_snapshot_sha256"))) else None,
        "dossier_sha256": context.get("dossier_sha256") if isinstance(context.get("dossier_sha256"), str) and SOURCE_DIGEST.fullmatch(str(context.get("dossier_sha256"))) else None,
        "selected_artifact_sha256": context.get("selected_artifact_sha256") if isinstance(context.get("selected_artifact_sha256"), str) and SOURCE_DIGEST.fullmatch(str(context.get("selected_artifact_sha256"))) else None,
        "informal_statement_sha256": _digest_bytes(informal.encode("utf-8")) if isinstance(informal, str) else None,
        "formalization_scope": context.get("formalization_scope"),
        "sources": sorted(refs, key=lambda item: (item["path"], item["sha256"])),
        "original_source": original_source_identity,
    }
    try:
        raw = json.dumps(revision, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")
    except (TypeError, ValueError) as exc:
        raise ValueError("case revision content is not a canonical JSON value") from exc
    return _digest_bytes(raw)


def _enforce_case_provider_input_source(context: dict[str, object]) -> None:
    """Reject source bans; conditional permission still requires the exact dispatcher clearance."""
    if "source_provider_input_status" not in context and "source_allows_provider_input" not in context:
        return
    status = context.get("source_provider_input_status")
    allowed = context.get("source_allows_provider_input")
    if allowed is True and status == "PERMITTED_BY_PINNED_SOURCE":
        return
    review = context.get("source_review")
    if (
        allowed is True
        and status == "PERMITTED_BY_OWNER_SELF_ATTESTATION"
        and isinstance(review, dict)
        and review.get("schema_version") == "mathcase-user-problem-source-review-v1"
        and review.get("review_status") == "OWNER_SELF_ATTESTED_NOT_INDEPENDENTLY_VERIFIED"
        and review.get("identity_status") == "UNAUTHENTICATED_LOCAL_OPERATOR"
        and review.get("signature_status") == "NONE"
        and review.get("use_scope") == {
            "local_verification": "AUTHORIZED_BY_LOCAL_OPERATOR_ACTION",
            "provider_input": "AUTHORIZED_AFTER_EXACT_REQUEST_REVIEW_AND_SEND_CONFIRMATION",
            "training": "NOT_AUTHORIZED",
            "locked_evaluation": "NOT_INCLUDED_BY_SELF_ATTESTATION",
            "public_export": "NOT_AUTHORIZED",
        }
    ):
        return
    agent_authorization = review.get("task_scope_authorization") if isinstance(review, dict) else None
    if (
        allowed is True
        and status == "PERMITTED_BY_AGENT_TASK_SCOPE"
        and isinstance(review, dict)
        and review.get("schema_version") == "mathcase-user-problem-source-review-v1"
        and review.get("source_kind") == "AGENT_AUTHORED_INTEGRATION_CONTROL"
        and review.get("review_status") == "AGENT_AUTHORED_TEST_CONTROL_NOT_HUMAN_REVIEWED"
        and review.get("identity_status") == "TASK_SCOPE_AGENT_UNAUTHENTICATED"
        and review.get("signature_status") == "NONE"
        and review.get("use_scope") == {
            "local_verification": "AUTHORIZED_FOR_LOCAL_INTEGRATION_CANARY",
            "provider_input": "AUTHORIZED_FOR_ONE_BOUNDED_TEST_CALL_AFTER_EXACT_REVIEW_AND_SEND",
            "training": "NOT_AUTHORIZED",
            "locked_evaluation": "NOT_INCLUDED_BY_TASK_SCOPE",
            "public_export": "NOT_AUTHORIZED",
        }
        and isinstance(agent_authorization, dict)
        and agent_authorization.get("authorization_status") == "OWNER_TASK_SCOPE_NOT_HUMAN_SIGNATURE"
        and agent_authorization.get("max_provider_runs") == 1
        and agent_authorization.get("training_authorized") is False
        and agent_authorization.get("public_export_authorized") is False
        and agent_authorization.get("locked_evaluation_material") is False
        and isinstance(review.get("authorization_sha256"), str)
        and _digest_bytes(json.dumps(agent_authorization, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8") + b"\n") == review.get("authorization_sha256")
    ):
        return
    if allowed is None and status == "REQUIRES_SEPARATE_EXACT_CLEARANCE":
        return
    if allowed is False or status == "PROHIBITED_BY_PINNED_SOURCE":
        raise ValueError("the case's hash-pinned source prohibits provider input; no provider call was started")
    raise ValueError("provider input is blocked because the case's pinned source permission is not established")


def _validate_case_context_binding(
    binding: dict[str, object], profile_item: dict[str, object], context: dict[str, object],
) -> None:
    selected = context.get("selected_run")
    selected_run_id = selected.get("run_id") if isinstance(selected, dict) else None
    statement = context.get("lean_statement")
    if (
        profile_item.get("case_problem_id", profile_item.get("problem_id")) != binding.get("case_problem_id")
        or context.get("case_id") != binding.get("case_id")
        or context.get("problem_id") != binding.get("case_problem_id")
        or selected_run_id != binding.get("case_run_id")
        or not isinstance(statement, str)
        or _digest_bytes(statement.encode("utf-8")) != binding.get("lean_statement_sha256")
        or _case_context_revision_sha256(context) != binding.get("case_revision_sha256")
    ):
        raise ValueError("the selected case revision, optional run lineage, provider crosswalk, or exact Lean statement no longer matches the dispatch binding")
    if str(context.get("case_id", "")).startswith("user-"):
        prepared = context.get("prepared_provider_context")
        if (
            not isinstance(prepared, dict)
            or prepared.get("state") not in {"PREPARED_NOT_SENT", "RUNS_SAVED_NO_PROVIDER_CALL", "SENT_IN_SAVED_RUNS"}
            or prepared.get("context_sha256") != binding.get("provider_context_sha256")
        ):
            raise ValueError("the user-case dispatch does not match its exact prepared provider context")


def _prepared_user_problem_case_context(
    root: Path, case_store: UserProblemCaseStore, dispatcher: ProofDeskDispatcher,
    case_id: str, run_id: str | None = None,
) -> dict[str, object]:
    record = case_store.find(case_id)
    if not case_id.startswith("user-") or record.get("case_id") != case_id:
        raise ValueError("the selected user case identity does not match its prepared record")
    source_path = _safe_local_artifact(root, str(record["source_review_path"]))
    source_raw = source_path.read_bytes()
    if _digest_bytes(source_raw) != record.get("source_review_sha256"):
        raise ValueError("the user case source review changed after preparation")
    source = json.loads(source_raw.decode("utf-8", errors="strict"))
    source_kind = source.get("source_kind")
    if source_kind == "OWNER_AUTHORED":
        expected_use_scope = {
            "local_verification": "AUTHORIZED_BY_LOCAL_OPERATOR_ACTION",
            "provider_input": "AUTHORIZED_AFTER_EXACT_REQUEST_REVIEW_AND_SEND_CONFIRMATION",
            "training": "NOT_AUTHORIZED",
            "locked_evaluation": "NOT_INCLUDED_BY_SELF_ATTESTATION",
            "public_export": "NOT_AUTHORIZED",
        }
        expected_review_status = "OWNER_SELF_ATTESTED_NOT_INDEPENDENTLY_VERIFIED"
        expected_identity_status = "UNAUTHENTICATED_LOCAL_OPERATOR"
        claim_class = "USER_AUTHORED_EXPERIMENTAL"
        provider_input_status = "PERMITTED_BY_OWNER_SELF_ATTESTATION"
        research_reason = "This owner-authored intake path has no public-source research authorization attached."
    elif source_kind == "AGENT_AUTHORED_INTEGRATION_CONTROL":
        expected_use_scope = {
            "local_verification": "AUTHORIZED_FOR_LOCAL_INTEGRATION_CANARY",
            "provider_input": "AUTHORIZED_FOR_ONE_BOUNDED_TEST_CALL_AFTER_EXACT_REVIEW_AND_SEND",
            "training": "NOT_AUTHORIZED",
            "locked_evaluation": "NOT_INCLUDED_BY_TASK_SCOPE",
            "public_export": "NOT_AUTHORIZED",
        }
        expected_review_status = "AGENT_AUTHORED_TEST_CONTROL_NOT_HUMAN_REVIEWED"
        expected_identity_status = "TASK_SCOPE_AGENT_UNAUTHENTICATED"
        claim_class = "AGENT_AUTHORED_INTEGRATION_TEST"
        provider_input_status = "PERMITTED_BY_AGENT_TASK_SCOPE"
        research_reason = "This agent-authored local integration control has no public-source research authorization attached."
        authorization = source.get("task_scope_authorization")
        authorization_sha = source.get("authorization_sha256")
        if (
            not isinstance(authorization, dict)
            or source.get("authorization_path") != record.get("authorization_path")
            or authorization_sha != record.get("authorization_sha256")
            or _digest_bytes(json.dumps(authorization, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8") + b"\n") != authorization_sha
            or authorization.get("case_statement_sha256") != record.get("statement_sha256")
            or authorization.get("profile_id") != record.get("profile_id")
            or authorization.get("max_provider_runs") != 1
            or authorization.get("training_authorized") is not False
            or authorization.get("public_export_authorized") is not False
            or authorization.get("locked_evaluation_material") is not False
        ):
            raise ValueError("the agent-authored user case has no exact immutable task-scope authorization")
    else:
        raise ValueError("the prepared user case source kind is unsupported")
    if (
        source.get("schema_version") != "mathcase-user-problem-source-review-v1"
        or source.get("case_id") != case_id
        or source.get("draft_id") != record.get("draft_id")
        or source.get("source_kind") != source_kind
        or source.get("review_status") != expected_review_status
        or source.get("identity_status") != expected_identity_status
        or source.get("signature_status") != "NONE"
        or source.get("use_scope") != expected_use_scope
        or source.get("lean_statement_sha256") != _digest_bytes(str(record["lean_statement"]).encode("utf-8"))
        or source.get("informal_statement_sha256") != _digest_bytes(str(record["informal_statement"]).encode("utf-8"))
    ):
        raise ValueError("the user case source/use review is incomplete or does not match the exact statement")

    source_ref = {"path": record["source_review_path"], "sha256": record["source_review_sha256"]}
    context: dict[str, object] = {
        "schema_version": "mathcase-case-context-v1",
        "case_id": case_id,
        "problem_id": record["problem_id"],
        "title": record["title"],
        "case_title": record["title"],
        "claim_class": claim_class,
        "informal_statement": record["informal_statement"],
        "lean_statement": record["lean_statement"],
        "statement_sha256": record["statement_sha256"],
        "case_version": record["case_version"],
        "formalization_scope": record["formalization_scope"],
        "sources": [source_ref],
        "runs": [],
        "selected_run": None,
        "attempt_events": [],
        "review_bindings": {},
        "metrics": None,
        "expositor": None,
        "dossier": None,
        "delivery_ready": False,
        "gates": {
            "source_review": expected_review_status,
            "statement_meaning_review": "PENDING",
            "proof_certification": "NOT_ESTABLISHED",
        },
        "source_review": source,
        "identity_status": record.get("identity_status", "UNAUTHENTICATED_LOCAL_OPERATOR"),
        "source_allows_provider_input": True,
        "source_provider_input_status": provider_input_status,
        "research_allowed": False,
        "research_disabled_reason": research_reason,
        "training": "NOT_AUTHORIZED",
        "public_export": "NOT_AUTHORIZED",
        "signature_status": "NONE",
    }
    revision_sha = _case_context_revision_sha256(context)
    if revision_sha != record.get("case_revision_sha256"):
        raise ValueError("the opened user case does not match its immutable prepared revision")
    prepared_context = dispatcher.prepared_user_case_provider_context(case_id)
    prepared_context_sha = prepared_context.get("context_sha256")
    if (
        prepared_context.get("case_id") != case_id
        or prepared_context.get("state") not in {"PREPARED_NOT_SENT", "RUNS_SAVED_NO_PROVIDER_CALL", "SENT_IN_SAVED_RUNS"}
        or not isinstance(prepared_context_sha, str)
        or not SOURCE_DIGEST.fullmatch(prepared_context_sha)
        or not isinstance(prepared_context.get("content"), str)
    ):
        raise ValueError("the prepared user-case provider context is unavailable or does not match the exact case")
    context["prepared_provider_context"] = prepared_context

    run_records = case_store.runs_for(case_id)
    summaries: list[dict[str, object]] = []
    events: list[dict[str, object]] = []
    expected_statement_sha = _digest_bytes(str(record["lean_statement"]).encode("utf-8"))
    context["lean_statement_sha256"] = expected_statement_sha
    expected_problem_sha = _problem_statement_digest(case_id, str(record["informal_statement"]), str(record["lean_statement"]))
    for run_record in run_records:
        summary = dispatcher.get_run(str(run_record["run_id"]))
        if summary.get("problem_id") != case_id:
            raise ValueError("a saved user case run points to a different exact problem")
        binding = summary.get("case_binding")
        if summary.get("status") == "COMPLETED" and (
            not isinstance(binding, dict)
            or binding.get("case_id") != case_id
            or binding.get("case_problem_id") != case_id
            or binding.get("case_revision_sha256") != revision_sha
            or binding.get("lean_statement_sha256") != expected_statement_sha
            or binding.get("provider_context_sha256") != prepared_context_sha
        ):
            raise ValueError("a completed user case run no longer matches its exact case revision and prepared provider context")
        attempts = summary.get("attempts") if isinstance(summary.get("attempts"), list) else []
        artifacts = summary.get("artifacts") if isinstance(summary.get("artifacts"), list) else []
        artifact_by_path = {item.get("path"): item for item in artifacts if isinstance(item, dict) and isinstance(item.get("path"), str)}
        stderr_artifact = next((item for item in artifacts if isinstance(item, dict) and isinstance(item.get("path"), str) and item["path"].endswith("/stderr.txt")), None)
        accepted_receipt: dict[str, object] | None = None
        accepted_proof: str | None = None
        accepted_proof_sha256: str | None = None
        for attempt in attempts:
            if not isinstance(attempt, dict):
                continue
            evidence_ids = attempt.get("evidence_ids") if isinstance(attempt.get("evidence_ids"), list) else []
            evidence_id = evidence_ids[0] if len(evidence_ids) == 1 and isinstance(evidence_ids[0], str) else None
            receipt_rel = f"data/local/verification/proofdesk-ui-dispatch-r1/{summary['run_id']}/lean-receipts/{evidence_id}.json" if evidence_id else None
            receipt_ref = artifact_by_path.get(receipt_rel) if receipt_rel else None
            event = {
                "event_type": "MODEL_PROOF_ATTEMPT",
                "run_id": summary["run_id"],
                "attempt_id": evidence_id,
                "started_at_utc": summary.get("started_at_utc"),
                "provider_id": summary.get("provider_id"),
                "model_id": summary.get("model_id"),
                "protocol_id": summary.get("protocol_id"),
                "outcome": attempt.get("outcome"),
                "failure_class": attempt.get("failure_class"),
                "failure_summary": attempt.get("failure_summary"),
                "cost_micros": attempt.get("cost_micros"),
                "cost_known": attempt.get("cost_known"),
            }
            if isinstance(receipt_ref, dict) and isinstance(receipt_ref.get("sha256"), str) and receipt_rel:
                event["lean_receipt_path"] = receipt_rel
                event["lean_receipt_sha256"] = receipt_ref["sha256"]
            events.append(event)
            if attempt.get("outcome") != "PASS":
                continue
            if not isinstance(receipt_ref, dict) or not isinstance(receipt_ref.get("sha256"), str) or not receipt_rel:
                raise ValueError("a user case model pass has no exact saved Lean receipt")
            receipt_path = _safe_local_artifact(root, receipt_rel)
            receipt_raw = receipt_path.read_bytes()
            if _digest_bytes(receipt_raw) != receipt_ref["sha256"]:
                raise ValueError("a user case Lean receipt changed after its run was saved")
            receipt = json.loads(receipt_raw.decode("utf-8", errors="strict"))
            proof_text = receipt.get("input_proof")
            proof_sha = _digest_bytes(proof_text.encode("utf-8")) if isinstance(proof_text, str) else None
            if (
                receipt.get("schema_version") != "mathcase-lean-verification-v3"
                or receipt.get("status") != "PASSED"
                or receipt.get("kernel_passed") is not True
                or receipt.get("axioms_passed") is not True
                or receipt.get("problem_id") != case_id
                or receipt.get("problem_statement_sha256") != expected_problem_sha
                or receipt.get("proof_sha256") != proof_sha
                or attempt.get("verified_proof_sha256") != proof_sha
                or summary.get("proof") != proof_text
            ):
                raise ValueError("the saved user case PASS does not match the exact statement, proof, kernel, and axiom receipt")
            accepted_receipt = {"path": receipt_rel, "sha256": receipt_ref["sha256"], "lean_version": receipt.get("lean_version"), "observed_axioms": receipt.get("observed_axioms")}
            accepted_proof = proof_text
            accepted_proof_sha256 = proof_sha

        solved = summary.get("solved") is True and accepted_receipt is not None
        execution_status = summary.get("status")
        proof_status = "PASSED" if solved else (
            "PENDING" if execution_status in {"PENDING", "RUNNING"} else "NOT_VERIFIED"
        )
        summaries.append({
            "run_id": summary["run_id"],
            "recorded_at_utc": summary.get("completed_at_utc") or summary.get("started_at_utc") or run_record.get("recorded_at_utc"),
            "status": proof_status,
            "proof_status": proof_status,
            "execution_status": execution_status,
            "solved": solved,
            "kernel_passed": solved,
            "axioms_passed": solved,
            "proof": accepted_proof if accepted_receipt is not None else summary.get("proof"),
            "proof_sha256": accepted_proof_sha256 if accepted_receipt is not None else (
                _digest_bytes(summary["proof"].encode("utf-8")) if isinstance(summary.get("proof"), str) else None
            ),
            "receipt_path": accepted_receipt.get("path") if isinstance(accepted_receipt, dict) else summary.get("completion_receipt"),
            "receipt_sha256": accepted_receipt.get("sha256") if isinstance(accepted_receipt, dict) else summary.get("completion_receipt_sha256"),
            "lean_receipt_path": accepted_receipt.get("path") if isinstance(accepted_receipt, dict) else None,
            "lean_receipt_sha256": accepted_receipt.get("sha256") if isinstance(accepted_receipt, dict) else None,
            "provider_id": summary.get("provider_id"),
            "model_id": summary.get("model_id"),
            "provider_call_count": summary.get("provider_call_count"),
            "failure": summary.get("failure"),
            "stderr_path": stderr_artifact.get("path") if isinstance(stderr_artifact, dict) else None,
            "stderr_sha256": stderr_artifact.get("sha256") if isinstance(stderr_artifact, dict) else None,
            "completion_receipt": summary.get("completion_receipt"),
            "completion_receipt_sha256": summary.get("completion_receipt_sha256"),
            "accepted_receipt": accepted_receipt,
            "candidate_proof": accepted_proof if accepted_receipt is not None else summary.get("proof"),
            "candidate_proof_sha256": accepted_proof_sha256 if accepted_receipt is not None else (
                _digest_bytes(summary["proof"].encode("utf-8")) if isinstance(summary.get("proof"), str) else None
            ),
        })
    summaries.sort(key=lambda item: str(item.get("recorded_at_utc") or ""))
    selected = next((item for item in summaries if item.get("run_id") == run_id), None) if run_id else (summaries[-1] if summaries else None)
    if run_id and selected is None:
        raise ValueError("the requested provider run is not linked to this prepared user case")
    if selected is not None:
        context["selected_run"] = {
            "run_id": selected["run_id"],
            "recorded_at_utc": selected.get("recorded_at_utc"),
            "proof": selected.get("candidate_proof") if selected.get("solved") is True else "",
            "proof_sha256": selected.get("candidate_proof_sha256") if selected.get("solved") is True else "",
            "statement_sha256": expected_problem_sha,
            "receipt_path": selected.get("accepted_receipt", {}).get("path") if isinstance(selected.get("accepted_receipt"), dict) else selected.get("completion_receipt"),
            "receipt_sha256": selected.get("accepted_receipt", {}).get("sha256") if isinstance(selected.get("accepted_receipt"), dict) else selected.get("completion_receipt_sha256"),
            "status": selected.get("proof_status"),
            "proof_status": selected.get("proof_status"),
            "execution_status": selected.get("execution_status"),
            "kernel_passed": selected.get("solved") is True,
            "axioms_passed": selected.get("solved") is True,
            "observed_axioms": selected.get("accepted_receipt", {}).get("observed_axioms") if isinstance(selected.get("accepted_receipt"), dict) else None,
            "lean_version": selected.get("accepted_receipt", {}).get("lean_version") if isinstance(selected.get("accepted_receipt"), dict) else None,
            "provider_id": selected.get("provider_id"),
            "model_id": selected.get("model_id"),
            "solved": selected.get("solved") is True,
        }
        context["run_id"] = selected["run_id"]
    context["runs"] = summaries
    context["attempt_events"] = events
    return context


def _current_case_context(
    root: Path, case_id: str, run_id: str | None = None, *,
    user_case_store: UserProblemCaseStore | None = None,
    dispatcher: ProofDeskDispatcher | None = None,
) -> dict[str, object]:
    if case_id.startswith("user-"):
        case_dispatcher = dispatcher or ProofDeskDispatcher(root, campaign_budget_status=lambda: _campaign_dispatch_budget_status(root))
        case_store = user_case_store or UserProblemCaseStore(root)
        return _prepared_user_problem_case_context(case_store.root, case_store, case_dispatcher, case_id, run_id)
    if case_id.startswith("campaign-"):
        return _campaign_case_context(root, case_id, run_id)
    if case_id == BOOTSTRAP_CASE_ID:
        return _load_bootstrap_case(root, run_id)
    if case_id == "forall-n-n-eq-n":
        return _load_proofdesk_forall_case(root, run_id)
    if case_id != "nat-add-assoc":
        if run_id is not None:
            raise ValueError("local arithmetic cases do not have proof run identities")
        return read_local_computation_case(root, case_id)

    # A clean clone cannot see the private M4/M6 audit tree. Serve only this
    # exact read-only saved-check summary there; if the pinned local audit is
    # present, its existing full receipt-bound path remains authoritative.
    if not (root / REVIEW_AUDIT_PATH).is_file():
        return _portable_nat_add_assoc_context(root, run_id)

    bindings = _current_review_bindings(root, case_id, run_id)
    audit, audit_sha = _read_pinned_json(root, REVIEW_AUDIT_PATH, REVIEW_AUDIT_SHA256)
    problem = audit["problem"]
    m4 = audit["m4"]
    m6 = audit["m6"]
    refs = {item["path"]: item["sha256"] for item in audit["artifact_refs"] if isinstance(item, dict)}
    lean_path = m4["lean_receipt_path"]
    metrics_path = m6["receipt_path"]
    m6_run_path = m6["run_receipt_path"]
    lean, lean_sha = _read_pinned_json(root, lean_path, refs[lean_path])
    metrics, metrics_sha = _read_pinned_json(root, metrics_path, refs[metrics_path])
    m6_run, m6_run_sha = _read_pinned_json(root, m6_run_path, refs[m6_run_path])
    handoff, dossier, candidate_exposition, handoff_sha = _read_nat_case_handoff(root, problem, m4, m6, refs)
    draft_text = "Five locally authored explanation drafts are bound to this exact M4 proof and M6 chain; they remain unreviewed candidate material."
    selected_run_id = m4["run_id"]
    if run_id is not None and run_id != selected_run_id:
        raise ValueError("selected Nat.add_assoc run is not available in the pinned record")
    original_source = _read_case_source_view(root, "nat-add-assoc", problem["id"], NAT_CORE_SOURCE_ID)
    lean_version = lean.get("lean_version")
    if not isinstance(lean_version, str) or original_source["revision"] not in lean_version:
        raise ValueError("Nat.add_assoc source commit does not match the selected M4 Lean toolchain")
    source_type = original_source.get("declaration_type_text")
    case_type = problem.get("lean_statement")
    if not isinstance(source_type, str) or not isinstance(case_type, str):
        raise ValueError("Nat.add_assoc source or case statement has no type text")
    source_statement_match = _normalize_lean_type_text(source_type) == _normalize_lean_type_text(case_type)
    if not source_statement_match:
        raise ValueError("Nat.add_assoc exact source declaration type differs from the case statement text")
    return {
        "schema_version": "mathcase-case-context-v1",
        "case_id": "nat-add-assoc",
        "problem_id": problem["id"],
        "title": problem["title"],
        "claim_class": audit["claim_class"],
        "informal_statement": problem["informal_statement"],
        "lean_statement": problem["lean_statement"],
        "statement_sha256": problem["statement_sha256"],
        "original_source": original_source,
        "source_statement_comparison": {
            "method": "WHITESPACE_AND_FORALL_GLYPH_NORMALIZED_TEXT_ONLY",
            "status": "TEXT_MATCH",
            "semantic_review": "NOT_PERFORMED",
        },
        "runs": [{
            "run_id": selected_run_id,
            "recorded_at_utc": lean.get("recorded_at_utc"),
            "proof": m4["proof"],
            "proof_sha256": m4["proof_sha256"],
            "statement_sha256": problem["statement_sha256"],
            "receipt_path": lean_path,
            "receipt_sha256": lean_sha,
            "status": lean.get("status"),
            "kernel_passed": lean.get("kernel_passed"),
            "axioms_passed": lean.get("axioms_passed"),
            "observed_axioms": lean.get("observed_axioms"),
            "lean_version": lean.get("lean_version"),
        }],
        "selected_run": {
            "run_id": selected_run_id,
            "recorded_at_utc": lean.get("recorded_at_utc"),
            "proof": m4["proof"],
            "proof_sha256": m4["proof_sha256"],
            "statement_sha256": problem["statement_sha256"],
            "receipt_path": lean_path,
            "receipt_sha256": lean_sha,
            "status": lean.get("status"),
            "kernel_passed": lean.get("kernel_passed"),
            "axioms_passed": lean.get("axioms_passed"),
            "observed_axioms": lean.get("observed_axioms"),
            "lean_version": lean.get("lean_version"),
        },
        "metrics": {
            "state": m6.get("status"),
            "metrics": metrics.get("metrics"),
            "scope_note": metrics.get("scope_note"),
            "receipt_path": metrics_path,
            "receipt_sha256": metrics_sha,
            "run_receipt_path": m6_run_path,
            "run_receipt_sha256": m6_run_sha,
            "linked_to_m4_generated_source": m6.get("linked_to_m4_generated_source"),
            "run_status": m6_run.get("status"),
        },
        "expositor": {
            "state": "CANDIDATE_ONLY_NOT_ACCEPTED_M7",
            "text": draft_text,
            "exposition_sha256": candidate_exposition["artifact_sha256"],
            "parent_run_id": candidate_exposition["run_id"],
            "parent_proof_sha256": candidate_exposition["proof_sha256"],
            "origin": candidate_exposition["origin"],
            "author_run_status": "NOT_LINKED",
            "author_identity_status": "UNVERIFIED",
            "review_status": candidate_exposition["review"]["status"],
            "identity_status": candidate_exposition["review"]["identity_status"],
            "gate_effect": candidate_exposition["gate_effect"],
            "tiers": candidate_exposition["tiers"],
            "candidate_artifact_path": candidate_exposition["artifact_path"],
            "candidate_artifact_sha256": candidate_exposition["artifact_sha256"],
        },
        "dossier": {
            "schema_version": dossier["schema_version"],
            "path": handoff["dossier"]["path"],
            "sha256": handoff["dossier"]["sha256"],
            "readiness": "NOT_READY",
            "signed": False,
        },
        "delivery_ready": False,
        "gates": {"M4": "VERIFIED_EXECUTION_BOUND", "M6": m6.get("status"), "M7": "NOT_ACCEPTED_CANDIDATE_ONLY"},
        "review_bindings": bindings,
        "sources": [
            {"path": REVIEW_AUDIT_PATH, "sha256": audit_sha},
            {"path": lean_path, "sha256": lean_sha},
            {"path": metrics_path, "sha256": metrics_sha},
            {"path": m6_run_path, "sha256": m6_run_sha},
            {"path": NAT_CASE_HANDOFF_PATH, "sha256": handoff_sha},
            {"path": handoff["candidate_exposition"]["path"], "sha256": handoff["candidate_exposition"]["sha256"]},
            {"path": handoff["previous_candidate_exposition"]["path"], "sha256": handoff["previous_candidate_exposition"]["sha256"]},
            {"path": handoff["dossier"]["path"], "sha256": handoff["dossier"]["sha256"]},
            {"path": handoff["source_html_snapshot"]["path"], "sha256": handoff["source_html_snapshot"]["sha256"]},
            {"path": original_source["local_artifact_path"], "sha256": original_source["source_sha256"]},
            {"path": original_source["local_license_path"], "sha256": original_source["license_sha256"]},
            {"path": original_source["acquisition_receipt_path"], "sha256": original_source["acquisition_receipt_sha256"]},
        ],
    }


def _portable_nat_add_assoc_context(root: Path, run_id: str | None = None) -> dict[str, object]:
    path = _safe_repo_file(root, NAT_PUBLIC_SAVED_CHECK_PATH)
    raw = path.read_bytes()
    snapshot_sha = _digest_bytes(raw)
    if snapshot_sha != NAT_PUBLIC_SAVED_CHECK_SHA256:
        raise ValueError("portable Nat.add_assoc saved-check summary changed")
    record = json.loads(raw)
    expected_record_keys = {
        "schema_version", "record_kind", "case_id", "problem_id", "title", "claim_class",
        "informal_statement", "lean_statement", "statement_sha256", "selected_run", "source",
        "scope_note", "delivery_ready",
    }
    if not isinstance(record, dict) or set(record) != expected_record_keys:
        raise ValueError("portable Nat.add_assoc saved-check summary has an unsupported shape")
    if record.get("schema_version") != "mathcase-public-saved-check-v1" or \
       record.get("record_kind") != "SAVED_LEAN_CHECK_SUMMARY" or \
       record.get("case_id") != "nat-add-assoc" or record.get("problem_id") != "nat-add-assoc" or \
       record.get("claim_class") != "BOOTSTRAP/CALIBRATION" or record.get("delivery_ready") is not False:
        raise ValueError("portable Nat.add_assoc saved-check summary has an unsupported identity")
    if record.get("statement_sha256") != "8816c65f45064123345aea7ca20f21156c001e8fdb1c5897b88e5123f32cd7b6":
        raise ValueError("portable Nat.add_assoc statement binding changed")

    selected = record.get("selected_run")
    expected_run_keys = {
        "run_id", "recorded_at_utc", "proof", "proof_sha256", "status", "kernel_passed",
        "axioms_passed", "observed_axioms", "lean_version", "original_receipt_sha256",
    }
    if not isinstance(selected, dict) or set(selected) != expected_run_keys:
        raise ValueError("portable Nat.add_assoc saved run has an unsupported shape")
    proof = selected.get("proof")
    if selected.get("run_id") != NAT_PUBLIC_SAVED_CHECK_RUN_ID or \
       (run_id is not None and run_id != NAT_PUBLIC_SAVED_CHECK_RUN_ID):
        raise ValueError("selected Nat.add_assoc run is not available in the portable saved record")
    if not isinstance(proof, str) or _digest_bytes(proof.encode("utf-8")) != selected.get("proof_sha256") or \
       selected.get("status") != "PASSED" or selected.get("kernel_passed") is not True or \
       selected.get("axioms_passed") is not True or \
       selected.get("original_receipt_sha256") != NAT_PUBLIC_SAVED_CHECK_RECEIPT_SHA256:
        raise ValueError("portable Nat.add_assoc saved-check binding is inconsistent")

    source = record.get("source")
    expected_source_keys = {
        "source_id", "repository", "revision", "path", "declaration", "declaration_line",
        "declaration_header", "source_sha256", "license", "license_url", "license_sha256",
        "acquisition_receipt_sha256", "statement_fidelity", "semantic_review",
    }
    if not isinstance(source, dict) or set(source) != expected_source_keys or \
       source.get("source_id") != "lean4_nat_basic_v4331" or \
       source.get("repository") != "leanprover/lean4" or \
       source.get("revision") != "819816b2e0a3bf405af45ae5c7af2491d8f5bee6" or \
       source.get("path") != "src/Init/Data/Nat/Basic.lean" or \
       source.get("declaration") != "Nat.add_assoc" or source.get("declaration_line") != 166 or \
       source.get("license") != "Apache-2.0" or source.get("statement_fidelity") != "NOT_REVIEWED" or \
       source.get("semantic_review") != "NOT_PERFORMED":
        raise ValueError("portable Nat.add_assoc source binding is inconsistent")
    header = source.get("declaration_header")
    statement = record.get("lean_statement")
    if not isinstance(header, str) or not isinstance(statement, str) or " : " not in header or \
       _normalize_lean_type_text(header.split(" : ", 1)[1]) != _normalize_lean_type_text(statement):
        raise ValueError("portable Nat.add_assoc source and formal statement text do not match")

    source_url = (
        "https://github.com/" + str(source["repository"]) + "/blob/" + str(source["revision"]) +
        "/" + str(source["path"]) + "#L" + str(source["declaration_line"])
    )
    original_source = {
        "schema_version": "mathcase-case-source-view-v1",
        "source_id": source["source_id"],
        "repository": source["repository"],
        "revision": source["revision"],
        "locator": source["path"],
        "url": source_url,
        "source_sha256": source["source_sha256"],
        "license": source["license"],
        "license_url": source["license_url"],
        "license_sha256": source["license_sha256"],
        "acquisition_receipt_sha256": source["acquisition_receipt_sha256"],
        "declaration_name": source["declaration"],
        "declaration_line_start": source["declaration_line"],
        "declaration_line_end": source["declaration_line"],
        "declaration_header_text": header,
        "statement_fidelity": source["statement_fidelity"],
        "evidence_class": "PORTABLE_SOURCE_METADATA",
        "gate_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
    }
    saved_run = {
        "run_id": selected["run_id"],
        "recorded_at_utc": selected["recorded_at_utc"],
        "proof": proof,
        "proof_sha256": selected["proof_sha256"],
        "statement_sha256": record["statement_sha256"],
        "proof_status": "PASSED",
        "status": "PASSED",
        "kernel_passed": True,
        "axioms_passed": True,
        "axiom_policy_status": "PASSED",
        "observed_axioms": selected["observed_axioms"],
        "lean_version": selected["lean_version"],
        "receipt_sha256": selected["original_receipt_sha256"],
        "receipt_path": None,
        "evidence_kind": "SAVED_LEAN_CHECK_SUMMARY",
    }
    return {
        "schema_version": "mathcase-case-context-v1",
        "case_id": "nat-add-assoc",
        "problem_id": "nat-add-assoc",
        "title": record["title"],
        "claim_class": record["claim_class"],
        "informal_statement": record["informal_statement"],
        "lean_statement": statement,
        "statement_sha256": record["statement_sha256"],
        "original_source": original_source,
        "source_statement_comparison": {
            "method": "WHITESPACE_AND_FORALL_GLYPH_NORMALIZED_EMBEDDED_TEXT_ONLY",
            "status": "EMBEDDED_TEXT_MATCH",
            "semantic_review": "NOT_PERFORMED",
        },
        "runs": [saved_run],
        "selected_run": saved_run,
        "metrics": {"state": "NOT_INCLUDED", "scope_note": "Proof-structure metrics are not part of this public saved-check summary."},
        "expositor": None,
        "dossier": {"readiness": "NOT_INCLUDED", "signed": False},
        "delivery_ready": False,
        "gates": {"M4": "SAVED_CHECK_SUMMARY", "M6": "NOT_INCLUDED", "M7": "NOT_INCLUDED"},
        "review_bindings": {},
        "sources": [{"path": NAT_PUBLIC_SAVED_CHECK_PATH, "sha256": snapshot_sha}],
        "portable_case_snapshot": {
            "path": NAT_PUBLIC_SAVED_CHECK_PATH,
            "sha256": snapshot_sha,
            "scope_note": record["scope_note"],
        },
        "why_this_case": record["scope_note"],
    }


def _safe_local_artifact(root: Path, relative_path: str, base_path: str | None = None) -> Path:
    if not isinstance(relative_path, str) or not relative_path or "\\" in relative_path or "\x00" in relative_path:
        raise ValueError("library artifact path is invalid")
    candidate = Path(relative_path)
    if candidate.is_absolute():
        raise ValueError("library artifact path must be relative")
    root_path = root.resolve(strict=True)
    bases = [root_path]
    if base_path:
        base = _safe_local_artifact(root_path, base_path)
        bases.insert(0, base.parent)
        bases.insert(1, base.parent.parent)
    for directory in bases:
        raw_path = directory / candidate
        try:
            # Resolve lexical ``..`` before walking parents. Walking the raw
            # path can otherwise escape above the root and never reach it (for
            # example, ``../project/record.json`` when it resolves back inside
            # the project). Keep both lexical and resolved containment checks:
            # the former exposes symlink components; the latter catches links
            # that resolve outside the checkout.
            lexical_path = Path(os.path.abspath(raw_path))
            lexical_path.relative_to(root_path)
            path = raw_path.resolve(strict=True)
            path.relative_to(root_path)
        except (OSError, ValueError):
            continue
        cursor = lexical_path
        safe = True
        while cursor != root_path:
            if cursor.is_symlink():
                safe = False
                break
            cursor = cursor.parent
        if safe and path.is_file():
            return path
    portable_path = _portable_case_artifact(root_path, relative_path)
    if portable_path is not None:
        return portable_path
    if not os.path.lexists(root_path / relative_path):
        try:
            return portable_artifact_path(root_path, relative_path)
        except (OSError, ValueError, KeyError, TypeError):
            pass
    raise ValueError("library artifact is unavailable or outside the local project")


def _safe_repo_file(root: Path, relative_path: str) -> Path:
    if not isinstance(relative_path, str) or not relative_path or "\\" in relative_path or "\x00" in relative_path:
        raise ValueError("portable package path is invalid")
    candidate = Path(relative_path)
    if candidate.is_absolute() or any(part in {"", ".", ".."} for part in candidate.parts):
        raise ValueError("portable package path must be a normalized relative path")
    root_path = root.resolve(strict=True)
    raw_path = root_path / candidate
    lexical_path = Path(os.path.abspath(raw_path))
    try:
        lexical_path.relative_to(root_path)
        path = raw_path.resolve(strict=True)
        path.relative_to(root_path)
    except (OSError, ValueError) as exc:
        if not os.path.lexists(raw_path):
            try:
                return portable_artifact_path(root_path, relative_path)
            except (OSError, ValueError, KeyError, TypeError):
                pass
        raise ValueError("portable package artifact is unavailable or outside the local project") from exc
    cursor = lexical_path
    while cursor != root_path:
        if cursor.is_symlink():
            raise ValueError("portable package artifact crosses a symbolic link")
        cursor = cursor.parent
    if not path.is_file():
        raise ValueError("portable package artifact is not a file")
    return path


def _portable_case_manifest(root: Path) -> dict[str, object] | None:
    manifest_path = root / PORTABLE_CASE_LIBRARY_MANIFEST_PATH
    if not manifest_path.is_file():
        return None
    raw = _safe_repo_file(root, PORTABLE_CASE_LIBRARY_MANIFEST_PATH).read_bytes()
    try:
        manifest = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("portable case library manifest is invalid JSON") from exc
    scope = manifest.get("scope") if isinstance(manifest, dict) else None
    if (
        not isinstance(manifest, dict)
        or manifest.get("schema_version") != "mathcase-portable-case-library-v1"
        or manifest.get("status") != "SAVED_EXAMPLES_NOT_TRAINING_OR_EVALUATION"
        or not isinstance(scope, dict)
        or scope.get("mode") != "SAVED_EXAMPLES_NOT_TRAINING_OR_EVALUATION"
    ):
        raise ValueError("portable case library manifest has an unsupported scope")
    package_sha256 = manifest.get("package_sha256")
    unsigned = dict(manifest)
    unsigned.pop("package_sha256", None)
    if not isinstance(package_sha256, str) or _digest_bytes(_canonical_json_bytes(unsigned)) != package_sha256:
        raise ValueError("portable case library manifest digest does not match")
    evidence = manifest.get("evidence")
    if not isinstance(evidence, list):
        raise ValueError("portable case library manifest has no evidence map")
    seen_paths: set[str] = set()
    for entry in evidence:
        if not isinstance(entry, dict):
            raise ValueError("portable case library evidence entry is invalid")
        original_path = entry.get("original_path")
        package_path = entry.get("package_path")
        digest = entry.get("sha256")
        if (
            not isinstance(original_path, str)
            or not isinstance(package_path, str)
            or not isinstance(digest, str)
            or not SOURCE_DIGEST.fullmatch(digest)
            or original_path in seen_paths
            or "\\" in original_path
            or Path(original_path).is_absolute()
            or any(part in {"", ".", ".."} for part in Path(original_path).parts)
            or not package_path.startswith(f"{PORTABLE_CASE_LIBRARY_DIR}/evidence/")
            or "\\" in package_path
            or any(part in {"", ".", ".."} for part in Path(package_path).parts)
        ):
            raise ValueError("portable case library evidence map is unsafe or duplicated")
        seen_paths.add(original_path)
    return manifest


def _portable_case_artifact(root: Path, original_path: str) -> Path | None:
    manifest = _portable_case_manifest(root)
    if manifest is None:
        return None
    evidence = manifest.get("evidence")
    assert isinstance(evidence, list)
    entry = next((row for row in evidence if isinstance(row, dict) and row.get("original_path") == original_path), None)
    if entry is None:
        return None
    package_path = entry.get("package_path")
    expected_sha256 = entry.get("sha256")
    assert isinstance(package_path, str) and isinstance(expected_sha256, str)
    path = _safe_repo_file(root, package_path)
    if _digest_bytes(path.read_bytes()) != expected_sha256:
        raise ValueError("portable case library evidence digest does not match its manifest")
    return path


def _portable_case_evidence_routes(root: Path) -> set[str]:
    """Return only manifest-pinned portable evidence paths that still match their bytes."""
    manifest = _portable_case_manifest(root)
    if manifest is None:
        return set()
    evidence = manifest.get("evidence")
    assert isinstance(evidence, list)
    routes: set[str] = set()
    for entry in evidence:
        assert isinstance(entry, dict)
        original_path = entry["original_path"]
        package_path = entry["package_path"]
        expected_sha256 = entry["sha256"]
        assert isinstance(original_path, str) and isinstance(package_path, str) and isinstance(expected_sha256, str)
        try:
            matches = _digest_bytes(_safe_repo_file(root, package_path).read_bytes()) == expected_sha256
        except (OSError, ValueError):
            continue
        if matches:
            routes.add(original_path)
    return routes


def _portable_case_library_snapshot(root: Path) -> dict[str, object] | None:
    manifest = _portable_case_manifest(root)
    if manifest is None:
        return None
    library_ref = manifest.get("library")
    if not isinstance(library_ref, dict):
        raise ValueError("portable case library manifest has no library snapshot")
    path, expected_sha256 = library_ref.get("path"), library_ref.get("sha256")
    if (
        not isinstance(path, str)
        or not path.startswith(f"{PORTABLE_CASE_LIBRARY_DIR}/")
        or not isinstance(expected_sha256, str)
        or not SOURCE_DIGEST.fullmatch(expected_sha256)
    ):
        raise ValueError("portable case library snapshot reference is invalid")
    raw = _safe_repo_file(root, path).read_bytes()
    if _digest_bytes(raw) != expected_sha256:
        raise ValueError("portable case library snapshot digest does not match")
    try:
        library = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("portable case library snapshot is invalid JSON") from exc
    scope = library.get("scope") if isinstance(library, dict) else None
    if (
        not isinstance(library, dict)
        or library.get("schema_version") != "mathcase-case-library-v1"
        or not isinstance(scope, dict)
        or scope.get("mode") != "SAVED_EXAMPLES_NOT_TRAINING_OR_EVALUATION"
        or not isinstance(library.get("records"), list)
        or not isinstance(library.get("pair_bank"), dict)
    ):
        raise ValueError("portable case library snapshot has an unsupported shape")
    return library


def _portable_case_library_item(root: Path, item_id: str) -> dict[str, object] | None:
    manifest = _portable_case_manifest(root)
    if manifest is None:
        return None
    items = manifest.get("items")
    if not isinstance(items, dict):
        raise ValueError("portable case library manifest has no item map")
    item_ref = items.get(item_id)
    if item_ref is None:
        raise ValueError("library item is not included in the portable rehearsal package")
    if not isinstance(item_ref, dict):
        raise ValueError("portable case library item reference is invalid")
    path, expected_sha256 = item_ref.get("path"), item_ref.get("sha256")
    if (
        not isinstance(path, str)
        or not path.startswith(f"{PORTABLE_CASE_LIBRARY_DIR}/items/")
        or not isinstance(expected_sha256, str)
        or not SOURCE_DIGEST.fullmatch(expected_sha256)
    ):
        raise ValueError("portable case library item reference is unsafe")
    raw = _safe_repo_file(root, path).read_bytes()
    if _digest_bytes(raw) != expected_sha256:
        raise ValueError("portable case library item digest does not match")
    try:
        item = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("portable case library item is invalid JSON") from exc
    if not isinstance(item, dict) or item.get("case_id") != item_id:
        raise ValueError("portable case library item identity does not match its key")
    return item


def _read_local_json(root: Path, relative_path: str, expected_sha256: str | None = None, base_path: str | None = None) -> tuple[dict[str, object], str, str]:
    path = _safe_local_artifact(root, relative_path, base_path)
    raw = path.read_bytes()
    actual = _digest_bytes(raw)
    if expected_sha256 is not None and (not SOURCE_DIGEST.fullmatch(expected_sha256) or actual != expected_sha256):
        raise ValueError("library artifact digest does not match its source record")
    try:
        value = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("library artifact is not valid JSON") from exc
    if not isinstance(value, dict):
        raise ValueError("library artifact is not a JSON object")
    return value, actual, path.relative_to(root.resolve()).as_posix()


def _m3_reconciled_registry(root: Path) -> tuple[list[dict[str, object]], dict[str, object], str, str]:
    reconciliation, reconciliation_sha, _ = _read_local_json(root, M3_PAIR_RECONCILIATION_PATH)
    inputs = reconciliation.get("inputs")
    results = reconciliation.get("results")
    current = inputs.get("current_append_only_pair_registry") if isinstance(inputs, dict) else None
    if not isinstance(current, dict) or not isinstance(results, dict):
        raise ValueError("M3 reconciliation is missing its registry binding")
    registry_path = current.get("path")
    registry = _safe_local_artifact(root, registry_path) if isinstance(registry_path, str) else None
    if registry is None:
        raise ValueError("M3 pair registry is unavailable")
    raw = registry.read_bytes()
    registry_sha = _digest_bytes(raw)
    if registry_sha != current.get("sha256"):
        raise ValueError("M3 pair registry changed since its reconciliation")
    try:
        rows = [json.loads(line) for line in raw.splitlines() if line.strip()]
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("M3 pair registry contains malformed JSON") from exc
    if len(rows) != current.get("event_lines") or len(rows) != results.get("registry_event_lines"):
        raise ValueError("M3 pair registry line count differs from its reconciliation")
    accepted = [row for row in rows if isinstance(row, dict) and row.get("accepted_pair_count_delta") == 1]
    identities = [row.get("pair_id") for row in accepted]
    if (
        reconciliation.get("status") != "RECONCILED_60_OF_60"
        or results.get("current_execution_backed_unique_pairs") != 60
        or len(accepted) != current.get("unique_positive_pair_ids")
        or len(accepted) != results.get("accepted_delta_events_total")
        or len(set(identities)) != len(identities)
        or sum(row.get("accepted_pair_count_delta", 0) for row in accepted) != results.get("accepted_delta_sum")
    ):
        raise ValueError("M3 pair acceptance events do not reconcile to the current 60-pair record")
    registry_relative = registry.relative_to(root.resolve()).as_posix()
    return accepted, reconciliation, reconciliation_sha, registry_relative


def _artifact_reference(value: object, base_path: str) -> str:
    if not isinstance(value, str) or not value:
        raise ValueError("library evidence link is missing an artifact path")
    _, _, relative = _read_local_json(ROOT, value, base_path=base_path)
    return relative


def _verified_m3_pair_detail(root: Path, event: dict[str, object]) -> dict[str, object] | None:
    link_path = event.get("pair_measurement_link_path")
    link_sha = event.get("pair_measurement_link_sha256")
    validation_path = event.get("pair_acceptance_validation_receipt_path")
    validation_sha = event.get("pair_acceptance_validation_receipt_sha256")
    if not all(isinstance(value, str) for value in (link_path, link_sha, validation_path, validation_sha)):
        return None
    link, checked_link_sha, link_relative = _read_local_json(root, link_path, link_sha)
    validation, checked_validation_sha, validation_relative = _read_local_json(root, validation_path, validation_sha)
    pair_id = event.get("pair_id")
    if link.get("pair_id") != pair_id or validation.get("pair_id") != pair_id:
        raise ValueError("M3 pair links disagree on pair identity")
    if validation.get("status") != "PASS_TWICE_REPLAY_PLUS_AXIOM_AUDIT_AND_MEASUREMENT_LINKAGE":
        raise ValueError("M3 pair acceptance validation is not a passing typed receipt")
    checks = validation.get("checks")
    if not isinstance(checks, dict) or not checks or any(value is not True for value in checks.values()):
        raise ValueError("M3 pair acceptance validation has an incomplete or failed check")

    measurement_path = link.get("measurement_path")
    measurement_sha = link.get("measurement_sha256")
    taste_path = link.get("taste_labels_path", link.get("taste_label_path"))
    taste_sha = link.get("taste_labels_sha256", link.get("taste_label_sha256"))
    measurement, measurement_actual, measurement_relative = _read_local_json(root, measurement_path, measurement_sha, link_relative)
    taste, taste_actual, taste_relative = _read_local_json(root, taste_path, taste_sha, link_relative)
    if measurement.get("pair_id") != pair_id:
        raise ValueError("M3 pair label or vector belongs to a different item")
    label_record: dict[str, object] = taste
    if isinstance(taste.get("records"), list):
        label_record = next((item for item in taste["records"] if isinstance(item, dict) and isinstance(item.get("pair"), dict) and item["pair"].get("pair_id") == pair_id), {})
    elif taste.get("pair_id") != pair_id:
        raise ValueError("M3 pair label belongs to a different item")
    pair_fields = label_record.get("pair") if isinstance(label_record.get("pair"), dict) else {}
    source = label_record.get("source")
    proofs = label_record.get("proofs") if isinstance(label_record.get("proofs"), dict) else pair_fields
    statement = label_record.get("statement")
    statement_state = "BOUND_IN_TASTE_LABEL"
    if not isinstance(source, dict) or not isinstance(proofs, dict):
        raise ValueError("M3 pair taste record is incomplete")
    if not isinstance(statement, dict):
        # Older level-0 pair records keep the exact Lean statement only in the
        # source catalog snapshot. Reopen it from the replay receipt's attempt
        # directory, bound by the receipt's catalog-snapshot digest.
        first_replay = replay_records[0] if isinstance((replay_records := validation.get("replay_run_receipts")), list) and replay_records else None
        if not isinstance(first_replay, dict):
            raise ValueError("M3 pair has no replay from which to reopen its pinned statement")
        first_receipt, _, first_receipt_relative = _read_local_json(root, first_replay.get("receipt_path"), first_replay.get("receipt_sha256"), validation_relative)
        receipt_file = _safe_local_artifact(root, first_receipt_relative)
        catalog_file = receipt_file.parent.parent / "catalog.snapshot.json"
        catalog_relative = catalog_file.relative_to(root.resolve()).as_posix()
        catalog, _, _ = _read_local_json(root, catalog_relative, first_receipt.get("catalog_snapshot_file_sha256"))
        catalog_source = catalog if catalog.get("source_id") == event.get("source_id") else next(
            (item for item in catalog.get("sources", []) if isinstance(item, dict) and item.get("id") == event.get("source_id")),
            None,
        )
        if not isinstance(catalog_source, dict) or (
            catalog_source.get("revision", catalog_source.get("pinned_revision")) != event.get("source_revision")
            or catalog_source.get("content_sha256", catalog_source.get("source_sha256")) != event.get("source_sha256")
            or catalog_source.get("item_locator", catalog_source.get("source_path")) != event.get("source_path")
        ):
            raise ValueError("M3 pair catalog snapshot does not match the accepted source revision")
        statement_text = catalog.get("source_statement")
        statement_sha = catalog.get("source_statement_sha256")
        if isinstance(statement_text, str) and statement_sha == _digest_bytes(statement_text.encode("utf-8")):
            statement = {"text": statement_text, "sha256": statement_sha}
            statement_state = "BOUND_IN_CATALOG_SNAPSHOT"
        else:
            statement = {"text": None, "sha256": None}
            statement_state = "NOT_PRESENT_IN_SAVED_CATALOG_SNAPSHOT"
    if not isinstance(statement, dict):
        raise ValueError("M3 pair statement is unavailable")
    if "before" not in proofs and isinstance(pair_fields, dict):
        proofs = {
            "before": pair_fields.get("before_proof"),
            "before_sha256": pair_fields.get("before_proof_sha256"),
            "after": pair_fields.get("after_proof"),
            "after_sha256": pair_fields.get("after_proof_sha256"),
        }
    if (
        source.get("revision") != event.get("source_revision")
        or source.get("content_sha256") != event.get("source_sha256")
        or source.get("rights_evidence_id") != event.get("rights_evidence_id")
        or source.get("rights_evidence_sha256") != event.get("rights_evidence_sha256")
        or (isinstance(statement.get("text"), str) and statement.get("sha256") != _digest_bytes(statement["text"].encode("utf-8")))
        or (statement.get("text") is None and statement.get("sha256") is not None)
    ):
        raise ValueError("M3 pair source, rights, or statement pin does not agree")
    for side in ("before", "after"):
        proof_text = proofs.get(side)
        proof_sha = proofs.get(f"{side}_sha256")
        if not isinstance(proof_text, str) or proof_sha != _digest_bytes(proof_text.encode("utf-8")):
            raise ValueError("M3 pair proof text does not match its recorded digest")

    replay_records = validation.get("replay_run_receipts")
    if not isinstance(replay_records, list) or len(replay_records) != 2:
        raise ValueError("M3 pair validation does not bind exactly two replays")
    if len({item.get("receipt_path") for item in replay_records if isinstance(item, dict)}) != 2:
        raise ValueError("M3 pair replays are not distinct")
    verified_replays = []
    for replay in replay_records:
        if not isinstance(replay, dict) or replay.get("status") != "EXECUTED_PASS":
            raise ValueError("M3 pair contains a replay that did not pass")
        receipt, receipt_sha, receipt_relative = _read_local_json(root, replay.get("receipt_path"), replay.get("receipt_sha256"), validation_relative)
        if receipt.get("exit_code") != 0 or receipt.get("timed_out") is True:
            raise ValueError("M3 pair run receipt does not confirm an executed pass")
        replay_source_sha = replay.get("replay_source_sha256")
        if not isinstance(replay_source_sha, str) or receipt.get("replay_source_sha256") not in (None, replay_source_sha):
            raise ValueError("M3 pair run receipt does not bind the recorded replay source")
        replay_source_path = replay.get("replay_source_path")
        if isinstance(replay_source_path, str):
            source_path = _safe_local_artifact(root, replay_source_path, validation_relative)
            if _digest_bytes(source_path.read_bytes()) != replay_source_sha:
                raise ValueError("M3 pair replay source changed")
        observed = receipt.get("observed_theorem_axioms")
        if not isinstance(observed, dict) or not observed or any(not isinstance(axioms, list) or "sorryAx" in axioms for axioms in observed.values()):
            raise ValueError("M3 pair run receipt lacks a complete axiom observation")
        verified_replays.append({
            "attempt": replay.get("attempt"),
            "path": receipt_relative,
            "sha256": receipt_sha,
            "status": "EXECUTED_PASS · typed acceptance receipt",
            "recorded_at_utc": receipt.get("recorded_at_utc"),
            "elapsed_milliseconds": receipt.get("elapsed_milliseconds"),
            "load_proof_split_ms": receipt.get("load_proof_split_ms"),
            "cache_provenance": receipt.get("cache_provenance_class") or receipt.get("cache_provenance"),
            "axioms": observed,
            "replay_source_sha256": replay_source_sha,
        })

    if not all(
        validation.get("checks", {}).get(name) is True
        for name in ("two_distinct_replay_receipts", "both_before_proofs_passed", "both_after_proofs_passed", "axiom_audits_complete", "sorryAx_absent", "source_and_rights_hashes_match")
    ):
        raise ValueError("M3 pair typed acceptance checks are incomplete")
    vector = validation.get("measurement_vector")
    if not isinstance(vector, dict) or measurement.get("measurements") != vector:
        raise ValueError("M3 pair vector differs between the validation and measurement records")

    rights_relative = None
    for replay in replay_records:
        attempt_receipt = _safe_local_artifact(root, replay.get("receipt_path"), validation_relative)
        evidence_dir = attempt_receipt.parent.parent / "evidence"
        if not evidence_dir.is_dir() or evidence_dir.is_symlink():
            continue
        for candidate in evidence_dir.glob("*.json"):
            try:
                right_record, right_sha, right_relative = _read_local_json(root, candidate.relative_to(root.resolve()).as_posix())
            except (OSError, ValueError, json.JSONDecodeError):
                continue
            right_id = right_record.get("rights_evidence_id", right_record.get("evidence_id"))
            if right_id == event.get("rights_evidence_id"):
                if (
                    right_sha != event.get("rights_evidence_sha256")
                    or right_record.get("item_sha256") != event.get("source_sha256")
                    or right_record.get("source_revision") != event.get("source_revision")
                ):
                    raise ValueError("M3 pair item-level rights record has a digest mismatch")
                rights_relative = right_relative
                break
        if rights_relative:
            break
    if rights_relative is None:
        raise ValueError("M3 pair item-level rights evidence could not be reopened")

    return {
        "statement": statement.get("text"),
        "statement_sha256": statement.get("sha256"),
        "statement_state": statement_state,
        "proofs": {"before": proofs["before"], "after": proofs["after"]},
        "proof_sha256": {"before": proofs["before_sha256"], "after": proofs["after_sha256"]},
        "measurement_vector": vector,
        "replays": verified_replays,
        "method_family": taste.get("method_family"),
        "human_rating_status": event.get("human_rating_status", "NOT_RATED"),
        "claim_boundary": measurement.get("claim_boundary", "NOT_RECORDED"),
        "rights": {"path": rights_relative, "sha256": event["rights_evidence_sha256"], "license": source.get("license"), "allowed_uses": source.get("allowed_uses")},
        "sources": [
            {"path": link_relative, "sha256": checked_link_sha, "label": "Pair measurement link"},
            {"path": measurement_relative, "sha256": measurement_actual, "label": "Measured proof vector"},
            {"path": taste_relative, "sha256": taste_actual, "label": "Pair text and method labels"},
            {"path": validation_relative, "sha256": checked_validation_sha, "label": "Twice-replay acceptance validation"},
            {"path": rights_relative, "sha256": event["rights_evidence_sha256"], "label": "Item-level rights review"},
            *[{"path": item["path"], "sha256": item["sha256"], "label": f"Pinned replay {index}"} for index, item in enumerate(verified_replays, 1)],
        ],
    }


def _domain_assessment_from_statement(_statement: str | None) -> dict[str, object]:
    # A statement is not assigned a domain by keyword guessing. The workspace
    # exposes the unassessed state until a reviewed tag record exists.
    return {"domains": [], "assessment": "UNASSESSED", "basis": None}


def _tavily_search(query: str, api_key: str, opener=urllib.request.urlopen) -> dict[str, object]:
    """One bounded basic Tavily search; never return provider errors containing credentials."""
    payload = json.dumps({"query": query, "search_depth": "basic", "max_results": 6,
                          "include_answer": False, "include_raw_content": False,
                          "include_images": False, "include_usage": True}).encode("utf-8")
    request = urllib.request.Request("https://api.tavily.com/search", data=payload,
                                     headers={"Authorization": f"Bearer {api_key}",
                                              "Content-Type": "application/json"}, method="POST")
    try:
        with opener(request, timeout=8) as response:
            status, raw = response.status, response.read(1_000_000)
    except TimeoutError:
        raise ValueError("Tavily search timed out; no result was saved") from None
    except urllib.error.HTTPError as exc:
        status = exc.code
        raw = b""
    except OSError:
        raise ValueError("Tavily is unavailable; no result was saved") from None
    messages = {401: "Tavily rejected the configured credential", 429: "Tavily rate limit reached",
                432: "Tavily plan usage limit reached", 433: "Tavily pay-as-you-go limit reached"}
    if status != 200:
        raise ValueError(messages.get(status, f"Tavily returned HTTP {status}; no result was saved"))
    try:
        data = json.loads(raw.decode("utf-8"))
        results = data.get("results")
        if not isinstance(results, list):
            raise ValueError
        clean = []
        for item in results[:6]:
            if not isinstance(item, dict) or not all(isinstance(item.get(k), str) for k in ("title", "url")):
                continue
            if not item["url"].startswith(("https://", "http://")):
                continue
            clean.append({"title": item["title"][:300], "url": item["url"][:2000],
                          "score": item.get("score") if isinstance(item.get("score"), (int, float)) else None,
                          "snippet": str(item.get("content", ""))[:1200]})
        usage = data.get("usage")
        credits_used = usage.get("credits") if isinstance(usage, dict) else None
    except (UnicodeDecodeError, json.JSONDecodeError, ValueError, AttributeError):
        raise ValueError("Tavily returned an unreadable response; no result was saved") from None
    if type(credits_used) is not int:
        raise ValueError("Tavily did not confirm credit usage; no result was saved")
    if credits_used != TAVILY_BASIC_SEARCH_CREDIT_COST:
        raise ValueError("Tavily basic search used an unexpected number of credits; no result was saved")
    return {"results": clean, "request_id": str(data.get("request_id", ""))[:100],
            "credits_used": credits_used}


def _tavily_account_usage(api_key: str, opener=urllib.request.urlopen) -> dict[str, object]:
    """Fetch a bounded, read-only account usage snapshot without exposing the key."""
    if not api_key:
        raise ValueError("Tavily usage preflight has no configured credential")
    request = urllib.request.Request("https://api.tavily.com/usage", headers={
        "Authorization": f"Bearer {api_key}", "Accept": "application/json"}, method="GET")
    try:
        with opener(request, timeout=TAVILY_USAGE_PREFLIGHT_TIMEOUT_SECONDS) as response:
            status, raw = response.status, response.read(64_000)
    except TimeoutError:
        raise ValueError("Tavily account usage check timed out; no search was sent") from None
    except urllib.error.HTTPError as exc:
        status = exc.code
        exc.close()
        raw = b""
    except OSError:
        raise ValueError("Tavily account usage is unavailable; no search was sent") from None
    if status != 200:
        if status == 401:
            message = "Tavily rejected the configured credential during usage preflight"
        elif status == 429:
            message = "Tavily account usage preflight was rate limited"
        else:
            message = f"Tavily account usage returned HTTP {status}"
        raise ValueError(message + "; no search was sent")
    try:
        data = json.loads(raw.decode("utf-8"))
        account = data.get("account")
        plan_name = account.get("current_plan") if isinstance(account, dict) else None
        plan_usage = account.get("plan_usage") if isinstance(account, dict) else None
        plan_limit = account.get("plan_limit") if isinstance(account, dict) else None
        paygo_usage = account.get("paygo_usage") if isinstance(account, dict) else None
    except (UnicodeDecodeError, json.JSONDecodeError, AttributeError):
        raise ValueError("Tavily account usage returned an unreadable response; no search was sent") from None
    if (not isinstance(plan_name, str) or not plan_name.strip()
            or type(plan_usage) is not int or plan_usage < 0
            or type(plan_limit) is not int or plan_limit <= 0
            or type(paygo_usage) is not int or paygo_usage < 0):
        raise ValueError("Tavily account usage did not confirm plan, credits, and pay-as-you-go usage; no search was sent")
    digest = hashlib.sha256(raw).hexdigest()
    return {
        "current_plan": plan_name.strip()[:100],
        "plan_usage": plan_usage,
        "plan_limit": plan_limit,
        "paygo_usage": paygo_usage,
        "remaining_plan_credits": max(0, plan_limit - plan_usage),
        "observed_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "response_sha256": digest,
    }


def _research_statement_sha(context: dict[str, object]) -> str:
    value = context.get("statement_sha256")
    if isinstance(value, str) and SOURCE_DIGEST.fullmatch(value):
        return value
    statement = context.get("informal_statement")
    if not isinstance(statement, str) or not statement:
        raise ValueError("case statement has no stable identity")
    return _digest_bytes(statement.encode("utf-8"))


def _is_research_case(context: dict[str, object]) -> bool:
    # The owner grant allows a small number of searches for public known cases.
    # Keep this explicit so arbitrary intake, locked cases, and bootstrap review
    # material never become search targets by accident.
    return context.get("case_id") in {
        "nat-add-assoc",
        "forall-n-n-eq-n",
        "hero-prime-divisibility-r1",
    }


def _tavily_authorization(path: Path | None = None) -> dict[str, object] | None:
    """Validate the owner's unexpired grant; live account usage is checked separately."""
    path = path or TAVILY_AUTHORIZATION_PATH
    if not path.is_file():
        return None
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
        if (not isinstance(value, dict) or value.get("schema_version") != "mathcase-tavily-owner-authorization-v1"
                or value.get("owner_confirmed") is not True
                or value.get("funding_type") != "OWNER_OWNED_FREE_GRANT"
                or value.get("paid_usage_disabled") is not True
                or value.get("pay_as_you_go_enabled") is not False
                or not isinstance(value.get("plan_name"), str) or not value["plan_name"].strip()
                or type(value.get("plan_monthly_credits")) is not int or value["plan_monthly_credits"] <= 0
                or type(value.get("observed_plan_credits_used")) is not int or value["observed_plan_credits_used"] < 0
                or not isinstance(value.get("authorization_id"), str) or not value["authorization_id"].strip()
                or type(value.get("allowance_limit")) is not int
                or not 1 <= value["allowance_limit"] <= TAVILY_LIVE_CALL_LIMIT
                or not isinstance(value.get("verified_at_utc"), str) or not value["verified_at_utc"].endswith("Z")
                or not isinstance(value.get("expires_at_utc"), str) or not value["expires_at_utc"].endswith("Z")):
            return None
        now = datetime.now(timezone.utc)
        verified_at = datetime.fromisoformat(value["verified_at_utc"].replace("Z", "+00:00"))
        expires_at = datetime.fromisoformat(value["expires_at_utc"].replace("Z", "+00:00"))
        if verified_at > now or expires_at <= now or expires_at <= verified_at:
            return None
        return value
    except (OSError, json.JSONDecodeError, TypeError, ValueError):
        return None


def _tavily_events(path: Path | None = None) -> list[dict[str, object]]:
    path = path or TAVILY_RESEARCH_STORE_PATH
    if not path.exists():
        return []
    events = []
    reserved: set[str] = set()
    completed: set[str] = set()
    reconciled: set[str] = set()
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), start=1):
        if not line.strip():
            continue
        try:
            row = json.loads(line)
        except json.JSONDecodeError:
            raise ValueError(f"Tavily attempt ledger is malformed at line {line_number}; live calls are disabled") from None
        if (not isinstance(row, dict)
                or row.get("schema_version") != "mathcase-tavily-research-event-v1"
                or not isinstance(row.get("request_id"), str)
                or not re.fullmatch(r"[0-9a-f]{32}", row["request_id"])):
            raise ValueError(f"Tavily attempt ledger has an invalid event at line {line_number}; live calls are disabled")
        request_id = row["request_id"]
        if row.get("event") == "RESERVED":
            if request_id in reserved or request_id in completed or request_id in reconciled or row.get("status") != "IN_FLIGHT":
                raise ValueError(f"Tavily attempt ledger has an invalid reservation at line {line_number}; live calls are disabled")
            reserved.add(request_id)
        elif row.get("event") == "COMPLETED":
            if (request_id not in reserved or request_id in completed or request_id in reconciled
                    or row.get("status") not in {"COMPLETE", "FAILED_OR_UNKNOWN"}):
                raise ValueError(f"Tavily attempt ledger has an invalid completion at line {line_number}; live calls are disabled")
            completed.add(request_id)
        elif row.get("event") == "RECONCILED":
            if (request_id in reserved or request_id in completed or request_id in reconciled
                    or row.get("status") != "UNMETERED_COUNTED"
                    or row.get("cap_units") != 1
                    or row.get("metering_status") != "UNVERIFIED"):
                raise ValueError(f"Tavily attempt ledger has an invalid historical reconciliation at line {line_number}; live calls are disabled")
            reconciled.add(request_id)
        else:
            raise ValueError(f"Tavily attempt ledger has an unknown event at line {line_number}; live calls are disabled")
        events.append(row)
    return events


def _tavily_result_has_verified_usage(row: dict[str, object]) -> bool:
    """Only expose/cache completed searches whose one-credit receipt is recorded."""
    expected = row.get("expected_credit_cost")
    used = row.get("provider_credits_used")
    return (
        row.get("event") == "COMPLETED"
        and row.get("status") == "COMPLETE"
        and type(expected) is int
        and expected == TAVILY_BASIC_SEARCH_CREDIT_COST
        and type(used) is int
        and used == expected
    )


def _tavily_usage_matches_owner_grant(authorization: dict[str, object], usage: dict[str, object]) -> bool:
    plan_name = usage.get("current_plan")
    if (not isinstance(plan_name, str)
            or authorization.get("paid_usage_disabled") is not True
            or authorization.get("pay_as_you_go_enabled") is not False
            or type(usage.get("plan_limit")) is not int
            or type(usage.get("plan_usage")) is not int
            or type(usage.get("paygo_usage")) is not int):
        return False
    normalize = lambda value: " ".join(str(value).casefold().replace(" free", "").split())
    return (
        normalize(plan_name) == "researcher"
        and normalize(plan_name) == normalize(authorization.get("plan_name", ""))
        and usage.get("plan_limit") == authorization.get("plan_monthly_credits")
        and usage["plan_limit"] > 0
        and 0 <= usage["plan_usage"] < usage["plan_limit"]
        and usage.get("paygo_usage") == 0
    )


def _tavily_allowed_attempts(authorization: dict[str, object], usage: dict[str, object]) -> int:
    if not _tavily_usage_matches_owner_grant(authorization, usage):
        return 0
    remaining_plan_credits = usage["plan_limit"] - usage["plan_usage"]
    remaining_credit_attempts = remaining_plan_credits // TAVILY_BASIC_SEARCH_CREDIT_COST
    return min(TAVILY_LIVE_CALL_LIMIT, authorization["allowance_limit"], remaining_credit_attempts)


def _tavily_accounted_attempts(events: list[dict[str, object]]) -> int:
    """Count every live reservation plus conservatively reconciled CLI calls."""
    return sum(1 for row in events if row.get("event") == "RESERVED") + sum(
        1 for row in events if row.get("event") == "RECONCILED"
        and row.get("status") == "UNMETERED_COUNTED" and row.get("cap_units") == 1
    )


def _all_tavily_accounted_attempts(events: list[dict[str, object]]) -> int:
    """Share the free-plan cap across public cases and private draft searches."""
    return _tavily_accounted_attempts(events) + draft_research_reserved_count(
        read_draft_research_events(TAVILY_DRAFT_RESEARCH_STORE_PATH)
    )


def _suggest_draft_research_query(draft: dict[str, object]) -> str:
    """A short local suggestion, never dispatched without an exact-query opt in."""
    text = str(draft.get("informal_statement", "")).casefold()
    if any(word in text for word in ("crust", "mantle", "subduct", "tectonic", "geolog")):
        return "continental crust recycling mantle subduction erosion geological timescales"
    title = str(draft.get("title", "")).strip()[:160]
    return (title + " evidence research").strip()


def _append_tavily_event(path: Path, event: dict[str, object]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(event, ensure_ascii=False, separators=(",", ":")) + "\n")
        stream.flush()
        os.fsync(stream.fileno())


def _tavily_pending(events: list[dict[str, object]] | None = None) -> bool:
    events = _tavily_events() if events is None else events
    completed = {row.get("request_id") for row in events if row.get("event") == "COMPLETED"}
    if any(row.get("event") == "RESERVED" and row.get("request_id") not in completed for row in events):
        return True
    draft_events = read_draft_research_events(TAVILY_DRAFT_RESEARCH_STORE_PATH)
    draft_completed = {row.get("request_id") for row in draft_events if row.get("event") == "COMPLETED"}
    return any(row.get("event") == "RESERVED" and row.get("request_id") not in draft_completed for row in draft_events)


def _prime_model_library_entry(root: Path, dispatcher: object) -> dict[str, object]:
    context = _prime_model_case_context(root, dispatcher)
    selected = context["selected_run"]
    provider_context = context.get("provider_context")
    prepared_context = context.get("prepared_provider_context")
    return {
        "item_id": PRIME_MODEL_CASE_ID,
        "record_type": "executable_case",
        "task_type": context["claim_class"],
        "case_id": PRIME_MODEL_CASE_ID,
        "problem_id": context["problem_id"],
        "title": context["title"],
        "state": context.get("dossier_status") or selected.get("status"),
        "selected_run_id": selected["run_id"],
        "run_count": len(context.get("runs", [])),
        "delivery_ready": False,
        "domain_tags": [],
        "domain_assessment": "UNASSESSED",
        "domain_basis": None,
        "saved_run_linkage_status": context.get("saved_run_linkage", {}).get("status"),
        "historical_provider_context": provider_context,
        "prepared_provider_context": prepared_context,
        "detail_sources": [
            {"path": source.get("path"), "sha256": source.get("sha256")}
            for source in context.get("sources", [])
            if isinstance(source, dict)
        ],
    }


def _counterexample_library_entry(root: Path) -> dict[str, object] | None:
    try:
        context = counterexample_case_context(root)
    except (OSError, ValueError, KeyError, TypeError):
        return None
    return {"item_id": COUNTEREXAMPLE_CASE_ID, "record_type": "executable_case",
            "task_type": "CHECKED_LOCAL_COUNTEREXAMPLE", "case_id": COUNTEREXAMPLE_CASE_ID,
            "problem_id": COUNTEREXAMPLE_CASE_ID, "title": context["title"],
            "state": "COUNTEREXAMPLE_CHECKED", "selected_run_id": context["selected_run"]["run_id"],
            "run_count": 1, "delivery_ready": False, "domain_tags": ["Number theory"],
            "domain_assessment": "LOCAL_DEMONSTRATION", "detail_sources": context["sources"]}


def _child_reuse_library_entry(root: Path, dispatcher: object | None) -> dict[str, object] | None:
    try:
        context = _prime_child_case_context(root, dispatcher)
    except (OSError, ValueError, KeyError, TypeError):
        return None
    return {"item_id": PRIME_CHILD_CASE_ID, "record_type": "executable_case", "task_type": "COMPILED_PARENT_REUSE",
            "case_id": PRIME_CHILD_CASE_ID, "problem_id": PRIME_CHILD_CASE_ID, "title": context["title"],
            "state": "COMPILED_REUSE_PASS", "selected_run_id": PRIME_CHILD_RUN_ID, "run_count": 1,
            "delivery_ready": False, "domain_tags": [], "domain_assessment": "KNOWN_RESULT",
            "detail_sources": context["sources"]}


def _append_prime_model_library_entry(library: dict[str, object], root: Path, dispatcher: object | None) -> dict[str, object]:
    counterexample_item = _counterexample_library_entry(root)
    if counterexample_item and isinstance(library.get("records"), list):
        if not any(item.get("case_id") == COUNTEREXAMPLE_CASE_ID for item in library["records"] if isinstance(item, dict)):
            library["records"].append(counterexample_item)
    child_item = _child_reuse_library_entry(root, dispatcher)
    if child_item and isinstance(library.get("records"), list):
        if not any(item.get("case_id") == PRIME_CHILD_CASE_ID for item in library["records"] if isinstance(item, dict)):
            library["records"].append(child_item)
    try:
        item = _prime_model_library_entry(root, dispatcher)
    except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
        item = {
            "item_id": PRIME_MODEL_CASE_ID,
            "record_type": "executable_case",
            "task_type": "EXECUTABLE_CASE",
            "case_id": PRIME_MODEL_CASE_ID,
            "title": f"Saved case unavailable — {PRIME_MODEL_CASE_ID}",
            "state": "UNAVAILABLE",
            "availability_error": str(exc),
            "delivery_ready": False,
            "domain_tags": [],
            "domain_assessment": "UNASSESSED",
            "domain_basis": None,
        }
        warning = {"case_id": PRIME_MODEL_CASE_ID, "reason": str(exc)}
    else:
        warning = None
    records = library.get("records")
    if not isinstance(records, list):
        records = []
        library["records"] = records
    existing_index = next((index for index, existing in enumerate(records)
                           if isinstance(existing, dict) and existing.get("case_id") == PRIME_MODEL_CASE_ID), None)
    if existing_index is None:
        records.append(item)
    elif item.get("state") != "UNAVAILABLE":
        records[existing_index] = item
    if warning is not None:
        warnings = library.get("case_warnings")
        if not isinstance(warnings, list):
            warnings = []
            library["case_warnings"] = warnings
        if not any(isinstance(existing, dict) and existing.get("case_id") == PRIME_MODEL_CASE_ID for existing in warnings):
            warnings.append(warning)
    library["generated_at_utc"] = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    return library


def _local_case_library(root: Path = ROOT, dispatcher: object | None = None) -> dict[str, object]:
    if PUBLIC_PROFILE:
        return public_case_desk.library(root, globals(), dispatcher)
    if not (root / M3_PAIR_RECONCILIATION_PATH).is_file():
        portable_library = _portable_case_library_snapshot(root)
        if portable_library is not None:
            return _append_prime_model_library_entry(portable_library, root, dispatcher)
    case_records = []
    case_warnings = []
    for case_id in ("nat-add-assoc", BOOTSTRAP_CASE_ID, "forall-n-n-eq-n"):
        try:
            context = _current_case_context(root, case_id)
        except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
            case_records.append({
                "item_id": case_id,
                "record_type": "executable_case",
                "task_type": "EXECUTABLE_CASE",
                "case_id": case_id,
                "title": f"Saved case unavailable · {case_id}",
                "state": "UNAVAILABLE",
                "availability_error": str(exc),
                "delivery_ready": False,
                "domain_tags": [],
                "domain_assessment": "UNASSESSED",
                "domain_basis": None,
            })
            case_warnings.append({"case_id": case_id, "reason": str(exc)})
            continue
        selected = context["selected_run"]
        item = {
            "item_id": case_id,
            "record_type": "executable_case",
            "task_type": context["claim_class"],
            "case_id": case_id,
            "problem_id": context["problem_id"],
            "title": context["title"],
            "state": context.get("dossier_status") or selected.get("status"),
            "selected_run_id": selected["run_id"],
            "run_count": len(context.get("runs", [])),
            "delivery_ready": context.get("delivery_ready"),
            "domain_tags": [],
            "domain_assessment": "UNASSESSED",
            "domain_basis": None,
            "detail_sources": [
                {"path": source.get("path"), "sha256": source.get("sha256")}
                for source in context.get("sources", [])
                if isinstance(source, dict)
            ],
        }
        case_records.append(item)

    if dispatcher is not None:
        try:
            case_records.append(_prime_model_library_entry(root, dispatcher))
        except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
            case_records.append({
                "item_id": PRIME_MODEL_CASE_ID,
                "record_type": "executable_case",
                "task_type": "EXECUTABLE_CASE",
                "case_id": PRIME_MODEL_CASE_ID,
                "title": f"Saved case unavailable — {PRIME_MODEL_CASE_ID}",
                "state": "UNAVAILABLE",
                "availability_error": str(exc),
                "delivery_ready": False,
                "domain_tags": [],
                "domain_assessment": "UNASSESSED",
                "domain_basis": None,
            })
            case_warnings.append({"case_id": PRIME_MODEL_CASE_ID, "reason": str(exc)})

    counterexample_item = _counterexample_library_entry(root)
    if counterexample_item:
        case_records.append(counterexample_item)
    child_item = _child_reuse_library_entry(root, dispatcher)
    if child_item:
        case_records.append(child_item)
    for local_case in list_local_computation_cases(root):
        case_id = local_case["case_id"]
        if local_case.get("state") == "UNAVAILABLE":
            case_records.append({
                "item_id": case_id, "record_type": "executable_case", "task_type": "LOCAL_ARITHMETIC_TASK",
                "case_id": case_id, "title": f"Saved arithmetic case unavailable · {case_id}",
                "state": "UNAVAILABLE", "availability_error": local_case.get("reason"),
                "delivery_ready": False, "domain_tags": [], "domain_assessment": "UNASSESSED", "domain_basis": None,
            })
            case_warnings.append({"case_id": case_id, "reason": local_case.get("reason")})
            continue
        case_records.append({
            "item_id": case_id, "record_type": "executable_case", "task_type": "LOCAL_ARITHMETIC_TASK",
            "case_id": case_id, "problem_id": local_case["problem_id"], "title": local_case["title"],
            "state": "M0_ADMITTED_UNASSESSED", "selected_run_id": "", "run_count": 0,
            "local_artifact_count": local_case["artifact_count"], "delivery_ready": False,
            "domain_tags": [], "domain_assessment": "UNASSESSED", "domain_basis": None,
        })

    if not (root / M3_PAIR_RECONCILIATION_PATH).is_file():
        # Without an M3 registry, keep available saved cases visible while
        # making clear that no reconciled proof-pair index is being reported.
        available_records = [item for item in case_records if item.get("state") != "UNAVAILABLE"]
        included_case_ids = sorted(
            str(item["case_id"]) for item in available_records if isinstance(item.get("case_id"), str)
        )
        return {
            "schema_version": "mathcase-case-library-v1",
            "generated_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
            "records": available_records,
            "scope": {
                "mode": "SAVED_EXAMPLES_NOT_TRAINING_OR_EVALUATION",
                "included_case_ids": included_case_ids,
                "included_proof_pair_records": 0,
                "training_use": "NOT_TRAINING_DATA",
                "evaluation_use": "NOT_EVALUATION_DATA",
                "gate_effect": "NONE",
                "note": "The available saved cases are listed below. This checkout has no reconciled proof-pair index, so no proof-pair records or counts are inferred.",
            },
            "case_warnings": [],
            "detail_warnings": [],
            "pair_bank": {
                "status": "NOT_INCLUDED_IN_FRESH_CLONE",
                "reconciled_pairs": None,
                "checkpoint": None,
                "baseline_pairs": None,
                "accepted_delta_events": None,
                "individually_indexed_baseline_items": None,
                "pair_detail_records_reopened": None,
                "pair_detail_records_event_only": None,
                "pair_detail_records_incomplete": None,
            },
            "domain_note": "Mathematical domain labels are unassessed.",
        }

    accepted, reconciliation, reconciliation_sha, registry_path = _m3_reconciled_registry(root)
    pair_records = []
    pair_events: dict[str, dict[str, object]] = {}
    detail_warnings = []
    for event in accepted:
        pair_id = str(event["pair_id"])
        pair_events[pair_id] = event
        source_path = str(event.get("source_path", ""))
        identity = event.get("canonical_identity") or event.get("queue_identity") or f"Rank {event.get('rank')} proof pair"
        item = {
            "item_id": pair_id,
            "record_type": "proof_pair",
            "task_type": "MATHLIB_SIMPLIFICATION_PAIR",
            "case_id": pair_id,
            "problem_id": pair_id,
            "title": str(identity),
            "state": "ACCEPTED_IN_RECONCILED_BANK",
            "rank": event.get("rank"),
            "source_path": source_path,
            "source_area": source_path.removeprefix("Mathlib/").split("/", 1)[0] if source_path.startswith("Mathlib/") else "Not recorded",
            "source_revision": event.get("source_revision"),
            "source_sha256": event.get("source_sha256"),
            "required_replays": event.get("required_replay_count"),
            "accepted_replay_count": len(event.get("direct_probe_receipts", [])) or len(event.get("accepted_replay_attempts", [])),
            "detail_state": "ACCEPTANCE_EVENT_ONLY",
            "detail_error": None,
            "domain_tags": [],
            "domain_assessment": "UNASSESSED",
            "domain_basis": None,
        }
        try:
            detail = _verified_m3_pair_detail(root, event)
        except (OSError, ValueError, KeyError, TypeError, json.JSONDecodeError) as exc:
            detail = None
            item["detail_error"] = str(exc)
            detail_warnings.append({"item_id": pair_id, "reason": str(exc)})
        if detail is not None:
            item["detail_state"] = "REOPENED_TYPED_EVIDENCE"
            item["detail_sources"] = detail["sources"]
        pair_records.append(item)

    return {
        "schema_version": "mathcase-case-library-v1",
        "generated_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "records": [*case_records, *pair_records],
        "pair_bank": {
            "status": reconciliation.get("status"),
            "reconciled_pairs": reconciliation.get("results", {}).get("current_execution_backed_unique_pairs"),
            "checkpoint": reconciliation.get("results", {}).get("checkpoint"),
            "baseline_pairs": reconciliation.get("results", {}).get("baseline_unique_pairs"),
            "accepted_delta_events": len(accepted),
            "individually_indexed_baseline_items": 0,
            "registry_path": registry_path,
            "registry_sha256": _digest_bytes(_safe_local_artifact(root, registry_path).read_bytes()),
            "reconciliation_path": M3_PAIR_RECONCILIATION_PATH,
            "reconciliation_sha256": reconciliation_sha,
            "pair_detail_records_reopened": sum(item["detail_state"] == "REOPENED_TYPED_EVIDENCE" for item in pair_records),
            "pair_detail_records_event_only": sum(
                item["detail_state"] == "ACCEPTANCE_EVENT_ONLY" and not item["detail_error"]
                for item in pair_records
            ),
            "pair_detail_records_incomplete": len(detail_warnings),
        },
        "detail_warnings": detail_warnings,
        "case_warnings": case_warnings,
        "domain_note": "No item has a reviewed domain tag in this read model; source folder is shown separately and is not treated as a mathematical domain label.",
    }


def _local_library_item(root: Path, item_id: str, dispatcher: object | None = None) -> dict[str, object]:
    if item_id == PRIME_MODEL_CASE_ID:
        if dispatcher is None:
            raise ValueError("the local Proof Desk run reader is required to reopen this model-assisted case")
        context = _prime_model_case_context(root, dispatcher)
        context["record_type"] = "executable_case"
        context["domain_assessment"] = "UNASSESSED"
        return context
    if item_id == COUNTEREXAMPLE_CASE_ID:
        context = counterexample_case_context(root)
        context["record_type"] = "executable_case"
        context["domain_assessment"] = "UNASSESSED"
        return context
    if item_id == PRIME_CHILD_CASE_ID:
        if dispatcher is None:
            raise ValueError("the local Proof Desk run reader is required to reopen the compiled child")
        context = _prime_child_case_context(root, dispatcher)
        context["record_type"] = "executable_case"
        context["domain_assessment"] = "UNASSESSED"
        return context
    if not (root / M3_PAIR_RECONCILIATION_PATH).is_file():
        portable_item = _portable_case_library_item(root, item_id)
        if portable_item is not None:
            return portable_item
    if item_id in ("nat-add-assoc", BOOTSTRAP_CASE_ID, "forall-n-n-eq-n"):
        context = _current_case_context(root, item_id)
        context["record_type"] = "executable_case"
        context["domain_assessment"] = _domain_assessment_from_statement(str(context.get("informal_statement", "")))
        return context
    local_case = next((item for item in list_local_computation_cases(root) if item.get("case_id") == item_id), None)
    if local_case is not None:
        if local_case.get("state") == "UNAVAILABLE":
            raise ValueError(str(local_case.get("reason") or "local arithmetic case did not reopen"))
        context = read_local_computation_case(root, item_id)
        context["record_type"] = "executable_case"
        context["domain_assessment"] = "UNASSESSED"
        return context
    index, _, _, _ = _m3_reconciled_registry(root)
    event = next((row for row in index if row.get("pair_id") == item_id), None)
    if not isinstance(event, dict):
        raise ValueError("library item is not in the current local read model")
    detail = _verified_m3_pair_detail(root, event)
    if detail is None:
        return {
            "schema_version": "mathcase-library-item-context-v1",
            "record_type": "proof_pair",
            "case_id": item_id,
            "pair_id": item_id,
            "title": event.get("canonical_identity") or event.get("queue_identity"),
            "detail_state": "ACCEPTANCE_EVENT_ONLY",
            "explanation": "The current reconciliation includes this pair, but its item-level statement, replay, and rights links cannot all be reopened through the verified detail reader. No proof text or quality claim is shown.",
            "domain_assessment": _domain_assessment_from_statement(None),
            "sources": [{"path": M3_PAIR_REGISTRY_PATH, "sha256": _digest_bytes(_safe_local_artifact(root, M3_PAIR_REGISTRY_PATH).read_bytes())}],
        }
    return {
        "schema_version": "mathcase-library-item-context-v1",
        "record_type": "proof_pair",
        "case_id": item_id,
        "pair_id": item_id,
        "title": event.get("canonical_identity") or event.get("queue_identity"),
        "rank": event.get("rank"),
        "task_type": "MATHLIB_SIMPLIFICATION_PAIR",
        "state": "ACCEPTED_IN_RECONCILED_BANK",
        "detail_state": "REOPENED_TYPED_EVIDENCE",
        "domain_assessment": _domain_assessment_from_statement(str(detail.get("statement", ""))),
        "source": {"path": event.get("source_path"), "revision": event.get("source_revision"), "sha256": event.get("source_sha256")},
        "detail": detail,
    }


def _review_store_lock(path: Path):
    """Serialize annotation appends across preview instances on this machine."""
    lock_path = Path(str(path) + ".lock")
    if path.is_symlink() or lock_path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
        raise ValueError("local review store path crosses a symbolic link")
    return exclusive_file_lock(lock_path)


def _read_review_store_unlocked(
    path: Path,
    record_validator=_validated_note_shape,
) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], REVIEW_ZERO_HASH
    if path.is_symlink() or path.stat().st_size > REVIEW_STORE_MAX_BYTES:
        raise ValueError("local review store is unsafe or exceeds its size limit")
    raw = path.read_bytes()
    if not raw:
        return [], REVIEW_ZERO_HASH
    records: list[dict[str, object]] = []
    previous = REVIEW_ZERO_HASH
    for sequence, line in enumerate(raw.splitlines(), start=1):
        try:
            entry = json.loads(line)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("local review store has a malformed line; it was left unchanged") from exc
        keys = {"schema_version", "sequence", "previous_entry_sha256", "record", "record_sha256", "entry_sha256"}
        if not isinstance(entry, dict) or set(entry) != keys or entry.get("schema_version") != "mathcase-local-review-entry-v1":
            raise ValueError("local review store entry has an unsupported schema")
        record = record_validator(entry.get("record"))
        payload = {key: value for key, value in entry.items() if key != "entry_sha256"}
        expected_entry = _digest_bytes(_canonical_json_bytes(payload))
        if (
            entry.get("sequence") != sequence
            or entry.get("previous_entry_sha256") != previous
            or entry.get("record_sha256") != _digest_bytes(_canonical_json_bytes(record))
            or entry.get("entry_sha256") != expected_entry
        ):
            raise ValueError("local review store hash chain failed; it was left unchanged")
        records.append(record)
        previous = expected_entry
    if len(records) > 1000:
        raise ValueError("local review store exceeds its record limit")
    return records, previous


def _read_review_store(
    path: Path,
    record_validator=_validated_note_shape,
) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], REVIEW_ZERO_HASH
    with _review_store_lock(path):
        return _read_review_store_unlocked(path, record_validator)


def _append_review_store(
    path: Path,
    record: dict[str, object],
    record_validator=_validated_note_shape,
) -> tuple[list[dict[str, object]], str, bool]:
    with _review_store_lock(path):
        record_validator(record)
        records, previous = _read_review_store_unlocked(path, record_validator)
        for existing in records:
            if existing["id"] == record["id"]:
                if existing == record:
                    return records, previous, True
                raise FileExistsError("a review note with this ID already exists with different content")
        if len(records) >= 1000:
            raise ValueError("local review store reached its 1000 note limit")
        payload = {
            "schema_version": "mathcase-local-review-entry-v1",
            "sequence": len(records) + 1,
            "previous_entry_sha256": previous,
            "record": record,
            "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
        }
        entry_hash = _digest_bytes(_canonical_json_bytes(payload))
        entry = {**payload, "entry_sha256": entry_hash}
        with path.open("ab") as handle:
            handle.write(_canonical_json_bytes(entry) + b"\n")
            handle.flush()
            os.fsync(handle.fileno())
        return records + [record], entry_hash, False


def _statement_review_json_object(raw_text: object, label: str, maximum_bytes: int) -> dict[str, object]:
    if not isinstance(raw_text, str) or not raw_text or len(raw_text.encode("utf-8")) > maximum_bytes:
        raise ValueError(f"{label} must contain 1..{maximum_bytes} UTF-8 bytes")

    def unique_object(pairs: list[tuple[str, object]]) -> dict[str, object]:
        value: dict[str, object] = {}
        for key, item in pairs:
            if key in value:
                raise ValueError(f"{label} contains a duplicate JSON key")
            value[key] = item
        return value

    try:
        value = json.loads(raw_text, object_pairs_hook=unique_object)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError(f"{label} is not valid UTF-8 JSON") from exc
    if not isinstance(value, dict):
        raise ValueError(f"{label} must be a JSON object")
    return value


def _validate_statement_review_request_record(request: dict[str, object], problem_id: str) -> None:
    request_keys = {
        "schema_version", "request_schema", "status", "problem_id", "problem_title",
        "problem_statement_sha256", "informal_statement", "lean_statement", "m0_binding",
        "source_references", "source_context", "review_questions", "review_scope",
        "reviewer_trust", "boundary", "request_sha256",
    }
    if (
        set(request) != request_keys
        or request.get("schema_version") != "mathcase-statement-review-request-v1"
        or request.get("request_schema") != "schemas/statement-review-request-v1.schema.json"
        or request.get("status") != "PREPARATION_ONLY"
        or request.get("problem_id") != problem_id
        or not isinstance(request.get("problem_statement_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(str(request.get("problem_statement_sha256")))
        or not isinstance(request.get("request_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(str(request.get("request_sha256")))
        or not isinstance(request.get("m0_binding"), dict)
        or not isinstance(request.get("m0_binding", {}).get("snapshot_file_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(str(request.get("m0_binding", {}).get("snapshot_file_sha256")))
        or not isinstance(request.get("review_questions"), list)
        or not 4 <= len(request.get("review_questions", [])) <= 8
        or any(not isinstance(question, str) or not question.strip() or len(question) > 1000 for question in request.get("review_questions", []))
        or not isinstance(request.get("source_context"), dict)
    ):
        raise ValueError("statement-review request identity or M0 binding is invalid")
    m0_binding = request["m0_binding"]
    required_m0_keys = {"snapshot_path", "snapshot_file_sha256", "snapshot_content_sha256", "current_intake_source_uses"}
    if (
        set(m0_binding) not in (required_m0_keys, required_m0_keys | {"queue_item_binding"})
        or not isinstance(m0_binding.get("snapshot_path"), str) or not m0_binding["snapshot_path"].strip()
        or not isinstance(m0_binding.get("snapshot_content_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(str(m0_binding.get("snapshot_content_sha256")))
        or not isinstance(m0_binding.get("current_intake_source_uses"), list)
        or not m0_binding["current_intake_source_uses"]
        or any(not isinstance(use, str) or not use for use in m0_binding["current_intake_source_uses"])
    ):
        raise ValueError("statement-review M0 binding has an unsupported shape")
    queue_binding = m0_binding.get("queue_item_binding")
    if queue_binding is not None and (
        not isinstance(queue_binding, dict)
        or set(queue_binding) != {"item_id", "case_id", "intake_dossier_sha256"}
        or not isinstance(queue_binding.get("item_id"), str)
        or not re.fullmatch(r"[a-zA-Z0-9][a-zA-Z0-9._-]{0,95}", str(queue_binding.get("item_id")))
        or not isinstance(queue_binding.get("case_id"), str)
        or not re.fullmatch(r"[a-zA-Z0-9][a-zA-Z0-9._-]{0,95}", str(queue_binding.get("case_id")))
        or not isinstance(queue_binding.get("intake_dossier_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(str(queue_binding.get("intake_dossier_sha256")))
    ):
        raise ValueError("statement-review queue item binding is malformed")
    context = request["source_context"]
    context_status = context.get("status")
    context_digest = context.get("context_sha256")
    source_references = request.get("source_references")
    matching_source = next((source for source in source_references if isinstance(source, dict) and source.get("source_id") == context.get("source_id")), None) if isinstance(source_references, list) else None
    context_keys = {
        "schema_version", "status", "source_id", "item_locator", "source_revision",
        "source_file_sha256", "declaration_name", "declaration_line", "declaration_signature",
        "context_lines", "inherited_assumptions", "context_sha256", "availability_note",
    }
    line_kinds = {"SECTION", "NAMESPACE", "INHERITED_TYPE_VARIABLE", "INHERITED_TYPE_CLASS_ASSUMPTION", "DECLARATION_SIGNATURE"}

    def valid_context_lines(value: object) -> bool:
        return isinstance(value, list) and len(value) <= 128 and all(
            isinstance(line, dict)
            and set(line) == {"line", "kind", "text"}
            and type(line.get("line")) is int
            and line["line"] > 0
            and isinstance(line.get("kind"), str)
            and line.get("kind") in line_kinds
            and isinstance(line.get("text"), str)
            and bool(line["text"].strip())
            and len(line["text"]) <= 2000
            for line in value
        )

    if (
        set(context) != context_keys
        or context.get("schema_version") != "mathcase-source-bound-declaration-context-v1"
        or not isinstance(context_status, str)
        or context_status not in {"SOURCE_BYTES_REOPENED", "SOURCE_CONTEXT_UNAVAILABLE", "SOURCE_HASH_MISMATCH", "SOURCE_DECLARATION_NOT_UNIQUE", "SOURCE_DECLARATION_MISMATCH"}
        or matching_source is None
        or context.get("item_locator") != matching_source.get("item_locator")
        or context.get("source_revision") != matching_source.get("revision")
        or context.get("source_file_sha256") != matching_source.get("content_sha256")
        or not valid_context_lines(context.get("context_lines"))
        or not valid_context_lines(context.get("inherited_assumptions"))
        or not isinstance(context.get("availability_note"), str)
        or not context.get("availability_note").strip()
        or not isinstance(context.get("declaration_name"), str)
        or not context.get("declaration_name")
    ):
        raise ValueError("statement-review source context does not match its pinned M0 source")
    if context_status == "SOURCE_BYTES_REOPENED":
        context_body = dict(context)
        context_body.pop("context_sha256", None)
        declaration = re.search(r"\b(?:theorem|lemma)\s+([A-Za-z][A-Za-z0-9_'.]*)\b", str(request.get("lean_statement", "")))
        signature_lines = [line for line in context["context_lines"] if line["kind"] == "DECLARATION_SIGNATURE"]
        if (
            not isinstance(context_digest, str)
            or not SOURCE_DIGEST.fullmatch(context_digest)
            or _digest_bytes(_canonical_json_bytes(context_body)) != context_digest
            or type(context.get("declaration_line")) is not int
            or context["declaration_line"] < 1
            or not isinstance(context.get("declaration_signature"), str)
            or context.get("declaration_signature") != request.get("lean_statement")
            or declaration is None
            or context.get("declaration_name") != declaration.group(1)
            or len(signature_lines) != 1
            or signature_lines[0]["line"] != context.get("declaration_line")
            or signature_lines[0]["text"] != context.get("declaration_signature")
            or any(line["kind"] != "INHERITED_TYPE_CLASS_ASSUMPTION" for line in context["inherited_assumptions"])
            or any(line not in context["context_lines"] for line in context["inherited_assumptions"])
        ):
            raise ValueError("statement-review source context digest or declaration binding is invalid")
    elif (
        context.get("declaration_line") is not None
        or context.get("declaration_signature") != ""
        or context_digest is not None
        or context.get("context_lines")
        or context.get("inherited_assumptions")
    ):
        raise ValueError("unreopened statement-review source context cannot provide inherited assumptions")
    body = dict(request)
    request_sha256 = body.pop("request_sha256")
    if _digest_bytes(_canonical_json_bytes(body)) != request_sha256:
        raise ValueError("statement-review request digest does not match its canonical contents")


def _validate_statement_review_response_value(
    response: dict[str, object], request: dict[str, object]
) -> tuple[str, dict[str, object]]:
    expected_keys = {
        "schema_version", "status", "problem_id", "problem_statement_sha256", "request_sha256",
        "reviewer", "recorded_at", "disposition", "back_translation", "rationale", "differences",
        "unresolved_assumptions", "reviewer_attestation", "response_schema", "trust_registry_schema", "boundary",
    }
    if set(response) != expected_keys:
        raise ValueError("reviewer response has unknown or missing fields")
    if (
        response.get("schema_version") != "mathcase-statement-review-response-v1"
        or response.get("status") != "UNVERIFIED_RESPONSE_DRAFT"
        or response.get("problem_id") != request.get("problem_id")
        or response.get("problem_statement_sha256") != request.get("problem_statement_sha256")
        or response.get("request_sha256") != request.get("request_sha256")
        or response.get("response_schema") != "schemas/statement-review-response-v1.schema.json"
        or response.get("trust_registry_schema") != "schemas/reviewer-trust-registry-v1.schema.json"
    ):
        raise ValueError("reviewer response does not bind the exact current request")
    reviewer = response.get("reviewer")
    attestation = response.get("reviewer_attestation")
    if not isinstance(reviewer, dict) or set(reviewer) != {"reviewer_id", "issuer", "subject"}:
        raise ValueError("reviewer identity fields have an unsupported shape")
    attestation_keys = {
        "schema_version", "evidence_id", "reviewer_id", "issuer", "subject",
        "problem_statement_sha256", "recorded_at",
    }
    if not isinstance(attestation, dict) or set(attestation) != attestation_keys:
        raise ValueError("reviewer attestation has an unsupported shape")
    for key in ("reviewer_id", "issuer", "subject"):
        value = reviewer.get(key)
        if not isinstance(value, str) or not value.strip() or len(value) > 160 or attestation.get(key) != value:
            raise ValueError("reviewer identity fields are incomplete or inconsistent")
    recorded_at = response.get("recorded_at")
    if not isinstance(recorded_at, str) or len(recorded_at) > 80:
        raise ValueError("reviewer timestamp is invalid")
    try:
        timestamp = datetime.fromisoformat(recorded_at.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("reviewer timestamp is invalid") from exc
    if timestamp.tzinfo is None or attestation.get("recorded_at") != recorded_at:
        raise ValueError("reviewer timestamp must be timezone-bound and match its attestation")
    if (
        attestation.get("schema_version") != "mathcase-reviewer-attestation-v1"
        or attestation.get("problem_statement_sha256") != request.get("problem_statement_sha256")
        or not isinstance(attestation.get("evidence_id"), str)
        or not re.fullmatch(r"[a-z0-9][a-z0-9_-]{2,95}", str(attestation.get("evidence_id")))
    ):
        raise ValueError("reviewer attestation does not bind the exact statement")
    if response.get("disposition") not in {"PASS", "MISMATCH", "OUT_OF_SCOPE", "NEEDS_REVIEW"}:
        raise ValueError("reviewer disposition is unsupported")
    for key in ("back_translation", "rationale"):
        value = response.get(key)
        if not isinstance(value, str) or not value.strip() or len(value) > 20000:
            raise ValueError(f"reviewer response {key} must contain 1..20000 characters")
    for key in ("differences", "unresolved_assumptions"):
        values = response.get(key)
        if (
            not isinstance(values, list) or len(values) > 128
            or any(not isinstance(value, str) or not value.strip() or len(value) > 2000 for value in values)
        ):
            raise ValueError(f"reviewer response {key} must contain at most 128 bounded text entries")
    boundary = response.get("boundary")
    if (
        not isinstance(boundary, dict)
        or set(boundary) != {"identity_status", "gate_effect", "queue_effect", "training_use"}
        or boundary != {
            "identity_status": "NOT_VERIFIED", "gate_effect": "NONE",
            "queue_effect": "NONE", "training_use": "NOT_AUTHORIZED",
        }
    ):
        raise ValueError("reviewer response cannot grant identity, gate, queue, or training authority")
    return str(response["disposition"]), attestation


def _validated_statement_review_response_record(value: object) -> dict[str, object]:
    keys = {
        "schema_version", "id", "recorded_at_utc", "problem_id", "problem_statement_sha256",
        "m0_snapshot_file_sha256", "request_sha256", "request_bytes_sha256", "request_json_utf8",
        "response_sha256", "response_json_utf8", "attestation_sha256", "attestation_json_utf8",
        "binding_status", "reviewer_identity_status", "mathematical_disposition_status",
        "disposition_assertion", "gate_effect", "queue_effect", "training_use",
    }
    if not isinstance(value, dict) or set(value) != keys:
        raise ValueError("saved statement-review response has an unsupported shape")
    if value.get("schema_version") != "mathcase-statement-review-response-record-v1":
        raise ValueError("saved statement-review response schema is unsupported")
    problem_id = value.get("problem_id")
    if not isinstance(problem_id, str) or not re.fullmatch(r"[a-zA-Z0-9][a-zA-Z0-9._-]{0,95}", problem_id):
        raise ValueError("saved statement-review problem ID is malformed")
    request_text, response_text, attestation_text = (
        value.get("request_json_utf8"), value.get("response_json_utf8"), value.get("attestation_json_utf8")
    )
    if not isinstance(request_text, str) or len(request_text.encode("utf-8")) > 1024 * 1024:
        raise ValueError("saved statement-review request bytes exceed their limit")
    if not isinstance(response_text, str) or len(response_text.encode("utf-8")) > STATEMENT_REVIEW_RESPONSE_MAX_BYTES:
        raise ValueError("saved statement-review response bytes exceed their limit")
    if not isinstance(attestation_text, str) or not attestation_text or len(attestation_text.encode("utf-8")) > 64 * 1024:
        raise ValueError("saved statement-review attestation bytes exceed their limit")
    request = _statement_review_json_object(request_text, "saved request", 1024 * 1024)
    _validate_statement_review_request_record(request, problem_id)
    response = _statement_review_json_object(response_text, "saved response", STATEMENT_REVIEW_RESPONSE_MAX_BYTES)
    disposition, attestation = _validate_statement_review_response_value(response, request)
    attestation_bytes = attestation_text.encode("utf-8")
    attestation_value = _statement_review_json_object(attestation_text.rstrip("\n"), "saved attestation", 64 * 1024)
    if attestation_value != attestation:
        raise ValueError("saved attestation bytes do not match the response attestation object")
    request_sha256 = str(request["request_sha256"])
    request_bytes_sha256 = _digest_bytes(request_text.encode("utf-8"))
    response_sha256 = _digest_bytes(response_text.encode("utf-8"))
    attestation_sha256 = _digest_bytes(attestation_bytes)
    expected_id = _digest_bytes((problem_id + "\n" + request_sha256 + "\n" + response_sha256).encode("utf-8"))
    snapshot_file_sha256 = str(request["m0_binding"]["snapshot_file_sha256"])
    if (
        value.get("id") != "statement-review-" + expected_id
        or value.get("recorded_at_utc") is None
        or value.get("problem_statement_sha256") != request.get("problem_statement_sha256")
        or value.get("m0_snapshot_file_sha256") != snapshot_file_sha256
        or value.get("request_sha256") != request_sha256
        or value.get("request_bytes_sha256") != request_bytes_sha256
        or value.get("response_sha256") != response_sha256
        or value.get("attestation_sha256") != attestation_sha256
        or value.get("binding_status") != "VALID_FOR_PINNED_REQUEST"
        or value.get("reviewer_identity_status") != "NOT_VERIFIED"
        or value.get("mathematical_disposition_status") != "UNVERIFIED_REVIEWER_ASSERTION"
        or value.get("disposition_assertion") != disposition
        or value.get("gate_effect") != "NONE"
        or value.get("queue_effect") != "NONE"
        or value.get("training_use") != "NOT_AUTHORIZED"
    ):
        raise ValueError("saved statement-review response bindings or boundaries failed to reopen")
    created_at = value.get("recorded_at_utc")
    if not isinstance(created_at, str):
        raise ValueError("saved statement-review timestamp is missing")
    try:
        created = datetime.fromisoformat(created_at.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("saved statement-review timestamp is malformed") from exc
    if created.tzinfo is None:
        raise ValueError("saved statement-review timestamp must include a timezone")
    return value


def _create_statement_review_response_record(
    problem_id: str,
    current_request: dict[str, object],
    request_text: object,
    response_text: object,
    attestation_text: object,
) -> dict[str, object]:
    if not isinstance(request_text, str) or request_text.encode("utf-8") != _javascript_json_bytes(current_request):
        raise ValueError("the exact current request bytes changed; nothing was saved")
    request = _statement_review_json_object(request_text, "request", 1024 * 1024)
    _validate_statement_review_request_record(request, problem_id)
    if request != current_request:
        raise ValueError("the submitted request is not the current M0 review target; nothing was saved")
    response = _statement_review_json_object(response_text, "response", STATEMENT_REVIEW_RESPONSE_MAX_BYTES)
    disposition, attestation = _validate_statement_review_response_value(response, request)
    if not isinstance(attestation_text, str) or not attestation_text or len(attestation_text.encode("utf-8")) > 64 * 1024:
        raise ValueError("attestation bytes must contain 1..65536 UTF-8 bytes")
    attestation_value = _statement_review_json_object(attestation_text.rstrip("\n"), "attestation", 64 * 1024)
    if attestation_value != attestation:
        raise ValueError("attestation bytes do not match the exact response object")
    response_sha256 = _digest_bytes(response_text.encode("utf-8"))
    request_sha256 = str(request["request_sha256"])
    record_id = "statement-review-" + _digest_bytes(
        (problem_id + "\n" + request_sha256 + "\n" + response_sha256).encode("utf-8")
    )
    now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    record: dict[str, object] = {
        "schema_version": "mathcase-statement-review-response-record-v1",
        "id": record_id,
        "recorded_at_utc": now,
        "problem_id": problem_id,
        "problem_statement_sha256": request["problem_statement_sha256"],
        "m0_snapshot_file_sha256": request["m0_binding"]["snapshot_file_sha256"],
        "request_sha256": request_sha256,
        "request_bytes_sha256": _digest_bytes(request_text.encode("utf-8")),
        "request_json_utf8": request_text,
        "response_sha256": response_sha256,
        "response_json_utf8": response_text,
        "attestation_sha256": _digest_bytes(attestation_text.encode("utf-8")),
        "attestation_json_utf8": attestation_text,
        "binding_status": "VALID_FOR_PINNED_REQUEST",
        "reviewer_identity_status": "NOT_VERIFIED",
        "mathematical_disposition_status": "UNVERIFIED_REVIEWER_ASSERTION",
        "disposition_assertion": disposition,
        "gate_effect": "NONE",
        "queue_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
    }
    return _validated_statement_review_response_record(record)


def _statement_review_response_queue_item_id(record: dict[str, object]) -> str | None:
    request = _statement_review_json_object(
        str(record["request_json_utf8"]), "saved request", 1024 * 1024,
    )
    binding = request.get("m0_binding", {}).get("queue_item_binding")
    return str(binding["item_id"]) if isinstance(binding, dict) else None


def _statement_review_request_queue_item_id(request: dict[str, object]) -> str | None:
    binding = request.get("m0_binding", {}).get("queue_item_binding")
    return str(binding["item_id"]) if isinstance(binding, dict) else None


def _statement_review_response_current_binding(
    record: dict[str, object], current_request: dict[str, object]
) -> str:
    if (
        record.get("request_sha256") == current_request.get("request_sha256")
        and record.get("m0_snapshot_file_sha256") == current_request.get("m0_binding", {}).get("snapshot_file_sha256")
        and record.get("problem_statement_sha256") == current_request.get("problem_statement_sha256")
        and _statement_review_response_queue_item_id(record)
        == _statement_review_request_queue_item_id(current_request)
    ):
        return "CURRENT"
    return "STALE"


def _append_statement_review_response_record(
    path: Path, record: dict[str, object]
) -> tuple[list[dict[str, object]], str, bool]:
    with _review_store_lock(path):
        _validated_statement_review_response_record(record)
        records, previous = _read_review_store_unlocked(path, _validated_statement_review_response_record)
        existing = next((item for item in records if item.get("id") == record["id"]), None)
        if existing is not None:
            byte_fields = (
                "problem_id", "problem_statement_sha256", "m0_snapshot_file_sha256", "request_sha256",
                "request_bytes_sha256", "request_json_utf8", "response_sha256", "response_json_utf8",
                "attestation_sha256", "attestation_json_utf8",
            )
            if all(existing.get(key) == record.get(key) for key in byte_fields):
                return records, previous, True
            raise FileExistsError("a statement-review response ID already exists with different bytes")
        if len(records) >= 1000:
            raise ValueError("statement-review response history reached its 1000 record limit")
        payload = {
            "schema_version": "mathcase-local-review-entry-v1",
            "sequence": len(records) + 1,
            "previous_entry_sha256": previous,
            "record": record,
            "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
        }
        entry = {**payload, "entry_sha256": _digest_bytes(_canonical_json_bytes(payload))}
        raw = _canonical_json_bytes(entry) + b"\n"
        current_size = path.stat().st_size if path.exists() else 0
        if current_size + len(raw) > REVIEW_STORE_MAX_BYTES:
            raise ValueError("statement-review response history exceeds its 16 MiB limit")
        with path.open("ab") as handle:
            handle.write(raw)
            handle.flush()
            os.fsync(handle.fileno())
        return records + [record], str(entry["entry_sha256"]), False


def _statement_review_response_source_entries(path: Path) -> tuple[dict[str, tuple[dict[str, object], str]], str]:
    """Reopen the append-only response chain and retain each exact source entry hash."""
    with _review_store_lock(path):
        records, head = _read_review_store_unlocked(path, _validated_statement_review_response_record)
        if not path.exists():
            return {}, head
        entries: dict[str, tuple[dict[str, object], str]] = {}
        for line in path.read_bytes().splitlines():
            value = json.loads(line)
            record = _validated_statement_review_response_record(value.get("record"))
            entries[str(record["id"])] = (record, str(value["entry_sha256"]))
        if set(entries) != {str(record["id"]) for record in records}:
            raise ValueError("statement-review source entries changed while reopening")
        return entries, head


def _validated_statement_review_response_disposition(value: object) -> dict[str, object]:
    keys = {
        "schema_version", "record_id", "source_entry_sha256", "recorded_at_utc", "origin",
        "disposition", "excluded_from_human_review_counts", "excluded_from_science_counts",
        "identity_status", "gate_effect", "queue_effect", "training_use", "reason",
    }
    if not isinstance(value, dict) or set(value) != keys:
        raise ValueError("statement-review response disposition has an unsupported shape")
    if (
        value.get("schema_version") != "mathcase-statement-review-response-disposition-v1"
        or not isinstance(value.get("record_id"), str)
        or not STATEMENT_REVIEW_RESPONSE_ID.fullmatch(value["record_id"])
        or not isinstance(value.get("source_entry_sha256"), str)
        or not SOURCE_DIGEST.fullmatch(value["source_entry_sha256"])
        or value.get("origin") != "PREVIEW_TEST_DEFAULT_STORE_OMISSION"
        or value.get("disposition") != "TEST_ORIGIN_ARTIFACT"
        or value.get("excluded_from_human_review_counts") is not True
        or value.get("excluded_from_science_counts") is not True
        or value.get("identity_status") != "NOT_VERIFIED"
        or value.get("gate_effect") != "NONE"
        or value.get("queue_effect") != "NONE"
        or value.get("training_use") != "NOT_AUTHORIZED"
        or value.get("reason") != "Synthetic preview test records were appended after a restarted test server omitted its injected temporary response store."
    ):
        raise ValueError("statement-review response disposition boundaries are invalid")
    recorded_at = value.get("recorded_at_utc")
    if not isinstance(recorded_at, str):
        raise ValueError("statement-review response disposition timestamp is missing")
    try:
        timestamp = datetime.fromisoformat(recorded_at.replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("statement-review response disposition timestamp is invalid") from exc
    if timestamp.tzinfo is None:
        raise ValueError("statement-review response disposition timestamp must include a timezone")
    return value


def _read_statement_review_response_dispositions_unlocked(path: Path) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], REVIEW_ZERO_HASH
    if path.is_symlink() or path.stat().st_size > REVIEW_STORE_MAX_BYTES:
        raise ValueError("statement-review response disposition store is unsafe or exceeds its size limit")
    raw = path.read_bytes()
    records: list[dict[str, object]] = []
    previous = REVIEW_ZERO_HASH
    seen: set[str] = set()
    for sequence, line in enumerate(raw.splitlines(), start=1):
        try:
            entry = json.loads(line)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("statement-review response disposition store has a malformed line") from exc
        keys = {"schema_version", "sequence", "previous_entry_sha256", "record", "record_sha256", "entry_sha256"}
        if not isinstance(entry, dict) or set(entry) != keys or entry.get("schema_version") != "mathcase-statement-review-disposition-entry-v1":
            raise ValueError("statement-review response disposition entry has an unsupported schema")
        record = _validated_statement_review_response_disposition(entry.get("record"))
        payload = {key: value for key, value in entry.items() if key != "entry_sha256"}
        entry_sha256 = _digest_bytes(_canonical_json_bytes(payload))
        if (
            entry.get("sequence") != sequence
            or entry.get("previous_entry_sha256") != previous
            or entry.get("record_sha256") != _digest_bytes(_canonical_json_bytes(record))
            or entry.get("entry_sha256") != entry_sha256
            or record["record_id"] in seen
        ):
            raise ValueError("statement-review response disposition hash chain failed")
        seen.add(str(record["record_id"]))
        records.append(record)
        previous = entry_sha256
    if len(records) > 1000:
        raise ValueError("statement-review response disposition store exceeds its record limit")
    return records, previous


def _read_statement_review_response_dispositions(
    source_path: Path, disposition_path: Path
) -> tuple[dict[str, dict[str, object]], str]:
    source_entries, _source_head = _statement_review_response_source_entries(source_path)
    if disposition_path.exists():
        with _review_store_lock(disposition_path):
            dispositions, head = _read_statement_review_response_dispositions_unlocked(disposition_path)
    else:
        dispositions, head = [], REVIEW_ZERO_HASH
    indexed: dict[str, dict[str, object]] = {}
    for record in dispositions:
        record_id = str(record["record_id"])
        source = source_entries.get(record_id)
        if source is None or source[1] != record.get("source_entry_sha256"):
            raise ValueError("statement-review response disposition does not bind its preserved source entry")
        indexed[record_id] = record
    return indexed, head


def _append_statement_review_response_disposition(
    source_path: Path, disposition_path: Path, record_id: str
) -> tuple[str, bool]:
    source_entries, _source_head = _statement_review_response_source_entries(source_path)
    source = source_entries.get(record_id)
    if source is None:
        raise ValueError("test-origin disposition requires an exact preserved source response")
    now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    record = _validated_statement_review_response_disposition({
        "schema_version": "mathcase-statement-review-response-disposition-v1",
        "record_id": record_id,
        "source_entry_sha256": source[1],
        "recorded_at_utc": now,
        "origin": "PREVIEW_TEST_DEFAULT_STORE_OMISSION",
        "disposition": "TEST_ORIGIN_ARTIFACT",
        "excluded_from_human_review_counts": True,
        "excluded_from_science_counts": True,
        "identity_status": "NOT_VERIFIED",
        "gate_effect": "NONE",
        "queue_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
        "reason": "Synthetic preview test records were appended after a restarted test server omitted its injected temporary response store.",
    })
    disposition_path.parent.mkdir(parents=True, exist_ok=True)
    with _review_store_lock(disposition_path):
        records, previous = _read_statement_review_response_dispositions_unlocked(disposition_path)
        existing = next((item for item in records if item["record_id"] == record_id), None)
        if existing is not None:
            if existing["source_entry_sha256"] != source[1]:
                raise ValueError("test-origin disposition ID already binds different source bytes")
            return previous, True
        if len(records) >= 1000:
            raise ValueError("statement-review response disposition store reached its record limit")
        payload = {
            "schema_version": "mathcase-statement-review-disposition-entry-v1",
            "sequence": len(records) + 1,
            "previous_entry_sha256": previous,
            "record": record,
            "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
        }
        entry_sha256 = _digest_bytes(_canonical_json_bytes(payload))
        entry = {**payload, "entry_sha256": entry_sha256}
        current_size = disposition_path.stat().st_size if disposition_path.exists() else 0
        encoded = _canonical_json_bytes(entry) + b"\n"
        if current_size + len(encoded) > REVIEW_STORE_MAX_BYTES:
            raise ValueError("statement-review response disposition store exceeds its size limit")
        with disposition_path.open("ab") as stream:
            stream.write(encoded)
            stream.flush()
            os.fsync(stream.fileno())
        return entry_sha256, False


def _validated_review_packet_draft_shape(value: object) -> dict[str, object]:
    keys = {
        "schema_version", "id", "created_at", "status", "case_id", "selected_run_id",
        "packet_sha256", "content_bindings", "reviewer_label", "identity_status",
        "findings", "supersedes_draft_id", "gate_effect", "training_use",
    }
    if not isinstance(value, dict) or set(value) != keys:
        raise ValueError("review packet draft has an unsupported shape")
    if value.get("schema_version") != "mathcase-review-packet-draft-v1" or value.get("status") != "DRAFT":
        raise ValueError("review packet draft must use the supported DRAFT schema")
    if not isinstance(value.get("id"), str) or not REVIEW_PACKET_DRAFT_ID.fullmatch(value["id"]):
        raise ValueError("review packet draft ID is malformed")
    if not isinstance(value.get("created_at"), str):
        raise ValueError("review packet draft timestamp is missing")
    try:
        timestamp = datetime.fromisoformat(value["created_at"].replace("Z", "+00:00"))
    except ValueError as exc:
        raise ValueError("review packet draft timestamp is invalid") from exc
    if timestamp.tzinfo is None:
        raise ValueError("review packet draft timestamp must include a timezone")
    if value.get("case_id") != BOOTSTRAP_CASE_ID or not isinstance(value.get("selected_run_id"), str) or not value["selected_run_id"]:
        raise ValueError("review packet draft case or selected run is invalid")
    for key in ("packet_sha256",):
        if not isinstance(value.get(key), str) or not SOURCE_DIGEST.fullmatch(value[key]):
            raise ValueError(f"review packet draft {key} is malformed")
    if not isinstance(value.get("content_bindings"), dict) or not value["content_bindings"]:
        raise ValueError("review packet draft has no content bindings")
    if not isinstance(value.get("reviewer_label"), str) or len(value["reviewer_label"]) > 80:
        raise ValueError("review packet draft reviewer label is invalid")
    if value.get("identity_status") != "UNVERIFIED_SELF_DESCRIPTION" or value.get("gate_effect") != "NONE" or value.get("training_use") != "NOT_AUTHORIZED":
        raise ValueError("review packet drafts cannot declare identity, gate effect, or training authority")
    supersedes = value.get("supersedes_draft_id")
    if supersedes is not None and (not isinstance(supersedes, str) or not REVIEW_PACKET_DRAFT_ID.fullmatch(supersedes)):
        raise ValueError("review packet draft supersession link is malformed")
    findings = value.get("findings")
    if not isinstance(findings, list) or [item.get("question_id") for item in findings if isinstance(item, dict)] != list(BOOTSTRAP_REVIEW_QUESTION_IDS):
        raise ValueError("review packet draft findings must cover the exact ordered question set")
    for finding in findings:
        if not isinstance(finding, dict) or set(finding) != {"question_id", "answer", "source_location", "note"}:
            raise ValueError("review packet draft finding has an unsupported shape")
        if finding.get("answer") not in {"YES", "NO", "UNSURE", "NOT_REVIEWED"}:
            raise ValueError("review packet draft finding answer is unsupported")
        if not isinstance(finding.get("source_location"), str) or len(finding["source_location"]) > 240:
            raise ValueError("review packet draft source location is invalid")
        note = finding.get("note")
        if not isinstance(note, str) or len(note) > 2000 or any(ord(char) < 32 and char not in "\n\r\t" for char in note):
            raise ValueError("review packet draft finding note is invalid")
    return value


def _read_review_packet_drafts_unlocked(path: Path) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], REVIEW_ZERO_HASH
    if path.is_symlink() or path.stat().st_size > REVIEW_STORE_MAX_BYTES:
        raise ValueError("local review packet draft store is unsafe or exceeds its size limit")
    raw = path.read_bytes()
    if not raw:
        return [], REVIEW_ZERO_HASH
    records: list[dict[str, object]] = []
    previous = REVIEW_ZERO_HASH
    for sequence, line in enumerate(raw.splitlines(), start=1):
        try:
            entry = json.loads(line)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("local review packet draft store has a malformed line; it was left unchanged") from exc
        keys = {"schema_version", "sequence", "previous_entry_sha256", "record", "record_sha256", "entry_sha256"}
        if not isinstance(entry, dict) or set(entry) != keys or entry.get("schema_version") != "mathcase-review-draft-entry-v1":
            raise ValueError("local review packet draft entry has an unsupported schema")
        record = _validated_review_packet_draft_shape(entry.get("record"))
        payload = {key: value for key, value in entry.items() if key != "entry_sha256"}
        expected_entry = _digest_bytes(_canonical_json_bytes(payload))
        if (
            entry.get("sequence") != sequence
            or entry.get("previous_entry_sha256") != previous
            or entry.get("record_sha256") != _digest_bytes(_canonical_json_bytes(record))
            or entry.get("entry_sha256") != expected_entry
        ):
            raise ValueError("local review packet draft hash chain failed; it was left unchanged")
        records.append(record)
        previous = expected_entry
    if len(records) > 1000:
        raise ValueError("local review packet draft store exceeds its record limit")
    return records, previous


def _read_review_packet_drafts(path: Path) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], REVIEW_ZERO_HASH
    with _review_store_lock(path):
        return _read_review_packet_drafts_unlocked(path)


def _append_review_packet_draft(path: Path, record: dict[str, object]) -> tuple[list[dict[str, object]], str, bool]:
    with _review_store_lock(path):
        records, previous = _read_review_packet_drafts_unlocked(path)
        for existing in records:
            if existing["id"] == record["id"]:
                if existing == record:
                    return records, previous, True
                raise FileExistsError("a review packet draft with this ID already exists with different content")
        if len(records) >= 1000:
            raise ValueError("local review packet draft store reached its 1000 record limit")
        payload = {
            "schema_version": "mathcase-review-draft-entry-v1",
            "sequence": len(records) + 1,
            "previous_entry_sha256": previous,
            "record": record,
            "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
        }
        entry_hash = _digest_bytes(_canonical_json_bytes(payload))
        entry = {**payload, "entry_sha256": entry_hash}
        with path.open("ab") as handle:
            handle.write(_canonical_json_bytes(entry) + b"\n")
            handle.flush()
            os.fsync(handle.fileno())
        return records + [record], entry_hash, False


def _review_packet_draft_binding_error(draft: dict[str, object], packet: dict[str, object]) -> str | None:
    if draft.get("case_id") != packet.get("case_id") or draft.get("selected_run_id") != packet.get("selected_run_id"):
        return "review packet draft does not bind the selected case and run"
    if draft.get("packet_sha256") != packet.get("packet_sha256") or draft.get("content_bindings") != packet.get("content_bindings"):
        return "review packet content changed; the old draft remains preserved as stale"
    return None


def make_handler(
    allowlist: set[str],
    review_store_path: Path = REVIEW_STORE_PATH,
    review_packet_draft_store_path: Path = REVIEW_PACKET_DRAFT_STORE_PATH,
    proofdesk_dispatcher: ProofDeskDispatcher | None = None,
    system_assurance_review_store_path: Path = SYSTEM_ASSURANCE_REVIEW_STORE_PATH,
    problem_queue: ProblemQueue | None = None,
    statement_review_response_store_path: Path = STATEMENT_REVIEW_RESPONSE_STORE_PATH,
    statement_review_response_disposition_store_path: Path = STATEMENT_REVIEW_RESPONSE_DISPOSITION_STORE_PATH,
    local_computation_review_store_path: Path | None = None,
    proof_companion_review_store_path: Path | None = None,
    local_computation_write_root: Path | None = None,
    m6_attachment_lock_directory: Path | None = None,
    problem_draft_store: ProblemDraftStore | None = None,
    user_problem_case_store: UserProblemCaseStore | None = None,
):
    dispatch_service = proofdesk_dispatcher or ProofDeskDispatcher(
        ROOT,
        campaign_budget_status=lambda: _campaign_dispatch_budget_status(ROOT),
    )
    queue_service = problem_queue or ProblemQueue(ROOT)
    draft_service = problem_draft_store or ProblemDraftStore(ROOT)
    user_case_service = user_problem_case_store or UserProblemCaseStore(ROOT)

    class PreviewHandler(BaseHTTPRequestHandler):
        server_version = "MathCaseLocalPreview/1"
        sys_version = ""

        def log_message(self, _format: str, *_args: object) -> None:
            return

        def _discard_rejected_request_body(self) -> bool:
            """Drain a small rejected write body before closing its HTTP/1.0 socket."""
            raw_length = self.headers.get("Content-Length")
            if raw_length is None:
                return True
            try:
                remaining = int(raw_length)
            except ValueError:
                self.close_connection = True
                return False
            if remaining < 0 or remaining > REVIEW_BODY_MAX_BYTES:
                self.close_connection = True
                return False
            if remaining == 0:
                return True
            previous_timeout = self.connection.gettimeout()
            try:
                self.connection.settimeout(2.0)
                while remaining:
                    chunk = self.rfile.read(min(remaining, 64 * 1024))
                    if not chunk:
                        self.close_connection = True
                        return False
                    remaining -= len(chunk)
                return True
            except OSError:
                self.close_connection = True
                return False
            finally:
                self.connection.settimeout(previous_timeout)

        def _respond(self, status: int, body: bytes = b"", content_type: str = "text/plain; charset=utf-8") -> None:
            self.send_response(status)
            self.send_header("Content-Type", content_type)
            self.send_header("Content-Length", str(len(body)))
            self.send_header("Cache-Control", "no-store")
            self.send_header("X-Content-Type-Options", "nosniff")
            self.send_header("Referrer-Policy", "no-referrer")
            self.send_header("Content-Security-Policy", "default-src 'self' data:; img-src 'self' data:; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline'; frame-src 'self'; connect-src 'self'; object-src 'none'; base-uri 'self'; frame-ancestors 'self'")
            self.end_headers()
            if self.command != "HEAD" and body:
                self.wfile.write(body)

        def _serve(self) -> None:
            parsed = urlsplit(self.path)
            raw_path = parsed.path
            if raw_path == "/api/source-match":
                self._serve_source_match(parsed.query)
                return
            route = unquote(raw_path.lstrip("/"))
            if raw_path == "/" or route == "":
                route = UI_ROUTE
            if "\\" in route or "\x00" in route or any(part in (".", "..") for part in route.split("/")):
                self._respond(404, b"not available in local preview\n")
                return
            # Qualification outputs are append-only: a server started before a run finishes
            # must still serve that run's exact receipt and snapshot once they appear.
            if route not in allowlist and not _is_live_qualification_route(route) and not dispatch_service.allows_artifact_route(route):
                self._respond(404, b"not available in local preview\n")
                return
            target = ROOT.joinpath(*route.split("/"))
            if not _is_safe_regular_file(target):
                try:
                    target = _safe_local_artifact(ROOT, route)
                except (OSError, ValueError):
                    self._respond(404, b"not available in local preview\n")
                    return
            if not _is_safe_regular_file(target):
                self._respond(404, b"not available in local preview\n")
                return
            try:
                body = target.read_bytes()
            except OSError:
                self._respond(404, b"not available in local preview\n")
                return
            content_type, _encoding = mimetypes.guess_type(target.name)
            if target.suffix == ".md":
                content_type = "text/markdown"
            if target.suffix in {".lean", ".go", ".py", ".txt", ".jsonl", ".tsv"}:
                content_type = "text/plain"
            if target.suffix == ".json":
                content_type = "application/json"
            content_type = content_type or "application/octet-stream"
            if content_type.startswith("text/") or content_type in {"application/json", "application/javascript"}:
                content_type += "; charset=utf-8"
            self._respond(200, body, content_type)

        def _serve_source_match(self, query: str) -> None:
            try:
                expected_host = f"127.0.0.1:{self.server.server_port}"
                if not self.client_address[0].startswith("127.") or self.headers.get("Host") != expected_host:
                    raise ValueError("source comparison is available only to loopback clients")
                origin = self.headers.get("Origin")
                if origin is not None and origin != f"http://{expected_host}":
                    raise ValueError("cross-origin source comparison is refused")
                parameters = parse_qs(query, strict_parsing=True)
                if set(parameters) != {"receipt", "manifest"} or any(len(v) != 1 for v in parameters.values()):
                    raise ValueError("source comparison requires one receipt and one manifest path")
                report = _source_match_report(ROOT, parameters["receipt"][0], parameters["manifest"][0])
                body = json.dumps(report, sort_keys=True, separators=(",", ":")).encode("utf-8")
                self._respond(200, body, "application/json; charset=utf-8")
            except (ValueError, OSError, json.JSONDecodeError, subprocess.SubprocessError) as exc:
                body = json.dumps({"error": str(exc)}, separators=(",", ":")).encode("utf-8")
                self._respond(409, body, "application/json; charset=utf-8")

        def _serve_qualification_status(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("qualification status does not accept query parameters")
                self._json_response(200, _qualification_status(ROOT))
            except (ValueError, OSError, json.JSONDecodeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_proofdesk_status(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("Proof Desk status does not accept query parameters")
                self._json_response(200, _proofdesk_status(ROOT))
            except (ValueError, OSError, json.JSONDecodeError, subprocess.SubprocessError, TypeError, KeyError) as exc:
                self._json_response(409, {
                    "schema_version": "mathcase-local-proofdesk-status-v1",
                    "state": "NO_SOURCE",
                    "reason": str(exc),
                })

        def _serve_lean_runtime_warm_status(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("Lean warm runtime status does not accept query parameters")
                self._json_response(200, dispatch_service.lean_runtime_warm_status())
            except (ValueError, OSError, subprocess.SubprocessError, TypeError, KeyError) as exc:
                self._json_response(409, {
                    "schema_version": "mathcase-lean-warm-environment-v1",
                    "state": "UNAVAILABLE",
                    "error": str(exc),
                    "provider_calls": 0,
                })

        def _serve_proofdesk_dispatch_options(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("Proof Desk dispatch options do not accept query parameters")
                self._json_response(200, dispatch_service.options())
            except (ValueError, OSError, json.JSONDecodeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-proofdesk-dispatch-options-v1", "state": "NO_SOURCE", "providers": [], "reason": str(exc)})

        def _serve_proofdesk_run(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True)
                if set(parameters) != {"run_id"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("Proof Desk run read requires exactly one run ID")
                result = _saved_proofdesk_run(ROOT, dispatch_service, parameters["run_id"][0])
                self._json_response(202 if result.get("status") == "RUNNING" else 200, result)
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-proofdesk-dispatch-run-v1", "status": "NO_SOURCE", "error": str(exc)})

        def _serve_run_evidence_archive(self, query: str) -> None:
            try:
                self._validate_local_api_request()
            except PermissionError:
                self._json_response(403, {"error": "run archive history is available only in the local preview"})
                return
            if query:
                self._json_response(400, {"error": "run archive history does not accept query parameters"})
                return

            schema = "mathcase-local-run-evidence-history-v1"
            archive_root = os.environ.get("MATHCASE_RUN_EVIDENCE_ROOT")
            if not archive_root or not archive_root.strip():
                self._json_response(200, {
                    "schema_version": schema,
                    "status": "NOT_CONFIGURED",
                    "scope": "proofdesk_dispatch",
                    "message": "No run archive is connected.",
                    "run_count": 0,
                    "runs": [],
                })
                return

            try:
                runs = read_local_run_archive(archive_root)
            except (OSError, ValueError, TypeError, KeyError):
                self._json_response(200, {
                    "schema_version": schema,
                    "status": "CHECK_FAILED",
                    "scope": "proofdesk_dispatch",
                    "message": "The run archive could not be verified. No archived records are shown.",
                    "run_count": 0,
                    "runs": [],
                })
                return

            self._json_response(200, {
                "schema_version": schema,
                "status": "READY",
                "scope": "proofdesk_dispatch",
                "message": "Run summaries are bound to the archive manifest; provider flags and Lean receipts remain separate.",
                "run_count": len(runs),
                "runs": [_local_run_archive_summary_view(run) for run in runs],
            })

        def _serve_proofdesk_request(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True)
                if set(parameters) != {"request_id"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("Proof Desk request read requires exactly one idempotency request ID")
                request_id = parameters["request_id"][0]
                result = dispatch_service.get_request(request_id)
                binding = result.get("case_binding")
                if isinstance(binding, dict) and isinstance(binding.get("case_id"), str) and binding["case_id"].startswith("user-") and isinstance(result.get("run_id"), str):
                    user_case_service.record_run(binding["case_id"], result["run_id"], request_id)
                self._json_response(202 if result.get("status") == "RUNNING" else 200, result)
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-proofdesk-dispatch-run-v1", "status": "NO_SOURCE", "error": str(exc)})

        def _validate_local_api_host(self) -> None:
            expected_host = f"127.0.0.1:{self.server.server_port}"
            if not self.client_address[0].startswith("127.") or self.headers.get("Host") != expected_host:
                self._discard_rejected_request_body()
                raise PermissionError("case feedback is available only to this loopback preview")

        def _validate_local_api_origin(self) -> None:
            expected_host = f"127.0.0.1:{self.server.server_port}"
            origin = self.headers.get("Origin")
            if origin is not None and origin != f"http://{expected_host}":
                self._discard_rejected_request_body()
                raise PermissionError("cross-origin case feedback is refused")

        def _validate_dispatch_origin(self) -> None:
            expected_host = f"127.0.0.1:{self.server.server_port}"
            if self.client_address[0] != "127.0.0.1" or self.headers.get("Host") != expected_host:
                self._discard_rejected_request_body()
                raise PermissionError("Proof Desk runs are available only to the local preview")
            if self.headers.get("Origin") != f"http://{expected_host}":
                self._discard_rejected_request_body()
                raise PermissionError("Proof Desk dispatch requires a same-origin browser action")

        def _validate_local_api_request(self) -> None:
            self._validate_local_api_host()
            self._validate_local_api_origin()

        def _json_response(self, status: int, value: dict[str, object]) -> None:
            body = json.dumps(value, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
            self._respond(status, body, "application/json; charset=utf-8")

        def _serve_review_notes(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("case feedback reads do not accept query parameters")
                records, head = _read_review_store(review_store_path)
                self._json_response(200, {
                    "schema_version": "mathcase-local-review-store-v1",
                    "records": records,
                    "record_count": len(records),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/owner-notes.jsonl",
                })
            except (ValueError, OSError, json.JSONDecodeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_experimental_campaign_evidence(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True)
                if set(parameters) != {"run_id", "kind", "sha256"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("campaign evidence reads require one run ID, evidence kind, and SHA-256")
                run_id, kind, requested_digest = parameters["run_id"][0], parameters["kind"][0], parameters["sha256"][0]
                if not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9._-]{0,127}", run_id):
                    raise ValueError("campaign evidence run ID is invalid")
                if not SOURCE_DIGEST.fullmatch(requested_digest):
                    raise ValueError("campaign evidence SHA-256 is invalid")
                allowed_kinds = {
                    "problem", "source_binding", "reservation", "solver_output", "solver_stderr",
                    "standard_reopen", "standard_reopen_stderr", "lean_receipt",
                    "explanation_drafts", "cost_ledger", "search_method", "known_result_direct_check",
                    "known_result_proof_source", "proof_metrics", "review_packet", "dossier_manifest",
                    "dossier_reopen_record",
                    "pantograph_search_result", "pantograph_search_reservation", "pantograph_search_request",
                    "pantograph_search_disposition", "pantograph_search_stdout", "pantograph_search_stderr",
                    "pantograph_attempt_outcome", "pantograph_attempt_summary",
                    "manual_known_result_check", "manual_known_result_lean_output", "research_dossier",
                    "manual_candidate_record", "manual_verification_command", "source_license_check",
                    "solver_candidate_lean_check", "solver_candidate_source",
                    "chunked_local_proof_source", "chunked_local_proof_check", "chunked_proof_chunks",
                }
                if kind not in allowed_kinds:
                    raise ValueError("campaign evidence kind is not supported")
                projection, _, _ = _read_local_json(ROOT, CAMPAIGN_EXPERIMENTAL_RESULTS_PATH)
                if projection.get("schema_version") != "mathcase-campaign-experimental-results-v2":
                    raise ValueError("campaign evidence projection schema is not supported")
                attempts = projection.get("attempts")
                results = projection.get("results")
                if not isinstance(attempts, list) and not isinstance(results, list):
                    raise ValueError("campaign evidence projection has no results or attempts")
                identities = {}
                for collection in (results, attempts):
                    if not isinstance(collection, list):
                        continue
                    for item in collection:
                        if not isinstance(item, dict) or item.get("run_id") != run_id:
                            continue
                        evidence_files = item.get("evidence_files")
                        reference = evidence_files.get(kind) if isinstance(evidence_files, dict) else None
                        if not isinstance(reference, dict) or reference.get("sha256") != requested_digest:
                            continue
                        identity = (item.get("problem_id"), reference.get("path"), reference.get("sha256"))
                        identities[identity] = item
                if len(identities) != 1:
                    raise ValueError("campaign evidence SHA-256 does not resolve to one saved run, kind, and path")
                (problem_id, relative_path, expected_digest), result = next(iter(identities.items()))
                evidence_root = "data/local/staging/problem-queue/experimental-campaign/"
                if (
                    not isinstance(relative_path, str)
                    or not relative_path.startswith(evidence_root)
                    or "\\" in relative_path
                    or "\x00" in relative_path
                    or any(part in ("", ".", "..") for part in relative_path.split("/"))
                    or not isinstance(expected_digest, str)
                    or not SOURCE_DIGEST.fullmatch(expected_digest)
                ):
                    raise ValueError("campaign evidence reference is malformed")
                evidence_path = _safe_local_artifact(ROOT, relative_path)
                if evidence_path.stat().st_size > 2 * 1024 * 1024:
                    raise ValueError("campaign evidence exceeds the 2 MiB read limit")
                raw = evidence_path.read_bytes()
                digest = _digest_bytes(raw)
                if digest != expected_digest:
                    raise ValueError("campaign evidence digest no longer matches its saved projection")

                if kind.endswith("stderr") or kind in {
                    "cost_ledger", "known_result_proof_source", "pantograph_search_stdout",
                    "pantograph_attempt_summary",
                    "manual_known_result_lean_output",
                    "solver_candidate_source", "chunked_local_proof_source",
                }:
                    content: object = {"text": raw.decode("utf-8", "replace")[:12000]}
                else:
                    parsed = json.loads(raw)
                    if not isinstance(parsed, dict):
                        raise ValueError("campaign evidence JSON is not an object")
                    if kind == "solver_output":
                        attempts = parsed.get("attempts")
                        summarized_attempts = []
                        for attempt in attempts if isinstance(attempts, list) else []:
                            if not isinstance(attempt, dict):
                                continue
                            trace = attempt.get("local_process_trace")
                            container = trace.get("container_execution") if isinstance(trace, dict) else None
                            args = trace.get("arguments") if isinstance(trace, dict) else None
                            label = next((str(arg).split("=", 1)[1] for arg in args if isinstance(arg, str) and arg.startswith("mathcase.queue_run=")), None) if isinstance(args, list) else None
                            summarized_attempts.append({key: attempt.get(key) for key in (
                                "id", "run_id", "problem_id", "stage", "model_id", "outcome", "failure_class",
                                "failure_summary", "started_at", "finished_at", "search_metrics",
                            ) if key in attempt})
                            summarized_attempts[-1]["execution"] = {
                                "image_id": container.get("image_id") if isinstance(container, dict) else None,
                                "network_mode": container.get("network_mode") if isinstance(container, dict) else None,
                                "container_name": container.get("container_name") if isinstance(container, dict) else None,
                                "queue_run_label": label,
                                "termination": trace.get("termination") if isinstance(trace, dict) else None,
                                "timeout_phase": trace.get("host_timeout_phase") if isinstance(trace, dict) else None,
                                "cleanup_succeeded": container.get("cleanup_succeeded") if isinstance(container, dict) else None,
                            }
                        content = {
                            "run_id": parsed.get("run_id"), "problem_id": parsed.get("problem_id"),
                            "solved": parsed.get("solved"), "proof": parsed.get("proof"),
                            "attempts": summarized_attempts,
                        }
                    elif kind == "lean_receipt":
                        keys = (
                            "schema_version", "evidence_id", "recorded_at_utc", "problem_id", "input_proof",
                            "problem_statement_sha256", "proof_sha256", "snapshot_id", "snapshot_manifest_sha256",
                            "toolchain", "lean_version", "imports", "allowed_axioms", "observed_axioms",
                            "kernel_passed", "axioms_passed", "status", "summary", "exit_code",
                            "elapsed_milliseconds", "execution_image",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    elif kind == "reservation":
                        keys = (
                            "schema_version", "attempt_id", "item_id", "problem_id", "reserved_at_utc",
                            "problem_sha256", "source_binding_sha256", "campaign_proposal_sha256",
                            "lean_snapshot_manifest_sha256", "lean_snapshot_id", "lean_sandbox_image",
                            "pantograph_sandbox_image", "search_bounds", "network_disabled", "provider_calls",
                            "provider_cost_micro_usd", "retrieval_used", "saved_proof_supplied_to_search",
                            "statement_fidelity", "proof_attachment", "acceptance_gates", "prior_setup_refusals",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    elif kind == "pantograph_search_result":
                        trace = parsed.get("pantograph_process_trace")
                        container = trace.get("container_execution") if isinstance(trace, dict) else None
                        search_result = parsed.get("search_result")
                        search = search_result if isinstance(search_result, dict) else {}
                        content = {
                            "schema_version": parsed.get("schema_version"),
                            "attempt_id": parsed.get("attempt_id"),
                            "campaign_slot_id": parsed.get("campaign_slot_id"),
                            "actual_search": parsed.get("actual_search"),
                            "exit_code": parsed.get("exit_code"),
                            "host_elapsed_seconds": parsed.get("host_elapsed_seconds"),
                            "gate_promotion": parsed.get("gate_promotion"),
                            "provider_calls": parsed.get("provider_calls"),
                            "provider_cost_micro_usd": parsed.get("provider_cost_micro_usd"),
                            "retrieval_used": parsed.get("retrieval_used"),
                            "manual_lean_check": parsed.get("manual_lean_check"),
                            "search_result": {
                                "status": search.get("status"),
                                "metrics": search.get("metrics"),
                                "proof": search.get("proof"),
                                "error": search.get("error"),
                            },
                            "execution": {
                                "image_id": container.get("image_id") if isinstance(container, dict) else None,
                                "network_mode": container.get("network_mode") if isinstance(container, dict) else None,
                                "pull_policy": container.get("pull_policy") if isinstance(container, dict) else None,
                                "termination": trace.get("termination") if isinstance(trace, dict) else None,
                                "cleanup_attempted": container.get("cleanup_attempted") if isinstance(container, dict) else None,
                                "cleanup_succeeded": container.get("cleanup_succeeded") if isinstance(container, dict) else None,
                            },
                        }
                    elif kind == "pantograph_search_reservation":
                        keys = (
                            "schema_version", "attempt_id", "campaign_slot_id", "problem_id", "status",
                            "actual_search_runs_before", "actual_search_started", "search_slot_consumed",
                            "max_search_runs", "local_lean_verification_already_used",
                            "local_lean_verification_for_this_run", "network_disabled", "pantograph_image",
                            "provider_calls", "provider_cost_micro_usd", "retrieval_hints",
                            "saved_proof_supplied", "source_body_supplied", "gate_promotion", "request_sha256",
                            "runner_source_sha256", "runner_executable_sha256",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    elif kind == "pantograph_search_request":
                        keys = (
                            "statement", "max_nodes", "max_depth", "imports", "phase_budgets",
                            "retrieval_hints", "retrieval_output_sha256",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    elif kind == "pantograph_search_disposition":
                        keys = (
                            "schema_version", "attempt_id", "search_started", "failure_phase", "exact_error",
                            "root_cause", "observed_reason", "retryable_infrastructure_failure", "disposition",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    elif kind == "manual_known_result_check":
                        keys = (
                            "schema_version", "attempt_id", "item_id", "campaign_slot_id", "method",
                            "solver_generated", "novelty", "outcome", "lean_exit_code", "exit_code_note",
                            "proof_source_sha256", "lean_output_sha256", "lean_output_axiom_report",
                            "source_revision", "source_sha256", "source_declaration_used", "review_state",
                            "m0_rights_gate", "acceptance_gates", "provider_calls", "provider_cost_usd",
                            "recorded_at_utc",
                        )
                        content = {key: parsed[key] for key in keys if key in parsed}
                    else:
                        content = parsed
                self._json_response(200, {
                    "schema_version": "mathcase-campaign-evidence-view-v1",
                    "run_id": run_id,
                    "problem_id": problem_id,
                    "kind": kind,
                    "source_path": relative_path,
                    "source_sha256": digest,
                    "content": content,
                })
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_problem_queue(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("problem queue reads do not accept query parameters")
                self._json_response(200, queue_service.read())
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-problem-queue-v1", "error": str(exc)})

        def _serve_problem_drafts(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("user problem draft reads do not accept query parameters")
                self._json_response(200, draft_service.read())
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-user-problem-drafts-v1", "error": str(exc)})

        def _serve_user_problem_cases(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("prepared user case reads do not accept query parameters")
                store = user_case_service.read()
                records = []
                for record in store["records"]:
                    catalog_record = user_case_service.catalog_record_view(record)
                    records.append({**catalog_record, "runs": user_case_service.runs_for(record["case_id"])})
                route_options = dispatch_service.user_case_templates()
                self._json_response(200, {
                    "schema_version": USER_CASE_STORE_SCHEMA,
                    "records": records,
                    "record_count": len(records),
                    "templates": route_options.get("templates", []),
                    "route_options_error": route_options.get("error"),
                    "training": "NOT_AUTHORIZED",
                    "public_export": "NOT_AUTHORIZED",
                })
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": USER_CASE_STORE_SCHEMA, "error": str(exc)})

        def _serve_problem_queue_dossier(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"item_id"} or len(parameters["item_id"]) != 1:
                    raise ValueError("queue dossier reads require one item_id")
                self._json_response(200, queue_service.read_dossier(parameters["item_id"][0]))
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-problem-queue-dossier-v1", "error": str(exc)})

        def _serve_problem_queue_experimental_attempt(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"item_id"} or len(parameters["item_id"]) != 1:
                    raise ValueError("experimental attempt reads require one item_id")
                self._json_response(200, queue_service.read_pre_review_experimental_attempt(parameters["item_id"][0]))
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-problem-queue-experimental-attempt-v1", "error": str(exc)})

        def _serve_problem_queue_review_request(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) == {"problem_id"} and len(parameters["problem_id"]) == 1:
                    request = queue_service.read_statement_review_request(parameters["problem_id"][0])
                elif set(parameters) == {"item_id"} and len(parameters["item_id"]) == 1:
                    request = queue_service.read_statement_review_request_for_item(parameters["item_id"][0])
                else:
                    raise ValueError("statement review handoff requires one problem_id or one exact queue item_id")
                self._json_response(200, request)
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-statement-review-request-v1", "error": str(exc)})

        def _serve_problem_queue_review_responses(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) == {"problem_id"} and len(parameters["problem_id"]) == 1:
                    request = queue_service.read_statement_review_request(parameters["problem_id"][0])
                elif set(parameters) == {"item_id"} and len(parameters["item_id"]) == 1:
                    request = queue_service.read_statement_review_request_for_item(parameters["item_id"][0])
                else:
                    raise ValueError("saved statement-review reads require one problem_id or one exact queue item_id")
                problem_id = str(request["problem_id"])
                source_entries, head = _statement_review_response_source_entries(statement_review_response_store_path)
                dispositions, disposition_head = _read_statement_review_response_dispositions(
                    statement_review_response_store_path,
                    statement_review_response_disposition_store_path,
                )
                requested_item_id = _statement_review_request_queue_item_id(request)
                problem_records = [
                    (record, source_entry_sha256)
                    for record, source_entry_sha256 in source_entries.values()
                    if record["problem_id"] == problem_id
                ]
                if requested_item_id is not None:
                    scoped_records = [
                        (record, source_entry_sha256)
                        for record, source_entry_sha256 in problem_records
                        if _statement_review_response_queue_item_id(record) == requested_item_id
                    ]
                    problem_wide_item_ids = [
                        _statement_review_response_queue_item_id(record)
                        for record, _source_entry_sha256 in problem_records
                    ]
                    problem_wide_audit = {
                        "schema_version": "mathcase-statement-review-problem-wide-audit-v1",
                        "scope": "PROBLEM_WIDE_AUDIT_NOT_QUEUE_ITEM_HISTORY",
                        "record_count": len(problem_records),
                        "exact_item_record_count": sum(item_id == requested_item_id for item_id in problem_wide_item_ids),
                        "other_queue_item_record_count": sum(
                            item_id is not None and item_id != requested_item_id for item_id in problem_wide_item_ids
                        ),
                        "unbound_legacy_record_count": sum(item_id is None for item_id in problem_wide_item_ids),
                        "test_origin_record_count": sum(
                            str(record["id"]) in dispositions
                            for record, _source_entry_sha256 in problem_records
                        ),
                        "gate_effect": "NONE",
                        "queue_effect": "NONE",
                    }
                else:
                    scoped_records = problem_records
                    problem_wide_audit = None
                current_records = [
                    {
                        **record,
                        "bound_queue_item_id": _statement_review_response_queue_item_id(record),
                        "current_binding_status": _statement_review_response_current_binding(record, request),
                        "source_entry_sha256": source_entry_sha256,
                        "test_origin_disposition": dispositions.get(str(record["id"])),
                    }
                    for record, source_entry_sha256 in scoped_records
                ]
                problem_test_origin_count = sum(1 for record in current_records if record["test_origin_disposition"] is not None)
                self._json_response(200, {
                    "schema_version": "mathcase-statement-review-response-history-v1",
                    "problem_id": problem_id,
                    "scope": "QUEUE_ITEM" if requested_item_id is not None else "PROBLEM",
                    "queue_item_id": requested_item_id,
                    "current_request_sha256": request["request_sha256"],
                    "records": current_records,
                    "record_count": len(current_records),
                    "problem_raw_record_count": len(current_records),
                    "problem_record_count": len(current_records) - problem_test_origin_count,
                    "test_origin_record_count": problem_test_origin_count,
                    "problem_test_origin_record_count": problem_test_origin_count,
                    "problem_wide_audit": problem_wide_audit,
                    "human_review_count": 0,
                    "science_review_count": 0,
                    "store_head_sha256": head,
                    "disposition_store_head_sha256": disposition_head,
                    "store_path": "data/local/staging/case-feedback/statement-review-responses.jsonl",
                    "identity_status": "NOT_VERIFIED",
                    "gate_effect": "NONE",
                    "queue_effect": "NONE",
                })
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-statement-review-response-history-v1", "error": str(exc)})

        def _save_problem_queue_review_response(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("saved statement-review writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "saved statement-review writes require application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("saved statement-review write requires a valid Content-Length") from exc
                if content_length < 1:
                    raise ValueError("saved statement-review request is empty")
                if content_length > REVIEW_BODY_MAX_BYTES:
                    self._json_response(413, {"error": "saved statement-review request exceeds 8 MiB"})
                    return
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    self._discard_rejected_request_body()
                    raise PermissionError("saved statement-review writes require a same-origin browser action")
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("saved statement-review request body was truncated")
                try:
                    payload = _statement_review_json_object(raw.decode("utf-8"), "statement-review submission", REVIEW_BODY_MAX_BYTES)
                except UnicodeDecodeError as exc:
                    raise ValueError("statement-review submission must be UTF-8 JSON") from exc
                if (
                    set(payload) not in (
                        {"schema_version", "problem_id", "request_json_utf8", "response_json_utf8", "attestation_json_utf8"},
                        {"schema_version", "problem_id", "queue_item_id", "request_json_utf8", "response_json_utf8", "attestation_json_utf8"},
                    )
                    or payload.get("schema_version") != "mathcase-statement-review-response-save-v1"
                    or not isinstance(payload.get("problem_id"), str)
                    or ("queue_item_id" in payload and not isinstance(payload.get("queue_item_id"), str))
                ):
                    raise ValueError("statement-review submission schema is unsupported")
                problem_id = str(payload["problem_id"])
                queue_item_id = payload.get("queue_item_id")
                current_request = queue_service.read_statement_review_request(
                    problem_id,
                    queue_item_id=str(queue_item_id) if queue_item_id is not None else None,
                )
                record = _create_statement_review_response_record(
                    problem_id,
                    current_request,
                    payload.get("request_json_utf8"),
                    payload.get("response_json_utf8"),
                    payload.get("attestation_json_utf8"),
                )
                records, head, duplicate = _append_statement_review_response_record(
                    statement_review_response_store_path,
                    record,
                )
                self._json_response(200, {
                    "schema_version": "mathcase-statement-review-response-save-v1",
                    "record": record,
                    "record_count": len(records),
                    "duplicate": duplicate,
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/statement-review-responses.jsonl",
                    "binding_status": record["binding_status"],
                    "reviewer_identity_status": record["reviewer_identity_status"],
                    "mathematical_disposition_status": record["mathematical_disposition_status"],
                    "gate_effect": "NONE",
                    "queue_effect": "NONE",
                    "training_use": "NOT_AUTHORIZED",
                })
            except FileExistsError as exc:
                self._json_response(409, {"error": str(exc)})
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(400, {"error": str(exc)})

        def _serve_problem_queue_plan(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"plan_id"} or len(parameters["plan_id"]) != 1:
                    raise ValueError("queue plan reads require one plan_id")
                self._json_response(200, queue_service.read_plan(parameters["plan_id"][0]))
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-problem-queue-plan-v1", "error": str(exc)})

        def _serve_system_assurance_reviews(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("system-assurance review reads do not accept query parameters")
                records, head = _read_review_store(
                    system_assurance_review_store_path,
                    _validated_system_assurance_review_shape,
                )
                self._json_response(200, {
                    "schema_version": "mathcase-system-assurance-review-store-v1",
                    "records": records,
                    "record_count": len(records),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/system-assurance-reviews.jsonl",
                    "identity_status": "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED",
                    "gate_effect": "NONE",
                })
            except (ValueError, OSError, json.JSONDecodeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_cases(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("case catalog reads do not accept query parameters")
                cases = []
                unavailable_cases = []
                for case_id in ("nat-add-assoc", BOOTSTRAP_CASE_ID, "forall-n-n-eq-n"):
                    try:
                        context = _current_case_context(ROOT, case_id)
                    except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
                        unavailable_cases.append({"case_id": case_id, "state": "UNAVAILABLE", "reason": str(exc)})
                        continue
                    selected = context["selected_run"]
                    cases.append({
                        "case_id": context["case_id"],
                        "problem_id": context["problem_id"],
                        "title": context["title"],
                        "claim_class": context["claim_class"],
                        "selected_run_id": selected["run_id"],
                        "runs": [{"run_id": item["run_id"], "recorded_at_utc": item["recorded_at_utc"], "status": item["status"]} for item in context["runs"]],
                        "dossier_status": context.get("dossier_status"),
                        "delivery_ready": context.get("delivery_ready"),
                    })
                try:
                    context = _prime_model_case_context(ROOT, dispatch_service)
                except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                    unavailable_cases.append({"case_id": PRIME_MODEL_CASE_ID, "state": "UNAVAILABLE", "reason": str(exc)})
                else:
                    selected = context["selected_run"]
                    cases.append({
                        "case_id": context["case_id"],
                        "problem_id": context["problem_id"],
                        "title": context["title"],
                        "claim_class": context["claim_class"],
                        "selected_run_id": selected["run_id"],
                        "runs": [{"run_id": item["run_id"], "recorded_at_utc": item["recorded_at_utc"], "status": item["status"]} for item in context["runs"]],
                        "dossier_status": context.get("dossier_status"),
                        "delivery_ready": context.get("delivery_ready"),
                    })
                try:
                    for linked_id, load_linked in (
                        (COUNTEREXAMPLE_CASE_ID, lambda: counterexample_case_context(ROOT)),
                        (PRIME_CHILD_CASE_ID, lambda: _prime_child_case_context(ROOT, dispatch_service)),
                    ):
                        try:
                            linked = load_linked()
                            selected = linked["selected_run"]
                            cases.append({"case_id": linked["case_id"], "problem_id": linked["problem_id"],
                                          "title": linked["title"], "claim_class": linked["claim_class"],
                                          "selected_run_id": selected["run_id"],
                                          "runs": [{"run_id": item["run_id"], "recorded_at_utc": item.get("recorded_at_utc"), "status": item["status"]} for item in linked["runs"]],
                                          "dossier_status": linked["dossier_status"], "delivery_ready": False})
                        except (OSError, ValueError, KeyError, TypeError) as exc:
                            unavailable_cases.append({"case_id": linked_id, "state": "UNAVAILABLE", "reason": str(exc)})
                    campaign_projection = _campaign_projection(ROOT)
                except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
                    unavailable_cases.append({"case_id": "campaign-experimental-results", "state": "UNAVAILABLE", "reason": str(exc)})
                else:
                    campaign_slot_ids = {
                        item.get("slot_id")
                        for collection in (campaign_projection.get("results"), campaign_projection.get("attempts"))
                        if isinstance(collection, list)
                        for item in collection
                        if isinstance(item, dict) and isinstance(item.get("slot_id"), str)
                    }
                    for slot_id in sorted(campaign_slot_ids):
                        case_id = "campaign-" + slot_id.lower()
                        try:
                            context = _campaign_case_context(ROOT, case_id, projection=campaign_projection)
                        except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
                            unavailable_cases.append({"case_id": case_id, "state": "UNAVAILABLE", "reason": str(exc)})
                            continue
                        selected = context["selected_run"]
                        cases.append({
                            "case_id": context["case_id"],
                            "problem_id": context["problem_id"],
                            "title": context["title"],
                            "claim_class": context["claim_class"],
                            "selected_run_id": selected["run_id"],
                            "runs": [{"run_id": item["run_id"], "recorded_at_utc": item["recorded_at_utc"], "status": item["status"]} for item in context["runs"]],
                            "dossier_status": context.get("dossier_status"),
                            "delivery_ready": context.get("delivery_ready"),
                        })
                for item in list_local_computation_cases(ROOT):
                    if item.get("state") == "UNAVAILABLE":
                        unavailable_cases.append({"case_id": item["case_id"], "state": "UNAVAILABLE", "reason": item.get("reason")})
                        continue
                    cases.append({
                        "case_id": item["case_id"], "problem_id": item["problem_id"],
                        "title": item["title"], "claim_class": "LOCAL_ARITHMETIC_TASK",
                        "kind": "LOCAL_ARITHMETIC_TASK", "selected_run_id": "", "runs": [],
                        "case_version": item["case_version"], "local_artifact_count": item["artifact_count"],
                        "dossier_status": "M0_ADMITTED_UNASSESSED", "delivery_ready": False,
                    })
                for record in user_case_service.read()["records"]:
                    case_id = str(record["case_id"])
                    try:
                        context = _current_case_context(
                            ROOT, case_id, user_case_store=user_case_service, dispatcher=dispatch_service,
                        )
                    except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
                        unavailable_cases.append({"case_id": case_id, "state": "UNAVAILABLE", "reason": str(exc)})
                        continue
                    selected = context.get("selected_run")
                    cases.append({
                        "case_id": context["case_id"],
                        "problem_id": context["problem_id"],
                        "title": context["title"],
                        "claim_class": context["claim_class"],
                        "selected_run_id": selected.get("run_id", "") if isinstance(selected, dict) else "",
                        "runs": [
                            {"run_id": item["run_id"], "recorded_at_utc": item.get("recorded_at_utc"), "status": item.get("status")}
                            for item in context["runs"]
                        ],
                        "dossier_status": None,
                        "delivery_ready": False,
                        "review_status": record.get("review_status"),
                        "signature_status": record.get("signature_status"),
                    })
                self._json_response(200, {
                    "schema_version": "mathcase-local-case-catalog-v1",
                    "cases": cases,
                    "unavailable_cases": unavailable_cases,
                })
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_local_computation_case(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"case_id"} or len(parameters["case_id"]) != 1:
                    raise ValueError("local computation case reads require one case_id")
                self._json_response(200, read_local_computation_case(ROOT, parameters["case_id"][0]))
            except (LocalComputationError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_local_computation_artifact(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"case_id", "artifact_sha256"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("local computation artifact reads require one case_id and one artifact_sha256")
                self._json_response(200, read_local_computation_artifact(ROOT, parameters["case_id"][0], parameters["artifact_sha256"][0]))
            except (LocalComputationError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_local_computation_reviews(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"case_id", "artifact_sha256"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("local computation review reads require one case_id and artifact_sha256")
                self._json_response(200, read_local_computation_reviews(
                    ROOT, parameters["case_id"][0], parameters["artifact_sha256"][0],
                    store_path=local_computation_review_store_path,
                ))
            except (LocalComputationError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_two_congruence_proof_companion(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"case_id", "artifact_sha256"} or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("proof companion reads require one case_id and artifact_sha256")
                result = read_two_congruence_proof_view(
                    ROOT, parameters["case_id"][0], parameters["artifact_sha256"][0],
                    review_store_path=proof_companion_review_store_path,
                )
                self._json_response(200, result)
            except (ProofCompanionReviewError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"schema_version": "mathcase-two-congruence-proof-companion-view-v1", "status": "UNAVAILABLE", "error": str(exc)})

        def _save_two_congruence_proof_review(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("proof companion review writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "proof companion review writes require application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("proof companion review write requires a valid Content-Length") from exc
                if content_length < 1 or content_length > 64 << 10:
                    self._json_response(413, {"error": "proof companion review request must contain 1..65536 bytes"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("proof companion review request body was truncated")
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError("proof companion review writes require a same-origin browser action")
                try:
                    payload = json.loads(raw)
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("proof companion review submission is invalid JSON") from exc
                self._json_response(200, append_two_congruence_proof_review(
                    ROOT, payload, review_store_path=proof_companion_review_store_path,
                ))
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ProofCompanionReviewError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _mutate_local_computation(self, *, review: bool = False) -> None:
            label = "local computation review" if review else "local computation"
            maximum = REVIEW_BODY_MAX_BYTES if review else (1 << 20)
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError(f"{label} writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": f"{label} writes require application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError(f"{label} write requires a valid Content-Length") from exc
                if content_length < 1 or content_length > maximum:
                    raise ValueError(f"{label} request must contain 1..{maximum} bytes")
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError(f"{label} request body was truncated")
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError(f"{label} writes require a same-origin browser action")
                try:
                    payload = json.loads(raw)
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError(f"{label} submission is invalid JSON") from exc
                result = append_local_computation_review(
                    ROOT, payload, store_path=local_computation_review_store_path,
                ) if review else create_local_computation(local_computation_write_root or ROOT, payload)
                self._json_response(200, result)
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (LocalComputationError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_library(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                if query:
                    raise ValueError("case library reads do not accept query parameters")
                self._json_response(200, _local_case_library(ROOT, dispatch_service))
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_library_item(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"item_id"} or len(parameters["item_id"]) != 1:
                    raise ValueError("case library item reads require one item_id")
                self._json_response(200, _local_library_item(ROOT, parameters["item_id"][0], dispatch_service))
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_case_context(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                parameter_keys = set(parameters)
                if parameter_keys not in ({"case_id"}, {"case_id", "run_id"}) or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("case context requires one supported case_id and optionally one run_id")
                case_id = parameters["case_id"][0]
                run_id = parameters.get("run_id", [None])[0]
                if case_id == PRIME_MODEL_CASE_ID:
                    context = _prime_model_case_context(ROOT, dispatch_service, run_id)
                elif case_id == COUNTEREXAMPLE_CASE_ID:
                    context = counterexample_case_context(ROOT)
                    if run_id and run_id != context["selected_run"]["run_id"]:
                        raise ValueError("the selected run does not belong to the counterexample")
                elif case_id == PRIME_CHILD_CASE_ID:
                    context = _prime_child_case_context(ROOT, dispatch_service, run_id)
                else:
                    context = _current_case_context(
                        ROOT, case_id, run_id, user_case_store=user_case_service, dispatcher=dispatch_service,
                    )
                context["statement_sha256"] = _research_statement_sha(context)
                if context.get("historical_attempt") is True:
                    original_revision = _case_context_revision_sha256({**context, "sources": context["revision_source_bindings"], "formalization_scope": context["revision_formalization_scope"]})
                    if original_revision != context.get("case_revision_sha256"):
                        raise ValueError("historical reading does not preserve its original case revision")
                else:
                    context["case_revision_sha256"] = _case_context_revision_sha256(context)
                self._json_response(200, context)
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _serve_dossier_m6_attachment(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"case_id"} or len(parameters["case_id"]) != 1 or parameters["case_id"][0] != "nat-add-assoc":
                    raise ValueError("M6 dossier attachment read requires the fixed nat-add-assoc case")
                candidate = _nat_m6_attachment_candidate()
                attached = _nat_m6_attached_revision(candidate)
                if attached is None:
                    self._json_response(200, {
                        "schema_version": M6_ATTACHMENT_RESPONSE_SCHEMA,
                        "status": "AVAILABLE_TO_ATTACH",
                        "case_id": "nat-add-assoc",
                        "parent_dossier_sha256": NAT_M6_ATTACHMENT_PARENT_SHA256,
                        "candidate": candidate,
                        "gate_effect": "NONE",
                        "delivery_ready": False,
                    })
                    return
                self._json_response(200, {
                    "schema_version": M6_ATTACHMENT_RESPONSE_SCHEMA,
                    "status": "ATTACHED_AND_REOPENED",
                    "case_id": "nat-add-assoc",
                    "parent_dossier_sha256": NAT_M6_ATTACHMENT_PARENT_SHA256,
                    "candidate": candidate,
                    "dossier": attached,
                    "gate_effect": "NONE",
                    "delivery_ready": False,
                })
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"schema_version": M6_ATTACHMENT_RESPONSE_SCHEMA, "status": "UNAVAILABLE", "error": str(exc)})

        def _attach_dossier_m6_measurement(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("M6 dossier attachment does not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "M6 dossier attachment requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("M6 dossier attachment requires a valid Content-Length") from exc
                if content_length < 1 or content_length > M6_ATTACHMENT_BODY_MAX_BYTES:
                    self._json_response(413, {"error": "M6 dossier attachment request must contain 1..1024 bytes"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("M6 dossier attachment request body was truncated")
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError("M6 dossier attachment requires a same-origin browser action")
                try:
                    payload = json.loads(raw)
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("M6 dossier attachment request is invalid JSON") from exc
                if not isinstance(payload, dict) or set(payload) != {"schema_version", "case_id", "parent_dossier_sha256"} or \
                    payload.get("schema_version") != M6_ATTACHMENT_REQUEST_SCHEMA or \
                    payload.get("case_id") != "nat-add-assoc" or \
                    payload.get("parent_dossier_sha256") != NAT_M6_ATTACHMENT_PARENT_SHA256:
                    raise ValueError("M6 dossier attachment must name the pinned Nat parent dossier and exact request schema")

                lock_directory = m6_attachment_lock_directory or ROOT / "data/local/staging"
                lock_directory.mkdir(parents=True, exist_ok=True)
                if _is_link_or_reparse_point(lock_directory):
                    raise ValueError("M6 dossier attachment lock directory is unsafe")
                with exclusive_file_lock(lock_directory / "nat-m6-dossier-attachment.lock", timeout_seconds=3):
                    candidate = _nat_m6_attachment_candidate()
                    attached = _nat_m6_attached_revision(candidate)
                    if attached is None:
                        result = _run_mathcase_m6("dossier-attach-m6", [
                            "--project-root", str(ROOT),
                            "--store-root", str(ROOT / "data/local/dossier-store"),
                            "--dossier", str(ROOT / NAT_M6_ATTACHMENT_DOSSIER_PATH),
                            "--parent-sha256", NAT_M6_ATTACHMENT_PARENT_SHA256,
                            "--m4-receipt", str(ROOT / NAT_M6_ATTACHMENT_M4_PATH),
                            "--metrics-dir", str(ROOT / NAT_M6_ATTACHMENT_METRICS_DIR),
                        ])
                        if result.get("status") != "ATTACHED_IMMUTABLY" or not isinstance(result.get("dossier_sha256"), str):
                            raise ValueError("MathCase did not create the expected immutable M6 dossier successor")
                        attached = _reopen_nat_m6_revision(candidate, result["dossier_sha256"])
                        if result.get("case_version") != attached.get("case_version") or \
                            result.get("m6_metrics_receipt_sha256") != attached.get("m6_metrics_receipt_sha256"):
                            raise ValueError("created Nat dossier successor differs from the exact reopened M6 record")
                    self._json_response(200, {
                        "schema_version": M6_ATTACHMENT_RESPONSE_SCHEMA,
                        "status": "ATTACHED_AND_REOPENED",
                        "case_id": "nat-add-assoc",
                        "parent_dossier_sha256": NAT_M6_ATTACHMENT_PARENT_SHA256,
                        "candidate": candidate,
                        "dossier": attached,
                        "gate_effect": "NONE",
                        "delivery_ready": False,
                    })
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (TimeoutError, ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"schema_version": M6_ATTACHMENT_RESPONSE_SCHEMA, "status": "REFUSED", "error": str(exc)})

        def _serve_research(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                p = parse_qs(query, strict_parsing=True) if query else {}
                if set(p) != {"case_id"} or len(p["case_id"]) != 1:
                    raise ValueError("research read requires one case_id")
                context = self._research_case_context(p["case_id"][0])
                statement_sha256 = _research_statement_sha(context)
                case_allowed = _is_research_case(context)
                events = _tavily_events()
                records = [dict(row, cached=True) for row in events
                           if case_allowed and _tavily_result_has_verified_usage(row)
                           and row.get("case_id") == p["case_id"][0]
                           and row.get("statement_sha256") == statement_sha256]
                authorization = _tavily_authorization()
                usage = None
                usage_error = None
                api_key = os.environ.get("TAVILY_API_KEY", "")
                if case_allowed and api_key and authorization is not None:
                    try:
                        usage = _tavily_account_usage(api_key)
                    except ValueError as exc:
                        usage_error = str(exc)
                usage_verified = (usage is not None and authorization is not None
                                  and _tavily_usage_matches_owner_grant(authorization, usage))
                reservations = [row for row in events if row.get("event") == "RESERVED"]
                reconciled_attempts = sum(1 for row in events if row.get("event") == "RECONCILED")
                completed_ids = {row.get("request_id") for row in events if row.get("event") == "COMPLETED"}
                attempt_limit = _tavily_allowed_attempts(authorization, usage) if authorization and usage_verified else 0
                available = attempt_limit - _all_tavily_accounted_attempts(events)
                ready = case_allowed and bool(api_key) and authorization is not None and usage_verified and available > 0
                self._json_response(200, {"schema_version": "mathcase-tavily-research-v1",
                                          "case_id": p["case_id"][0],
                                          "statement_sha256": statement_sha256,
                                          "case_allowed": case_allowed,
                                          "configured": bool(api_key),
                                          "authorization_ready": authorization is not None,
                                          "free_only": usage_verified,
                                          "plan_name": usage.get("current_plan") if usage else None,
                                          "allowance_verified_at_utc": usage.get("observed_at_utc") if usage else None,
                                          "observed_monthly_credits": usage.get("plan_limit") if usage else None,
                                          "observed_credits_used": usage.get("plan_usage") if usage else None,
                                          "observed_remaining_credits": usage.get("remaining_plan_credits") if usage else None,
                                          "observed_paygo_usage": usage.get("paygo_usage") if usage else None,
                                          "usage_response_sha256": usage.get("response_sha256") if usage else None,
                                          "paid_usage_disabled": authorization.get("paid_usage_disabled") if authorization else None,
                                          "pay_as_you_go_enabled": authorization.get("pay_as_you_go_enabled") if authorization else None,
                                          "credit_cost_per_basic_search": TAVILY_BASIC_SEARCH_CREDIT_COST,
                                          "local_attempt_limit": attempt_limit,
                                          "attempts_reserved": len(reservations),
                                          "attempts_reconciled": reconciled_attempts,
                                          "ready": ready, "available_attempts": max(0, available),
                                          "pending": any(row.get("request_id") not in completed_ids for row in reservations),
                                          "setup_message": ("Tavily related-work search is not cleared for this case; no provider request can be sent." if not case_allowed else
                                                            "Set TAVILY_API_KEY in the current user's environment; no search request was sent." if not api_key else
                                                            "The owner-confirmed free-only search grant is missing or expired; no search request was sent." if authorization is None else
                                                            usage_error if usage_error else
                                                            "Live search is disabled because the account is not on the authorized free plan or has pay-as-you-go usage; no search request was sent." if not usage_verified else
                                                            "The owner-authorized free-only search cap is exhausted. Failed or uncertain attempts count toward it." if available <= 0 else
                                                            f"{usage['current_plan']} usage checked at {usage['observed_at_utc']}: {usage['remaining_plan_credits']} plan credits remain; one basic search costs 1 credit and {available} of {attempt_limit} local attempts remain."),
                                          "records": records})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _research_case_context(self, case_id: str) -> dict[str, object]:
            if case_id == PRIME_MODEL_CASE_ID:
                return _prime_model_case_context(ROOT, dispatch_service)
            return _current_case_context(ROOT, case_id)

        def _serve_draft_research(self, query: str) -> None:
            """Reopen only private source evidence bound to this exact saved draft."""
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) != {"draft_id"} or len(parameters["draft_id"]) != 1:
                    raise ValueError("draft research read requires one draft_id")
                draft = draft_service.get(parameters["draft_id"][0])
                events = read_draft_research_events(TAVILY_DRAFT_RESEARCH_STORE_PATH)
                records = completed_draft_research(events, draft["draft_id"], draft["statement_sha256"])
                authorization = _tavily_authorization()
                accounted = _all_tavily_accounted_attempts(_tavily_events())
                available = max(0, min(TAVILY_LIVE_CALL_LIMIT,
                                       authorization["allowance_limit"] if authorization else 0) - accounted)
                used_for_draft = any(row.get("event") == "RESERVED" and row.get("draft_id") == draft["draft_id"]
                                     for row in events)
                self._json_response(200, {
                    "schema_version": DRAFT_RESEARCH_VIEW_SCHEMA,
                    "draft_id": draft["draft_id"],
                    "statement_sha256": draft["statement_sha256"],
                    "suggested_query": _suggest_draft_research_query(draft),
                    "records": records,
                    "one_basic_search_credit_cost": TAVILY_BASIC_SEARCH_CREDIT_COST,
                    "available_local_attempts_before_fresh_usage_check": available,
                    "credential_configured": bool(os.environ.get("TAVILY_API_KEY")),
                    "free_plan_configuration_present": authorization is not None,
                    "draft_attempt_already_reserved": used_for_draft,
                    "can_request_fresh_preflight": bool(os.environ.get("TAVILY_API_KEY"))
                        and authorization is not None and available > 0 and not used_for_draft,
                    "account_usage_checked_for_this_read": False,
                    "boundary": "No search runs on page load. Search sends only the displayed query after an exact-draft opt in and a fresh free-plan usage check. Results are untrusted leads, not a checked estimate or Lean proof.",
                })
            except PermissionError as exc:
                self._json_response(403, {"schema_version": DRAFT_RESEARCH_VIEW_SCHEMA, "error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": DRAFT_RESEARCH_VIEW_SCHEMA, "error": str(exc)})

        def _start_draft_research(self) -> None:
            """One opt-in basic search per draft, with shared conservative credit cap."""
            try:
                self._validate_dispatch_origin()
                if urlsplit(self.path).query:
                    raise ValueError("draft research write does not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "draft research requires application/json"})
                    return
                length = int(self.headers.get("Content-Length", "0"))
                if length <= 0 or length > 4096:
                    raise ValueError("draft research request is outside its size limit")
                body = json.loads(self.rfile.read(length).decode("utf-8", errors="strict"))
                expected = {"schema_version", "draft_id", "statement_sha256", "query", "request_id",
                            "confirmed_external_search", "confirmed_one_credit"}
                if not isinstance(body, dict) or set(body) != expected or body.get("schema_version") != "mathcase-draft-research-request-v1":
                    raise ValueError("draft research request fields or schema are unsupported")
                if body.get("confirmed_external_search") is not True or body.get("confirmed_one_credit") is not True:
                    raise ValueError("draft research requires explicit exact-query and one-credit consent")
                request_id, query = body["request_id"], body["query"]
                if not isinstance(request_id, str) or not re.fullmatch(r"[a-f0-9]{32}", request_id):
                    raise ValueError("draft research request ID is invalid")
                if (not isinstance(query, str) or query != query.strip() or "\x00" in query
                        or not 5 <= len(query.encode("utf-8")) <= 280):
                    raise ValueError("draft research query must be the exact displayed text, 5 to 280 bytes")
                draft = draft_service.get(body["draft_id"])
                if body["statement_sha256"] != draft["statement_sha256"]:
                    raise ValueError("saved draft changed; reload before researching")
                store = TAVILY_DRAFT_RESEARCH_STORE_PATH
                store.parent.mkdir(parents=True, exist_ok=True)
                TAVILY_RESEARCH_STORE_PATH.parent.mkdir(parents=True, exist_ok=True)
                lock = TAVILY_RESEARCH_STORE_PATH.with_suffix(".lock")
                with exclusive_file_lock(lock, timeout_seconds=3):
                    events = read_draft_research_events(store)
                    original = next((row for row in events if row.get("event") == "RESERVED"
                                     and row.get("request_id") == request_id), None)
                    if original:
                        if any(original.get(key) != body.get(key) for key in ("draft_id", "statement_sha256", "query")):
                            raise ValueError("draft research request ID belongs to a different exact request")
                        result = next((row for row in reversed(events) if row.get("event") == "COMPLETED"
                                       and row.get("request_id") == request_id and row.get("status") == "COMPLETE"), None)
                        if result:
                            self._json_response(200, {**result, "cached": True})
                            return
                        self._json_response(409, {"status": "ALREADY_RESERVED", "message": "This request was already reserved and will not run again."})
                        return
                    if any(row.get("event") == "RESERVED" and row.get("draft_id") == draft["draft_id"] for row in events):
                        self._json_response(429, {"status": "DRAFT_ATTEMPT_LIMIT", "message": "This draft already used its one opt-in search attempt. Saved results remain available above."})
                        return
                    # The existing local record supplies the free-plan identity and
                    # shared credit cap only. Its public-known-case scope is not a
                    # draft grant. The exact draft and displayed query are separately
                    # authorized by this request's two explicit browser confirmations.
                    authorization = _tavily_authorization()
                    api_key = os.environ.get("TAVILY_API_KEY", "")
                    if not api_key or authorization is None:
                        self._json_response(503, {"status": "FREE_SEARCH_NOT_CONFIGURED", "message": "A current free-plan configuration and Tavily key are required; no search was sent."})
                        return
                    try:
                        usage = _tavily_account_usage(api_key)
                    except ValueError as exc:
                        self._json_response(503, {"status": "USAGE_PREFLIGHT_FAILED", "message": str(exc)})
                        return
                    if not _tavily_usage_matches_owner_grant(authorization, usage):
                        self._json_response(503, {"status": "USAGE_NOT_FREE", "message": "Fresh usage did not confirm the configured free plan with pay-as-you-go unused; no search was sent."})
                        return
                    allowed = _tavily_allowed_attempts(authorization, usage)
                    if _all_tavily_accounted_attempts(_tavily_events()) >= allowed:
                        self._json_response(429, {"status": "LOCAL_ATTEMPT_LIMIT", "message": "The shared free-plan search allowance is exhausted. Failed and uncertain calls count."})
                        return
                    reserved_at = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
                    base = {"request_id": request_id, "draft_id": draft["draft_id"],
                            "statement_sha256": draft["statement_sha256"], "query": query,
                            "authorization_id": authorization["authorization_id"],
                            "consent": "EXACT_DRAFT_AND_DISPLAYED_QUERY_CONFIRMED_IN_BROWSER",
                            "provenance": "TAVILY_LIVE_PRIVATE_DRAFT",
                            "expected_credit_cost": TAVILY_BASIC_SEARCH_CREDIT_COST,
                            "account_usage_observed_at_utc": usage["observed_at_utc"],
                            "account_usage_response_sha256": usage["response_sha256"],
                            "account_plan_usage": usage["plan_usage"],
                            "account_plan_limit": usage["plan_limit"],
                            "account_paygo_usage": usage["paygo_usage"],
                            "recorded_at_utc": reserved_at}
                    append_draft_research_event(store, {**base, "event": "RESERVED", "status": "IN_FLIGHT"})
                try:
                    result = _tavily_search(query, api_key)
                    if result.get("credits_used") != TAVILY_BASIC_SEARCH_CREDIT_COST:
                        raise ValueError("Tavily did not confirm one-credit metering")
                    with exclusive_file_lock(lock, timeout_seconds=3):
                        completed = append_draft_research_event(store, {**base, "event": "COMPLETED", "status": "COMPLETE",
                            "provider_request_id": result["request_id"], "provider_credits_used": result["credits_used"],
                            "results": result["results"], "source_urls": [item["url"] for item in result["results"]],
                            "completed_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
                            "research_summary": "These are candidate sources for the displayed question. Check the local process, measured rates, and uncertainty in the linked sources before estimating a time. No numerical estimate or Lean proof was made.",
                            "boundary": "Untrusted search results; not verified local measurements, proof, or an estimate."})
                    self._json_response(200, {**completed, "cached": False})
                except (ValueError, OSError) as exc:
                    with exclusive_file_lock(lock, timeout_seconds=3):
                        append_draft_research_event(store, {**base, "event": "COMPLETED", "status": "FAILED_OR_UNKNOWN",
                            "provider_credits_used": None, "message": str(exc)[:300],
                            "completed_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")})
                    self._json_response(502, {"status": "FAILED_OR_UNKNOWN", "message": str(exc)[:300], "attempt_counted": True})
            except PermissionError as exc:
                self._json_response(403, {"schema_version": DRAFT_RESEARCH_VIEW_SCHEMA, "error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": DRAFT_RESEARCH_VIEW_SCHEMA, "error": str(exc)})

        def _start_research(self) -> None:
            try:
                self._validate_local_api_request()
                length = int(self.headers.get("Content-Length", "0"))
                if length <= 0 or length > 4096:
                    raise ValueError("research request is too large")
                body = json.loads(self.rfile.read(length).decode("utf-8"))
                if not isinstance(body, dict) or set(body) != {"case_id", "statement_sha256", "request_id"}:
                    raise ValueError("research requires the selected case, exact statement fingerprint, and request ID")
                request_id = body["request_id"]
                if not isinstance(request_id, str) or not re.fullmatch(r"[0-9a-f]{32}", request_id):
                    raise ValueError("research request ID is invalid")
                case_id = body["case_id"]
                context = self._research_case_context(case_id)
                if not _is_research_case(context):
                    raise ValueError("research is limited to disclosed public known cases")
                digest = _research_statement_sha(context)
                if not isinstance(digest, str) or body["statement_sha256"] != digest:
                    raise ValueError("selected case changed; reload before researching")
                statement = str(context.get("informal_statement", "")).strip()
                if not statement or len(statement) > 1500:
                    raise ValueError("case statement is unavailable for bounded research")
                query = statement + " related work prerequisites"
                store = TAVILY_RESEARCH_STORE_PATH
                store.parent.mkdir(parents=True, exist_ok=True)
                lock = store.with_suffix(".lock")
                with exclusive_file_lock(lock, timeout_seconds=3):
                    records = _tavily_events(store)
                    prior = next((r for r in reversed(records) if r.get("request_id") == request_id), None)
                    if prior:
                        prior_result = next((r for r in reversed(records) if r.get("event") == "COMPLETED" and r.get("request_id") == request_id), None)
                        if prior_result and _tavily_result_has_verified_usage(prior_result) and prior_result.get("case_id") == case_id and prior_result.get("statement_sha256") == digest:
                            self._json_response(200, {**prior_result, "cached": True})
                            return
                        self._json_response(409, {"status": prior.get("status", "IN_FLIGHT"), "message": "This request was already reserved and will not be dispatched again."})
                        return
                    cached = next((r for r in reversed(records) if _tavily_result_has_verified_usage(r) and r.get("case_id") == case_id and r.get("statement_sha256") == digest and r.get("query") == query), None)
                    if cached:
                        cached = {**cached, "cached": True}
                        self._json_response(200, cached)
                        return
                    completed_ids = {r.get("request_id") for r in records if r.get("event") == "COMPLETED"}
                    duplicate_in_flight = next((r for r in reversed(records) if r.get("event") == "RESERVED"
                                                and r.get("request_id") not in completed_ids
                                                and r.get("case_id") == case_id and r.get("statement_sha256") == digest
                                                and r.get("query") == query), None)
                    if duplicate_in_flight:
                        self._json_response(409, {"status": "IN_FLIGHT", "message": "This exact search is already in progress; no second request was sent."})
                        return
                    authorization = _tavily_authorization()
                    api_key = os.environ.get("TAVILY_API_KEY", "")
                    if not api_key:
                        self._json_response(503, {"status": "MISSING_CREDENTIAL", "message": "Set TAVILY_API_KEY in the current user's environment and restart the Case Desk."})
                        return
                    if authorization is None:
                        self._json_response(503, {"status": "MISSING_OWNER_FREE_ALLOWANCE", "message": "Current free-only authorization is missing, expired, paid, or pay-as-you-go enabled. Live search remains disabled."})
                        return
                    try:
                        usage = _tavily_account_usage(api_key)
                    except ValueError as exc:
                        self._json_response(503, {"status": "USAGE_PREFLIGHT_FAILED", "message": str(exc)})
                        return
                    if not _tavily_usage_matches_owner_grant(authorization, usage):
                        self._json_response(503, {"status": "USAGE_NOT_FREE", "message": "The fresh account usage check did not match the owner-confirmed free plan or showed pay-as-you-go usage; no search was sent."})
                        return
                    allowed = _tavily_allowed_attempts(authorization, usage)
                    if _all_tavily_accounted_attempts(records) >= allowed:
                        self._json_response(429, {"status": "LOCAL_ATTEMPT_LIMIT", "message": "The owner-confirmed free/grant attempt allowance is exhausted. Failed or uncertain dispatches count toward the limit."})
                        return
                    reserved_at = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
                    base = {"schema_version": "mathcase-tavily-research-event-v1", "request_id": request_id,
                            "case_id": case_id, "problem_id": context.get("problem_id"),
                            "statement_sha256": digest, "query": query, "authorization_id": authorization["authorization_id"],
                            "plan_name": authorization["plan_name"],
                            "authorization_verified_at_utc": authorization["verified_at_utc"],
                            "account_usage_observed_at_utc": usage["observed_at_utc"],
                            "account_usage_response_sha256": usage["response_sha256"],
                            "account_plan_usage": usage["plan_usage"],
                            "account_plan_limit": usage["plan_limit"],
                            "account_paygo_usage": usage["paygo_usage"],
                            "expected_credit_cost": TAVILY_BASIC_SEARCH_CREDIT_COST,
                            "provenance": "TAVILY_LIVE", "recorded_at_utc": reserved_at}
                    _append_tavily_event(store, {**base, "event": "RESERVED", "status": "IN_FLIGHT"})
                try:
                    result = _tavily_search(query, api_key)
                    if result.get("credits_used") != TAVILY_BASIC_SEARCH_CREDIT_COST:
                        raise ValueError("Tavily basic search did not confirm the one-credit free-plan cost; no result was saved")
                    completed = {**base, "event": "COMPLETED", "status": "COMPLETE", "cached": False,
                                 "provider_request_id": result["request_id"], "provider_credits_used": result["credits_used"],
                                 "results": result["results"],
                                 "source_urls": [r["url"] for r in result["results"]],
                                 "completed_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
                                 "boundary": "Untrusted reference material only; not proof, novelty evidence, accepted review, or downstream-use clearance."}
                    with exclusive_file_lock(lock, timeout_seconds=3):
                        _append_tavily_event(store, completed)
                    self._json_response(200, completed)
                except (ValueError, OSError) as exc:
                    failure = {**base, "event": "COMPLETED", "status": "FAILED_OR_UNKNOWN",
                               "provider_credits_used": None, "message": str(exc)[:300],
                               "completed_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")}
                    with exclusive_file_lock(lock, timeout_seconds=3):
                        _append_tavily_event(store, failure)
                    self._json_response(502, {"status": failure["status"], "message": failure["message"], "attempt_counted": True})
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"status": "ERROR", "message": str(exc)})

        def _current_review_packet(self, case_id: str, run_id: str | None = None) -> dict[str, object]:
            context = _current_case_context(ROOT, case_id, run_id)
            packet = context.get("review_packet")
            if not isinstance(packet, dict):
                raise ValueError("this case does not have an exact-content review packet")
            return packet

        def _serve_review_packet(self, query: str) -> None:
            try:
                self._validate_local_api_request()
                parameters = parse_qs(query, strict_parsing=True) if query else {}
                if set(parameters) not in ({"case_id"}, {"case_id", "run_id"}) or any(len(values) != 1 for values in parameters.values()):
                    raise ValueError("review packet read requires one case_id and optionally one run_id")
                case_id = parameters["case_id"][0]
                run_id = parameters.get("run_id", [None])[0]
                packet = self._current_review_packet(case_id, run_id)
                records, head = _read_review_packet_drafts(review_packet_draft_store_path)
                case_records = [record for record in records if record.get("case_id") == case_id]
                current = [
                    record for record in case_records
                    if _review_packet_draft_binding_error(record, packet) is None
                ]
                self._json_response(200, {
                    "schema_version": "mathcase-review-packet-view-v1",
                    "packet": packet,
                    "saved_draft": current[-1] if current else None,
                    "stale_saved_draft_count": len(case_records) - len(current),
                    "store_record_count": len(records),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/review-packet-drafts.jsonl",
                })
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"error": str(exc)})

        def _save_review_packet_draft(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("review packet draft writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "review packet draft requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("review packet draft requires a valid Content-Length") from exc
                if content_length < 1:
                    raise ValueError("review packet draft request is empty")
                if content_length > REVIEW_BODY_MAX_BYTES:
                    self._json_response(413, {"error": "review packet draft request exceeds 8 MiB"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("review packet draft request was truncated")
                self._validate_local_api_origin()
                payload = json.loads(raw)
                if not isinstance(payload, dict) or set(payload) != {"schema_version", "record"} or payload.get("schema_version") != "mathcase-review-packet-draft-submission-v1":
                    raise ValueError("review packet draft submission schema is unsupported")
                draft = _validated_review_packet_draft_shape(payload.get("record"))
                try:
                    packet = self._current_review_packet(draft["case_id"], draft["selected_run_id"])
                except ValueError:
                    self._json_response(409, {"error": "selected case or run is no longer an exact pinned review packet; nothing was saved"})
                    return
                binding_error = _review_packet_draft_binding_error(draft, packet)
                if binding_error:
                    self._json_response(409, {"error": binding_error + "; nothing was saved"})
                    return
                records, head, duplicate = _append_review_packet_draft(review_packet_draft_store_path, draft)
                self._json_response(200, {
                    "schema_version": "mathcase-review-packet-draft-save-v1",
                    "record": draft,
                    "record_count": len(records),
                    "duplicate": duplicate,
                    "record_sha256": _digest_bytes(_canonical_json_bytes(draft)),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/review-packet-drafts.jsonl",
                    "gate_effect": "NONE",
                    "training_use": "NOT_AUTHORIZED",
                })
            except FileExistsError as exc:
                self._json_response(409, {"error": str(exc)})
            except PermissionError as exc:
                self._json_response(409, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(400, {"error": str(exc)})

        def _validate_proofdesk_case_binding(self, payload: object) -> None:
            if not isinstance(payload, dict) or payload.get("schema_version") != DISPATCH_CASE_BOUND_REQUEST_SCHEMA:
                return
            binding = payload.get("case_binding")
            if (
                not isinstance(binding, dict)
                or binding.get("schema_version") != DISPATCH_CASE_BINDING_SCHEMA
                or not isinstance(binding.get("case_id"), str)
                or not isinstance(binding.get("case_problem_id"), str)
                or (binding.get("case_run_id") is not None and not isinstance(binding.get("case_run_id"), str))
                or not isinstance(binding.get("case_revision_sha256"), str)
                or not SOURCE_DIGEST.fullmatch(binding["case_revision_sha256"])
                or (binding.get("provider_context_sha256") is not None and (not isinstance(binding.get("provider_context_sha256"), str) or not SOURCE_DIGEST.fullmatch(binding["provider_context_sha256"])))
                or not isinstance(binding.get("lean_statement_sha256"), str)
                or not SOURCE_DIGEST.fullmatch(binding["lean_statement_sha256"])
            ):
                raise ValueError("case-bound dispatch requires one complete exact case revision and provider-context identity")
            profile, _profile_raw, _profile_path = dispatch_service._profile(payload.get("profile_id"))
            matching_items = [item for item in profile["items"] if item.get("problem_id") == payload.get("problem_id")]
            if len(matching_items) != 1 or matching_items[0].get("case_problem_id", matching_items[0]["problem_id"]) != binding["case_problem_id"]:
                raise ValueError("selected case does not match the provider profile's exact problem crosswalk")
            if binding["case_id"] == PRIME_MODEL_CASE_ID:
                context = _prime_model_case_context(ROOT, dispatch_service, binding["case_run_id"])
            else:
                context = _current_case_context(
                    ROOT, binding["case_id"], binding["case_run_id"],
                    user_case_store=user_case_service, dispatcher=dispatch_service,
                )
            _validate_case_context_binding(binding, matching_items[0], context)
            _enforce_case_provider_input_source(context)

        def _start_proofdesk_run(self) -> None:
            try:
                self._validate_dispatch_origin()
                if urlsplit(self.path).query:
                    raise ValueError("Proof Desk dispatch does not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "Proof Desk dispatch requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("Proof Desk dispatch requires a valid Content-Length") from exc
                if content_length < 1:
                    raise ValueError("Proof Desk dispatch request is empty")
                if content_length > 4096:
                    self._json_response(413, {"error": "Proof Desk dispatch request exceeds 4 KiB"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("Proof Desk dispatch request was truncated")
                try:
                    payload = json.loads(raw)
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("Proof Desk dispatch request is invalid JSON") from exc
                self._validate_proofdesk_case_binding(payload)
                git = subprocess.run(["git", "rev-parse", "HEAD"], cwd=ROOT, check=True, capture_output=True, text=True, timeout=3)
                result = dispatch_service.start(payload, server_sha256=PREVIEW_SERVER_BUILD_SHA256, source_head=git.stdout.strip())
                binding = payload.get("case_binding")
                if isinstance(binding, dict) and isinstance(binding.get("case_id"), str) and binding["case_id"].startswith("user-"):
                    user_case_service.record_run(binding["case_id"], result["run_id"], payload["request_id"])
                self._json_response(202, result)
            except RuntimeError as exc:
                self._json_response(409, {"schema_version": "mathcase-proofdesk-dispatch-run-v1", "status": "REFUSED", "error": str(exc)})
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, subprocess.SubprocessError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-proofdesk-dispatch-run-v1", "status": "REFUSED", "error": str(exc)})

        def _serve_preview_capabilities(self) -> None:
            try:
                self._validate_local_api_request()
                self._json_response(200, {
                    "schema_version": PREVIEW_CAPABILITIES_SCHEMA,
                    "contract_id": PREVIEW_API_CONTRACT_ID,
                    # Computed once when this server module is imported. This identifies
                    # the code loaded by this process, even if the source file changes later.
                    "server_build_sha256": PREVIEW_SERVER_BUILD_SHA256,
                    "runtime_instance_id": PREVIEW_RUNTIME_INSTANCE_ID,
                    "process_id": os.getpid(),
                    "tavily_configured": bool(os.environ.get("TAVILY_API_KEY")),
                    "dispatch_busy": bool(proofdesk_dispatcher and proofdesk_dispatcher._unfinished_run_ids()),
                    "tavily_dispatch_busy": _tavily_pending(),
                    "started_at_utc": PREVIEW_STARTED_AT_UTC,
                    "canonical_url": f"http://127.0.0.1:{self.server.server_port}/{UI_ROUTE}",
                    "capabilities": list(PREVIEW_CAPABILITIES),
                })
            except ValueError as exc:
                self._json_response(403, {"error": str(exc)})

        def _save_review_note(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("case feedback writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "case feedback requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("case feedback requires a valid Content-Length") from exc
                if content_length < 1:
                    raise ValueError("case feedback request is empty")
                if content_length > REVIEW_BODY_MAX_BYTES:
                    self._json_response(413, {"error": "case feedback request exceeds 8 MiB"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("case feedback request was truncated")
                self._validate_local_api_origin()
                payload = json.loads(raw)
                if not isinstance(payload, dict) or set(payload) != {"schema_version", "record"} or payload.get("schema_version") != "mathcase-local-review-submission-v1":
                    raise ValueError("case feedback submission schema is unsupported")
                record = _validated_note_shape(payload.get("record"))
                target = record["target"]
                kind = target["kind"]
                case_id = target["case_id"]
                run_id = target.get("run_id") if record["schema_version"] == "mathcase-owner-review-note-v3" else None
                try:
                    bindings = _current_review_bindings(ROOT, case_id, run_id)
                except ValueError:
                    self._json_response(409, {"error": "selected case or run is no longer an exact pinned review target; nothing was saved"})
                    return
                expected = bindings[kind]
                submitted_target = {key: value for key, value in target.items() if key != "run_id"}
                if submitted_target != expected:
                    self._json_response(409, {"error": "review target or evidence revision is stale; nothing was saved"})
                    return
                records, head, duplicate = _append_review_store(review_store_path, record)
                self._json_response(200, {
                    "schema_version": "mathcase-local-review-save-v1",
                    "records": records,
                    "record_count": len(records),
                    "record": record,
                    "duplicate": duplicate,
                    "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/owner-notes.jsonl",
                })
            except FileExistsError as exc:
                self._json_response(409, {"error": str(exc)})
            except PermissionError as exc:
                self._json_response(409, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(400, {"error": str(exc)})

        def _save_system_assurance_review(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("system-assurance review writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "system-assurance review requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("system-assurance review requires a valid Content-Length") from exc
                if content_length < 1:
                    raise ValueError("system-assurance review request is empty")
                if content_length > REVIEW_BODY_MAX_BYTES:
                    self._json_response(413, {"error": "system-assurance review request exceeds 8 MiB"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("system-assurance review request was truncated")
                self._validate_local_api_origin()
                payload = json.loads(raw)
                if (
                    not isinstance(payload, dict)
                    or set(payload) != {"schema_version", "reviewed_components"}
                    or payload.get("schema_version") != "mathcase-local-system-assurance-review-submission-v1"
                ):
                    raise ValueError("system-assurance review submission schema is unsupported")
                now = datetime.now(timezone.utc)
                record = {
                    "schema_version": "mathcase-system-human-review-v2",
                    "id": f"review-{int(now.timestamp() * 1000)}-{uuid.uuid4().hex[:8]}",
                    "recorded_at_utc": now.isoformat().replace("+00:00", "Z"),
                    "scope_id": SYSTEM_ASSURANCE_REVIEW_SCOPE_ID,
                    "scope_statement": SYSTEM_ASSURANCE_REVIEW_SCOPE,
                    "scope_statement_sha256": _digest_bytes(SYSTEM_ASSURANCE_REVIEW_SCOPE.encode("utf-8")),
                    "reviewer_label": "Local human reviewer (identity unverified)",
                    "identity_status": "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED",
                    "reviewed_components": payload.get("reviewed_components"),
                    "gate_effect": "NONE",
                    "training_use": "NOT_AUTHORIZED",
                }
                record = _validated_system_assurance_review_shape(record)
                records, head, duplicate = _append_review_store(
                    system_assurance_review_store_path,
                    record,
                    _validated_system_assurance_review_shape,
                )
                self._json_response(200, {
                    "schema_version": "mathcase-system-assurance-review-save-v1",
                    "record": record,
                    "record_count": len(records),
                    "duplicate": duplicate,
                    "record_sha256": _digest_bytes(_canonical_json_bytes(record)),
                    "store_head_sha256": head,
                    "store_path": "data/local/staging/case-feedback/system-assurance-reviews.jsonl",
                    "identity_status": "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED",
                    "gate_effect": "NONE",
                })
            except FileExistsError as exc:
                self._json_response(409, {"error": str(exc)})
            except PermissionError as exc:
                self._json_response(409, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(400, {"error": str(exc)})

        def do_GET(self) -> None:
            parsed = urlsplit(self.path)
            if PUBLIC_PROFILE:
                public_case_desk.handle_get(self, parsed, ROOT, globals(), dispatch_service)
                return
            if parsed.path == "/api/capabilities":
                self._serve_preview_capabilities()
                return
            if parsed.path == "/api/proofdesk-status":
                self._serve_proofdesk_status(parsed.query)
                return
            if parsed.path == "/api/lean-runtime-warm":
                self._serve_lean_runtime_warm_status(parsed.query)
                return
            if parsed.path == "/api/proofdesk-dispatch-options":
                self._serve_proofdesk_dispatch_options(parsed.query)
                return
            if parsed.path == "/api/proofdesk-run":
                self._serve_proofdesk_run(parsed.query)
                return
            if parsed.path == "/api/run-evidence-history":
                self._serve_run_evidence_archive(parsed.query)
                return
            if parsed.path == "/api/proofdesk-request":
                self._serve_proofdesk_request(parsed.query)
                return
            if parsed.path == "/api/qualification-status":
                self._serve_qualification_status(parsed.query)
                return
            if parsed.path == "/api/review-packet":
                self._serve_review_packet(parsed.query)
                return
            if parsed.path == "/api/review-notes":
                self._serve_review_notes(parsed.query)
                return
            if parsed.path == "/api/problem-queue":
                self._serve_problem_queue(parsed.query)
                return
            if parsed.path == "/api/user-problem-drafts":
                self._serve_problem_drafts(parsed.query)
                return
            if parsed.path == "/api/user-problem-cases":
                self._serve_user_problem_cases(parsed.query)
                return
            if parsed.path == "/api/experimental-campaign-evidence":
                self._serve_experimental_campaign_evidence(parsed.query)
                return
            if parsed.path == "/api/problem-queue-dossier":
                self._serve_problem_queue_dossier(parsed.query)
                return
            if parsed.path == "/api/problem-queue-experimental-attempt":
                self._serve_problem_queue_experimental_attempt(parsed.query)
                return
            if parsed.path == "/api/problem-queue-review-request":
                self._serve_problem_queue_review_request(parsed.query)
                return
            if parsed.path == "/api/problem-queue-review-responses":
                self._serve_problem_queue_review_responses(parsed.query)
                return
            if parsed.path == "/api/problem-queue-plan":
                self._serve_problem_queue_plan(parsed.query)
                return
            if parsed.path == "/api/system-assurance-reviews":
                self._serve_system_assurance_reviews(parsed.query)
                return
            if parsed.path == "/api/cases":
                self._serve_cases(parsed.query)
                return
            if parsed.path == "/api/library":
                self._serve_library(parsed.query)
                return
            if parsed.path == "/api/library-item":
                self._serve_library_item(parsed.query)
                return
            if parsed.path == "/api/case-context":
                self._serve_case_context(parsed.query)
                return
            if parsed.path == "/api/dossier-m6-attachment":
                self._serve_dossier_m6_attachment(parsed.query)
                return
            if parsed.path == "/api/local-computation-case":
                self._serve_local_computation_case(parsed.query)
                return
            if parsed.path == "/api/local-computation-artifact":
                self._serve_local_computation_artifact(parsed.query)
                return
            if parsed.path == "/api/local-computation-reviews":
                self._serve_local_computation_reviews(parsed.query)
                return
            if parsed.path == "/api/two-congruence-proof-companion":
                self._serve_two_congruence_proof_companion(parsed.query)
                return
            if parsed.path == "/api/research":
                self._serve_research(parsed.query)
                return
            if parsed.path == "/api/draft-research":
                self._serve_draft_research(parsed.query)
                return
            self._serve()

        def do_HEAD(self) -> None:
            if PUBLIC_PROFILE:
                self.do_GET()
                return
            self._serve()

        def _deny_write(self) -> None:
            self._discard_rejected_request_body()
            self._respond(405, b"read-only preview: method not allowed\n")

        def _mutate_problem_queue(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("problem queue writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "problem queue commands require application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("problem queue command requires a valid Content-Length") from exc
                if content_length < 1 or content_length > 4096:
                    self._json_response(413, {"error": "problem queue command must contain 1..4096 bytes"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("problem queue command body was truncated")
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError("problem queue writes require a same-origin browser action")
                try:
                    payload = json.loads(raw)
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("problem queue command is invalid JSON") from exc
                if not isinstance(payload, dict) or payload.get("schema_version") != "mathcase-problem-queue-command-v1":
                    raise ValueError("problem queue command schema is unsupported")
                action = payload.get("action")
                if action == "intake" and set(payload) == {"schema_version", "action", "problem_id", "idempotency_key"}:
                    result = queue_service.intake(payload["problem_id"], payload["idempotency_key"])
                elif action == "pause" and set(payload) == {"schema_version", "action"}:
                    result = queue_service.set_paused(True)
                elif action == "resume" and set(payload) == {"schema_version", "action"}:
                    result = queue_service.set_paused(False)
                elif action == "resume_item" and set(payload) == {"schema_version", "action", "item_id"}:
                    result = queue_service.resume_item(payload["item_id"])
                elif action == "skip" and set(payload) == {"schema_version", "action", "item_id", "reason"}:
                    result = queue_service.skip(payload["item_id"], payload["reason"])
                elif action == "plan" and set(payload) == {"schema_version", "action", "item_ids", "idempotency_key"}:
                    result = queue_service.create_plan(payload["item_ids"], payload["idempotency_key"])
                elif action == "dispatch_plan" and set(payload) == {"schema_version", "action", "plan_id", "idempotency_key"}:
                    result = queue_service.dispatch_plan(payload["plan_id"], payload["idempotency_key"])
                elif action == "attach_proof" and set(payload) == {"schema_version", "action", "plan_id", "item_id"}:
                    result = queue_service.attach_successful_result(payload["plan_id"], payload["item_id"])
                else:
                    raise ValueError("problem queue command fields or action are unsupported")
                self._json_response(200, result)
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError, subprocess.SubprocessError) as exc:
                self._json_response(409, {"schema_version": "mathcase-problem-queue-v1", "error": str(exc)})

        def _mutate_problem_draft(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("user problem draft writes do not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "user problem drafts require application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("user problem draft request requires a valid Content-Length") from exc
                if content_length < 1 or content_length > PROBLEM_DRAFT_REQUEST_MAX_BYTES:
                    self._json_response(413, {"error": "user problem draft request exceeds its bounded size"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("user problem draft request body was truncated")
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError("user problem draft writes require a same-origin browser action")
                try:
                    payload = json.loads(raw.decode("utf-8", errors="strict"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("user problem draft request is invalid UTF-8 JSON") from exc
                result = draft_service.create(payload)
                self._json_response(200 if result.get("duplicate") else 201, result)
            except PermissionError as exc:
                self._json_response(403, {"error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": "mathcase-user-problem-drafts-v1", "error": str(exc)})

        def _prepare_user_problem_case(self) -> None:
            try:
                self._validate_local_api_host()
                if urlsplit(self.path).query:
                    raise ValueError("user case preparation does not accept query parameters")
                if not self.headers.get("Content-Type", "").lower().startswith("application/json"):
                    self._json_response(415, {"error": "user case preparation requires application/json"})
                    return
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("user case preparation requires a valid Content-Length") from exc
                if content_length < 1 or content_length > 32 << 10:
                    self._json_response(413, {"error": "user case preparation request exceeds its bounded size"})
                    return
                raw = self.rfile.read(content_length)
                if len(raw) != content_length:
                    raise ValueError("user case preparation request was truncated")
                self._validate_local_api_origin()
                expected_origin = f"http://127.0.0.1:{self.server.server_port}"
                if self.headers.get("Origin") != expected_origin:
                    raise PermissionError("user case preparation requires a same-origin browser action")
                try:
                    payload = json.loads(raw.decode("utf-8", errors="strict"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("user case preparation request is invalid UTF-8 JSON") from exc
                if not isinstance(payload, dict):
                    raise ValueError("user case preparation request must be a JSON object")
                options = dispatch_service.user_case_templates()
                template = next((item for item in options.get("templates", []) if item.get("profile_id") == payload.get("profile_id")), None)
                if not isinstance(template, dict) or template.get("user_case_template_ready") is not True:
                    raise ValueError("the selected owner-verified Nebius route is not currently ready for a bounded user case")
                prepared = user_case_service.prepare(payload, draft_service)
                route = dispatch_service.prepare_user_case_profile(prepared["record"], str(payload["profile_id"]))
                self._json_response(200 if prepared.get("duplicate") else 201, {
                    "schema_version": USER_CASE_PREPARE_SCHEMA,
                    "case": prepared["record"],
                    "route": route,
                    "duplicate": prepared.get("duplicate") is True,
                    "provider_calls": 0,
                    "proof_attempts": 0,
                    "identity_status": prepared["record"].get("identity_status", "UNAUTHENTICATED_LOCAL_OPERATOR"),
                    "signature_status": "NONE",
                    "meaning_review": "PENDING",
                })
            except PermissionError as exc:
                self._json_response(403, {"schema_version": USER_CASE_PREPARE_SCHEMA, "error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
                self._json_response(409, {"schema_version": USER_CASE_PREPARE_SCHEMA, "error": str(exc)})

        def _request_local_preview_shutdown(self, query: str) -> None:
            try:
                self._validate_dispatch_origin()
                if query:
                    raise ValueError("local preview shutdown does not accept query parameters")
                try:
                    content_length = int(self.headers.get("Content-Length", ""))
                except ValueError as exc:
                    raise ValueError("local preview shutdown requires a valid Content-Length") from exc
                if content_length <= 0 or content_length > 1024:
                    raise ValueError("local preview shutdown request is outside its size limit")
                try:
                    payload = json.loads(self.rfile.read(content_length).decode("utf-8", errors="strict"))
                except (UnicodeDecodeError, json.JSONDecodeError) as exc:
                    raise ValueError("local preview shutdown request must be valid UTF-8 JSON") from exc
                if not isinstance(payload, dict) or payload != {
                    "schema_version": PREVIEW_SHUTDOWN_REQUEST_SCHEMA,
                    "runtime_instance_id": PREVIEW_RUNTIME_INSTANCE_ID,
                }:
                    raise ValueError("local preview shutdown request must identify this exact runtime")
                if proofdesk_dispatcher and proofdesk_dispatcher._unfinished_run_ids():
                    raise ValueError("local preview shutdown is refused while a Proof Desk run is unfinished")
                if _tavily_pending():
                    raise ValueError("local preview shutdown is refused while a Tavily reservation is unfinished")
                self._json_response(202, {
                    "schema_version": PREVIEW_SHUTDOWN_RESPONSE_SCHEMA,
                    "state": "SHUTTING_DOWN",
                    "runtime_instance_id": PREVIEW_RUNTIME_INSTANCE_ID,
                })
                threading.Thread(
                    target=self.server.shutdown,
                    name="mathcase-preview-shutdown",
                    daemon=True,
                ).start()
            except PermissionError as exc:
                self._json_response(403, {"schema_version": PREVIEW_SHUTDOWN_RESPONSE_SCHEMA, "error": str(exc)})
            except (ValueError, OSError, json.JSONDecodeError, TypeError) as exc:
                self._json_response(409, {"schema_version": PREVIEW_SHUTDOWN_RESPONSE_SCHEMA, "error": str(exc)})

        def do_POST(self) -> None:
            if PUBLIC_PROFILE:
                self._discard_rejected_request_body()
                self._json_response(405, {"error": "Public saved Case Desk is read-only. New provider work uses the separate CLI."})
                return
            parsed = urlsplit(self.path)
            if parsed.path == "/api/local-preview-shutdown":
                self._request_local_preview_shutdown(parsed.query)
                return
            if parsed.path == "/api/problem-queue":
                self._mutate_problem_queue()
                return
            if parsed.path == "/api/user-problem-drafts":
                self._mutate_problem_draft()
                return
            if parsed.path == "/api/user-problem-cases":
                self._prepare_user_problem_case()
                return
            if parsed.path == "/api/dossier-m6-attachment":
                self._attach_dossier_m6_measurement()
                return
            if parsed.path == "/api/problem-queue-review-responses":
                self._save_problem_queue_review_response()
                return
            if parsed.path == "/api/local-computations":
                self._mutate_local_computation()
                return
            if parsed.path == "/api/local-computation-reviews":
                self._mutate_local_computation(review=True)
                return
            if parsed.path == "/api/two-congruence-proof-reviews":
                self._save_two_congruence_proof_review()
                return
            if parsed.path == "/api/research":
                self._start_research()
                return
            if parsed.path == "/api/draft-research":
                self._start_draft_research()
                return
            if parsed.path == "/api/proofdesk-runs":
                self._start_proofdesk_run()
                return
            if parsed.path == "/api/review-packet-drafts":
                self._save_review_packet_draft()
                return
            if parsed.path == "/api/review-notes":
                self._save_review_note()
                return
            if parsed.path == "/api/system-assurance-reviews":
                self._save_system_assurance_review()
                return
            self._deny_write()
        do_PUT = _deny_write
        do_PATCH = _deny_write
        do_DELETE = _deny_write

    return PreviewHandler


def make_server(
    port: int = 8765,
    review_store_path: Path = REVIEW_STORE_PATH,
    review_packet_draft_store_path: Path = REVIEW_PACKET_DRAFT_STORE_PATH,
    proofdesk_dispatcher: ProofDeskDispatcher | None = None,
    system_assurance_review_store_path: Path = SYSTEM_ASSURANCE_REVIEW_STORE_PATH,
    problem_queue: ProblemQueue | None = None,
    statement_review_response_store_path: Path = STATEMENT_REVIEW_RESPONSE_STORE_PATH,
    statement_review_response_disposition_store_path: Path = STATEMENT_REVIEW_RESPONSE_DISPOSITION_STORE_PATH,
    local_computation_review_store_path: Path | None = None,
    proof_companion_review_store_path: Path | None = None,
    local_computation_write_root: Path | None = None,
    m6_attachment_lock_directory: Path | None = None,
    problem_draft_store: ProblemDraftStore | None = None,
    user_problem_case_store: UserProblemCaseStore | None = None,
) -> ThreadingHTTPServer:
    allowlist = build_allowlist()
    server = ThreadingHTTPServer(("127.0.0.1", port), make_handler(
        allowlist,
        review_store_path,
        review_packet_draft_store_path,
        proofdesk_dispatcher,
        system_assurance_review_store_path,
        problem_queue,
        statement_review_response_store_path,
        statement_review_response_disposition_store_path,
        local_computation_review_store_path,
        proof_companion_review_store_path,
        local_computation_write_root,
        m6_attachment_lock_directory,
        problem_draft_store,
        user_problem_case_store,
    ))
    server.daemon_threads = True
    return server


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", type=int, default=8765)
    args = parser.parse_args()
    if not 0 <= args.port <= 65535:
        parser.error("port must be between 0 and 65535")
    try:
        root_key = hashlib.sha256(os.path.normcase(str(ROOT)).encode("utf-8")).hexdigest()[:20]
        runtime_lock = Path(tempfile.gettempdir()) / f"mathcase-preview-{root_key}.lock"
        with exclusive_file_lock(runtime_lock, timeout_seconds=0):
            dispatch_service = ProofDeskDispatcher(
                ROOT,
                campaign_budget_status=lambda: _campaign_dispatch_budget_status(ROOT),
            )
            try:
                warm_status = {"state": "DISABLED_SAVED_EXECUTION"} if PUBLIC_PROFILE else dispatch_service.start_lean_runtime_warmup(
                    "nebius-nemotron-lightning-post30-prime-20261028-r4"
                )
                print("Lean import runtime: " + str(warm_status.get("state", "UNAVAILABLE")))
            except (OSError, ValueError, json.JSONDecodeError, KeyError, TypeError) as exc:
                print("Lean import runtime: UNAVAILABLE · " + str(exc))
            server = make_server(args.port, proofdesk_dispatcher=dispatch_service)
            print(f"MathCase local preview: http://127.0.0.1:{server.server_port}/ui/prototype/index.html")
            print(f"Runtime {PREVIEW_RUNTIME_INSTANCE_ID} · contract {PREVIEW_API_CONTRACT_ID} · build {PREVIEW_SERVER_BUILD_SHA256}")
            print(f"Exact-file allowlist contains {len(build_allowlist())} routes; no directory listing or write methods.")
            try:
                server.serve_forever(poll_interval=0.25)
            finally:
                dispatch_service.stop_lean_runtime_warmup()
                server.server_close()
    except TimeoutError as exc:
        parser.exit(2, f"{exc}. Use scripts/start_case_desk.ps1 to connect to the canonical instance.\n")
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
