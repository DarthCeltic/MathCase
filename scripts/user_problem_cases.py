"""Immutable, locally reviewed user-authored case revisions for the Case Desk."""

from __future__ import annotations

import hashlib
import json
import os
import re
import uuid
from datetime import datetime, timedelta, timezone
from pathlib import Path
from typing import Any

from local_file_lock import exclusive_file_lock
from problem_drafts import ProblemDraftStore


STORE_SCHEMA = "mathcase-user-problem-cases-v1"
EVENT_SCHEMA = "mathcase-user-problem-case-event-v1"
PREPARE_SCHEMA = "mathcase-user-problem-case-prepare-v1"
DEFAULT_STORE_PATH = "data/local/staging/user-problem-cases/prepared.jsonl"
RUN_STORE_PATH = "data/local/staging/user-problem-cases/runs.jsonl"
MAX_STORE_BYTES = 16 << 20
MAX_RECORDS = 1000
IDENTITY = re.compile(r"^[a-z0-9][a-z0-9._-]{0,127}$")
PROOF_DESK_RUN_ID = re.compile(r"^proofdesk-ui-[a-z0-9-]{1,80}-[0-9]{8}T[0-9]{6}Z-[0-9a-f]{12}$")
SHA256 = re.compile(r"^[a-f0-9]{64}$")
IDEMPOTENCY_KEY = re.compile(r"^[a-f0-9]{32}$")
AGENT_TEST_AUTHORIZATION_PREDECESSOR_PATH = "data/local/config/agent-authored-integration-canary.json"
AGENT_TEST_AUTHORIZATION_PATH = "data/local/config/agent-authored-integration-canary-successor-20261029T0027Z.json"
AGENT_TEST_AUTHORIZATION_PATHS = frozenset({AGENT_TEST_AUTHORIZATION_PREDECESSOR_PATH, AGENT_TEST_AUTHORIZATION_PATH})
AGENT_TEST_AUTHORIZATION_SCHEMA = "mathcase-agent-integration-canary-authorization-v1"
AGENT_TEST_AUTHORIZATION_REFERENCE = "owner-task-thread:01a17e91-4d35-7370-acff-e898cc2ce2cd"
AGENT_TEST_PROFILE_ID = "nebius-nemotron-lightning-post30-prime-20261028-r4"
AGENT_TEST_PROVIDER_ID = "nebius-token-factory"
AGENT_TEST_MODEL_ID = "nvidia/Nemotron-3_5-Lightning"
AGENT_TEST_PRICING_SOURCE = "https://nebius.com/services/token-factory/models/nvidia-nemotron-models-inference"
AGENT_TEST_MAX_CALL_COST_MICROS = 5_000
AGENT_TEST_MAX_RUN_COST_MICROS = 10_000
AGENT_TEST_MAX_PILOT_COST_MICROS = 100_000


