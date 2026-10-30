"""Governed, append-only local case intake queue for the MathCase preview."""

from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import subprocess
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Callable

from local_file_lock import exclusive_file_lock
from local_owned_process import OwnedCommandTimeout, run_owned_command


QUEUE_PATH = "data/local/staging/problem-queue/queue-events.jsonl"
QUEUE_SCHEMA = "mathcase-problem-queue-v1"
ZERO_HASH = "0" * 64
MAX_QUEUE_ITEMS = 8
MAX_QUEUE_EVENTS = 2048
MAX_QUEUE_BYTES = 8 * 1024 * 1024
MAX_INTAKE_ATTEMPTS = 3
MAX_FROZEN_PLANS = 8
MAX_PLAN_WALL_SECONDS = 600
MAX_SOLVER_OUTPUT_BYTES = 4 * 1024 * 1024
MAX_DOSSIER_ATTACHMENT_RUNS = 3
IDEMPOTENCY_KEY = re.compile(r"[a-f0-9]{32}\Z")
IDENTIFIER = re.compile(r"[a-z0-9][a-z0-9_-]{2,95}\Z")

INTAKE_CATALOG_PATH = Path(__file__).resolve().parents[1] / "config" / "problem_queue_intake.json"
CAMPAIGN_PROPOSAL_PATH = Path(__file__).resolve().parents[1] / "config" / "pyramid_campaign_proposal.json"
CAMPAIGN_PROPOSAL_SHA256 = "28ec581d35d2db0897f6b7c07edbd1110581b923138e442d4da45b38c4d5f9c6"
ALLOWED_SOURCE_USES = {"LOCAL_STORAGE", "LOCAL_PROOF_ATTEMPT", "PROVIDER_INPUT", "INDEX"}
PRE_REVIEW_EXPERIMENT_ITEM_ID = "intake-mathlib_mul_one_div-1fe1ddf38256"
PRE_REVIEW_EXPERIMENT_SNAPSHOT_PATH = "data/local/staging/mathlib-proof-pairs/pilot-20261020-mul-one-div/catalog.snapshot-local-proof-attempt-r2.json"
PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256 = "474aeaca8aa1cb43dc1651446a36914832e77e2aee7aa459d5bd09b084631943"
PRE_REVIEW_EXPERIMENT_EVIDENCE_ROOT = "data/local/staging/mathlib-proof-pairs/pilot-20261020-mul-one-div/evidence/owner-authorized-pre-review-20261026-r1"
PRE_REVIEW_PANTOGRAPH_EVIDENCE_ROOT = "data/local/staging/problem-queue/cases/queue-mathlib_mul_one_div-1fe1ddf38256/attempts/mul-one-div-local-r1/local-pantograph-r2"
PRE_REVIEW_EXPERIMENT_OWNER_MESSAGE = "I'm not a mathematician. Just fucking do it and we will get it reviewed later"


def _safe_local_relative(value: object) -> bool:
    if not isinstance(value, str) or not value.startswith("data/local/") or "\\" in value:
        return False
    return all(part not in {"", ".", ".."} for part in value.split("/"))


def _retrieval_reference_values(reference: object) -> dict[str, str]:
    keys = {"output_path", "proof_root", "source_root"}
    if not isinstance(reference, dict) or set(reference) != keys:
        raise ValueError("governed problem intake retrieval reference has an unsupported shape")
    if any(not _safe_local_relative(reference.get(key)) for key in keys):
        raise ValueError("governed problem intake retrieval reference is outside local storage")
    return {key: str(reference[key]) for key in keys}


def _load_intake_catalog() -> dict[str, dict[str, object]]:
    if not _safe_regular(INTAKE_CATALOG_PATH):
        raise ValueError("governed problem intake catalog is missing or unsafe")
    try:
        value = json.loads(INTAKE_CATALOG_PATH.read_text(encoding="utf-8"))
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("governed problem intake catalog is invalid JSON") from exc
    entries = value.get("entries") if isinstance(value, dict) and value.get("schema_version") == "mathcase-problem-queue-intake-catalog-v1" else None
    if not isinstance(entries, list) or not entries or len(entries) > 64:
        raise ValueError("governed problem intake catalog must contain 1..64 pinned entries")
    catalog: dict[str, dict[str, object]] = {}
    for entry in entries:
        if not isinstance(entry, dict) or set(entry) - {"problem_id", "snapshot_path", "snapshot_file_sha256", "source_uses", "forecast_reference", "retrieval_reference", "owner_use_reference"}:
            raise ValueError("governed problem intake entry has unsupported fields")
        problem_id = entry.get("problem_id")
        snapshot_path = entry.get("snapshot_path")
        snapshot_sha256 = entry.get("snapshot_file_sha256")
        source_uses = entry.get("source_uses")
        if not isinstance(problem_id, str) or not IDENTIFIER.fullmatch(problem_id) or problem_id in catalog:
            raise ValueError("governed problem intake entry has an invalid or duplicate problem ID")
        if not _safe_local_relative(snapshot_path):
            raise ValueError("governed problem intake entry has an unsafe pinned M0 path")
        if not _valid_digest(snapshot_sha256):
            raise ValueError("governed problem intake entry has no pinned M0 file digest")
        if not isinstance(source_uses, list) or not source_uses or any(use not in ALLOWED_SOURCE_USES for use in source_uses) or len(set(source_uses)) != len(source_uses):
            raise ValueError("governed problem intake entry has invalid item-level allowed uses")
        normalized: dict[str, object] = {
            "snapshot_path": snapshot_path,
            "snapshot_file_sha256": snapshot_sha256,
            "source_uses": list(source_uses),
        }
        owner_use_reference = entry.get("owner_use_reference")
        if owner_use_reference is not None:
            if not isinstance(owner_use_reference, dict) or set(owner_use_reference) != {"evidence_path", "evidence_sha256"}:
                raise ValueError("governed problem intake owner-use reference has an unsupported shape")
            if not _safe_local_relative(owner_use_reference.get("evidence_path")) or not _valid_digest(owner_use_reference.get("evidence_sha256")):
                raise ValueError("governed problem intake owner-use evidence reference is invalid")
            if "LOCAL_PROOF_ATTEMPT" not in source_uses:
                raise ValueError("owner-use evidence was configured without LOCAL_PROOF_ATTEMPT permission")
            normalized["owner_use_reference"] = dict(owner_use_reference)
        elif "LOCAL_PROOF_ATTEMPT" in source_uses:
            raise ValueError("LOCAL_PROOF_ATTEMPT requires a hash-pinned owner-use evidence record")
        forecast_reference = entry.get("forecast_reference")
        if forecast_reference is not None:
            if not isinstance(forecast_reference, dict) or set(forecast_reference) != {"store_root", "digest"}:
                raise ValueError("governed problem intake forecast reference has an unsupported shape")
            if not _safe_local_relative(forecast_reference.get("store_root")) or not _valid_digest(forecast_reference.get("digest")):
                raise ValueError("governed problem intake forecast reference is invalid")
            normalized["forecast_reference"] = dict(forecast_reference)
        retrieval_reference = entry.get("retrieval_reference")
        if retrieval_reference is not None:
            normalized["retrieval_reference"] = _retrieval_reference_values(retrieval_reference)
        catalog[problem_id] = normalized
    return catalog


# M0 pins and the narrow per-item use allowlist live outside the page and are
# checked again against each linked source record before case initialization.
def _canonical(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _problem_statement_sha256(problem_id: str, statement: str, lean_statement: str) -> str:
    # Match internal/domain.ProblemStatementDigest's Go struct field order and
    # encoding/json HTML escaping so reviewer attestations use the same target.
    encoded = json.dumps(
        {"problem_id": problem_id, "statement": statement, "lean_statement": lean_statement},
        ensure_ascii=False,
        separators=(",", ":"),
    )
    for character, escaped in (("&", r"\u0026"), ("<", r"\u003c"), (">", r"\u003e"), ("\u2028", r"\u2028"), ("\u2029", r"\u2029")):
        encoded = encoded.replace(character, escaped)
    return _sha(encoded.encode("utf-8"))


def _timestamp() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00", "Z")


def _safe_regular(path: Path) -> bool:
    try:
        if path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
            return False
        return path.is_file()
    except OSError:
        return False


def _safe_directory(path: Path) -> bool:
    try:
        if path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
            return False
        return path.is_dir()
    except OSError:
        return False


def _under_root(root: Path, relative: str) -> Path:
    candidate = root.joinpath(*relative.split("/"))
    resolved_root = root.resolve()
    try:
        candidate.resolve(strict=False).relative_to(resolved_root)
    except (OSError, ValueError) as exc:
        raise ValueError("queue path escapes the MathCase root") from exc
    if candidate.is_symlink() or any(parent.is_symlink() for parent in candidate.parents if parent.exists()):
        raise ValueError("queue path crosses a symbolic link")
    return candidate


def _retrieval_paths(root: Path, reference: object, source_uses: object) -> dict[str, Path] | None:
    if reference is None:
        return None
    values = _retrieval_reference_values(reference)
    if not isinstance(source_uses, list) or "INDEX" not in source_uses:
        raise ValueError("retrieval hints were configured without item-level INDEX permission")
    paths = {key: _under_root(root, relative) for key, relative in values.items()}
    if (
        not _safe_regular(paths["output_path"])
        or not _safe_directory(paths["proof_root"])
        or not _safe_directory(paths["source_root"])
    ):
        raise ValueError("pinned retrieval output, proof root, or source root is missing or unsafe")
    return paths


def _pinned_intake_problem(root: Path, problem_id: str, option: dict[str, object]) -> tuple[Path, dict[str, object], dict[str, object]]:
    path = _under_root(root, str(option["snapshot_path"]))
    if not _safe_regular(path):
        raise ValueError("the pinned M0 snapshot is missing or unsafe")
    raw = path.read_bytes()
    if _sha(raw) != option["snapshot_file_sha256"]:
        raise ValueError("the pinned M0 snapshot is missing or changed; intake was refused")
    try:
        snapshot = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("the pinned M0 snapshot is invalid JSON") from exc
    if not isinstance(snapshot, dict) or snapshot.get("schema_version") != "mathcase-catalog-v1" or not isinstance(snapshot.get("problems"), list):
        raise ValueError("the pinned M0 snapshot has an unsupported schema")
    selected = [problem for problem in snapshot["problems"] if isinstance(problem, dict) and problem.get("id") == problem_id]
    if len(selected) != 1:
        raise ValueError("the problem is not present exactly once in the pinned M0 snapshot")
    problem = selected[0]
    if not isinstance(problem.get("informal_statement"), str) or not problem["informal_statement"].strip():
        raise ValueError("the pinned M0 problem has no exact informal statement")
    if not isinstance(problem.get("source_ids"), list) or not problem["source_ids"]:
        raise ValueError("the pinned M0 problem has no linked source records")
    return path, snapshot, problem


def _mask_lean_comments(source_text: str) -> str:
    """Mask Lean comments and strings while preserving line and column positions."""
    chars = list(source_text)
    index = 0
    block_depth = 0
    in_string = False
    escaped = False
    line_comment = False
    while index < len(chars):
        current = chars[index]
        following = chars[index + 1] if index + 1 < len(chars) else ""
        if block_depth:
            if current == "/" and following == "-":
                chars[index] = chars[index + 1] = " "
                block_depth += 1
                index += 2
                continue
            if current == "-" and following == "/":
                chars[index] = chars[index + 1] = " "
                block_depth -= 1
                index += 2
                continue
            if current not in "\r\n":
                chars[index] = " "
            index += 1
            continue
        if line_comment:
            if current in "\r\n":
                line_comment = False
            else:
                chars[index] = " "
            index += 1
            continue
        if in_string:
            if current not in "\r\n":
                chars[index] = " "
            if escaped:
                escaped = False
            elif current == "\\":
                escaped = True
            elif current == '"':
                in_string = False
            index += 1
            continue
        if current == "/" and following == "-":
            chars[index] = chars[index + 1] = " "
            block_depth = 1
            index += 2
            continue
        if current == "-" and following == "-":
            chars[index] = chars[index + 1] = " "
            line_comment = True
            index += 2
            continue
        if current == '"':
            chars[index] = " "
            in_string = True
        index += 1
    return "".join(chars)


def _unavailable_statement_source_context(
    source: dict[str, object], declaration_name: str, status: str, note: str
) -> dict[str, object]:
    return {
        "schema_version": "mathcase-source-bound-declaration-context-v1",
        "status": status,
        "source_id": source.get("id"),
        "item_locator": source.get("item_locator"),
        "source_revision": source.get("revision"),
        "source_file_sha256": source.get("content_sha256"),
        "declaration_name": declaration_name,
        "declaration_line": None,
        "declaration_signature": "",
        "context_lines": [],
        "inherited_assumptions": [],
        "context_sha256": None,
        "availability_note": note,
    }


def _statement_review_source_context(
    root: Path, source: dict[str, object], lean_statement: str
) -> dict[str, object]:
    declaration_match = re.search(r"\b(?:theorem|lemma)\s+([A-Za-z][A-Za-z0-9_'.]*)\b", lean_statement)
    declaration_name = declaration_match.group(1) if declaration_match else "unknown"
    if declaration_match is None:
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_CONTEXT_UNAVAILABLE", "The M0 Lean statement did not identify a supported theorem or lemma name."
        )
    if source.get("source_lane") != "MATHLIB_PROOF_PAIRS":
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_CONTEXT_UNAVAILABLE", "No local source reader is configured for this M0 source lane."
        )
    locator = source.get("item_locator")
    if not isinstance(locator, str) or not locator or locator.startswith("/") or "\\" in locator or any(part in {"", ".", ".."} for part in locator.split("/")):
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_CONTEXT_UNAVAILABLE", "The pinned source locator is not a safe repository-relative path."
        )
    revision = source.get("revision")
    if not isinstance(revision, str) or not re.fullmatch(r"[0-9a-f]{40}", revision):
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_CONTEXT_UNAVAILABLE", "The pinned Mathlib revision is not a full lowercase commit hash."
        )
    candidate_paths = (
        f"data/local/source-cache/leanprover-community/mathlib4/{revision}/{locator}",
        f"data/local/raw/mathlib4/{revision}/{locator}",
        f"data/local/raw/mathlib4/{locator}",
    )
    reopened: tuple[bytes, str] | None = None
    saw_local_file = False
    for relative_path in candidate_paths:
        try:
            source_path = _under_root(root, relative_path)
        except (OSError, ValueError):
            continue
        if not _safe_regular(source_path):
            continue
        saw_local_file = True
        try:
            candidate_bytes = source_path.read_bytes()
            candidate_text = candidate_bytes.decode("utf-8")
        except (OSError, UnicodeDecodeError):
            continue
        if _sha(candidate_bytes) == source.get("content_sha256"):
            reopened = (candidate_bytes, candidate_text)
            break
    if reopened is None:
        if saw_local_file:
            return _unavailable_statement_source_context(
                source, declaration_name, "SOURCE_HASH_MISMATCH", "Available local source files do not match the M0 content digest."
            )
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_CONTEXT_UNAVAILABLE", "The pinned source file is not present as a safe local regular file."
        )
    source_bytes, source_text = reopened
    source_digest = _sha(source_bytes)

    raw_lines = source_text.splitlines()
    code_lines = _mask_lean_comments(source_text).splitlines()
    declaration_pattern = re.compile(r"^\s*(?:theorem|lemma)\s+" + re.escape(declaration_name) + r"\b")
    declarations = [index for index, line in enumerate(code_lines) if declaration_pattern.match(line)]
    if len(declarations) != 1:
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_DECLARATION_NOT_UNIQUE", "The pinned source does not contain exactly one matching theorem declaration."
        )
    declaration_index = declarations[0]
    signature = re.split(r"\s*:=\s*", raw_lines[declaration_index], maxsplit=1)[0].strip()
    normalize = lambda value: re.sub(r"\s+", " ", value).strip()
    if normalize(signature) != normalize(lean_statement):
        return _unavailable_statement_source_context(
            source, declaration_name, "SOURCE_DECLARATION_MISMATCH", "The source declaration signature does not exactly reopen the M0 Lean statement."
        )

    scopes: list[dict[str, object]] = [{"kind": "FILE", "name": "", "line": 0, "text": "", "variables": []}]
    for index, code_line in enumerate(code_lines[:declaration_index]):
        line = code_line.strip()
        scoped = re.match(r"^(section|namespace)(?:\s+([A-Za-z_][A-Za-z0-9_'.]*))?\s*$", line)
        if scoped:
            scopes.append({
                "kind": scoped.group(1).upper(),
                "name": scoped.group(2) or "",
                "line": index + 1,
                "text": raw_lines[index].strip(),
                "variables": [],
            })
            continue
        ended = re.match(r"^end(?:\s+([A-Za-z_][A-Za-z0-9_'.]*))?\s*$", line)
        if ended:
            name = ended.group(1) or ""
            if name:
                for scope_index in range(len(scopes) - 1, 0, -1):
                    if scopes[scope_index]["name"] == name:
                        scopes = scopes[:scope_index]
                        break
            elif len(scopes) > 1:
                scopes.pop()
            continue
        variable = re.match(r"^variable\s+(.+)$", line)
        if variable:
            variables = scopes[-1]["variables"]
            if isinstance(variables, list):
                variables.append({"line": index + 1, "text": raw_lines[index].strip(), "declaration": variable.group(1)})

    context_lines: list[dict[str, object]] = []
    for scope in scopes[1:]:
        context_lines.append({"line": scope["line"], "kind": scope["kind"], "text": scope["text"]})
    for scope in scopes:
        variables = scope.get("variables")
        if not isinstance(variables, list):
            continue
        for variable in variables:
            if not isinstance(variable, dict) or not re.search(r"\b" + re.escape("G") + r"\b", str(variable.get("declaration", ""))):
                continue
            declaration = str(variable["declaration"])
            kind = "INHERITED_TYPE_CLASS_ASSUMPTION" if "[" in declaration else "INHERITED_TYPE_VARIABLE"
            context_lines.append({"line": variable["line"], "kind": kind, "text": variable["text"]})
    context_lines.append({"line": declaration_index + 1, "kind": "DECLARATION_SIGNATURE", "text": signature})
    context_lines.sort(key=lambda item: (int(item["line"]), str(item["kind"])))
    assumptions = [item for item in context_lines if item["kind"] == "INHERITED_TYPE_CLASS_ASSUMPTION"]
    context_body = {
        "schema_version": "mathcase-source-bound-declaration-context-v1",
        "status": "SOURCE_BYTES_REOPENED",
        "source_id": source.get("id"),
        "item_locator": locator,
        "source_revision": source.get("revision"),
        "source_file_sha256": source_digest,
        "declaration_name": declaration_name,
        "declaration_line": declaration_index + 1,
        "declaration_signature": signature,
        "context_lines": context_lines,
        "inherited_assumptions": assumptions,
        "availability_note": "Context lines were read from the exact M0-pinned source bytes. They are not an independent statement-fidelity judgment.",
    }
    return {**context_body, "context_sha256": _sha(_canonical(context_body))}


def _problem_allowed_uses(snapshot: dict[str, object], problem: dict[str, object], declared_uses: object) -> list[str]:
    sources = snapshot.get("sources")
    source_ids = problem.get("source_ids")
    if not isinstance(sources, list) or not isinstance(source_ids, list) or not source_ids or not isinstance(declared_uses, list):
        return []
    source_by_id: dict[str, dict[str, object]] = {}
    for source in sources:
        if isinstance(source, dict) and isinstance(source.get("id"), str):
            source_by_id[source["id"]] = source
    requested = {value for value in declared_uses if isinstance(value, str)}
    if len(requested) != len(declared_uses) or not requested:
        return []
    for source_id in source_ids:
        source = source_by_id.get(str(source_id))
        uses = source.get("allowed_uses") if source else None
        if not source or source.get("rights_status") != "CLEARED" or not isinstance(uses, list):
            return []
        source_uses = {value for value in uses if isinstance(value, str)}
        if not requested.issubset(source_uses):
            return []
    return sorted(requested)


def _validate_owner_use_reference(
    root: Path,
    snapshot: dict[str, object],
    problem: dict[str, object],
    option: dict[str, object],
    allowed_uses: list[str],
) -> dict[str, str] | None:
    reference = option.get("owner_use_reference")
    if "LOCAL_PROOF_ATTEMPT" not in allowed_uses:
        if reference is not None:
            raise ValueError("owner-use evidence was configured without LOCAL_PROOF_ATTEMPT permission")
        return None
    if not isinstance(reference, dict):
        raise ValueError("LOCAL_PROOF_ATTEMPT has no pinned owner-use evidence record")
    evidence_path = reference.get("evidence_path")
    evidence_sha256 = reference.get("evidence_sha256")
    if not _safe_local_relative(evidence_path) or not _valid_digest(evidence_sha256):
        raise ValueError("pinned owner-use evidence reference is malformed")
    path = _under_root(root, evidence_path)
    if not _safe_regular(path):
        raise ValueError("pinned owner-use evidence is missing or unsafe")
    raw = path.read_bytes()
    if _sha(raw) != evidence_sha256:
        raise ValueError("pinned owner-use evidence is missing or changed")
    try:
        evidence = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("pinned owner-use evidence is invalid JSON") from exc
    if not isinstance(evidence, dict) or evidence.get("schema_version") != "mathcase-source-rights-evidence-v1":
        raise ValueError("pinned owner-use evidence has an unsupported schema")

    source_ids = problem.get("source_ids")
    sources = snapshot.get("sources")
    if not isinstance(source_ids, list) or len(source_ids) != 1 or not isinstance(sources, list):
        raise ValueError("pinned owner-use evidence currently requires one exact linked source")
    matching = [source for source in sources if isinstance(source, dict) and source.get("id") == source_ids[0]]
    if len(matching) != 1:
        raise ValueError("pinned owner-use evidence does not resolve one exact M0 source")
    source = matching[0]
    narrow_uses = {"LOCAL_STORAGE", "LOCAL_PROOF_ATTEMPT"}
    evidence_uses = evidence.get("allowed_uses")
    source_uses = source.get("allowed_uses")
    if (
        not isinstance(evidence_uses, list)
        or set(evidence_uses) != narrow_uses
        or not isinstance(source_uses, list)
        or not narrow_uses.issubset(set(source_uses))
        or evidence.get("evidence_id") != source.get("rights_evidence_id")
        or evidence.get("source_id") != source.get("id")
        or evidence.get("source_url") != source.get("url")
        or evidence.get("source_revision") != source.get("revision")
        or evidence.get("item_locator") != source.get("item_locator")
        or evidence.get("item_sha256") != source.get("content_sha256")
        or evidence.get("license") != source.get("license")
        or source.get("rights_status") != "CLEARED"
        or not isinstance(evidence.get("owner_approval"), str)
        or not evidence["owner_approval"].strip()
    ):
        raise ValueError("pinned owner-use evidence does not match the exact M0 source and local-only use boundary")
    return {"evidence_path": evidence_path, "evidence_sha256": evidence_sha256}


def _intake_disposition(problem: dict[str, object], allowed_uses: list[str]) -> tuple[str, str | None]:
    if "LOCAL_STORAGE" not in allowed_uses:
        return "RIGHTS_HOLD", "The linked M0 source records do not authorize local storage for this item."
    audit = problem.get("statement_audit")
    if not isinstance(audit, dict) or audit.get("passed") is not True:
        return "WAITING_STATEMENT_REVIEW", "The existing statement audit did not pass. Human statement review is required before any solver attempt."
    return "READY", None


def _valid_digest(value: object) -> bool:
    return isinstance(value, str) and re.fullmatch(r"[0-9a-f]{64}", value) is not None


