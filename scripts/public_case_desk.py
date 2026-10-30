"""The public saved-case profile for the ordinary MathCase Case Desk.

Only manifest-listed files and three immutable case readers are exposed. This
module never invokes the dispatcher, writes a case, searches, or runs Lean.
"""
from __future__ import annotations

import hashlib
import json
import mimetypes
import os
from pathlib import Path, PurePosixPath
import stat
from urllib.parse import parse_qs, unquote

MANIFEST = "public-case-desk.json"
CASE_IDS = (
    "hero-composite-counterexample-r1",
    "hero-prime-divisibility-r1",
    "hero-sqrt2-parent-reuse-r2",
)


def _path(root: Path, relative: str) -> Path:
    if not isinstance(relative, str) or not relative or "\\" in relative or "\x00" in relative:
        raise ValueError("Invalid public artifact path")
    parts = PurePosixPath(relative).parts
    if relative.startswith("/") or any(part in {".", ".."} or ":" in part for part in parts):
        raise ValueError("Public artifact path escapes the package")
    path = root.resolve()
    for part in parts:
        path /= part
        info = path.lstat()
        if stat.S_ISLNK(info.st_mode) or getattr(info, "st_file_attributes", 0) & 0x400:
            raise ValueError("Public artifacts cannot traverse links or reparse points")
    if not path.is_file():
        raise ValueError("Public artifact is not a regular file")
    return path


def manifest(root: Path) -> dict:
    value = json.loads(_path(root, MANIFEST).read_bytes())
    if value.get("schema") != "mathcase-public-case-desk-v1" or value.get("case_ids") != list(CASE_IDS):
        raise ValueError("Unsupported public Case Desk manifest")
    if not isinstance(value.get("files"), dict) or not isinstance(value.get("routes"), dict):
        raise ValueError("Public manifest must explicitly list files and routes")
    if any(target not in value["files"] for target in value["routes"].values()):
        raise ValueError("Public route references an unlisted file")
    return value


def checked_file(root: Path, relative: str, value: dict | None = None) -> tuple[Path, bytes]:
    value = manifest(root) if value is None else value
    expected = value["files"].get(relative)
    if not isinstance(expected, str):
        raise ValueError("Artifact is outside the public manifest")
    path = _path(root, relative)
    if path.stat().st_size > 32 << 20:
        raise ValueError("Public artifact exceeds its read bound")
    raw = path.read_bytes()
    if hashlib.sha256(raw).hexdigest() != expected:
        raise ValueError("Public artifact changed after its manifest digest: " + relative)
    return path, raw


def source_paths(root: Path) -> tuple[tuple[str, Path], ...]:
    value = manifest(root)
    paths = [(MANIFEST, _path(root, MANIFEST))]
    for relative in sorted(value["files"]):
        path, _raw = checked_file(root, relative, value)
        paths.append((relative, path))
    return tuple(paths)


def file_routes(root: Path) -> set[str]:
    return set(manifest(root)["routes"])


def context(root: Path, engine: dict, dispatcher: object, case_id: str, run_id: str | None = None) -> dict:
    if case_id not in CASE_IDS:
        raise ValueError("Case is outside the public saved-case selection")
    if case_id == CASE_IDS[0]:
        value = engine["counterexample_case_context"](root)
    elif case_id == CASE_IDS[1]:
        if run_id and run_id != engine["PRIME_MODEL_RUN_ID"]:
            raise ValueError("Run is outside the public saved-case selection")
        value = engine["_prime_model_case_context"](root, dispatcher, run_id)
    else:
        value = engine["_prime_child_case_context"](root, dispatcher, run_id)
    if run_id and run_id != value["selected_run"]["run_id"]:
        raise ValueError("Run does not belong to the selected saved case")
    value["statement_sha256"] = engine["_research_statement_sha"](value)
    value["case_revision_sha256"] = engine["_case_context_revision_sha256"](value)
    value["public_profile"] = "SAVED_EXECUTION_READ_ONLY"
    return value