def _read_agent_test_authorization(
    root: Path, draft: dict[str, Any], attestation: dict[str, Any], profile_id: str,
) -> tuple[dict[str, Any], bytes, str]:
    expected_attestation = {"source_kind", "authorization_path", "authorization_sha256"}
    if (
        set(attestation) != expected_attestation
        or attestation.get("source_kind") != "AGENT_AUTHORED_INTEGRATION_CONTROL"
        or attestation.get("authorization_path") != AGENT_TEST_AUTHORIZATION_PATH
        or not isinstance(attestation.get("authorization_sha256"), str)
        or not SHA256.fullmatch(attestation["authorization_sha256"])
        or profile_id != AGENT_TEST_PROFILE_ID
    ):
        raise ValueError("agent-authored test preparation requires its exact bounded task authorization")
    path = _safe_relative(root, AGENT_TEST_AUTHORIZATION_PATH)
    if path.is_symlink() or not path.is_file():
        raise ValueError("the local agent-test authorization snapshot is missing or unsafe")
    raw = path.read_bytes()
    if len(raw) > 16 << 10 or _sha(raw) != attestation["authorization_sha256"]:
        raise ValueError("the local agent-test authorization snapshot changed after review")
    try:
        authorization = json.loads(raw.decode("utf-8", errors="strict"))
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("the local agent-test authorization snapshot is invalid JSON") from exc
    if not isinstance(authorization, dict) or raw != _canonical(authorization) + b"\n":
        raise ValueError("the local agent-test authorization snapshot must use its canonical immutable encoding")
    expected_keys = {
        "schema_version", "authorization_reference", "authorization_status", "case_statement_sha256",
        "profile_id", "provider_id", "model_id", "pricing_source_url",
        "input_price_micros_per_million_tokens", "output_price_micros_per_million_tokens",
        "max_per_call_cost_micros", "max_run_cost_micros", "max_total_pilot_cost_micros",
        "max_provider_runs", "max_provider_calls", "max_output_tokens", "expires_at_utc", "training_authorized",
        "public_export_authorized", "locked_evaluation_material", "signature_status",
    }
    if not isinstance(authorization, dict) or set(authorization) != expected_keys:
        raise ValueError("the agent-test authorization fields are unsupported")
    now = datetime.now(timezone.utc)
    try:
        expires = datetime.fromisoformat(str(authorization["expires_at_utc"]).replace("Z", "+00:00"))
    except (TypeError, ValueError) as exc:
        raise ValueError("the agent-test authorization expiry is invalid") from exc
    if expires.tzinfo is None or now >= expires.astimezone(timezone.utc) or expires.astimezone(timezone.utc) - now > timedelta(hours=2):
        raise ValueError("the agent-test authorization must be current and short lived")
    if (
        authorization.get("schema_version") != AGENT_TEST_AUTHORIZATION_SCHEMA
        or authorization.get("authorization_reference") != AGENT_TEST_AUTHORIZATION_REFERENCE
        or authorization.get("authorization_status") != "OWNER_TASK_SCOPE_NOT_HUMAN_SIGNATURE"
        or authorization.get("case_statement_sha256") != draft.get("statement_sha256")
        or authorization.get("profile_id") != profile_id
        or authorization.get("provider_id") != AGENT_TEST_PROVIDER_ID
        or authorization.get("model_id") != AGENT_TEST_MODEL_ID
        or authorization.get("pricing_source_url") != AGENT_TEST_PRICING_SOURCE
        or authorization.get("input_price_micros_per_million_tokens") != 60_000
        or authorization.get("output_price_micros_per_million_tokens") != 240_000
        or authorization.get("signature_status") != "NONE"
        or authorization.get("training_authorized") is not False
        or authorization.get("public_export_authorized") is not False
        or authorization.get("locked_evaluation_material") is not False
        or type(authorization.get("max_provider_runs")) is not int
        or authorization["max_provider_runs"] != 1
        or type(authorization.get("max_provider_calls")) is not int
        or authorization["max_provider_calls"] != 1
        or type(authorization.get("max_per_call_cost_micros")) is not int
        or not 1 <= authorization["max_per_call_cost_micros"] <= AGENT_TEST_MAX_CALL_COST_MICROS
        or type(authorization.get("max_run_cost_micros")) is not int
        or not 1 <= authorization["max_run_cost_micros"] <= AGENT_TEST_MAX_RUN_COST_MICROS
        or type(authorization.get("max_total_pilot_cost_micros")) is not int
        or not 1 <= authorization["max_total_pilot_cost_micros"] <= AGENT_TEST_MAX_PILOT_COST_MICROS
        or type(authorization.get("max_output_tokens")) is not int
        or not 1 <= authorization["max_output_tokens"] <= 512
    ):
        raise ValueError("the agent-test authorization does not match the exact supported provider, model, budget, and training scope")
    return authorization, raw, AGENT_TEST_AUTHORIZATION_PATH


