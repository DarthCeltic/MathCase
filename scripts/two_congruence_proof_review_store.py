"""Reopen the pinned two-congruence proof companion and store bounded review notes."""

from __future__ import annotations

import hashlib
import json
import os
import re
import stat
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

try:
    from local_computation_store import read_artifact as read_local_artifact, read_case as read_local_case
    from local_file_lock import exclusive_file_lock
except ModuleNotFoundError:
    from scripts.local_computation_store import read_artifact as read_local_artifact, read_case as read_local_case
    from scripts.local_file_lock import exclusive_file_lock


CASE_ID = "two-congruence-example"
COMPANION_ID = "two-congruence-example-formal-companion"
COMPANION_PATH = "ui/prototype/two-congruence-proof-companion-dossier.json"
COMPANION_SHA256 = "e70cd69a25d8adae498e83a8d8f8c987b2b0fec083ca100dedabbbe8a22bf017"
COMPANION_REVISION = 8
ORIGINAL_COMPANION_SHA256 = "1abe4af1ff03f2911660ca0e766a7ae8c12687207732a54ebe7e6b30391c90bd"
PARENT_DOSSIER_SHA256 = "620eb0c9b8014090559494b4488f6e14360c4433d8224b1c7c2e220938ffdf6c"
PARENT_DOSSIER_VIEW_SHA256 = "02b0ac54c69a84dd35206d5265362863e85d76b47e507d6083770abbcdc2528c"
PARENT_ARTIFACT_SHA256 = "2dc3dfd9bd0fbfc4a6b9ea92464674f7fa4cf1e03a16aaf2779aabe64fa8f157"
SOURCE_SHA256 = "376587e4ac73de7a5eadb9264ca01fdbd68af7e4bdb00eaa7f5f55c1462cc54b"
METRICS_SHA256 = "64377cc117167f96008c85443f24e54409b5ac2f199cfe03ee1e76c037a02ab6"
RUN_SHA256 = "1578f889355fbe4bac64878f96ec54ae33ccf2c2346cad5ad300e4892905e319"
PREFLIGHT_SHA256 = "726fcd8bdf5caa6e8c90263b46deba2ec0d78d7e102b4a2194e5b9c632170b77"
SNAPSHOT_SHA256 = "ee29ea51b9d6e088ed8f60f4d724e179c57ca36bebd3d203f2b90255115f4647"
SOURCE_PATH = "proofs/first-rung/MathCaseTwoCongruence.lean"
METRICS_PATH = "proofs/first-rung/evidence/two-congruence-m6-r3/metrics-receipt.json"
RUN_PATH = "proofs/first-rung/evidence/two-congruence-m6-r3/run-receipt.json"
PREFLIGHT_PATH = "proofs/first-rung/evidence/two-congruence-m6-r3/lean-version-preflight.json"
SNAPSHOT_PATH = "proofs/first-rung/evidence/two-congruence-m6-r3/snapshot/snapshot-manifest.json"
REVIEW_STORE_PATH = Path("data/local/staging/case-feedback/two-congruence-proof-reviews.jsonl")
MAX_INPUT_BYTES = 64 << 10
MAX_SOURCE_BYTES = 1 << 20
MAX_COMPANION_BYTES = 256 << 10
MAX_RECEIPT_BYTES = 8 << 20
MAX_REVIEW_STORE_BYTES = 8 << 20
MAX_REVIEW_RECORDS = 500
MAX_COMMENT_CHARS = 2000
MAX_REVIEWER_LABEL_CHARS = 80
DIGEST_RE = re.compile(r"^[0-9a-f]{64}$")
IDEMPOTENCY_RE = re.compile(r"^[0-9a-f]{32}$")
REVIEW_TIERS = ("HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE")
REVIEW_RATINGS = {"NOT_REVIEWED", "UNDERSTANDABLE", "NEEDS_CLARIFICATION", "NEEDS_EXPERT_REVIEW"}
HUMAN_DIRECTION_KINDS = {"QUESTION", "OBJECTION", "NEXT_DIRECTION"}
CHUNK_DEFINITIONS = (
    ("quotient-equations", "Quotient equations", 13, 16,
     "Turn each remainder condition into an equation that expresses x using its quotient."),
    ("witness-construction", "Derive and construct the witness", 17, 23,
     "Relate the two quotients, constrain one quotient modulo 3, then choose the integer witness."),
    ("verify-mod-6", "Check the residue modulo 6", 27, 30,
     "Show every number in the proposed family leaves remainder 1 after division by 6."),
    ("verify-mod-9", "Check the residue modulo 9", 31, 34,
     "Show every number in the proposed family leaves remainder 4 after division by 9."),
)


class ProofCompanionReviewError(ValueError):
    """Raised when exact proof evidence or a review record cannot be reopened."""


