from __future__ import annotations
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
SOURCE_HASHES = {
    "GeometryMidpoint.lean": "831db7bfe3ec643eea8ae02e129d87e926bbdc51186566c9dae46d3842e69dcf",
    "Audit.lean": "ce304794c34dba1d6e76617e3a20a4e7fe28448643d9878049e31ac8923f248e",
}
OUTPUT_HASHES = {
    "evidence/GeometryMidpoint.olean": "be1e43bd6ca55ee0435aa22e0fa5d1c28ebafd81f32c4572da687bfb1e49ce0e",
    "evidence/Audit.olean": "9f8a8e45aeb953e5fde8235b60d5af613d58a6ff799dcb3db55beff4b62f680f",
    "evidence/source.stdout.log": "7bffe7274d7555499fa37f892398a0eb5e6d0ca7c8870cec20173ec0b4b8ce43",
    "evidence/audit.stdout.txt": "0fe3177bd51e4c7dd6cf86974016746b543f7b8dbfa0c57dec787bf7490d71d5",
    "evidence/source.stderr.log": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
    "evidence/audit.stderr.log": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
    "evidence/exit-codes.txt": "7abb521aaa65cc6be23b1f7ebceb280b7002a1dbdb4693b182a8c3c77ca8959c",
}


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def check() -> list[str]:
    sums = {}
    for line in (ROOT / "SHA256SUMS.txt").read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        expected, rel = line.split("  ", 1)
        path = Path(rel)
        if path.is_absolute() or ".." in path.parts:
            raise ValueError(f"unsafe manifest path: {rel}")
        sums[path.as_posix()] = expected
    for rel, expected in {**SOURCE_HASHES, **OUTPUT_HASHES}.items():
        if sums.get(rel) != expected:
            raise ValueError(f"SHA256SUMS entry mismatch: {rel}")
    for rel, expected in sums.items():
        path = ROOT / rel
        if not path.is_file():
            raise ValueError(f"missing package file: {rel}")
        actual = sha(path)
        if actual != expected:
            raise ValueError(f"hash mismatch: {rel}: {actual}")
    for rel in ("README.md", "Audit.lean", "lakefile.toml", "lake-manifest.json", "lean-toolchain", "replay.py", "verify_package.py", ".gitattributes", "evidence/r06-replay-summary.json"):
        if rel not in sums:
            raise ValueError(f"file not covered by SHA256SUMS: {rel}")
    lock = json.loads((ROOT / "lake-manifest.json").read_text(encoding="utf-8"))
    mathlib = [entry for entry in lock.get("packages", []) if entry.get("name") == "mathlib"]
    if len(mathlib) != 1 or mathlib[0].get("rev") != "0df444a360eaa60ab8c11dca51a86af692955474":
        raise ValueError("Mathlib lock does not match the pinned source replay")
    if (ROOT / "lean-toolchain").read_text(encoding="utf-8").strip() != "leanprover/lean4:v4.33.1":
        raise ValueError("Lean toolchain pin mismatch")
    audit = (ROOT / "evidence/audit.stdout.txt").read_text(encoding="utf-8")
    if "[propext, Classical.choice, Quot.sound]" not in audit or "sorryAx" in audit:
        raise ValueError("captured axiom report mismatch")
    codes = (ROOT / "evidence/exit-codes.txt").read_text(encoding="ascii")
    if codes.replace("\r\n", "\n") != "source_exit=0\naudit_exit=0\n":
        raise ValueError("captured exit code record mismatch")
    projection = json.loads((ROOT / "evidence/r06-replay-summary.json").read_text(encoding="utf-8"))
    if projection.get("status") != "PASS_FRESH_SOURCE_AND_AXIOM_AUDIT_CANDIDATE_ONLY":
        raise ValueError("unexpected R06 status")
    if projection.get("source_sha256") != SOURCE_HASHES["GeometryMidpoint.lean"]:
        raise ValueError("R06 theorem source binding mismatch")
    if projection.get("audit_source_sha256") != SOURCE_HASHES["Audit.lean"]:
        raise ValueError("R06 audit source binding mismatch")
    expected_projection_outputs = {
        "theorem_olean_sha256": OUTPUT_HASHES["evidence/GeometryMidpoint.olean"],
        "audit_olean_sha256": OUTPUT_HASHES["evidence/Audit.olean"],
        "source_stdout_sha256": OUTPUT_HASHES["evidence/source.stdout.log"],
        "audit_stdout_sha256": OUTPUT_HASHES["evidence/audit.stdout.txt"],
        "source_stderr_sha256": OUTPUT_HASHES["evidence/source.stderr.log"],
        "audit_stderr_sha256": OUTPUT_HASHES["evidence/audit.stderr.log"],
        "exit_codes_file_sha256": OUTPUT_HASHES["evidence/exit-codes.txt"],
    }
    if projection.get("outputs") != expected_projection_outputs:
        raise ValueError("R06 output bindings mismatch")
    if projection.get("axioms") != ["propext", "Classical.choice", "Quot.sound"]:
        raise ValueError("R06 axiom projection mismatch")
    if projection.get("sorryAx_reported") is not False:
        raise ValueError("R06 sorryAx projection mismatch")
    if projection.get("fresh_public_clone_replay") != "not yet independently performed":
        raise ValueError("public replay status was changed without evidence")
    return sorted(sums)


if __name__ == "__main__":
    files = check()
    print(f"PASS: {len(files)} package files match SHA256SUMS; pinned source, lock, output, axiom and exit checks agree.")