#!/usr/bin/env python3
"""Check the public M31 Collatz lift evidence and recompute its 860 rows."""

from __future__ import annotations

import argparse
import hashlib
import json
from collections import Counter
from pathlib import Path
import re
import sys


PACKAGE = Path(__file__).resolve().parents[1]
MANIFEST_NAME = "public-evidence-manifest.json"


class VerificationError(Exception):
    pass


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_json(path: Path):
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError) as exc:
        raise VerificationError(f"cannot read JSON {path}: {exc}") from exc


def verify_manifest(root: Path) -> int:
    manifest_path = root / MANIFEST_NAME
    manifest = load_json(manifest_path)
    if manifest.get("schema") != "mathcase-public-evidence-manifest-v1":
        raise VerificationError("unexpected public evidence manifest schema")
    entries = manifest.get("files")
    if not isinstance(entries, list) or not entries:
        raise VerificationError("manifest has no file entries")
    seen = set()
    for entry in entries:
        rel = entry.get("path")
        expected = entry.get("sha256")
        if not isinstance(rel, str) or not isinstance(expected, str):
            raise VerificationError("malformed manifest entry")
        rel_path = Path(rel)
        if rel_path.is_absolute() or ".." in rel_path.parts or rel in seen:
            raise VerificationError(f"unsafe or duplicate manifest path: {rel}")
        seen.add(rel)
        path = root / rel_path
        if not path.is_file():
            raise VerificationError(f"manifest file is missing: {rel}")
        actual = sha256(path)
        if actual != expected:
            raise VerificationError(f"SHA-256 mismatch for {rel}: {actual}")
    return len(entries)


def collatz_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else 3 * n + 1


def verify_rows(certificate: dict) -> dict:
    if certificate.get("schema") != "mathcase-m31-branch-lifted-descent-certificate-v1":
        raise VerificationError("unexpected family certificate schema")
    rows = certificate.get("rows")
    if not isinstance(rows, list) or len(rows) != 860:
        raise VerificationError("expected exactly 860 family rows")

    row_ids = set()
    step_hist = Counter()
    odd_hist = Counter()
    late = 0
    for index, row in enumerate(rows, start=1):
        row_id = row.get("row_id")
        expected_id = f"m31-lift-{index:04d}"
        if row_id != expected_id or row_id in row_ids:
            raise VerificationError(f"unexpected or repeated row ID at row {index}")
        row_ids.add(row_id)

        residue = row.get("residue")
        steps = row.get("first_drop_step")
        if not isinstance(residue, int) or residue <= 0 or not isinstance(steps, int) or steps <= 0:
            raise VerificationError(f"invalid residue or step count in {row_id}")
        value = residue
        parity = []
        odd_count = 0
        first_drop = None
        for step in range(1, steps + 1):
            is_odd = value % 2 == 1
            parity.append("O" if is_odd else "E")
            odd_count += int(is_odd)
            value = collatz_step(value)
            if first_drop is None and value < residue:
                first_drop = step
        if first_drop != steps:
            raise VerificationError(f"recorded step is not the first drop for {row_id}")
        if value != row.get("endpoint"):
            raise VerificationError(f"endpoint mismatch for {row_id}")
        if odd_count != row.get("odd_inputs_through_first_drop"):
            raise VerificationError(f"odd-input count mismatch for {row_id}")
        if "".join(parity) != row.get("parity_word_through_first_drop"):
            raise VerificationError(f"parity word mismatch for {row_id}")

        modulus = 1 << steps
        slope = 6 ** odd_count
        margin = modulus - slope
        if row.get("modulus") != modulus:
            raise VerificationError(f"modulus mismatch for {row_id}")
        if row.get("lift_slope") != slope or row.get("strict_slope_margin") != margin or margin <= 0:
            raise VerificationError(f"slope or strict margin mismatch for {row_id}")
        if row.get("controls_k_0_1_2") is not True:
            raise VerificationError(f"missing finite controls for {row_id}")

        profile_odd_count = sum(bit == "O" for bit in parity[:31])
        if row.get("m31_profile_odd_inputs") != profile_odd_count:
            raise VerificationError(f"31-step profile count mismatch for {row_id}")

        for k in range(3):
            start = residue + modulus * k
            actual = start
            for _ in range(steps):
                actual = collatz_step(actual)
            expected = row["endpoint"] + slope * k
            if actual != expected or actual >= start:
                raise VerificationError(f"affine control failed for {row_id}, k={k}")

        step_hist[str(steps)] += 1
        odd_hist[str(profile_odd_count)] += 1
        late += int(steps > 128)

    summary = certificate.get("summary", {})
    if summary.get("first_drop_step_min") != min(int(k) for k in step_hist):
        raise VerificationError("first-drop minimum summary does not match rows")
    if summary.get("first_drop_step_max") != max(int(k) for k in step_hist):
        raise VerificationError("first-drop maximum summary does not match rows")
    if summary.get("odd_inputs_histogram") != dict(odd_hist):
        raise VerificationError("31-step odd-input histogram does not match rows")
    if summary.get("late_rows_first_drop_after_128") != late:
        raise VerificationError("late-row count does not match rows")
    if late != 17:
        raise VerificationError("expected 17 rows to first drop after step 128")

    return {
        "rows_recomputed": len(rows),
        "first_drop_step_min": min(int(k) for k in step_hist),
        "first_drop_step_max": max(int(k) for k in step_hist),
        "first_drop_after_128": late,
        "m31_profile_odd_inputs_histogram": dict(sorted(odd_hist.items())),
        "scope": "finite arithmetic recomputation of listed rows; not a replacement for Lean's all-k proof",
    }


