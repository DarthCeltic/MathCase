"""Case-bound exact local arithmetic artifacts for the MathCase Case Desk."""

from __future__ import annotations

import copy
import hashlib
import json
import os
import re
import subprocess
import tempfile
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

try:
    from local_file_lock import exclusive_file_lock
except ModuleNotFoundError:
    from scripts.local_file_lock import exclusive_file_lock


CASE_ID_RE = re.compile(r"^[a-z0-9][a-z0-9_-]{2,95}$")
DIGEST_RE = re.compile(r"^[0-9a-f]{64}$")
IDEMPOTENCY_RE = re.compile(r"^[0-9a-f]{32}$")
MAX_INPUT_DIGITS = 100
MAX_RECORD_BYTES = 1 << 20
MAX_DOSSIER_BYTES = 32 << 20
TOOL_ID = "two-congruence"
TOOL_VERSION = "v1"
RECORD_SCHEMA = "mathcase-two-congruence-record-v1"
ARTIFACT_SCHEMA = "mathcase-local-computation-artifact-v1"
CHECKER_VERSION = "recomputed-gcd-equation-and-exact-period-v1"
REFERENCE_PATH = "config/taste-style-reference-proposal.json"
REFERENCE_ORIGINAL_SHA256 = "75b1ed41c4e2dc65da7608e792cf74f61fbb8edb768d9e8925ca6846847d5314"
REFERENCE_RELEASE_VIEW_SHA256 = "825e4a13b3391c8298d4c8b0ccc184bc85e953126a89962fb2dbd2f611518e0d"
REFERENCE_SEMANTIC_SHA256 = "6db1a5937bd2afea267c495e0db7319ae359cd9f57beec2e097fe0b1f1d7b52e"


class LocalComputationError(ValueError):
    pass


def _digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _stable_json(value: object) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _read_regular(path: Path, limit: int) -> bytes:
    info = path.lstat()
    if path.is_symlink() or not path.is_file() or info.st_size < 1 or info.st_size > limit:
        raise LocalComputationError("a pinned local computation artifact is unavailable or not a bounded regular file")
    data = path.read_bytes()
    if len(data) != info.st_size:
        raise LocalComputationError("a local computation file changed while it was being reopened")
    return data


def _safe_project_path(root: Path, relative: object) -> Path:
    if not isinstance(relative, str) or not relative or "\\" in relative or ":" in relative or "\x00" in relative:
        raise LocalComputationError("the pinned project path is invalid")
    parts = relative.split("/")
    if relative.startswith("/") or any(part in {"", ".", ".."} for part in parts):
        raise LocalComputationError("the pinned project path is unsafe")
    root_path = root.resolve()
    target = root.joinpath(*parts)
    resolved = target.resolve(strict=True)
    if root_path not in resolved.parents:
        raise LocalComputationError("the pinned project path resolves outside this checkout")
    return resolved


