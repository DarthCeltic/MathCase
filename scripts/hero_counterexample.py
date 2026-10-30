"""A reproducible exact arithmetic check, separate from historical model calls."""
from __future__ import annotations

import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

CASE_ID = "hero-composite-counterexample-r1"
STATEMENT = "∀ n : Nat, 4 ∣ n ^ 2 → 4 ∣ n"
DIRECTORY = "proofs/first-rung/evidence/composite-counterexample-r1"
STATEMENT_PATH = DIRECTORY + "/statement.json"
RECEIPT_PATH = DIRECTORY + "/check.json"


def digest(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def computation() -> dict[str, object]:
    divisor, witness = 4, 2
    square = witness ** 2
    quotient, square_remainder = divmod(square, divisor)
    _, base_remainder = divmod(witness, divisor)
    if square_remainder != 0 or base_remainder == 0:
        raise ValueError("the witness does not refute the implication")
    return {"domain": "Nat", "divisor": divisor, "witness": witness,
            "square": square, "square_quotient": quotient,
            "square_remainder": square_remainder, "base_remainder": base_remainder,
            "premise_holds": True, "conclusion_holds": False}


def write_record(root: Path) -> None:
    target = root / DIRECTORY
    target.mkdir(parents=True, exist_ok=False)
    statement = {"schema_version": "mathcase-counterexample-statement-v1", "case_id": CASE_ID,
                 "origin": "LOCAL_TASK_AUTHORED_DEMONSTRATION", "lean_statement": STATEMENT,
                 "informal_statement": "For every natural number n, if 4 divides n squared, then 4 divides n.",
                 "revised_case_id": "hero-prime-divisibility-r1",
                 "historical_model_input": False, "human_reviewer_claimed": False}
    raw = (json.dumps(statement, ensure_ascii=False, indent=2) + "\n").encode("utf-8")
    (root / STATEMENT_PATH).write_bytes(raw)
    receipt = {"schema_version": "mathcase-exact-arithmetic-counterexample-v1", "case_id": CASE_ID,
               "run_id": CASE_ID + "-exact-arithmetic", "recorded_at_utc": datetime.now(timezone.utc).isoformat(),
               "status": "COUNTEREXAMPLE_CHECKED", "checker": "PYTHON_INTEGER_DIVMOD",
               "checker_source_path": "scripts/hero_counterexample.py",
               "checker_source_sha256": digest(Path(__file__).read_bytes()),
               "statement_path": STATEMENT_PATH, "statement_sha256": digest(raw),
               "calculation": computation(), "provider_calls": 0, "cost_micros": 0,
               "lean_kernel_check": "NOT_PERFORMED", "historical_model_input": False,
               "meaning_review": "PENDING", "gate_effect": "NONE"}
    (root / RECEIPT_PATH).write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")


def read_record(root: Path) -> dict[str, object]:
    statement_raw = (root / STATEMENT_PATH).read_bytes()
    receipt_raw = (root / RECEIPT_PATH).read_bytes()
    statement, receipt = json.loads(statement_raw), json.loads(receipt_raw)
    if (statement.get("case_id") != CASE_ID or statement.get("lean_statement") != STATEMENT
            or statement.get("origin") != "LOCAL_TASK_AUTHORED_DEMONSTRATION"
            or statement.get("historical_model_input") is not False
            or receipt.get("case_id") != CASE_ID or receipt.get("status") != "COUNTEREXAMPLE_CHECKED"
            or receipt.get("checker") != "PYTHON_INTEGER_DIVMOD"
            or receipt.get("statement_sha256") != digest(statement_raw)
            or receipt.get("checker_source_sha256") != digest((root / "scripts/hero_counterexample.py").read_bytes())
            or receipt.get("calculation") != computation()
            or receipt.get("historical_model_input") is not False
            or receipt.get("lean_kernel_check") != "NOT_PERFORMED"):
        raise ValueError("the saved counterexample does not match its exact statement, checker, and arithmetic")
    return {"statement": statement, "receipt": receipt,
            "statement_sha256": digest(statement_raw), "receipt_sha256": digest(receipt_raw)}


def case_context(root: Path) -> dict[str, object]:
    record = read_record(root)
    receipt, statement = record["receipt"], record["statement"]
    selected = {"run_id": receipt["run_id"], "status": "COUNTEREXAMPLE_CHECKED",
                "recorded_at_utc": receipt["recorded_at_utc"], "actual_search": False,
                "receipt_path": RECEIPT_PATH, "receipt_sha256": record["receipt_sha256"],
                "provider_call_count": 0, "provider_cost_micros": 0}
    return {"schema_version": "mathcase-case-context-v1", "case_id": CASE_ID, "problem_id": CASE_ID,
            "title": "Four divides a square: a counterexample", "claim_class": "CHECKED_LOCAL_COUNTEREXAMPLE",
            "informal_statement": statement["informal_statement"], "lean_statement": STATEMENT,
            "selected_run": selected, "runs": [selected], "attempt_history": [],
            "counterexample": {**receipt["calculation"], "status": receipt["status"],
                               "checker": receipt["checker"], "receipt_path": RECEIPT_PATH,
                               "receipt_sha256": record["receipt_sha256"],
                               "chronology": "Checked locally after the saved prime proof; never an input to its historical model calls."},
            "revised_case_id": statement["revised_case_id"], "expositor": None,
            "dossier_status": "COUNTEREXAMPLE_CHECKED", "case_cost_micros": 0,
            "case_provider_call_count": 0, "delivery_ready": False, "source_allows_provider_input": False,
            "research_allowed": False, "review_bindings": {}, "review_packet": None,
            "why_this_case": "At n = 2, 4 divides 4 but does not divide 2. Exact local integer arithmetic refutes this claim.",
            "sources": [{"path": STATEMENT_PATH, "sha256": record["statement_sha256"], "label": "Original local demonstration claim"},
                        {"path": RECEIPT_PATH, "sha256": record["receipt_sha256"], "label": "Exact arithmetic witness check"}],
            "boundary": {"meaning_review": "PENDING", "training": "NOT_AUTHORIZED", "public_export": "NOT_AUTHORIZED"}}


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--write", action="store_true")
    args = parser.parse_args()
    repository = Path(__file__).resolve().parents[1]
    if args.write:
        write_record(repository)
    result = read_record(repository)
    print(json.dumps({"case_id": CASE_ID, "status": result["receipt"]["status"],
                      "receipt_sha256": result["receipt_sha256"], "calculation": computation()}))