def verify_agent_test_authorization(
    root: Path, case_record: dict[str, Any], profile_id: str,
) -> dict[str, Any]:
    """Revalidate the live, exact, one-call task-scope control before provider dispatch."""
    if case_record.get("source_kind") != "AGENT_AUTHORED_INTEGRATION_CONTROL":
        raise ValueError("the selected case is not an agent-authored integration control")
    attestation = {
        "source_kind": case_record.get("source_kind"),
        "authorization_path": case_record.get("authorization_path"),
        "authorization_sha256": case_record.get("authorization_sha256"),
    }
    authorization, raw, path = _read_agent_test_authorization(
        root, case_record, attestation, profile_id,
    )
    if _sha(raw) != case_record.get("authorization_sha256") or path != case_record.get("authorization_path"):
        raise ValueError("the prepared test case no longer matches its exact task-scope authorization")
    source_path = _safe_relative(root, case_record.get("source_review_path"))
    source_raw = source_path.read_bytes()
    if _sha(source_raw) != case_record.get("source_review_sha256"):
        raise ValueError("the prepared agent-authored source review changed before dispatch")
    try:
        source = json.loads(source_raw.decode("utf-8", errors="strict"))
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("the prepared agent-authored source review is invalid JSON") from exc
    if (
        not isinstance(source, dict)
        or source.get("source_kind") != case_record.get("source_kind")
        or source.get("authorization_path") != path
        or source.get("authorization_sha256") != _sha(raw)
        or source.get("task_scope_authorization") != authorization
    ):
        raise ValueError("the prepared agent-authored source review does not bind the live task-scope authorization")
    return authorization


