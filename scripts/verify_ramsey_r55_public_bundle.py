#!/usr/bin/env python3
"""Validate the public R(5,5) source and receipt bundle without invoking Lean."""
from __future__ import annotations
import hashlib, json, re, sys
from pathlib import Path

BANNED_PATH = re.compile(r"(?i)(?:[A-Z]:\\|/home/|/Users/|\\Users\\)")
BANNED_LEAN = re.compile(r"(?m)\b(?:sorry|admit|native_decide)\b")

def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def validate(root: Path) -> dict:
    root = root.resolve()
    evidence_path = root / "evidence/public-evidence.json"
    evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    if evidence.get("schema") != "mathcase-r55-public-evidence-v1":
        raise ValueError("unexpected evidence schema")
    if evidence["status"] != "LOCAL_WARM_CACHE_LEAN_COMPOSITION_PASS_CANDIDATE_ONLY":
        raise ValueError("incorrect proof status")
    if evidence["proof"].get("m4_promoted") is not False or evidence["proof"].get("signed") is not False:
        raise ValueError("gate status must remain unpromoted and unsigned")
    if evidence["toolchain"].get("lean_toolchain") != "leanprover/lean4:v4.33.1":
        raise ValueError("wrong Lean pin")
    modules = {f"PairChunkV2_{i:03d}" for i in range(27)}
    if {x["module"] for x in evidence["chunk_receipts"]} != modules or len(evidence["chunk_receipts"]) != 27:
        raise ValueError("chunk receipt coverage mismatch")
    if len(evidence["source_files"]) != 29:
        raise ValueError("source inventory count mismatch")
    for row in evidence["source_files"]:
        path = root / row["path"]
        data = path.read_bytes()
        if sha(data) != row["sha256"] or len(data) != row["bytes"]:
            raise ValueError(f"source binding mismatch: {row['path']}")
        text = data.decode("utf-8")
        if BANNED_PATH.search(text):
            raise ValueError(f"workstation path in source: {row['path']}")
        if BANNED_LEAN.search(text):
            raise ValueError(f"forbidden Lean escape in source: {row['path']}")
    for row in evidence["chunk_receipts"]:
        path = root / row["path"]
        if sha(path.read_bytes()) != row["sha256"]:
            raise ValueError(f"chunk receipt hash mismatch: {row['module']}")
        receipt = json.loads(path.read_text(encoding="utf-8"))
        if receipt.get("module") != row["module"] or receipt.get("status") != "PASS" or receipt.get("exit_code") != 0:
            raise ValueError(f"chunk receipt status mismatch: {row['module']}")
        source_name = row["module"] + ".lean"
        source = next(x for x in evidence["source_files"] if x["path"].endswith(source_name))
        if receipt.get("source_sha256") != source["sha256"]:
            raise ValueError(f"chunk receipt source binding mismatch: {row['module']}")
    composition = evidence["composition_receipt"]
    receipt_path = root / composition["path"]
    stdout_path = root / "receipts/composition/stdout.txt"
    if sha(receipt_path.read_bytes()) != composition["sha256"] or sha(stdout_path.read_bytes()) != composition["stdout_sha256"]:
        raise ValueError("composition evidence hash mismatch")
    receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
    if receipt.get("status") != "PASS" or receipt.get("exit_code") != 0:
        raise ValueError("composition receipt is not a pass")
    if sha(stdout_path.read_bytes()) != receipt.get("stdout_sha256"):
        raise ValueError("composition stdout is not bound by receipt")
    for path in root.rglob("*"):
        if not path.is_file():
            continue
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        if BANNED_PATH.search(text):
            raise ValueError(f"workstation path in bundle: {path.relative_to(root).as_posix()}")
    return {"sources": len(evidence["source_files"]), "chunk_receipts": len(evidence["chunk_receipts"]), "composition_status": receipt["status"], "candidate_only": True}

def main() -> int:
    root = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parents[1] / "reproduction/ramsey-r55-lean-v1"
    try:
        result = validate(root)
    except Exception as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        return 1
    print("PASS: " + json.dumps(result, sort_keys=True))
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
