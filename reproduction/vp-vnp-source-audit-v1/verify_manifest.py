from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / "PUBLIC_MANIFEST.json"


def files() -> list[Path]:
    return sorted(
        path for path in ROOT.rglob("*")
        if path.is_file()
        and path != MANIFEST
        and "__pycache__" not in path.parts
    )


def entries() -> dict[str, dict]:
    result = {}
    for path in files():
        raw = path.read_bytes()
        result[path.relative_to(ROOT).as_posix()] = {
            "bytes": len(raw),
            "sha256": hashlib.sha256(raw).hexdigest(),
        }
    return result


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description="Write or verify the public VP/VNP package byte manifest.")
    parser.add_argument("--write", action="store_true", help="write the manifest from the current package bytes")
    args = parser.parse_args(argv)
    current = entries()
    if args.write:
        MANIFEST.write_text(json.dumps({
            "schema": "mathcase-public-package-manifest-v1",
            "files": current,
        }, indent=2) + "\n", encoding="utf-8")
        print(f"WROTE {MANIFEST.name}: {len(current)} files")
        return 0
    recorded = json.loads(MANIFEST.read_text(encoding="utf-8")).get("files")
    if recorded != current:
        print("FAIL: package file list, size, or SHA-256 differs from PUBLIC_MANIFEST.json")
        return 1
    print(f"PASS: {len(current)} package files match their byte counts and SHA-256 values")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())