"""Recheck a saved M20 run against the public source and phase-2 manifests."""
import argparse
import csv
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys

COMPILE_SHA = "f18fcf6fa13df3308a31b13dcc067556a6c77a1de27cd1fffe5bdad298687036"
AXIOM_SHA = "f64f25c8bb87daf75679188515f10fa541c540d458bcb51a0bbcd3fb12b341aa"
INVENTORY_SHA = "55431285c8f0d3e71a18991f70c010b411c12f1e138f2e7739adad9cc94c9e69"
MATHCASE_SHA = "17174a4a6311eb2e32556d9e4fb38255290a36be"
MATHLIB_SHA = "0df444a360eaa60ab8c11dca51a86af692955474"
LEAN_REV = "819816b2e0a3bf405af45ae5c7af2491d8f5bee6"
HISTORICAL_PREFIX = "/mathcase/project/.lake/packages/mathlib/"

def file_hash(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()

def read_tsv(path):
    with Path(path).open(encoding="utf-8", newline="") as stream:
        return list(csv.DictReader(stream, delimiter="\t"))

def git_head(path):
    return subprocess.check_output(["git", "-C", str(path), "rev-parse", "HEAD"],
                                   text=True, stderr=subprocess.DEVNULL).strip()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run_dir", type=Path, help="Saved full-run output directory")
    parser.add_argument("workspace", type=Path, help="Bootstrap workspace with source/ and mathlib/")
    parser.add_argument("--output", type=Path, help="Write the path-free audit receipt here")
    args = parser.parse_args()
    run = args.run_dir.resolve()
    workspace = args.workspace.resolve()
    package = workspace / "source" / "reproduction" / "m15-m20-r2"
    mathlib = workspace / "mathlib"
    repo_root = Path(__file__).resolve().parents[2]
    phase = repo_root / "reproduction" / "m20-source-replay-2026-11-18" / "phase-2"
    status_file = run / "status.json"
    stages_file = run / "stages.jsonl"
    compile_file = phase / "compile-records.tsv"
    axiom_file = phase / "axiom-records.tsv"
    inventory_file = Path(__file__).with_name("historical-mathlib-inventory.sha256")

    status = json.loads(status_file.read_bytes())
    stage_rows = [json.loads(line) for line in stages_file.read_text(encoding="utf-8").splitlines() if line.strip()]
    compile_rows = read_tsv(compile_file)
    axiom_rows = read_tsv(axiom_file)
    stages = {(row.get("kind"), row.get("module")): row for row in stage_rows}
    if len(stages) != len(stage_rows):
        raise ValueError("Duplicate run stage record")
    if file_hash(compile_file) != COMPILE_SHA or file_hash(axiom_file) != AXIOM_SHA:
        raise ValueError("Published phase-2 manifest digest mismatch")
    if file_hash(inventory_file) != INVENTORY_SHA:
        raise ValueError("Historical dependency inventory digest mismatch")
    runner_file = Path(__file__).with_name("replay_original.py")
    bootstrap_file = Path(__file__).with_name("bootstrap_original.py")
    if status.get("runner_sha256") and file_hash(runner_file) != status["runner_sha256"]:
        raise ValueError("Saved runner hash does not match the public replay script")
    if status.get("bootstrap_script_sha256") and file_hash(bootstrap_file) != status["bootstrap_script_sha256"]:
        raise ValueError("Saved bootstrap hash does not match the public bootstrap script")
    bootstrap_receipt = workspace / "bootstrap-receipt.json"
    if status.get("bootstrap_receipt_sha256") and file_hash(bootstrap_receipt) != status["bootstrap_receipt_sha256"]:
        raise ValueError("Saved bootstrap receipt hash mismatch")
    if git_head(workspace / "source") != MATHCASE_SHA or git_head(mathlib) != MATHLIB_SHA:
        raise ValueError("Workspace source revisions do not match the public pins")
    if status.get("status") != "PASS" or status.get("mode") != "full":
        raise ValueError("Saved status is not a full PASS")
    if status.get("source_commit") != MATHCASE_SHA or status.get("mathlib_commit") != MATHLIB_SHA:
        raise ValueError("Saved status source pins mismatch")
    if LEAN_REV not in status.get("toolchain", "") or "version 4.33.1," not in status.get("toolchain", ""):
        raise ValueError("Saved status toolchain mismatch")
    if len(compile_rows) != 363 or len(axiom_rows) != 23 or len(stage_rows) != 386:
        raise ValueError("Unexpected source, audit, or stage count")

    historical_olean_matches = 0
    phase2_olean_matches = 0
    def check_stage(kind, name, expected_source, expected_stdout, expected_stderr,
                    historical_olean=None, old_olean=None):
        nonlocal historical_olean_matches, phase2_olean_matches
        stage = stages.get((kind, name))
        if stage is None or int(stage.get("exit_code", -1)) != 0:
            raise ValueError(f"Missing or failed stage: {kind} {name}")
        if stage.get("source_sha256") != expected_source:
            raise ValueError(f"Staged source manifest mismatch: {name}")
        source = run / "sources" / f"{name}.lean"
        stdout = run / "logs" / f"{name}.stdout"
        stderr = run / "logs" / f"{name}.stderr"
        if file_hash(source) != stage["source_sha256"]:
            raise ValueError(f"Staged source file mismatch: {name}")
        if file_hash(stdout) != stage["stdout_sha256"] or file_hash(stderr) != stage["stderr_sha256"]:
            raise ValueError(f"Recorded output file mismatch: {name}")
        normalized = stdout.read_bytes().replace(b"\r\n", b"\n")
        if hashlib.sha256(normalized).hexdigest() != expected_stdout:
            raise ValueError(f"Normalized stdout differs from published record: {name}")
        if stage.get("normalized_stdout_matches") is not True:
            raise ValueError(f"Runner marked normalized stdout as mismatched: {name}")
        if file_hash(stderr) != expected_stderr:
            raise ValueError(f"Stderr differs from published record: {name}")
        if kind == "compile":
            olean = run / "oleans" / f"{name}.olean"
            actual = file_hash(olean)
            if actual != stage.get("olean_sha256") or actual != historical_olean:
                raise ValueError(f"Compiled OLEAN differs from saved run or phase-2 manifest: {name}")
            if stage.get("nov18_phase2_olean_match") is not True:
                raise ValueError(f"Run marked phase-2 OLEAN as mismatched: {name}")
            if stage.get("historical_expected_olean_match") is not (actual == old_olean):
                raise ValueError(f"Historical OLEAN comparison flag mismatch: {name}")
            historical_olean_matches += actual == old_olean
            phase2_olean_matches += actual == historical_olean
        else:
            if "sorryAx" in stdout.read_text(encoding="utf-8", errors="replace"):
                raise ValueError(f"Forbidden sorryAx text in axiom output: {name}")

    source_files = 0
    for row in compile_rows:
        name = row["module"]
        rel = row["source_path"]
        if not rel.startswith("inputs/"):
            raise ValueError("Unexpected compile source path in pinned manifest")
        source = package / rel.removeprefix("inputs/")
        if file_hash(source) != row["source_sha256"]:
            raise ValueError(f"Pinned checkout source mismatch: {name}")
        check_stage("compile", name, row["source_sha256"], row["stdout_sha256"],
                    row["stderr_sha256"], row["olean_sha256"], row["expected_olean_sha256"])
        source_files += 1

    query_count = 0
    axiom_counts = Counter()
    source_native_decide = []
    source_sorry = []
    for row in axiom_rows:
        name = row["group"]
        rel = row["source_path"]
        if not rel.startswith("inputs/") or int(row["sorryAx_count"]) != 0:
            raise ValueError(f"Unexpected axiom source or sorryAx count: {name}")
        source = package / rel.removeprefix("inputs/")
        if file_hash(source) != row["source_sha256"]:
            raise ValueError(f"Pinned axiom source mismatch: {name}")
        source_text = source.read_text(encoding="utf-8")
        if re.search(r"\bnative_decide\b", source_text):
            source_native_decide.append(name)
        if re.search(r"\bsorry\b", source_text):
            source_sorry.append(name)
        staged = run / "sources" / f"{name}.lean"
        query_count += sum(line.startswith("#print axioms ") for line in staged.read_text(encoding="utf-8").splitlines())
        check_stage("audit", name, row["source_sha256"], row["stdout_sha256"], row["stderr_sha256"])
        audit_text = (run / "logs" / f"{name}.stdout").read_text(encoding="utf-8", errors="replace")
        for match in re.finditer(r"depends on axioms: \[([^\]]*)\]", audit_text):
            axiom_counts.update(part.strip() for part in match.group(1).split(",") if part.strip())
        source_files += 1
    if source_files != 386 or query_count != 4262 or query_count != status.get("completed_queries"):
        raise ValueError("Full input/query counts do not match saved status")
    if status.get("completed_compiles") != 363 or status.get("completed_audits") != 23:
        raise ValueError("Saved completion counts mismatch")
    if status.get("original_olean_matches") != historical_olean_matches:
        raise ValueError("Saved historical OLEAN match count mismatch")
    if status.get("nov18_phase2_olean_matches") != phase2_olean_matches or phase2_olean_matches != 363:
        raise ValueError("Saved phase-2 OLEAN match count mismatch")
    compile_texts = [
        (package / row["source_path"].removeprefix("inputs/")).read_text(encoding="utf-8")
        for row in compile_rows
    ]
    source_native_decide.extend(
        row["module"] for row, source_text in zip(compile_rows, compile_texts)
        if re.search(r"\bnative_decide\b", source_text)
    )
    source_sorry.extend(
        row["module"] for row, source_text in zip(compile_rows, compile_texts)
        if re.search(r"\bsorry\b", source_text)
    )
    if source_native_decide or source_sorry or "sorryAx" in axiom_counts:
        raise ValueError("Forbidden native_decide/sorry source or sorryAx audit result")
    if axiom_counts != Counter({"propext": query_count, "Quot.sound": query_count}):
        raise ValueError("Unexpected axiom union or per-axiom query count")

    inventory_rows = []
    for line in inventory_file.read_text(encoding="ascii").splitlines():
        expected, rel = line.split("  ", 1)
        if not rel.startswith(HISTORICAL_PREFIX):
            raise ValueError("Unexpected historical dependency path")
        path = mathlib / rel.removeprefix(HISTORICAL_PREFIX)
        if not path.is_file() or file_hash(path) != expected:
            raise ValueError("Historical Mathlib dependency OLEAN mismatch")
        inventory_rows.append(path.name)
    if len(inventory_rows) != 346:
        raise ValueError("Unexpected historical dependency count")

    receipt = {
        "schema": "mathcase-m20-posthoc-artifact-audit-v1",
        "audit_status": "PASS",
        "audit_kind": "author-side read-only artifact rehash; not a fresh Lean build",
        "audited_utc": datetime.now(timezone.utc).isoformat(),
        "run_reported_status": status["status"],
        "run_started_utc": status["started_utc"],
        "run_finished_utc": status["finished_utc"],
        "source_commit": MATHCASE_SHA,
        "mathlib_commit": MATHLIB_SHA,
        "lean_toolchain": status["toolchain"],
        "runner_sha256": status.get("runner_sha256"),
        "bootstrap_script_sha256": status.get("bootstrap_script_sha256"),
        "bootstrap_receipt_sha256": status.get("bootstrap_receipt_sha256"),
        "timeout_seconds_per_stage": status.get("timeout_seconds_per_stage"),
        "pinned_inputs": {"source_files": source_files, "compile_modules": 363, "axiom_groups": 23,
                          "axiom_queries": query_count, "sorryAx_queries": 0},
        "axiom_names": sorted(axiom_counts),
        "axiom_occurrences": dict(sorted(axiom_counts.items())),
        "source_controls": {"native_decide_hits": source_native_decide, "sorry_hits": source_sorry},
        "rehash_results": {"staged_sources": 386, "staged_logs": 772, "compiled_oleans": 363,
                           "compiled_oleans_matching_phase2": phase2_olean_matches,
                           "compiled_oleans_matching_original_container": historical_olean_matches,
                           "historical_mathlib_oleans": 346, "historical_mathlib_oleans_matching": 346},
        "file_sha256": {
            "saved_status.json": file_hash(status_file),
            "saved_stages.jsonl": file_hash(stages_file),
            "compile_records.tsv": file_hash(compile_file),
            "axiom_records.tsv": file_hash(axiom_file),
            "historical_mathlib_inventory.sha256": file_hash(inventory_file),
            "auditor_script.py": file_hash(Path(__file__).resolve()),
        },
        "runner_sha256_bound": bool(status.get("runner_sha256")),
        "limitations": [
            "This read-only audit rehashed saved source, stdout, stderr, OLEAN, and dependency files against pinned manifests; it did not rerun Lean.",
            "This author-side artifact audit is not an independent stranger reproduction.",
        ] + ([] if status.get("runner_sha256") else [
            "This saved run did not record a replay runner hash, so its orchestrating code is unbound."
        ]),
    }
    rendered = json.dumps(receipt, indent=2) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(rendered, end="")
    return 0

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError, json.JSONDecodeError, csv.Error) as exc:
        print(f"AUDIT_FAILED: {type(exc).__name__}: {exc}", file=sys.stderr)
        raise SystemExit(1)
