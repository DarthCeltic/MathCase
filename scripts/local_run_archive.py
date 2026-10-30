"""Read-only, manifest-bound summaries for the private MathCase run archive."""

from __future__ import annotations

import hashlib
import hmac
import json
import os
import re
import stat
from dataclasses import dataclass, field
from datetime import datetime, timedelta
from pathlib import Path
from typing import Any


RUN_MANIFEST_PATH = "runs/manifest.json"
RUN_MANIFEST_SCHEMA = "mathcase-private-run-archive-v1"
DISPATCH_SOURCE_PREFIX = "data/local/verification/proofdesk-ui-dispatch-r1/"
DISPATCH_LAUNCH_SCHEMA = "mathcase-proofdesk-dispatch-launch-v1"
DISPATCH_COMPLETION_SCHEMA = "mathcase-proofdesk-dispatch-completion-v1"
PROVIDER_RESULT_SCHEMA = "mathcase-provider-solve-v1"
LEAN_RECEIPT_SCHEMAS = frozenset(
    {
        "mathcase-lean-runtime-preflight-v1",
        "mathcase-lean-statement-check-v3",
        "mathcase-lean-verification-v3",
    }
)

# Summary labels are intentionally allowlisted. Unknown provider/model labels
# are omitted instead of forwarded from an arbitrary receipt.
APPROVED_PROVIDER_IDS = frozenset({"nebius-token-factory"})
APPROVED_MODEL_IDS = frozenset(
    {
        "nvidia/Nemotron-3_5-Lightning",
        "Qwen/Qwen3-30B-A3B-Instruct-2507",
        "deepseek-ai/DeepSeek-V4.1-Flash",
    }
)

_SHA256_RE = re.compile(r"^[0-9a-fA-F]{64}$")
_RUN_ID_RE = re.compile(r"^[A-Za-z0-9][A-Za-z0-9._-]{0,159}$")
_UTC_TIMESTAMP_RE = re.compile(
    r"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|\+00:00)$"
)
_MAX_MANIFEST_BYTES = 16 * 1024 * 1024
_MAX_RECEIPT_BYTES = 8 * 1024 * 1024


class RunArchiveError(ValueError):
    """A run archive is malformed, unsafe, or inconsistent."""


@dataclass(frozen=True)
class ArtifactRef:
    """Metadata for a selected artifact whose archive bytes were verified."""

    kind: str
    path: str
    source_path: str
    sha256: str
    size_bytes: int


@dataclass(frozen=True)
class LeanReceiptSummary:
    """Original receipt schema and status, kept separate from provider outcome."""

    schema_version: str
    status: str
    artifact: ArtifactRef


@dataclass(frozen=True)
class ResultSummary:
    """Whitelisted result labels; provider solved is never a Lean status."""

    schema_version: str
    status: str | None
    provider_solved: bool | None
    artifact: ArtifactRef


@dataclass(frozen=True)
class RunSummary:
    """Fixed, sanitized summary of one recorded run identity."""

    run_id: str
    launch_status: str | None
    launch_recorded_at_utc: str | None
    completion_status: str | None
    completion_recorded_at_utc: str | None
    provider_id: str | None
    model_id: str | None
    results: tuple[ResultSummary, ...]
    lean_receipts: tuple[LeanReceiptSummary, ...]
    artifact_refs: tuple[ArtifactRef, ...]


@dataclass(frozen=True)
class _FileEntry:
    lane: str
    source_path: str
    archive_path: str
    sha256: str
    size_bytes: int


@dataclass
class _RunBuilder:
    run_id: str
    launch_status: str | None = None
    launch_recorded_at_utc: str | None = None
    completion_status: str | None = None
    completion_recorded_at_utc: str | None = None
    provider_id: str | None = None
    model_id: str | None = None
    raw_provider_id: str | None = None
    raw_model_id: str | None = None
    results: list[ResultSummary] = field(default_factory=list)
    lean_receipts: list[LeanReceiptSummary] = field(default_factory=list)
    artifact_refs: dict[tuple[str, str], ArtifactRef] = field(default_factory=dict)
    launch_seen: bool = False
    completion_seen: bool = False