def _canonical(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _safe_relative(root: Path, value: object) -> Path:
    if not isinstance(value, str) or not value or "\x00" in value:
        raise ValueError("prepared user case path is invalid")
    candidate = Path(os.path.abspath(root / value))
    try:
        candidate.relative_to(root)
    except ValueError as exc:
        raise ValueError("prepared user case path escaped the checkout") from exc
    relative = candidate.relative_to(root)
    current = root
    for part in relative.parts[:-1]:
        current = current / part
        if current.exists() and current.is_symlink():
            raise ValueError("prepared user case path crosses a symbolic link")
    if candidate.is_symlink():
        raise ValueError("prepared user case file cannot be a symbolic link")
    return candidate


def _write_new(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.is_symlink() or path.parent.is_symlink():
        raise ValueError("prepared user case file cannot use a symbolic link")
    with path.open("xb") as stream:
        stream.write(data)
        stream.flush()
        os.fsync(stream.fileno())


class UserProblemCaseStore:
    """Append-only review receipts and immutable statement revisions."""

    def __init__(self, root: Path, store_path: Path | None = None):
        root_path = Path(root)
        if root_path.is_symlink():
            raise ValueError("prepared user case checkout root cannot be a symbolic link")
        self.root = root_path.resolve()
        candidate = store_path if store_path is not None else self.root / DEFAULT_STORE_PATH
        if not candidate.is_absolute():
            candidate = self.root / candidate
        self.path = Path(os.path.abspath(candidate))
        try:
            self.path.relative_to(self.root)
        except ValueError as exc:
            raise ValueError("prepared user case store must stay inside the MathCase checkout") from exc
        self.lock_path = Path(str(self.path) + ".lock")
        self.run_path = self.root / RUN_STORE_PATH
        self.run_lock_path = Path(str(self.run_path) + ".lock")

    def _assert_safe(self, path: Path, *, create_parent: bool = False) -> None:
        try:
            relative = path.relative_to(self.root)
        except ValueError as exc:
            raise ValueError("prepared user case store must stay inside the MathCase checkout") from exc
        current = self.root
        for part in relative.parts[:-1]:
            current = current / part
            if current.exists() and current.is_symlink():
                raise ValueError("prepared user case path cannot cross a symbolic link")
        if create_parent:
            path.parent.mkdir(parents=True, exist_ok=True)
            current = self.root
            for part in relative.parts[:-1]:
                current = current / part
                if current.is_symlink():
                    raise ValueError("prepared user case path cannot cross a symbolic link")
        if path.is_symlink() or Path(str(path) + ".lock").is_symlink():
            raise ValueError("prepared user case store and lock must be regular local paths")

    def _read_events(self, path: Path, *, schema: str) -> tuple[list[dict[str, Any]], str]:
        self._assert_safe(path)
        if not path.exists():
            return [], "0" * 64
        raw = path.read_bytes()
        if not path.is_file() or path.is_symlink() or len(raw) > MAX_STORE_BYTES or (raw and not raw.endswith(b"\n")):
            raise ValueError("prepared user case journal is unsafe, oversized, or incomplete")
        rows: list[dict[str, Any]] = []
        previous = "0" * 64
        keys: set[str] = set()
        identities: set[tuple[str, str]] = set()
        for sequence, line in enumerate(raw.splitlines(), start=1):
            try:
                event = json.loads(line.decode("utf-8", errors="strict"))
            except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                raise ValueError(f"prepared user case journal event {sequence} is invalid JSON") from exc
            if not isinstance(event, dict) or set(event) != {
                "schema_version", "sequence", "previous_event_sha256", "idempotency_key", "record", "event_sha256",
            }:
                raise ValueError(f"prepared user case journal event {sequence} has unsupported fields")
            event_body = {key: event[key] for key in event if key != "event_sha256"}
            digest = _sha(_canonical(event_body))
            key = event.get("idempotency_key")
            record = event.get("record")
            identity = (
                str(record.get("case_id")),
                str(record.get("profile_id", record.get("run_id", ""))),
            ) if isinstance(record, dict) else ("", "")
            if (
                event.get("schema_version") != schema
                or event.get("sequence") != sequence
                or event.get("previous_event_sha256") != previous
                or event.get("event_sha256") != digest
                or not isinstance(key, str) or not IDEMPOTENCY_KEY.fullmatch(key) or key in keys
                or identity in identities
                or not isinstance(record, dict)
                or not isinstance(record.get("case_id"), str) or not IDENTITY.fullmatch(record["case_id"])
            ):
                raise ValueError(f"prepared user case journal event {sequence} failed its integrity checks")
            keys.add(key)
            identities.add(identity)
            rows.append(event)
            previous = digest
        if len(rows) > MAX_RECORDS:
            raise ValueError("prepared user case journal exceeds its record limit")
        return rows, previous

    def _read_preparations(self) -> tuple[list[dict[str, Any]], str]:
        with exclusive_file_lock(self.lock_path):
            return self._read_events(self.path, schema=EVENT_SCHEMA)

    def read(self) -> dict[str, Any]:
        events, head = self._read_preparations()
        records = [event["record"] for event in events]
        for record in records:
            self._verify_record(record)
        return {
            "schema_version": STORE_SCHEMA,
            "records": records,
            "record_count": len(records),
            "store_head_sha256": head,
            "store_path": self.path.relative_to(self.root).as_posix(),
            "execution_scope": {"provider_calls": 0, "proof_attempts": 0, "training": "NOT_AUTHORIZED", "public_export": "NOT_AUTHORIZED"},
        }

    def catalog_record_view(self, record: dict[str, Any]) -> dict[str, Any]:
        """Return a display-only compatibility view without rewriting the journal."""
        self._verify_record(record)
        source_path = _safe_relative(self.root, record.get("source_review_path"))
        source_raw = source_path.read_bytes()
        if _sha(source_raw) != record.get("source_review_sha256"):
            raise ValueError("prepared user case source review changed before catalog display")
        source = json.loads(source_raw.decode("utf-8", errors="strict"))
        source_kind = source.get("source_kind")
        if (
            source.get("schema_version") != "mathcase-user-problem-source-review-v1"
            or source.get("case_id") != record.get("case_id")
            or source.get("draft_id") != record.get("draft_id")
            or source_kind not in {"OWNER_AUTHORED", "AGENT_AUTHORED_INTEGRATION_CONTROL"}
        ):
            raise ValueError("prepared user case has no verified source kind for catalog display")
        record_source_kind = record.get("source_kind")
        if record_source_kind is None:
            return {**record, "source_kind": source_kind}
        if record_source_kind != source_kind:
            raise ValueError("prepared user case catalog source kind differs from its pinned source review")
        return dict(record)

    def find(self, case_id: object) -> dict[str, Any]:
        if not isinstance(case_id, str) or not IDENTITY.fullmatch(case_id):
            raise ValueError("prepared user case identity is invalid")
        events, _head = self._read_preparations()
        for event in events:
            record = event["record"]
            if record["case_id"] == case_id:
                self._verify_record(record)
                return dict(record)
        raise ValueError("the requested prepared user case was not found")

    def _verify_record(self, record: dict[str, Any]) -> None:
        source_path = _safe_relative(self.root, record.get("source_review_path"))
        revision_path = _safe_relative(self.root, record.get("revision_path"))
        source_raw = source_path.read_bytes()
        revision_raw = revision_path.read_bytes()
        if _sha(source_raw) != record.get("source_review_sha256") or _sha(revision_raw) != record.get("revision_file_sha256"):
            raise ValueError("prepared user case revision or source review changed after preparation")
        source = json.loads(source_raw.decode("utf-8", errors="strict"))
        revision = json.loads(revision_raw.decode("utf-8", errors="strict"))
        if (
            source.get("schema_version") != "mathcase-user-problem-source-review-v1"
            or source.get("case_id") != record.get("case_id")
            or source.get("draft_id") != record.get("draft_id")
            or revision.get("schema_version") != "mathcase-user-problem-case-revision-v1"
            or revision.get("case_id") != record.get("case_id")
            or revision.get("problem_id") != record.get("case_id")
            or revision.get("lean_statement") != record.get("lean_statement")
            or revision.get("informal_statement") != record.get("informal_statement")
            or revision.get("case_revision_sha256") != record.get("case_revision_sha256")
        ):
            raise ValueError("prepared user case receipt does not match its immutable revision")
        if source.get("source_kind") == "AGENT_AUTHORED_INTEGRATION_CONTROL":
            authorization = source.get("task_scope_authorization")
            authorization_raw = _canonical(authorization) + b"\n" if isinstance(authorization, dict) else b""
            if (
                record.get("source_kind", source.get("source_kind")) != source.get("source_kind")
                or record.get("review_status") != source.get("review_status")
                or record.get("identity_status") != source.get("identity_status")
                or source.get("review_status") != "AGENT_AUTHORED_TEST_CONTROL_NOT_HUMAN_REVIEWED"
                or source.get("identity_status") != "TASK_SCOPE_AGENT_UNAUTHENTICATED"
                or source.get("signature_status") != "NONE"
                or source.get("authorization_path") not in AGENT_TEST_AUTHORIZATION_PATHS
                or source.get("authorization_sha256") != _sha(authorization_raw)
                or record.get("authorization_sha256") != source.get("authorization_sha256")
                or record.get("authorization_path") != source.get("authorization_path")
                or source.get("use_scope") != {
                    "local_verification": "AUTHORIZED_FOR_LOCAL_INTEGRATION_CANARY",
                    "provider_input": "AUTHORIZED_FOR_ONE_BOUNDED_TEST_CALL_AFTER_EXACT_REVIEW_AND_SEND",
                    "training": "NOT_AUTHORIZED",
                    "locked_evaluation": "NOT_INCLUDED_BY_TASK_SCOPE",
                    "public_export": "NOT_AUTHORIZED",
                }
            ):
                raise ValueError("agent-authored test control does not match its immutable task-scope authorization")

    def prepare(self, payload: object, drafts: ProblemDraftStore) -> dict[str, Any]:
        required = {"schema_version", "action", "draft_id", "statement_sha256", "profile_id", "source_review", "idempotency_key"}
        if not isinstance(payload, dict) or set(payload) != required:
            raise ValueError("user case preparation request fields are unsupported")
        if payload.get("schema_version") != PREPARE_SCHEMA or payload.get("action") != "prepare":
            raise ValueError("user case preparation schema or action is unsupported")
        idem = payload.get("idempotency_key")
        if not isinstance(idem, str) or not IDEMPOTENCY_KEY.fullmatch(idem):
            raise ValueError("user case preparation idempotency key is invalid")
        profile_id = payload.get("profile_id")
        if not isinstance(profile_id, str) or not IDENTITY.fullmatch(profile_id):
            raise ValueError("selected provider route identity is invalid")
        draft = drafts.get(payload.get("draft_id"))
        if draft.get("status") != "UNSIGNED_WAITING_FOR_REVIEW" or not isinstance(draft.get("lean_statement"), str) or not draft["lean_statement"].strip():
            raise ValueError("this draft needs an exact Lean statement before it can become a proof case")
        if payload.get("statement_sha256") != draft.get("statement_sha256"):
            raise ValueError("the draft changed after review; reload it before preparing the case")
        attestation = payload.get("source_review")
        if not isinstance(attestation, dict):
            raise ValueError("case preparation requires an explicit source-and-use review")
        source_kind = attestation.get("source_kind")
        authorization: dict[str, Any] | None = None
        authorization_path: str | None = None
        authorization_sha256: str | None = None
        if source_kind == "OWNER_AUTHORED":
            expected_review = {
                "source_kind", "exact_text_authored_or_rights_cleared", "local_verification_authorized",
                "provider_input_authorized", "locked_evaluation_material_absent", "training_authorized", "public_export_authorized",
            }
            if set(attestation) != expected_review or any(
                type(attestation.get(key)) is not bool for key in expected_review - {"source_kind"}
            ):
                raise ValueError("owner-authored preparation requires the complete exact source-and-use review")
            if (
                attestation.get("exact_text_authored_or_rights_cleared") is not True
                or attestation.get("local_verification_authorized") is not True
                or attestation.get("provider_input_authorized") is not True
                or attestation.get("locked_evaluation_material_absent") is not True
                or attestation.get("training_authorized") is not False
                or attestation.get("public_export_authorized") is not False
            ):
                raise ValueError("owner-authored preparation requires explicit local and provider-use consent")
        elif source_kind == "AGENT_AUTHORED_INTEGRATION_CONTROL":
            authorization, _authorization_raw, authorization_path = _read_agent_test_authorization(
                self.root, draft, attestation, profile_id,
            )
            authorization_sha256 = str(attestation["authorization_sha256"])
        else:
            raise ValueError("unsupported source kind; user cases must be owner-reviewed or a narrowly authorized local integration control")

        case_id = "user-" + _sha((draft["draft_id"] + "\0" + draft["statement_sha256"]).encode("utf-8"))[:24]
        source_rel = f"data/local/staging/user-problem-cases/{case_id}/source-review.json"
        source_review: dict[str, Any] = {
            "schema_version": "mathcase-user-problem-source-review-v1",
            "case_id": case_id,
            "draft_id": draft["draft_id"],
            "draft_statement_sha256": draft["statement_sha256"],
            "informal_statement_sha256": _sha(draft["informal_statement"].encode("utf-8")),
            "lean_statement_sha256": _sha(draft["lean_statement"].encode("utf-8")),
            "source_kind": source_kind,
            "review_status": "OWNER_SELF_ATTESTED_NOT_INDEPENDENTLY_VERIFIED" if source_kind == "OWNER_AUTHORED" else "AGENT_AUTHORED_TEST_CONTROL_NOT_HUMAN_REVIEWED",
            "identity_status": "UNAUTHENTICATED_LOCAL_OPERATOR" if source_kind == "OWNER_AUTHORED" else "TASK_SCOPE_AGENT_UNAUTHENTICATED",
            "signature_status": "NONE",
            "use_scope": ({
                "local_verification": "AUTHORIZED_BY_LOCAL_OPERATOR_ACTION",
                "provider_input": "AUTHORIZED_AFTER_EXACT_REQUEST_REVIEW_AND_SEND_CONFIRMATION",
                "training": "NOT_AUTHORIZED",
                "locked_evaluation": "NOT_INCLUDED_BY_SELF_ATTESTATION",
                "public_export": "NOT_AUTHORIZED",
            } if source_kind == "OWNER_AUTHORED" else {
                "local_verification": "AUTHORIZED_FOR_LOCAL_INTEGRATION_CANARY",
                "provider_input": "AUTHORIZED_FOR_ONE_BOUNDED_TEST_CALL_AFTER_EXACT_REVIEW_AND_SEND",
                "training": "NOT_AUTHORIZED",
                "locked_evaluation": "NOT_INCLUDED_BY_TASK_SCOPE",
                "public_export": "NOT_AUTHORIZED",
            }),
            "recorded_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        }
        if authorization is not None:
            source_review.update({
                "authorization_path": authorization_path,
                "authorization_sha256": authorization_sha256,
                "task_scope_authorization": authorization,
            })
        source_raw = _canonical(source_review) + b"\n"
        source_sha = _sha(source_raw)
        revision_rel = f"data/local/staging/user-problem-cases/{case_id}/revision-{draft['statement_sha256'][:16]}.json"
        revision = {
            "schema_version": "mathcase-user-problem-case-revision-v1",
            "case_id": case_id,
            "problem_id": case_id,
            "case_revision": 1,
            "title": draft["title"],
            "informal_statement": draft["informal_statement"],
            "lean_statement": draft["lean_statement"],
            "statement_sha256": draft["statement_sha256"],
            "formalization_scope": "USER_ENTERED_LEAN_STATEMENT_SEMANTIC_REVIEW_PENDING",
            "sources": [{"path": source_rel, "sha256": source_sha}],
            "case_revision_sha256": None,
        }
        revision_identity = {
            "schema_version": "mathcase-case-revision-v1",
            "case_id": case_id,
            "problem_id": case_id,
            "statement_field": "lean_statement",
            "statement_text_sha256": _sha(draft["lean_statement"].encode("utf-8")),
            "problem_statement_sha256": None,
            "case_version": "user-case-revision-1",
            "catalog_snapshot_sha256": None,
            "dossier_sha256": None,
            "selected_artifact_sha256": None,
            "informal_statement_sha256": _sha(draft["informal_statement"].encode("utf-8")),
            "formalization_scope": revision["formalization_scope"],
            "sources": [{"path": source_rel, "sha256": source_sha}],
            "original_source": {},
        }
        case_revision_sha = _sha(_canonical(revision_identity))
        revision["case_revision_sha256"] = case_revision_sha
        revision_raw = _canonical(revision) + b"\n"
        revision_sha = _sha(revision_raw)
        record = {
            "case_id": case_id,
            "problem_id": case_id,
            "draft_id": draft["draft_id"],
            "title": draft["title"],
            "informal_statement": draft["informal_statement"],
            "lean_statement": draft["lean_statement"],
            "statement_sha256": draft["statement_sha256"],
            "case_revision_sha256": case_revision_sha,
            "case_version": "user-case-revision-1",
            "formalization_scope": revision["formalization_scope"],
            "source_review_path": source_rel,
            "source_review_sha256": source_sha,
            "revision_path": revision_rel,
            "revision_file_sha256": revision_sha,
            "profile_id": profile_id,
            "recorded_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
            "review_status": source_review["review_status"],
            "source_kind": source_kind,
            "identity_status": source_review["identity_status"],
            "signature_status": "NONE",
        }
        if authorization is not None:
            record["authorization_path"] = authorization_path
            record["authorization_sha256"] = authorization_sha256

        with exclusive_file_lock(self.lock_path):
            events, head = self._read_events(self.path, schema=EVENT_SCHEMA)
            for event in events:
                old = event["record"]
                if event["idempotency_key"] == idem or old["case_id"] == case_id:
                    if (
                        old.get("draft_id") != draft["draft_id"]
                        or old.get("statement_sha256") != draft["statement_sha256"]
                        or old.get("profile_id") != profile_id
                    ):
                        raise ValueError("the prepared case already exists with a different statement revision or provider route")
                    self._verify_record(old)
                    return {"schema_version": STORE_SCHEMA, "record": old, "record_count": len(events), "store_head_sha256": head, "duplicate": True}
            self._assert_safe(self.path, create_parent=True)
            if len(events) >= MAX_RECORDS:
                raise ValueError("prepared user case journal reached its record limit")
            source_target = _safe_relative(self.root, source_rel)
            revision_target = _safe_relative(self.root, revision_rel)
            if revision_target.exists() and not source_target.exists():
                raise ValueError("immutable user case revision exists without its source review; refusing to reconstruct that lineage")
            if source_target.exists():
                existing_source_raw = source_target.read_bytes()
                try:
                    existing_source = json.loads(existing_source_raw.decode("utf-8", errors="strict"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("an interrupted source review file is not valid JSON") from exc
                comparable_existing = dict(existing_source) if isinstance(existing_source, dict) else {}
                comparable_expected = dict(source_review)
                comparable_existing.pop("recorded_at_utc", None)
                comparable_expected.pop("recorded_at_utc", None)
                if comparable_existing != comparable_expected or not existing_source_raw.endswith(b"\n"):
                    raise ValueError("immutable prepared user case source review exists with different contents")
                source_raw = existing_source_raw
                source_sha = _sha(source_raw)
            else:
                _write_new(source_target, source_raw)
            revision["sources"] = [{"path": source_rel, "sha256": source_sha}]
            revision_identity["sources"] = [{"path": source_rel, "sha256": source_sha}]
            case_revision_sha = _sha(_canonical(revision_identity))
            revision["case_revision_sha256"] = case_revision_sha
            revision_raw = _canonical(revision) + b"\n"
            revision_sha = _sha(revision_raw)
            record["case_revision_sha256"] = case_revision_sha
            record["source_review_sha256"] = source_sha
            record["revision_file_sha256"] = revision_sha
            if revision_target.exists():
                if revision_target.read_bytes() != revision_raw:
                    raise ValueError("immutable prepared user case revision exists with different contents")
            else:
                _write_new(revision_target, revision_raw)
            event_body = {
                "schema_version": EVENT_SCHEMA,
                "sequence": len(events) + 1,
                "previous_event_sha256": head,
                "idempotency_key": idem,
                "record": record,
            }
            event = {**event_body, "event_sha256": _sha(_canonical(event_body))}
            encoded = _canonical(event) + b"\n"
            if (self.path.stat().st_size if self.path.exists() else 0) + len(encoded) > MAX_STORE_BYTES:
                raise ValueError("prepared user case journal reached its byte limit")
            with self.path.open("ab") as stream:
                stream.write(encoded)
                stream.flush()
                os.fsync(stream.fileno())
        return {"schema_version": STORE_SCHEMA, "record": record, "record_count": len(events) + 1, "store_head_sha256": event["event_sha256"], "duplicate": False}

    def record_run(self, case_id: str, run_id: str, request_id: str) -> None:
        if not isinstance(run_id, str) or not PROOF_DESK_RUN_ID.fullmatch(run_id) or not isinstance(request_id, str) or not re.fullmatch(r"^[a-f0-9]{32}$", request_id):
            raise ValueError("prepared user case run identity is invalid")
        self.find(case_id)
        with exclusive_file_lock(self.run_lock_path):
            events, head = self._read_events(self.run_path, schema="mathcase-user-problem-case-run-event-v1")
            existing_run = next((event["record"] for event in events if event["record"].get("case_id") == case_id and event["record"].get("run_id") == run_id), None)
            if existing_run is not None:
                if existing_run.get("request_id") != request_id:
                    raise ValueError("the saved user case run is already linked to a different dispatch request")
                return
            if any(event["record"].get("case_id") == case_id and event["record"].get("request_id") == request_id for event in events):
                raise ValueError("one user case dispatch request cannot be linked to multiple runs")
            self._assert_safe(self.run_path, create_parent=True)
            if len(events) >= MAX_RECORDS:
                raise ValueError("prepared user case run journal reached its record limit")
            event_body = {
                "schema_version": "mathcase-user-problem-case-run-event-v1",
                "sequence": len(events) + 1,
                "previous_event_sha256": head,
                "idempotency_key": _sha((case_id + "\0" + run_id).encode("utf-8"))[:32],
                "record": {"case_id": case_id, "run_id": run_id, "request_id": request_id, "recorded_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")},
            }
            event = {**event_body, "event_sha256": _sha(_canonical(event_body))}
            with self.run_path.open("ab") as stream:
                stream.write(_canonical(event) + b"\n")
                stream.flush()
                os.fsync(stream.fileno())

    def runs_for(self, case_id: str) -> list[dict[str, Any]]:
        self.find(case_id)
        with exclusive_file_lock(self.run_lock_path):
            events, _head = self._read_events(self.run_path, schema="mathcase-user-problem-case-run-event-v1")
        return [dict(event["record"]) for event in events if event["record"].get("case_id") == case_id]
