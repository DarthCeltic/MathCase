"""Reopen the three saved prime-case model pilots with their own evidence."""
from __future__ import annotations

from copy import deepcopy
import hashlib
import json
from pathlib import Path, PurePosixPath
import stat
from typing import Any

CASE_ID = "hero-prime-divisibility-r1"
ORIGINAL_RUN = "proofdesk-ui-hero-prime-divisibility-r1-20261028T152753Z-8d06f9d0e04b"
PILOT_DIR = "data/local/verification/model-comparison-pilot-20261029-r3"
RESULTS_PATH = PILOT_DIR + "/results.json"
RESULTS_SHA256 = "c89c5828f7fbad2210f3a73edd47e47c24e786c121a964fe6acdb56ec95878c6"
PILOT_MODELS = {
    "proofdesk-ui-hero-prime-divisibility-r1-20261029T024049Z-2e92e94e20f9": "nvidia/Nemotron-3_5-Lightning",
    "proofdesk-ui-hero-prime-divisibility-r1-20261029T024231Z-1722ffebb6fe": "Qwen/Qwen3-30B-A3B-Instruct-2507",
    "proofdesk-ui-hero-prime-divisibility-r1-20261029T030433Z-f29410a7ea1e": "deepseek-ai/DeepSeek-V4.1-Flash",
}