def _campaign_proposal_view() -> dict[str, object]:
    """Reopen the exact owner proposal as read-only campaign context, never authority."""
    if not _safe_regular(CAMPAIGN_PROPOSAL_PATH):
        raise ValueError("the pinned campaign proposal is missing or unsafe")
    raw = CAMPAIGN_PROPOSAL_PATH.read_bytes()
    digest = _sha(raw)
    if digest != CAMPAIGN_PROPOSAL_SHA256:
        raise ValueError("the campaign proposal bytes differ from the pinned source digest")
    try:
        proposal = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ValueError("the pinned campaign proposal is invalid JSON") from exc
    if (
        not isinstance(proposal, dict)
        or proposal.get("schema") != "mathcase-pyramid-campaign-v1"
        or proposal.get("proposal_status") != "INTAKE_DRAFT_NOT_EXECUTION_MANIFEST"
        or proposal.get("levels") != 6
        or proposal.get("slots_per_level") != 5
        or proposal.get("slot_count") != 30
        or proposal.get("zero_newly_authorized_items") is not True
        or proposal.get("fresh_runnable_count") != "NOT_ESTABLISHED"
    ):
        raise ValueError("the campaign proposal does not match its held intake-draft contract")
    cases = proposal.get("cases")
    if not isinstance(cases, list) or len(cases) != 30:
        raise ValueError("the pinned campaign proposal does not contain exactly 30 slots")
    required_text = (
        "slot_id", "case_label", "question", "type_domain", "prerequisite_transfer",
        "proof_method_taste_teaching_challenge", "source_locator", "known_open_conditional_status",
        "evidence_class", "permitted_now", "missing_input", "exposure", "independent_review",
    )
    slots: list[dict[str, object]] = []
    seen: set[str] = set()
    level_counts = {str(level): 0 for level in range(1, 7)}
    for source_case in cases:
        if not isinstance(source_case, dict) or any(not isinstance(source_case.get(key), str) for key in required_text):
            raise ValueError("a campaign slot is missing its readable proposal fields")
        slot_id = str(source_case["slot_id"])
        level = source_case.get("level")
        if slot_id in seen or not isinstance(level, int) or level not in range(1, 7) or not re.fullmatch(r"L[1-6]-[1-5]", slot_id):
            raise ValueError("the campaign slot identities or levels are invalid")
        if slot_id != f"L{level}-{slot_id.rsplit('-', 1)[1]}":
            raise ValueError("the campaign slot ID does not match its declared level")
        seen.add(slot_id)
        level_counts[str(level)] += 1
        existing_case_id = source_case.get("existing_case_id")
        if existing_case_id is not None and (not isinstance(existing_case_id, str) or not IDENTIFIER.fullmatch(existing_case_id)):
            raise ValueError("a campaign slot has an invalid existing case identity")
        existing_run = source_case.get("existing_run")
        if existing_run is not None and not isinstance(existing_run, str):
            raise ValueError("a campaign slot has an invalid historical run reference")
        slots.append({
            "slot_id": slot_id,
            "level": level,
            "case_label": source_case["case_label"],
            "existing_case_id": existing_case_id,
            "question": source_case["question"],
            "type_domain": source_case["type_domain"],
            "prerequisite_transfer": source_case["prerequisite_transfer"],
            "proof_method_taste_teaching_challenge": source_case["proof_method_taste_teaching_challenge"],
            "source_locator": source_case["source_locator"],
            "known_open_conditional_status": source_case["known_open_conditional_status"],
            "evidence_class": source_case["evidence_class"],
            "existing_run": existing_run,
            "permitted_now": source_case["permitted_now"],
            "missing_input": source_case["missing_input"],
            "exposure": source_case["exposure"],
            "independent_review": source_case["independent_review"],
        })
    if level_counts != {str(level): 5 for level in range(1, 7)}:
        raise ValueError("the campaign proposal does not contain five slots at each level")
    return {
        "schema_version": "mathcase-problem-queue-campaign-view-v1",
        "status": "READ_ONLY_PROPOSAL",
        "proposal_status": proposal["proposal_status"],
        "source_path": "config/pyramid_campaign_proposal.json",
        "source_file_sha256": digest,
        "level_count": 6,
        "slots_per_level": 5,
        "slot_count": 30,
        "historical_controls": proposal.get("historical_controls"),
        "provisional_named_candidates": proposal.get("provisional_named_candidates"),
        "placeholder_slots": proposal.get("placeholder_slots"),
        "zero_newly_authorized_items": True,
        "fresh_runnable_count": "NOT_ESTABLISHED",
        "execution_manifest": False,
        "slots": slots,
    }


def _intake_source_reference_views(snapshot: dict[str, object], problem: dict[str, object]) -> list[dict[str, object]]:
    source_ids = problem.get("source_ids")
    sources = snapshot.get("sources")
    if not isinstance(source_ids, list) or not source_ids or not isinstance(sources, list):
        return []
    source_by_id = {
        source.get("id"): source for source in sources
        if isinstance(source, dict) and isinstance(source.get("id"), str)
    }
    if (
        any(not isinstance(source_id, str) or not source_id for source_id in source_ids)
        or len(source_ids) != len(set(source_ids))
        or any(source_id not in source_by_id for source_id in source_ids)
    ):
        raise ValueError("pinned M0 source references do not resolve uniquely")
    references: list[dict[str, object]] = []
    for source_id in source_ids:
        source = source_by_id[source_id]
        if (
            not isinstance(source.get("url"), str)
            or not source["url"].strip()
            or not isinstance(source.get("item_locator"), str)
            or not source["item_locator"].strip()
            or not isinstance(source.get("revision"), str)
            or not source["revision"].strip()
            or not _valid_digest(source.get("content_sha256"))
        ):
            raise ValueError("a pinned M0 source reference lacks its citation, revision, or content digest")
        allowed_uses = source.get("allowed_uses")
        references.append({
            "source_id": source_id,
            "url": source["url"],
            "item_locator": source["item_locator"],
            "revision": source["revision"],
            "content_sha256": source["content_sha256"],
            "license": source.get("license"),
            "attribution": source.get("attribution"),
            "rights_status": source.get("rights_status"),
            "allowed_uses": list(allowed_uses) if isinstance(allowed_uses, list) else [],
        })
    return references


# The public saved-case profile has no campaign intake catalog or queue writes.
INTAKE_CATALOG = {} if (Path(__file__).resolve().parents[1] / "public-case-desk.json").is_file() else _load_intake_catalog()


def _read_events_unlocked(path: Path) -> tuple[list[dict[str, object]], str]:
    if not path.exists():
        return [], ZERO_HASH
    if not _safe_regular(path) or path.stat().st_size > MAX_QUEUE_BYTES:
        raise ValueError("problem queue journal is unsafe or exceeds its size limit")
    raw = path.read_bytes()
    if not raw:
        return [], ZERO_HASH
    events: list[dict[str, object]] = []
    previous = ZERO_HASH
    for sequence, line in enumerate(raw.splitlines(), start=1):
        try:
            event = json.loads(line)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("problem queue journal has a malformed line; it was left unchanged") from exc
        keys = {"schema_version", "sequence", "event_id", "event_type", "recorded_at_utc", "payload", "previous_event_sha256", "event_sha256"}
        if not isinstance(event, dict) or set(event) != keys or event.get("schema_version") != "mathcase-problem-queue-event-v1":
            raise ValueError("problem queue journal entry has an unsupported schema")
        event_id = event.get("event_id")
        event_type = event.get("event_type")
        payload = event.get("payload")
        timestamp = event.get("recorded_at_utc")
        if not isinstance(event_id, str) or not re.fullmatch(r"[a-f0-9]{32}", event_id):
            raise ValueError("problem queue journal event ID is invalid")
        if not isinstance(event_type, str) or not isinstance(payload, dict) or not isinstance(timestamp, str):
            raise ValueError("problem queue journal event fields are invalid")
        body = {key: value for key, value in event.items() if key != "event_sha256"}
        event_hash = _sha(_canonical(body))
        if event.get("sequence") != sequence or event.get("previous_event_sha256") != previous or event.get("event_sha256") != event_hash:
            raise ValueError("problem queue journal hash chain failed; it was left unchanged")
        events.append(event)
        previous = event_hash
    if len(events) > MAX_QUEUE_EVENTS:
        raise ValueError("problem queue journal exceeds its event limit")
    return events, previous


def _append_event_unlocked(path: Path, events: list[dict[str, object]], previous: str, event_type: str, payload: dict[str, object]) -> dict[str, object]:
    if len(events) >= MAX_QUEUE_EVENTS:
        raise ValueError("problem queue reached its event limit")
    body: dict[str, object] = {
        "schema_version": "mathcase-problem-queue-event-v1",
        "sequence": len(events) + 1,
        "event_id": uuid.uuid4().hex,
        "event_type": event_type,
        "recorded_at_utc": _timestamp(),
        "payload": payload,
        "previous_event_sha256": previous,
    }
    event = {**body, "event_sha256": _sha(_canonical(body))}
    # Reject invalid state transitions before making the append durable. Callers
    # project after appending as a readback check; this preflight prevents that
    # check from discovering an invalid event only after it has poisoned the log.
    _projection([*events, event])
    encoded = _canonical(event) + b"\n"
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
        raise ValueError("problem queue journal path crosses a symbolic link")
    if path.exists() and path.stat().st_size + len(encoded) > MAX_QUEUE_BYTES:
        raise ValueError("problem queue journal reached its byte limit")
    with path.open("ab") as handle:
        handle.write(encoded)
        handle.flush()
        os.fsync(handle.fileno())
    return event


def _projection(events: list[dict[str, object]]) -> dict[str, object]:
    paused = False
    items: dict[str, dict[str, object]] = {}
    idempotency: dict[str, str] = {}
    plans: dict[str, dict[str, object]] = {}
    plan_idempotency: dict[str, str] = {}
    dispatch_idempotency: dict[str, str] = {}
    for event in events:
        kind = str(event["event_type"])
        payload = event["payload"]
        assert isinstance(payload, dict)
        if kind == "QUEUE_PAUSED":
            paused = True
        elif kind == "QUEUE_RESUMED":
            paused = False
        elif kind == "INTAKE_RESERVED":
            item_id = str(payload["item_id"])
            if item_id in items:
                raise ValueError("problem queue journal contains a duplicate intake reservation")
            item = {
                **payload,
                "status": "RECONCILIATION_REQUIRED",
                "attempt_count": 0,
                "max_attempts": MAX_INTAKE_ATTEMPTS,
                "created_at_utc": event["recorded_at_utc"],
            }
            items[item_id] = item
            idempotency[str(payload["idempotency_key"])] = item_id
        elif kind == "INTAKE_ATTEMPT":
            item = items.get(str(payload.get("item_id")))
            if item is None or payload.get("attempt") != int(item["attempt_count"]) + 1:
                raise ValueError("problem queue attempt sequence is invalid")
            item["attempt_count"] = payload["attempt"]
            item["status"] = "RECONCILIATION_REQUIRED"
        elif kind == "INTAKE_CREATED":
            item = items.get(str(payload.get("item_id")))
            if item is None or payload.get("case_id") != item.get("case_id") or payload.get("dossier_path") != item.get("dossier_path"):
                raise ValueError("problem queue intake completion does not match its reservation")
            item["status"] = str(payload["status"])
            item["dossier_sha256"] = payload.get("dossier_sha256")
            item["current_dossier_path"] = payload.get("dossier_path")
            item["current_dossier_sha256"] = payload.get("dossier_sha256")
            item["created_at_utc"] = event["recorded_at_utc"]
            item["hold_reason"] = payload.get("hold_reason")
        elif kind == "INTAKE_FAILED":
            item = items.get(str(payload.get("item_id")))
            if item is None or payload.get("attempt") != item.get("attempt_count"):
                raise ValueError("problem queue intake failure does not match its active attempt")
            item["status"] = "INTAKE_FAILED" if int(item["attempt_count"]) < MAX_INTAKE_ATTEMPTS else "ATTEMPTS_EXHAUSTED"
            item["last_failure_code"] = payload.get("failure_code")
        elif kind == "ITEM_SKIPPED":
            item = items.get(str(payload.get("item_id")))
            if item is None or item.get("status") not in {"WAITING_STATEMENT_REVIEW", "INTAKE_FAILED", "ATTEMPTS_EXHAUSTED"}:
                raise ValueError("problem queue skip does not target a held or failed item")
            item["status"] = "SKIPPED"
            item["skip_reason"] = str(payload.get("reason", "Owner skipped this queue item."))
        elif kind == "PRE_REVIEW_EXPERIMENTAL_ATTEMPT_RECORDED":
            item = items.get(str(payload.get("item_id")))
            if (
                item is None
                or item.get("item_id") != PRE_REVIEW_EXPERIMENT_ITEM_ID
                or item.get("problem_id") != "mathlib_mul_one_div"
                or item.get("snapshot_path") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_PATH
                or item.get("snapshot_file_sha256") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256
                or item.get("status") != "WAITING_STATEMENT_REVIEW"
                or item.get("experimental_attempt") is not None
            ):
                raise ValueError("pre-review experimental result does not bind the one exact held queue item")
            if (
                payload.get("run_id") != "pre-review-mul-one-div-20261026-r1"
                or payload.get("outcome") != "EXPERIMENTAL_LOCAL_LEAN_ACCEPTED_REVIEW_PENDING"
                or payload.get("qualified_statement_review") != "PENDING"
                or payload.get("m0_statement_audit_passed") is not False
                or payload.get("proof_attachment") != "NOT_PERFORMED"
                or payload.get("provider_calls") != 0
                or payload.get("known_result_replay") is not True
                or payload.get("novel_mathematics") is not False
            ):
                raise ValueError("pre-review experimental result cannot promote a review, proof, or release gate")
            references = payload.get("evidence_references")
            if not isinstance(references, dict) or set(references) != {
                "reservation", "authorization", "prior_estimate", "source_binding", "owner_use", "proof_input", "run_result", "assessment_correction", "stdout", "stderr",
            }:
                raise ValueError("pre-review experimental result has an unsupported evidence reference set")
            for reference in references.values():
                if (
                    not isinstance(reference, dict)
                    or set(reference) != {"path", "sha256"}
                    or not _safe_local_relative(reference.get("path"))
                    or not _valid_digest(reference.get("sha256"))
                ):
                    raise ValueError("pre-review experimental result contains an unsafe evidence reference")
            item["experimental_attempt"] = {**payload, "recorded_at_utc": event["recorded_at_utc"]}
        elif kind == "BATCH_PLAN_CREATED":
            if paused:
                raise ValueError("problem queue journal freezes a plan while paused")
            plan_id = payload.get("plan_id")
            key = payload.get("idempotency_key")
            members = payload.get("members")
            outcomes = payload.get("outcomes")
            if not isinstance(plan_id, str) or not IDENTIFIER.fullmatch(plan_id) or plan_id in plans:
                raise ValueError("problem queue batch plan ID is invalid or duplicated")
            if not isinstance(key, str) or not IDEMPOTENCY_KEY.fullmatch(key) or key in plan_idempotency:
                raise ValueError("problem queue batch plan idempotency key is invalid or duplicated")
            if not isinstance(members, list) or not members or len(members) > MAX_QUEUE_ITEMS:
                raise ValueError("problem queue batch plan membership is invalid")
            if not isinstance(outcomes, list) or len(outcomes) != len(members):
                raise ValueError("problem queue batch plan outcomes do not match its membership")
            member_ids = [member.get("item_id") for member in members if isinstance(member, dict)]
            if len(member_ids) != len(members) or len(set(member_ids)) != len(member_ids):
                raise ValueError("problem queue batch plan membership contains invalid or duplicate items")
            if payload.get("membership_sha256") != _sha(_canonical(members)):
                raise ValueError("problem queue batch plan membership digest is invalid")
            for member in members:
                if not isinstance(member.get("snapshot_file_sha256"), str) or not re.fullmatch(r"[0-9a-f]{64}", member["snapshot_file_sha256"]):
                    raise ValueError("problem queue batch plan member has no pinned M0 digest")
                if not isinstance(member.get("dossier_sha256"), str) or not re.fullmatch(r"[0-9a-f]{64}", member["dossier_sha256"]):
                    raise ValueError("problem queue batch plan member has no pinned dossier digest")
                if not isinstance(member.get("source_uses"), list) or not all(isinstance(use, str) for use in member["source_uses"]):
                    raise ValueError("problem queue batch plan member has invalid source-use metadata")
                item = items.get(str(member["item_id"]))
                base_fields = (
                    "item_id", "problem_id", "case_id", "snapshot_path", "snapshot_file_sha256",
                    "dossier_path", "dossier_sha256", "source_uses",
                )
                extended_fields = ("m0_content_sha256", "statement_sha256", "forecast_reference", "retrieval_reference", "owner_use_reference")
                if item is None or any(member.get(field) != item.get(field) for field in base_fields) or any(
                    member.get(field) != item.get(field) for field in extended_fields
                ) or member.get("intake_status") != item.get("status"):
                    raise ValueError("problem queue batch plan member does not match its intake reservation")
            ready_members = 0
            for outcome, member in zip(outcomes, members, strict=True):
                if not isinstance(outcome, dict) or outcome.get("item_id") != member["item_id"] or outcome.get("outcome") not in {"READY", "BLOCKED"}:
                    raise ValueError("problem queue batch plan has an unsupported member outcome")
                reason = outcome.get("reason")
                if outcome["outcome"] == "BLOCKED" and (not isinstance(reason, str) or not reason.strip()):
                    raise ValueError("problem queue batch plan blocked outcome has no named reason")
                if outcome["outcome"] == "READY":
                    if not _valid_digest(member.get("m0_content_sha256")) or not _valid_digest(member.get("statement_sha256")):
                        raise ValueError("ready plan member lacks exact M0 statement digests")
                    if not isinstance(member.get("forecast_reference"), dict) or not _valid_digest(member["forecast_reference"].get("digest")):
                        raise ValueError("ready plan member has no validated forecast reference")
                    if "LOCAL_PROOF_ATTEMPT" not in member.get("source_uses", []) or member.get("intake_status") != "READY":
                        raise ValueError("ready plan member lacks exact M0 proof permission or reviewed statement")
                    owner_use = member.get("owner_use_reference")
                    if not isinstance(owner_use, dict) or not _safe_local_relative(owner_use.get("evidence_path")) or not _valid_digest(owner_use.get("evidence_sha256")):
                        raise ValueError("ready plan member has no hash-pinned owner-use permission")
                    ready_members += 1
            limits = payload.get("limits")
            if limits != {
                "max_items": MAX_QUEUE_ITEMS,
                "max_local_attempts_per_item": 1,
                "max_wall_clock_seconds_per_item": MAX_PLAN_WALL_SECONDS,
                "max_provider_calls": 0,
                "provider_cost_reservation_micro_usd": 0,
            }:
                raise ValueError("problem queue batch plan limits are unsupported")
            forecast_state = payload.get("forecast_state")
            plan_state = payload.get("plan_state")
            if (ready_members and (forecast_state != "VALIDATED" or plan_state != "READY")) or (not ready_members and (forecast_state != "NOT_CREATED_BLOCKED" or plan_state != "BLOCKED")):
                raise ValueError("problem queue batch plan state does not match its validated member forecasts")
            plan = {
                **payload,
                "created_at_utc": event["recorded_at_utc"],
                "event_sha256": event["event_sha256"],
                "execution": {"status": "NOT_STARTED", "dispatch_idempotency_key": None, "attempts": {}, "attachments": {}},
            }
            plans[plan_id] = plan
            plan_idempotency[key] = plan_id
        elif kind == "PLAN_DISPATCH_REQUESTED":
            plan = plans.get(str(payload.get("plan_id")))
            dispatch_key = payload.get("idempotency_key")
            if not isinstance(plan, dict) or plan.get("plan_state") != "READY":
                raise ValueError("local solver dispatch does not reference a ready frozen plan")
            if not isinstance(dispatch_key, str) or not IDEMPOTENCY_KEY.fullmatch(dispatch_key) or dispatch_key in dispatch_idempotency:
                raise ValueError("local solver dispatch idempotency key is invalid or duplicated")
            if plan["execution"].get("dispatch_idempotency_key") is not None:
                raise ValueError("frozen plan has more than one dispatch reservation")
            plan["execution"]["dispatch_idempotency_key"] = dispatch_key
            plan["execution"]["status"] = "RUNNING"
            plan["execution"]["requested_at_utc"] = event["recorded_at_utc"]
            dispatch_idempotency[dispatch_key] = str(plan["plan_id"])
        elif kind == "SOLVER_ATTEMPT_RESERVED":
            plan = plans.get(str(payload.get("plan_id")))
            item_id = payload.get("item_id")
            execution = plan.get("execution") if isinstance(plan, dict) else None
            member_ids = {member.get("item_id") for member in plan.get("members", [])} if isinstance(plan, dict) else set()
            if not isinstance(execution, dict) or execution.get("status") != "RUNNING" or item_id not in member_ids:
                raise ValueError("local solver reservation does not belong to an active frozen plan")
            if not any(outcome.get("item_id") == item_id and outcome.get("outcome") == "READY" for outcome in plan.get("outcomes", [])):
                raise ValueError("local solver reservation targets a blocked plan member")
            if item_id in execution["attempts"]:
                raise ValueError("local solver attempt was already reserved for this fixed member")
            attempt_id = payload.get("attempt_id")
            if not isinstance(attempt_id, str) or not IDENTIFIER.fullmatch(attempt_id) or payload.get("attempt_number") != 1:
                raise ValueError("local solver attempt identity or bounded attempt number is invalid")
            if payload.get("max_wall_clock_seconds") != MAX_PLAN_WALL_SECONDS or payload.get("provider_calls_reserved") != 0 or payload.get("provider_cost_reservation_micro_usd") != 0:
                raise ValueError("local solver attempt exceeds its frozen time or provider limits")
            if not _valid_digest(payload.get("problem_sha256")) or not _valid_digest(payload.get("forecast_sha256")):
                raise ValueError("local solver reservation does not bind exact problem and forecast bytes")
            execution["attempts"][item_id] = {**payload, "status": "RESERVED", "reserved_at_utc": event["recorded_at_utc"]}
        elif kind == "SOLVER_ATTEMPT_FINISHED":
            plan = plans.get(str(payload.get("plan_id")))
            item_id = payload.get("item_id")
            execution = plan.get("execution") if isinstance(plan, dict) else None
            attempt = execution.get("attempts", {}).get(item_id) if isinstance(execution, dict) else None
            if not isinstance(attempt, dict) or attempt.get("status") != "RESERVED" or attempt.get("attempt_id") != payload.get("attempt_id"):
                raise ValueError("local solver completion has no matching durable reservation")
            if payload.get("outcome") not in {"PASSED", "FAILED", "INFRASTRUCTURE_ERROR"}:
                raise ValueError("local solver completion has an unsupported named outcome")
            if not isinstance(payload.get("reason"), str) or len(payload["reason"]) > 240:
                raise ValueError("local solver completion reason is invalid or too long")
            stdout_sha = payload.get("stdout_sha256")
            stderr_sha = payload.get("stderr_sha256")
            if stdout_sha is not None and not _valid_digest(stdout_sha):
                raise ValueError("local solver stdout digest is invalid")
            if stderr_sha is not None and not _valid_digest(stderr_sha):
                raise ValueError("local solver stderr digest is invalid")
            if payload.get("outcome") == "PASSED":
                validation = payload.get("verification_validation")
                process_termination = payload.get("process_termination")
                container_cleanup = payload.get("container_cleanup")
                validator_termination = payload.get("validation_process_termination")
                if (
                    not isinstance(validation, dict) or validation.get("status") != "VALIDATED"
                    or validation.get("run_id") != attempt.get("run_id")
                    or validation.get("problem_id") != next((member.get("problem_id") for member in plan.get("members", []) if member.get("item_id") == item_id), None)
                    or not _valid_digest(validation.get("proof_sha256"))
                    or not _valid_digest(validation.get("receipt_sha256"))
                    or not _valid_digest(payload.get("verification_validation_stdout_sha256"))
                    or not _valid_digest(payload.get("verification_validation_stderr_sha256"))
                    or not isinstance(process_termination, dict) or process_termination.get("cleanup_succeeded") is not True
                    or not isinstance(container_cleanup, dict) or container_cleanup.get("cleanup_succeeded") is not True
                    or not isinstance(validator_termination, dict) or validator_termination.get("cleanup_succeeded") is not True
                ):
                    raise ValueError("local solver PASSED result lacks reopened typed M4 evidence or confirmed cleanup")
            attempt.update(payload)
            attempt["status"] = str(payload["outcome"])
            attempt["finished_at_utc"] = event["recorded_at_utc"]
        elif kind == "PLAN_DISPATCH_FINISHED":
            plan = plans.get(str(payload.get("plan_id")))
            execution = plan.get("execution") if isinstance(plan, dict) else None
            if not isinstance(execution, dict) or execution.get("status") != "RUNNING":
                raise ValueError("local solver plan completion has no dispatch request")
            for outcome in plan.get("outcomes", []):
                if outcome.get("outcome") == "READY":
                    attempt = execution["attempts"].get(outcome.get("item_id"))
                    if not isinstance(attempt, dict) or attempt.get("status") not in {"PASSED", "FAILED", "INFRASTRUCTURE_ERROR"}:
                        raise ValueError("local solver plan finished with an unaccounted ready member")
            execution["status"] = "COMPLETED"
            execution["finished_at_utc"] = event["recorded_at_utc"]
        elif kind == "DOSSIER_ATTACHMENT_FAILED":
            plan = plans.get(str(payload.get("plan_id")))
            item_id = payload.get("item_id")
            execution = plan.get("execution") if isinstance(plan, dict) else None
            attempt = execution.get("attempts", {}).get(item_id) if isinstance(execution, dict) else None
            item = items.get(str(item_id))
            failures = execution.get("attachment_failures", {}).get(item_id, []) if isinstance(execution, dict) else []
            physical_run_number = payload.get("attachment_run_number", payload.get("attempt_number"))
            prior_physical_runs = [
                failure.get("attachment_run_number", failure.get("attempt_number"))
                for failure in failures if isinstance(failure, dict)
            ]
            latest_physical_run = max((number for number in prior_physical_runs if type(number) is int), default=0)
            if (
                not isinstance(item, dict) or not isinstance(attempt, dict) or attempt.get("status") != "PASSED"
                or attempt.get("attempt_id") != payload.get("queue_attempt_id")
                or plan.get("execution", {}).get("status") != "COMPLETED"
                or item.get("proof_attachment") is not None
                or payload.get("attempt_number") != len(failures) + 1
                or payload.get("attempt_number") > MAX_DOSSIER_ATTACHMENT_RUNS
                or type(physical_run_number) is not int or physical_run_number <= latest_physical_run
                or physical_run_number > MAX_DOSSIER_ATTACHMENT_RUNS
                or not isinstance(payload.get("attachment_run_id"), str) or not re.fullmatch(r"[a-f0-9]{32}", payload["attachment_run_id"])
                or not isinstance(payload.get("reason"), str) or not payload["reason"].strip() or len(payload["reason"]) > 240
                or payload.get("exit_code") is not None and not isinstance(payload.get("exit_code"), int)
                or not _valid_digest(payload.get("command_sha256"))
                or not _valid_digest(payload.get("source_fingerprint"))
                or not _safe_local_relative(payload.get("command_path"))
                or not _valid_digest(payload.get("stdout_sha256"))
                or not _valid_digest(payload.get("stderr_sha256"))
                or not _safe_local_relative(payload.get("stdout_path"))
                or not _safe_local_relative(payload.get("stderr_path"))
                or not isinstance(payload.get("process_termination"), dict)
            ):
                raise ValueError("queue dossier attachment failure does not match one bounded passed solver result")
            execution.setdefault("attachment_failures", {}).setdefault(item_id, []).append({**payload, "recorded_at_utc": event["recorded_at_utc"]})
            item["last_attachment_failure"] = {
                "attempt_number": payload["attempt_number"], "reason": payload["reason"],
                "attachment_run_number": physical_run_number,
                "recorded_at_utc": event["recorded_at_utc"],
            }
        elif kind == "DOSSIER_PROOF_ATTACHED":
            plan = plans.get(str(payload.get("plan_id")))
            item_id = payload.get("item_id")
            execution = plan.get("execution") if isinstance(plan, dict) else None
            attempt = execution.get("attempts", {}).get(item_id) if isinstance(execution, dict) else None
            member = next((value for value in plan.get("members", []) if value.get("item_id") == item_id), None) if isinstance(plan, dict) else None
            item = items.get(str(item_id))
            result = payload.get("result")
            validation = attempt.get("verification_validation") if isinstance(attempt, dict) else None
            failures = execution.get("attachment_failures", {}).get(item_id, []) if isinstance(execution, dict) else []
            physical_run_number = payload.get("attachment_run_number", payload.get("attempt_number"))
            prior_physical_runs = [
                failure.get("attachment_run_number", failure.get("attempt_number"))
                for failure in failures if isinstance(failure, dict)
            ]
            latest_physical_run = max((number for number in prior_physical_runs if type(number) is int), default=0)
            expected_attachment_id = "attachment-" + _sha(f"{payload.get('plan_id')}\n{item_id}\n{payload.get('queue_attempt_id')}".encode("utf-8"))[:20]
            if (
                not isinstance(plan, dict) or not isinstance(item, dict) or not isinstance(attempt, dict)
                or not isinstance(member, dict) or plan.get("execution", {}).get("status") != "COMPLETED"
                or attempt.get("status") != "PASSED" or attempt.get("attempt_id") != payload.get("queue_attempt_id")
                or item.get("proof_attachment") is not None
                or payload.get("attachment_id") != expected_attachment_id
                or payload.get("attempt_number") != len(failures) + 1
                or payload.get("attempt_number") > MAX_DOSSIER_ATTACHMENT_RUNS
                or type(physical_run_number) is not int or physical_run_number <= latest_physical_run
                or physical_run_number > MAX_DOSSIER_ATTACHMENT_RUNS
                or payload.get("previous_dossier_path") != member.get("dossier_path")
                or payload.get("previous_dossier_sha256") != member.get("dossier_sha256")
                or payload.get("previous_dossier_sha256") != item.get("dossier_sha256")
                or payload.get("queue_item_id") != item_id
                or not isinstance(result, dict) or result.get("schema_version") != "mathcase-queue-m4-dossier-attachment-v1"
                or result.get("status") not in {"REVISION_WRITTEN_NOT_READY", "REVISION_ALREADY_ATTACHED"}
                or result.get("case_id") != member.get("case_id") or result.get("problem_id") != member.get("problem_id")
                or result.get("queue_item_id") != item_id or result.get("plan_id") != payload.get("plan_id")
                or result.get("queue_attempt_id") != payload.get("queue_attempt_id")
                or result.get("proof_sha256") != (validation or {}).get("proof_sha256")
                or result.get("receipt_evidence_id") != (validation or {}).get("evidence_id")
                or result.get("receipt_sha256") != (validation or {}).get("receipt_sha256")
                or result.get("previous_dossier_sha256") != member.get("dossier_sha256")
                or result.get("revision_dossier_path") != payload.get("revision_dossier_path")
                or result.get("revision_dossier_sha256") != payload.get("revision_dossier_sha256")
                or result.get("receipt_copy_path") != payload.get("receipt_copy_path")
                or result.get("solver_attempt_id") != payload.get("solver_attempt_id")
                or result.get("remaining_pending_gates") != ["V3", "V4", "V5", "V6", "V7"]
                or result.get("delivery_readiness") != "NOT_READY"
                or not _safe_local_relative(payload.get("revision_dossier_path"))
                or not _valid_digest(payload.get("revision_dossier_sha256"))
                or not _safe_local_relative(payload.get("receipt_copy_path"))
                or payload.get("receipt_evidence_id") != (validation or {}).get("evidence_id")
                or payload.get("receipt_sha256") != (validation or {}).get("receipt_sha256")
                or payload.get("proof_sha256") != (validation or {}).get("proof_sha256")
                or not _valid_digest(payload.get("command_sha256"))
                or not _valid_digest(payload.get("source_fingerprint"))
                or not _valid_digest(payload.get("binary_sha256"))
                or not _valid_digest(payload.get("result_sha256"))
                or payload.get("result_sha256") != payload.get("stdout_sha256")
                or payload.get("result_path") != payload.get("stdout_path")
                or not _valid_digest(payload.get("stdout_sha256"))
                or not _valid_digest(payload.get("stderr_sha256"))
                or not _safe_local_relative(payload.get("result_path"))
                or not _safe_local_relative(payload.get("stdout_path"))
                or not _safe_local_relative(payload.get("stderr_path"))
                or not _safe_local_relative(payload.get("command_path"))
                or payload.get("solver_attempt_id") != (validation or {}).get("attempt_id")
                or payload.get("exit_code") != 0
                or not isinstance(payload.get("process_termination"), dict)
                or payload["process_termination"].get("cleanup_succeeded") is not True
            ):
                raise ValueError("queue dossier proof attachment does not match its exact passed M4 attempt and immutable predecessor")
            attachment = {
                **payload,
                "recorded_at_utc": event["recorded_at_utc"],
                "event_sha256": event["event_sha256"],
            }
            execution.setdefault("attachments", {})[item_id] = attachment
            item["proof_attachment"] = attachment
            item["current_dossier_path"] = payload["revision_dossier_path"]
            item["current_dossier_sha256"] = payload["revision_dossier_sha256"]
            item["status"] = "PROOF_ATTACHED_NOT_READY"
            item.pop("last_attachment_failure", None)
        else:
            raise ValueError("problem queue journal contains an unknown event type")
    return {"paused": paused, "items": items, "idempotency": idempotency, "plans": plans, "plan_idempotency": plan_idempotency, "dispatch_idempotency": dispatch_idempotency}