def _parse_json(data: bytes, label: str) -> dict[str, Any]:
    try:
        value = json.loads(data.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise LocalComputationError(f"{label} is not valid UTF-8 JSON") from exc
    if not isinstance(value, dict):
        raise LocalComputationError(f"{label} must be a JSON object")
    return value


def _statement_digest(problem: dict[str, Any]) -> str:
    payload = {
        "problem_id": problem.get("id"),
        "statement": problem.get("statement"),
        "lean_statement": problem.get("lean_statement", ""),
    }
    return _digest(json.dumps(payload, ensure_ascii=False, separators=(",", ":")).encode("utf-8"))


def _canonical_decimal(value: object, *, signed: bool, label: str) -> int:
    if not isinstance(value, str) or len(value.lstrip("-")) > MAX_INPUT_DIGITS:
        raise LocalComputationError(f"{label} exceeds the fixed {MAX_INPUT_DIGITS}-digit input bound")
    if signed:
        if not re.fullmatch(r"-?(0|[1-9][0-9]*)", value) or value == "-0":
            raise LocalComputationError(f"{label} must be a canonical signed decimal string")
    elif not re.fullmatch(r"(0|[1-9][0-9]*)", value):
        raise LocalComputationError(f"{label} must be a canonical nonnegative decimal string")
    return int(value)


def _bezout(a: int, b: int) -> tuple[int, int, int]:
    old_r, r = a, b
    old_s, s = 1, 0
    old_t, t = 0, 1
    while r:
        quotient, remainder = divmod(old_r, r)
        old_r, r = r, remainder
        old_s, s = s, old_s - quotient * s
        old_t, t = t, old_t - quotient * t
    return old_r, old_s, old_t


def _positive_mod(value: int, modulus: int) -> int:
    return value % modulus


def _expected_certificate(inputs: dict[str, str]) -> dict[str, Any]:
    residue1 = _canonical_decimal(inputs.get("residue1"), signed=True, label="residue1")
    modulus1 = _canonical_decimal(inputs.get("modulus1"), signed=False, label="modulus1")
    residue2 = _canonical_decimal(inputs.get("residue2"), signed=True, label="residue2")
    modulus2 = _canonical_decimal(inputs.get("modulus2"), signed=False, label="modulus2")
    if modulus1 <= 0 or modulus2 <= 0:
        raise LocalComputationError("moduli must be greater than zero")
    r1, r2 = _positive_mod(residue1, modulus1), _positive_mod(residue2, modulus2)
    delta = r2 - r1
    divisor, bezout1, bezout2 = _bezout(modulus1, modulus2)
    gcd_certificate = {"d": str(divisor), "x": str(bezout1), "y": str(bezout2)}
    equation_inputs = {"a": str(modulus1), "b": str(modulus2), "c": str(delta)}
    remainder = delta % divisor
    if remainder:
        equation_certificate = {
            "certificate_version": "integer-linear-equation-certificate-v1",
            "inputs": equation_inputs,
            "gcd_certificate": gcd_certificate,
            "outcome": "NO_INTEGER_SOLUTION",
            "impossibility_witness": {"divisor": str(divisor), "remainder": str(remainder)},
            "solution_family": None,
        }
        return {
            "certificate_version": "two-congruence-certificate-v1",
            "inputs": dict(inputs),
            "normalized_residues": {"residue1": str(r1), "residue2": str(r2)},
            "residue_difference": str(delta),
            "gcd_certificate": gcd_certificate,
            "linear_equation_certificate": equation_certificate,
            "outcome": "NO_COMMON_SOLUTION",
            "incompatibility_witness": {"divisor": str(divisor), "remainder": str(remainder)},
            "solution_family": None,
        }
    scale = delta // divisor
    x0, y0 = bezout1 * scale, bezout2 * scale
    step_x, step_y = modulus2 // divisor, -(modulus1 // divisor)
    equation_certificate = {
        "certificate_version": "integer-linear-equation-certificate-v1",
        "inputs": equation_inputs,
        "gcd_certificate": gcd_certificate,
        "outcome": "ALL_INTEGER_SOLUTIONS",
        "impossibility_witness": None,
        "solution_family": {
            "particular": {"x": str(x0), "y": str(y0)},
            "primitive_steps": {"x": str(step_x), "y": str(step_y)},
            "parameter": "0",
            "chosen": {"x": str(x0), "y": str(y0)},
        },
    }
    period = (modulus1 // divisor) * modulus2
    if len(str(period)) > 200:
        raise LocalComputationError("the exact period exceeds the fixed 200-digit bound")
    solution = (r1 + modulus1 * x0) % period
    return {
        "certificate_version": "two-congruence-certificate-v1",
        "inputs": dict(inputs),
        "normalized_residues": {"residue1": str(r1), "residue2": str(r2)},
        "residue_difference": str(delta),
        "gcd_certificate": gcd_certificate,
        "linear_equation_certificate": equation_certificate,
        "outcome": "ALL_INTEGER_SOLUTIONS",
        "incompatibility_witness": None,
        "solution_family": {"least_nonnegative": str(solution), "exact_period": str(period)},
    }


def _metrics(certificate: dict[str, Any]) -> dict[str, Any]:
    inputs = certificate["inputs"]
    normalized = certificate["normalized_residues"]
    result = {
        "input_digits": {
            "residue1": len(inputs["residue1"].lstrip("-")),
            "modulus1": len(inputs["modulus1"]),
            "residue2": len(inputs["residue2"].lstrip("-")),
            "modulus2": len(inputs["modulus2"]),
        },
        "outcome": certificate["outcome"],
        "normalized_residue_digits": {
            "residue1": len(normalized["residue1"]),
            "residue2": len(normalized["residue2"]),
        },
        "measure_scope": "local exact arithmetic, not M6",
    }
    if certificate["solution_family"] is not None:
        result["derived_digits"] = {
            "least_nonnegative": len(certificate["solution_family"]["least_nonnegative"]),
            "exact_period": len(certificate["solution_family"]["exact_period"]),
        }
    else:
        result["derived_digits"] = {
            "gcd": len(certificate["incompatibility_witness"]["divisor"]),
            "incompatibility_remainder": len(certificate["incompatibility_witness"]["remainder"]),
        }
    return result


def _reference_source_matches(reference: object, raw: bytes) -> bool:
    if not isinstance(reference, dict) or reference.get("source_path") != REFERENCE_PATH:
        return False
    current_digest = _digest(raw)
    if reference.get("source_sha256") == current_digest:
        return True
    if reference.get("source_sha256") != REFERENCE_ORIGINAL_SHA256 or current_digest != REFERENCE_RELEASE_VIEW_SHA256:
        return False
    try:
        view = json.loads(raw)
    except (ValueError, UnicodeError):
        return False
    if not isinstance(view, dict) or view.get("record_view") != "NARRATIVE_ONLY_RELEASE_VIEW" or view.get("original_record_sha256") != REFERENCE_ORIGINAL_SHA256:
        return False
    semantics = {key: value for key, value in view.items() if key not in {"purpose", "record_view", "original_record_sha256"}}
    return _digest(_stable_json(semantics)) == REFERENCE_SEMANTIC_SHA256


def _verify_record(record: object, expected_inputs: dict[str, str]) -> dict[str, Any]:
    if not isinstance(record, dict):
        raise LocalComputationError("local arithmetic record is not an object")
    expected_keys = {"schema_version", "algorithm_version", "checker_version", "certificate", "reference_binding", "local_metrics", "boundary", "content_sha256"}
    if set(record) != expected_keys or record.get("schema_version") != RECORD_SCHEMA:
        raise LocalComputationError("local arithmetic record schema is unsupported")
    if record.get("algorithm_version") != "bezout-two-congruence-family-v1" or record.get("checker_version") != CHECKER_VERSION:
        raise LocalComputationError("local arithmetic checker version is unsupported")
    expected_certificate = _expected_certificate(expected_inputs)
    certificate = record.get("certificate")
    if certificate != expected_certificate:
        raise LocalComputationError("the submitted certificate differs from the independently recomputed result")
    binding = record.get("reference_binding")
    if not isinstance(binding, dict) or set(binding) != {"gcd_checker_version", "gcd_reference_binding", "integer_equation_checker_version", "integer_equation_reference_binding"}:
        raise LocalComputationError("the composed checker reference binding is malformed")
    if binding.get("gcd_checker_version") != "divisibility-bezout-checker-v1" or binding.get("integer_equation_checker_version") != "recomputed-divisibility-and-primitive-family-v1" or binding.get("gcd_reference_binding") != binding.get("integer_equation_reference_binding"):
        raise LocalComputationError("the GCD and integer-equation checker references do not agree")
    ref = binding.get("gcd_reference_binding")
    if not _reference_source_matches(ref, (Path(__file__).resolve().parents[1] / REFERENCE_PATH).read_bytes()):
        raise LocalComputationError("the composed arithmetic reference source is stale")
    expected_boundary = {
        "result_class": "EXACT_LOCAL_TWO_CONGRUENCE_CERTIFICATE",
        "proof_execution": "NOT_RUN",
        "lean_verification": "NOT_RUN",
        "review_status": "DRAFT_ONLY",
        "gate_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
    }
    if record.get("boundary") != expected_boundary:
        raise LocalComputationError("local arithmetic record has an unsupported authority boundary")
    if record.get("local_metrics") != _metrics(expected_certificate):
        raise LocalComputationError("local arithmetic metrics do not match the recomputed certificate")
    payload = {key: value for key, value in record.items() if key != "content_sha256"}
    content_digest = _digest(_stable_json(payload))
    if record.get("content_sha256") != content_digest:
        raise LocalComputationError("local arithmetic record digest does not match its contents")
    return expected_certificate


def _legacy_explanations(certificate: dict[str, Any]) -> list[dict[str, str]]:
    tiers = ["HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE"]
    if certificate["outcome"] == "NO_COMMON_SOLUTION":
        divisor = certificate["incompatibility_witness"]["divisor"]
        remainder = certificate["incompatibility_witness"]["remainder"]
        narratives = [
            f"The two remainder rules cannot both be true. Any number that meets the first rule and the second would force their difference to be divisible by {divisor}, but the checked difference leaves remainder {remainder}.",
            f"After reducing the two residues, their difference is not a multiple of gcd(m₁,m₂)={divisor}: the remainder is {remainder}. The generalized Chinese remainder condition therefore fails.",
            f"A common solution would require m₁t+m₂s=r₂−r₁. Bézout's identity shows this equation is solvable exactly when gcd(m₁,m₂) divides the residue difference. Here the checked remainder is {remainder} modulo {divisor}, so no solution exists.",
            f"The congruences define compatible residue classes only when the difference of normalized representatives lies in the ideal generated by both moduli. The verified gcd is {divisor}; the difference has nonzero residue {remainder}, so the intersection is empty.",
            f"The image of the map (t,s)↦m₁t+m₂s is gcd(m₁,m₂)ℤ. The residue difference is not in that image: its canonical remainder modulo {divisor} is {remainder}. Thus the affine congruence classes have empty intersection.",
        ]
    else:
        solution = certificate["solution_family"]["least_nonnegative"]
        period = certificate["solution_family"]["exact_period"]
        narratives = [
            f"The checked answer is x={solution}+{period}k for any integer k. Adding {period} keeps both remainders the same, and the checker confirms the smallest nonnegative answer is {solution}.",
            f"The two remainder rules meet at x={solution}. Their common solutions repeat every {period}, so all answers are x={solution}+{period}k with k any integer.",
            f"The gcd and Bézout certificate produce a compatible value. Reducing it modulo lcm(m₁,m₂) gives {solution}; because that exact period is {period}, every solution and only a solution has the form x={solution}+{period}k.",
            f"Compatibility follows from the linear equation m₁t+m₂s=r₂−r₁. The checker then normalizes the resulting representative into [0,{period}) and verifies both congruences. The complete class is x={solution}+{period}k.",
            f"The intersection of the two residue classes is one coset modulo lcm(m₁,m₂). The verified least representative is {solution}, and the exact period is {period}; hence the full solution set is {solution}+{period}ℤ.",
        ]
    return [{"tier": tier, "text": text, "status": "DRAFT_ONLY"} for tier, text in zip(tiers, narratives, strict=True)]


def _explanations(certificate: dict[str, Any]) -> list[dict[str, str]]:
    tiers = ["HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE"]
    inputs = certificate["inputs"]
    r1, r2 = certificate["normalized_residues"]["residue1"], certificate["normalized_residues"]["residue2"]
    m1, m2 = inputs["modulus1"], inputs["modulus2"]
    difference = certificate["residue_difference"]
    equation = certificate["linear_equation_certificate"]
    divisor = certificate["gcd_certificate"]["d"]
    if certificate["outcome"] == "NO_COMMON_SOLUTION":
        remainder = certificate["incompatibility_witness"]["remainder"]
        narratives = [
            f"The rules ask for remainder {r1} after dividing by {m1}, and remainder {r2} after dividing by {m2}. Their difference is {difference}. A shared answer would make that difference divisible by {divisor}, but the checked remainder is {remainder}; so no whole number works.",
            f"For these inputs, the remainders differ by {difference}, while gcd({m1},{m2})={divisor}. The common-remainder condition fails because {difference} leaves remainder {remainder} on division by {divisor}; in symbols, {divisor} ∤ {difference}.",
            f"If x satisfied both rules, integers u and v would exist with {m1}u+{m2}v={difference}. Every left side is a multiple of gcd({m1},{m2})={divisor}, but {difference} has remainder {remainder} modulo {divisor}; the equation, and therefore the original congruences, are impossible.",
            f"The generalized Chinese remainder condition is gcd({m1},{m2}) | ({r2}−{r1}). Here the gcd is {divisor}, and the exact nonzero remainder of the normalized difference {difference} is {remainder}. The residue classes have empty intersection, so there is no representative or solution period to report.",
            f"The image of (u,v)↦{m1}u+{m2}v is the ideal {divisor}ℤ. Since {difference} ≡ {remainder} (mod {divisor}), the affine compatibility equation has no preimage; hence the two classes do not intersect in ℤ. The checked divisor/remainder pair is a complete impossibility witness.",
        ]
    else:
        solution = certificate["solution_family"]["least_nonnegative"]
        period = certificate["solution_family"]["exact_period"]
        next_solution = str(int(solution) + int(period))
        particular = equation["solution_family"]["particular"]
        steps = equation["solution_family"]["primitive_steps"]
        narratives = [
            f"For this case, {solution} leaves remainder {r1} when divided by {m1}, and remainder {r2} when divided by {m2}. Adding {period} keeps both remainders, so {next_solution} works too. Any two answers differ by a multiple of both moduli, so the complete list is x={solution}+{period}k for any integer k.",
            f"The checked gcd is {divisor} and divides the residue difference {difference}, so the rules overlap. One answer is {solution}; shifting by lcm({m1},{m2})={period} preserves both rules. Conversely, the difference between any two shared answers must be divisible by both moduli and therefore by {period}; this is why every answer is x={solution}+{period}k.",
            f"Subtracting the normalized residues gives the Diophantine equation {m1}u+{m2}v={difference}. Its checked family starts at ({particular['x']},{particular['y']}) with primitive step ({steps['x']},{steps['y']}); substituting u into r₁+{m1}u gives the least representative {solution}. The x-value advances by lcm({m1},{m2})={period}. Every shared x differs from {solution} by a common multiple of both moduli, proving the full family x={solution}+{period}k.",
            f"The computed representative {solution} is in [0,{period}) and satisfies both normalized congruences. If x is any other common solution, x−{solution} is divisible by {m1} and {m2}, hence by their lcm {period}; every such shift also preserves both congruences. Thus the solution set is exactly {solution}+{period}ℤ, not merely a list of examples.",
            f"Because gcd({m1},{m2})={divisor} divides {difference}, the compatibility equation has integer solutions by Bézout. The verified representative is {solution} modulo lcm({m1},{m2})={period}. In ℤ, the intersection of the two affine residue classes is the coset {solution}+{period}ℤ: necessity follows since a difference of common solutions is divisible by both moduli; sufficiency follows because {period} is divisible by each. This establishes existence and exhaustiveness.",
        ]
    return [{"tier": tier, "text": text, "status": "DRAFT_ONLY"} for tier, text in zip(tiers, narratives, strict=True)]


def _safe_case_id(case_id: object) -> str:
    if not isinstance(case_id, str) or not CASE_ID_RE.fullmatch(case_id):
        raise LocalComputationError("case ID is malformed")
    return case_id


def _load_case_versions(root: Path, case_id: str) -> list[tuple[str, dict[str, Any]]]:
    case_dir = root / "data" / "local" / "dossier-store" / "cases" / case_id
    info = case_dir.lstat()
    if case_dir.is_symlink() or not case_dir.is_dir():
        raise LocalComputationError("local computation case storage is not a regular directory")
    records: list[tuple[str, dict[str, Any]]] = []
    for path in case_dir.glob("*.json"):
        raw = _read_regular(path, MAX_DOSSIER_BYTES)
        sha = _digest(raw)
        if path.stem != sha:
            continue
        dossier = _parse_json(raw, "stored dossier")
        case = dossier.get("case")
        problem = dossier.get("problem")
        if dossier.get("schema_version") != "mathcase-dossier-v2" or not isinstance(case, dict) or case.get("id") != case_id:
            continue
        if not isinstance(problem, dict) or problem.get("kind") != "LOCAL_ARITHMETIC_TASK":
            continue
        records.append((sha, dossier))
    if not records:
        raise LocalComputationError("no admitted local arithmetic case reopened from the immutable dossier store")
    versions: dict[int, list[tuple[str, dict[str, Any]]]] = {}
    for record in records:
        version = record[1].get("case", {}).get("version")
        if not isinstance(version, int) or version < 1:
            raise LocalComputationError("stored local arithmetic dossier has no valid revision number")
        versions.setdefault(version, []).append(record)
    latest = max(versions)
    if len(versions[latest]) != 1:
        raise LocalComputationError("stored dossier has competing latest revisions; reopen the exact M8 parent before continuing")
    return records


def _validate_case_binding(root: Path, case_id: str, dossier: dict[str, Any]) -> dict[str, Any]:
    problem = dossier.get("problem")
    case = dossier.get("case")
    if not isinstance(problem, dict) or not isinstance(case, dict) or case.get("id") != case_id:
        raise LocalComputationError("local computation dossier identity is malformed")
    if problem.get("kind") != "LOCAL_ARITHMETIC_TASK" or problem.get("m0_status") != "UNASSESSED" or problem.get("lean_statement", ""):
        raise LocalComputationError("local arithmetic case cannot carry theorem or Lean proof status")
    if dossier.get("catalog_snapshot_path") is None or not DIGEST_RE.fullmatch(str(dossier.get("catalog_snapshot_sha256", ""))):
        raise LocalComputationError("local arithmetic case is missing its exact M0 pin")
    snapshot_path = _safe_project_path(root, dossier["catalog_snapshot_path"])
    snapshot_raw = _read_regular(snapshot_path, 32 << 20)
    snapshot = _parse_json(snapshot_raw, "M0 snapshot")
    if snapshot.get("schema_version") != "mathcase-catalog-v1" or snapshot.get("content_sha256") != dossier["catalog_snapshot_sha256"]:
        raise LocalComputationError("M0 snapshot identity does not match the unsigned dossier")
    validate = subprocess.run(
        ["go", "run", "./cmd/mathcase", "catalog-validate", "--snapshot", str(snapshot_path)],
        cwd=root, capture_output=True, text=True, timeout=30, check=False,
    )
    if validate.returncode != 0:
        raise LocalComputationError("the exact M0 snapshot did not pass its catalog validator")
    problem_id = problem.get("id")
    m0_problem = next((row for row in snapshot.get("problems", []) if isinstance(row, dict) and row.get("id") == problem_id), None)
    if not isinstance(m0_problem, dict) or m0_problem.get("kind") != "LOCAL_ARITHMETIC_TASK" or m0_problem.get("status") != "UNASSESSED":
        raise LocalComputationError("the exact M0 problem is missing or its local-arithmetic classification changed")
    if m0_problem.get("informal_statement") != problem.get("statement") or m0_problem.get("local_computation_spec") != problem.get("local_computation_spec"):
        raise LocalComputationError("the local arithmetic case inputs or statement differ from the pinned M0 record")
    if sorted(m0_problem.get("source_ids", [])) != sorted(problem.get("source_ids", [])):
        raise LocalComputationError("the local arithmetic dossier source links differ from the exact M0 problem")
    spec = problem.get("local_computation_spec")
    if not isinstance(spec, dict) or spec.get("tool_id") != TOOL_ID or not isinstance(spec.get("inputs"), dict):
        raise LocalComputationError("the M0 case has no supported local computation spec")
    if set(spec["inputs"]) != {"residue1", "modulus1", "residue2", "modulus2"}:
        raise LocalComputationError("the M0 computation spec has unsupported inputs")
    sources = snapshot.get("sources")
    source_by_id = {row.get("id"): row for row in sources if isinstance(row, dict)} if isinstance(sources, list) else {}
    allowed_source_ids = set(problem.get("source_ids", []))
    if not allowed_source_ids:
        raise LocalComputationError("the exact M0 task has no linked local source")
    authorization_evidence_ids: list[str] = []
    authorization_evidence_refs: list[dict[str, str]] = []
    for source_id in allowed_source_ids:
        source = source_by_id.get(source_id)
        if not isinstance(source, dict) or source.get("source_lane") != "MATHCASE_AUTHORED" or source.get("rights_status") != "CLEARED":
            raise LocalComputationError("the local arithmetic source does not carry an owner-cleared first-party scope")
        if set(source.get("allowed_uses", [])) != {"LOCAL_STORAGE", "LOCAL_COMPUTATION"}:
            raise LocalComputationError("the local arithmetic source has broader or missing use permissions")
        rights_id = source.get("rights_evidence_id")
        if not isinstance(rights_id, str) or not re.fullmatch(r"[a-z0-9][a-z0-9_-]{2,95}", rights_id):
            raise LocalComputationError("the local arithmetic source rights evidence ID is malformed")
        evidence_path = root / "data" / "local" / "config" / "local-computation-rights" / (rights_id + ".json")
        evidence = _parse_json(_read_regular(evidence_path, 64 << 10), "owner authorization evidence")
        if evidence.get("schema_version") != "mathcase-owner-local-computation-authorization-v1" or evidence.get("status") != "AUTHORIZED":
            raise LocalComputationError("the owner local-computation authorization is missing or unsupported")
        if evidence.get("problem_id") != problem_id or evidence.get("case_id") != case_id or evidence.get("source_sha256") != source.get("content_sha256"):
            raise LocalComputationError("owner local-computation authorization does not bind this exact M0 item")
        if set(evidence.get("allowed_uses", [])) != {"LOCAL_STORAGE", "LOCAL_COMPUTATION"}:
            raise LocalComputationError("owner local-computation authorization contains an unsupported use")
        authorization_evidence_ids.append(rights_id)
        authorization_evidence_refs.append({"path": f"data/local/config/local-computation-rights/{rights_id}.json", "sha256": _digest(_read_regular(evidence_path, 64 << 10)), "digest_type": "raw evidence-file SHA-256", "label": "Owner authorization · local storage and computation"})
    statement_sha = _statement_digest(problem)
    return {
        "case_id": case_id,
        "problem_id": problem_id,
        "title": problem.get("title"),
        "statement": problem.get("statement"),
        "problem_statement_sha256": statement_sha,
        "catalog_snapshot_path": dossier["catalog_snapshot_path"],
        "catalog_snapshot_sha256": dossier["catalog_snapshot_sha256"],
        "catalog_snapshot_file_sha256": _digest(snapshot_raw),
        "authorization_evidence_ids": sorted(authorization_evidence_ids),
        "authorization_evidence_refs": authorization_evidence_refs,
        "spec": spec,
        "dossier_sha256": None,
    }


def _latest_case(root: Path, case_id: str) -> tuple[str, dict[str, Any], dict[str, Any], list[tuple[str, dict[str, Any]]]]:
    records = _load_case_versions(root, case_id)
    latest_version = max(row[1]["case"]["version"] for row in records)
    current_sha, dossier = next(row for row in records if row[1]["case"]["version"] == latest_version)
    binding = _validate_case_binding(root, case_id, dossier)
    binding["dossier_sha256"] = current_sha
    return current_sha, dossier, binding, records


def _write_content_addressed(path: Path, raw: bytes, expected_sha: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists():
        if _digest(_read_regular(path, MAX_RECORD_BYTES)) != expected_sha:
            raise LocalComputationError("content-addressed local computation file already exists with different bytes")
        return
    handle, temp_name = tempfile.mkstemp(prefix=".mathcase-local-computation-", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(handle, "wb") as stream:
            stream.write(raw)
            stream.flush()
            os.fsync(stream.fileno())
        try:
            os.link(temp_name, path)
            os.unlink(temp_name)
        except FileExistsError:
            os.unlink(temp_name)
            if _digest(_read_regular(path, MAX_RECORD_BYTES)) != expected_sha:
                raise LocalComputationError("another local computation wrote different bytes to the content address")
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def _open_attached_artifact(root: Path, ref: dict[str, Any], binding: dict[str, Any]) -> dict[str, Any]:
    relative = ref.get("relative_path")
    if not isinstance(relative, str) or not relative.startswith(f"cases/{binding['case_id']}/local-computations/"):
        raise LocalComputationError("dossier local-computation path does not match the case")
    store_root = root / "data" / "local" / "dossier-store"
    path = _safe_project_path(store_root, relative)
    raw = _read_regular(path, MAX_RECORD_BYTES)
    if _digest(raw) != ref.get("artifact_sha256"):
        raise LocalComputationError("dossier local-computation artifact digest changed")
    artifact = _parse_json(raw, "local computation artifact")
    expected = {
        "schema_version": ARTIFACT_SCHEMA,
        "artifact_id": ref.get("artifact_id"),
        "case_id": binding["case_id"],
        "problem_id": binding["problem_id"],
        "catalog_snapshot_sha256": binding["catalog_snapshot_sha256"],
        "problem_statement_sha256": binding["problem_statement_sha256"],
        "parent_dossier_sha256": ref.get("parent_dossier_sha256"),
        "idempotency_key": ref.get("idempotency_key"),
        "tool_id": TOOL_ID,
        "tool_version": TOOL_VERSION,
        "authorization_evidence_ids": binding["authorization_evidence_ids"],
    }
    if any(artifact.get(key) != value for key, value in expected.items()):
        raise LocalComputationError("local computation artifact does not match its dossier reference")
    if artifact.get("inputs") != binding["spec"]["inputs"]:
        raise LocalComputationError("local computation artifact inputs differ from the exact M0 case")
    certificate = _verify_record(artifact.get("record"), binding["spec"]["inputs"])
    if artifact.get("result_sha256") != artifact["record"].get("content_sha256"):
        raise LocalComputationError("local computation result digest does not match the checked record")
    if artifact.get("explanations") not in (_explanations(certificate), _legacy_explanations(certificate)):
        raise LocalComputationError("the five explanation drafts do not match the checked arithmetic result")
    boundary = artifact.get("boundary")
    if boundary != {
        "proof_execution": "NOT_RUN", "lean_verification": "NOT_RUN", "gate_effect": "NONE",
        "queue_effect": "NONE", "provider_calls": 0, "training_use": "NOT_AUTHORIZED",
    }:
        raise LocalComputationError("local computation artifact claims an unsupported proof or gate effect")
    return artifact


def read_case(root: Path, case_id: object) -> dict[str, Any]:
    case_id = _safe_case_id(case_id)
    _, dossier, binding, _records = _latest_case(root, case_id)
    refs = dossier.get("local_computation_artifacts", [])
    if not isinstance(refs, list):
        raise LocalComputationError("the local computation dossier references are malformed")
    artifacts = [
        {**_open_attached_artifact(root, ref, binding), "artifact_sha256": ref["artifact_sha256"], "relative_path": ref["relative_path"]}
        for ref in refs if isinstance(ref, dict)
    ]
    if len(artifacts) != len(refs):
        raise LocalComputationError("the local computation dossier contains an invalid artifact reference")
    return {
        "schema_version": "mathcase-local-computation-case-v1",
        **binding,
        "kind": "LOCAL_ARITHMETIC_TASK",
        "claim_class": "LOCAL_ARITHMETIC_TASK",
        "informal_statement": binding["statement"],
        "question": binding["statement"],
        "case_version": dossier["case"]["version"],
        "gate_states": {item.get("gate"): item.get("status") for item in dossier.get("verifications", []) if isinstance(item, dict)},
        "signed": False,
        "delivery_ready": False,
        "artifacts": artifacts,
        "sources": [
            {
                "path": binding["catalog_snapshot_path"],
                "sha256": binding["catalog_snapshot_file_sha256"],
                "digest_type": "raw M0 snapshot file SHA-256",
                "catalog_content_sha256": binding["catalog_snapshot_sha256"],
                "label": "M0 catalog snapshot",
            },
            {"path": f"data/local/dossier-store/cases/{case_id}/{binding['dossier_sha256']}.json", "sha256": binding["dossier_sha256"], "digest_type": "raw dossier-file SHA-256", "label": "Current unsigned M8 dossier"},
            *binding["authorization_evidence_refs"],
            *[{"path": artifact["relative_path"], "sha256": artifact["artifact_sha256"], "digest_type": "raw artifact-file SHA-256", "label": "Checked local computation artifact"} for artifact in artifacts],
        ],
        "metrics": artifacts[-1]["record"]["local_metrics"] if artifacts else {"state": "NOT_COMPUTED"},
        "expositor": {"state": "LOCAL_DRAFT_ONLY", "tiers": artifacts[-1]["explanations"] if artifacts else []},
        "next_action": "Compute and check the exact local certificate, then record an explicitly unverified human review if useful.",
        "boundary": {"proof_execution": "NOT_RUN", "lean_verification": "NOT_RUN", "gate_effect": "NONE", "queue_effect": "NONE", "provider_calls": 0, "training_use": "NOT_AUTHORIZED"},
    }


def read_artifact(root: Path, case_id: object, artifact_sha256: object) -> dict[str, Any]:
    """Reopen one exact saved computation from the earliest dossier that attached it."""
    case_id = _safe_case_id(case_id)
    if not isinstance(artifact_sha256, str) or not DIGEST_RE.fullmatch(artifact_sha256):
        raise LocalComputationError("local computation artifact digest is malformed")
    versions = _load_case_versions(root, case_id)
    matches: list[tuple[int, str, dict[str, Any], dict[str, Any]]] = []
    for dossier_sha, dossier in versions:
        refs = dossier.get("local_computation_artifacts", [])
        if not isinstance(refs, list):
            raise LocalComputationError("the local computation dossier references are malformed")
        for ref in refs:
            if isinstance(ref, dict) and ref.get("artifact_sha256") == artifact_sha256:
                matches.append((dossier["case"]["version"], dossier_sha, dossier, ref))
    if not matches:
        raise LocalComputationError("the requested artifact is not attached to a reopened dossier for this case")

    first_version = min(row[0] for row in matches)
    first_matches = [row for row in matches if row[0] == first_version]
    if len(first_matches) != 1:
        raise LocalComputationError("the artifact has competing first attachment dossiers; exact provenance is ambiguous")
    selected_version, selected_dossier_sha, selected_dossier, ref = first_matches[0]
    parent_sha = ref.get("parent_dossier_sha256")
    parents = [row for row in versions if row[1].get("case", {}).get("version") == selected_version - 1 and row[0] == parent_sha]
    if len(parents) != 1:
        raise LocalComputationError("the selected artifact's exact parent dossier revision did not reopen")
    _validate_case_binding(root, case_id, parents[0][1])
    binding = _validate_case_binding(root, case_id, selected_dossier)
    binding["dossier_sha256"] = selected_dossier_sha
    artifact = {
        **_open_attached_artifact(root, ref, binding),
        "artifact_sha256": ref["artifact_sha256"],
        "relative_path": ref["relative_path"],
    }
    latest_version = max(row[1].get("case", {}).get("version", 0) for row in versions)
    return {
        "schema_version": "mathcase-local-computation-artifact-context-v1",
        **binding,
        "kind": "LOCAL_ARITHMETIC_TASK",
        "claim_class": "LOCAL_ARITHMETIC_TASK",
        "informal_statement": binding["statement"],
        "question": binding["statement"],
        "case_version": selected_version,
        "latest_case_version": latest_version,
        "selected_artifact_sha256": artifact_sha256,
        "artifact_parent_dossier_sha256": parent_sha,
        "signed": False,
        "delivery_ready": False,
        "artifacts": [artifact],
        "sources": [
            {"path": binding["catalog_snapshot_path"], "sha256": binding["catalog_snapshot_sha256"], "digest_type": "catalog content digest", "label": "M0 catalog snapshot"},
            {"path": f"data/local/dossier-store/cases/{case_id}/{selected_dossier_sha}.json", "sha256": selected_dossier_sha, "digest_type": "raw dossier-file SHA-256", "label": "Exact unsigned M8 dossier revision"},
            *binding["authorization_evidence_refs"],
            {"path": artifact["relative_path"], "sha256": artifact_sha256, "digest_type": "raw artifact-file SHA-256", "label": "Exact checked local computation artifact"},
        ],
        "metrics": artifact["record"]["local_metrics"],
        "expositor": {"state": "LOCAL_DRAFT_ONLY", "tiers": artifact["explanations"]},
        "next_action": "Inspect the exact saved arithmetic certificate or return to the current dossier.",
        "boundary": {"proof_execution": "NOT_RUN", "lean_verification": "NOT_RUN", "gate_effect": "NONE", "queue_effect": "NONE", "provider_calls": 0, "training_use": "NOT_AUTHORIZED"},
    }


def create_computation(root: Path, payload: object) -> dict[str, Any]:
    if not isinstance(payload, dict) or set(payload) != {"schema_version", "case_id", "parent_dossier_sha256", "idempotency_key", "record"}:
        raise LocalComputationError("local computation submission has an unsupported shape")
    if payload.get("schema_version") != "mathcase-local-computation-submit-v1":
        raise LocalComputationError("local computation submission version is unsupported")
    case_id = _safe_case_id(payload.get("case_id"))
    parent_sha = payload.get("parent_dossier_sha256")
    idempotency_key = payload.get("idempotency_key")
    if not isinstance(parent_sha, str) or not DIGEST_RE.fullmatch(parent_sha) or not isinstance(idempotency_key, str) or not IDEMPOTENCY_RE.fullmatch(idempotency_key):
        raise LocalComputationError("local computation parent or idempotency identity is malformed")

    store_root = root / "data" / "local" / "dossier-store"
    case_store = store_root / "cases" / case_id
    case_store.mkdir(parents=True, exist_ok=True)
    lock_path = case_store / ".local-computation.lock"
    with exclusive_file_lock(lock_path, timeout_seconds=5):
        current_sha, dossier, binding, versions = _latest_case(root, case_id)
        # A repeated key recovers the original immutable artifact, even after its
        # dossier successor became the current revision.
        for version_sha, version in versions:
            for ref in version.get("local_computation_artifacts", []):
                if not isinstance(ref, dict) or ref.get("idempotency_key") != idempotency_key:
                    continue
                artifact = _open_attached_artifact(root, ref, binding)
                if ref.get("parent_dossier_sha256") != parent_sha or artifact.get("record") != payload.get("record"):
                    raise LocalComputationError("idempotency key was already used for a different local computation")
                return {"status": "REOPENED_IDEMPOTENT", "case": read_case(root, case_id), "artifact": artifact, "duplicate": True}
        if current_sha != parent_sha:
            raise LocalComputationError("selected dossier revision is stale; reopen the current case before computing")
        if len(json.dumps(payload, ensure_ascii=False).encode("utf-8")) > MAX_RECORD_BYTES:
            raise LocalComputationError("local computation submission exceeds the fixed size limit")
        record = payload["record"]
        certificate = _verify_record(record, binding["spec"]["inputs"])
        explanations = _explanations(certificate)
        now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
        artifact_id = "local-comp-" + idempotency_key[:20]
        artifact = {
            "schema_version": ARTIFACT_SCHEMA,
            "status": "CHECKED_LOCAL_ARITHMETIC",
            "artifact_id": artifact_id,
            "tool_id": TOOL_ID,
            "tool_version": TOOL_VERSION,
            "case_id": case_id,
            "problem_id": binding["problem_id"],
            "catalog_snapshot_sha256": binding["catalog_snapshot_sha256"],
            "problem_statement_sha256": binding["problem_statement_sha256"],
            "parent_dossier_sha256": current_sha,
            "idempotency_key": idempotency_key,
            "inputs": binding["spec"]["inputs"],
            "record": record,
            "result_sha256": record["content_sha256"],
            "explanations": explanations,
            "authorization_evidence_ids": binding["authorization_evidence_ids"],
            "recorded_at_utc": now,
            "boundary": {"proof_execution": "NOT_RUN", "lean_verification": "NOT_RUN", "gate_effect": "NONE", "queue_effect": "NONE", "provider_calls": 0, "training_use": "NOT_AUTHORIZED"},
        }
        artifact_bytes = json.dumps(artifact, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode("utf-8") + b"\n"
        artifact_sha = _digest(artifact_bytes)
        relative = f"cases/{case_id}/local-computations/{artifact_sha}.json"
        artifact_path = store_root.joinpath(*relative.split("/"))
        _write_content_addressed(artifact_path, artifact_bytes, artifact_sha)
        reference = {
            "schema_version": "mathcase-local-computation-ref-v1",
            "artifact_id": artifact_id,
            "relative_path": relative,
            "artifact_sha256": artifact_sha,
            "case_id": case_id,
            "problem_id": binding["problem_id"],
            "catalog_snapshot_sha256": binding["catalog_snapshot_sha256"],
            "problem_statement_sha256": binding["problem_statement_sha256"],
            "parent_dossier_sha256": current_sha,
            "idempotency_key": idempotency_key,
            "tool_id": TOOL_ID,
            "tool_version": TOOL_VERSION,
            "result_sha256": record["content_sha256"],
        }
        successor = copy.deepcopy(dossier)
        successor.setdefault("local_computation_artifacts", []).append(reference)
        successor["case"]["version"] += 1
        successor["case"]["updated_at"] = now
        successor_path = case_store / ("local-computation-parent-" + idempotency_key + ".json")
        successor_path.write_text(json.dumps(successor, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        try:
            result = subprocess.run(
                ["go", "run", "./cmd/mathcase", "dossier-store", "--dossier", str(successor_path), "--store-root", str(store_root)],
                cwd=root, capture_output=True, text=True, timeout=60, check=False,
            )
        finally:
            try:
                successor_path.unlink()
            except FileNotFoundError:
                pass
        if result.returncode != 0:
            raise LocalComputationError("the M8 dossier successor failed the domain and artifact-reference validator")
        return {"status": "PERSISTED_AND_REOPENED", "case": read_case(root, case_id), "artifact": artifact, "duplicate": False}


REVIEW_STORE_RELATIVE = Path("data/local/staging/case-feedback/local-computation-reviews.jsonl")
REVIEW_STORE_MAX_BYTES = 16 << 20
REVIEW_STORE_MAX_RECORDS = 1000
REVIEW_TIERS = ("HIGH_SCHOOL", "ASSOCIATE", "BACHELOR", "MASTER", "DOCTORATE")
REVIEW_RATINGS = {"CLEAR", "NEEDS_REVISION", "NEEDS_EXPERT_REVIEW", "NOT_REVIEWED"}


def _review_record_valid(record: object) -> bool:
    if not isinstance(record, dict):
        return False
    if set(record) != {
        "schema_version", "review_id", "recorded_at_utc", "case_id", "problem_id",
        "catalog_snapshot_sha256", "problem_statement_sha256", "artifact_sha256",
        "reviewer_label", "identity_status", "tiers", "gate_effect", "training_use",
    }:
        return False
    if record.get("schema_version") != "mathcase-local-computation-human-review-v1":
        return False
    if record.get("reviewer_label") != "Local human reviewer (identity unverified)" or record.get("identity_status") != "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED":
        return False
    if record.get("gate_effect") != "NONE" or record.get("training_use") != "NOT_AUTHORIZED":
        return False
    if not all(DIGEST_RE.fullmatch(str(record.get(key, ""))) for key in ("catalog_snapshot_sha256", "problem_statement_sha256", "artifact_sha256")):
        return False
    tiers = record.get("tiers")
    if not isinstance(tiers, list) or len(tiers) != len(REVIEW_TIERS):
        return False
    for expected_tier, item in zip(REVIEW_TIERS, tiers, strict=True):
        if not isinstance(item, dict) or set(item) != {"tier", "rating", "comment"}:
            return False
        if item.get("tier") != expected_tier or item.get("rating") not in REVIEW_RATINGS:
            return False
        comment = item.get("comment")
        if not isinstance(comment, str) or len(comment) > 2000:
            return False
    return True


def _read_review_store_unlocked(path: Path) -> tuple[list[dict[str, Any]], str]:
    if not path.exists():
        return [], "0" * 64
    if path.is_symlink() or not path.is_file() or path.stat().st_size > REVIEW_STORE_MAX_BYTES:
        raise LocalComputationError("local computation review store is not a bounded regular file")
    raw = path.read_bytes()
    records: list[dict[str, Any]] = []
    previous = "0" * 64
    lines = raw.splitlines()
    if len(lines) > REVIEW_STORE_MAX_RECORDS:
        raise LocalComputationError("local computation review store exceeded its record limit")
    for sequence, line in enumerate(lines, 1):
        entry = _parse_json(line, "local computation review entry")
        if set(entry) != {"schema_version", "sequence", "previous_entry_sha256", "record", "record_sha256", "entry_sha256"}:
            raise LocalComputationError("local computation review entry has an unsupported shape")
        record = entry["record"]
        if entry.get("schema_version") != "mathcase-local-computation-review-entry-v1" or entry.get("sequence") != sequence:
            raise LocalComputationError("local computation review sequence is not canonical")
        if entry.get("previous_entry_sha256") != previous or not _review_record_valid(record):
            raise LocalComputationError("local computation review chain or record is invalid")
        record_sha = _digest(_stable_json(record))
        if entry.get("record_sha256") != record_sha:
            raise LocalComputationError("local computation review record digest changed")
        entry_payload = {key: value for key, value in entry.items() if key != "entry_sha256"}
        entry_sha = _digest(_stable_json(entry_payload))
        if entry.get("entry_sha256") != entry_sha:
            raise LocalComputationError("local computation review entry digest changed")
        records.append(record)
        previous = entry_sha
    return records, previous


def _read_review_store(root: Path, store_path: Path | None = None) -> tuple[list[dict[str, Any]], str]:
    path = Path(store_path) if store_path is not None else root / REVIEW_STORE_RELATIVE
    path.parent.mkdir(parents=True, exist_ok=True)
    with exclusive_file_lock(path.with_suffix(path.suffix + ".lock"), timeout_seconds=3):
        return _read_review_store_unlocked(path)


def read_reviews(
    root: Path, case_id: object, artifact_sha256: object, *, store_path: Path | None = None
) -> dict[str, Any]:
    case = read_case(root, case_id)
    if not isinstance(artifact_sha256, str) or not DIGEST_RE.fullmatch(artifact_sha256):
        raise LocalComputationError("review read requires an exact local artifact digest")
    artifact = next((item for item in case["artifacts"] if item.get("artifact_sha256") == artifact_sha256), None)
    if artifact is None:
        raise LocalComputationError("review target is not attached to this reopened case")
    records, head = _read_review_store(root, store_path)
    target = [item for item in records if item.get("case_id") == case["case_id"]]
    matching = [item for item in target if item.get("artifact_sha256") == artifact_sha256 and item.get("problem_statement_sha256") == case["problem_statement_sha256"]]
    return {
        "schema_version": "mathcase-local-computation-review-view-v1",
        "case_id": case["case_id"],
        "artifact_sha256": artifact_sha256,
        "reviews": matching,
        "stale_review_count": len(target) - len(matching),
        "store_record_count": len(records),
        "store_head_sha256": head,
        "store_path": REVIEW_STORE_RELATIVE.as_posix(),
    }


def append_review(root: Path, payload: object, *, store_path: Path | None = None) -> dict[str, Any]:
    required = {"schema_version", "case_id", "artifact_sha256", "problem_statement_sha256", "idempotency_key", "tiers"}
    if not isinstance(payload, dict) or set(payload) != required or payload.get("schema_version") != "mathcase-local-computation-review-submit-v1":
        raise LocalComputationError("local computation review submission has an unsupported shape")
    case_id = _safe_case_id(payload.get("case_id"))
    artifact_sha = payload.get("artifact_sha256")
    statement_sha = payload.get("problem_statement_sha256")
    key = payload.get("idempotency_key")
    if not isinstance(artifact_sha, str) or not DIGEST_RE.fullmatch(artifact_sha) or not isinstance(statement_sha, str) or not DIGEST_RE.fullmatch(statement_sha):
        raise LocalComputationError("local computation review target digest is malformed")
    if not isinstance(key, str) or not IDEMPOTENCY_RE.fullmatch(key):
        raise LocalComputationError("local computation review idempotency key is malformed")
    case = read_case(root, case_id)
    artifact = next((item for item in case["artifacts"] if item.get("artifact_sha256") == artifact_sha), None)
    if artifact is None or statement_sha != case["problem_statement_sha256"]:
        raise LocalComputationError("local computation review target is stale or belongs to a different case statement")
    tiers = payload.get("tiers")
    if not isinstance(tiers, list) or len(tiers) != len(REVIEW_TIERS):
        raise LocalComputationError("one review row is required for each of the five explanation drafts")
    normalized_tiers: list[dict[str, str]] = []
    for expected_tier, item in zip(REVIEW_TIERS, tiers, strict=True):
        if not isinstance(item, dict) or set(item) != {"tier", "rating", "comment"} or item.get("tier") != expected_tier:
            raise LocalComputationError("review rows must preserve the exact five-tier order")
        rating, comment = item.get("rating"), item.get("comment")
        if rating not in REVIEW_RATINGS or not isinstance(comment, str) or len(comment) > 2000:
            raise LocalComputationError("review rating or comment is invalid")
        normalized_tiers.append({"tier": expected_tier, "rating": rating, "comment": comment.strip()})

    now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    review_id = "local-review-" + key[:20]
    record = {
        "schema_version": "mathcase-local-computation-human-review-v1",
        "review_id": review_id,
        "recorded_at_utc": now,
        "case_id": case_id,
        "problem_id": case["problem_id"],
        "catalog_snapshot_sha256": case["catalog_snapshot_sha256"],
        "problem_statement_sha256": case["problem_statement_sha256"],
        "artifact_sha256": artifact_sha,
        "reviewer_label": "Local human reviewer (identity unverified)",
        "identity_status": "LOCAL_SELF_ATTESTATION_UNAUTHENTICATED",
        "tiers": normalized_tiers,
        "gate_effect": "NONE",
        "training_use": "NOT_AUTHORIZED",
    }
    if not _review_record_valid(record):
        raise LocalComputationError("local computation review failed its local schema check")

    path = Path(store_path) if store_path is not None else root / REVIEW_STORE_RELATIVE
    path.parent.mkdir(parents=True, exist_ok=True)
    with exclusive_file_lock(path.with_suffix(path.suffix + ".lock"), timeout_seconds=3):
        # Reopen the exact target after obtaining the append lock.
        current = read_case(root, case_id)
        current_artifact = next((item for item in current["artifacts"] if item.get("artifact_sha256") == artifact_sha), None)
        if current_artifact is None or current["problem_statement_sha256"] != statement_sha:
            raise LocalComputationError("local computation review target changed before save")
        records, previous = _read_review_store_unlocked(path)
        existing = next((item for item in records if item.get("review_id") == review_id), None)
        if existing is not None:
            comparable = dict(record)
            comparable["recorded_at_utc"] = existing["recorded_at_utc"]
            if comparable != existing:
                raise LocalComputationError("review idempotency key was already used for different review content")
            current_records = [item for item in records if item.get("case_id") == case_id]
            matching = [item for item in current_records if item.get("artifact_sha256") == artifact_sha and item.get("problem_statement_sha256") == statement_sha]
            return {
                "status": "REOPENED_IDEMPOTENT", "record": existing, "duplicate": True,
                "schema_version": "mathcase-local-computation-review-view-v1", "case_id": case_id,
                "artifact_sha256": artifact_sha, "reviews": matching,
                "stale_review_count": len(current_records) - len(matching),
                "store_record_count": len(records), "store_head_sha256": previous,
                "store_path": REVIEW_STORE_RELATIVE.as_posix(),
            }
        if len(records) >= REVIEW_STORE_MAX_RECORDS:
            raise LocalComputationError("local computation review store reached its record limit")
        entry = {
            "schema_version": "mathcase-local-computation-review-entry-v1",
            "sequence": len(records) + 1,
            "previous_entry_sha256": previous,
            "record": record,
            "record_sha256": _digest(_stable_json(record)),
        }
        entry["entry_sha256"] = _digest(_stable_json(entry))
        with path.open("ab") as stream:
            stream.write(_stable_json(entry) + b"\n")
            stream.flush()
            os.fsync(stream.fileno())
        next_records = records + [record]
        next_previous = entry["entry_sha256"]
        matching = [item for item in next_records if item.get("case_id") == case_id and item.get("artifact_sha256") == artifact_sha and item.get("problem_statement_sha256") == statement_sha]
        view = {
            "schema_version": "mathcase-local-computation-review-view-v1", "case_id": case_id,
            "artifact_sha256": artifact_sha, "reviews": matching,
            "stale_review_count": sum(item.get("case_id") == case_id for item in next_records) - len(matching),
            "store_record_count": len(next_records), "store_head_sha256": next_previous,
            "store_path": REVIEW_STORE_RELATIVE.as_posix(),
        }
        return {"status": "RECORDED_AND_REOPENED", "record": record, "duplicate": False, **view}


def list_cases(root: Path) -> list[dict[str, Any]]:
    case_root = root / "data" / "local" / "dossier-store" / "cases"
    if not case_root.is_dir() or case_root.is_symlink():
        return []
    results = []
    for case_dir in sorted(case_root.iterdir(), key=lambda item: item.name):
        if not case_dir.is_dir() or case_dir.is_symlink() or not CASE_ID_RE.fullmatch(case_dir.name):
            continue
        has_local_task = False
        for candidate in case_dir.glob("*.json"):
            try:
                dossier = _parse_json(_read_regular(candidate, MAX_DOSSIER_BYTES), "stored dossier")
            except (OSError, LocalComputationError):
                continue
            case = dossier.get("case")
            problem = dossier.get("problem")
            if isinstance(case, dict) and case.get("id") == case_dir.name and isinstance(problem, dict) and problem.get("kind") == "LOCAL_ARITHMETIC_TASK":
                has_local_task = True
                break
        if not has_local_task:
            continue
        try:
            case = read_case(root, case_dir.name)
            results.append({
                "case_id": case["case_id"], "problem_id": case["problem_id"], "title": case["title"],
                "kind": case["kind"], "case_version": case["case_version"],
                "artifact_count": len(case["artifacts"]), "delivery_ready": False,
            })
        except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
            results.append({"case_id": case_dir.name, "state": "UNAVAILABLE", "reason": str(exc), "delivery_ready": False})
    return results
