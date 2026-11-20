#!/usr/bin/env python3
"""Fail-closed verifier for the two owner-approved historical TruffleHog findings."""
from __future__ import annotations
import argparse, hashlib, json, sys
from pathlib import Path

EXPECTED_MANIFEST_SHA256 = "a3346c4afc91ebabd5312775df1107eb7a9c5ca70291e13a887692b83fde795d"

def _sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def _identity(record: dict) -> tuple:
    git = record.get("SourceMetadata", {}).get("Data", {}).get("Git", {})
    raw = record.get("Raw")
    if not isinstance(raw, str):
        raise ValueError("finding has no string Raw value")
    return (record.get("DetectorName"), record.get("DetectorType"), record.get("Verified"),
            git.get("commit"), git.get("file"), git.get("line"), _sha(raw.encode("utf-8")))

def _expected(records: list[dict]) -> list[tuple]:
    return sorted((r["detector_name"], r["detector_type"], r["verified"], r["git_commit"],
                   r["file"], r["line"], r["raw_value_sha256"]) for r in records)

def verify_scan_bytes(data: bytes, exceptions: list[dict]) -> int:
    parsed = []
    for number, line in enumerate(data.splitlines(), 1):
        if not line.strip():
            continue
        try:
            record = json.loads(line)
            parsed.append(_identity(record))
        except Exception as exc:
            raise ValueError(f"invalid scanner JSONL at line {number}: {type(exc).__name__}") from None
    actual = sorted(parsed)
    wanted = _expected(exceptions)
    if actual != wanted:
        raise ValueError(f"finding set mismatch: expected {len(wanted)}, received {len(actual)}; exact exception only")
    return len(actual)

def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("scan_jsonl", type=Path)
    parser.add_argument("--manifest", type=Path, default=Path(__file__).resolve().parents[1] / "docs/security/trufflehog-history-exceptions-2026-11-20.json")
    args = parser.parse_args()
    raw_manifest = args.manifest.read_bytes()
    if _sha(raw_manifest) != EXPECTED_MANIFEST_SHA256:
        print("FAIL: exception manifest hash does not match the code-pinned approved version", file=sys.stderr)
        return 2
    try:
        manifest = json.loads(raw_manifest)
        if manifest.get("schema") != "mathcase-trufflehog-history-exception-v1":
            raise ValueError("unexpected manifest schema")
        count = verify_scan_bytes(args.scan_jsonl.read_bytes(), manifest["exceptions"])
    except Exception as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        return 1
    print(f"PASS: exactly {count} approved historical findings; no additional findings")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
