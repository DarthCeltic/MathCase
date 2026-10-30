#!/usr/bin/env python3
"""Measure an elaborated Lean declaration in the pinned, network-isolated M6 runtime."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
HELPER = Path(__file__).with_name("lean_expr_metrics_helper.lean")
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))
METRICS_MARKER = "MATHCASE_EXPR_METRICS "
PROOF_DEPENDENCIES_MARKER = "MATHCASE_PROOF_DEPENDENCIES_V1 "
PROOF_DEPENDENCIES_SCOPE = "declaration_type_and_stored_proof_value; recursive_core_expr_edges_including_binder_and_let_type_annotations; no_transitive_declaration_bodies"
PROOF_DEPENDENCIES_INTERPRETATION = "Direct constants appearing in this freshly elaborated declaration type and proof value; occurrence is not necessity or causal contribution."
OUTPUT_LIMIT = 1 << 20
SOURCE_LIMIT = 4 << 20


def validate_declaration(value: str) -> str:
    segments = value.split(".")
    valid_segments = all(
        segment.rstrip("'").isidentifier()
        and all(character == "'" or character == "_" or character.isalnum() for character in segment)
        for segment in segments
    )
    if not valid_segments:
        raise ValueError("declaration must be a Lean identifier, optionally namespace-qualified")
    return value


def parse_metrics_output(output: str) -> dict[str, Any]:
    matches = [line.split(METRICS_MARKER, 1)[1] for line in output.splitlines() if METRICS_MARKER in line]
    if len(matches) != 1:
        raise ValueError(f"expected one Lean metrics record, found {len(matches)}")
    payload = json.loads(matches[0])
    if payload.get("schema") != "mathcase-lean-expr-metrics-v2":
        raise ValueError("Lean metrics schema is unsupported")
    expected_fields = {
        "schema",
        "declaration",
        "core_expr_nodes",
        "core_expr_depth",
        "core_expr_nodes_by_kind",
        "binder_nodes",
        "constant_reference_nodes",
    }
    if set(payload) != expected_fields:
        raise ValueError("Lean metrics record has missing or unsupported fields")
    if not isinstance(payload.get("declaration"), str):
        raise ValueError("Lean metrics record has no declaration")
    for field in ("core_expr_nodes", "core_expr_depth"):
        if type(payload.get(field)) is not int or payload[field] < 1:
            raise ValueError(f"Lean metrics field {field} must be a positive integer")
    kind_names = {
        "applications",
        "lambdas",
        "forall_expressions",
        "let_expressions",
        "metadata",
        "projections",
        "bound_variables",
        "free_variables",
        "metavariables",
        "sorts",
        "constants",
        "literals",
    }
    kind_counts = payload.get("core_expr_nodes_by_kind")
    if not isinstance(kind_counts, dict) or set(kind_counts) != kind_names:
        raise ValueError("Lean metrics record has an incomplete expression-node breakdown")
    if any(type(count) is not int or count < 0 for count in kind_counts.values()):
        raise ValueError("Lean metrics expression-node counts must be nonnegative integers")
    if sum(kind_counts.values()) != payload["core_expr_nodes"]:
        raise ValueError("Lean metrics expression-node breakdown does not match its total")
    for field in ("binder_nodes", "constant_reference_nodes"):
        if type(payload.get(field)) is not int or payload[field] < 0:
            raise ValueError(f"Lean metrics field {field} must be a nonnegative integer")
    if payload["binder_nodes"] != kind_counts["lambdas"] + kind_counts["forall_expressions"]:
        raise ValueError("Lean metrics binder count does not match its expression-node breakdown")
    if payload["constant_reference_nodes"] != kind_counts["constants"]:
        raise ValueError("Lean metrics constant count does not match its expression-node breakdown")
    return payload


def _proof_dependency_record(output: str, declaration: str | None = None) -> tuple[dict[str, Any], bytes]:
    matches = [line.split(PROOF_DEPENDENCIES_MARKER, 1)[1] for line in output.splitlines() if PROOF_DEPENDENCIES_MARKER in line]
    if len(matches) != 1:
        raise ValueError(f"expected one Lean proof-dependency record, found {len(matches)}")

    def reject_duplicate_keys(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError(f"Lean proof-dependency record repeats JSON field {key!r}")
            result[key] = value
        return result

    try:
        payload = json.loads(matches[0], object_pairs_hook=reject_duplicate_keys)
    except (json.JSONDecodeError, TypeError) as exc:
        raise ValueError(f"Lean proof-dependency record is not valid JSON: {exc}") from exc
    expected_fields = {
        "schema",
        "declaration",
        "traversal_scope",
        "declaration_type_occurrence_count",
        "proof_value_occurrence_count",
        "total_occurrence_count",
        "unique_reference_count",
        "references",
        "unresolved_entries",
        "transitive_bodies_expanded",
        "necessity_claim",
        "interpretation",
    }
    if not isinstance(payload, dict) or set(payload) != expected_fields:
        raise ValueError("Lean proof-dependency record has missing or unsupported fields")
    if payload["schema"] != "mathcase-proof-dependencies-v1":
        raise ValueError("Lean proof-dependency schema is unsupported")
    if not isinstance(payload["declaration"], str) or (declaration is not None and payload["declaration"] != declaration):
        raise ValueError("Lean proof-dependency declaration does not match the selected proof")
    if payload["traversal_scope"] != PROOF_DEPENDENCIES_SCOPE:
        raise ValueError("Lean proof-dependency traversal scope is unsupported")
    for field in ("declaration_type_occurrence_count", "proof_value_occurrence_count", "total_occurrence_count", "unique_reference_count"):
        if type(payload[field]) is not int or payload[field] < 0:
            raise ValueError(f"Lean proof-dependency field {field} must be a nonnegative integer")
    if type(payload["transitive_bodies_expanded"]) is not bool or payload["transitive_bodies_expanded"]:
        raise ValueError("Lean proof-dependency record must leave transitive bodies unopened")
    if type(payload["necessity_claim"]) is not bool or payload["necessity_claim"]:
        raise ValueError("Lean proof-dependency record cannot claim necessity")
    if payload["interpretation"] != PROOF_DEPENDENCIES_INTERPRETATION:
        raise ValueError("Lean proof-dependency interpretation is unsupported")
    references = payload["references"]
    if not isinstance(references, list):
        raise ValueError("Lean proof-dependency references must be a list")
    ref_fields = {
        "name",
        "declaration_type_occurrences",
        "proof_value_occurrences",
        "total_occurrences",
        "resolution",
        "declaration_kind",
    }
    seen_names: set[str] = set()
    type_total = value_total = occurrence_total = 0
    unresolved = []
    kinds = {"axiom", "definition", "theorem", "opaque", "quotient", "inductive", "constructor", "recursor", "UNKNOWN"}
    for reference in references:
        if not isinstance(reference, dict) or set(reference) != ref_fields:
            raise ValueError("Lean proof-dependency reference has missing or unsupported fields")
        name = reference["name"]
        if not isinstance(name, str) or not name or name in seen_names:
            raise ValueError("Lean proof-dependency reference names must be nonempty and unique")
        seen_names.add(name)
        counts = [reference[field] for field in ("declaration_type_occurrences", "proof_value_occurrences", "total_occurrences")]
        if any(type(count) is not int or count < 0 for count in counts):
            raise ValueError("Lean proof-dependency occurrence counts must be nonnegative integers")
        if counts[2] == 0 or counts[0] + counts[1] != counts[2]:
            raise ValueError("Lean proof-dependency reference counts are inconsistent")
        resolution = reference["resolution"]
        kind = reference["declaration_kind"]
        if resolution not in {"RESOLVED", "UNRESOLVED"} or kind not in kinds:
            raise ValueError("Lean proof-dependency declaration resolution or kind is unsupported")
        if (resolution == "UNRESOLVED") != (kind == "UNKNOWN"):
            raise ValueError("Lean proof-dependency unresolved declaration must use kind UNKNOWN")
        if resolution == "UNRESOLVED":
            unresolved.append(reference)
        type_total += counts[0]
        value_total += counts[1]
        occurrence_total += counts[2]
    if payload["unique_reference_count"] != len(references) or payload["total_occurrence_count"] != occurrence_total:
        raise ValueError("Lean proof-dependency aggregate counts do not match reference rows")
    if payload["declaration_type_occurrence_count"] != type_total or payload["proof_value_occurrence_count"] != value_total:
        raise ValueError("Lean proof-dependency per-scope totals do not match reference rows")
    if payload["unresolved_entries"] != unresolved:
        raise ValueError("Lean proof-dependency unresolved entries do not match the reference list")
    return payload, matches[0].encode("utf-8")


def parse_proof_dependency_output(output: str, declaration: str | None = None) -> dict[str, Any]:
    return _proof_dependency_record(output, declaration)[0]


def validate_proof_dependency_metrics(metrics: dict[str, Any], dependency_payload: dict[str, Any]) -> None:
    proof_constants = metrics.get("constant_reference_nodes")
    proof_occurrences = dependency_payload.get("proof_value_occurrence_count")
    if type(proof_constants) is not int or type(proof_occurrences) is not int or proof_occurrences != proof_constants:
        raise ValueError("Lean proof-value constant count disagrees with the M6 expression metrics")


def find_project_root(source: Path, project: Path | None = None) -> Path:
    if project is not None:
        root = project.resolve(strict=True)
        if not root.is_dir():
            raise ValueError("project root must be a directory")
        if not any((root / name).is_file() for name in ("lakefile.toml", "lakefile.lean")):
            raise ValueError("project root must contain lakefile.toml or lakefile.lean")
        return root

    for candidate in (source.parent, *source.parent.parents):
        if any((candidate / name).is_file() for name in ("lakefile.toml", "lakefile.lean")):
            return candidate.resolve(strict=True)
    raise ValueError("could not find a Lake project above the source; pass --project explicitly")


def _skip_leading_comments(text: str) -> int:
    """Return the first code position after whitespace and Lean line/block comments."""
    index = 0
    while index < len(text):
        if text[index].isspace():
            index += 1
            continue
        if text.startswith("--", index):
            newline = text.find("\n", index + 2)
            index = len(text) if newline < 0 else newline + 1
            continue
        if text.startswith("/-", index):
            depth = 1
            index += 2
            while index < len(text) and depth:
                if text.startswith("/-", index):
                    depth += 1
                    index += 2
                elif text.startswith("-/", index):
                    depth -= 1
                    index += 2
                else:
                    index += 1
            if depth:
                raise ValueError("source contains an unterminated Lean block comment")
            continue
        break
    return index


def instrument_source(source_text: str, declaration: str, helper_text: str) -> str:
    declaration = validate_declaration(declaration)
    if "#mathcase_expr_metrics" in source_text or "#mathcase_proof_dependencies" in source_text:
        raise ValueError("source already contains a MathCase expression inspection command")

    bom = "\ufeff" if source_text.startswith("\ufeff") else ""
    body = source_text[len(bom):]
    code_start = _skip_leading_comments(body)
    if body.startswith("prelude", code_start):
        end = code_start + len("prelude")
        if end == len(body) or body[end].isspace():
            body = body[:end] + "\nimport Lean\n" + body[end:]
            prefix = bom
        else:
            prefix = bom + "import Lean\n"
    else:
        prefix = bom + "import Lean\n"

    result = prefix + body
    if not result.endswith("\n"):
        result += "\n"
    return result + "\n" + helper_text + f"\n#mathcase_expr_metrics {declaration}\n#mathcase_proof_dependencies {declaration}\n"


def _bounded_run(command: list[str], *, project: Path, timeout: int) -> subprocess.CompletedProcess[str]:
    completed = subprocess.run(
        command,
        cwd=project,
        check=False,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
    )
    if len(completed.stdout) > OUTPUT_LIMIT or len(completed.stderr) > OUTPUT_LIMIT:
        raise RuntimeError("Lean output exceeded the configured 1 MiB bound")
    return completed


def measure(
    source: Path,
    declaration: str,
    timeout: int,
    project: Path | None = None,
    build_target: str | None = None,
    *,
    output_dir: Path | None = None,
    runtime_executor=None,
) -> dict[str, Any]:
    declaration = validate_declaration(declaration)
    if build_target is not None:
        raise ValueError("--build-target is unsupported; M6 runs only against the pinned, read-only snapshot")
    source = source.resolve(strict=True)
    if not source.is_file() or source.suffix.lower() != ".lean":
        raise ValueError("source must be an existing .lean file")
    source_bytes = source.read_bytes()
    if len(source_bytes) > SOURCE_LIMIT:
        raise ValueError("Lean source exceeds the configured 4 MiB bound")
    source_text = source_bytes.decode("utf-8")

    project_root = find_project_root(source, project)
    if not source.is_relative_to(project_root):
        raise ValueError("source must be inside the selected Lake project")
    if not HELPER.is_file():
        raise RuntimeError(f"Lean metrics helper is missing: {HELPER}")
    helper_bytes = HELPER.read_bytes()
    helper_text = helper_bytes.decode("utf-8")
    instrumented_bytes = instrument_source(source_text, declaration, helper_text).encode("utf-8")
    if output_dir is None:
        raise ValueError("M6 requires --output-dir so the execution chain and raw outputs are preserved")
    output_dir = output_dir.expanduser().resolve(strict=False)
    if runtime_executor is None:
        verification_root = (ROOT / "data/local/verification").resolve(strict=True)
        try:
            output_dir.relative_to(verification_root)
        except ValueError as exc:
            raise ValueError("M6 output directory must be under data/local/verification") from exc
    if output_dir.exists() or output_dir.is_symlink():
        raise FileExistsError(f"refusing to overwrite M6 evidence directory: {output_dir}")

    if runtime_executor is None:
        from scripts.m6_pinned_lean_runtime import run_pinned_metrics

        runtime_executor = run_pinned_metrics
    orchestrator_bytes = Path(__file__).read_bytes()
    runtime_script_path = Path(__file__).with_name("m6_pinned_lean_runtime.py")
    runtime_bytes = runtime_script_path.read_bytes()
    orchestrator_sha256 = hashlib.sha256(orchestrator_bytes).hexdigest()
    runtime_sha256 = hashlib.sha256(runtime_bytes).hexdigest()
    execution = runtime_executor(
        source_path=source,
        source_bytes=source_bytes,
        instrumented_bytes=instrumented_bytes,
        helper_bytes=helper_bytes,
        orchestrator_bytes=orchestrator_bytes,
        project_root=project_root,
        declaration=declaration,
        timeout=timeout,
        artifact_dir=output_dir,
    )
    metrics = execution.get("metrics")
    if not isinstance(metrics, dict) or metrics.get("declaration") != declaration:
        raise ValueError("pinned M6 runtime did not return metrics for the requested declaration")
    expected_artifacts = (
        ("run_request_path", "run-request.json", "run_request_sha256"),
        ("run_receipt_path", "run-receipt.json", "run_receipt_sha256"),
        ("snapshot_manifest_path", "snapshot/snapshot-manifest.json", "snapshot_manifest_sha256"),
        ("instrumented_source_path", "snapshot/instrumented.lean", "instrumented_source_sha256"),
        ("stdout_path", "stdout.bin", "stdout_sha256"),
        ("stderr_path", "stderr.bin", "stderr_sha256"),
    )
    artifact_bytes: dict[str, bytes] = {}
    for path_key, expected_path, hash_key in expected_artifacts:
        if execution.get(path_key) != expected_path:
            raise ValueError(f"pinned M6 runtime returned an unexpected {path_key}")
        expected_hash = execution.get(hash_key)
        if not isinstance(expected_hash, str) or len(expected_hash) != 64:
            raise ValueError(f"pinned M6 runtime returned no valid {hash_key}")
        artifact_path = output_dir.joinpath(*Path(expected_path).parts)
        if artifact_path.is_symlink() or not artifact_path.is_file():
            raise ValueError(f"pinned M6 runtime did not preserve {expected_path}")
        raw = artifact_path.read_bytes()
        if hashlib.sha256(raw).hexdigest() != expected_hash:
            raise ValueError(f"pinned M6 runtime artifact digest mismatch: {expected_path}")
        artifact_bytes[path_key] = raw
    for name in ("snapshot_id", "orchestrator_script_sha256", "runtime_script_sha256"):
        if not isinstance(execution.get(name), str) or len(execution[name]) != 64:
            raise ValueError(f"pinned M6 runtime returned no valid {name}")
    if execution["orchestrator_script_sha256"] != orchestrator_sha256 or execution["runtime_script_sha256"] != runtime_sha256:
        raise ValueError("pinned M6 runtime script identities differ from the orchestrator's pre-launch snapshot")
    request_record = json.loads(artifact_bytes["run_request_path"].decode("utf-8"))
    if request_record.get("schema_version") != "mathcase-m6-pinned-lean-run-request-v2" or \
        request_record.get("snapshot_id") != execution.get("snapshot_id") or \
        request_record.get("source_sha256") != hashlib.sha256(source_bytes).hexdigest() or \
        request_record.get("orchestrator_script_sha256") != orchestrator_sha256 or \
        request_record.get("runtime_script_sha256") != runtime_sha256:
        raise ValueError("pinned M6 runtime launch request does not bind the captured input and script identities")
    run_record = json.loads(artifact_bytes["run_receipt_path"].decode("utf-8"))
    if run_record.get("schema_version") != "mathcase-m6-pinned-lean-run-v2" or run_record.get("status") != "EXECUTED_PASS":
        raise ValueError("pinned M6 runtime run receipt is not a successful typed execution")
    if run_record.get("source_sha256") != hashlib.sha256(source_bytes).hexdigest() or run_record.get("declaration") != declaration:
        raise ValueError("pinned M6 runtime run receipt does not bind the selected source and declaration")
    if run_record.get("run_request_sha256") != execution["run_request_sha256"] or \
        run_record.get("orchestrator_script_sha256") != orchestrator_sha256 or \
        run_record.get("runtime_script_sha256") != runtime_sha256 or \
        run_record.get("runner_script_sha256") != runtime_sha256:
        raise ValueError("pinned M6 run receipt does not bind the exact request and producer/runtime scripts")
    combined_output = (artifact_bytes["stdout_path"] + b"\n" + artifact_bytes["stderr_path"]).decode("utf-8", errors="replace")
    parsed = parse_metrics_output(combined_output)
    if parsed != metrics:
        raise ValueError("pinned M6 runtime metrics differ from captured Lean output")
    dependency_payload, dependency_payload_bytes = _proof_dependency_record(combined_output, declaration)
    validate_proof_dependency_metrics(parsed, dependency_payload)

    lakefile = next((project_root / name for name in ("lakefile.lean", "lakefile.toml") if (project_root / name).is_file()), None)
    toolchain_file = project_root / "lean-toolchain"
    manifest_file = project_root / "lake-manifest.json"
    receipt = {
        "schema_version": "mathcase-m6-lean-expr-metrics-v4",
        "status": "METRICS_RECORDED",
        "evidence_class": "PINNED_ISOLATED_EXECUTION",
        "recorded_at_utc": datetime.now(timezone.utc).isoformat(),
        "source_path": source.relative_to(project_root).as_posix(),
        "source_sha256": hashlib.sha256(source_bytes).hexdigest(),
        "declaration": declaration,
        "project_lakefile_path": lakefile.name if lakefile else None,
        "project_lakefile_sha256": hashlib.sha256(lakefile.read_bytes()).hexdigest() if lakefile else None,
        "lake_manifest_sha256": hashlib.sha256(manifest_file.read_bytes()).hexdigest() if manifest_file.is_file() else None,
        "lean_toolchain": toolchain_file.read_text(encoding="utf-8").strip() if toolchain_file.is_file() else None,
        "lean_toolchain_sha256": hashlib.sha256(toolchain_file.read_bytes()).hexdigest() if toolchain_file.is_file() else None,
        "lean_version": execution.get("lean_version"),
        "metrics_helper_sha256": hashlib.sha256(helper_bytes).hexdigest(),
        "orchestrator_script_sha256": orchestrator_sha256,
        "runtime_script_sha256": runtime_sha256,
        "instrumented_source_path": execution.get("instrumented_source_path"),
        "instrumented_source_sha256": execution.get("instrumented_source_sha256"),
        "snapshot_id": execution.get("snapshot_id"),
        "snapshot_manifest_path": execution.get("snapshot_manifest_path"),
        "snapshot_manifest_sha256": execution.get("snapshot_manifest_sha256"),
        "run_request_path": execution.get("run_request_path"),
        "run_request_sha256": execution.get("run_request_sha256"),
        "run_receipt_path": execution.get("run_receipt_path"),
        "run_receipt_sha256": execution.get("run_receipt_sha256"),
        "stdout_path": execution.get("stdout_path"),
        "stdout_sha256": execution.get("stdout_sha256"),
        "stderr_path": execution.get("stderr_path"),
        "stderr_sha256": execution.get("stderr_sha256"),
        "axiom_observations": execution.get("axiom_observations"),
        "metrics": metrics,
        "scope_note": "Elaborated Lean Expr shape only; this is not a proof-improvement judgment, an M6 rewrite acceptance, or a V5 essentiality result.",
    }
    write_receipt(output_dir / "metrics-receipt.json", receipt, output_dir)
    metrics_receipt_bytes = (output_dir / "metrics-receipt.json").read_bytes()
    dependency_observation = {
        "schema_version": "mathcase-m6-proof-dependency-observation-v1",
        "status": "DIRECT_REFERENCES_RECORDED",
        "evidence_class": "PINNED_ISOLATED_EXECUTION",
        "recorded_at_utc": datetime.now(timezone.utc).isoformat(),
        "declaration": declaration,
        "source_sha256": hashlib.sha256(source_bytes).hexdigest(),
        "generated_source_sha256": hashlib.sha256(source_bytes).hexdigest(),
        "metrics_receipt_sha256": hashlib.sha256(metrics_receipt_bytes).hexdigest(),
        "run_receipt_sha256": execution["run_receipt_sha256"],
        "run_request_sha256": execution["run_request_sha256"],
        "snapshot_id": execution["snapshot_id"],
        "snapshot_manifest_sha256": execution["snapshot_manifest_sha256"],
        "instrumented_source_sha256": execution["instrumented_source_sha256"],
        "metrics_helper_sha256": hashlib.sha256(helper_bytes).hexdigest(),
        "orchestrator_script_sha256": orchestrator_sha256,
        "runtime_script_sha256": runtime_sha256,
        "stdout_sha256": execution["stdout_sha256"],
        "stderr_sha256": execution["stderr_sha256"],
        "dependency_payload_sha256": hashlib.sha256(dependency_payload_bytes).hexdigest(),
        "dependency_payload": dependency_payload,
        "fresh_elaboration": True,
        "historical_proof_term_identity_claimed": False,
        "necessity_claim": False,
        "scope_note": "A fresh pinned re-elaboration of the exact source; records direct constants in the elaborated declaration type and stored proof value. It does not establish historical compiled-term identity, necessity, causal contribution, or V5 passage.",
    }
    write_receipt(output_dir / "proof-dependency-observation.json", dependency_observation, output_dir)
    return receipt


def write_receipt(path: Path, receipt: dict[str, Any], project: Path) -> None:
    project = project.resolve(strict=True)
    path = (project / path).resolve() if not path.is_absolute() else path.resolve()
    if not path.is_relative_to(project):
        raise ValueError("receipt output must be inside the selected Lake project")
    if path.exists():
        raise FileExistsError(f"refusing to overwrite existing receipt: {path}")
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("x", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(receipt, indent=2, ensure_ascii=False) + "\n")


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True, help="Lean file containing the selected proof")
    parser.add_argument("--declaration", required=True, help="fully qualified theorem or definition name")
    parser.add_argument("--project", type=Path, help="Lake project root; inferred from the source path when omitted")
    parser.add_argument(
        "--build-target",
        help="optional Lake target to build first; omitted to use the selected project's existing outputs",
    )
    parser.add_argument("--timeout", type=int, default=180, help="timeout in seconds for the pinned Lean process")
    parser.add_argument("--output-dir", type=Path, required=True, help="new evidence directory under data/local/verification")
    args = parser.parse_args(argv)
    if args.timeout < 1 or args.timeout > 3600:
        parser.error("--timeout must be between 1 and 3600 seconds")
    try:
        project_root = find_project_root(args.source.resolve(strict=True), args.project)
        receipt = measure(
            args.source,
            args.declaration,
            args.timeout,
            project_root,
            args.build_target,
            output_dir=args.output_dir,
        )
        print(json.dumps(receipt, indent=2, ensure_ascii=False))
        return 0
    except (OSError, UnicodeError, ValueError, RuntimeError, subprocess.TimeoutExpired) as exc:
        print(f"lean_expr_metrics: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