def _validate_pre_review_experimental_readback(
    recorded_attempt: dict[str, object],
    current_summary: dict[str, object],
    reservation: dict[str, object],
    run_result: dict[str, object],
    correction: dict[str, object],
    *,
    command_sha256: str,
    run_result_sha256: str,
) -> None:
    if recorded_attempt.get("evidence_references") != current_summary.get("evidence_references"):
        raise ValueError("experimental queue event evidence hashes no longer match the reopened files")
    summary_fields = (
        "run_id", "outcome", "proof_input_sha256", "stdout_sha256", "assessment_correction_sha256",
        "lean_version", "axiom_summary", "source_revision", "source_item_sha256", "source_rights",
        "cache_provenance_class", "known_result_replay", "novel_mathematics", "qualified_statement_review",
        "m0_statement_audit_passed", "proof_attachment", "provider_calls",
    )
    if any(recorded_attempt.get(field) != current_summary.get(field) for field in summary_fields):
        raise ValueError("experimental queue event summary no longer matches the reopened evidence")
    proof_input_sha256 = current_summary.get("proof_input_sha256")
    reservation_input = reservation.get("proof_input")
    command_reference = reservation.get("command_reference")
    if not isinstance(reservation_input, dict) or reservation_input.get("sha256") != proof_input_sha256:
        raise ValueError("experimental reservation does not bind the reopened proof input")
    if not isinstance(command_reference, dict) or command_reference.get("sha256") != command_sha256:
        raise ValueError("experimental reservation does not bind the reopened command")
    if run_result.get("proof_input_sha256") != proof_input_sha256:
        raise ValueError("captured Lean result does not bind the reopened proof input")
    if run_result.get("command_sha256") != command_sha256:
        raise ValueError("captured Lean result does not bind the reopened command")
    if run_result.get("stdout_sha256") != current_summary.get("stdout_sha256"):
        raise ValueError("captured Lean result does not bind the reopened stdout")
    if correction.get("original_run_result_sha256") != run_result_sha256:
        raise ValueError("experimental assessment correction no longer binds the original run receipt")
    if correction.get("stdout_sha256") != current_summary.get("stdout_sha256"):
        raise ValueError("experimental assessment correction no longer binds the reopened stdout")


