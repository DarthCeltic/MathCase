#!/usr/bin/env python3
"""Verify the staged public-safe exact-statement graph and its evidence bindings."""
from __future__ import annotations

import hashlib
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GRAPH = ROOT / "evidence/knowledge-graph/public-slice-v1"
RECEIPT_REL = "evidence/collatz/m15-m20-pinned-replay/shard-receipts.jsonl"
SHA_RE = re.compile(r"^[0-9a-f]{64}$")


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def fail(errors: list[str], message: str) -> None:
    errors.append(message)


def read_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> int:
    errors: list[str] = []
    inventory_path = ROOT / "PACKAGE_INVENTORY.json"
    inventory = read_json(inventory_path)
    listed: dict[str, dict] = {}
    for item in inventory:
        rel = item.get("path")
        if not isinstance(rel, str) or Path(rel).is_absolute() or ".." in Path(rel).parts:
            fail(errors, "inventory contains an unsafe relative path")
            continue
        if rel in listed:
            fail(errors, f"inventory repeats {rel}")
            continue
        listed[rel] = item
        path = ROOT / Path(rel)
        if not path.is_file():
            fail(errors, f"inventory file missing: {rel}")
            continue
        data = path.read_bytes()
        if len(data) != item.get("bytes") or digest(data) != item.get("sha256"):
            fail(errors, f"inventory binding mismatch: {rel}")
    actual = {
        p.relative_to(ROOT).as_posix()
        for p in ROOT.rglob("*")
        if p.is_file() and p.name != "PACKAGE_INVENTORY.json"
    }
    if actual != set(listed):
        fail(errors, "package inventory path set differs from the package tree")

    manifest_bytes = (GRAPH / "manifest.json").read_bytes()
    manifest_sha = digest(manifest_bytes)
    sidecar = (GRAPH / "manifest.sha256").read_text(encoding="ascii").split()
    if sidecar != [manifest_sha, "manifest.json"]:
        fail(errors, "graph manifest sidecar mismatch")
    manifest = json.loads(manifest_bytes.decode("utf-8"))
    expected_manifest = {
        "schema_version": "mathcase-public-knowledge-graph-v1",
        "status": "PUBLIC_SAFE_PARTIAL_SLICE",
        "record_count": 4262,
        "cohort_counts": {"collatz-m15-m20-pinned-shards": 4262},
        "index_path": "index.jsonl",
        "m4_promotions": 0,
        "external_calls": 0,
        "external_spend_usd": 0,
        "excluded_owner_only_records": 29,
        "excluded_source_graph_records": 0,
        "excluded_historical_aggregate_records": 3,
    }
    for key, expected in expected_manifest.items():
        if manifest.get(key) != expected:
            fail(errors, f"graph manifest field mismatch: {key}")
    if not isinstance(manifest.get("exclusion_note"), str) or not manifest["exclusion_note"].strip():
        fail(errors, "graph manifest lacks its exclusion note")

    index_bytes = (GRAPH / "index.jsonl").read_bytes()
    if digest(index_bytes) != manifest.get("index_sha256"):
        fail(errors, "graph index hash mismatch")
    index_rows = [json.loads(line) for line in index_bytes.splitlines() if line]
    index_pairs = []
    seen_ids = set()
    for row in index_rows:
        if set(row) != {"case_id", "statement_sha256"}:
            fail(errors, "graph index row has fields outside the exact-match schema")
        cid, statement_sha = row.get("case_id"), row.get("statement_sha256")
        if not isinstance(cid, str) or not cid or cid in seen_ids or not isinstance(statement_sha, str) or not SHA_RE.fullmatch(statement_sha):
            fail(errors, "graph index has an invalid or duplicate row")
        seen_ids.add(cid)
        index_pairs.append((cid, statement_sha))

    records_bytes = (GRAPH / "records.jsonl").read_bytes()
    records_sidecar = (GRAPH / "records.sha256").read_text(encoding="ascii").split()
    if records_sidecar != [digest(records_bytes), "records.jsonl"]:
        fail(errors, "rich graph records sidecar mismatch")
    records = [json.loads(line) for line in records_bytes.splitlines() if line]
    if len(records) != len(index_rows) or len(records) != manifest.get("record_count"):
        fail(errors, "graph records, index, and manifest counts differ")
    record_pairs = [(r.get("case_id"), r.get("statement_sha256")) for r in records]
    if record_pairs != index_pairs:
        fail(errors, "graph index does not exactly match the inspectable records")

    receipt_path = ROOT / RECEIPT_REL
    receipt_bytes = receipt_path.read_bytes()
    receipt_lines = receipt_bytes.splitlines(keepends=True)
    receipt_rows = [json.loads(line) for line in receipt_lines]
    inventory_hashes = {item.get("sha256") for item in inventory}
    source_cache: dict[str, str] = {}
    for record in records:
        cid = record["case_id"]
        statement = record.get("lean_statement_exact")
        if not isinstance(statement, str) or digest(statement.encode("utf-8")) != record.get("statement_sha256"):
            fail(errors, f"statement digest mismatch: {cid}")
            continue
        if record.get("cohort") != "collatz-m15-m20-pinned-shards":
            fail(errors, f"unexpected cohort: {cid}")
        if record.get("m0_status") != "NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT" or record.get("m4_status") != "NOT_PROMOTED_PER_SHARD_REPLAY_ONLY":
            fail(errors, f"review/gate status mismatch: {cid}")
        if record.get("sorryAx") is not False:
            fail(errors, f"sorryAx status mismatch: {cid}")
        source = record.get("source", {})
        source_rel = source.get("package_path")
        if source.get("sha256") not in inventory_hashes or source_rel not in listed:
            fail(errors, f"source is not bound by package inventory: {cid}")
            continue
        source_path = ROOT / Path(source_rel)
        if source_rel not in source_cache:
            source_cache[source_rel] = source_path.read_text(encoding="utf-8")
        source_text = source_cache[source_rel]
        short = cid.split(":")[-1]
        match = re.search(rf"(?ms)^(theorem\s+{re.escape(short)}\b.*?)(?=\s*:=\s*by\b)", source_text)
        if not match or match.group(1).strip() != statement:
            fail(errors, f"statement does not match pinned source: {cid}")
        decl_line = source_text.count("\n", 0, match.start()) + 1 if match else -1
        if decl_line != source.get("declaration_line"):
            fail(errors, f"declaration line mismatch: {cid}")

        dependencies = record.get("dependencies", {})
        imports = re.findall(r"(?m)^import\s+([^\s]+)", source_text)
        declarations = re.findall(r"(?m)^(?:def|theorem|lemma)\s+([A-Za-z0-9_'.]+)", source_text)
        decl = re.search(rf"(?m)^(?:def|theorem|lemma)\s+{re.escape(short)}\b", source_text)
        if decl:
            next_decl = re.search(r"(?m)^(?:def|theorem|lemma)\s+", source_text[decl.end():])
            block = source_text[decl.start():decl.end() + next_decl.start() if next_decl else len(source_text)]
        else:
            block = ""
        local_refs = sorted({name for name in declarations if name != short and re.search(rf"\b{re.escape(name)}\b", block)})
        if dependencies.get("imports") != imports or dependencies.get("module_local_declarations_referenced") != local_refs:
            fail(errors, f"dependency list mismatch: {cid}")

        receipt = record.get("receipt", {})
        if receipt.get("package_path") != RECEIPT_REL or receipt.get("file_sha256") != digest(receipt_bytes):
            fail(errors, f"receipt file binding mismatch: {cid}")
            continue
        line_no = receipt.get("line")
        if not isinstance(line_no, int) or line_no < 1 or line_no > len(receipt_lines):
            fail(errors, f"receipt line is invalid: {cid}")
            continue
        raw = receipt_lines[line_no - 1]
        rr = receipt_rows[line_no - 1]
        if digest(raw) != receipt.get("row_sha256"):
            fail(errors, f"receipt row hash mismatch: {cid}")
        if rr.get("sourceSha256") != source.get("sha256") or rr.get("sourcePath") != source.get("source_path_in_run") or rr.get("oleanSha256") != receipt.get("olean_sha256") or rr.get("stdoutSha256") != receipt.get("stdout_sha256"):
            fail(errors, f"receipt source/output bindings mismatch: {cid}")
        theorem_name = short
        theorem = next((t for t in rr.get("theorems", []) if t.get("name", "").rsplit(".", 1)[-1] == theorem_name), None)
        if theorem is None or theorem.get("axioms") != record.get("axioms") or theorem.get("sorryAx") != record.get("sorryAx"):
            fail(errors, f"theorem axiom report mismatch: {cid}")
        if record.get("claim_limit") != rr.get("classification"):
            fail(errors, f"claim scope mismatch: {cid}")

        packed = json.dumps(record, ensure_ascii=False)
        windows_sep = chr(92)
        posix_sep = chr(47)
        local_path_pattern = (
            r"(?i)(?:[A-Z]:"
            + re.escape(windows_sep)
            + r"(?:Users|Dev)"
            + re.escape(windows_sep)
            + r"|[A-Z]:"
            + re.escape(windows_sep)
            + r".*?"
            + re.escape(windows_sep)
            + r"MathCase|"
            + re.escape(posix_sep + "home" + posix_sep)
            + r"[^/]+"
            + re.escape(posix_sep)
            + r")"
        )
        if re.search(local_path_pattern, packed):
            fail(errors, f"machine-local path leaked into record: {cid}")

    if errors:
        print(f"FAIL: {len(errors)} graph/package audit finding(s)")
        for item in errors[:20]:
            print(" - " + item)
        return 1
    print(f"PASS: package inventory, {len(index_rows)} exact-index rows, {len(records)} rich records, source statements, dependencies, receipt lines, axioms, M0/M4 statuses")
    print(f"manifest_sha256={manifest_sha}")
    print(f"index_sha256={digest(index_bytes)}")
    print(f"records_sha256={digest(records_bytes)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