def _is_link(info: os.stat_result, path: Path) -> bool:
    if stat.S_ISLNK(info.st_mode):
        return True
    reparse_flag = getattr(stat, "FILE_ATTRIBUTE_REPARSE_POINT", 0x400)
    if getattr(info, "st_file_attributes", 0) & reparse_flag:
        return True
    is_junction = getattr(path, "is_junction", None)
    return bool(is_junction and is_junction())


def _checked_root(root: str | os.PathLike[str]) -> Path:
    try:
        root_path = Path(os.path.abspath(os.fspath(root)))
    except (TypeError, ValueError, OSError) as exc:
        raise RunArchiveError("archive root is invalid") from exc

    for item in (*reversed(root_path.parents), root_path):
        try:
            info = item.lstat()
        except OSError as exc:
            raise RunArchiveError("archive root is unavailable") from exc
        if _is_link(info, item):
            raise RunArchiveError("archive paths cannot use symlinks")
        if item != root_path and not stat.S_ISDIR(info.st_mode):
            raise RunArchiveError("archive root is unavailable")
    if not stat.S_ISDIR(root_path.lstat().st_mode):
        raise RunArchiveError("archive root is not a directory")
    return root_path


def _safe_parts(value: object, label: str) -> tuple[str, ...]:
    if (
        not isinstance(value, str)
        or not value
        or value.startswith("/")
        or "\\" in value
        or ":" in value
        or "\x00" in value
    ):
        raise RunArchiveError(f"{label} is not a safe relative path")
    parts = tuple(value.split("/"))
    if any(part in {"", ".", ".."} for part in parts):
        raise RunArchiveError(f"{label} is not a safe relative path")
    return parts


def _checked_file(root: Path, relative: str) -> tuple[Path, os.stat_result]:
    parts = _safe_parts(relative, "archive path")
    target = root
    info: os.stat_result | None = None
    for index, part in enumerate(parts):
        target = target / part
        try:
            info = target.lstat()
        except OSError as exc:
            raise RunArchiveError("archive file is unavailable") from exc
        if _is_link(info, target):
            raise RunArchiveError("archive paths cannot use symlinks")
        if index < len(parts) - 1 and not stat.S_ISDIR(info.st_mode):
            raise RunArchiveError("archive path is not a regular file")
    if info is None or not stat.S_ISREG(info.st_mode):
        raise RunArchiveError("archive path is not a regular file")
    return target, info


def _read_file(root: Path, relative: str, *, max_bytes: int) -> bytes:
    target, before = _checked_file(root, relative)
    if before.st_size > max_bytes:
        raise RunArchiveError("archive metadata file is too large")
    flags = os.O_RDONLY | getattr(os, "O_BINARY", 0) | getattr(os, "O_NOFOLLOW", 0)
    try:
        descriptor = os.open(target, flags)
        with os.fdopen(descriptor, "rb") as stream:
            opened = os.fstat(stream.fileno())
            if not stat.S_ISREG(opened.st_mode) or (opened.st_dev, opened.st_ino) != (
                before.st_dev,
                before.st_ino,
            ):
                raise RunArchiveError("archive file changed while opening")
            data = stream.read(max_bytes + 1)
    except RunArchiveError:
        raise
    except OSError as exc:
        raise RunArchiveError("archive file is unavailable") from exc
    if len(data) != before.st_size or len(data) > max_bytes:
        raise RunArchiveError("archive file changed while reading")
    return data


