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
    actual_files = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob("*")
                    if p.is_file() and p.name != "SHA256SUMS.txt"}
    if actual_files != set(sums):
        raise ValueError(f"package inventory mismatch: unlisted={sorted(actual_files - set(sums))}, missing={sorted(set(sums) - actual_files)}")
    for rel in ("README.md", "Audit.lean", "lakefile.toml", "lake-manifest.json", "lean-toolchain", "replay.py", "verify_package.py", ".gitattributes", "evidence/r06-replay-summary.json"):
        if rel not in sums:
            raise ValueError(f"file not covered by SHA256SUMS: {rel}")
    lock = json.loads((ROOT / "lake-manifest.json").read_text(encoding="utf-8"))
    if lock.get("name") != "mathcase_coordinate_midpoint":
        raise ValueError("Lake manifest root project name mismatch")
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
    public_replay = json.loads((ROOT / "evidence/anonymous-public-clone-r2-replay.json").read_text(encoding="utf-8"))
    if public_replay.get("status") != "PASS" or public_replay.get("clone", {}).get("commit") != "9556a8863d232256ab6113cc6740d0571d628171":
        raise ValueError("anonymous public replay status or source commit mismatch")
    if public_replay.get("package_inputs", {}).get("GeometryMidpoint.lean") != SOURCE_HASHES["GeometryMidpoint.lean"] or public_replay.get("package_inputs", {}).get("Audit.lean") != SOURCE_HASHES["Audit.lean"]:
        raise ValueError("anonymous public replay source binding mismatch")
    if public_replay.get("pinned_manifest_sha256") != sums.get("lake-manifest.json") or public_replay.get("post_update_manifest_sha256") != sums.get("lake-manifest.json") or public_replay.get("manifest_unchanged_after_update") is not True:
        raise ValueError("anonymous public replay manifest binding mismatch")
    if public_replay.get("theorem_olean_sha256") != "bcbc7decccebb98f7f9972ef27e9c67c54b450489aeb7e4bb2daa8fd524fe25b" or public_replay.get("axioms") != ["propext", "Classical.choice", "Quot.sound"] or public_replay.get("sorryAx_reported") is not False:
        raise ValueError("anonymous public replay theorem or axiom record mismatch")
    expected_run_inputs = {
        "GeometryMidpoint.lean": SOURCE_HASHES["GeometryMidpoint.lean"],
        "Audit.lean": SOURCE_HASHES["Audit.lean"],
        "lake-manifest.json": sums["lake-manifest.json"],
        "lakefile.toml": sums["lakefile.toml"],
        "lean-toolchain": sums["lean-toolchain"],
    }
    if public_replay.get("package_inputs") != expected_run_inputs:
        raise ValueError("anonymous public replay package input binding mismatch")
    expected_stages = [
        {"name": "lean-version", "exit_code": 0, "elapsed_seconds": 0.099, "timeout_seconds": 3600, "output_sha256": "89c79d9c5b24343255f93bb0203ae89e6b8715c652def77008a34f37656c9c82"},
        {"name": "lake-version", "exit_code": 0, "elapsed_seconds": 0.16, "timeout_seconds": 3600, "output_sha256": "e475ba02fef5717a6caa256e1e25ac50268497b7d1e36955357f37b4701ee4a0"},
        {"name": "lake-update", "exit_code": 0, "elapsed_seconds": 572.832, "timeout_seconds": 3600, "output_sha256": "851cf4cb905f0785d76c0709263fcfa4f7fff68f179780cced3a60408856a6c6"},
        {"name": "mathlib-cache", "exit_code": 0, "elapsed_seconds": 11.796, "timeout_seconds": 3600, "output_sha256": "1fc4c3c0cb089274455690709c3407556cd761d92e1b84b9eb8efd982aac14c4"},
        {"name": "lean-build", "exit_code": 0, "elapsed_seconds": 111.84, "timeout_seconds": 3600, "output_sha256": "ab4974916645a211848b4c1b10971c67336b0eac226456c8e0c53569690f65d2"},
        {"name": "axiom-audit", "exit_code": 0, "elapsed_seconds": 9.739, "timeout_seconds": 3600, "output_sha256": "0fe3177bd51e4c7dd6cf86974016746b543f7b8dbfa0c57dec787bf7490d71d5"},
    ]
    stages = public_replay.get("stages", [])
    if stages != expected_stages:
        raise ValueError("anonymous public replay stage record mismatch")
    if public_replay.get("total_wall_seconds") != 706.497 or public_replay.get("summed_stage_seconds") != 706.466:
        raise ValueError("anonymous public replay timing record mismatch")
    if public_replay.get("audit_output_sha256") != expected_stages[-1]["output_sha256"]:
        raise ValueError("anonymous public replay audit output binding mismatch")
    if public_replay.get("original_raw_receipt_sha256") != "03e1427327cae30d809ee09d9ae720243c7fb80e50172e8201fcc28b25aab684":
        raise ValueError("anonymous public replay raw receipt binding mismatch")
    failed_run = json.loads((ROOT / "evidence/anonymous-public-clone-r1-setup-failure.json").read_text(encoding="utf-8"))
    if public_replay.get("prior_setup_failure", {}).get("sha256") != sums.get("evidence/anonymous-public-clone-r1-setup-failure.json") or failed_run.get("mathematical_verdict") != "NOT_RUN":
        raise ValueError("anonymous public replay prior failure binding mismatch")
    expected_toolchain = {
        "archive_sha256": "f63029c0e1e6daed0f4807481b6fcd8f8b77fbce6d63f205c7f9191072387a7a",
        "lean_executable_sha256": "af49bacfabaa1fea71332ca0feae0fa1a60912219d5902291adc79f905bffb8d",
        "lake_executable_sha256": "565c3976275d79e104421014b6229f4fcf4a8c8edfe164a43b344c91af6f496c",
    }
    if any(public_replay.get("toolchain", {}).get(key) != value for key, value in expected_toolchain.items()):
        raise ValueError("anonymous public replay toolchain binding mismatch")
    if public_replay.get("process_limits") != {"lake_build_jobs": 1, "stage_timeout_seconds": 3600, "operating_system_memory_limit": "none"}:
        raise ValueError("anonymous public replay process-limit record mismatch")
    if public_replay.get("review_status") != "Owner-run replay from a fresh public clone; not an independent third-party replay or mathematical review.":
        raise ValueError("anonymous public replay review scope mismatch")
    return sorted(sums)


if __name__ == "__main__":
    files = check()
    print(f"PASS: {len(files)} package files match SHA256SUMS; pinned source, lock, output, axiom and exit checks agree.")