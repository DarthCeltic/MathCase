#!/usr/bin/env python3
"""Verify the package's path-relative SHA256SUMS without third-party tools."""
from __future__ import annotations

import argparse
import hashlib
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
REPOSITORY_ROOT = ROOT.parents[2]


def digest(path: Path) -> str:
    value = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            value.update(block)
    return value.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, default=ROOT / "SHA256SUMS")
    args = parser.parse_args()
    entries = 0
    for line_number, line in enumerate(args.manifest.read_text(encoding="utf-8").splitlines(), start=1):
        if not line or line.startswith("#"):
            continue
        match = re.fullmatch(r"([0-9a-f]{64})  ([^\r\n]+)", line)
        if not match:
            raise SystemExit(f"INVALID_MANIFEST_LINE:{line_number}")
        expected, relative = match.groups()
        target = (ROOT / relative).resolve()
        if not target.is_relative_to(REPOSITORY_ROOT):
            raise SystemExit(f"PATH_OUTSIDE_REPOSITORY:{relative}")
        if not target.is_file():
            raise SystemExit(f"MISSING_FILE:{relative}")
        actual = digest(target)
        if actual != expected:
            raise SystemExit(f"HASH_MISMATCH:{relative}:{actual}")
        entries += 1
    if entries == 0:
        raise SystemExit("EMPTY_MANIFEST")
    print(f"PASS: {entries} listed files match SHA-256")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
