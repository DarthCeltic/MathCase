from __future__ import annotations

import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parent
SUMS = ROOT / "SHA256SUMS.txt"
EXPECTED_SOURCE = "5c681f34857d51e38e23f8de86aeea29a38eb685c20a5d692d09ff32cf8e0261"
EXPECTED_AUDIT = "eb27f11996ff0c5cd2314ad3c34c23efb385e1640bae6d2746ade0b5cb5be03e"
EXPECTED_OLEAN = "37a60c62309b4d79a80921905668c5d2510ebd0e39d53bf470f8237f60f3fcac"
EXPECTED_AXIOM_LINE = "'midpoint_perpendicular_equidistant' depends on axioms: [propext, Classical.choice, Quot.sound]"
FORBIDDEN_PATHS = ("C:" + chr(92), "T:" + chr(92), "C:/Users/", "T:/MathCase", "/workspaces/")


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def check_sums() -> list[str]:
    expected: dict[str, str] = {}
    for line in SUMS.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        match = re.fullmatch(r"([0-9a-f]{64})  ([A-Za-z0-9._/-]+)", line)
        if not match:
            raise ValueError(f"BAD_SUMS_LINE:{line!r}")
        sha, rel = match.groups()
        if rel.startswith("/") or ".." in Path(rel).parts:
            raise ValueError(f"UNSAFE_SUMS_PATH:{rel}")
        if rel in expected:
            raise ValueError(f"DUPLICATE_SUMS_PATH:{rel}")
        expected[rel] = sha
    all_paths = list(ROOT.rglob("*"))
    if any(path.is_symlink() for path in all_paths):
        raise ValueError("SYMLINK_NOT_ALLOWED_IN_PACKAGE")
    if any(path.is_dir() and path.name == ".lake" for path in all_paths):
        raise ValueError("BUILD_OUTPUT_MUST_STAY_OUTSIDE_PACKAGE")
    actual = {
        path.relative_to(ROOT).as_posix()
        for path in all_paths
        if path.is_file() and path != SUMS
    }
    if actual != set(expected):
        raise ValueError(f"PACKAGE_FILE_SET_MISMATCH:missing={sorted(set(expected)-actual)} extra={sorted(actual-set(expected))}")
    bad = [rel for rel, sha in expected.items() if digest(ROOT / rel) != sha]
    if bad:
        raise ValueError(f"PACKAGE_HASH_MISMATCH:{','.join(bad)}")
    return sorted(expected)


