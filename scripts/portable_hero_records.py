"""Read immutable saved hero evidence without owner-local state or execution.

The package preserves original source paths as evidence identities. It never
creates a profile, authorization, billing ledger, or new provider/checker run.
"""
from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import stat
from typing import Any

RUN_ID = "proofdesk-ui-hero-prime-divisibility-r1-20261028T152753Z-8d06f9d0e04b"
CASE_ID = "hero-prime-divisibility-r1"
RUN_PREFIX = "data/local/verification/proofdesk-ui-dispatch-r1/" + RUN_ID
PACKAGE_PREFIX = "docs/portable-hero/"
MANIFEST_PATH = PACKAGE_PREFIX + "manifest.json"
MANIFEST_SHA256 = "143fb004e5c8be68c298ed49670c208350de0d32a3a5b4fd70215afa357e4e90"
MAX_BYTES = 32 << 20


def _digest(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def _path(root: Path, relative: str) -> Path:
    if not isinstance(relative, str) or "\\" in relative:
        raise ValueError("Portable evidence path must use relative forward slashes")
    parts = PurePosixPath(relative).parts
    if not parts or PurePosixPath(relative).is_absolute() or any(p in {"..", "."} or ":" in p for p in parts):
        raise ValueError("Portable evidence path escapes the checkout")
    candidate = root.resolve()
    for part in parts:
        candidate /= part
        try:
            info = candidate.lstat()
        except FileNotFoundError:
            continue
        if stat.S_ISLNK(info.st_mode) or getattr(info, "st_file_attributes", 0) & 0x400:
            raise ValueError("Portable evidence may not traverse a link or reparse point")
    return candidate


def _read(root: Path, relative: str) -> bytes:
    path = _path(root, relative)
    info = path.stat()
    if not stat.S_ISREG(info.st_mode) or info.st_size > MAX_BYTES:
        raise ValueError("Portable evidence is not a bounded regular file")
    with path.open("rb") as stream:
        raw = stream.read(MAX_BYTES + 1)
    if len(raw) > MAX_BYTES:
        raise ValueError("Portable evidence exceeds its read bound")
    return raw


def _manifest(root: Path) -> dict[str, Any]:
    raw = _read(root, MANIFEST_PATH)
    if _digest(raw) != MANIFEST_SHA256:
        raise ValueError("Portable hero manifest changed after its pinned package")
    value = json.loads(raw)
    if value.get("schema") != "mathcase-portable-hero-evidence-v1" or not isinstance(value.get("artifacts"), list):
        raise ValueError("Portable hero manifest is unsupported")
    return value


def portable_artifact_paths(root: Path) -> tuple[str, ...]:
    """Original paths eligible for a validated read-only route fallback."""
    return tuple(item["source_checkout_path"] for item in _manifest(root)["artifacts"])


def _checked(raw: bytes, entry: dict[str, Any]) -> bytes:
    if len(raw) != entry.get("bytes") or _digest(raw) != entry.get("sha256"):
        raise ValueError("Portable hero evidence changed after its pinned digest")
    return raw


def read_portable_artifact(root: Path, source_path: str) -> bytes:
    """Read exact original bytes, falling back only when the original is absent.

    An existing changed original, unsafe link, or malformed manifest fails closed;
    an intact packaged copy never masks such a failure.
    """
    manifest = _manifest(root)
    entries = [item for item in manifest["artifacts"] if item.get("source_checkout_path") == source_path]
    if len(entries) != 1:
        raise ValueError("This artifact is not an exact portable hero mapping")
    entry = entries[0]
    original = _path(root, source_path)
    if os.path.lexists(original):
        return _checked(_read(root, source_path), entry)
    package_path = PACKAGE_PREFIX + entry["path"]
    if not package_path.startswith(PACKAGE_PREFIX + "evidence/"):
        raise ValueError("Portable hero mapping is outside its evidence package")
    return _checked(_read(root, package_path), entry)


def portable_artifact_path(root: Path, source_path: str) -> Path:
    """Return the validated physical path for an immutable evidence response."""
    read_portable_artifact(root, source_path)
    original = _path(root, source_path)
    if os.path.lexists(original):
        return original
    entries = [item for item in _manifest(root)["artifacts"] if item.get("source_checkout_path") == source_path]
    if len(entries) != 1:
        raise ValueError("This artifact is not an exact portable hero mapping")
    return _path(root, PACKAGE_PREFIX + entries[0]["path"])


def _object(root: Path, path: str) -> dict[str, Any]:
    value = json.loads(read_portable_artifact(root, path))
    if not isinstance(value, dict):
        raise ValueError("Portable hero artifact is not a JSON object")
    return value


def portable_hero_run(root: Path, run_id: str) -> dict[str, Any]:
    """Return dispatcher-compatible history for the one immutable saved run."""
    if run_id != RUN_ID:
        raise ValueError("The run is not the packaged saved hero")
    launch_path = RUN_PREFIX + "/launch-receipt.json"
    completion_path = RUN_PREFIX + "/completion-receipt.json"
    launch = _object(root, launch_path)
    completion_raw = read_portable_artifact(root, completion_path)
    completion = json.loads(completion_raw)
    if (launch.get("schema_version") != "mathcase-proofdesk-dispatch-launch-v1"
            or launch.get("run_id") != run_id or launch.get("problem_id") != CASE_ID
            or completion.get("schema_version") != "mathcase-proofdesk-dispatch-completion-v1"
            or completion.get("run_id") != run_id or completion.get("status") != "COMPLETED"
            or completion.get("exit_code") != 0):
        raise ValueError("The packaged hero does not contain a completed bound run")
    for key in ("provider_id", "protocol_id", "model_id"):
        if launch.get(key) != completion.get(key):
            raise ValueError("Portable launch and completion destinations differ")
    artifacts = completion.get("artifacts")
    if not isinstance(artifacts, list) or not artifacts:
        raise ValueError("Portable run has no completion-bound evidence")
    portable_manifest = _manifest(root)
    for entry in artifacts:
        raw = read_portable_artifact(root, entry["path"])
        if _digest(raw) != entry.get("sha256"):
            mapped = [item for item in portable_manifest["artifacts"]
                      if item.get("source_checkout_path") == entry["path"]]
            derivative = mapped[0].get("derivation") if len(mapped) == 1 else None
            if not isinstance(derivative, dict) or derivative.get("kind") != "PORTABLE_PATH_REDACTION" or derivative.get("original_sha256") != entry.get("sha256"):
                raise ValueError("Portable run artifact does not match its completion or declared derivative")
    result_path = RUN_PREFIX + "/provider-solve.json"
    result_raw = read_portable_artifact(root, result_path)
    if completion.get("result_path") != result_path or _digest(result_raw) != completion.get("result_sha256"):
        raise ValueError("Portable proof result does not match its completion")
    result = json.loads(result_raw)
    manifest = _manifest(root)
    cost_entry = manifest["run_cost_entries"]
    ledger_path = _path(root, completion["cost_journal_path"])
    if os.path.lexists(ledger_path):
        rows = []
        for row in _read(root, completion["cost_journal_path"]).splitlines(keepends=True):
            try:
                record = json.loads(row)
            except (json.JSONDecodeError, UnicodeDecodeError):
                continue
            if isinstance(record, dict) and isinstance(record.get("record"), dict) and record["record"].get("run_id") == run_id:
                rows.append(row)
        cost_raw = b"".join(rows)
    else:
        cost_raw = _checked(_read(root, PACKAGE_PREFIX + cost_entry["path"]), cost_entry)
        rows = cost_raw.splitlines(keepends=True)
    if (len(rows) != completion.get("run_cost_entry_count")
            or _digest(cost_raw) != completion.get("run_cost_entries_sha256")):
        raise ValueError("Portable run costs do not match the original completion")
    for row in rows:
        record = json.loads(row)
        if not isinstance(record.get("record"), dict) or record["record"].get("run_id") != run_id:
            raise ValueError("Portable costs include a different run")
    summary = {
        "schema_version": "mathcase-proofdesk-dispatch-run-v1", "run_id": run_id,
        "status": completion["status"], "provider_id": completion["provider_id"],
        "protocol_id": completion["protocol_id"], "model_id": completion["model_id"],
        "problem_id": launch["problem_id"], "case_binding": launch.get("case_binding"),
        "started_at_utc": launch.get("recorded_at_utc"), "completed_at_utc": completion.get("recorded_at_utc"),
        "completion_receipt_sha256": _digest(completion_raw),
        "provider_call_count": completion["provider_call_count"], "run_cost_entry_count": completion["run_cost_entry_count"],
        "failure": completion["failure"], "artifacts": [{**item, "url": "/" + item["path"]} for item in artifacts],
        "launch_receipt": launch_path, "completion_receipt": completion_path,
        "solved": result.get("solved") is True, "proof": result.get("proof", ""), "error": result.get("error", ""),
        "saved_origin": "PORTABLE_HASH_PINNED_PACKAGE", "provider_calls_on_open": 0,
    }
    keys = ("stage", "outcome", "evidence_ids", "cost_micros", "prompt_tokens", "completion_tokens", "verified_proof_sha256", "failure_class", "failure_summary")
    summary["attempts"] = [{**{key: item.get(key, [] if key == "evidence_ids" else "") for key in keys}, "cost_known": item.get("cost_known") is True}
                           for item in result.get("attempts", []) if isinstance(item, dict)]
    if len(summary["attempts"]) != summary["provider_call_count"]:
        raise ValueError("Portable proof attempts do not account for the saved calls")
    return summary
