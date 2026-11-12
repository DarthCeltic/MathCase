from __future__ import annotations

import hashlib
import json
from pathlib import Path, PurePosixPath

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "research/math-results/release-manifest.json"

def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()

def main() -> int:
    data = json.loads(MANIFEST.read_text(encoding="utf-8"))
    errors: list[str] = []
    entries = data.get("files", [])
    if not entries:
        errors.append("manifest contains no file entries")
    for item in entries:
        rel = PurePosixPath(item["path"])
        if rel.is_absolute() or ".." in rel.parts:
            errors.append(f"unsafe manifest path: {item['path']}")
            continue
        path = ROOT.joinpath(*rel.parts)
        if not path.is_file():
            errors.append(f"missing: {item['path']}")
            continue
        if path.stat().st_size != item["size"] or sha256(path) != item["sha256"]:
            errors.append(f"digest mismatch: {item['path']}")

    receipt = json.loads((ROOT / "proofs/collatz/remaining-residues/bounded-descent-receipt.json").read_text(encoding="utf-8"))
    for field, path_field in (("source_sha256", "source_path"), ("stdout_sha256", "stdout_path"), ("exit_code_sha256", "exit_code_path")):
        if sha256(ROOT / receipt[path_field]) != receipt[field]:
            errors.append(f"M13 receipt binding mismatch: {path_field}")
    coverage = json.loads((ROOT / "proofs/collatz/remaining-residues/coverage.json").read_text(encoding="utf-8"))
    outside = coverage["outside_residues"]
    if (coverage["covered"] != 7825 or coverage["modulus"] != 8192 or
            coverage["outside_this_theorem"] != 367 or len(outside) != 367 or
            len(set(outside)) != 367 or any(r < 0 or r >= 8192 for r in outside) or
            coverage["covered"] + len(outside) != 8192):
        errors.append("M13 coverage arithmetic or uniqueness check failed")

    sample_dir = ROOT / "research/collatz/structure-sample/m31-unresolved-odd-v1"
    sample_receipt = json.loads((sample_dir / "verification-receipt.json").read_text(encoding="utf-8"))
    if (sha256(sample_dir / "samples.jsonl") != sample_receipt["sample_sha256"] or
            sha256(sample_dir / "summary.json") != sample_receipt["summary_sha256"] or
            sha256(sample_dir / "run-manifest.json") != sample_receipt["run_manifest_sha256"]):
        errors.append("M31 sample receipt binding mismatch")

    for name in ("m15", "m16", "m18", "m20"):
        if not any((ROOT / f"research/collatz/{name}/lean").rglob("*.lean")):
            errors.append(f"missing Lean source in {name}")
    if errors:
        for error in errors:
            print(f"FAIL {error}")
        return 1
    print(f"PASS {len(entries)} manifest file hashes")
    print("PASS M13 receipt byte bindings and 7,825/8,192 coverage arithmetic")
    print("PASS M31 structure-sample receipt bindings")
    print("PASS M15/M16/M18/M20 Lean source presence")
    print("Integrity checks only; this does not compile Lean or prove the mathematical claims.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
