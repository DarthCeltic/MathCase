#!/usr/bin/env python3
"""Refresh hashes of already-listed public app files after intentional source edits.

This does not add files or routes, change the saved proof-package manifest, or
authorize publishing any new artifact. Review the resulting diff before release.
"""
import hashlib
import json
from pathlib import Path


def main() -> None:
    root = Path(__file__).resolve().parents[1]
    path = root / "public-case-desk.json"
    value = json.loads(path.read_text(encoding="utf-8"))
    for relative in value["files"]:
        candidate = (root / relative).resolve(strict=True)
        candidate.relative_to(root)
        value["files"][relative] = hashlib.sha256(candidate.read_bytes()).hexdigest()
    path.write_bytes((json.dumps(value, indent=2) + "\n").encode("utf-8"))
    print(f"Refreshed {len(value['files'])} existing public file digests; routes unchanged.")


if __name__ == "__main__":
    main()