def verify_evidence(root: Path) -> dict:
    receipt_path = root / "evidence/lean-replay/lean-replay-receipt-attempt-08.json"
    core_log_path = root / "evidence/lean-replay/core-attempt-08.stdout"
    family_log_path = root / "evidence/lean-replay/families-attempt-08.stdout"
    independent_path = root / "evidence/independent-verification-v3.json"
    core_source = root / "CollatzLift.lean"
    family_source = root / "LiftedFamilies.lean"
    certificate_path = root / "family-certificate.json"

    receipt = load_json(receipt_path)
    independent = load_json(independent_path)
    expected_axioms = ["propext", "Quot.sound"]

    if receipt.get("schema") != "mathcase-collatz-lift-lean-replay-v1" or receipt.get("status") != "PASS_LEAN_REPLAY":
        raise VerificationError("Lean receipt does not record a passing replay")
    if receipt.get("core_exit_code") != 0 or receipt.get("families_exit_code") != 0:
        raise VerificationError("Lean receipt has a nonzero stage exit")
    if receipt.get("core_wall_cap_seconds") != 180 or receipt.get("families_wall_cap_seconds") != 180:
        raise VerificationError("Lean receipt does not bind the recorded 180-second stage caps")
    if receipt.get("core_olean_reused") is not False:
        raise VerificationError("Lean receipt says the core OLEAN was reused")
    if receipt.get("network") != "none (enforced by the Docker invocation)" or receipt.get("provider_spend_usd") != 0:
        raise VerificationError("Lean receipt does not record the expected offline, zero-spend run")

    checks = {
        "core_source_sha256": sha256(core_source),
        "families_source_sha256": sha256(family_source),
        "core_stdout_sha256": sha256(core_log_path),
        "families_stdout_sha256": sha256(family_log_path),
    }
    for key, actual in checks.items():
        if receipt.get(key) != actual:
            raise VerificationError(f"Lean receipt binding mismatch: {key}")

    if independent.get("status") != "PASS_ARITHMETIC_AND_LEAN_AND_SOURCE_BINDINGS" or independent.get("axioms") != expected_axioms:
        raise VerificationError("independent verification receipt is not the expected passing record")
    if independent.get("lean_version") != receipt.get("lean_version"):
        raise VerificationError("Lean version differs between the two receipts")
    if independent.get("axiom_checked") is not True or independent.get("rows_recomputed") != 860:
        raise VerificationError("independent verification receipt has incomplete checks")
    if independent.get("lean_receipt_sha256") != sha256(receipt_path):
        raise VerificationError("independent receipt does not bind the Lean receipt")
    if independent.get("family_certificate_sha256") != sha256(certificate_path):
        raise VerificationError("independent receipt does not bind the family certificate")
    if independent.get("core_lean_source_sha256") != checks["core_source_sha256"]:
        raise VerificationError("independent receipt does not bind the core source")
    if independent.get("family_lean_source_sha256") != checks["families_source_sha256"]:
        raise VerificationError("independent receipt does not bind the family source")
    if independent.get("core_stdout_sha256") != checks["core_stdout_sha256"] or independent.get("lean_stdout_sha256") != checks["families_stdout_sha256"]:
        raise VerificationError("independent receipt does not bind the successful Lean output")

    core_text = core_log_path.read_text(encoding="utf-8")
    family_text = family_log_path.read_text(encoding="utf-8")
    family_source_text = family_source.read_text(encoding="utf-8")
    row_declarations = re.findall(r"^def m31_lift_\d{4} : LiftedFamily where$", family_source_text, re.MULTILINE)
    if len(row_declarations) != 860:
        raise VerificationError(f"Lean family source has {len(row_declarations)} row declarations, expected 860")
    for label, content in (("core", core_text), ("families", family_text)):
        if "sorryAx" in content:
            raise VerificationError(f"sorryAx appears in successful {label} output")
        axioms = re.findall(r"depends on axioms: \[([^\]]*)\]", content)
        axiom_sets = [[name.strip() for name in entry.split(",")] for entry in axioms]
        if not axiom_sets or any(names != expected_axioms for names in axiom_sets):
            raise VerificationError(f"unexpected or missing axiom audit in {label} output")

    for source_path in (core_source, family_source):
        source = source_path.read_text(encoding="utf-8")
        if re.search(r"\bsorry\b|sorryAx|native_decide", source):
            raise VerificationError(f"forbidden proof escape marker in {source_path.name}")

    return {
        "lean_version": receipt.get("lean_version", "").strip(),
        "core_exit_code": receipt["core_exit_code"],
        "families_exit_code": receipt["families_exit_code"],
        "core_elapsed_seconds": receipt.get("core_elapsed_seconds"),
        "total_elapsed_seconds": receipt.get("elapsed_seconds"),
        "axioms": expected_axioms,
        "sorryAx": "absent from successful output",
        "core_olean_reused": False,
        "source_to_receipt_bindings": "matched",
    }


def verify(root: Path) -> dict:
    root = root.resolve()
    manifest_files = verify_manifest(root)
    evidence = verify_evidence(root)
    arithmetic = verify_rows(load_json(root / "family-certificate.json"))
    return {
        "schema": "mathcase-m31-lift-public-check-v1",
        "status": "PASS_EVIDENCE_AND_ARITHMETIC",
        "manifest_files_checked": manifest_files,
        "lean_replay": evidence,
        "arithmetic_recomputation": arithmetic,
        "lean_compiled": "historical pinned receipt bound to these source and output bytes; this command does not run Lean",
    }


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=PACKAGE, help="public package directory")
    parser.add_argument("--receipt", type=Path, help="optional path for a JSON verification receipt")
    args = parser.parse_args(argv)
    try:
        result = verify(args.root)
    except VerificationError as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        return 1
    rendered = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.receipt:
        args.receipt.parent.mkdir(parents=True, exist_ok=True)
        args.receipt.write_text(rendered, encoding="utf-8", newline="\n")
    print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