class ProblemQueue:
    """Append-only governed intake and bounded local solver queue."""

    def __init__(
        self,
        root: Path,
        event_path: Path | None = None,
        runner: Callable[..., subprocess.CompletedProcess[str]] | None = None,
        solver_runner: Callable[..., subprocess.CompletedProcess[str]] | None = None,
        forecast_validator: Callable[[dict[str, object], dict[str, object]], tuple[bool, str]] | None = None,
        solver_config: dict[str, str] | None = None,
        result_validator: Callable[..., subprocess.CompletedProcess[bytes]] | None = None,
        attachment_runner: Callable[..., subprocess.CompletedProcess[bytes]] | None = None,
    ):
        self.root = root.resolve()
        self.event_path = event_path or _under_root(root, QUEUE_PATH)
        self.lock_path = Path(str(self.event_path) + ".lock")
        self.runner = runner if runner is not None else subprocess.run
        self.solver_runner = solver_runner
        self.forecast_validator = forecast_validator
        self.solver_config = solver_config
        self.result_validator = result_validator
        self.attachment_runner = attachment_runner

    def _lock(self):
        if self.lock_path.is_symlink() or any(parent.is_symlink() for parent in self.lock_path.parents if parent.exists()):
            raise ValueError("problem queue lock path crosses a symbolic link")
        return exclusive_file_lock(self.lock_path)

    def _plan_run_lock(self, plan_id: str):
        lock_path = Path(str(self.event_path) + f".{plan_id}.run.lock")
        if lock_path.is_symlink() or any(parent.is_symlink() for parent in lock_path.parents if parent.exists()):
            raise ValueError("problem queue plan run lock path crosses a symbolic link")
        return exclusive_file_lock(lock_path)

    def _run_owned_command(
        self, command: list[str], timeout: float, environment: dict[str, str] | None = None,
    ) -> tuple[subprocess.CompletedProcess[bytes], dict[str, object]]:
        environment = dict(environment) if environment is not None else os.environ.copy()
        environment.update({"GOPROXY": "off", "GOSUMDB": "off", "GOTOOLCHAIN": "local"})
        result = run_owned_command(command, cwd=str(self.root), env=environment, timeout=timeout)
        return result.completed, result.termination

    def _go_source_fingerprint(self) -> str:
        excluded = {".git", ".venv", "vendor", "node_modules", "data"}
        files = [self.root / name for name in ("go.mod", "go.sum", "go.work", "go.work.sum")]
        for path in self.root.rglob("*.go"):
            try:
                relative = path.relative_to(self.root)
            except ValueError:
                continue
            if excluded.intersection(relative.parts) or path.is_symlink() or not path.is_file():
                continue
            files.append(path)
        digest = hashlib.sha256()
        for path in sorted(set(files), key=lambda value: value.relative_to(self.root).as_posix()):
            if not path.exists():
                continue
            relative = path.relative_to(self.root).as_posix()
            if not _safe_regular(path):
                raise ValueError(f"Go build input {relative} is missing or unsafe")
            digest.update(relative.encode("utf-8"))
            digest.update(b"\0")
            digest.update(path.read_bytes())
            digest.update(b"\0")
        return digest.hexdigest()

    def _build_solver_binary(self, plan_id: str, idempotency_key: str, settings: dict[str, str]) -> dict[str, str]:
        source_fingerprint = self._go_source_fingerprint()
        build_relative = f"data/local/staging/problem-queue/builds/{source_fingerprint}/{plan_id}-{idempotency_key}"
        build_root = _under_root(self.root, build_relative)
        build_root.mkdir(parents=True, exist_ok=True)
        if build_root.is_symlink() or any(parent.is_symlink() for parent in build_root.parents if parent.exists()):
            raise ValueError("local solver build directory crosses a symbolic link")
        executable_name = "mathcase.exe" if os.name == "nt" else "mathcase"
        binary_relative = f"{build_relative}/{executable_name}"
        receipt_relative = f"{build_relative}/build-receipt.json"
        binary_path = _under_root(self.root, binary_relative)
        receipt_path = _under_root(self.root, receipt_relative)
        if binary_path.exists() or receipt_path.exists():
            if not _safe_regular(binary_path) or not _safe_regular(receipt_path):
                raise ValueError("existing local solver build is incomplete or unsafe; it was not overwritten")
            try:
                receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
            except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                raise ValueError("existing local solver build receipt is invalid") from exc
            binary_sha256 = _sha(binary_path.read_bytes())
            if (
                not isinstance(receipt, dict) or receipt.get("schema_version") != "mathcase-local-solver-build-v1"
                or receipt.get("source_fingerprint") != source_fingerprint
                or receipt.get("binary_sha256") != binary_sha256
            ):
                raise ValueError("existing local solver build does not match its immutable local receipt")
        else:
            temporary_relative = f"{build_relative}/mathcase-building-{uuid.uuid4().hex}{'.exe' if os.name == 'nt' else ''}"
            temporary_path = _under_root(self.root, temporary_relative)
            command = [settings["go"], "build", "-trimpath", "-buildvcs=false", "-o", str(temporary_path), "./cmd/mathcase"]
            try:
                result, termination = self._run_owned_command(command, timeout=180)
            except OwnedCommandTimeout as exc:
                raise ValueError(f"local MathCase build timed out; process cleanup={exc.termination}") from exc
            if not termination.get("cleanup_succeeded"):
                raise ValueError("local MathCase build left an owned process; no solver run was started")
            if result.returncode != 0 or not _safe_regular(temporary_path):
                try:
                    temporary_path.unlink(missing_ok=True)
                except OSError:
                    pass
                detail = (result.stderr or b"").decode("utf-8", errors="replace")[-1200:]
                raise ValueError(f"local MathCase build failed: {detail}")
            os.replace(temporary_path, binary_path)
            binary_sha256 = _sha(binary_path.read_bytes())
            receipt = {
                "schema_version": "mathcase-local-solver-build-v1",
                "source_fingerprint": source_fingerprint,
                "binary_sha256": binary_sha256,
                "binary_path": binary_relative,
                "build_process_termination": termination,
                "built_at_utc": _timestamp(),
            }
            self._write_new(receipt_relative, _canonical(receipt) + b"\n")
        return {
            **settings,
            "mathcase_binary": str(binary_path),
            "mathcase_binary_path": binary_relative,
            "mathcase_binary_sha256": binary_sha256,
            "mathcase_source_fingerprint": source_fingerprint,
        }

    def _verify_solver_binary(self, binary_relative: str, expected_sha256: str) -> Path:
        if not _safe_local_relative(binary_relative) or not _valid_digest(expected_sha256):
            raise ValueError("reserved local solver binary binding is malformed")
        path = _under_root(self.root, binary_relative)
        if not _safe_regular(path) or _sha(path.read_bytes()) != expected_sha256:
            raise ValueError("reserved local solver binary is missing, unsafe, or changed")
        return path

    def _cleanup_owned_containers(self, settings: dict[str, str], run_id: str) -> dict[str, object]:
        label = f"mathcase.queue_run={run_id}"
        docker = settings.get("docker") or "docker"
        command = [docker, "ps", "--all", "--quiet", "--filter", f"label={label}"]
        record: dict[str, object] = {
            "schema_version": "mathcase-labeled-container-cleanup-v1",
            "run_id": run_id,
            "filter": f"label={label}",
            "enumerated_container_ids": [],
            "removed_container_ids": [],
            "remaining_container_ids": [],
            "cleanup_succeeded": False,
            "errors": [],
        }

        def list_ids() -> tuple[list[str], str | None]:
            try:
                result, termination = self._run_owned_command(command, timeout=20)
            except (OSError, subprocess.SubprocessError, ValueError) as exc:
                return [], str(exc)[:400]
            if not termination.get("cleanup_succeeded"):
                return [], "Docker query process tree cleanup was not confirmed"
            if result.returncode != 0:
                return [], (result.stderr or b"").decode("utf-8", errors="replace")[-400:]
            raw_ids = [line.strip().lower() for line in (result.stdout or b"").decode("utf-8", errors="replace").splitlines() if line.strip()]
            if any(not re.fullmatch(r"[a-f0-9]{12,64}", value) for value in raw_ids):
                return [], "Docker returned a malformed exact-container identifier"
            return sorted(set(raw_ids)), None

        container_ids, error = list_ids()
        record["enumerated_container_ids"] = container_ids
        if error:
            record["errors"] = [error]
            return record
        for container_id in container_ids:
            remove_command = [docker, "rm", "--force", container_id]
            try:
                removed, termination = self._run_owned_command(remove_command, timeout=20)
            except (OSError, subprocess.SubprocessError, ValueError) as exc:
                record["errors"].append(str(exc)[:400])
                continue
            if not termination.get("cleanup_succeeded") or removed.returncode != 0:
                detail = (removed.stderr or b"").decode("utf-8", errors="replace")[-400:]
                record["errors"].append(detail or "Exact Docker container removal was not confirmed")
            else:
                record["removed_container_ids"].append(container_id)
        remaining, error = list_ids()
        record["remaining_container_ids"] = remaining
        if error:
            record["errors"].append(error)
        record["cleanup_succeeded"] = not error and not remaining
        return record

    def _validate_forecast(self, item: dict[str, object], reference: dict[str, object]) -> tuple[bool, str]:
        digest = reference.get("digest")
        store_root = reference.get("store_root")
        if not _valid_digest(digest) or not isinstance(store_root, str):
            return False, "The pre-attempt forecast reference is malformed."
        try:
            resolved_store = _under_root(self.root, store_root)
        except ValueError:
            return False, "The pre-attempt forecast store path is unsafe."
        expected = {
            "problem_id": item.get("problem_id"),
            "statement_id": item.get("problem_id"),
            "catalog_snapshot_sha256": item.get("m0_content_sha256"),
            "statement_sha256": item.get("statement_sha256"),
        }
        if self.forecast_validator is not None:
            try:
                valid, reason = self.forecast_validator(item, {**reference, "store_root_absolute": str(resolved_store), "expected": expected})
            except (OSError, ValueError, TypeError, subprocess.SubprocessError) as exc:
                return False, f"The typed forecast could not be reopened: {exc}"
            return bool(valid), str(reason)[:240]
        command = [
            "go", "run", "./cmd/mathcase", "attackability-forecast-validate",
            "--store-root", str(resolved_store), "--digest", str(digest),
            "--problem-id", str(expected["problem_id"]), "--statement-id", str(expected["statement_id"]),
            "--catalog-snapshot-sha256", str(expected["catalog_snapshot_sha256"]),
            "--statement-sha256", str(expected["statement_sha256"]),
        ]
        environment = os.environ.copy()
        environment.update({"GOPROXY": "off", "GOSUMDB": "off", "GOTOOLCHAIN": "local"})
        try:
            if self.runner is not None:
                result = self.runner(command, cwd=str(self.root), env=environment, capture_output=True, text=True, timeout=45, check=False)
                stdout = result.stdout
            else:
                owned = run_owned_command(command, cwd=str(self.root), env=environment, timeout=45)
                result = owned.completed
                if not owned.termination.get("cleanup_succeeded"):
                    return False, "The typed forecast validator left an owned process; dispatch remains blocked."
                stdout = (result.stdout or b"").decode("utf-8", errors="replace")
        except (OSError, subprocess.SubprocessError) as exc:
            return False, f"The typed pre-attempt forecast validator could not run: {exc}"
        if result.returncode != 0:
            return False, "The forecast did not pass the typed M1 reader for this exact M0 statement."
        try:
            output = json.loads(stdout)
        except (json.JSONDecodeError, TypeError):
            return False, "The typed forecast validator returned invalid JSON."
        if not isinstance(output, dict) or output.get("status") != "VALIDATED" or output.get("digest") != digest or any(output.get(key) != value for key, value in expected.items()):
            return False, "The typed forecast validator did not confirm the exact M0 target."
        return True, "Validated M1 forecast matches the exact M0 problem, statement, and snapshot."

    def _local_solver_settings(self) -> dict[str, str]:
        if self.solver_config is not None:
            return {key: str(value) for key, value in self.solver_config.items()}
        return {
            "go": os.environ.get("MATHCASE_GO_EXECUTABLE", "go"),
            "lean_project": os.environ.get("MATHCASE_LEAN_PROJECT_ROOT", ""),
            "lean_lake_cache": os.environ.get("MATHCASE_LEAN_LAKE_CACHE_ROOT", ""),
            "lean_snapshot_manifest": os.environ.get("MATHCASE_LEAN_SNAPSHOT_MANIFEST", ""),
            "lean_sandbox_image": os.environ.get("MATHCASE_LEAN_SANDBOX_IMAGE", ""),
            "pantograph_sandbox_image": os.environ.get("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE", ""),
            "docker": os.environ.get("MATHCASE_DOCKER_EXECUTABLE", ""),
        }

    def _validate_local_solver_settings(self) -> dict[str, str]:
        settings = self._local_solver_settings()
        for key in ("lean_project", "lean_snapshot_manifest", "lean_sandbox_image", "pantograph_sandbox_image"):
            if not settings.get(key):
                raise ValueError(f"local solver dispatch is blocked: pinned {key.replace('_', ' ')} is not configured")
        for key in ("lean_project", "lean_snapshot_manifest"):
            configured = Path(settings[key])
            try:
                if configured.is_absolute():
                    configured.resolve(strict=True).relative_to(self.root)
                    candidate = configured.resolve(strict=True)
                else:
                    candidate = _under_root(self.root, settings[key]).resolve(strict=True)
            except (OSError, ValueError) as exc:
                raise ValueError(f"local solver dispatch is blocked: pinned {key.replace('_', ' ')} is missing or outside the MathCase checkout") from exc
            if candidate.is_symlink():
                raise ValueError(f"local solver dispatch is blocked: pinned {key.replace('_', ' ')} crosses a symbolic link")
            settings[key] = str(candidate)
        if settings.get("lean_lake_cache"):
            configured = Path(settings["lean_lake_cache"])
            try:
                if configured.is_absolute():
                    candidate = configured.resolve(strict=True)
                    candidate.relative_to(self.root)
                else:
                    candidate = _under_root(self.root, settings["lean_lake_cache"]).resolve(strict=True)
                    candidate.relative_to(self.root)
            except (OSError, ValueError) as exc:
                raise ValueError("local solver dispatch is blocked: pinned Lean Lake cache is missing or outside the MathCase checkout") from exc
            if candidate.is_symlink() or not candidate.is_dir():
                raise ValueError("local solver dispatch is blocked: pinned Lean Lake cache is not a regular directory")
            settings["lean_lake_cache"] = str(candidate)
        for key in ("lean_sandbox_image", "pantograph_sandbox_image"):
            if not re.fullmatch(r"sha256:[0-9a-f]{64}", settings[key]):
                raise ValueError(f"local solver dispatch is blocked: {key.replace('_', ' ')} must be an immutable SHA-256 image ID")
        manifest_path = Path(settings["lean_snapshot_manifest"])
        if not _safe_regular(manifest_path):
            raise ValueError("local solver dispatch is blocked: pinned Lean snapshot manifest is missing or unsafe")
        try:
            manifest_bytes = manifest_path.read_bytes()
            manifest = json.loads(manifest_bytes)
        except (OSError, json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("local solver dispatch is blocked: pinned Lean snapshot manifest cannot be reopened") from exc
        if not isinstance(manifest, dict) or not isinstance(manifest.get("snapshot_id"), str) or not manifest["snapshot_id"] or manifest.get("image_digest") != settings["lean_sandbox_image"]:
            raise ValueError("local solver dispatch is blocked: Lean snapshot manifest does not bind the configured immutable image")
        settings["lean_snapshot_manifest_sha256"] = _sha(manifest_bytes)
        settings["lean_snapshot_id"] = manifest["snapshot_id"]
        if self.solver_runner is None:
            configured_docker = settings.get("docker")
            docker_input = Path(configured_docker) if configured_docker else Path("docker")
            if not docker_input.is_absolute() and docker_input.parent == Path("."):
                configured_docker = shutil.which(str(docker_input))
            elif configured_docker is None:
                configured_docker = shutil.which("docker")
            if not configured_docker:
                raise ValueError("local solver dispatch is blocked: Docker executable is unavailable")
            try:
                docker_path = Path(configured_docker).resolve(strict=True)
            except (OSError, RuntimeError) as exc:
                raise ValueError("local solver dispatch is blocked: Docker executable cannot be resolved") from exc
            if not _safe_regular(docker_path):
                raise ValueError("local solver dispatch is blocked: Docker executable is missing or unsafe")
            settings["docker"] = str(docker_path)
        settings["docker_executable"] = settings.get("docker") or "docker"
        return settings

    def _solver_command(self, settings: dict[str, str], problem_path: Path, run_id: str, run_root: Path, member: dict[str, object]) -> list[str]:
        command = [
            settings["mathcase_binary"], "solve-local",
            "--repo-root", str(self.root), "--problem", str(problem_path),
            "--lean-project", settings["lean_project"],
            "--lean-snapshot-manifest", settings["lean_snapshot_manifest"],
            "--lean-sandbox-image", settings["lean_sandbox_image"],
            "--pantograph-sandbox-image", settings["pantograph_sandbox_image"],
            "--workspace-root", str(run_root / "workspace"),
            "--receipt-root", str(run_root / "receipts"),
            "--run-id", run_id, "--max-nodes", "64", "--max-depth", "4",
            "--search-timeout", "530s", "--verification-timeout", "90s",
        ]
        if settings.get("docker"):
            command.extend(["--docker", settings["docker"]])
        if settings.get("lean_lake_cache"):
            command.extend(["--lean-lake-cache", settings["lean_lake_cache"]])
        retrieval = member.get("retrieval_reference")
        if retrieval is not None:
            retrieval_paths = _retrieval_paths(self.root, retrieval, member.get("source_uses"))
            assert retrieval_paths is not None
            snapshot_path = _under_root(self.root, str(member["snapshot_path"]))
            command.extend([
                "--m0-catalog-snapshot", str(snapshot_path),
                "--retrieval-output", str(retrieval_paths["output_path"]),
                "--retrieval-proof-root", str(retrieval_paths["proof_root"]),
                "--retrieval-source-root", str(retrieval_paths["source_root"]),
            ])
        return command

    def _result_validation_command(
        self,
        binary_path: Path,
        problem_path: Path,
        output_path: Path,
        receipt_root: Path,
        run_id: str,
        lean_image: str,
        pantograph_image: str,
        manifest_sha256: str,
        snapshot_id: str,
        docker_executable: str,
        retrieval_output_sha256: str = "",
    ) -> list[str]:
        command = [
            str(binary_path), "solve-local-validate",
            "--problem", str(problem_path), "--result", str(output_path),
            "--receipt-root", str(receipt_root), "--run-id", run_id,
            "--lean-image", lean_image, "--pantograph-image", pantograph_image,
            "--snapshot-manifest-sha256", manifest_sha256, "--snapshot-id", snapshot_id,
            "--docker-executable", docker_executable,
        ]
        if retrieval_output_sha256:
            command.extend(["--retrieval-output-sha256", retrieval_output_sha256])
        return command

    def _run_result_validation(self, command: list[str]) -> tuple[subprocess.CompletedProcess[bytes], dict[str, object]]:
        if self.result_validator is not None:
            result = self.result_validator(
                command, cwd=str(self.root), env=os.environ.copy(), capture_output=True,
                text=False, timeout=30, check=False,
            )
            stdout = result.stdout.encode("utf-8") if isinstance(result.stdout, str) else result.stdout
            stderr = result.stderr.encode("utf-8") if isinstance(result.stderr, str) else result.stderr
            return subprocess.CompletedProcess(command, result.returncode, stdout or b"", stderr or b""), {
                "schema_version": "mathcase-owned-process-termination-v1",
                "ownership": "INJECTED_VALIDATOR_TEST_DOUBLE",
                "timeout_fired": False, "cleanup_attempted": False,
                "cleanup_succeeded": True, "remaining_owned_processes": 0,
                "root_exit_code": result.returncode, "cleanup_method": "not_applicable_test_double",
            }
        return self._run_owned_command(command, timeout=30)

    @staticmethod
    def _validation_output(raw: bytes, run_id: str, problem_id: str, proof_sha256: str) -> dict[str, object]:
        try:
            value = json.loads(raw)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("typed solve result validator returned invalid JSON") from exc
        if not isinstance(value, dict) or value.get("status") != "VALIDATED" or value.get("run_id") != run_id or value.get("problem_id") != problem_id or value.get("proof_sha256") != proof_sha256:
            raise ValueError("typed solve result validator did not reopen the exact proof, run, and problem")
        for field in ("statement_sha256", "attempt_id", "evidence_id", "receipt_sha256", "snapshot_manifest_sha256", "snapshot_id", "lean_image", "pantograph_image", "lean_container_name", "pantograph_container_name", "docker_executable"):
            if not isinstance(value.get(field), str) or not value[field]:
                raise ValueError(f"typed solve result validator omitted {field}")
        return value

    def _write_new(self, relative: str, raw: bytes) -> Path:
        path = _under_root(self.root, relative)
        path.parent.mkdir(parents=True, exist_ok=True)
        if path.is_symlink() or any(parent.is_symlink() for parent in path.parents if parent.exists()):
            raise ValueError("local solver output path crosses a symbolic link")
        with path.open("xb") as handle:
            handle.write(raw)
            handle.flush()
            os.fsync(handle.fileno())
        return path

    def _load(self) -> tuple[list[dict[str, object]], str, dict[str, object]]:
        events, head = _read_events_unlocked(self.event_path)
        return events, head, _projection(events)

    def read(self) -> dict[str, object]:
        with self._lock():
            events, head, state = self._load()
            return self._read_unlocked(events, head, state)

    def read_plan(self, plan_id: str) -> dict[str, object]:
        if not isinstance(plan_id, str) or not IDENTIFIER.fullmatch(plan_id):
            raise ValueError("batch plan ID is invalid")
        with self._lock():
            _events, _head, state = self._load()
            plan = state["plans"].get(plan_id)
            if not isinstance(plan, dict):
                raise ValueError("batch plan does not exist")
            reopened_members = []
            reopened_attempts = []
            reopened_attachments = []
            for member in plan["members"]:
                snapshot_path = _under_root(self.root, str(member["snapshot_path"]))
                dossier_path = _under_root(self.root, str(member["dossier_path"]))
                if not _safe_regular(snapshot_path) or _sha(snapshot_path.read_bytes()) != member.get("snapshot_file_sha256"):
                    raise ValueError("frozen batch member M0 snapshot changed; plan readback was refused")
                if not _safe_regular(dossier_path) or _sha(dossier_path.read_bytes()) != member.get("dossier_sha256"):
                    raise ValueError("frozen batch member dossier changed; plan readback was refused")
                try:
                    dossier = json.loads(dossier_path.read_text(encoding="utf-8"))
                    snapshot = json.loads(snapshot_path.read_text(encoding="utf-8"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("frozen batch member dossier cannot be reopened") from exc
                case = dossier.get("case") if isinstance(dossier, dict) else None
                problem = dossier.get("problem") if isinstance(dossier, dict) else None
                m0_problems = snapshot.get("problems") if isinstance(snapshot, dict) else None
                m0_matches = [value for value in m0_problems if isinstance(value, dict) and value.get("id") == member.get("problem_id")] if isinstance(m0_problems, list) else []
                if (
                    not isinstance(case, dict) or not isinstance(problem, dict)
                    or case.get("id") != member.get("case_id") or problem.get("id") != member.get("problem_id")
                    or len(m0_matches) != 1 or problem.get("statement") != m0_matches[0].get("informal_statement")
                    or problem.get("lean_statement") != m0_matches[0].get("lean_statement")
                ):
                    raise ValueError("frozen batch member dossier identity does not match its plan")
                m0_problem = m0_matches[0]
                member_uses = _problem_allowed_uses(snapshot, m0_problem, member.get("source_uses"))
                owner_use = _validate_owner_use_reference(
                    self.root, snapshot, m0_problem,
                    {"owner_use_reference": member.get("owner_use_reference")}, member_uses,
                )
                if member_uses != member.get("source_uses") or owner_use != member.get("owner_use_reference"):
                    raise ValueError("frozen batch member owner-use permission no longer matches its exact M0 source and evidence")
                if member.get("statement_sha256") is not None and _sha(str(m0_problem.get("informal_statement", "")).encode("utf-8")) != member.get("statement_sha256"):
                    raise ValueError("frozen batch member statement digest no longer matches its exact M0 statement")
                retrieval_paths = _retrieval_paths(
                    self.root, member.get("retrieval_reference"), member.get("source_uses"),
                )
                reopened_members.append({
                    "item_id": member["item_id"],
                    "case_id": member["case_id"],
                    "problem_id": member["problem_id"],
                    "snapshot_sha256": member["snapshot_file_sha256"],
                    "m0_content_sha256": member.get("m0_content_sha256"),
                    "statement_sha256": member.get("statement_sha256"),
                    "dossier_sha256": member.get("dossier_sha256"),
                    "retrieval_paths_reopened": sorted(retrieval_paths) if retrieval_paths is not None else [],
                })
                attempt = plan.get("execution", {}).get("attempts", {}).get(member["item_id"])
                if not isinstance(attempt, dict):
                    continue
                expected_lean_problem = {key: problem[key] for key in ("id", "title", "statement", "lean_statement", "source_ids", "m0_status") if key in problem}
                expected_problem_bytes = _canonical(expected_lean_problem) + b"\n"
                problem_path = _under_root(self.root, str(attempt.get("problem_path", "")))
                if not _safe_regular(problem_path) or _sha(problem_path.read_bytes()) != attempt.get("problem_sha256") or problem_path.read_bytes() != expected_problem_bytes:
                    raise ValueError("reserved local solver input no longer matches the exact frozen M0 dossier problem")
                recorded_retrieval_sha256 = str(attempt.get("retrieval_output_sha256", ""))
                if retrieval_paths is None:
                    if recorded_retrieval_sha256:
                        raise ValueError("reserved local solver result claims an unplanned retrieval input")
                else:
                    retrieval_output = retrieval_paths["output_path"]
                    if _sha(retrieval_output.read_bytes()) != recorded_retrieval_sha256:
                        raise ValueError("frozen retrieval output changed after the local solver reservation")
                reopened_result = None
                stdout_digest = attempt.get("stdout_sha256")
                if stdout_digest is not None:
                    stdout_path = _under_root(self.root, str(attempt.get("stdout_path", "")))
                    if not _safe_regular(stdout_path):
                        raise ValueError("reserved local solver stdout is missing or unsafe")
                    stdout_bytes = stdout_path.read_bytes()
                    if len(stdout_bytes) > MAX_SOLVER_OUTPUT_BYTES or _sha(stdout_bytes) != stdout_digest:
                        raise ValueError("reserved local solver stdout changed after completion")
                    try:
                        reopened_result = json.loads(stdout_bytes)
                    except (json.JSONDecodeError, UnicodeDecodeError):
                        reopened_result = None
                    if reopened_result is not None and (
                        not isinstance(reopened_result, dict)
                        or reopened_result.get("run_id") != attempt.get("run_id")
                        or reopened_result.get("problem_id") != member.get("problem_id")
                    ):
                        raise ValueError("reserved local solver result is not bound to the exact run and M0 problem")
                    if attempt.get("outcome") == "PASSED" and (
                        not isinstance(reopened_result, dict) or reopened_result.get("solved") is not True
                        or not isinstance(reopened_result.get("proof"), str) or not reopened_result["proof"].strip()
                    ):
                        raise ValueError("passed local solver result no longer contains its exact proof output")
                stderr_digest = attempt.get("stderr_sha256")
                if stderr_digest is not None:
                    stderr_path = _under_root(self.root, str(attempt.get("stderr_path", "")))
                    if not _safe_regular(stderr_path):
                        raise ValueError("reserved local solver stderr is missing or unsafe")
                    stderr_bytes = stderr_path.read_bytes()
                    if len(stderr_bytes) > MAX_SOLVER_OUTPUT_BYTES or _sha(stderr_bytes) != stderr_digest:
                        raise ValueError("reserved local solver stderr changed after completion")
                verification_validation = attempt.get("verification_validation")
                verification_evidence_reopened = False
                if attempt.get("outcome") == "PASSED":
                    if not isinstance(reopened_result, dict) or not isinstance(verification_validation, dict):
                        raise ValueError("passed local solver result has no persisted typed verification validation")
                    if not attempt.get("process_termination", {}).get("cleanup_succeeded") or not attempt.get("container_cleanup", {}).get("cleanup_succeeded"):
                        raise ValueError("passed local solver result lacks confirmed process-tree and exact-container cleanup")
                    validator_binary = self._verify_solver_binary(
                        str(attempt.get("mathcase_binary_path", "")), str(attempt.get("mathcase_binary_sha256", "")),
                    )
                    validation_stdout_relative = str(attempt.get("verification_validation_stdout_path", ""))
                    validation_stderr_relative = str(attempt.get("verification_validation_stderr_path", ""))
                    validation_stdout_path = _under_root(self.root, validation_stdout_relative)
                    validation_stderr_path = _under_root(self.root, validation_stderr_relative)
                    if not _safe_regular(validation_stdout_path) or not _safe_regular(validation_stderr_path):
                        raise ValueError("typed verifier output or diagnostics are missing or unsafe")
                    validation_stdout = validation_stdout_path.read_bytes()
                    validation_stderr = validation_stderr_path.read_bytes()
                    if (
                        len(validation_stdout) > MAX_SOLVER_OUTPUT_BYTES or len(validation_stderr) > MAX_SOLVER_OUTPUT_BYTES
                        or _sha(validation_stdout) != attempt.get("verification_validation_stdout_sha256")
                        or _sha(validation_stderr) != attempt.get("verification_validation_stderr_sha256")
                    ):
                        raise ValueError("typed verifier output or diagnostics changed after completion")
                    try:
                        recorded_validation = self._validation_output(
                            validation_stdout, str(attempt["run_id"]), str(member["problem_id"]),
                            _sha(str(reopened_result["proof"]).encode("utf-8")),
                        )
                    except (ValueError, TypeError, KeyError) as exc:
                        raise ValueError("persisted typed verifier result no longer validates") from exc
                    if recorded_validation != verification_validation:
                        raise ValueError("persisted typed verifier result does not match the completion event")
                    validation_command = self._result_validation_command(
                        validator_binary, problem_path, _under_root(self.root, str(attempt["stdout_path"])),
                        _under_root(self.root, str(attempt["receipt_root"])), str(attempt["run_id"]),
                        str(attempt["lean_sandbox_image"]), str(attempt["pantograph_sandbox_image"]),
                        str(attempt["lean_snapshot_manifest_sha256"]), str(attempt["lean_snapshot_id"]),
                        str(attempt["docker_executable"]),
                        str(attempt.get("retrieval_output_sha256", "")),
                    )
                    try:
                        validator_result, validator_process = self._run_result_validation(validation_command)
                    except (OSError, subprocess.SubprocessError, ValueError) as exc:
                        raise ValueError(f"typed verifier could not reopen the exact M4 receipt: {exc}") from exc
                    if not validator_process.get("cleanup_succeeded") or validator_result.returncode != 0:
                        raise ValueError("typed verifier could not reopen the exact M4 receipt on plan readback")
                    reopened_validation = self._validation_output(
                        validator_result.stdout or b"", str(attempt["run_id"]), str(member["problem_id"]),
                        _sha(str(reopened_result["proof"]).encode("utf-8")),
                    )
                    if reopened_validation != verification_validation:
                        raise ValueError("reopened typed M4 receipt differs from the original validated evidence")
                    verification_evidence_reopened = True
                reopened_attempts.append({
                    "item_id": member["item_id"],
                    "attempt_id": attempt["attempt_id"],
                    "outcome": attempt.get("outcome"),
                    "reason": attempt.get("reason"),
                    "result": reopened_result,
                    "stdout_sha256": stdout_digest,
                    "stderr_sha256": stderr_digest,
                    "evidence_reopened": stdout_digest is not None and stderr_digest is not None,
                    "verification_validation": verification_validation,
                    "verification_evidence_reopened": verification_evidence_reopened,
                    "process_termination": attempt.get("process_termination"),
                    "container_cleanup": attempt.get("container_cleanup"),
                })
                attachment = plan.get("execution", {}).get("attachments", {}).get(member["item_id"])
                if isinstance(attachment, dict):
                    queue_item = state["items"].get(member["item_id"])
                    if not isinstance(queue_item, dict):
                        raise ValueError("attached queue dossier has no matching intake item")
                    reopened_attachments.append(self._reopen_proof_attachment(queue_item, attachment, attempt))
            return {
                "schema_version": "mathcase-problem-queue-plan-v1",
                "journal_head_sha256": _head,
                "plan": plan,
                "reopened_members": reopened_members,
                "reopened_attempts": reopened_attempts,
                "reopened_attachments": reopened_attachments,
            }

    def _reopen_proof_attachment(
        self, item: dict[str, object], attachment: dict[str, object], solver_attempt: dict[str, object],
    ) -> dict[str, object]:
        predecessor_path = _under_root(self.root, str(item.get("dossier_path", "")))
        if not _safe_regular(predecessor_path) or _sha(predecessor_path.read_bytes()) != item.get("dossier_sha256"):
            raise ValueError("queue intake dossier changed; attached proof successor cannot be reopened")
        revision_relative = attachment.get("revision_dossier_path")
        receipt_relative = attachment.get("receipt_copy_path")
        result_relative = attachment.get("result_path")
        stdout_relative = attachment.get("stdout_path")
        stderr_relative = attachment.get("stderr_path")
        for label, relative in (
            ("queue dossier successor", revision_relative), ("queue M4 receipt copy", receipt_relative),
            ("queue attachment result", result_relative), ("queue attachment stdout", stdout_relative),
            ("queue attachment stderr", stderr_relative),
        ):
            if not _safe_local_relative(relative):
                raise ValueError(f"{label} path is unsafe")
        revision_path = _under_root(self.root, str(revision_relative))
        receipt_path = _under_root(self.root, str(receipt_relative))
        result_path = _under_root(self.root, str(result_relative))
        stdout_path = _under_root(self.root, str(stdout_relative))
        stderr_path = _under_root(self.root, str(stderr_relative))
        if not _safe_regular(revision_path) or _sha(revision_path.read_bytes()) != attachment.get("revision_dossier_sha256"):
            raise ValueError("attached queue dossier successor is missing, unsafe, or changed")
        if not _safe_regular(receipt_path) or _sha(receipt_path.read_bytes()) != attachment.get("receipt_sha256"):
            raise ValueError("attached queue M4 receipt copy is missing, unsafe, or changed")
        for path, field, label in (
            (result_path, "result_sha256", "attachment result"),
            (stdout_path, "stdout_sha256", "attachment stdout"),
            (stderr_path, "stderr_sha256", "attachment stderr"),
        ):
            if not _safe_regular(path) or _sha(path.read_bytes()) != attachment.get(field):
                raise ValueError(f"queue {label} evidence is missing, unsafe, or changed")
        if result_path != stdout_path or not _valid_digest(attachment.get("result_sha256")):
            raise ValueError("queue attachment result is not the exact captured command stdout")
        try:
            result_raw = result_path.read_bytes()
            result = json.loads(result_raw)
            dossier = json.loads(revision_path.read_text(encoding="utf-8"))
            receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
            previous = json.loads(predecessor_path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("attached queue dossier, command output, or M4 receipt is not valid JSON") from exc
        if result != attachment.get("result"):
            raise ValueError("queue attachment command output differs from the append-only attachment event")
        if not isinstance(dossier, dict) or not isinstance(previous, dict) or not isinstance(receipt, dict):
            raise ValueError("attached queue dossier or exact M4 receipt has an unsupported structure")
        dossier_case = dossier.get("case")
        dossier_problem = dossier.get("problem")
        previous_case = previous.get("case")
        previous_problem = previous.get("problem")
        if (
            not isinstance(dossier_case, dict) or not isinstance(dossier_problem, dict)
            or not isinstance(previous_case, dict) or not isinstance(previous_problem, dict)
            or dossier_case.get("id") != item.get("case_id")
            or dossier_problem.get("id") != item.get("problem_id")
            or previous_case.get("id") != item.get("case_id")
            or previous_problem.get("id") != item.get("problem_id")
            or not isinstance(previous_case.get("version"), int)
            or dossier_case.get("version") != previous_case["version"] + 1
        ):
            raise ValueError("attached queue dossier successor or predecessor changed its case or problem identity")
        m4_reference = dossier.get("m4_receipt")
        validation = solver_attempt.get("verification_validation")
        proof_output = None
        stdout_digest = solver_attempt.get("stdout_sha256")
        solver_stdout_path = _under_root(self.root, str(solver_attempt.get("stdout_path", "")))
        if not _safe_regular(solver_stdout_path) or not _valid_digest(stdout_digest) or _sha(solver_stdout_path.read_bytes()) != stdout_digest:
            raise ValueError("exact passed queue solver output changed after proof attachment")
        try:
            proof_output = json.loads(solver_stdout_path.read_bytes())
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("exact passed queue solver output is not valid JSON") from exc
        proof = proof_output.get("proof") if isinstance(proof_output, dict) else None
        attempts = dossier.get("attempts")
        solver_attempt_id = attachment.get("solver_attempt_id")
        matching_attempts = [value for value in attempts if isinstance(value, dict) and value.get("id") == solver_attempt_id] if isinstance(attempts, list) else []
        if (
            not isinstance(validation, dict) or not isinstance(proof, str) or not proof.strip()
            or not isinstance(proof_output, dict) or proof_output.get("solved") is not True
            or proof_output.get("run_id") != solver_attempt.get("run_id")
            or proof_output.get("problem_id") != item.get("problem_id")
            or len(matching_attempts) != 1
            or matching_attempts[0].get("outcome") != "PASS"
            or matching_attempts[0].get("run_id") != solver_attempt.get("run_id")
            or matching_attempts[0].get("verified_proof_sha256") != attachment.get("proof_sha256")
            or attachment.get("proof_sha256") != _sha(proof.encode("utf-8"))
            or receipt.get("evidence_id") != attachment.get("receipt_evidence_id")
            or receipt.get("proof_sha256") != attachment.get("proof_sha256")
            or receipt.get("problem_statement_sha256") != validation.get("statement_sha256")
            or m4_reference != {"evidence_id": attachment.get("receipt_evidence_id"), "receipt_sha256": attachment.get("receipt_sha256")}
        ):
            raise ValueError("attached queue dossier does not bind the exact proof, M4 receipt, and passing attempt")
        verifications = dossier.get("verifications")
        gates = {record.get("gate"): record for record in verifications if isinstance(record, dict)} if isinstance(verifications, list) else {}
        if any(gates.get(gate, {}).get("status") != "PASSED" for gate in ("V1", "V2")):
            raise ValueError("attached queue dossier does not show both checked V1/V2 gates")
        if any(gates.get(gate, {}).get("status") != "PENDING" for gate in ("V3", "V4", "V5", "V6", "V7")):
            raise ValueError("queue proof attachment changed a human or research gate")
        return {
            "item_id": item.get("item_id"),
            "plan_id": attachment.get("plan_id"),
            "queue_attempt_id": attachment.get("queue_attempt_id"),
            "revision_dossier_path": revision_relative,
            "revision_dossier_sha256": attachment.get("revision_dossier_sha256"),
            "receipt_copy_path": receipt_relative,
            "receipt_evidence_id": attachment.get("receipt_evidence_id"),
            "receipt_sha256": attachment.get("receipt_sha256"),
            "proof_sha256": attachment.get("proof_sha256"),
            "proof": proof,
            "m4_receipt": receipt,
            "dossier": dossier,
            "delivery_readiness": "NOT_READY",
            "remaining_pending_gates": ["V3", "V4", "V5", "V6", "V7"],
        }

    def attach_successful_result(self, plan_id: str, item_id: str) -> dict[str, object]:
        """Attach one fully reopened PASSED queue result to an immutable dossier successor."""
        if not isinstance(plan_id, str) or not IDENTIFIER.fullmatch(plan_id):
            raise ValueError("batch plan ID is invalid")
        if not isinstance(item_id, str) or not IDENTIFIER.fullmatch(item_id):
            raise ValueError("queue item ID is invalid")
        with self._plan_run_lock(plan_id):
            readback = self.read_plan(plan_id)
            plan = readback["plan"]
            member = next((value for value in plan.get("members", []) if value.get("item_id") == item_id), None)
            reopened_attempt = next((value for value in readback["reopened_attempts"] if value.get("item_id") == item_id), None)
            if not isinstance(member, dict) or not isinstance(reopened_attempt, dict):
                raise ValueError("queue item is not a member of the exact frozen plan")
            if reopened_attempt.get("outcome") != "PASSED" or reopened_attempt.get("verification_evidence_reopened") is not True:
                raise ValueError("only a PASSED queue result with reopened typed M4 evidence can be attached")
            if not reopened_attempt.get("process_termination", {}).get("cleanup_succeeded") or not reopened_attempt.get("container_cleanup", {}).get("cleanup_succeeded"):
                raise ValueError("queue solver process and container cleanup must both be confirmed before attachment")

            with self._lock():
                events, _head, state = self._load()
                current_plan = state["plans"].get(plan_id)
                item = state["items"].get(item_id)
                attempt = current_plan.get("execution", {}).get("attempts", {}).get(item_id) if isinstance(current_plan, dict) else None
                if not isinstance(current_plan, dict) or not isinstance(item, dict) or not isinstance(attempt, dict):
                    raise ValueError("frozen queue result disappeared before dossier attachment")
                if item.get("proof_attachment") is not None:
                    return self._read_unlocked(events, _head, state)
                if state["paused"]:
                    raise ValueError("problem queue is paused; dossier attachment was refused")
                if current_plan.get("execution", {}).get("status") != "COMPLETED" or attempt.get("status") != "PASSED":
                    raise ValueError("dossier attachment requires the exact completed PASSED queue attempt")
                if attempt.get("attempt_id") != reopened_attempt.get("attempt_id") or member.get("dossier_sha256") != item.get("dossier_sha256"):
                    raise ValueError("frozen attempt or intake dossier changed during proof attachment")
                failures = current_plan.get("execution", {}).get("attachment_failures", {}).get(item_id, [])
                attachment_runs_relative = f"data/local/staging/problem-queue/runs/{attempt['attempt_id']}/dossier-attachments"
                attachment_runs_path = _under_root(self.root, attachment_runs_relative)
                existing_runs = []
                if attachment_runs_path.exists():
                    if not _safe_directory(attachment_runs_path):
                        raise ValueError("queue dossier attachment recovery directory is missing or unsafe")
                    existing_runs = list(attachment_runs_path.iterdir())
                    if any(path.is_symlink() or not path.is_dir() or not re.fullmatch(r"[a-f0-9]{32}", path.name) for path in existing_runs):
                        raise ValueError("queue dossier attachment recovery directory contains an unsafe entry")
                attachment_run_number = max(len(failures), len(existing_runs)) + 1
                attachment_attempt_number = len(failures) + 1
                if attachment_run_number > MAX_DOSSIER_ATTACHMENT_RUNS:
                    raise ValueError("queue dossier attachment reached its three-run recovery limit")
                dossier_path = _under_root(self.root, str(member["dossier_path"]))
                if not _safe_regular(dossier_path) or _sha(dossier_path.read_bytes()) != member.get("dossier_sha256"):
                    raise ValueError("frozen intake dossier changed before proof attachment")
                try:
                    original_dossier = json.loads(dossier_path.read_text(encoding="utf-8"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("frozen intake dossier cannot be reopened before proof attachment") from exc
                case = original_dossier.get("case") if isinstance(original_dossier, dict) else None
                version = case.get("version") if isinstance(case, dict) else None
                if not isinstance(version, int) or version < 1:
                    raise ValueError("frozen intake dossier has no valid immutable revision number")
                output_path = str(Path(str(member["dossier_path"])).parent / f"dossier-revision-v{version + 1}.json").replace("\\", "/")
                previous_dossier_sha256 = str(member["dossier_sha256"])
                queue_attempt_id = str(attempt["attempt_id"])

            binary_relative = str(attempt.get("mathcase_binary_path", ""))
            binary_sha256 = str(attempt.get("mathcase_binary_sha256", ""))
            binary_path = self._verify_solver_binary(binary_relative, binary_sha256)
            validation = attempt.get("verification_validation")
            if not isinstance(validation, dict):
                raise ValueError("PASSED queue attempt has no persisted typed M4 validation")
            retrieval_digest = str(attempt.get("retrieval_output_sha256", ""))
            command = [
                str(binary_path), "dossier-attach-queue-m4",
                "--dossier", str(member["dossier_path"]),
                "--problem", str(attempt["problem_path"]),
                "--solve-result", str(attempt["stdout_path"]),
                "--receipt-root", str(attempt["receipt_root"]),
                "--catalog-snapshot", str(member["snapshot_path"]),
                "--output", output_path,
                "--run-id", str(attempt["run_id"]),
                "--queue-item-id", item_id,
                "--plan-id", plan_id,
                "--queue-attempt-id", queue_attempt_id,
                "--lean-image", str(attempt["lean_sandbox_image"]),
                "--pantograph-image", str(attempt["pantograph_sandbox_image"]),
                "--snapshot-manifest-sha256", str(attempt["lean_snapshot_manifest_sha256"]),
                "--snapshot-id", str(attempt["lean_snapshot_id"]),
                "--docker-executable", str(attempt["docker_executable"]),
            ]
            if retrieval_digest:
                command.extend(["--retrieval-output-sha256", retrieval_digest])
            command_bytes = _canonical(command) + b"\n"
            command_sha256 = _sha(command_bytes)
            source_fingerprint = self._go_source_fingerprint()
            attachment_run_id = uuid.uuid4().hex
            attempt_root_relative = f"data/local/staging/problem-queue/runs/{queue_attempt_id}/dossier-attachments/{attachment_run_id}"
            command_relative = attempt_root_relative + "/command.json"
            result_relative = attempt_root_relative + "/stdout.json"
            stderr_relative = attempt_root_relative + "/stderr.txt"
            self._write_new(command_relative, command_bytes)

            environment = os.environ.copy()
            environment.update({"GOPROXY": "off", "GOSUMDB": "off", "GOTOOLCHAIN": "local"})
            if self.attachment_runner is not None:
                completed = self.attachment_runner(
                    command, cwd=str(self.root), env=environment, capture_output=True,
                    text=False, timeout=30, check=False,
                )
                stdout_bytes = completed.stdout.encode("utf-8") if isinstance(completed.stdout, str) else completed.stdout or b""
                stderr_bytes = completed.stderr.encode("utf-8") if isinstance(completed.stderr, str) else completed.stderr or b""
                completed = subprocess.CompletedProcess(command, completed.returncode, stdout_bytes, stderr_bytes)
                termination = {
                    "schema_version": "mathcase-owned-process-termination-v1",
                    "ownership": "INJECTED_ATTACHMENT_TEST_DOUBLE",
                    "timeout_fired": False, "cleanup_attempted": False, "cleanup_succeeded": True,
                    "remaining_owned_processes": 0, "root_exit_code": completed.returncode,
                    "cleanup_method": "not_applicable_test_double",
                }
            else:
                try:
                    completed, termination = self._run_owned_command(command, timeout=30, environment=environment)
                    stdout_bytes = completed.stdout or b""
                    stderr_bytes = completed.stderr or b""
                except OwnedCommandTimeout as exc:
                    stdout_bytes = exc.output or b""
                    stderr_bytes = exc.stderr or b""
                    termination = exc.termination
                    completed = subprocess.CompletedProcess(command, termination.get("root_exit_code", -1), stdout_bytes, stderr_bytes)
                except (OSError, subprocess.SubprocessError, ValueError) as exc:
                    stdout_bytes = b""
                    stderr_bytes = str(exc).encode("utf-8", errors="replace")[:MAX_SOLVER_OUTPUT_BYTES]
                    termination = {
                        "schema_version": "mathcase-owned-process-termination-v1",
                        "ownership": "LOCAL_ATTACHMENT_COMMAND",
                        "timeout_fired": False, "cleanup_attempted": False, "cleanup_succeeded": False,
                        "remaining_owned_processes": None, "root_exit_code": None,
                        "cleanup_method": "launch_or_wait_error",
                    }
                    completed = subprocess.CompletedProcess(command, -1, stdout_bytes, stderr_bytes)

            if len(stdout_bytes) > MAX_SOLVER_OUTPUT_BYTES or len(stderr_bytes) > MAX_SOLVER_OUTPUT_BYTES:
                stderr_bytes = b"queue dossier attachment output exceeded its bounded 4 MiB capture limit"
                stdout_bytes = stdout_bytes[:MAX_SOLVER_OUTPUT_BYTES]
                completed = subprocess.CompletedProcess(command, -1, stdout_bytes, stderr_bytes)
                termination = {**termination, "cleanup_succeeded": False}
            self._write_new(result_relative, stdout_bytes)
            self._write_new(stderr_relative, stderr_bytes)
            result_sha256 = _sha(stdout_bytes)
            stderr_sha256 = _sha(stderr_bytes)
            failure_reason = None
            result = None
            if not termination.get("cleanup_succeeded"):
                failure_reason = "Attachment command process cleanup was not confirmed."
            elif completed.returncode != 0:
                failure_reason = (stderr_bytes.decode("utf-8", errors="replace")[-200:] or f"Attachment command exited {completed.returncode}.")
            else:
                try:
                    result = json.loads(stdout_bytes)
                except (json.JSONDecodeError, UnicodeDecodeError):
                    failure_reason = "Attachment command did not return valid JSON."
                if failure_reason is None:
                    if not isinstance(result, dict) or result.get("schema_version") != "mathcase-queue-m4-dossier-attachment-v1":
                        failure_reason = "Attachment command returned an unsupported result schema."
                    elif (
                        result.get("status") not in {"REVISION_WRITTEN_NOT_READY", "REVISION_ALREADY_ATTACHED"}
                        or result.get("case_id") != member.get("case_id") or result.get("problem_id") != member.get("problem_id")
                        or result.get("queue_item_id") != item_id or result.get("plan_id") != plan_id
                        or result.get("queue_attempt_id") != queue_attempt_id
                        or result.get("solver_attempt_id") != validation.get("attempt_id")
                        or result.get("proof_sha256") != validation.get("proof_sha256")
                        or result.get("receipt_evidence_id") != validation.get("evidence_id")
                        or result.get("receipt_sha256") != validation.get("receipt_sha256")
                        or result.get("previous_dossier_sha256") != previous_dossier_sha256
                        or result.get("revision_dossier_path") != output_path
                        or result.get("receipt_copy_path") != str(Path(str(member["dossier_path"])).parent / "receipts" / f"{validation['evidence_id']}.json").replace("\\", "/")
                        or result.get("remaining_pending_gates") != ["V3", "V4", "V5", "V6", "V7"]
                        or result.get("delivery_readiness") != "NOT_READY"
                        or not _valid_digest(result.get("revision_dossier_sha256"))
                    ):
                        failure_reason = "Attachment command result did not match the exact frozen item, M4 proof, receipt, and predecessor."

            with self._lock():
                events, head, state = self._load()
                current_plan = state["plans"].get(plan_id)
                current_item = state["items"].get(item_id)
                current_attempt = current_plan.get("execution", {}).get("attempts", {}).get(item_id) if isinstance(current_plan, dict) else None
                if (
                    not isinstance(current_plan, dict) or not isinstance(current_item, dict) or not isinstance(current_attempt, dict)
                    or current_attempt.get("attempt_id") != queue_attempt_id or current_attempt.get("status") != "PASSED"
                    or current_item.get("dossier_sha256") != previous_dossier_sha256
                ):
                    raise ValueError("queue item changed during attachment; immutable successor was not added to the journal")
                if current_item.get("proof_attachment") is not None:
                    return self._read_unlocked(events, head, state)
                if failure_reason is not None:
                    failures = current_plan.get("execution", {}).get("attachment_failures", {}).get(item_id, [])
                    failure_payload = {
                        "plan_id": plan_id, "item_id": item_id, "queue_attempt_id": queue_attempt_id,
                        "attachment_run_id": attachment_run_id,
                        "attempt_number": len(failures) + 1, "attachment_run_number": attachment_run_number,
                        "reason": " ".join(str(failure_reason).split())[:240],
                        "command_path": command_relative, "command_sha256": command_sha256,
                        "source_fingerprint": source_fingerprint,
                        "stdout_path": result_relative, "stdout_sha256": result_sha256,
                        "stderr_path": stderr_relative, "stderr_sha256": stderr_sha256,
                        "exit_code": completed.returncode, "process_termination": termination,
                    }
                    if failure_payload["attempt_number"] > MAX_DOSSIER_ATTACHMENT_RUNS:
                        raise ValueError("queue dossier attachment reached its three-run recovery limit")
                    event = _append_event_unlocked(self.event_path, events, head, "DOSSIER_ATTACHMENT_FAILED", failure_payload)
                    events.append(event)
                    state = _projection(events)
                    return self._read_unlocked(events, str(event["event_sha256"]), state)

            assert isinstance(result, dict)
            receipt_copy_path = str(result["receipt_copy_path"])
            payload = {
                "plan_id": plan_id, "item_id": item_id, "queue_item_id": item_id,
                "queue_attempt_id": queue_attempt_id,
                "attachment_id": "attachment-" + _sha(f"{plan_id}\n{item_id}\n{queue_attempt_id}".encode("utf-8"))[:20],
                "attempt_number": attachment_attempt_number,
                "attachment_run_number": attachment_run_number,
                "previous_dossier_path": str(member["dossier_path"]),
                "previous_dossier_sha256": previous_dossier_sha256,
                "revision_dossier_path": str(result["revision_dossier_path"]),
                "revision_dossier_sha256": str(result["revision_dossier_sha256"]),
                "receipt_copy_path": receipt_copy_path,
                "receipt_evidence_id": str(result["receipt_evidence_id"]),
                "receipt_sha256": str(result["receipt_sha256"]),
                "proof_sha256": str(result["proof_sha256"]),
                "solver_attempt_id": str(result["solver_attempt_id"]),
                "result_path": result_relative, "result_sha256": result_sha256,
                "stdout_path": result_relative, "stdout_sha256": result_sha256,
                "stderr_path": stderr_relative, "stderr_sha256": stderr_sha256,
                "command_path": command_relative, "command_sha256": command_sha256,
                "source_fingerprint": source_fingerprint, "binary_sha256": binary_sha256,
                "exit_code": completed.returncode, "process_termination": termination,
                "result": result,
            }
            current_item = state["items"][item_id]
            current_attempt = state["plans"][plan_id]["execution"]["attempts"][item_id]
            self._reopen_proof_attachment(current_item, payload, current_attempt)
            with self._lock():
                events, head, state = self._load()
                current_item = state["items"].get(item_id)
                current_plan = state["plans"].get(plan_id)
                if not isinstance(current_item, dict) or not isinstance(current_plan, dict):
                    raise ValueError("queue item or frozen plan disappeared before attachment commit")
                if current_item.get("proof_attachment") is not None:
                    return self._read_unlocked(events, head, state)
                current_attempt = current_plan.get("execution", {}).get("attempts", {}).get(item_id)
                if state["paused"]:
                    raise ValueError("problem queue was paused during dossier attachment; journal commit was refused")
                if (
                    current_plan.get("execution", {}).get("status") != "COMPLETED"
                    or not isinstance(current_attempt, dict)
                    or current_attempt.get("attempt_id") != queue_attempt_id
                    or current_attempt.get("status") != "PASSED"
                    or current_item.get("dossier_sha256") != previous_dossier_sha256
                ):
                    raise ValueError("queue intake dossier changed before attachment commit")
                event = _append_event_unlocked(self.event_path, events, head, "DOSSIER_PROOF_ATTACHED", payload)
                events.append(event)
                state = _projection(events)
                return self._read_unlocked(events, str(event["event_sha256"]), state)

    def create_plan(self, item_ids: list[str], idempotency_key: str) -> dict[str, object]:
        if not IDEMPOTENCY_KEY.fullmatch(idempotency_key):
            raise ValueError("idempotency_key must be 32 lowercase hexadecimal characters")
        if not isinstance(item_ids, list) or not item_ids or len(item_ids) > MAX_QUEUE_ITEMS:
            raise ValueError("a frozen plan must contain between one and eight queue items")
        if any(not isinstance(item_id, str) or not IDENTIFIER.fullmatch(item_id) for item_id in item_ids):
            raise ValueError("frozen plan contains an invalid queue item ID")
        if len(set(item_ids)) != len(item_ids):
            raise ValueError("frozen plan membership contains duplicate queue item IDs")
        limits = {
            "max_items": MAX_QUEUE_ITEMS,
            "max_local_attempts_per_item": 1,
            "max_wall_clock_seconds_per_item": MAX_PLAN_WALL_SECONDS,
            "max_provider_calls": 0,
            "provider_cost_reservation_micro_usd": 0,
        }
        with self._lock():
            events, head, state = self._load()
            existing_plan_id = state["plan_idempotency"].get(idempotency_key)
            if existing_plan_id:
                existing = state["plans"][str(existing_plan_id)]
                if [member["item_id"] for member in existing["members"]] != item_ids:
                    raise ValueError("plan idempotency key was already used for different fixed membership")
                return self._read_unlocked(events, head, state)
            if state["paused"]:
                raise ValueError("problem queue is paused; resume it before freezing a plan")
            if len(state["plans"]) >= MAX_FROZEN_PLANS:
                raise ValueError("problem queue reached its eight-plan limit")
            selected = []
            for item_id in item_ids:
                item = state["items"].get(item_id)
                if not isinstance(item, dict):
                    raise ValueError(f"queue item {item_id} does not exist")
                if item.get("proof_attachment") is not None or item.get("status") == "PROOF_ATTACHED_NOT_READY":
                    raise ValueError(f"queue item {item_id} already has its one checked proof attached")
                if not isinstance(item.get("dossier_sha256"), str) or not re.fullmatch(r"[0-9a-f]{64}", item["dossier_sha256"]):
                    raise ValueError(f"queue item {item_id} has no pinned dossier to freeze")
                snapshot_path = _under_root(self.root, str(item.get("snapshot_path", "")))
                dossier_path = _under_root(self.root, str(item.get("dossier_path", "")))
                if not _safe_regular(snapshot_path) or _sha(snapshot_path.read_bytes()) != item.get("snapshot_file_sha256"):
                    raise ValueError(f"queue item {item_id} M0 snapshot changed; plan creation was refused")
                if not _safe_regular(dossier_path) or _sha(dossier_path.read_bytes()) != item.get("dossier_sha256"):
                    raise ValueError(f"queue item {item_id} dossier changed; plan creation was refused")
                try:
                    dossier = json.loads(dossier_path.read_text(encoding="utf-8"))
                    snapshot = json.loads(snapshot_path.read_text(encoding="utf-8"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError(f"queue item {item_id} dossier cannot be reopened") from exc
                case = dossier.get("case") if isinstance(dossier, dict) else None
                problem = dossier.get("problem") if isinstance(dossier, dict) else None
                m0_problems = snapshot.get("problems") if isinstance(snapshot, dict) else None
                m0_matches = [value for value in m0_problems if isinstance(value, dict) and value.get("id") == item.get("problem_id")] if isinstance(m0_problems, list) else []
                if (
                    not isinstance(case, dict) or not isinstance(problem, dict)
                    or case.get("id") != item.get("case_id") or problem.get("id") != item.get("problem_id")
                    or len(m0_matches) != 1 or problem.get("statement") != m0_matches[0].get("informal_statement")
                    or problem.get("lean_statement") != m0_matches[0].get("lean_statement")
                ):
                    raise ValueError(f"queue item {item_id} dossier identity changed; plan creation was refused")
                owner_use_error = None
                try:
                    current_uses = _problem_allowed_uses(snapshot, m0_matches[0], item.get("source_uses"))
                    current_owner_use = _validate_owner_use_reference(
                        self.root, snapshot, m0_matches[0],
                        {"owner_use_reference": item.get("owner_use_reference")}, current_uses,
                    )
                    if current_uses != item.get("source_uses") or current_owner_use != item.get("owner_use_reference"):
                        raise ValueError("owner-use permission differs from the exact intake reservation")
                except (OSError, ValueError, json.JSONDecodeError, TypeError) as exc:
                    owner_use_error = str(exc)[:240]
                selected.append({**item, "_owner_use_error": owner_use_error})
            members = [{
                "item_id": item["item_id"],
                "problem_id": item["problem_id"],
                "case_id": item["case_id"],
                "snapshot_path": item["snapshot_path"],
                "snapshot_file_sha256": item["snapshot_file_sha256"],
                "m0_content_sha256": item["m0_content_sha256"],
                "statement_sha256": item["statement_sha256"],
                "dossier_path": item["dossier_path"],
                "dossier_sha256": item.get("dossier_sha256"),
                "source_uses": list(item.get("source_uses", [])),
                "owner_use_reference": item.get("owner_use_reference"),
                "forecast_reference": item.get("forecast_reference"),
                "retrieval_reference": item.get("retrieval_reference"),
                "intake_status": item["status"],
            } for item in selected]
            if any(
                sorted(member["item_id"] for member in existing["members"]) == sorted(item_ids)
                for existing in state["plans"].values()
            ):
                raise ValueError("the exact fixed membership already has a frozen plan")
            outcomes = []
            for item in selected:
                blockers = []
                if item.get("status") != "READY":
                    blockers.append(str(item.get("hold_reason") or f"Intake status is {item.get('status', 'unknown')}"))
                if "LOCAL_PROOF_ATTEMPT" not in item.get("source_uses", []):
                    blockers.append("The pinned M0 rights record does not authorize a local proof attempt.")
                if item.get("_owner_use_error"):
                    blockers.append(f"Owner-use evidence could not be reopened: {item['_owner_use_error']}")
                elif "LOCAL_PROOF_ATTEMPT" in item.get("source_uses", []) and not isinstance(item.get("owner_use_reference"), dict):
                    blockers.append("No hash-pinned owner-use permission is attached to this item.")
                if item.get("retrieval_reference") is not None:
                    try:
                        _retrieval_paths(self.root, item.get("retrieval_reference"), item.get("source_uses"))
                    except (OSError, ValueError) as exc:
                        blockers.append(f"Retrieval inputs are not ready: {exc}.")
                forecast_reference = item.get("forecast_reference")
                if not isinstance(forecast_reference, dict):
                    blockers.append("No validated pre-attempt forecast is attached to this queue item.")
                else:
                    valid, forecast_reason = self._validate_forecast(item, forecast_reference)
                    if not valid:
                        blockers.append(forecast_reason)
                if blockers:
                    outcomes.append({"item_id": item["item_id"], "outcome": "BLOCKED", "reason": " ".join(blockers)[:240]})
                else:
                    outcomes.append({"item_id": item["item_id"], "outcome": "READY", "reason": "M0 proof permission, statement review, pinned dossier, and typed pre-attempt forecast reopened."})
            ready_count = sum(outcome["outcome"] == "READY" for outcome in outcomes)
            plan_id = f"plan-{idempotency_key[:16]}"
            payload = {
                "plan_id": plan_id,
                "idempotency_key": idempotency_key,
                "membership_sha256": _sha(_canonical(members)),
                "members": members,
                "limits": limits,
                "forecast_state": "VALIDATED" if ready_count else "NOT_CREATED_BLOCKED",
                "forecast_reason": "Typed M1 forecast artifacts were reopened against exact M0 statements before freezing this plan." if ready_count else "No member has complete item-level local proof permission, a passed statement audit, and a typed pre-attempt forecast; no forecast or attempt was fabricated.",
                "outcomes": outcomes,
                "plan_state": "READY" if ready_count else "BLOCKED",
                "provider_dispatches": 0,
                "local_solver_dispatches": 0,
                "source_queue_head_sha256": head,
            }
            event = _append_event_unlocked(self.event_path, events, head, "BATCH_PLAN_CREATED", payload)
            events.append(event)
            head = str(event["event_sha256"])
            state = _projection(events)
            return self._read_unlocked(events, head, state)

    def dispatch_plan(self, plan_id: str, idempotency_key: str) -> dict[str, object]:
        """Run ready plan members once; retries resume unstarted members, never reserved attempts."""
        if not isinstance(plan_id, str) or not IDENTIFIER.fullmatch(plan_id):
            raise ValueError("batch plan ID is invalid")
        if not IDEMPOTENCY_KEY.fullmatch(idempotency_key):
            raise ValueError("dispatch idempotency key must be 32 lowercase hexadecimal characters")
        with self._plan_run_lock(plan_id):
            with self._lock():
                events, head, state = self._load()
                plan = state["plans"].get(plan_id)
                if not isinstance(plan, dict):
                    raise ValueError("batch plan does not exist")
                if plan.get("plan_state") != "READY":
                    raise ValueError("frozen plan is blocked; no local solver attempt was started")
                if state["paused"]:
                    raise ValueError("problem queue is paused; resume it before local solver dispatch")
                existing_plan = state["dispatch_idempotency"].get(idempotency_key)
                if existing_plan is not None and existing_plan != plan_id:
                    raise ValueError("dispatch idempotency key was already used for a different frozen plan")
                existing_key = plan.get("execution", {}).get("dispatch_idempotency_key")
                if existing_key is not None and existing_key != idempotency_key:
                    raise ValueError("a frozen plan can only be resumed with its original dispatch idempotency key")
                if plan.get("execution", {}).get("status") == "COMPLETED":
                    return self._read_unlocked(events, head, state)

            settings = self._validate_local_solver_settings()
            if self.solver_runner is None:
                settings = self._build_solver_binary(plan_id, idempotency_key, settings)
            else:
                fake_binary = self._verify_solver_binary(
                    settings.get("mathcase_binary_path", ""), settings.get("mathcase_binary_sha256", ""),
                )
                settings["mathcase_binary"] = str(fake_binary)
            with self._lock():
                events, head, state = self._load()
                plan = state["plans"].get(plan_id)
                if not isinstance(plan, dict) or plan.get("plan_state") != "READY" or state["paused"]:
                    raise ValueError("frozen plan or queue state changed before local solver reservation")
                execution = plan.get("execution", {})
                existing_key = execution.get("dispatch_idempotency_key")
                if existing_key is None:
                    event = _append_event_unlocked(self.event_path, events, head, "PLAN_DISPATCH_REQUESTED", {
                        "plan_id": plan_id,
                        "idempotency_key": idempotency_key,
                        "membership_sha256": plan["membership_sha256"],
                    })
                    events.append(event)
                    state = _projection(events)
                    plan = state["plans"][plan_id]
                elif existing_key != idempotency_key:
                    raise ValueError("a frozen plan can only be resumed with its original dispatch idempotency key")

            # A process may have ended between reservation and completion. The
            # at-most-once policy records uncertainty and moves on to untouched
            # members; it never redispatches an ambiguous attempt.
            for item_id, attempt in list(plan.get("execution", {}).get("attempts", {}).items()):
                if attempt.get("status") != "RESERVED":
                    continue
                recovery_settings = dict(settings)
                recovery_settings["docker"] = str(attempt.get("docker_executable", settings["docker_executable"]))
                cleanup = self._cleanup_owned_containers(recovery_settings, str(attempt.get("run_id", attempt.get("attempt_id", "")))) if self.solver_runner is None else {
                    "schema_version": "mathcase-labeled-container-cleanup-v1", "run_id": attempt.get("run_id"),
                    "filter": "injected-runner-no-containers", "enumerated_container_ids": [],
                    "removed_container_ids": [], "remaining_container_ids": [],
                    "cleanup_succeeded": True, "errors": [],
                }
                if not cleanup.get("cleanup_succeeded"):
                    raise ValueError("interrupted local solver run still has an unconfirmed owned container; no new attempt was started")
                self._finish_solver_attempt(
                    plan_id,
                    item_id,
                    str(attempt["attempt_id"]),
                    "INFRASTRUCTURE_ERROR",
                    "Interrupted after durable reservation; the result is unknown and at-most-once policy prevents redispatch.",
                    "DISPATCH_INTERRUPTED_UNKNOWN",
                    None,
                    None,
                    None,
                    process_termination={
                        "schema_version": "mathcase-owned-process-termination-v1",
                        "ownership": "OWNER_EXIT_CONFIRMED_BY_JOB_OR_PROCESS_GROUP_RECOVERY",
                        "timeout_fired": False, "cleanup_attempted": True,
                        "cleanup_succeeded": True, "remaining_owned_processes": 0,
                        "cleanup_method": "reserved-run-recovery",
                    },
                    container_cleanup=cleanup,
                )

            for member in plan["members"]:
                if not any(outcome.get("item_id") == member["item_id"] and outcome.get("outcome") == "READY" for outcome in plan.get("outcomes", [])):
                    continue
                with self._lock():
                    events, head, state = self._load()
                    plan = state["plans"].get(plan_id)
                    if not isinstance(plan, dict):
                        raise ValueError("batch plan disappeared during local solver execution")
                    execution = plan["execution"]
                    if member["item_id"] in execution["attempts"]:
                        continue
                    if state["paused"]:
                        raise ValueError("problem queue was paused before the next local solver reservation")

                reopened = self.read_plan(plan_id)
                current_member = next((value for value in reopened["plan"]["members"] if value.get("item_id") == member["item_id"]), None)
                if current_member is None:
                    raise ValueError("frozen plan member disappeared during readback")
                valid, forecast_reason = self._validate_forecast(current_member, current_member.get("forecast_reference") or {})
                if not valid:
                    raise ValueError(f"local solver dispatch refused after forecast recheck: {forecast_reason}")
                dossier_path = _under_root(self.root, str(current_member["dossier_path"]))
                dossier_raw = dossier_path.read_bytes()
                dossier = json.loads(dossier_raw)
                problem = dossier.get("problem") if isinstance(dossier, dict) else None
                if not isinstance(problem, dict) or problem.get("id") != current_member.get("problem_id"):
                    raise ValueError("frozen dossier no longer contains the exact planned problem")
                snapshot_path = _under_root(self.root, str(current_member["snapshot_path"]))
                snapshot = json.loads(snapshot_path.read_text(encoding="utf-8"))
                m0_problem = next((value for value in snapshot.get("problems", []) if isinstance(value, dict) and value.get("id") == current_member.get("problem_id")), None)
                uses = _problem_allowed_uses(snapshot, m0_problem, current_member.get("source_uses")) if isinstance(m0_problem, dict) else []
                intake_status, _hold = _intake_disposition(m0_problem, uses) if isinstance(m0_problem, dict) else ("RIGHTS_HOLD", "M0 problem missing")
                if intake_status != "READY" or "LOCAL_PROOF_ATTEMPT" not in uses:
                    raise ValueError("local solver dispatch refused because exact M0 local-proof permission or statement review is absent")
                if _sha(str(m0_problem["informal_statement"]).encode("utf-8")) != current_member.get("statement_sha256"):
                    raise ValueError("local solver dispatch refused because the M0 statement digest changed")
                retrieval_output_sha256 = ""
                retrieval_reference = current_member.get("retrieval_reference")
                if retrieval_reference is not None:
                    retrieval_paths = _retrieval_paths(self.root, retrieval_reference, current_member.get("source_uses"))
                    assert retrieval_paths is not None
                    retrieval_output_sha256 = _sha(retrieval_paths["output_path"].read_bytes())

                attempt_id = "attempt-" + _sha(f"{plan_id}\n{member['item_id']}\n1".encode("utf-8"))[:20]
                run_relative = f"data/local/staging/problem-queue/runs/{attempt_id}"
                run_root = _under_root(self.root, run_relative)
                run_root.mkdir(parents=True, exist_ok=True)
                lean_problem = {key: problem[key] for key in ("id", "title", "statement", "lean_statement", "source_ids", "m0_status") if key in problem}
                problem_bytes = _canonical(lean_problem) + b"\n"
                problem_relative = run_relative + "/problem.json"
                problem_path = _under_root(self.root, problem_relative)
                if problem_path.exists():
                    if not _safe_regular(problem_path) or problem_path.read_bytes() != problem_bytes:
                        raise ValueError("existing solver input does not match the frozen dossier; no attempt was dispatched")
                else:
                    self._write_new(problem_relative, problem_bytes)
                command = self._solver_command(settings, problem_path, attempt_id, run_root, current_member)
                command_sha256 = _sha(_canonical(command))
                stdout_relative = run_relative + "/stdout.json"
                stderr_relative = run_relative + "/stderr.txt"
                validation_stdout_relative = run_relative + "/verification-validation.json"
                validation_stderr_relative = run_relative + "/verification-validation.stderr.txt"
                receipt_root_relative = run_relative + "/receipts"
                reservation = {
                    "plan_id": plan_id,
                    "item_id": member["item_id"],
                    "attempt_id": attempt_id,
                    "attempt_number": 1,
                    "run_id": attempt_id,
                    "problem_path": problem_relative,
                    "problem_sha256": _sha(problem_bytes),
                    "forecast_sha256": current_member["forecast_reference"]["digest"],
                    "command_sha256": command_sha256,
                    "stdout_path": stdout_relative,
                    "stderr_path": stderr_relative,
                    "receipt_root": receipt_root_relative,
                    "verification_validation_stdout_path": validation_stdout_relative,
                    "verification_validation_stderr_path": validation_stderr_relative,
                    "mathcase_binary_path": settings["mathcase_binary_path"],
                    "mathcase_binary_sha256": settings["mathcase_binary_sha256"],
                    "mathcase_source_fingerprint": settings["mathcase_source_fingerprint"],
                    "lean_sandbox_image": settings["lean_sandbox_image"],
                    "pantograph_sandbox_image": settings["pantograph_sandbox_image"],
                    "lean_snapshot_manifest_sha256": settings["lean_snapshot_manifest_sha256"],
                    "lean_snapshot_id": settings["lean_snapshot_id"],
                    "docker_executable": settings["docker_executable"],
                    "retrieval_output_sha256": retrieval_output_sha256,
                    "max_wall_clock_seconds": MAX_PLAN_WALL_SECONDS,
                    "provider_calls_reserved": 0,
                    "provider_cost_reservation_micro_usd": 0,
                }
                with self._lock():
                    events, head, state = self._load()
                    current_plan = state["plans"].get(plan_id)
                    if not isinstance(current_plan, dict) or state["paused"]:
                        raise ValueError("problem queue changed before durable local solver reservation")
                    if member["item_id"] in current_plan["execution"]["attempts"]:
                        continue
                    event = _append_event_unlocked(self.event_path, events, head, "SOLVER_ATTEMPT_RESERVED", reservation)
                    events.append(event)

                environment = os.environ.copy()
                environment.update({"GOPROXY": "off", "GOSUMDB": "off", "GOTOOLCHAIN": "local"})
                environment["MATHCASE_QUEUE_RUN_ID"] = attempt_id
                run_result: subprocess.CompletedProcess[bytes] | None = None
                failure_code = ""
                process_termination: dict[str, object] = {}
                try:
                    if self.solver_runner is not None:
                        run_result = self.solver_runner(
                            command, cwd=str(self.root), env=environment, capture_output=True,
                            text=False, timeout=MAX_PLAN_WALL_SECONDS, check=False,
                        )
                        process_termination = {
                            "schema_version": "mathcase-owned-process-termination-v1",
                            "ownership": "INJECTED_SOLVER_TEST_DOUBLE",
                            "timeout_fired": False, "cleanup_attempted": False,
                            "cleanup_succeeded": True, "remaining_owned_processes": 0,
                            "root_exit_code": run_result.returncode, "cleanup_method": "not_applicable_test_double",
                        }
                    else:
                        run_result, process_termination = self._run_owned_command(command, timeout=MAX_PLAN_WALL_SECONDS, environment=environment)
                    stdout_bytes = run_result.stdout or b""
                    stderr_bytes = run_result.stderr or b""
                except subprocess.TimeoutExpired as exc:
                    stdout_bytes = exc.output or b""
                    stderr_bytes = exc.stderr or b""
                    failure_code = "LOCAL_SOLVER_TIMEOUT"
                    process_termination = getattr(exc, "termination", {
                        "schema_version": "mathcase-owned-process-termination-v1",
                        "ownership": "UNCONFIRMED_TIMEOUT_RUNNER",
                        "timeout_fired": True, "cleanup_attempted": False,
                        "cleanup_succeeded": False, "remaining_owned_processes": None,
                    })
                except (OSError, subprocess.SubprocessError) as exc:
                    stdout_bytes = b""
                    stderr_bytes = str(exc).encode("utf-8", errors="replace")[:MAX_SOLVER_OUTPUT_BYTES]
                    failure_code = "LOCAL_SOLVER_LAUNCH_ERROR"
                    process_termination = {
                        "schema_version": "mathcase-owned-process-termination-v1",
                        "ownership": "LAUNCH_FAILED_BEFORE_PROCESS_CREATION",
                        "timeout_fired": False, "cleanup_attempted": False,
                        "cleanup_succeeded": True, "remaining_owned_processes": 0,
                        "cleanup_method": "no-process-started",
                    }
                if isinstance(stdout_bytes, str):
                    stdout_bytes = stdout_bytes.encode("utf-8")
                if isinstance(stderr_bytes, str):
                    stderr_bytes = stderr_bytes.encode("utf-8")
                stdout_bytes = stdout_bytes[:MAX_SOLVER_OUTPUT_BYTES]
                stderr_bytes = stderr_bytes[:MAX_SOLVER_OUTPUT_BYTES]
                stdout_digest = _sha(stdout_bytes)
                stderr_digest = _sha(stderr_bytes)
                try:
                    self._write_new(stdout_relative, stdout_bytes)
                    self._write_new(stderr_relative, stderr_bytes)
                except (OSError, ValueError) as exc:
                    failure_code = "LOCAL_SOLVER_EVIDENCE_WRITE_ERROR"
                    stderr_bytes = str(exc).encode("utf-8", errors="replace")[:MAX_SOLVER_OUTPUT_BYTES]
                    stderr_digest = _sha(stderr_bytes)

                if self.solver_runner is not None:
                    container_cleanup = {
                        "schema_version": "mathcase-labeled-container-cleanup-v1", "run_id": attempt_id,
                        "filter": "injected-runner-no-containers", "enumerated_container_ids": [],
                        "removed_container_ids": [], "remaining_container_ids": [],
                        "cleanup_succeeded": True, "errors": [],
                    }
                else:
                    container_cleanup = self._cleanup_owned_containers(settings, attempt_id)
                if process_termination.get("cleanup_succeeded") is not True or container_cleanup.get("cleanup_succeeded") is not True:
                    raise ValueError("owned solver process or exact Docker container cleanup is unconfirmed; durable reservation remains and no next run may start")

                outcome = "INFRASTRUCTURE_ERROR"
                reason = failure_code or "The local solver did not produce a reconciled result."
                exit_code = run_result.returncode if run_result is not None else None
                verification_validation: dict[str, object] | None = None
                validation_stdout_bytes = b""
                validation_stderr_bytes = b""
                validation_process_termination: dict[str, object] | None = None
                if not failure_code and run_result is not None:
                    try:
                        result_json = json.loads(stdout_bytes)
                    except (json.JSONDecodeError, UnicodeDecodeError):
                        result_json = None
                    if isinstance(result_json, dict) and result_json.get("run_id") == attempt_id and result_json.get("problem_id") == member["problem_id"]:
                        if run_result.returncode == 0 and result_json.get("solved") is True and isinstance(result_json.get("proof"), str) and result_json["proof"].strip():
                            validation_command = self._result_validation_command(
                                _under_root(self.root, settings["mathcase_binary_path"]), problem_path,
                                _under_root(self.root, stdout_relative), _under_root(self.root, receipt_root_relative),
                                attempt_id, settings["lean_sandbox_image"], settings["pantograph_sandbox_image"],
                                settings["lean_snapshot_manifest_sha256"], settings["lean_snapshot_id"],
                                settings["docker_executable"], retrieval_output_sha256,
                            )
                            try:
                                validator_result, validation_process_termination = self._run_result_validation(validation_command)
                                validation_stdout_bytes = validator_result.stdout or b""
                                validation_stderr_bytes = validator_result.stderr or b""
                                if not validation_process_termination.get("cleanup_succeeded"):
                                    raise ValueError("typed verifier process cleanup was not confirmed")
                                if validator_result.returncode == 0:
                                    verification_validation = self._validation_output(
                                        validation_stdout_bytes, attempt_id, str(member["problem_id"]), _sha(result_json["proof"].encode("utf-8")),
                                    )
                                    outcome, reason = "PASSED", "Exact solver output and typed M4 kernel/axiom receipt reopened against the frozen M0 problem, proof, run, images, and snapshot."
                                else:
                                    failure_code = "SOLVER_RESULT_VERIFICATION_FAILED"
                                    reason = (validation_stderr_bytes.decode("utf-8", errors="replace")[-800:] or "Typed M4 evidence was missing or did not match the exact proof/run.")
                            except (OSError, subprocess.SubprocessError, ValueError) as exc:
                                failure_code = "SOLVER_RESULT_VERIFICATION_FAILED"
                                reason = str(exc)[:240]
                        elif run_result.returncode == 1 and result_json.get("solved") is False:
                            outcome, reason = "FAILED", "The bounded local search completed without a Lean-verified proof."
                        else:
                            reason = "The local solver exit code and exact-run result record did not agree."
                    else:
                        reason = "The local solver output was not a valid result for the reserved run and exact problem."
                try:
                    self._write_new(validation_stdout_relative, validation_stdout_bytes)
                    self._write_new(validation_stderr_relative, validation_stderr_bytes)
                except (OSError, ValueError) as exc:
                    if outcome == "PASSED":
                        outcome = "INFRASTRUCTURE_ERROR"
                    failure_code = "LOCAL_VALIDATION_EVIDENCE_WRITE_ERROR"
                    reason = str(exc)[:240]
                    verification_validation = None
                if validation_process_termination is not None and validation_process_termination.get("cleanup_succeeded") is not True:
                    raise ValueError("typed verifier process cleanup is unconfirmed; durable reservation remains and no next run may start")
                self._finish_solver_attempt(
                    plan_id, member["item_id"], attempt_id, outcome, reason, failure_code,
                    stdout_digest, stderr_digest, exit_code,
                    verification_validation=verification_validation,
                    verification_validation_stdout_sha256=_sha(validation_stdout_bytes),
                    verification_validation_stderr_sha256=_sha(validation_stderr_bytes),
                    process_termination=process_termination,
                    container_cleanup=container_cleanup,
                    validation_process_termination=validation_process_termination,
                )

            with self._lock():
                events, head, state = self._load()
                plan = state["plans"].get(plan_id)
                if not isinstance(plan, dict):
                    raise ValueError("batch plan disappeared before dispatch completion")
                if plan.get("execution", {}).get("status") == "RUNNING":
                    event = _append_event_unlocked(self.event_path, events, head, "PLAN_DISPATCH_FINISHED", {"plan_id": plan_id})
                    events.append(event)
                    state = _projection(events)
                return self._read_unlocked(events, str(events[-1]["event_sha256"]) if events else head, state)

    def _finish_solver_attempt(
        self,
        plan_id: str,
        item_id: str,
        attempt_id: str,
        outcome: str,
        reason: str,
        failure_code: str,
        stdout_sha256: str | None,
        stderr_sha256: str | None,
        exit_code: int | None,
        *,
        verification_validation: dict[str, object] | None = None,
        verification_validation_stdout_sha256: str | None = None,
        verification_validation_stderr_sha256: str | None = None,
        process_termination: dict[str, object] | None = None,
        container_cleanup: dict[str, object] | None = None,
        validation_process_termination: dict[str, object] | None = None,
    ) -> None:
        clean_reason = " ".join(str(reason).split())[:240] or "The local solver ended without a result."
        with self._lock():
            events, head, _state = self._load()
            payload = {
                "plan_id": plan_id,
                "item_id": item_id,
                "attempt_id": attempt_id,
                "outcome": outcome,
                "reason": clean_reason,
                "failure_code": failure_code,
                "stdout_sha256": stdout_sha256,
                "stderr_sha256": stderr_sha256,
                "exit_code": exit_code,
                "verification_validation": verification_validation,
                "verification_validation_stdout_sha256": verification_validation_stdout_sha256,
                "verification_validation_stderr_sha256": verification_validation_stderr_sha256,
                "process_termination": process_termination,
                "container_cleanup": container_cleanup,
                "validation_process_termination": validation_process_termination,
            }
            _append_event_unlocked(self.event_path, events, head, "SOLVER_ATTEMPT_FINISHED", payload)

    def _read_unlocked(self, events: list[dict[str, object]], head: str, state: dict[str, object]) -> dict[str, object]:
        items = list(state["items"].values())
        attempts = sum(len(plan.get("execution", {}).get("attempts", {})) for plan in state["plans"].values())
        experimental_attempts = sum(1 for item in items if isinstance(item.get("experimental_attempt"), dict))
        try:
            campaign = _campaign_proposal_view()
        except (OSError, ValueError, json.JSONDecodeError, TypeError) as exc:
            campaign = {
                "schema_version": "mathcase-problem-queue-campaign-view-v1",
                "status": "UNAVAILABLE",
                "source_path": "config/pyramid_campaign_proposal.json",
                "source_file_sha256": CAMPAIGN_PROPOSAL_SHA256,
                "hold_reason": str(exc),
                "execution_manifest": False,
                "slots": [],
            }
        return {
            "schema_version": QUEUE_SCHEMA,
            "state": "PAUSED" if state["paused"] else "OPEN",
            "paused": state["paused"],
            "max_items": MAX_QUEUE_ITEMS,
            "max_attempts_per_item": MAX_INTAKE_ATTEMPTS,
            "attempted_local_runs": attempts,
            "experimental_pre_review_attempts": experimental_attempts,
            "provider_dispatches": 0,
            "event_count": len(events),
            "journal_head_sha256": head,
            "journal_path": QUEUE_PATH,
            "completed_foundation": {
                "case_id": "bootstrap-dossier-0000",
                "problem_id": "mathcase_list_mem_pair_v4331",
                "status": "EXISTING_CHECKED_CASE",
                "note": "Reopened in place from its existing M4 proof and M6 metric receipts; no new attempt is queued.",
            },
            "campaign": campaign,
            "intake_options": self.read_intake_options(),
            "items": items,
            "next_ready_item": next((item["item_id"] for item in items if item.get("status") == "READY"), None),
            "plans": list(state["plans"].values()),
            "latest_plan_id": next(reversed(state["plans"]), None),
            "plan_limits": {
                "max_frozen_plans": MAX_FROZEN_PLANS,
                "max_items": MAX_QUEUE_ITEMS,
                "max_local_attempts_per_item": 1,
                "max_wall_clock_seconds_per_item": MAX_PLAN_WALL_SECONDS,
                "max_provider_calls": 0,
                "provider_cost_reservation_micro_usd": 0,
            },
            "queue_note": "Plans freeze exact membership and record named blockers, pre-attempt forecast status, and hard resource limits. Standard solver attempts require the qualified statement review and typed forecast. A separately labeled owner-authorized experimental replay remains review-pending and is not an M4 attachment. Provider calls remain disabled.",
        }

    def read_intake_options(self) -> list[dict[str, object]]:
        intake_options = []
        for problem_id, option in INTAKE_CATALOG.items():
            status = "SNAPSHOT_UNAVAILABLE"
            reason = "The pinned M0 snapshot is unavailable."
            source_uses: list[str] = []
            owner_use_reference: dict[str, str] | None = None
            title: str | None = None
            source_references: list[dict[str, object]] = []
            try:
                _path, snapshot, problem = _pinned_intake_problem(self.root, problem_id, option)
                title_value = problem.get("title")
                title = title_value if isinstance(title_value, str) else None
                source_references = _intake_source_reference_views(snapshot, problem)
                source_uses = _problem_allowed_uses(snapshot, problem, option.get("source_uses"))
                try:
                    owner_use_reference = _validate_owner_use_reference(self.root, snapshot, problem, option, source_uses)
                except (OSError, ValueError, json.JSONDecodeError, TypeError) as exc:
                    status = "OWNER_USE_EVIDENCE_HOLD"
                    reason = str(exc)
                else:
                    status, hold_reason = _intake_disposition(problem, source_uses)
                    reason = hold_reason or "Statement review and local storage use are recorded in the pinned M0 snapshot."
            except (OSError, ValueError, json.JSONDecodeError, TypeError) as exc:
                reason = str(exc)
            option_view: dict[str, object] = {
                "problem_id": problem_id,
                "snapshot_path": option["snapshot_path"],
                "snapshot_file_sha256": option["snapshot_file_sha256"],
                "requested_uses": list(option["source_uses"]),
                "source_uses": source_uses,
                "source_references": source_references,
                "status": status,
                "hold_reason": reason,
            }
            if title is not None:
                option_view["title"] = title
            if owner_use_reference is not None:
                option_view["owner_use_reference"] = owner_use_reference
            if isinstance(option.get("forecast_reference"), dict):
                option_view["forecast_reference"] = option["forecast_reference"]
            intake_options.append(option_view)
        return intake_options

    def read_statement_review_request(
        self, problem_id: str, queue_item_id: str | None = None,
    ) -> dict[str, object]:
        """Prepare a hash-bound handoff from the current intake pin or an exact held queue reservation."""
        queue_item_binding: dict[str, str] | None = None
        if queue_item_id is not None:
            if not isinstance(queue_item_id, str) or not IDENTIFIER.fullmatch(queue_item_id):
                raise ValueError("statement review queue item ID is invalid")
            with self._lock():
                _events, _head, state = self._load()
                item = state["items"].get(queue_item_id)
                if not isinstance(item, dict):
                    raise ValueError("statement review queue item does not exist")
                if item.get("problem_id") != problem_id:
                    raise ValueError("statement review queue item does not match the requested problem")
                if item.get("status") != "WAITING_STATEMENT_REVIEW":
                    raise ValueError("statement review handoff is available only for an item waiting on statement review")
                snapshot_path_value = item.get("snapshot_path")
                snapshot_file_sha256 = item.get("snapshot_file_sha256")
                source_uses_value = item.get("source_uses")
                case_id = item.get("case_id")
                dossier_sha256 = item.get("dossier_sha256")
                if (
                    not _safe_local_relative(snapshot_path_value)
                    or not _valid_digest(snapshot_file_sha256)
                    or not isinstance(source_uses_value, list)
                    or not source_uses_value
                    or any(use not in ALLOWED_SOURCE_USES for use in source_uses_value)
                    or not isinstance(case_id, str) or not IDENTIFIER.fullmatch(case_id)
                    or not _valid_digest(dossier_sha256)
                ):
                    raise ValueError("statement review queue reservation has an incomplete M0 or dossier binding")
                option = {
                    "snapshot_path": snapshot_path_value,
                    "snapshot_file_sha256": snapshot_file_sha256,
                    "source_uses": list(source_uses_value),
                }
                queue_item_binding = {
                    "item_id": queue_item_id,
                    "case_id": case_id,
                    "intake_dossier_sha256": dossier_sha256,
                }
        else:
            option = INTAKE_CATALOG.get(problem_id)
            if option is None:
                raise ValueError("statement review handoff requires a problem in the local intake allowlist")
        snapshot_path, snapshot, problem = _pinned_intake_problem(self.root, problem_id, option)
        source_uses = _problem_allowed_uses(snapshot, problem, option.get("source_uses"))
        if not source_uses:
            raise ValueError("statement review handoff is unavailable because the pinned M0 source-use binding did not reopen")

        lean_statement = problem.get("lean_statement")
        if not isinstance(lean_statement, str) or not lean_statement.strip():
            raise ValueError("the pinned M0 problem has no exact Lean statement to compare")
        source_ids = problem.get("source_ids")
        sources = snapshot.get("sources")
        if not isinstance(source_ids, list) or not isinstance(sources, list):
            raise ValueError("the pinned M0 source links are malformed")
        if not _valid_digest(snapshot.get("content_sha256")):
            raise ValueError("the pinned M0 content digest is missing or malformed")
        source_by_id = {
            source.get("id"): source for source in sources
            if isinstance(source, dict) and isinstance(source.get("id"), str)
        }
        if (
            any(not isinstance(source_id, str) or not source_id for source_id in source_ids)
            or len(source_ids) != len(set(source_ids))
            or any(source_id not in source_by_id for source_id in source_ids)
        ):
            raise ValueError("the pinned M0 problem does not resolve every linked source exactly once")

        source_references = []
        for source_id in source_ids:
            if sum(1 for source in sources if isinstance(source, dict) and source.get("id") == source_id) != 1:
                raise ValueError("the pinned M0 problem does not resolve every linked source exactly once")
            source = source_by_id[source_id]
            if (
                not _valid_digest(source.get("content_sha256"))
                or not isinstance(source.get("url"), str) or not source["url"].strip()
                or not isinstance(source.get("item_locator"), str) or not source["item_locator"].strip()
                or not isinstance(source.get("revision"), str) or not source["revision"].strip()
            ):
                raise ValueError("a pinned M0 source reference lacks its exact locator, revision, or content digest")
            source_references.append({
                "source_id": source_id,
                "url": source.get("url"),
                "item_locator": source.get("item_locator"),
                "revision": source.get("revision"),
                "content_sha256": source.get("content_sha256"),
                "license": source.get("license"),
                "license_terms_url": source.get("license_terms_url"),
                "attribution": source.get("attribution"),
                "rights_status": source.get("rights_status"),
                "allowed_uses": source.get("allowed_uses"),
            })

        declaration_contexts = [
            _statement_review_source_context(self.root, source_by_id[source_id], lean_statement)
            for source_id in source_ids
        ]
        reopened_contexts = [item for item in declaration_contexts if item.get("status") == "SOURCE_BYTES_REOPENED"]
        source_context = reopened_contexts[0] if reopened_contexts else declaration_contexts[0]
        review_questions = [
            "What type are x and y elements of, and what structure does the pinned source require on G?",
            "Does the informal statement quantify over arbitrary x and y in that same G?",
            "Does the wording preserve the exact relation x * (1 / y) = x / y, including how division and inverse are defined?",
            "Does the source inherit any type-class assumptions that the informal sentence adds, omits, or needs to explain? Cite the exact source lines.",
            "Can you restate the exact Lean statement in one or two sentences without adding commutativity or restricting x or y? If not, identify the precise mismatch or unresolved question.",
        ]

        m0_binding: dict[str, object] = {
            "snapshot_path": option["snapshot_path"],
            "snapshot_file_sha256": option["snapshot_file_sha256"],
            "snapshot_content_sha256": snapshot.get("content_sha256"),
            "current_intake_source_uses": source_uses,
        }
        if queue_item_binding is not None:
            m0_binding["queue_item_binding"] = queue_item_binding

        body: dict[str, object] = {
            "schema_version": "mathcase-statement-review-request-v1",
            "request_schema": "schemas/statement-review-request-v1.schema.json",
            "status": "PREPARATION_ONLY",
            "problem_id": problem_id,
            "problem_title": problem.get("title"),
            "problem_statement_sha256": _problem_statement_sha256(
                problem_id, str(problem["informal_statement"]), lean_statement
            ),
            "informal_statement": problem["informal_statement"],
            "lean_statement": lean_statement,
            "m0_binding": m0_binding,
            "source_references": source_references,
            "source_context": source_context,
            "review_questions": review_questions,
            "review_scope": [
                "Compare the informal and Lean statements for meaning and scope.",
                "Check the source-inherited type and type-class assumptions as well as the visible binders.",
                "Record a plain-language restatement as a comparison witness, not as ground truth.",
                "Return PASS to accept the exact statement, MISMATCH with the precise source-backed discrepancy, OUT_OF_SCOPE when this item is not within the reviewer's remit, or NEEDS_REVIEW when evidence is insufficient.",
            ],
            "reviewer_trust": {
                "registry_schema": "schemas/reviewer-trust-registry-v1.schema.json",
                "attestation_schema": "schemas/reviewer-attestation-v1.schema.json",
                "response_schema": "schemas/statement-review-response-v1.schema.json",
                "identity_status": "NOT_VERIFIED",
                "note": "A response is not trusted until its exact attestation bytes are pinned by the host-controlled reviewer trust registry.",
            },
            "boundary": {
                "gate_effect": "NONE",
                "queue_effect": "NONE",
                "solver_dispatch": "NOT_AUTHORIZED_BY_THIS_PACKET",
                "note": "This is a local review request. It is not a reviewer decision, an M0 revision, proof permission, or a gate receipt.",
            },
        }
        body["request_sha256"] = _sha(_canonical(body))
        return body

    def read_statement_review_request_for_item(self, item_id: str) -> dict[str, object]:
        """Reopen the exact M0 snapshot bound to a held queue reservation."""
        if not isinstance(item_id, str) or not IDENTIFIER.fullmatch(item_id):
            raise ValueError("statement review queue item ID is invalid")
        with self._lock():
            _events, _head, state = self._load()
            item = state["items"].get(item_id)
            if not isinstance(item, dict) or not isinstance(item.get("problem_id"), str):
                raise ValueError("statement review queue item does not exist")
            problem_id = str(item["problem_id"])
        return self.read_statement_review_request(problem_id, queue_item_id=item_id)

    def _pre_review_experiment_bundle(self, item: dict[str, object]) -> dict[str, object]:
        if (
            item.get("item_id") != PRE_REVIEW_EXPERIMENT_ITEM_ID
            or item.get("problem_id") != "mathlib_mul_one_div"
            or item.get("snapshot_path") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_PATH
            or item.get("snapshot_file_sha256") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256
            or item.get("status") != "WAITING_STATEMENT_REVIEW"
        ):
            raise ValueError("experimental proof replay can only be linked to the one exact held M0 item")

        root = PRE_REVIEW_EXPERIMENT_EVIDENCE_ROOT

        def read_file(name: str) -> tuple[str, bytes, object]:
            relative = f"{root}/{name}"
            path = _under_root(self.root, relative)
            if not _safe_regular(path):
                raise ValueError(f"experimental proof evidence is missing or unsafe: {relative}")
            raw = path.read_bytes()
            try:
                value = json.loads(raw) if name.endswith(".json") else raw.decode("utf-8")
            except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                raise ValueError(f"experimental proof evidence is not readable: {relative}") from exc
            return relative, raw, value

        def reference(name: str, raw: bytes) -> dict[str, str]:
            return {"path": f"{root}/{name}", "sha256": _sha(raw)}

        _authorization_path, authorization_raw, authorization = read_file("owner-review-deferral.json")
        _prior_path, prior_raw, prior = read_file("local-prior-estimate.json")
        _reservation_path, reservation_raw, reservation = read_file("attempt-reservation.json")
        _source_binding_path, source_binding_raw, source_binding = read_file("environment-and-source-binding.json")
        _command_path, command_raw, command = read_file("command.json")
        _input_path, input_raw, proof_input = read_file("proof-input.lean")
        _run_path, run_raw, run_result = read_file("run-result.json")
        _correction_path, correction_raw, correction = read_file("assessment-correction-r1.json")
        _stdout_path, stdout_raw, stdout = read_file("stdout.txt")
        _stderr_path, stderr_raw, stderr = read_file("stderr.txt")

        pantograph_root = PRE_REVIEW_PANTOGRAPH_EVIDENCE_ROOT

        def read_pantograph_file(name: str) -> tuple[str, bytes, object]:
            relative = f"{pantograph_root}/{name}"
            path = _under_root(self.root, relative)
            if not _safe_regular(path):
                raise ValueError(f"separate Pantograph candidate evidence is missing or unsafe: {relative}")
            raw = path.read_bytes()
            try:
                value = json.loads(raw) if name.endswith(".json") else raw.decode("utf-8")
            except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                raise ValueError(f"separate Pantograph candidate evidence is unreadable: {relative}") from exc
            return relative, raw, value

        _search_request_path, search_request_raw, search_request = read_pantograph_file("search-request.json")
        _search_output_path, search_output_raw, search_output = read_pantograph_file("search-stdout.json")
        _search_trace_path, search_trace_raw, search_trace = read_pantograph_file("search-stderr.txt")
        _search_proof_path, search_proof_raw, search_proof = read_pantograph_file("proof.lean")
        _search_lean_output_path, search_lean_output_raw, search_lean_output = read_pantograph_file("lean-stdout.txt")

        owner_use_relative = "data/local/staging/mathlib-proof-pairs/pilot-20261020-mul-one-div/evidence/owner-use-local-proof-attempt-r2.json"
        owner_use_path = _under_root(self.root, owner_use_relative)
        if not _safe_regular(owner_use_path):
            raise ValueError("experimental proof replay is missing its exact local-use rights record")
        owner_use_raw = owner_use_path.read_bytes()
        try:
            owner_use = json.loads(owner_use_raw)
        except json.JSONDecodeError as exc:
            raise ValueError("experimental proof replay local-use rights record is unreadable") from exc

        snapshot_path = _under_root(self.root, PRE_REVIEW_EXPERIMENT_SNAPSHOT_PATH)
        if not _safe_regular(snapshot_path) or _sha(snapshot_path.read_bytes()) != PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256:
            raise ValueError("experimental proof replay no longer matches its pinned M0 snapshot")
        snapshot = json.loads(snapshot_path.read_text(encoding="utf-8"))
        problem = next((value for value in snapshot.get("problems", []) if isinstance(value, dict) and value.get("id") == "mathlib_mul_one_div"), None)
        if not isinstance(problem, dict) or problem.get("statement_audit", {}).get("passed") is not False:
            raise ValueError("experimental proof replay cannot reopen its still-pending M0 statement audit")

        run_id = "pre-review-mul-one-div-20261026-r1"
        expected_outcome = "EXPERIMENTAL_LOCAL_LEAN_ACCEPTED_REVIEW_PENDING"
        output_text = str(stdout)
        module_sha = "6109c56514a83f4a7aea36bd6e97e0dd2ecfa74142e252b964938161a226d184"
        module_line = module_sha + "  /mathcase/cache/build/lib/lean/Mathlib/Algebra/Group/Basic.olean"
        no_axiom_line = "'mathcaseOwnerPreReviewMulOneDiv' does not depend on any axioms"
        if (
            not isinstance(authorization, dict)
            or authorization.get("schema_version") != "mathcase-owner-review-deferral-v1"
            or authorization.get("owner_message_exact") != PRE_REVIEW_EXPERIMENT_OWNER_MESSAGE
            or authorization.get("qualified_statement_review") != "PENDING"
            or authorization.get("m0_statement_audit_passed") is not False
            or authorization.get("scope", {}).get("max_local_lean_attempts") != 1
            or authorization.get("limits", {}).get("provider_calls") != 0
            or authorization.get("limits", {}).get("gate_promotion") is not False
            or authorization.get("scope", {}).get("queue_item_id") != PRE_REVIEW_EXPERIMENT_ITEM_ID
            or authorization.get("scope", {}).get("snapshot_file_sha256") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256
        ):
            raise ValueError("experimental proof replay lacks the exact one-item owner deferral")
        if (
            not isinstance(prior, dict)
            or prior.get("schema_version") != "mathcase-local-prior-estimate-v1"
            or prior.get("kind") != "PRIOR_ESTIMATE"
            or prior.get("calibration_status") != "UNCALIBRATED_NO_PROBABILITY"
        ):
            raise ValueError("experimental proof replay prior must remain an explicitly uncalibrated local estimate")
        if (
            not isinstance(reservation, dict)
            or reservation.get("schema_version") != "mathcase-owner-authorized-pre-review-lean-reservation-v1"
            or reservation.get("run_id") != run_id
            or reservation.get("attempt_number") != 1
            or reservation.get("attempt_limit") != 1
            or reservation.get("item", {}).get("queue_item_id") != PRE_REVIEW_EXPERIMENT_ITEM_ID
            or reservation.get("item", {}).get("problem_id") != "mathlib_mul_one_div"
            or reservation.get("item", {}).get("snapshot_file_sha256") != PRE_REVIEW_EXPERIMENT_SNAPSHOT_SHA256
            or reservation.get("item", {}).get("informal_statement") != problem.get("informal_statement")
            or reservation.get("item", {}).get("lean_statement") != problem.get("lean_statement")
            or reservation.get("owner_review_deferral_reference", {}).get("sha256") != _sha(authorization_raw)
            or reservation.get("owner_use_reference", {}).get("path") != owner_use_relative
            or reservation.get("owner_use_reference", {}).get("sha256") != _sha(owner_use_raw)
            or reservation.get("prior_reference", {}).get("sha256") != _sha(prior_raw)
            or reservation.get("proof_input", {}).get("sha256") != _sha(input_raw)
            or reservation.get("command_reference", {}).get("sha256") != _sha(command_raw)
            or reservation.get("environment", {}).get("cache_provenance_class") != "MIXED_CACHE_PROVENANCE"
            or reservation.get("source", {}).get("source_id") != "mathlib_group_basic_v4331"
            or reservation.get("source", {}).get("source_revision") != "0df444a360eaa60ab8c11dca51a86af692955474"
            or reservation.get("source", {}).get("source_locator") != "Mathlib/Algebra/Group/Basic.lean"
            or reservation.get("source", {}).get("git_blob_sha256") != "1ba194c84c72d56d485334bb05b2a943627c3a73de91a0b939ab6fd5ea17d1b1"
            or reservation.get("source", {}).get("source_proof_body") != "rw [div_eq_mul_inv, one_mul, div_eq_mul_inv]"
        ):
            raise ValueError("experimental proof reservation no longer binds its exact M0, source, command, and prior")
        bound_source = source_binding.get("source", {}) if isinstance(source_binding, dict) else {}
        bound_environment = source_binding.get("environment", {}) if isinstance(source_binding, dict) else {}
        if (
            not isinstance(owner_use, dict)
            or owner_use.get("schema_version") != "mathcase-source-rights-evidence-v1"
            or owner_use.get("source_id") != "mathlib_group_basic_v4331"
            or owner_use.get("source_revision") != "0df444a360eaa60ab8c11dca51a86af692955474"
            or owner_use.get("item_locator") != "Mathlib/Algebra/Group/Basic.lean"
            or owner_use.get("item_sha256") != "1ba194c84c72d56d485334bb05b2a943627c3a73de91a0b939ab6fd5ea17d1b1"
            or owner_use.get("allowed_uses") != ["LOCAL_STORAGE", "LOCAL_PROOF_ATTEMPT"]
            or bound_source.get("source_id") != "mathlib_group_basic_v4331"
            or bound_source.get("source_revision") != "0df444a360eaa60ab8c11dca51a86af692955474"
            or bound_source.get("source_locator") != "Mathlib/Algebra/Group/Basic.lean"
            or bound_source.get("git_blob_sha256") != "1ba194c84c72d56d485334bb05b2a943627c3a73de91a0b939ab6fd5ea17d1b1"
            or bound_source.get("source_proof_body") != "rw [div_eq_mul_inv, one_mul, div_eq_mul_inv]"
            or bound_environment.get("network_mode") != "none"
            or bound_environment.get("source_mount_read_only") is not True
            or bound_environment.get("cache_mount_read_only") is not True
            or bound_environment.get("cache_provenance_class") != "MIXED_CACHE_PROVENANCE"
        ):
            raise ValueError("experimental proof source binding or local-use rights record does not authorize this exact replay")
        if (
            not isinstance(command, list)
            or "--network=none" not in command
            or "--read-only" not in command
            or command[-1] != "sha256sum /mathcase/cache/build/lib/lean/Mathlib/Algebra/Group/Basic.olean && lean --version && lean /workspace/proof-input.lean"
            or reservation.get("limits", {}).get("lean_invocations") != 1
            or reservation.get("limits", {}).get("retry_after_reservation") is not False
        ):
            raise ValueError("experimental proof command does not retain its offline, read-only, one-shot limits")
        if (
            not isinstance(run_result, dict)
            or run_result.get("schema_version") != "mathcase-owner-authorized-pre-review-lean-result-v1"
            or run_result.get("run_id") != run_id
            or run_result.get("exit_code") != 0
            or run_result.get("process_termination", {}).get("cleanup_succeeded") is not True
            or run_result.get("container_cleanup", {}).get("cleanup_succeeded") is not True
            or run_result.get("stdout_sha256") != _sha(stdout_raw)
            or run_result.get("stderr_sha256") != _sha(stderr_raw)
            or run_result.get("m0_unchanged") is not True
            or run_result.get("m0_statement_audit_passed_after") is not False
            or run_result.get("queue_journal_unchanged") is not True
            or run_result.get("qualified_statement_review") != "PENDING"
            or run_result.get("proof_attachment") != "NOT_PERFORMED"
            or run_result.get("provider_calls") != 0
        ):
            raise ValueError("experimental proof result lacks a clean captured run or pending-review boundary")
        if (
            run_result.get("command_sha256") != _sha(command_raw)
            or run_result.get("proof_input_sha256") != _sha(input_raw)
            or run_result.get("command_path") != f"{root}/command.json"
            or run_result.get("stdout_path") != f"{root}/stdout.txt"
            or run_result.get("stderr_path") != f"{root}/stderr.txt"
        ):
            raise ValueError("experimental proof result does not bind the exact captured command, proof input, or output paths")
        if (
            not isinstance(correction, dict)
            or correction.get("schema_version") != "mathcase-experimental-lean-result-assessment-correction-v1"
            or correction.get("run_id") != run_id
            or correction.get("original_run_result_sha256") != _sha(run_raw)
            or correction.get("stdout_sha256") != _sha(stdout_raw)
            or correction.get("corrected_assessment") != expected_outcome
            or correction.get("new_lean_invocations") != 0
            or correction.get("retry_performed") is not False
            or correction.get("qualified_statement_review") != "PENDING"
        ):
            raise ValueError("experimental proof assessment correction is not bound to the original receipt")
        if (
            module_line not in output_text
            or "Lean (version 4.33.1," not in output_text
            or no_axiom_line not in output_text
            or expected_outcome != "EXPERIMENTAL_LOCAL_LEAN_ACCEPTED_REVIEW_PENDING"
        ):
            raise ValueError("captured Lean output does not support the experimental accepted assessment")

        candidate_proof = "by\n  simp [div_eq_mul_inv]"
        search_request_sha256 = _sha(search_request_raw)
        if (
            not isinstance(search_request, dict)
            or search_request.get("statement") != "∀ (G : Type) [DivInvMonoid G] (x y : G), x * (1 / y) = x / y"
            or search_request.get("imports") != ["Mathlib.Algebra.Group.Defs"]
            or not isinstance(search_output, dict)
            or search_output.get("status") != "solved"
            or search_output.get("proof") != candidate_proof
            or not isinstance(search_output.get("metrics"), dict)
            or search_output["metrics"].get("nodes_expanded") != 1
            or search_output["metrics"].get("tactic_attempts") != 4
            or search_output["metrics"].get("max_depth") != 1
            or not isinstance(search_trace, str)
            or f'"request_sha256":"{search_request_sha256}"' not in search_trace
            or '"attempt":4,"tactic":"simp [div_eq_mul_inv]"' not in search_trace
            or '"solved":true,"open_goals":0' not in search_trace
            or not isinstance(search_proof, str)
            or candidate_proof not in search_proof
            or not isinstance(search_lean_output, str)
            or "'mul_one_div_local_attempt' depends on axioms: [propext]" not in search_lean_output
        ):
            raise ValueError("separate Pantograph candidate does not match its exact recorded search and Lean-output bytes")

        refs = {
            "reservation": reference("attempt-reservation.json", reservation_raw),
            "authorization": reference("owner-review-deferral.json", authorization_raw),
            "prior_estimate": reference("local-prior-estimate.json", prior_raw),
            "source_binding": reference("environment-and-source-binding.json", source_binding_raw),
            "owner_use": {"path": owner_use_relative, "sha256": _sha(owner_use_raw)},
            "proof_input": reference("proof-input.lean", input_raw),
            "run_result": reference("run-result.json", run_raw),
            "assessment_correction": reference("assessment-correction-r1.json", correction_raw),
            "stdout": reference("stdout.txt", stdout_raw),
            "stderr": reference("stderr.txt", stderr_raw),
        }
        summary: dict[str, object] = {
            "run_id": run_id,
            "outcome": expected_outcome,
            "recorded_at_utc": run_result.get("recorded_at_utc"),
            "proof_input_sha256": _sha(input_raw),
            "stdout_sha256": _sha(stdout_raw),
            "assessment_correction_sha256": _sha(correction_raw),
            "lean_version": "Lean 4.33.1",
            "axiom_summary": "Lean reports that the replayed theorem does not depend on any axioms.",
            "source_revision": "0df444a360eaa60ab8c11dca51a86af692955474",
            "source_item_sha256": "1ba194c84c72d56d485334bb05b2a943627c3a73de91a0b939ab6fd5ea17d1b1",
            "source_rights": "LOCAL_STORAGE_AND_LOCAL_PROOF_ATTEMPT_ONLY",
            "cache_provenance_class": "MIXED_CACHE_PROVENANCE",
            "known_result_replay": True,
            "novel_mathematics": False,
            "qualified_statement_review": "PENDING",
            "m0_statement_audit_passed": False,
            "proof_attachment": "NOT_PERFORMED",
            "provider_calls": 0,
            "evidence_references": refs,
        }
        recorded_attempt = item.get("experimental_attempt")
        if isinstance(recorded_attempt, dict):
            _validate_pre_review_experimental_readback(
                recorded_attempt,
                summary,
                reservation,
                run_result,
                correction,
                command_sha256=_sha(command_raw),
                run_result_sha256=_sha(run_raw),
            )
        detail = {
            "schema_version": "mathcase-problem-queue-experimental-attempt-v1",
            "summary": summary,
            "authorization": authorization,
            "prior_estimate": prior,
            "source_binding": source_binding,
            "source_rights": owner_use,
            "reservation": reservation,
            "proof_input": str(proof_input),
            "pantograph_candidate": {
                "classification": "SEPARATE_PRIOR_SEARCH_CANDIDATE_NOT_THE_OWNER_AUTHORIZED_REPLAY_INPUT",
                "search_status": "PROOF_FOUND",
                "proof": candidate_proof,
                "proof_sha256": _sha(candidate_proof.encode("utf-8")),
                "search_metrics": search_output["metrics"],
                "search_request_sha256": search_request_sha256,
                "search_output_sha256": _sha(search_output_raw),
                "search_trace_sha256": _sha(search_trace_raw),
                "proof_file_sha256": _sha(search_proof_raw),
                "saved_lean_output": str(search_lean_output),
                "saved_lean_output_sha256": _sha(search_lean_output_raw),
                "standard_m4_receipt": "NOT_CREATED",
                "provider_calls": 0,
            },
            "run_result": run_result,
            "assessment_correction": correction,
            "stdout": output_text,
            "stderr": str(stderr),
        }
        return {"summary": summary, "detail": detail}

    def record_pre_review_experimental_attempt(self, item_id: str) -> dict[str, object]:
        """Attach the one owner-authorized replay to its held case without changing M0 or M4."""
        if item_id != PRE_REVIEW_EXPERIMENT_ITEM_ID:
            raise ValueError("pre-review experimental attachment is scoped to one exact queue item")
        with self._lock():
            events, head, state = self._load()
            item = state["items"].get(item_id)
            if not isinstance(item, dict):
                raise ValueError("pre-review experimental attempt queue item does not exist")
            bundle = self._pre_review_experiment_bundle(item)
            existing = item.get("experimental_attempt")
            if isinstance(existing, dict):
                if existing.get("run_id") == bundle["summary"].get("run_id"):
                    return self._read_unlocked(events, head, state)
                raise ValueError("queue item already has a different experimental attempt")
            payload = {
                "item_id": item_id,
                **bundle["summary"],
            }
            event = _append_event_unlocked(self.event_path, events, head, "PRE_REVIEW_EXPERIMENTAL_ATTEMPT_RECORDED", payload)
            events.append(event)
            state = _projection(events)
            return self._read_unlocked(events, str(event["event_sha256"]), state)

    def read_pre_review_experimental_attempt(self, item_id: str) -> dict[str, object]:
        if item_id != PRE_REVIEW_EXPERIMENT_ITEM_ID:
            raise ValueError("experimental attempt evidence is scoped to one exact queue item")
        with self._lock():
            _events, _head, state = self._load()
            item = state["items"].get(item_id)
            if not isinstance(item, dict) or not isinstance(item.get("experimental_attempt"), dict):
                raise ValueError("this queue item has no linked experimental attempt")
            return self._pre_review_experiment_bundle(item)["detail"]

    def read_dossier(self, item_id: str) -> dict[str, object]:
        with self._lock():
            _events, head, state = self._load()
            item = state["items"].get(item_id)
            if not isinstance(item, dict) or not isinstance(item.get("dossier_path"), str):
                raise ValueError("queue item has no reopened dossier")
            intake_path = _under_root(self.root, item["dossier_path"])
            snapshot_path = _under_root(self.root, str(item["snapshot_path"]))
            if not _safe_regular(snapshot_path) or _sha(snapshot_path.read_bytes()) != item.get("snapshot_file_sha256"):
                raise ValueError("queue M0 snapshot changed after intake; dossier readback was refused")
            if not _safe_regular(intake_path) or _sha(intake_path.read_bytes()) != item.get("dossier_sha256"):
                raise ValueError("queue intake dossier changed after its original reservation")
            attachment = item.get("proof_attachment")
            reopened_attachment = None
            if isinstance(attachment, dict):
                plan = state["plans"].get(str(attachment.get("plan_id")))
                plan_attempt = plan.get("execution", {}).get("attempts", {}).get(item_id) if isinstance(plan, dict) else None
                if not isinstance(plan_attempt, dict):
                    raise ValueError("attached queue dossier has no matching frozen solver attempt")
                reopened_attachment = self._reopen_proof_attachment(item, attachment, plan_attempt)
                value = reopened_attachment["dossier"]
                dossier_path = reopened_attachment["revision_dossier_path"]
                dossier_sha256 = reopened_attachment["revision_dossier_sha256"]
            else:
                dossier_path = item["dossier_path"]
                dossier_sha256 = item.get("dossier_sha256")
                try:
                    value = json.loads(intake_path.read_text(encoding="utf-8"))
                except (json.JSONDecodeError, UnicodeDecodeError) as exc:
                    raise ValueError("queue dossier is not valid JSON") from exc
                if not isinstance(value, dict):
                    raise ValueError("queue dossier has an unsupported shape")
            return {
                "schema_version": "mathcase-problem-queue-dossier-v1",
                "item_id": item_id,
                "case_id": item.get("case_id"),
                "problem_id": item.get("problem_id"),
                "dossier_path": dossier_path,
                "dossier_sha256": dossier_sha256,
                "intake_dossier_path": item.get("dossier_path"),
                "intake_dossier_sha256": item.get("dossier_sha256"),
                "journal_head_sha256": head,
                "proof_attachment": reopened_attachment,
                "dossier": value,
            }

    def intake(self, problem_id: str, idempotency_key: str) -> dict[str, object]:
        if problem_id not in INTAKE_CATALOG:
            raise ValueError("problem is not in the local intake allowlist")
        if not IDEMPOTENCY_KEY.fullmatch(idempotency_key):
            raise ValueError("idempotency_key must be 32 lowercase hexadecimal characters")
        option = INTAKE_CATALOG[problem_id]
        snapshot_path, snapshot, problem = _pinned_intake_problem(self.root, problem_id, option)
        source_uses = _problem_allowed_uses(snapshot, problem, option.get("source_uses"))
        owner_use_reference = _validate_owner_use_reference(self.root, snapshot, problem, option, source_uses)
        status, hold_reason = _intake_disposition(problem, source_uses)
        if "LOCAL_STORAGE" not in source_uses:
            raise ValueError("the pinned M0 rights record does not authorize local dossier intake; no queue reservation was created")
        content_digest = snapshot.get("content_sha256")
        if not _valid_digest(content_digest):
            raise ValueError("pinned M0 snapshot content digest is invalid")
        with self._lock():
            events, head, state = self._load()
            idempotent_item = state["idempotency"].get(idempotency_key)
            if idempotent_item:
                item = state["items"][str(idempotent_item)]
                if item.get("problem_id") != problem_id:
                    raise ValueError("idempotency key was already used for a different problem")
                if item.get("status") in {"RECONCILIATION_REQUIRED", "INTAKE_FAILED"} and int(item.get("attempt_count", 0)) < MAX_INTAKE_ATTEMPTS:
                    self._complete_reserved(events, head, item, option, snapshot_path)
            else:
                if state["paused"]:
                    raise ValueError("problem queue is paused; resume it before intake")
                if len(state["items"]) >= MAX_QUEUE_ITEMS:
                    raise ValueError("problem queue is at its eight-item limit")
                item_id = f"intake-{problem_id}-{idempotency_key[:12]}"
                case_id = f"queue-{problem_id}-{idempotency_key[:12]}"
                output_relative = f"data/local/staging/problem-queue/cases/{case_id}/dossier-revision-v1.json"
                dossier_path = _under_root(self.root, output_relative)
                if dossier_path.is_symlink() or any(parent.is_symlink() for parent in dossier_path.parents if parent.exists()):
                    raise ValueError("case output path crosses a symbolic link")
                reserved_payload = {
                    "item_id": item_id,
                    "idempotency_key": idempotency_key,
                    "problem_id": problem_id,
                    "case_id": case_id,
                    "snapshot_path": option["snapshot_path"],
                    "snapshot_file_sha256": option["snapshot_file_sha256"],
                    "m0_content_sha256": content_digest,
                    "statement_sha256": _sha(str(problem["informal_statement"]).encode("utf-8")),
                    "source_uses": source_uses,
                    "owner_use_reference": owner_use_reference,
                    "forecast_reference": option.get("forecast_reference"),
                    "retrieval_reference": option.get("retrieval_reference"),
                    "status": status,
                    "hold_reason": hold_reason,
                    "dossier_path": output_relative,
                }
                event = _append_event_unlocked(self.event_path, events, head, "INTAKE_RESERVED", reserved_payload)
                events.append(event)
                head = str(event["event_sha256"])
                item = {**reserved_payload, "attempt_count": 0, "status": "RECONCILIATION_REQUIRED"}
                self._complete_reserved(events, head, item, option, snapshot_path)
        return self.read()

    def _complete_reserved(self, events: list[dict[str, object]], head: str, item: dict[str, object], option: dict[str, object], snapshot_path: Path) -> None:
        dossier_path = _under_root(self.root, str(item["dossier_path"]))
        if dossier_path.exists():
            self._record_created(events, head, item, option, dossier_path)
            return
        dossier_path.parent.mkdir(parents=True, exist_ok=True)
        if dossier_path.is_symlink() or any(parent.is_symlink() for parent in dossier_path.parents if parent.exists()):
            raise ValueError("reserved dossier output path crosses a symbolic link")
        attempts = int(item.get("attempt_count", 0))
        if attempts >= MAX_INTAKE_ATTEMPTS:
            raise ValueError("intake attempt limit is exhausted; the reservation remains preserved for review")
        attempt_event = _append_event_unlocked(self.event_path, events, head, "INTAKE_ATTEMPT", {"item_id": item["item_id"], "attempt": attempts + 1})
        events.append(attempt_event)
        head = str(attempt_event["event_sha256"])
        cli = self.root / "cmd" / "mathcase"
        command = [
            "go", "run", "./cmd/mathcase", "case-init",
            "--snapshot", str(snapshot_path),
            "--problem-id", str(item["problem_id"]),
            "--case-id", str(item["case_id"]),
            "--created-at", _timestamp(),
            "--output", str(dossier_path),
        ]
        environment = os.environ.copy()
        environment.update({"GOPROXY": "off", "GOSUMDB": "off", "GOTOOLCHAIN": "local"})
        try:
            result = self.runner(command, cwd=str(self.root), env=environment, capture_output=True, text=True, timeout=90, check=False)
            if result.returncode != 0 or not dossier_path.exists():
                failure = "CASE_INIT_REFUSED" if result.returncode != 0 else "DOSSIER_NOT_WRITTEN"
                fail_event = _append_event_unlocked(self.event_path, events, head, "INTAKE_FAILED", {"item_id": item["item_id"], "attempt": attempts + 1, "failure_code": failure})
                events.append(fail_event)
                raise ValueError("case initialization failed; the queue reservation and bounded attempt record were preserved")
            self._record_created(events, str(attempt_event["event_sha256"]), item, option, dossier_path)
        except subprocess.TimeoutExpired as exc:
            fail_event = _append_event_unlocked(self.event_path, events, head, "INTAKE_FAILED", {"item_id": item["item_id"], "attempt": attempts + 1, "failure_code": "CASE_INIT_TIMEOUT"})
            events.append(fail_event)
            raise ValueError("case initialization timed out; the queue reservation and bounded attempt record were preserved") from exc

    def _record_created(self, events: list[dict[str, object]], head: str, item: dict[str, object], option: dict[str, object], dossier_path: Path) -> None:
        if not _safe_regular(dossier_path):
            raise ValueError("reserved dossier path is not a safe regular file")
        raw = dossier_path.read_bytes()
        try:
            dossier = json.loads(raw)
        except (json.JSONDecodeError, UnicodeDecodeError) as exc:
            raise ValueError("reserved dossier cannot be reopened as JSON; reservation remains for reconciliation") from exc
        case = dossier.get("case") if isinstance(dossier, dict) else None
        problem = dossier.get("problem") if isinstance(dossier, dict) else None
        snapshot_path = _under_root(self.root, str(item["snapshot_path"]))
        if _sha(snapshot_path.read_bytes()) != item.get("snapshot_file_sha256"):
            raise ValueError("M0 snapshot changed during intake; reserved dossier remains for reconciliation")
        snapshot = json.loads(snapshot_path.read_text(encoding="utf-8"))
        selected = [candidate for candidate in snapshot.get("problems", []) if isinstance(candidate, dict) and candidate.get("id") == item.get("problem_id")]
        if len(selected) != 1:
            raise ValueError("reserved dossier M0 problem no longer resolves uniquely")
        status, hold_reason = _intake_disposition(selected[0], _problem_allowed_uses(snapshot, selected[0], option.get("source_uses")))
        if (
            not isinstance(case, dict)
            or not isinstance(problem, dict)
            or case.get("id") != item.get("case_id")
            or problem.get("id") != item.get("problem_id")
            or dossier.get("catalog_snapshot_sha256") != snapshot.get("content_sha256")
            or problem.get("statement") != selected[0].get("informal_statement")
            or problem.get("lean_statement") != selected[0].get("lean_statement")
        ):
            raise ValueError("reserved dossier does not bind its case, problem, and exact M0 snapshot")
        event = _append_event_unlocked(self.event_path, events, head, "INTAKE_CREATED", {
            "item_id": item["item_id"],
            "case_id": item["case_id"],
            "dossier_path": item["dossier_path"],
            "dossier_sha256": _sha(raw),
            "status": status,
            "hold_reason": hold_reason,
        })
        events.append(event)

    def set_paused(self, paused: bool) -> dict[str, object]:
        with self._lock():
            events, head, state = self._load()
            if bool(state["paused"]) != paused:
                _append_event_unlocked(self.event_path, events, head, "QUEUE_PAUSED" if paused else "QUEUE_RESUMED", {"reason": "owner_control"})
        return self.read()

    def resume_item(self, item_id: str) -> dict[str, object]:
        if not isinstance(item_id, str) or not IDENTIFIER.fullmatch(item_id):
            raise ValueError("queue item ID is invalid")
        with self._lock():
            _events, _head, state = self._load()
            item = state["items"].get(item_id)
            if not isinstance(item, dict) or item.get("status") not in {"RECONCILIATION_REQUIRED", "INTAKE_FAILED"}:
                raise ValueError("only an incomplete or failed intake reservation can be resumed")
            if int(item.get("attempt_count", 0)) >= MAX_INTAKE_ATTEMPTS:
                raise ValueError("intake attempt limit is exhausted; the reservation remains preserved for review")
            problem_id = str(item["problem_id"])
            idempotency_key = str(item["idempotency_key"])
        return self.intake(problem_id, idempotency_key)

    def skip(self, item_id: str, reason: str) -> dict[str, object]:
        if not isinstance(item_id, str) or not IDENTIFIER.fullmatch(item_id):
            raise ValueError("queue item ID is invalid")
        clean_reason = " ".join(str(reason).split())[:240]
        if not clean_reason:
            clean_reason = "Owner skipped this queue item."
        with self._lock():
            events, head, state = self._load()
            item = state["items"].get(item_id)
            if item is None or item.get("status") not in {"WAITING_STATEMENT_REVIEW", "INTAKE_FAILED", "ATTEMPTS_EXHAUSTED"}:
                raise ValueError("only a held or failed queue item can be skipped")
            _append_event_unlocked(self.event_path, events, head, "ITEM_SKIPPED", {"item_id": item_id, "reason": clean_reason})
        return self.read()