def _parse_object(data: bytes, label: str) -> dict[str, Any]:
    try:
        value = json.loads(data.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise RunArchiveError(f"{label} is not valid UTF-8 JSON") from exc
    if not isinstance(value, dict):
        raise RunArchiveError(f"{label} must be a JSON object")
    return value


def _required_string(value: object, label: str) -> str:
    if not isinstance(value, str) or not value:
        raise RunArchiveError(f"{label} is missing")
    return value


def _optional_status(value: object, label: str) -> str | None:
    if value is None:
        return None
    if not isinstance(value, str):
        raise RunArchiveError(f"{label} is invalid")
    return value


def _recorded_at_utc(receipt: dict[str, Any], label: str) -> str | None:
    if "recorded_at_utc" not in receipt:
        return None
    value = receipt["recorded_at_utc"]
    if not isinstance(value, str) or not _UTC_TIMESTAMP_RE.fullmatch(value):
        raise RunArchiveError(f"{label} is not a valid UTC timestamp")
    normalized = value[:-1] + "+00:00" if value.endswith("Z") else value
    try:
        parsed = datetime.fromisoformat(normalized)
        offset = parsed.utcoffset()
    except ValueError as exc:
        raise RunArchiveError(f"{label} is not a valid UTC timestamp") from exc
    if offset != timedelta(0):
        raise RunArchiveError(f"{label} is not a valid UTC timestamp")
    return value


def _sha256(value: object, label: str) -> str:
    if not isinstance(value, str) or not _SHA256_RE.fullmatch(value):
        raise RunArchiveError(f"{label} is not a SHA-256 digest")
    return value.lower()


def _load_manifest(root: Path) -> dict[str, _FileEntry]:
    raw = _read_file(root, RUN_MANIFEST_PATH, max_bytes=_MAX_MANIFEST_BYTES)
    manifest = _parse_object(raw, "runs manifest")
    if manifest.get("schema_version") != RUN_MANIFEST_SCHEMA:
        raise RunArchiveError("runs manifest schema is unsupported")
    source_commit = manifest.get("source_commit_at_import")
    if not isinstance(source_commit, str) or not re.fullmatch(r"[0-9a-fA-F]{40}", source_commit):
        raise RunArchiveError("runs manifest source revision is invalid")
    if not isinstance(manifest.get("excluded"), list) or not isinstance(manifest.get("scope_note"), str):
        raise RunArchiveError("runs manifest metadata is invalid")

    rows = manifest.get("files")
    if not isinstance(rows, list):
        raise RunArchiveError("runs manifest files must be a list")
    entries: dict[str, _FileEntry] = {}
    archive_paths: set[str] = set()
    for row in rows:
        if not isinstance(row, dict):
            raise RunArchiveError("runs manifest file entry is invalid")
        lane = _required_string(row.get("lane"), "manifest lane")
        source_path = row.get("source_path")
        _safe_parts(source_path, "manifest source path")
        archive_path = row.get("archive_path")
        _safe_parts(archive_path, "manifest archive path")
        if archive_path != f"runs/files/{source_path}":
            raise RunArchiveError("manifest archive path does not match source path")
        digest = _sha256(row.get("sha256"), "manifest file hash")
        size = row.get("size_bytes")
        if not isinstance(size, int) or isinstance(size, bool) or size < 0:
            raise RunArchiveError("manifest file size is invalid")
        if source_path in entries or archive_path in archive_paths:
            raise RunArchiveError("runs manifest contains duplicate paths")
        entries[source_path] = _FileEntry(lane, source_path, archive_path, digest, size)
        archive_paths.add(archive_path)
    return entries


def _read_entry(root: Path, entry: _FileEntry) -> bytes:
    raw = _read_file(root, entry.archive_path, max_bytes=_MAX_RECEIPT_BYTES)
    if len(raw) != entry.size_bytes:
        raise RunArchiveError("archive artifact size does not match manifest")
    if not hmac.compare_digest(hashlib.sha256(raw).hexdigest(), entry.sha256):
        raise RunArchiveError("archive artifact hash does not match manifest")
    return raw


def _artifact(entry: _FileEntry, kind: str) -> ArtifactRef:
    return ArtifactRef(
        kind=kind,
        path=entry.archive_path,
        source_path=entry.source_path,
        sha256=entry.sha256,
        size_bytes=entry.size_bytes,
    )


def _bound_artifact(reference: object, entries: dict[str, _FileEntry]) -> _FileEntry:
    if not isinstance(reference, dict):
        raise RunArchiveError("receipt artifact binding is invalid")
    source_path = reference.get("path")
    _safe_parts(source_path, "receipt artifact path")
    digest = _sha256(reference.get("sha256"), "receipt artifact hash")
    size = reference.get("size_bytes")
    if not isinstance(size, int) or isinstance(size, bool) or size < 0:
        raise RunArchiveError("receipt artifact size is invalid")
    entry = entries.get(source_path)
    if entry is None:
        raise RunArchiveError("receipt artifact is absent from runs manifest")
    if entry.sha256 != digest or entry.size_bytes != size:
        raise RunArchiveError("receipt artifact metadata does not match manifest")
    return entry


def _checked_run_id(value: object) -> str:
    if not isinstance(value, str) or not _RUN_ID_RE.fullmatch(value):
        raise RunArchiveError("receipt run id is invalid")
    return value


def _builder(builders: dict[str, _RunBuilder], run_id: str) -> _RunBuilder:
    return builders.setdefault(run_id, _RunBuilder(run_id=run_id))


def _merge_labels(builder: _RunBuilder, provider_id: object, model_id: object) -> None:
    if provider_id is not None:
        if not isinstance(provider_id, str):
            raise RunArchiveError("receipt provider label is invalid")
        if builder.raw_provider_id is not None and builder.raw_provider_id != provider_id:
            raise RunArchiveError("run provider labels do not match")
        builder.raw_provider_id = provider_id
        if provider_id in APPROVED_PROVIDER_IDS:
            builder.provider_id = provider_id
    if model_id is not None:
        if not isinstance(model_id, str):
            raise RunArchiveError("receipt model label is invalid")
        if builder.raw_model_id is not None and builder.raw_model_id != model_id:
            raise RunArchiveError("run model labels do not match")
        builder.raw_model_id = model_id
        if model_id in APPROVED_MODEL_IDS:
            builder.model_id = model_id


def _receipt_status(receipt: dict[str, Any], label: str) -> str:
    return _required_string(receipt.get("status"), label)


def _result_summary(
    root: Path,
    entry: _FileEntry,
    run_id: str,
    builders: dict[str, _RunBuilder],
    *,
    expected_hash: str | None = None,
) -> ResultSummary:
    raw = _read_entry(root, entry)
    data = _parse_object(raw, "run result")
    schema = _required_string(data.get("schema_version"), "run result schema")
    if expected_hash is not None and entry.sha256 != _sha256(expected_hash, "completion result hash"):
        raise RunArchiveError("completion result hash does not match manifest")
    if schema == PROVIDER_RESULT_SCHEMA:
        result_run_id = _checked_run_id(data.get("run_id"))
        if result_run_id != run_id:
            raise RunArchiveError("provider result run id does not match receipt")
        solved = data.get("solved")
        if not isinstance(solved, bool):
            raise RunArchiveError("provider result solved label is invalid")
        status = _optional_status(data.get("status"), "provider result status")
        _merge_labels(_builder(builders, run_id), data.get("provider_id"), data.get("model_id"))
        return ResultSummary(schema, status, solved, _artifact(entry, "result"))
    raise RunArchiveError("run result schema is unsupported")


def _check_completion_artifacts(
    completion: dict[str, Any], entries: dict[str, _FileEntry]
) -> dict[str, _FileEntry]:
    references = completion.get("artifacts")
    if not isinstance(references, list):
        raise RunArchiveError("completion artifact bindings are invalid")
    bound: dict[str, _FileEntry] = {}
    for reference in references:
        entry = _bound_artifact(reference, entries)
        if entry.source_path in bound:
            raise RunArchiveError("completion has duplicate artifact bindings")
        bound[entry.source_path] = entry
    return bound


def _add_launch(
    root: Path,
    entry: _FileEntry,
    builders: dict[str, _RunBuilder],
) -> None:
    if not entry.source_path.startswith(DISPATCH_SOURCE_PREFIX) or not entry.source_path.endswith(
        "/launch-receipt.json"
    ):
        return
    launch = _parse_object(_read_entry(root, entry), "launch receipt")
    if launch.get("schema_version") != DISPATCH_LAUNCH_SCHEMA:
        raise RunArchiveError("launch receipt schema is unsupported")
    run_id = _checked_run_id(launch.get("run_id"))
    if Path(entry.source_path).parent.name != run_id:
        raise RunArchiveError("launch receipt path does not match run id")
    builder = _builder(builders, run_id)
    if builder.launch_seen:
        raise RunArchiveError("run has duplicate launch receipts")
    builder.launch_seen = True
    builder.launch_status = _receipt_status(launch, "launch status")
    builder.launch_recorded_at_utc = _recorded_at_utc(launch, "launch recorded_at_utc")
    _merge_labels(builder, launch.get("provider_id"), launch.get("model_id"))
    builder.artifact_refs[("launch", entry.source_path)] = _artifact(entry, "launch")


def _add_completion(
    root: Path,
    entry: _FileEntry,
    entries: dict[str, _FileEntry],
    builders: dict[str, _RunBuilder],
) -> None:
    if not entry.source_path.startswith(DISPATCH_SOURCE_PREFIX) or not entry.source_path.endswith(
        "/completion-receipt.json"
    ):
        return
    path_parts = _safe_parts(entry.source_path, "completion receipt path")
    parent_name = path_parts[-2] if len(path_parts) > 1 else ""
    completion = _parse_object(_read_entry(root, entry), "completion receipt")
    if completion.get("schema_version") != DISPATCH_COMPLETION_SCHEMA:
        raise RunArchiveError("completion receipt schema is unsupported")
    run_id = _checked_run_id(completion.get("run_id"))
    if parent_name != run_id:
        raise RunArchiveError("completion receipt path does not match run id")
    builder = _builder(builders, run_id)
    if builder.completion_seen:
        raise RunArchiveError("run has duplicate completion receipts")
    builder.completion_seen = True
    builder.completion_status = _receipt_status(completion, "completion status")
    builder.completion_recorded_at_utc = _recorded_at_utc(completion, "completion recorded_at_utc")
    _merge_labels(builder, completion.get("provider_id"), completion.get("model_id"))
    builder.artifact_refs[("completion", entry.source_path)] = _artifact(entry, "completion")

    completion_artifacts = _check_completion_artifacts(completion, entries)
    result_path = completion.get("result_path")
    result_digest = completion.get("result_sha256")
    if result_path is None and result_digest is None:
        result_entry = None
    else:
        _safe_parts(result_path, "completion result path")
        if not result_path.startswith(f"{DISPATCH_SOURCE_PREFIX}{run_id}/"):
            raise RunArchiveError("completion result path does not match run id")
        digest = _sha256(result_digest, "completion result hash")
        result_entry = entries.get(result_path)
        if result_entry is None:
            raise RunArchiveError("completion result is absent from runs manifest")
        if result_entry.sha256 != digest:
            raise RunArchiveError("completion result hash does not match manifest")
        if result_path not in completion_artifacts:
            raise RunArchiveError("completion result is not in artifact bindings")
        if completion_artifacts[result_path].size_bytes != result_entry.size_bytes:
            raise RunArchiveError("completion result size does not match manifest")
        builder.results.append(
            _result_summary(root, result_entry, run_id, builders, expected_hash=digest)
        )
        builder.artifact_refs[("result", result_entry.source_path)] = _artifact(result_entry, "result")

    _merge_labels(builder, completion.get("provider_id"), completion.get("model_id"))

    for source_path, lean_entry in sorted(completion_artifacts.items()):
        if "/lean-receipts/" not in f"/{source_path}/" or not source_path.lower().endswith(".json"):
            continue
        if not source_path.startswith(f"{DISPATCH_SOURCE_PREFIX}{run_id}/lean-receipts/"):
            raise RunArchiveError("Lean receipt path does not match run id")
        receipt = _parse_object(_read_entry(root, lean_entry), "Lean receipt")
        schema = _required_string(receipt.get("schema_version"), "Lean receipt schema")
        if schema not in LEAN_RECEIPT_SCHEMAS:
            raise RunArchiveError("Lean receipt schema is unsupported")
        receipt_run_id = receipt.get("run_id")
        if receipt_run_id is not None and _checked_run_id(receipt_run_id) != run_id:
            raise RunArchiveError("Lean receipt run id does not match completion")
        status = _receipt_status(receipt, "Lean receipt status")
        artifact = _artifact(lean_entry, "lean_receipt")
        builder.lean_receipts.append(LeanReceiptSummary(schema, status, artifact))
        builder.artifact_refs[("lean_receipt", lean_entry.source_path)] = artifact


def run_summaries(root: str | os.PathLike[str]) -> tuple[RunSummary, ...]:
    """Return fixed summaries for manifest-bound dispatch runs and results.

    Only complete dispatch launch/completion pairs, completion-bound provider
    results, and their listed Lean receipts are opened. Every opened artifact
    is checked against its exact manifest size and SHA.
    """

    root_path = _checked_root(root)
    entries = _load_manifest(root_path)
    builders: dict[str, _RunBuilder] = {}

    launches: dict[str, _FileEntry] = {}
    completions: dict[str, _FileEntry] = {}
    for entry in entries.values():
        if not entry.source_path.startswith(DISPATCH_SOURCE_PREFIX):
            continue
        if entry.source_path.endswith("/launch-receipt.json"):
            run_dir = entry.source_path.rsplit("/", 1)[0]
            if run_dir in launches:
                raise RunArchiveError("run has duplicate launch receipts")
            launches[run_dir] = entry
        elif entry.source_path.endswith("/completion-receipt.json"):
            run_dir = entry.source_path.rsplit("/", 1)[0]
            if run_dir in completions:
                raise RunArchiveError("run has duplicate completion receipts")
            completions[run_dir] = entry

    for run_dir in sorted(launches.keys() & completions.keys()):
        _add_launch(root_path, launches[run_dir], builders)
        _add_completion(root_path, completions[run_dir], entries, builders)

    summaries = []
    complete_builders = (builder for builder in builders.values() if builder.launch_seen and builder.completion_seen)
    for builder in sorted(complete_builders, key=lambda item: item.run_id):
        artifacts = tuple(
            sorted(builder.artifact_refs.values(), key=lambda artifact: (artifact.kind, artifact.path))
        )
        summaries.append(
            RunSummary(
                run_id=builder.run_id,
                launch_status=builder.launch_status,
                launch_recorded_at_utc=builder.launch_recorded_at_utc,
                completion_status=builder.completion_status,
                completion_recorded_at_utc=builder.completion_recorded_at_utc,
                provider_id=builder.provider_id,
                model_id=builder.model_id,
                results=tuple(builder.results),
                lean_receipts=tuple(builder.lean_receipts),
                artifact_refs=artifacts,
            )
        )
    return tuple(summaries)


def lookup_artifact(root: str | os.PathLike[str], path: str) -> ArtifactRef | None:
    """Look up metadata for one selected, byte-verified run artifact."""

    _safe_parts(path, "artifact lookup path")
    for summary in run_summaries(root):
        for artifact in summary.artifact_refs:
            if path in {artifact.path, artifact.source_path}:
                return artifact
    return None
