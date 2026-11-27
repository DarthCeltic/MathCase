#!/usr/bin/env python3
"""Verify the public Collatz 23/14 proof-refactor package without Lean."""
from __future__ import annotations
import hashlib
import json
import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
BASE = HERE.parent


def sha(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def require(ok: bool, message: str) -> None:
    if not ok:
        raise SystemExit("FAIL: " + message)


def normalized(text: str) -> str:
    return " ".join(text.split())


def theorem_header(path: Path, name: str) -> str:
    text = path.read_text(encoding="utf-8")
    match = re.search(
        rf"(?ms)^theorem\s+{re.escape(name)}\b.*?:=\s*by\b",
        text,
    )
    require(match is not None, f"missing theorem declaration {name} in {path.name}")
    return normalized(match.group(0))


def main() -> None:
    pins = json.loads((HERE / "source-pins.json").read_text(encoding="utf-8"))
    receipt = json.loads((HERE / "run-receipt.json").read_text(encoding="utf-8"))
    require(receipt["status"] == "PASS", "receipt status is not PASS")
    require(receipt["source_checkout"]["base_commit"] == pins["base_commit"], "base commit mismatch")
    require(receipt["statement_packet_sha256"] == pins["reviewed_statement_packet_sha256"], "M0 packet binding mismatch")
    require(receipt['qualifying_residue_count'] == 7507638 and receipt['residue_space_size'] == 8388608, 'residue count mismatch')
    require(receipt['exact_target_statement'] == 'For every n : Nat, if 3 <= n and odds n 23 <= 14, then ordinaryIter n (23 + odds n 23) < n.', 'target statement mismatch')
    require(receipt["run"]["exit_code"] == 0, "Lean exit code is not zero")
    require(receipt["run"]["elapsed_seconds"] > 0, "missing elapsed time")
    require(receipt["fresh_outputs"]["no_preexisting_olean_files"] is True, "run did not assert fresh output")

    for key, entry in pins["shared_sources"].items():
        receipt_key = 'AtMostFourteen23.original.lean' if key == 'AtMostFourteen23.original.lean' else key
        require(receipt['source_sha256'][receipt_key] == entry['sha256'], f'receipt shared-source hash mismatch: {key}')
        path = BASE / entry["path"]
        require(path.is_file(), f"missing pinned source {entry['path']}")
        require(sha(path) == entry["sha256"], f"shared source hash mismatch: {entry['path']}")

    source_files = {
        "EnvelopeLemma.lean": HERE / "EnvelopeLemma.lean",
        "AtMostFourteen23.refactored.lean": HERE / "AtMostFourteen23.lean",
        "EnvelopeAudit.lean": HERE / "EnvelopeAudit.lean",
        "replay.ps1": HERE / "replay.ps1",
    }
    for name, path in source_files.items():
        require(sha(path) == receipt["source_sha256"][name], f"candidate source hash mismatch: {name}")

    original = BASE / pins["shared_sources"]["AtMostFourteen23.original.lean"]["path"]
    changed = HERE / "AtMostFourteen23.lean"
    for name in (
        "residue_at_most_fourteen_count_23",
        "at_most_fourteen_of_twenty_three_descend",
        "counted_at_most_fourteen_families_23",
    ):
        require(theorem_header(original, name) == theorem_header(changed, name), f"target statement changed: {name}")

    lean_sources = [HERE / "EnvelopeLemma.lean", changed, HERE / "EnvelopeAudit.lean"]
    source_text = "\n".join(path.read_text(encoding="utf-8") for path in lean_sources)
    require(not re.search(r"\b(?:sorry|sorryAx|native_decide)\b", source_text), "forbidden proof escape found in candidate Lean sources")
    require("hcases" not in changed.read_text(encoding="utf-8"), "old 15-way h case split remains")
    require("scaledEnvelope_le_cap" in changed.read_text(encoding="utf-8"), "envelope cap is not used by descent proof")
    old_text = original.read_text(encoding='utf-8')
    old_branches = re.findall(r"rw \[h(?:[0-9]|1[0-4])\]", old_text)
    require(len(old_branches) == 15, f'expected 15 old large-start branches, found {len(old_branches)}')
    require(receipt['proof_structure']['old_large_start_branches'] == len(old_branches), 'old branch count receipt mismatch')
    guard_control = (HERE / 'evidence' / 'version-guard-control.txt').read_text(encoding='utf-8')
    require('PASS:' in guard_control and 'Lean 4.29.1' in guard_control, 'version-guard control missing')

    expected_oles = receipt["fresh_outputs"]["olean_files"]
    output_dir = HERE / "evidence" / "fresh-output"
    actual_names = {p.name for p in output_dir.glob("*.olean")}
    require(actual_names == set(expected_oles), "fresh OLEAN file set mismatch")
    for name, data in expected_oles.items():
        path = output_dir / name
        require(path.stat().st_size == data["bytes"], f"OLEAN size mismatch: {name}")
        require(sha(path) == data["sha256"], f"OLEAN hash mismatch: {name}")

    audit = HERE / receipt["run"]["audit_output"]
    require(sha(audit) == receipt["run"]["audit_output_sha256"], "axiom audit output hash mismatch")
    audit_text = normalized(audit.read_text(encoding="utf-8"))
    expected_axioms = {
        "MathCase.Collatz.WordBound.scaledEnvelope_step": "[propext, Quot.sound]",
        "MathCase.Collatz.WordBound.scaledEnvelope_le_cap": "[propext, Quot.sound]",
        "MathCase.Collatz.WordBound.at_most_fourteen_of_twenty_three_descend": "[propext, Quot.sound]",
        "MathCase.Collatz.WordBound.counted_at_most_fourteen_families_23": "[propext, Classical.choice, Quot.sound]",
    }
    target_axioms = receipt["axiom_audit"]["axioms"]
    require(target_axioms == ["propext", "Quot.sound"], "receipt target axioms mismatch")
    require(receipt["axiom_audit"]["target"] == "MathCase.Collatz.WordBound.at_most_fourteen_of_twenty_three_descend", "receipt target declaration mismatch")
    for name, axioms in expected_axioms.items():
        require(f"'{name}' depends on axioms: {axioms}" in audit_text, f"axiom audit mismatch for {name}")
    require("sorryAx" not in audit_text and "native_decide" not in audit_text, "forbidden axiom/macro appears in audit output")

    lean_version = (HERE / "evidence" / "lean-version.txt").read_text(encoding="utf-8").strip()
    require("Lean (version 4.33.1" in lean_version and receipt["lean"]["version"] == "4.33.1", "Lean version mismatch")
    require('requires Lean 4.33.1' in (HERE / 'replay.ps1').read_text(encoding='utf-8'), 'runner does not enforce Lean 4.33.1')
    binary_hash = (HERE / "evidence" / "lean-binary.sha256").read_text(encoding="ascii").strip().lower()
    require(binary_hash == receipt["lean"]["binary_sha256"], "Lean binary hash mismatch")
    require((HERE / "evidence" / "exit-code.txt").read_text(encoding="ascii").strip() == "0", "saved exit code mismatch")
    require(float((HERE / "evidence" / "elapsed-seconds.txt").read_text(encoding="ascii").strip()) == receipt["run"]["elapsed_seconds"], "saved elapsed time mismatch")

    gap = lambda n: 3605639 * n - 2440491520
    require(gap(676) == -3079556 and gap(677) == 526083, "large-start threshold arithmetic mismatch")
    require(receipt["proof_structure"]["old_large_start_branches"] == 15 and receipt["proof_structure"]["new_large_start_branches"] == 0, "branch-count record mismatch")

    sums_path = HERE / "SHA256SUMS.txt"
    entries: dict[str, str] = {}
    for line in sums_path.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        digest, rel = line.split("  ", 1)
        entries[rel.replace("\\", "/")] = digest.lower()
    files = {p.relative_to(HERE).as_posix() for p in HERE.rglob("*") if p.is_file() and p.name != "SHA256SUMS.txt"}
    require(files == set(entries), "SHA256SUMS file list mismatch")
    for rel, digest in entries.items():
        require(sha(HERE / rel) == digest, f"package hash mismatch: {rel}")

    forbidden_paths = ("C:\\MathCase", "T:\\MathCase", "C:/MathCase", "T:/MathCase", "C:\\Users\\ryang", "T:\\RunArchive")
    for path in HERE.rglob("*"):
        if not path.is_file() or path.name == "verify_release.py" or path.suffix.lower() in {".olean"}:
            continue
        try:
            body = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        require(not any(token.lower() in body.lower() for token in forbidden_paths), f"local workstation path in {path.relative_to(HERE)}")

    print("PASS: source pins, unchanged theorem statements, fresh Lean outputs, axiom audit, coefficient boundary, and package hashes")

if __name__ == "__main__":
    main()