def _sha(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def _read(root: Path, path: str, expected: str | None = None) -> bytes:
    parts = PurePosixPath(path).parts
    if not parts or "\\" in path or PurePosixPath(path).is_absolute() or any(p in {"..", "."} or ":" in p for p in parts):
        raise ValueError("Pilot artifact path is not local to this checkout")
    file = root.resolve()
    for part in parts:
        file /= part
        info = file.lstat()
        if stat.S_ISLNK(info.st_mode) or getattr(info, "st_file_attributes", 0) & 0x400:
            raise ValueError("Pilot artifacts cannot traverse links or reparse points")
    if not stat.S_ISREG(info.st_mode) or info.st_size > 4 << 20:
        raise ValueError("Pilot artifact is not a bounded regular file")
    with file.open("rb") as stream:
        raw = stream.read((4 << 20) + 1)
    if len(raw) > 4 << 20 or expected is not None and _sha(raw) != expected:
        raise ValueError("Pilot artifact does not match its exact recorded digest")
    return raw


def _metadata(root: Path) -> tuple[dict[str, dict[str, Any]], dict[str, Any], bytes]:
    results = json.loads(_read(root, RESULTS_PATH, RESULTS_SHA256))
    records = results.get("runs")
    if results.get("schema_version") != "mathcase-model-family-pilot-results-v1" or not isinstance(records, list):
        raise ValueError("Saved pilot result index is unsupported")
    indexed = {item.get("run_id"): item for item in records if isinstance(item, dict)}
    if len(records) != 3 or set(indexed) != set(PILOT_MODELS) or any(indexed[key].get("model_id") != model for key, model in PILOT_MODELS.items()):
        raise ValueError("Saved pilot index does not identify exactly the approved three runs")
    forecast = json.loads(_read(root, PILOT_DIR + "/forecast.json", results.get("forecast_sha256")))
    if forecast.get("case_id") != CASE_ID or forecast.get("context_path") != PILOT_DIR + "/frozen-provider-context.json":
        raise ValueError("Pilot forecast is not bound to this case and frozen context")
    frozen = _read(root, forecast["context_path"], forecast.get("context_sha256"))
    return indexed, forecast, frozen


def _statement_digest(problem: dict[str, Any]) -> str:
    text = json.dumps({"problem_id": problem["id"], "statement": problem["statement"], "lean_statement": problem["lean_statement"]}, ensure_ascii=False, separators=(",", ":"))
    for before, after in (("&", "\\u0026"), ("<", "\\u003c"), (">", "\\u003e"), ("\u2028", "\\u2028"), ("\u2029", "\\u2029")):
        text = text.replace(before, after)
    return _sha(text.encode())


def _selected(root: Path, dispatcher: object, base: dict[str, Any], run_id: str) -> dict[str, Any]:
    if run_id not in PILOT_MODELS:
        raise ValueError("Selected run is not an approved saved prime pilot")
    indexed, forecast, frozen = _metadata(root)
    recorded = indexed[run_id]
    bound_revision = indexed["proofdesk-ui-hero-prime-divisibility-r1-20261029T030433Z-f29410a7ea1e"].get("case_revision_sha256")
    if (base.get("case_id") != CASE_ID or base.get("problem_id") != CASE_ID or not bound_revision
            or base.get("case_revision_sha256") != bound_revision
            or base.get("selected_run", {}).get("run_id") != ORIGINAL_RUN
            or base.get("provider_context", {}).get("sha256") != forecast.get("context_parent_sha256")
            or _sha(str(base.get("lean_statement", "")).encode()) != forecast.get("statement_sha256")):
        raise ValueError("Pilot cannot be attached to a different original case/revision/context")
    run = dispatcher.get_run(run_id)
    if (run.get("run_id") != run_id or run.get("problem_id") != CASE_ID or run.get("model_id") != PILOT_MODELS[run_id]
            or run.get("provider_id") != "nebius-token-factory" or run.get("status") != "COMPLETED"
            or run.get("provider_call_count") != 1 or len(run.get("attempts", [])) != 1):
        raise ValueError("Saved pilot run is not a completed exact one-call case attempt")
    prefix = "data/local/verification/proofdesk-ui-dispatch-r1/" + run_id + "/"
    refs = {item.get("path"): item for item in run.get("artifacts", []) if isinstance(item, dict)}

    def artifact(path: str) -> tuple[dict[str, Any], str]:
        ref = refs.get(path)
        if not path.startswith(prefix) or not isinstance(ref, dict) or not isinstance(ref.get("sha256"), str):
            raise ValueError("Pilot evidence is absent from its completion-bound artifact list")
        raw = _read(root, path, ref["sha256"])
        value = json.loads(raw)
        if not isinstance(value, dict):
            raise ValueError("Pilot evidence is not a JSON object")
        return value, ref["sha256"]

    problem_path = prefix + "problem.json"
    problem, problem_sha = artifact(problem_path)
    packet = problem.get("provider_context", {})
    if (problem.get("id") != CASE_ID or problem.get("lean_statement") != base.get("lean_statement")
            or not isinstance(packet, dict) or not isinstance(packet.get("content"), str)
            or packet["content"].encode() != frozen or packet.get("sha256") != _sha(frozen)):
        raise ValueError("Pilot problem and actual provider context do not match the pinned statement")
    content = json.loads(frozen)
    ctx_problem, source = content.get("problem", {}), content.get("source_binding", {})
    linkage = base.get("saved_run_linkage", {})
    binding = json.loads(_read(root, linkage["source_binding_path"], linkage["source_binding_sha256"]))
    if (ctx_problem.get("lean_statement") != base["lean_statement"] or source.get("exact_lean_statement") != base["lean_statement"]
            or binding.get("exact_lean_statement") != base["lean_statement"] or source.get("source_sha256") != binding.get("source_sha256")
            or source.get("source_path") != binding.get("source_path")
            or "PROVIDER_INPUT_ONE_EXACT_CONTEXT" not in source.get("allowed_uses", [])):
        raise ValueError("Pilot source does not match the original case source binding")
    _read(root, source["source_path"], source["source_sha256"])
    dispatch_binding = run.get("case_binding")
    if dispatch_binding is not None:
        expected = {"schema_version": "mathcase-proofdesk-case-binding-v2", "case_id": CASE_ID, "case_problem_id": CASE_ID,
                    "case_run_id": ORIGINAL_RUN, "case_revision_sha256": base.get("case_revision_sha256"),
                    "provider_context_sha256": _sha(frozen), "lean_statement_sha256": forecast["statement_sha256"]}
        if any(dispatch_binding.get(key) != value for key, value in expected.items()):
            raise ValueError("Pilot launch is bound to a different case/revision/statement/context")
        binding_status = "EXACT_DISPATCH_CASE_BINDING_V2"
    else:
        binding_status = "RETROSPECTIVE_EXACT_STATEMENT_SOURCE_CONTEXT_BINDING"
    attempt = run["attempts"][0]
    calls = [path for path in refs if path.startswith(prefix + "calls/") and path.endswith(".receipt.json")]
    if len(calls) != 1:
        raise ValueError("Pilot must have exactly one original provider call receipt")
    call_path = calls[0]
    call, call_sha = artifact(call_path)
    request_path, response_path = call_path[:-len(".receipt.json")] + ".request.json", call_path[:-len(".receipt.json")] + ".response.json"
    request, request_sha = artifact(request_path)
    _response, response_sha = artifact(response_path)
    if (call.get("schema_version") != "mathcase-chat-completions-call-receipt-v1" or call.get("model_requested") != run["model_id"]
            or request.get("model") != run["model_id"] or call.get("request_sha256") != request_sha or call.get("response_sha256") != response_sha
            or call.get("prompt_tokens") != attempt.get("prompt_tokens") or call.get("completion_tokens") != attempt.get("completion_tokens")
            or not any(packet["content"] in str(item.get("content", "")) for item in request.get("messages", []) if isinstance(item, dict))):
        raise ValueError("Pilot request/response/call receipt do not describe the selected attempt")
    if attempt.get("cost_known") is not True or attempt.get("cost_micros") != recorded.get("actual_cost_micros"):
        raise ValueError("Pilot attempt cost is not its saved accounted cost")
    notes = []
    if recorded.get("provider_response_sha256") != response_sha:
        notes.append("Pilot results summary response digest differs; the original completion-bound call receipt and response bytes are authoritative.")
    if dispatch_binding is None:
        notes.append("This older launch has no saved case-binding-v2 record; its exact statement, source and frozen context were matched retrospectively. No launch binding was created.")
    passed = run.get("solved") is True
    lean_path, lean_sha, lean = None, None, None
    if passed:
        proof = run.get("proof")
        ids = attempt.get("evidence_ids")
        if not isinstance(proof, str) or not proof or attempt.get("outcome") != "PASS" or not isinstance(ids, list) or len(ids) != 1:
            raise ValueError("Pilot solved status lacks one exact passing candidate")
        lean_path = prefix + "lean-receipts/" + ids[0] + ".json"
        lean, lean_sha = artifact(lean_path)
        proof_sha = _sha(proof.encode())
        if (lean.get("problem_id") != CASE_ID or lean.get("evidence_id") != ids[0] or lean.get("problem_statement_sha256") != _statement_digest(problem)
                or lean.get("proof_sha256") != proof_sha or attempt.get("verified_proof_sha256") != proof_sha or lean.get("input_proof") != proof
                or lean.get("status") != "PASSED" or lean.get("kernel_passed") is not True or lean.get("axioms_passed") is not True):
            raise ValueError("Pilot proof bytes do not match a passing kernel and axiom receipt")
    elif run.get("proof") or attempt.get("outcome") == "PASS" or attempt.get("evidence_ids") or call.get("outcome") != "NO_PROOF_PROPOSED":
        raise ValueError("Pilot no-proof outcome conflicts with its original evidence")
    selected = {"run_id": run_id, "recorded_at_utc": run.get("completed_at_utc"), "status": "PASSED" if passed else "NO_PROOF_PROPOSED",
                "provider_dispatch_status": run["status"], "provider_id": run["provider_id"], "model_id": run["model_id"],
                "provider_call_count": 1, "provider_cost_micros": attempt["cost_micros"], "proof": run.get("proof") or "",
                "proof_sha256": _sha(run["proof"].encode()) if passed else "", "kernel_passed": passed, "axioms_passed": passed,
                "receipt_path": run["completion_receipt"], "receipt_sha256": run["completion_receipt_sha256"],
                "lean_receipt_path": lean_path, "lean_receipt_sha256": lean_sha, "provider_context_sha256": _sha(frozen),
                "problem_statement_sha256": _statement_digest(problem), "historical_attempt": True, "reading_label": "Historical attempt", "actual_search": False}
    provider_attempt = {**attempt, "run_id": run_id, "attempt_id": (attempt.get("evidence_ids") or ["no-proof-candidate"])[0], "model_id": run["model_id"],
                        "provider_request_path": request_path, "provider_request_sha256": request_sha, "provider_response_path": response_path, "provider_response_sha256": response_sha,
                        "provider_call_receipt_path": call_path, "provider_call_receipt_sha256": call_sha, "lean_receipt_path": lean_path,
                        "lean_receipt_sha256": lean_sha, "lean_status": "PASSED" if passed else "NOT_CHECKED_NO_CANDIDATE", "kernel_passed": passed, "axioms_passed": passed}
    output = deepcopy(base)
    output.update({"selected_run": selected, "provider_attempts": [provider_attempt], "attempt_history": [{"run_id": run_id, "attempt_id": provider_attempt["attempt_id"],
                   "attempt_status": attempt["outcome"], "failure_class": attempt.get("failure_class"), "plain_result": attempt.get("failure_summary") or "Saved candidate passed the Lean kernel and axiom checks.", "actual_search": False}],
                   "expositor": None, "child_reuse": None, "prepared_provider_context": None, "case_provider_call_count": 1, "case_cost_micros": attempt["cost_micros"],
                   "historical_attempt": True, "historical_attempt_label": "Historical attempt", "pilot_binding_status": binding_status, "pilot_summary_notes": notes,
                   "why_this_case": "A later saved model pilot for the same known theorem. This historical attempt keeps its own actual context, proof, cost and check state. Opening it sends no request.",
                   "provider_context": {"sha256": _sha(frozen), "selected_signature_count": len(content.get("library_signatures", [])), "retrieval_count": len(content.get("retrieval", [])),
                                        "prior_provider_attempt_count": len(content.get("prior_provider_attempts", [])), "problem_definition_count": len(ctx_problem.get("definitions", [])),
                                        "worked_example_count": len(content.get("worked_examples", [])), "prior_failure_diagnostics": [x.get("diagnostic") for x in content.get("prior_provider_attempts", []) if isinstance(x, dict)]}})
    output["revision_source_bindings"] = deepcopy(base.get("sources", []))
    output["revision_formalization_scope"] = deepcopy(base.get("formalization_scope"))
    output["sources"] = [item for item in deepcopy(base.get("sources", [])) if item.get("path") == linkage["source_binding_path"]]
    output["sources"] += [{"path": problem_path, "sha256": problem_sha, "label": "Exact selected pilot problem and actual model context"},
                          {"path": selected["receipt_path"], "sha256": selected["receipt_sha256"], "label": "Selected pilot completion"},
                          {"path": call_path, "sha256": call_sha, "label": "Actual selected model call receipt"}, {"path": request_path, "sha256": request_sha, "label": "Actual selected model request"},
                          {"path": response_path, "sha256": response_sha, "label": "Actual selected model response"}]
    if lean_path:
        output["sources"].append({"path": lean_path, "sha256": lean_sha, "label": "Exact selected candidate kernel and axiom receipt"})
    output["saved_run_linkage"] = {**deepcopy(linkage), "status": binding_status, "run_id": run_id, "provider_context_sha256": _sha(frozen),
                                   "problem_statement_sha256": selected["problem_statement_sha256"], "lean_receipt_path": lean_path, "lean_receipt_sha256": lean_sha,
                                   "dispatch_case_id": dispatch_binding.get("case_id") if dispatch_binding else None, "read_only": True, "gate_effect": "NONE"}
    output["formalization_scope"] = {"pinned_informal_statement": problem["statement"], "summary": "Historical one-case model pilot; no independent meaning review, ranking or child reuse is established by this attempt."}
    return output


def _summary(selected: dict[str, Any]) -> dict[str, Any]:
    keys = ("run_id", "recorded_at_utc", "status", "model_id", "provider_id", "provider_call_count", "provider_cost_micros", "kernel_passed", "axioms_passed", "receipt_path", "receipt_sha256", "proof", "proof_sha256", "lean_receipt_path", "lean_receipt_sha256", "historical_attempt", "reading_label")
    output = {key: selected.get(key) for key in keys if key in selected}
    output["execution_status"] = selected.get("provider_dispatch_status")
    output["completion_receipt"] = selected.get("receipt_path")
    output["completion_receipt_sha256"] = selected.get("receipt_sha256")
    return output


def available_pilot_runs(root: Path, dispatcher: object, base_context: dict[str, Any]) -> list[dict[str, Any]]:
    """Original plus individually verified pilots; unavailable pilots get no link."""
    summaries = [_summary(base_context["selected_run"])]
    for run_id in PILOT_MODELS:
        try:
            selected = _selected(root, dispatcher, base_context, run_id)["selected_run"]
        except (OSError, ValueError, KeyError, TypeError):
            continue
        summaries.append(_summary(selected))
    return summaries


def read_pilot_context(root: Path, dispatcher: object, base_context: dict[str, Any], run_id: str) -> dict[str, Any]:
    """Select genuine later evidence while preserving the original source revision."""
    output = _selected(root, dispatcher, base_context, run_id)
    output["runs"] = available_pilot_runs(root, dispatcher, base_context)
    return output
