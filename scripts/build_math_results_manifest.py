from __future__ import annotations
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "research/math-results/release-manifest.json"
DIRECTORIES = (
    "research/math-results",
    "research/collatz/m15",
    "research/collatz/m16",
    "research/collatz/m18",
    "research/collatz/m20",
    "research/collatz/affine-trace",
    "research/collatz/structure-sample/m31-unresolved-odd-v1",
    "research/collatz/structure-sample/m31-residual-initial-valuation-v1",
    "research/number-theory/egyptian-fractions",
)
EXPLICIT = (
    ".gitattributes",
    "README.md",
    "docs/MATH_RESULTS.md",
    "docs/MATHCASE_RESEARCH_ROADMAP.md",
    "docs/collatz-descent.md",
    "proofs/collatz/remaining-residues/BoundedDescent8192.lean",
    "proofs/collatz/remaining-residues/BoundedDescent8192.stdout.txt",
    "proofs/collatz/remaining-residues/BoundedDescent8192.exit-code.txt",
    "proofs/collatz/remaining-residues/bounded-descent-receipt.json",
    "proofs/collatz/remaining-residues/coverage.json",
    "scripts/build_math_results_manifest.py",
    "scripts/verify_math_results_release.py",
    "scripts/sample_collatz_m31_unresolved_structure.py",
    "scripts/verify_collatz_m31_unresolved_structure.py",
    "scripts/test_sample_collatz_m31_unresolved_structure.py",
    "scripts/test_verify_collatz_m31_unresolved_structure.py",
    "scripts/audit_collatz_m31_residual_initial_valuation.py",
    "scripts/test_audit_collatz_m31_residual_initial_valuation.py",
)
paths = {ROOT / name for name in EXPLICIT}
for directory in DIRECTORIES:
    paths.update(p for p in (ROOT / directory).rglob("*") if p.is_file())
paths.update(p for p in (ROOT / "scripts").glob("*egyptian_fraction*.py") if p.is_file())
if any(not p.is_file() for p in paths):
    raise SystemExit("manifest input missing")
paths.discard(OUTPUT)
files = []
for path in sorted(paths, key=lambda p: p.relative_to(ROOT).as_posix()):
    data = path.read_bytes()
    files.append({
        "path": path.relative_to(ROOT).as_posix(),
        "size": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
    })
manifest = {
    "schema": "mathcase-public-math-results-release-v1",
    "generated_at_utc": datetime.now(timezone.utc).isoformat(timespec="seconds"),
    "public_base_commit": "4ff7ed9b523f400ace5d19529a1b9c4d33f6ed0e",
    "internal_source_commit": "619116a2478a71303cbf4ae260369c536e6f7fe5",
    "private_archive_commit": "af0290469473c6711663e37b183e94fccbc28b66",
    "integrity_scope": "Listed public file bytes only. Hash agreement is not proof verification or a fresh Lean replay.",
    "files": files,
}
OUTPUT.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8", newline="\n")
print(f"Wrote {OUTPUT.relative_to(ROOT)} with {len(files)} file digests")