def main() -> int:
    files = check_sums()
    source = ROOT / "GeometryGeneral.lean"
    audit = ROOT / "Audit.lean"
    if digest(source) != EXPECTED_SOURCE or digest(audit) != EXPECTED_AUDIT:
        raise ValueError("LEAN_INPUT_HASH_MISMATCH")
    if (ROOT / "lean-toolchain").read_text(encoding="utf-8").strip() != "leanprover/lean4:v4.33.1":
        raise ValueError("LEAN_TOOLCHAIN_PIN_MISMATCH")
    lakefile = (ROOT / "lakefile.toml").read_text(encoding="utf-8")
    lock = json.loads((ROOT / "lake-manifest.json").read_text(encoding="utf-8"))
    mathlib = [item for item in lock.get("packages", []) if item.get("name") == "mathlib"]
    if 'name = "mathcase_general_coordinate_midpoint"' not in lakefile or lock.get("name") != "mathcase_general_coordinate_midpoint":
        raise ValueError("LAKE_PROJECT_NAME_MISMATCH")
    if len(mathlib) != 1 or mathlib[0].get("rev") != "0df444a360eaa60ab8c11dca51a86af692955474":
        raise ValueError("MATHLIB_REVISION_MISMATCH")
    if re.search(r"\bsorry\b|sorryAx|native_decide", source.read_text(encoding="utf-8")):
        raise ValueError("FORBIDDEN_PROOF_TOKEN")
    audit_text = (ROOT / "evidence/r04/audit.stdout").read_text(encoding="utf-8").strip()
    if audit_text != EXPECTED_AXIOM_LINE:
        raise ValueError("R04_AUDIT_OUTPUT_MISMATCH")
    if digest(ROOT / "evidence/r04/GeometryGeneral.olean") != EXPECTED_OLEAN:
        raise ValueError("R04_OLEAN_HASH_MISMATCH")
    replay = json.loads((ROOT / "evidence/r04-source-replay.json").read_text(encoding="utf-8"))
    if (
        replay.get("status") != "PASS"
        or replay.get("source_sha256") != EXPECTED_SOURCE
        or replay.get("audit_source_sha256") != EXPECTED_AUDIT
        or replay.get("theorem_olean_sha256") != EXPECTED_OLEAN
        or replay.get("axioms") != ["propext", "Classical.choice", "Quot.sound"]
        or replay.get("sorryAx") is not False
    ):
        raise ValueError("R04_RECEIPT_PROJECTION_MISMATCH")
    history = json.loads((ROOT / "evidence/attempt-history.json").read_text(encoding="utf-8"))
    if [row.get("status") for row in history.get("records", [])] != [
        "TIMEOUT_BEFORE_THEOREM_ELABORATION",
        "TIMEOUT_BEFORE_THEOREM_ELABORATION",
        "FAIL_SOURCE_COMPILE",
        "PASS",
    ]:
        raise ValueError("ATTEMPT_HISTORY_MISMATCH")
    runner_failure_path = ROOT / "evidence/public-package-replay-r1-failure.json"
    if runner_failure_path.exists():
        runner_failure = json.loads(runner_failure_path.read_text(encoding="utf-8"))
        if runner_failure.get("status") != "FAIL_OR_BLOCKED" or runner_failure.get("reason") != "name 'INPUTS' is not defined":
            raise ValueError("PUBLIC_RUNNER_FAILURE_RECORD_MISMATCH")
        if any(stage.get("name") not in {"lean-version", "lake-version"} for stage in runner_failure.get("stages", [])):
            raise ValueError("PUBLIC_RUNNER_FAILURE_REACHED_BUILD")
    public_receipt_path = ROOT / "evidence/public-replay.json"
    public_context_path = ROOT / "evidence/public-replay-context.json"
    if not public_receipt_path.is_file() or not public_context_path.is_file():
        raise ValueError("PUBLIC_REPLAY_EVIDENCE_MISSING")
    public_receipt = json.loads(public_receipt_path.read_text(encoding="utf-8"))
    public_context = json.loads(public_context_path.read_text(encoding="utf-8"))
    required_stages = ["lean-version", "lake-version", "lake-update", "mathlib-cache", "lean-build", "axiom-audit"]
    if (
        public_receipt.get("status") != "PASS"
        or public_receipt.get("fresh_project_inputs", {}).get("GeometryGeneral.lean") != EXPECTED_SOURCE
        or public_receipt.get("audit_source_sha256") != EXPECTED_AUDIT
        or public_receipt.get("axioms") != ["propext", "Classical.choice", "Quot.sound"]
        or public_receipt.get("sorryAx_reported") is not False
        or public_receipt.get("manifest_unchanged_after_update") is not True
        or [stage.get("name") for stage in public_receipt.get("stages", [])] != required_stages
        or any(stage.get("exit_code") != 0 or stage.get("timed_out") for stage in public_receipt.get("stages", []))
    ):
        raise ValueError("PUBLIC_REPLAY_RECEIPT_MISMATCH")
    if (
        public_context.get("status") != "PASS"
        or public_context.get("source_commit") != "efc62fd8c091b92c46bd55ed0486327897d4d78c"
        or public_context.get("replay_receipt_sha256") != digest(public_receipt_path)
        or public_context.get("result", {}).get("theorem_olean_sha256") != public_receipt.get("theorem_olean_sha256")
    ):
        raise ValueError("PUBLIC_REPLAY_CONTEXT_MISMATCH")
    for markdown in ROOT.rglob("*.md"):
        body = markdown.read_text(encoding="utf-8")
        for raw in re.findall(r"\]\(([^)]+)\)", body):
            target = raw.split("#", 1)[0]
            if not target or re.match(r"^(?:[a-z]+:|//)", target, re.IGNORECASE):
                continue
            local = (markdown.parent / unquote(target)).resolve()
            root_resolved = ROOT.resolve()
            if (local != root_resolved and root_resolved not in local.parents) or not local.exists():
                raise ValueError(f"BROKEN_OR_UNSAFE_MARKDOWN_LINK:{markdown.relative_to(ROOT).as_posix()}:{raw}")
    text_suffixes = {".md", ".lean", ".py", ".toml", ".json", ".txt", ".sha256"}
    for path in ROOT.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in text_suffixes or path.name == "verify_package.py":
            continue
        text = path.read_text(encoding="utf-8", errors="strict")
        if any(marker.lower() in text.lower() for marker in FORBIDDEN_PATHS):
            raise ValueError(f"WORKSTATION_PATH_IN_PACKAGE:{path.relative_to(ROOT).as_posix()}")
    examples = subprocess.run(
        [sys.executable, "-B", str(ROOT / "check_examples.py")],
        cwd=ROOT,
        capture_output=True,
        text=True,
        check=False,
    )
    if examples.returncode != 0 or '"status": "PASS"' not in examples.stdout:
        raise ValueError("EXACT_EXAMPLE_CHECK_FAILED")
    print(json.dumps({"status": "PASS", "files_checked": len(files), "examples": "PASS", "r04_audit": "PASS", "attempt_history": "PASS"}, indent=2))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        raise SystemExit(1)
