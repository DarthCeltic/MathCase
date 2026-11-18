#!/usr/bin/env python3
"""Verify the 229 Lean source files against the exported replay manifest.tsv."""
from __future__ import annotations
import hashlib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPLAY = ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay"
SOURCE_ROOT = ROOT / "sources" / "repository"


def verify_sources() -> int:
    verified = 0
    seen = set()
    for number, line in enumerate((REPLAY / "manifest.tsv").read_text(encoding="utf-8").splitlines(), 1):
        fields = line.split("\t")
        if len(fields) != 6:
            raise ValueError(f"manifest.tsv line {number}: expected 6 tab-separated fields")
        _tier, _module, relative, _namespace, _theorems, expected = fields
        parts = Path(relative).parts
        if (not relative.startswith("research/collatz/") or ".." in parts or "\\" in relative
            or relative in seen or len(expected) != 64 or any(c not in "0123456789abcdef" for c in expected)):
            raise ValueError(f"manifest.tsv line {number}: invalid or duplicate source binding")
        seen.add(relative)
        path = SOURCE_ROOT / Path(*parts)
        if not path.is_file():
            raise ValueError(f"missing source file: {relative}")
        if hashlib.sha256(path.read_bytes()).hexdigest() != expected:
            raise ValueError(f"source digest mismatch: {relative}")
        verified += 1
    if verified != 229:
        raise ValueError(f"expected 229 source rows, found {verified}")
    return verified


def main() -> int:
    try:
        verified = verify_sources()
    except (OSError, ValueError) as exc:
        raise SystemExit(str(exc)) from exc
    print(f"PASS: {verified}/229 Lean source files match manifest.tsv")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