def _digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _stable_json(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _parse_json(data: bytes, label: str) -> dict[str, Any]:
    try:
        value = json.loads(data.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ProofCompanionReviewError(f"{label} is not valid UTF-8 JSON") from exc
    if not isinstance(value, dict):
        raise ProofCompanionReviewError(f"{label} must be a JSON object")
    return value


def _has_reparse_point(path: Path) -> bool:
    try:
        info = path.lstat()
    except FileNotFoundError:
        return False
    return stat.S_ISLNK(info.st_mode) or bool(getattr(info, "st_file_attributes", 0) & 0x400)


def _safe_path(root: Path, relative: str) -> Path:
    if not relative or relative.startswith(("/", "\\")) or "\\" in relative or ":" in relative or "\x00" in relative:
        raise ProofCompanionReviewError("a pinned proof companion path is invalid")
    parts = relative.split("/")
    if any(part in {"", ".", ".."} for part in parts):
        raise ProofCompanionReviewError("a pinned proof companion path is unsafe")
    target = root.joinpath(*parts)
    resolved = target.resolve(strict=True)
    if root.resolve() not in resolved.parents or any(_has_reparse_point(root.joinpath(*parts[:index])) for index in range(1, len(parts) + 1)):
        raise ProofCompanionReviewError("a pinned proof companion path resolves through a link")
    return resolved


def _read_regular(root: Path, relative: str, limit: int) -> bytes:
    path = _safe_path(root, relative)
    info = path.lstat()
    if _has_reparse_point(path) or not stat.S_ISREG(info.st_mode) or info.st_size < 1 or info.st_size > limit:
        raise ProofCompanionReviewError(f"pinned evidence is unavailable or outside its byte limit: {relative}")
    data = path.read_bytes()
    if len(data) != info.st_size:
        raise ProofCompanionReviewError(f"pinned evidence changed while reopening: {relative}")
    return data


def _check_sha(data: bytes, expected: object, label: str) -> str:
    actual = _digest(data)
    if not isinstance(expected, str) or not DIGEST_RE.fullmatch(expected) or actual != expected:
        raise ProofCompanionReviewError(f"{label} SHA-256 does not match its pinned value")
    return actual


def _read_review_store_unlocked(path: Path) -> tuple[list[dict[str, Any]], str]:
    if not path.exists():
        return [], "0" * 64
    info = path.lstat()
    if _has_reparse_point(path) or not stat.S_ISREG(info.st_mode) or info.st_size > MAX_REVIEW_STORE_BYTES:
        raise ProofCompanionReviewError("the proof review store is not a bounded regular file")
    raw = path.read_bytes()
    if len(raw) != info.st_size:
        raise ProofCompanionReviewError("the proof review store changed while it was being read")
    records: list[dict[str, Any]] = []
    previous = "0" * 64
    for sequence, line in enumerate(raw.splitlines(), start=1):
        if len(line) > MAX_INPUT_BYTES:
            raise ProofCompanionReviewError("a proof review entry exceeds the per-record limit")
        entry = _parse_json(line, "proof review entry")
        if set(entry) != {"schema_version", "sequence", "previous_entry_sha256", "record", "record_sha256", "entry_sha256"}:
            raise ProofCompanionReviewError("the proof review entry has an unsupported shape")
        if entry.get("schema_version") != "mathcase-two-congruence-proof-review-entry-v1" or entry.get("sequence") != sequence:
            raise ProofCompanionReviewError("the proof review sequence is not canonical")
        record = entry.get("record")
        if entry.get("previous_entry_sha256") != previous or not _review_record_valid(record):
            raise ProofCompanionReviewError("the proof review chain or record is invalid")
        if entry.get("record_sha256") != _digest(_stable_json(record)):
            raise ProofCompanionReviewError("the proof review record digest changed")
        expected_entry_sha = entry.get("entry_sha256")
        unsigned_entry = dict(entry)
        unsigned_entry.pop("entry_sha256", None)
        if expected_entry_sha != _digest(_stable_json(unsigned_entry)):
            raise ProofCompanionReviewError("the proof review entry digest changed")
        records.append(record)
        previous = expected_entry_sha
    if len(records) > MAX_REVIEW_RECORDS:
        raise ProofCompanionReviewError("the proof review store exceeded its record limit")
    return records, previous


def _review_record_valid(record: object) -> bool:
    record_fields = set(record) if isinstance(record, dict) else set()
    required_fields = {
        "schema_version", "review_id", "recorded_at_utc", "case_id", "problem_id",
        "m0_catalog_snapshot_sha256", "problem_statement_sha256", "parent_dossier_sha256",
        "artifact_parent_dossier_sha256", "artifact_sha256", "companion_revision",
        "companion_dossier_sha256", "source_sha256", "metrics_receipt_sha256",
        "run_receipt_sha256", "preflight_receipt_sha256", "snapshot_manifest_sha256",
        "reviewer_label", "identity_status", "chunks", "drafts",
        "m4_typed_receipt", "m7_effect", "gate_effect", "training_use",
    }
    if not isinstance(record, dict) or record_fields not in (required_fields, required_fields | {"human_direction"}):
        return False
    if record.get("schema_version") != "mathcase-two-congruence-proof-review-v1" or record.get("case_id") != CASE_ID:
        return False
    if record.get("identity_status") != "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED" or record.get("m4_typed_receipt") != "NOT_ISSUED":
        return False
    if record.get("m7_effect") != "NONE" or record.get("gate_effect") != "NONE" or record.get("training_use") != "NOT_AUTHORIZED":
        return False
    digests = (
        "m0_catalog_snapshot_sha256", "problem_statement_sha256", "parent_dossier_sha256",
        "artifact_parent_dossier_sha256", "artifact_sha256", "companion_dossier_sha256",
        "source_sha256", "metrics_receipt_sha256", "run_receipt_sha256",
        "preflight_receipt_sha256", "snapshot_manifest_sha256",
    )
    if not all(isinstance(record.get(key), str) and DIGEST_RE.fullmatch(record[key]) for key in digests):
        return False
    label = record.get("reviewer_label")
    if not isinstance(label, str) or len(label) > MAX_REVIEWER_LABEL_CHARS or any(ord(char) < 32 for char in label):
        return False
    if record.get("companion_revision") not in (1, 7, COMPANION_REVISION) or not isinstance(record.get("recorded_at_utc"), str):
        return False
    chunks = record.get("chunks")
    if not isinstance(chunks, list) or len(chunks) != len(CHUNK_DEFINITIONS):
        return False
    for definition, item in zip(CHUNK_DEFINITIONS, chunks, strict=True):
        chunk_id, _title, start, end, _description = definition
        if not isinstance(item, dict) or set(item) != {"chunk_id", "source_start_line", "source_end_line", "code_sha256", "rating", "comment"}:
            return False
        if (item.get("chunk_id"), item.get("source_start_line"), item.get("source_end_line")) != (chunk_id, start, end):
            return False
        if not isinstance(item.get("code_sha256"), str) or not DIGEST_RE.fullmatch(item["code_sha256"]):
            return False
        if item.get("rating") not in REVIEW_RATINGS or not isinstance(item.get("comment"), str) or len(item["comment"]) > MAX_COMMENT_CHARS:
            return False
    drafts = record.get("drafts")
    if not isinstance(drafts, list) or len(drafts) != len(REVIEW_TIERS):
        return False
    for tier, item in zip(REVIEW_TIERS, drafts, strict=True):
        if not isinstance(item, dict) or set(item) != {"tier", "text_sha256", "rating", "comment"} or item.get("tier") != tier:
            return False
        if not isinstance(item.get("text_sha256"), str) or not DIGEST_RE.fullmatch(item["text_sha256"]):
            return False
        if item.get("rating") not in REVIEW_RATINGS or not isinstance(item.get("comment"), str) or len(item["comment"]) > MAX_COMMENT_CHARS:
            return False
    if "human_direction" in record and record["human_direction"] is not None:
        direction = record["human_direction"]
        if not isinstance(direction, dict) or set(direction) != {"kind", "problem_statement_sha256", "text", "text_sha256"}:
            return False
        if direction.get("kind") not in HUMAN_DIRECTION_KINDS or direction.get("problem_statement_sha256") != record.get("problem_statement_sha256"):
            return False
        text = direction.get("text")
        if not isinstance(text, str) or not text.strip() or len(text) > MAX_COMMENT_CHARS:
            return False
        if direction.get("text_sha256") != _digest(text.encode("utf-8")):
            return False
    return True


def _check_parent_narrative_view(raw: bytes) -> dict[str, Any]:
    _check_sha(raw, PARENT_DOSSIER_VIEW_SHA256, "parent metadata view transport")
    record = _parse_json(raw, "parent metadata view")
    if record.get("record_view") != "NARRATIVE_ONLY_RELEASE_VIEW" or record.get("original_record_sha256") != PARENT_DOSSIER_SHA256:
        raise ProofCompanionReviewError("the parent metadata view does not retain its original saved identity")
    return record


def _read_companion(root: Path, case_id: object, artifact_sha256: object) -> dict[str, Any]:
    if case_id != CASE_ID or artifact_sha256 != PARENT_ARTIFACT_SHA256:
        raise ProofCompanionReviewError("the proof companion is available only from its exact two-congruence arithmetic artifact")

    case = read_local_case(root, CASE_ID)
    artifact_context = read_local_artifact(root, CASE_ID, PARENT_ARTIFACT_SHA256)
    companion_bytes = _read_regular(root, COMPANION_PATH, MAX_COMPANION_BYTES)
    companion_sha = _check_sha(companion_bytes, COMPANION_SHA256, "companion dossier")
    dossier = _parse_json(companion_bytes, "proof companion dossier")
    if dossier.get("record_view") != "NARRATIVE_ONLY_RELEASE_VIEW" or dossier.get("original_record_sha256") != ORIGINAL_COMPANION_SHA256:
        raise ProofCompanionReviewError("the companion is not its declared narrative-only release view")
    parent = dossier.get("parent_arithmetic_case")
    proof = dossier.get("proof")
    state = dossier.get("dossier_state")
    if dossier.get("schema_version") != "mathcase-formal-proof-companion-dossier-v1" or dossier.get("companion_id") != COMPANION_ID or dossier.get("revision") != COMPANION_REVISION or dossier.get("case_id") != CASE_ID:
        raise ProofCompanionReviewError("the companion dossier identity or revision is not the pinned record")
    if not isinstance(parent, dict) or parent.get("m8_dossier_sha256") != PARENT_DOSSIER_SHA256 or parent.get("m8_dossier_view_sha256") != PARENT_DOSSIER_VIEW_SHA256 or parent.get("checked_arithmetic_artifact_sha256") != PARENT_ARTIFACT_SHA256:
        raise ProofCompanionReviewError("the companion no longer names the exact M0/M8 arithmetic parent")
    if case.get("dossier_sha256") != PARENT_DOSSIER_SHA256 or case.get("catalog_snapshot_sha256") != parent.get("m0_catalog_snapshot_sha256") or case.get("problem_statement_sha256") != parent.get("problem_statement_sha256"):
        raise ProofCompanionReviewError("the reopened arithmetic dossier does not match the companion parent bindings")
    parent_dossier_bytes = _read_regular(root, parent.get("m8_dossier_path", ""), 32 << 20)
    _check_parent_narrative_view(parent_dossier_bytes)
    artifact_list = artifact_context.get("artifacts")
    if artifact_context.get("selected_artifact_sha256") != PARENT_ARTIFACT_SHA256 or not isinstance(artifact_list, list) or len(artifact_list) != 1 or artifact_list[0].get("artifact_sha256") != PARENT_ARTIFACT_SHA256:
        raise ProofCompanionReviewError("the exact parent arithmetic result did not reopen")
    arithmetic = artifact_list[0]
    artifact_bytes = _read_regular(root / "data" / "local" / "dossier-store", arithmetic.get("relative_path", ""), 1 << 20)
    _check_sha(artifact_bytes, PARENT_ARTIFACT_SHA256, "parent arithmetic artifact")
    certificate = arithmetic.get("record", {}).get("certificate", {})
    solution = certificate.get("solution_family", {})
    if certificate.get("outcome") != "ALL_INTEGER_SOLUTIONS" or solution.get("least_nonnegative") != "13" or solution.get("exact_period") != "18":
        raise ProofCompanionReviewError("the arithmetic result no longer reopens as x = 13 + 18k")

    if not isinstance(proof, dict) or proof.get("status") != "PINNED_LEAN_EXECUTION_PASSED" or proof.get("source_path") != SOURCE_PATH or proof.get("source_sha256") != SOURCE_SHA256 or proof.get("theorem") != "twoCongruenceExample_all_solutions":
        raise ProofCompanionReviewError("the Lean companion proof does not match its pinned source")
    if proof.get("metrics_receipt_path") != METRICS_PATH or proof.get("metrics_receipt_sha256") != METRICS_SHA256 or proof.get("run_receipt_path") != RUN_PATH or proof.get("run_receipt_sha256") != RUN_SHA256 or proof.get("preflight_receipt_path") != PREFLIGHT_PATH or proof.get("preflight_receipt_sha256") != PREFLIGHT_SHA256 or proof.get("snapshot_manifest_path") != SNAPSHOT_PATH or proof.get("snapshot_manifest_sha256") != SNAPSHOT_SHA256:
        raise ProofCompanionReviewError("a pinned Lean receipt path or digest changed")
    if proof.get("lean_toolchain") != "leanprover/lean4:v4.33.1" or proof.get("sorryAx_observed") is not False or proof.get("observed_axioms") != ["propext", "Quot.sound"]:
        raise ProofCompanionReviewError("the Lean toolchain or observed axioms differ from the companion record")
    source_bytes = _read_regular(root, SOURCE_PATH, MAX_SOURCE_BYTES)
    _check_sha(source_bytes, SOURCE_SHA256, "Lean source")
    source_lines = source_bytes.splitlines(keepends=True)
    source_text = source_bytes.decode("utf-8")

    metrics_bytes = _read_regular(root, METRICS_PATH, MAX_RECEIPT_BYTES)
    _check_sha(metrics_bytes, METRICS_SHA256, "M6 metrics receipt")
    metrics_receipt = _parse_json(metrics_bytes, "M6 metrics receipt")
    run_bytes = _read_regular(root, RUN_PATH, MAX_RECEIPT_BYTES)
    _check_sha(run_bytes, RUN_SHA256, "M6 run receipt")
    run_receipt = _parse_json(run_bytes, "M6 run receipt")
    preflight_bytes = _read_regular(root, PREFLIGHT_PATH, MAX_RECEIPT_BYTES)
    _check_sha(preflight_bytes, PREFLIGHT_SHA256, "Lean preflight receipt")
    preflight_receipt = _parse_json(preflight_bytes, "Lean preflight receipt")
    snapshot_bytes = _read_regular(root, SNAPSHOT_PATH, MAX_RECEIPT_BYTES)
    _check_sha(snapshot_bytes, SNAPSHOT_SHA256, "Lean source snapshot manifest")
    snapshot = _parse_json(snapshot_bytes, "Lean source snapshot manifest")
    metric_values = metrics_receipt.get("metrics")
    expected_metric_values = {
        "core_expr_nodes": 6114, "core_expr_depth": 51,
        "binder_nodes": 55, "constant_reference_nodes": 2313,
    }
    if not isinstance(metric_values, dict) or metrics_receipt.get("source_sha256") != SOURCE_SHA256 or metrics_receipt.get("declaration") != proof["theorem"] or any(metric_values.get(key) != value for key, value in expected_metric_values.items()):
        raise ProofCompanionReviewError("the pinned M6 counts do not match the reopened source and companion")
    if run_receipt.get("status") != "EXECUTED_PASS" or run_receipt.get("exit_code") != 0 or run_receipt.get("timed_out") is not False or run_receipt.get("source_sha256") != SOURCE_SHA256 or run_receipt.get("declaration") != proof["theorem"]:
        raise ProofCompanionReviewError("the pinned Lean execution receipt is not a passing run for this source")
    snapshot_files = snapshot.get("files")
    snapshot_source = next((item for item in snapshot_files if isinstance(item, dict) and item.get("path") == "source.lean"), None) if isinstance(snapshot_files, list) else None
    if preflight_receipt.get("status") != "PASS" or preflight_receipt.get("expected_lean_toolchain") != "Lean 4.33.1" or not isinstance(snapshot_source, dict) or snapshot_source.get("sha256") != SOURCE_SHA256:
        raise ProofCompanionReviewError("the pinned preflight or source snapshot failed to reopen")
    if not isinstance(state, dict) or state.get("m0") != "UNASSESSED" or state.get("m4_typed_receipt") != "NOT_ISSUED" or state.get("m7") != "DRAFT_ONLY_NOT_ACCEPTED" or state.get("gate_effect") != "NONE" or state.get("provider_calls") != 0 or state.get("training_authorized") is not False or state.get("public_export_authorized") is not False:
        raise ProofCompanionReviewError("the companion has an unsupported readiness or authority state")

    chunks = []
    for chunk_id, title, start, end, description in CHUNK_DEFINITIONS:
        if end > len(source_lines):
            raise ProofCompanionReviewError("a proof chunk falls outside the pinned source")
        code_bytes = b"".join(source_lines[start - 1:end])
        chunks.append({
            "chunk_id": chunk_id, "title": title, "description": description,
            "source_start_line": start, "source_end_line": end,
            "source_sha256": SOURCE_SHA256, "code_sha256": _digest(code_bytes),
            "code": code_bytes.decode("utf-8"),
        })

    explanation_drafts = dossier.get("explanation_drafts")
    if not isinstance(explanation_drafts, list) or len(explanation_drafts) != len(REVIEW_TIERS):
        raise ProofCompanionReviewError("the five pinned explanation drafts are unavailable")
    drafts = []
    for tier, item in zip(REVIEW_TIERS, explanation_drafts, strict=True):
        if not isinstance(item, dict) or item.get("tier") != tier or item.get("status") != "DRAFT_ONLY" or not isinstance(item.get("text"), str) or not item["text"].strip():
            raise ProofCompanionReviewError("a pinned audience-level explanation draft changed")
        drafts.append({
            "tier": tier, "status": item["status"], "authorship": item.get("authorship", "not recorded"),
            "text": item["text"], "text_sha256": _digest(item["text"].encode("utf-8")),
        })

    return {
        "schema_version": "mathcase-two-congruence-proof-companion-binding-v1",
        "case_id": CASE_ID, "problem_id": parent.get("case_id"),
        "case_version": case.get("case_version"),
        "m0_catalog_snapshot_sha256": parent["m0_catalog_snapshot_sha256"],
        "problem_statement_sha256": parent["problem_statement_sha256"],
        "parent_dossier_sha256": PARENT_DOSSIER_SHA256,
        "artifact_parent_dossier_sha256": artifact_context.get("artifact_parent_dossier_sha256"),
        "artifact_sha256": PARENT_ARTIFACT_SHA256,
        "artifact_path": arithmetic.get("relative_path"),
        "companion_id": COMPANION_ID, "companion_revision": COMPANION_REVISION,
        "companion_path": COMPANION_PATH, "companion_dossier_sha256": companion_sha,
        "problem_statement": dossier["problem_statement"],
        "formal_statement": dossier["formal_statement"],
        "formal_statement_lean": dossier["formal_statement_lean"],
        "proof": {
            "status": proof["status"], "theorem": proof["theorem"],
            "source_path": SOURCE_PATH, "source_sha256": SOURCE_SHA256,
            "lean_toolchain": proof["lean_toolchain"],
            "run_receipt_path": RUN_PATH, "run_receipt_sha256": RUN_SHA256,
            "metrics_receipt_path": METRICS_PATH, "metrics_receipt_sha256": METRICS_SHA256,
            "preflight_receipt_path": PREFLIGHT_PATH, "preflight_receipt_sha256": PREFLIGHT_SHA256,
            "snapshot_manifest_path": SNAPSHOT_PATH, "snapshot_manifest_sha256": SNAPSHOT_SHA256,
            "observed_axioms": proof["observed_axioms"], "typed_m4_receipt": "NOT_ISSUED",
        },
        "metrics": {**expected_metric_values, "evidence_class": "PINNED_ISOLATED_EXECUTION", "scope": dossier["metrics"]["scope"]},
        "chunks": chunks, "drafts": drafts,
        "boundary": {
            "m0": "UNASSESSED", "m4_typed_receipt": "NOT_ISSUED",
            "m7": "DRAFT_ONLY_NOT_ACCEPTED", "gate_effect": "NONE",
            "provider_calls": 0, "training_use": "NOT_AUTHORIZED", "public_export": "NOT_AUTHORIZED",
        },
    }


def _current_binding(view: dict[str, Any]) -> dict[str, Any]:
    proof = view["proof"]
    return {key: view[key] for key in (
        "case_id", "m0_catalog_snapshot_sha256", "problem_statement_sha256",
        "parent_dossier_sha256", "artifact_parent_dossier_sha256", "artifact_sha256",
        "companion_revision", "companion_dossier_sha256",
    )} | {
        "source_sha256": proof["source_sha256"],
        "metrics_receipt_sha256": proof["metrics_receipt_sha256"],
        "run_receipt_sha256": proof["run_receipt_sha256"],
        "preflight_receipt_sha256": proof["preflight_receipt_sha256"],
        "snapshot_manifest_sha256": proof["snapshot_manifest_sha256"],
    }


def _binding_matches(record: dict[str, Any], view: dict[str, Any]) -> bool:
    if not all(record.get(key) == value for key, value in _current_binding(view).items()):
        return False
    recorded_chunks, current_chunks = record.get("chunks"), view.get("chunks")
    recorded_drafts, current_drafts = record.get("drafts"), view.get("drafts")
    return (
        isinstance(recorded_chunks, list) and isinstance(current_chunks, list)
        and [(item.get("chunk_id"), item.get("source_start_line"), item.get("source_end_line"), item.get("code_sha256")) for item in recorded_chunks]
        == [(item.get("chunk_id"), item.get("source_start_line"), item.get("source_end_line"), item.get("code_sha256")) for item in current_chunks]
        and isinstance(recorded_drafts, list) and isinstance(current_drafts, list)
        and [(item.get("tier"), item.get("text_sha256")) for item in recorded_drafts]
        == [(item.get("tier"), item.get("text_sha256")) for item in current_drafts]
    )


def _prepare_review_store_path(root: Path, store_path: Path | None = None) -> Path:
    path = Path(store_path) if store_path is not None else root / REVIEW_STORE_PATH
    if store_path is None:
        current = root
        for part in REVIEW_STORE_PATH.parts[:-1]:
            current = current / part
            if current.exists():
                if _has_reparse_point(current) or not current.is_dir():
                    raise ProofCompanionReviewError("the proof review store directory crosses a link or file")
            else:
                current.mkdir()
    else:
        if not path.is_absolute():
            path = root / path
        missing = []
        current = path.parent
        while not current.exists():
            missing.append(current)
            if current.parent == current:
                raise ProofCompanionReviewError("the proof review store has no safe existing parent")
            current = current.parent
        if _has_reparse_point(current) or not current.is_dir():
            raise ProofCompanionReviewError("the proof review store directory crosses a link or file")
        for directory in reversed(missing):
            directory.mkdir()
            if _has_reparse_point(directory) or not directory.is_dir():
                raise ProofCompanionReviewError("the proof review store directory crosses a link or file")
    if path.exists() and (_has_reparse_point(path) or not path.is_file()):
        raise ProofCompanionReviewError("the proof review store is not a regular file")
    lock_path = path.with_suffix(path.suffix + ".lock")
    if lock_path.exists() and (_has_reparse_point(lock_path) or not lock_path.is_file()):
        raise ProofCompanionReviewError("the proof review lock is not a regular file")
    return path


def _read_reviews(root: Path, store_path: Path | None = None) -> tuple[list[dict[str, Any]], str]:
    path = _prepare_review_store_path(root, store_path)
    with exclusive_file_lock(path.with_suffix(path.suffix + ".lock"), timeout_seconds=3):
        return _read_review_store_unlocked(path)


def read_view(
    root: Path, case_id: object, artifact_sha256: object, *, review_store_path: Path | None = None
) -> dict[str, Any]:
    view = _read_companion(root, case_id, artifact_sha256)
    records, head = _read_reviews(root, review_store_path)
    case_records = [item for item in records if item.get("case_id") == CASE_ID]
    current = [item for item in case_records if _binding_matches(item, view)]
    return {
        "schema_version": "mathcase-two-congruence-proof-companion-view-v1",
        "status": "REOPENED_EXACT_COMPANION", "binding": view,
        "reviews": current, "stale_review_count": len(case_records) - len(current),
        "store_record_count": len(records), "store_head_sha256": head,
        "store_path": Path(review_store_path).name if review_store_path is not None else REVIEW_STORE_PATH.as_posix(),
    }


def _normalize_rows(payload: dict[str, Any], view: dict[str, Any]) -> tuple[list[dict[str, Any]], list[dict[str, Any]], dict[str, str] | None]:
    chunks_in = payload.get("chunks")
    drafts_in = payload.get("drafts")
    if not isinstance(chunks_in, list) or len(chunks_in) != len(view["chunks"]):
        raise ProofCompanionReviewError("one review row is required for each of the four proof chunks")
    if not isinstance(drafts_in, list) or len(drafts_in) != len(view["drafts"]):
        raise ProofCompanionReviewError("one review row is required for each of the five explanation drafts")
    chunks = []
    for expected, item in zip(view["chunks"], chunks_in, strict=True):
        if not isinstance(item, dict) or set(item) != {"chunk_id", "source_start_line", "source_end_line", "code_sha256", "rating", "comment"}:
            raise ProofCompanionReviewError("proof chunk review rows have an unsupported shape")
        if any(item.get(key) != expected[key] for key in ("chunk_id", "source_start_line", "source_end_line", "code_sha256")):
            raise ProofCompanionReviewError("a proof chunk review is not bound to the current exact source span")
        rating, comment = item.get("rating"), item.get("comment")
        if rating not in REVIEW_RATINGS or not isinstance(comment, str) or len(comment) > MAX_COMMENT_CHARS:
            raise ProofCompanionReviewError("a proof chunk rating or note is invalid")
        chunks.append({key: item[key] for key in ("chunk_id", "source_start_line", "source_end_line", "code_sha256")} | {"rating": rating, "comment": comment.strip()})
    drafts = []
    for expected, item in zip(view["drafts"], drafts_in, strict=True):
        if not isinstance(item, dict) or set(item) != {"tier", "text_sha256", "rating", "comment"}:
            raise ProofCompanionReviewError("explanation review rows have an unsupported shape")
        if item.get("tier") != expected["tier"] or item.get("text_sha256") != expected["text_sha256"]:
            raise ProofCompanionReviewError("an explanation review is not bound to the current exact draft text")
        rating, comment = item.get("rating"), item.get("comment")
        if rating not in REVIEW_RATINGS or not isinstance(comment, str) or len(comment) > MAX_COMMENT_CHARS:
            raise ProofCompanionReviewError("an explanation rating or note is invalid")
        drafts.append({"tier": item["tier"], "text_sha256": item["text_sha256"], "rating": rating, "comment": comment.strip()})
    direction = None
    if "human_direction" in payload:
        item = payload["human_direction"]
        if not isinstance(item, dict) or set(item) != {"kind", "problem_statement_sha256", "text"}:
            raise ProofCompanionReviewError("human question or next-direction note has an unsupported shape")
        if item.get("kind") not in HUMAN_DIRECTION_KINDS or item.get("problem_statement_sha256") != view["problem_statement_sha256"]:
            raise ProofCompanionReviewError("human note is not bound to the current statement or a supported note type")
        text = item.get("text")
        if not isinstance(text, str) or len(text) > MAX_COMMENT_CHARS:
            raise ProofCompanionReviewError("human question or next-direction note is invalid")
        text = text.strip()
        if text:
            direction = {
                "kind": item["kind"], "problem_statement_sha256": view["problem_statement_sha256"],
                "text": text, "text_sha256": _digest(text.encode("utf-8")),
            }
    if not any(item["rating"] != "NOT_REVIEWED" or item["comment"] for item in chunks + drafts) and direction is None:
        raise ProofCompanionReviewError("choose a rating or add a question, objection, or next-direction note before saving")
    return chunks, drafts, direction


def append_review(root: Path, payload: object, *, review_store_path: Path | None = None) -> dict[str, Any]:
    required = {
        "schema_version", "case_id", "m0_catalog_snapshot_sha256", "problem_statement_sha256",
        "parent_dossier_sha256", "artifact_parent_dossier_sha256", "artifact_sha256",
        "companion_revision", "companion_dossier_sha256", "source_sha256",
        "metrics_receipt_sha256", "run_receipt_sha256", "preflight_receipt_sha256",
        "snapshot_manifest_sha256", "idempotency_key", "reviewer_label",
        "chunks", "drafts",
    }
    if not isinstance(payload, dict) or set(payload) not in (required, required | {"human_direction"}) or payload.get("schema_version") != "mathcase-two-congruence-proof-review-submit-v1":
        raise ProofCompanionReviewError("proof companion review submission has an unsupported shape")
    view = _read_companion(root, payload.get("case_id"), payload.get("artifact_sha256"))
    for key in (
        "m0_catalog_snapshot_sha256", "problem_statement_sha256", "parent_dossier_sha256",
        "artifact_parent_dossier_sha256", "artifact_sha256", "companion_revision",
        "companion_dossier_sha256",
    ):
        if payload.get(key) != view[key]:
            raise ProofCompanionReviewError("proof companion review names a stale or different case binding")
    if any(payload.get(key) != view["proof"][key] for key in ("source_sha256", "metrics_receipt_sha256", "run_receipt_sha256", "preflight_receipt_sha256", "snapshot_manifest_sha256")):
        raise ProofCompanionReviewError("proof companion review names a stale source or Lean receipt")
    key = payload.get("idempotency_key")
    if not isinstance(key, str) or not IDEMPOTENCY_RE.fullmatch(key):
        raise ProofCompanionReviewError("proof companion review idempotency key is malformed")
    label = payload.get("reviewer_label")
    if not isinstance(label, str) or len(label) > MAX_REVIEWER_LABEL_CHARS or any(ord(char) < 32 for char in label):
        raise ProofCompanionReviewError("reviewer label is invalid")
    chunks, drafts, human_direction = _normalize_rows(payload, view)
    now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    record = {
        "schema_version": "mathcase-two-congruence-proof-review-v1",
        "review_id": "proof-review-" + key[:20], "recorded_at_utc": now,
        "case_id": CASE_ID, "problem_id": CASE_ID,
        **{item: view[item] for item in (
            "m0_catalog_snapshot_sha256", "problem_statement_sha256", "parent_dossier_sha256",
            "artifact_parent_dossier_sha256", "artifact_sha256", "companion_revision",
            "companion_dossier_sha256",
        )},
        "source_sha256": view["proof"]["source_sha256"],
        "metrics_receipt_sha256": view["proof"]["metrics_receipt_sha256"],
        "run_receipt_sha256": view["proof"]["run_receipt_sha256"],
        "preflight_receipt_sha256": view["proof"]["preflight_receipt_sha256"],
        "snapshot_manifest_sha256": view["proof"]["snapshot_manifest_sha256"],
        "reviewer_label": label.strip(), "identity_status": "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED",
        "chunks": chunks, "drafts": drafts,
        "m4_typed_receipt": "NOT_ISSUED", "m7_effect": "NONE",
        "gate_effect": "NONE", "training_use": "NOT_AUTHORIZED",
    }
    if "human_direction" in payload:
        record["human_direction"] = human_direction
    if not _review_record_valid(record):
        raise ProofCompanionReviewError("proof companion review failed its local schema check")
    path = _prepare_review_store_path(root, review_store_path)
    duplicate = False
    with exclusive_file_lock(path.with_suffix(path.suffix + ".lock"), timeout_seconds=3):
        current = _read_companion(root, CASE_ID, PARENT_ARTIFACT_SHA256)
        if _current_binding(current) != _current_binding(view):
            raise ProofCompanionReviewError("the proof review target changed before save")
        records, previous = _read_review_store_unlocked(path)
        existing = next((item for item in records if item.get("review_id") == record["review_id"]), None)
        if existing is not None:
            comparable = dict(record)
            comparable["recorded_at_utc"] = existing["recorded_at_utc"]
            if comparable != existing:
                raise ProofCompanionReviewError("review idempotency key was used for different content")
            record = existing
            duplicate = True
        else:
            if len(records) >= MAX_REVIEW_RECORDS:
                raise ProofCompanionReviewError("proof review store reached its bounded record limit")
            entry = {
                "schema_version": "mathcase-two-congruence-proof-review-entry-v1",
                "sequence": len(records) + 1, "previous_entry_sha256": previous,
                "record": record, "record_sha256": _digest(_stable_json(record)),
            }
            entry["entry_sha256"] = _digest(_stable_json(entry))
            encoded = _stable_json(entry) + b"\n"
            if path.exists() and path.stat().st_size + len(encoded) > MAX_REVIEW_STORE_BYTES:
                raise ProofCompanionReviewError("proof review store reached its bounded byte limit")
            with path.open("ab") as stream:
                stream.write(encoded)
                stream.flush()
                os.fsync(stream.fileno())
    return read_view(root, CASE_ID, PARENT_ARTIFACT_SHA256, review_store_path=review_store_path) | {"status": "REOPENED_IDEMPOTENT" if duplicate else "SAVED_AND_REOPENED", "record": record, "duplicate": duplicate}
