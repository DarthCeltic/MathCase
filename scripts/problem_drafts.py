"""Machine-local, non-executable drafts for user-authored math problems."""

from __future__ import annotations

import hashlib
import json
import os
import re
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from local_file_lock import exclusive_file_lock


STORE_SCHEMA = "mathcase-user-problem-drafts-v1"
EVENT_SCHEMA = "mathcase-user-problem-draft-event-v1"
REQUEST_SCHEMA = "mathcase-user-problem-draft-create-v1"
DEFAULT_STORE_PATH = "data/local/staging/user-problem-drafts/drafts.jsonl"
MAX_STORE_BYTES = 16 << 20
MAX_REQUEST_BYTES = 24 << 10
MAX_RECORDS = 1000
IDEMPOTENCY_KEY = re.compile(r"^[a-f0-9]{32}$")


def _canonical(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _text(value: object, name: str, *, required: bool, max_bytes: int) -> str:
    if not isinstance(value, str):
        raise ValueError(f"{name} must be text")
    if "\x00" in value:
        raise ValueError(f"{name} cannot contain a NUL character")
    if len(value.encode("utf-8")) > max_bytes:
        raise ValueError(f"{name} exceeds its {max_bytes}-byte limit")
    if required and not value.strip():
        raise ValueError(f"{name} is required")
    return value


def _draft_record_is_valid(record: object) -> bool:
    if not isinstance(record, dict) or set(record) != {
        "schema_version", "draft_id", "recorded_at_utc", "title", "informal_statement",
        "lean_statement", "statement_sha256", "status", "provenance", "use_scope",
    }:
        return False
    if record.get("schema_version") != STORE_SCHEMA or not isinstance(record.get("draft_id"), str):
        return False
    try:
        title = _text(record.get("title"), "title", required=True, max_bytes=512)
        informal = _text(record.get("informal_statement"), "informal statement", required=True, max_bytes=12 << 10)
        lean_value = record.get("lean_statement")
        lean = _text(lean_value, "Lean statement", required=False, max_bytes=8 << 10) if lean_value is not None else ""
    except ValueError:
        return False
    status = "NEEDS_FORMALIZATION" if not lean.strip() else "UNSIGNED_WAITING_FOR_REVIEW"
    expected_statement_sha = _sha(_canonical({"informal_statement": informal, "lean_statement": lean_value}))
    return (
        record["draft_id"].startswith("draft-")
        and record.get("status") == status
        and record.get("statement_sha256") == expected_statement_sha
        and isinstance(record.get("recorded_at_utc"), str)
        and record.get("provenance") == {
            "kind": "USER_ENTERED_UNVERIFIED",
            "identity": "UNAUTHENTICATED",
            "source_review": "NOT_PERFORMED",
        }
        and record.get("use_scope") == {
            "local_storage": "ALLOWED_FOR_THIS_DRAFT",
            "local_solver": "NOT_AUTHORIZED",
            "provider_input": "NOT_AUTHORIZED",
            "training": "NOT_AUTHORIZED",
            "public_export": "NOT_AUTHORIZED",
        }
        and title == record.get("title")
    )


class ProblemDraftStore:
    """Append-only store that never turns user text into solver authorization."""

    def __init__(self, root: Path, store_path: Path | None = None):
        root_path = Path(root)
        if root_path.is_symlink():
            raise ValueError("problem draft checkout root cannot be a symbolic link")
        self.root = root_path.resolve()
        candidate = store_path if store_path is not None else self.root / DEFAULT_STORE_PATH
        if not candidate.is_absolute():
            candidate = self.root / candidate
        # Normalize dot segments without resolving symlinks. Resolving first would
        # hide a symlinked parent and make the later path checks ineffective.
        self.path = Path(os.path.abspath(candidate))
        try:
            self.path.relative_to(self.root)
        except ValueError as exc:
            raise ValueError("problem draft store must stay inside the MathCase checkout") from exc
        self.lock_path = Path(str(self.path) + ".lock")

    def _assert_safe_path(self, *, create_parent: bool = False) -> None:
        relative = self.path.relative_to(self.root)
        current = self.root
        for part in relative.parts[:-1]:
            current = current / part
            if current.exists() and current.is_symlink():
                raise ValueError("problem draft store path cannot cross a symbolic link")
        if create_parent:
            self.path.parent.mkdir(parents=True, exist_ok=True)
            # Re-check after creation so a raced or pre-existing symlink cannot
            # redirect the journal outside its intended local directory.
            current = self.root
            for part in relative.parts[:-1]:
                current = current / part
                if current.is_symlink():
                    raise ValueError("problem draft store path cannot cross a symbolic link")
        if self.path.is_symlink() or self.lock_path.is_symlink():
            raise ValueError("problem draft store and lock must be regular local paths")

    def _read_events_unlocked(self) -> tuple[list[dict[str, Any]], str]:
        self._assert_safe_path()
        if not self.path.exists():
            return [], "0" * 64
        if not self.path.is_file() or self.path.is_symlink():
            raise ValueError("problem draft journal must be a regular file")
        raw = self.path.read_bytes()
        if len(raw) > MAX_STORE_BYTES or (raw and not raw.endswith(b"\n")):
            raise ValueError("problem draft journal is oversized or ends with an incomplete event")
        events: list[dict[str, Any]] = []
        previous = "0" * 64
        idempotency_keys: set[str] = set()
        draft_ids: set[str] = set()
        for index, line in enumerate(raw.splitlines(), start=1):
            try:
                event = json.loads(line.decode("utf-8", errors="strict"))
            except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                raise ValueError(f"problem draft journal event {index} is not valid JSON") from exc
            if not isinstance(event, dict) or set(event) != {
                "schema_version", "sequence", "previous_event_sha256", "idempotency_key", "record", "event_sha256",
            }:
                raise ValueError(f"problem draft journal event {index} has unsupported fields")
            event_body = {key: event[key] for key in event if key != "event_sha256"}
            event_hash = _sha(_canonical(event_body))
            idem = event.get("idempotency_key")
            record = event.get("record")
            if (
                event.get("schema_version") != EVENT_SCHEMA
                or event.get("sequence") != index
                or event.get("previous_event_sha256") != previous
                or event.get("event_sha256") != event_hash
                or not isinstance(idem, str)
                or not IDEMPOTENCY_KEY.fullmatch(idem)
                or idem in idempotency_keys
                or not _draft_record_is_valid(record)
                or record["draft_id"] in draft_ids
            ):
                raise ValueError(f"problem draft journal event {index} failed its integrity checks")
            idempotency_keys.add(idem)
            draft_ids.add(record["draft_id"])
            events.append(event)
            previous = event_hash
        if len(events) > MAX_RECORDS:
            raise ValueError("problem draft journal exceeds its record limit")
        return events, previous

    def read(self) -> dict[str, Any]:
        with exclusive_file_lock(self.lock_path):
            events, head = self._read_events_unlocked()
        return {
            "schema_version": STORE_SCHEMA,
            "records": [event["record"] for event in events],
            "record_count": len(events),
            "store_head_sha256": head,
            "store_path": self.path.relative_to(self.root).as_posix(),
            "execution_scope": {
                "provider_calls": 0,
                "proof_attempts": 0,
                "queue_reservations": 0,
                "source_review": "NOT_PERFORMED",
                "solver_permission": "NOT_AUTHORIZED",
            },
        }

    def get(self, draft_id: object) -> dict[str, Any]:
        if not isinstance(draft_id, str) or not draft_id.startswith("draft-"):
            raise ValueError("user problem draft identity is invalid")
        with exclusive_file_lock(self.lock_path):
            events, _head = self._read_events_unlocked()
        for event in events:
            record = event["record"]
            if record["draft_id"] == draft_id:
                return dict(record)
        raise ValueError("the requested local user problem draft was not found")

    def create(self, payload: object) -> dict[str, Any]:
        required = {"schema_version", "action", "title", "informal_statement", "lean_statement", "idempotency_key"}
        if not isinstance(payload, dict) or set(payload) != required:
            raise ValueError("problem draft request fields are unsupported")
        if payload.get("schema_version") != REQUEST_SCHEMA or payload.get("action") != "create":
            raise ValueError("problem draft request schema or action is unsupported")
        idem = payload.get("idempotency_key")
        if not isinstance(idem, str) or not IDEMPOTENCY_KEY.fullmatch(idem):
            raise ValueError("problem draft idempotency key must be 32 lowercase hexadecimal characters")
        title = _text(payload.get("title"), "title", required=True, max_bytes=512)
        informal = _text(payload.get("informal_statement"), "informal statement", required=True, max_bytes=12 << 10)
        lean_input = _text(payload.get("lean_statement"), "Lean statement", required=False, max_bytes=8 << 10)
        lean = lean_input if lean_input.strip() else None
        request_bytes = _canonical({"title": title, "informal_statement": informal, "lean_statement": lean})
        if len(request_bytes) > MAX_REQUEST_BYTES:
            raise ValueError("problem draft text exceeds the total request limit")

        self._assert_safe_path(create_parent=True)
        with exclusive_file_lock(self.lock_path):
            events, previous = self._read_events_unlocked()
            for event in events:
                if event["idempotency_key"] == idem:
                    return self._response(event["record"], len(events), previous, duplicate=True)
            if len(events) >= MAX_RECORDS:
                raise ValueError("problem draft journal reached its record limit")
            record = {
                "schema_version": STORE_SCHEMA,
                "draft_id": "draft-" + uuid.uuid4().hex,
                "recorded_at_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
                "title": title,
                "informal_statement": informal,
                "lean_statement": lean,
                "statement_sha256": _sha(_canonical({"informal_statement": informal, "lean_statement": lean})),
                "status": "NEEDS_FORMALIZATION" if lean is None else "UNSIGNED_WAITING_FOR_REVIEW",
                "provenance": {
                    "kind": "USER_ENTERED_UNVERIFIED",
                    "identity": "UNAUTHENTICATED",
                    "source_review": "NOT_PERFORMED",
                },
                "use_scope": {
                    "local_storage": "ALLOWED_FOR_THIS_DRAFT",
                    "local_solver": "NOT_AUTHORIZED",
                    "provider_input": "NOT_AUTHORIZED",
                    "training": "NOT_AUTHORIZED",
                    "public_export": "NOT_AUTHORIZED",
                },
            }
            event_body = {
                "schema_version": EVENT_SCHEMA,
                "sequence": len(events) + 1,
                "previous_event_sha256": previous,
                "idempotency_key": idem,
                "record": record,
            }
            event = {**event_body, "event_sha256": _sha(_canonical(event_body))}
            encoded = _canonical(event) + b"\n"
            current_bytes = self.path.stat().st_size if self.path.exists() else 0
            if current_bytes + len(encoded) > MAX_STORE_BYTES:
                raise ValueError("problem draft journal reached its byte limit")
            with self.path.open("ab") as stream:
                stream.write(encoded)
                stream.flush()
                os.fsync(stream.fileno())
            return self._response(record, len(events) + 1, event["event_sha256"], duplicate=False)

    @staticmethod
    def _response(record: dict[str, Any], count: int, head: str, *, duplicate: bool) -> dict[str, Any]:
        return {
            "schema_version": STORE_SCHEMA,
            "record": record,
            "record_count": count,
            "store_head_sha256": head,
            "duplicate": duplicate,
            "execution_scope": {
                "provider_calls": 0,
                "proof_attempts": 0,
                "queue_reservations": 0,
                "source_review": "NOT_PERFORMED",
                "solver_permission": "NOT_AUTHORIZED",
            },
        }
