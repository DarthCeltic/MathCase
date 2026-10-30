"""Private, draft-bound Tavily research evidence; separate from formal case research.

The local ledger is ignored by the product Git checkout and belongs with the
private draft journal when preserving or migrating local evidence.
"""

from __future__ import annotations

import hashlib
import json
import os
import re
from pathlib import Path
from typing import Any


SCHEMA = "mathcase-draft-research-event-v1"
VIEW_SCHEMA = "mathcase-draft-research-v1"
DEFAULT_STORE_PATH = "data/local/staging/user-problem-drafts/research.jsonl"
MAX_STORE_BYTES = 4 << 20
MAX_EVENTS = 2000
SHA256 = re.compile(r"^[a-f0-9]{64}$")
REQUEST_ID = re.compile(r"^[a-f0-9]{32}$")
DRAFT_ID = re.compile(r"^draft-[a-f0-9]{32}$")


def _canonical(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _sha(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def _assert_safe(path: Path, *, create_parent: bool = False) -> None:
    if path.is_symlink():
        raise ValueError("draft research ledger cannot be a symbolic link")
    parents = list(reversed(path.parents))
    for parent in parents:
        if parent.exists() and parent.is_symlink():
            raise ValueError("draft research ledger path crosses a symbolic link")
    if create_parent:
        path.parent.mkdir(parents=True, exist_ok=True)
        if path.parent.is_symlink() or path.is_symlink():
            raise ValueError("draft research ledger path cannot use a symbolic link")


def read_events(path: Path) -> list[dict[str, Any]]:
    """Fail closed on altered or incomplete local research evidence."""
    _assert_safe(path)
    if not path.exists():
        return []
    if not path.is_file():
        raise ValueError("draft research ledger must be a regular file")
    raw = path.read_bytes()
    if len(raw) > MAX_STORE_BYTES or (raw and not raw.endswith(b"\n")):
        raise ValueError("draft research ledger is oversized or incomplete")
    rows: list[dict[str, Any]] = []
    reserved: dict[str, dict[str, Any]] = {}
    completed: set[str] = set()
    previous = "0" * 64
    for sequence, line in enumerate(raw.splitlines(), start=1):
        try:
            row = json.loads(line.decode("utf-8", errors="strict"))
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("draft research ledger contains invalid JSON") from exc
        if not isinstance(row, dict):
            raise ValueError("draft research ledger contains a non-object event")
        payload = {key: value for key, value in row.items() if key != "event_sha256"}
        request_id = row.get("request_id")
        draft_id = row.get("draft_id")
        digest = row.get("statement_sha256")
        query = row.get("query")
        if (
            row.get("schema_version") != SCHEMA
            or row.get("sequence") != sequence
            or row.get("previous_event_sha256") != previous
            or row.get("event_sha256") != _sha(_canonical(payload))
            or not isinstance(request_id, str) or not REQUEST_ID.fullmatch(request_id)
            or not isinstance(draft_id, str) or not DRAFT_ID.fullmatch(draft_id)
            or not isinstance(digest, str) or not SHA256.fullmatch(digest)
            or not isinstance(query, str) or not 5 <= len(query.encode("utf-8")) <= 280
        ):
            raise ValueError("draft research ledger failed its binding or hash checks")
        if row.get("event") == "RESERVED":
            if request_id in reserved or row.get("status") != "IN_FLIGHT":
                raise ValueError("draft research reservation is duplicated or invalid")
            reserved[request_id] = row
        elif row.get("event") == "COMPLETED":
            first = reserved.get(request_id)
            if (first is None or request_id in completed
                    or row.get("status") not in {"COMPLETE", "FAILED_OR_UNKNOWN"}
                    or any(row.get(key) != first.get(key) for key in ("draft_id", "statement_sha256", "query"))):
                raise ValueError("draft research completion is unbound or duplicated")
            if row["status"] == "COMPLETE":
                if (row.get("provider_credits_used") != 1
                        or not isinstance(row.get("results"), list)
                        or not isinstance(row.get("source_urls"), list)
                        or row["source_urls"] != [item.get("url") for item in row["results"] if isinstance(item, dict)]):
                    raise ValueError("draft research completion lacks source or credit evidence")
            completed.add(request_id)
        else:
            raise ValueError("draft research ledger contains an unknown event")
        previous = row["event_sha256"]
        rows.append(row)
        if len(rows) > MAX_EVENTS:
            raise ValueError("draft research ledger reached its event limit")
    return rows


def append_event(path: Path, event: dict[str, Any]) -> dict[str, Any]:
    """Append only while the caller holds the shared Tavily reservation lock."""
    _assert_safe(path, create_parent=True)
    events = read_events(path)
    payload = {
        **event,
        "schema_version": SCHEMA,
        "sequence": len(events) + 1,
        "previous_event_sha256": events[-1]["event_sha256"] if events else "0" * 64,
    }
    row = {**payload, "event_sha256": _sha(_canonical(payload))}
    encoded = _canonical(row) + b"\n"
    current = path.stat().st_size if path.exists() else 0
    if len(events) >= MAX_EVENTS or current + len(encoded) > MAX_STORE_BYTES:
        raise ValueError("draft research ledger has reached its size limit")
    with path.open("ab") as stream:
        stream.write(encoded)
        stream.flush()
        os.fsync(stream.fileno())
    return row


def completed_for_draft(events: list[dict[str, Any]], draft_id: str, digest: str) -> list[dict[str, Any]]:
    return [row for row in events if row.get("event") == "COMPLETED"
            and row.get("status") == "COMPLETE"
            and row.get("provider_credits_used") == 1
            and row.get("draft_id") == draft_id
            and row.get("statement_sha256") == digest]


def reserved_count(events: list[dict[str, Any]]) -> int:
    return sum(row.get("event") == "RESERVED" for row in events)