def library(root: Path, engine: dict, dispatcher: object) -> dict:
    records = []
    for case_id in CASE_IDS:
        value = context(root, engine, dispatcher, case_id)
        records.append({
            "item_id": case_id, "case_id": case_id, "problem_id": case_id,
            "record_type": "executable_case", "task_type": value.get("claim_class", "SAVED_CASE"),
            "title": value["title"], "state": value["selected_run"]["status"],
            "selected_run_id": value["selected_run"]["run_id"], "run_count": len(value["runs"]),
            "delivery_ready": False, "domain_tags": [], "domain_assessment": "KNOWN_RESULT",
            "detail_sources": value.get("sources", []),
        })
    return {"schema_version": "mathcase-case-library-v1", "records": records,
            "generated_at_utc": engine["PREVIEW_STARTED_AT_UTC"],
            "scope": {"mode": "SAVED_EXAMPLES_NOT_TRAINING_OR_EVALUATION", "record_count": 3,
                      "note": "Three saved examples; no training or evaluation corpus is included."},
            "pair_bank": {"status": "NOT_INCLUDED_IN_FRESH_CLONE", "baseline_unique_pairs": 0, "accepted_delta_events": 0,
                          "individually_indexed_baseline_items": 0},
            "case_warnings": [], "detail_warnings": [],
            "domain_note": "Three saved examples. These are not a training or evaluation dataset."}


def _parameters(query: str, allowed: tuple[set[str], ...]) -> dict[str, str]:
    values = parse_qs(query, strict_parsing=True) if query else {}
    if set(values) not in allowed or any(len(items) != 1 for items in values.values()):
        raise ValueError("Unsupported public saved-case query")
    return {key: items[0] for key, items in values.items()}


def handle_get(handler, parsed, root: Path, engine: dict, dispatcher: object) -> None:
    try:
        if parsed.path.startswith("/api/"):
            handler._validate_local_api_request()
            if parsed.path == "/api/capabilities":
                _parameters(parsed.query, (set(),))
                value = {"schema_version": engine["PREVIEW_CAPABILITIES_SCHEMA"],
                         "contract_id": engine["PREVIEW_API_CONTRACT_ID"],
                         "server_build_sha256": engine["PREVIEW_SERVER_BUILD_SHA256"],
                         "runtime_instance_id": engine["PREVIEW_RUNTIME_INSTANCE_ID"],
                         "started_at_utc": engine["PREVIEW_STARTED_AT_UTC"],
                         "canonical_url": f"http://127.0.0.1:{handler.server.server_port}/ui/prototype/index.html",
                         "mode": "SAVED_EXECUTION_READ_ONLY", "tavily_configured": False,
                         "dispatch_busy": False, "tavily_dispatch_busy": False,
                         "capabilities": ["case_catalog_read", "case_context_read", "case_library_read",
                                          "proofdesk_provider_run_evidence_read"]}
            elif parsed.path == "/api/cases":
                _parameters(parsed.query, (set(),))
                cases = []
                for case_id in CASE_IDS:
                    item = context(root, engine, dispatcher, case_id)
                    cases.append({key: item.get(key) for key in
                                  ("case_id", "problem_id", "title", "claim_class", "runs", "dossier_status", "delivery_ready")})
                    cases[-1]["selected_run_id"] = item["selected_run"]["run_id"]
                value = {"schema_version": "mathcase-local-case-catalog-v1", "cases": cases, "unavailable_cases": []}
            elif parsed.path == "/api/library":
                _parameters(parsed.query, (set(),))
                value = library(root, engine, dispatcher)
            elif parsed.path in {"/api/case-context", "/api/library-item"}:
                key = "case_id" if parsed.path.endswith("case-context") else "item_id"
                values = _parameters(parsed.query, ({key}, {key, "run_id"}) if key == "case_id" else ({key},))
                value = context(root, engine, dispatcher, values[key], values.get("run_id"))
                if key == "item_id":
                    value["record_type"] = "executable_case"
            elif parsed.path == "/api/proofdesk-run":
                values = _parameters(parsed.query, ({"run_id"},))
                if values["run_id"] != engine["PRIME_MODEL_RUN_ID"]:
                    raise ValueError("Run is outside the public saved-case selection")
                value = engine["_saved_proofdesk_run"](root, dispatcher, values["run_id"])
            else:
                handler._json_response(404, {"error": "This API is outside the public saved-case profile."})
                return
            handler._json_response(200, value)
            return
        route = unquote(parsed.path.lstrip("/")) or "ui/prototype/index.html"
        value = manifest(root)
        relative = value["routes"].get(route)
        if relative is None:
            handler._respond(404, b"Not in the public saved-case manifest.\n")
            return
        path, raw = checked_file(root, relative, value)
        content_type = mimetypes.guess_type(path.name)[0] or "application/octet-stream"
        if path.suffix in {".lean", ".jsonl", ".md", ".txt"}:
            content_type = "text/plain; charset=utf-8"
        elif content_type.startswith("text/") or content_type in {"application/json", "application/javascript"}:
            content_type += "; charset=utf-8"
        handler._respond(200, raw, content_type)
    except (OSError, ValueError, KeyError, TypeError) as exc:
        handler._json_response(409, {"error": str(exc)})
