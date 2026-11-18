from __future__ import annotations

import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
INVENTORY = ROOT / "reproduction" / "egyptian-fractions-v9" / "inventory.json"
EXPECTED_SCHEMA = "mathcase-public-erdos-straus-v9-file-inventory-v1"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def main() -> int:
    payload = json.loads(INVENTORY.read_text(encoding="utf-8"))
    if payload.get("schema") != EXPECTED_SCHEMA:
        raise SystemExit("FAIL: unexpected inventory schema")
    entries = payload.get("entries")
    if not isinstance(entries, list) or not entries:
        raise SystemExit("FAIL: inventory entries missing")
    seen: set[str] = set()
    total_bytes = 0
    for entry in entries:
        rel = entry.get("path")
        if not isinstance(rel, str) or rel in seen:
            raise SystemExit("FAIL: invalid or duplicate inventory path")
        seen.add(rel)
        path = (ROOT / rel).resolve()
        if not path.is_relative_to(ROOT.resolve()) or not path.is_file() or path.is_symlink():
            raise SystemExit(f"FAIL: unsafe or missing path: {rel}")
        size = path.stat().st_size
        if size != entry.get("bytes") or sha256(path) != entry.get("sha256"):
            raise SystemExit(f"FAIL: hash/size mismatch: {rel}")
        total_bytes += size
    print(json.dumps({"status": "PASS_PUBLIC_INVENTORY", "entries": len(entries), "bytes": total_bytes, "inventory_sha256": sha256(INVENTORY)}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())