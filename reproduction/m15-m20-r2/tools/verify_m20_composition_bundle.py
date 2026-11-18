#!/usr/bin/env python3
"""Audit archived M20 composition bindings without invoking Lean."""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import sys
from datetime import datetime
from pathlib import Path, PurePosixPath


ROOT = Path(__file__).resolve().parents[1]
BUNDLE = ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay" / "m20-composition-v1"
REPLAY = ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay"
SOURCE_ROOT = ROOT / "sources" / "repository"
HEX64 = re.compile(r"^[0-9a-f]{64}$")
EMPTY_SHA256 = hashlib.sha256(b"").hexdigest()
EXPECTED_COMPOSITION_SHARDS = 133
EXPECTED_FAMILIES = 2652
EXPECTED_MODULES = EXPECTED_COMPOSITION_SHARDS + 1


class BundleError(ValueError):
    """Raised when an archived binding or inventory is inconsistent."""


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def safe_payload_path(raw: object) -> Path:
    if not isinstance(raw, str) or not raw or "\\" in raw:
        raise BundleError(f"invalid manifest path: {raw!r}")
    path = PurePosixPath(raw)
    if path.is_absolute() or any(part in ("", ".", "..") for part in path.parts) or ":" in raw:
        raise BundleError(f"unsafe manifest path: {raw!r}")
    return Path(*path.parts)


def verify_file_inventory(root: Path, manifest_name: str = "manifest.json", checksum_name: str = "manifest.sha256") -> int:
    root = root.resolve()
    manifest_path = root / manifest_name
    checksum_path = root / checksum_name
    if not manifest_path.is_file() or not checksum_path.is_file():
        raise BundleError("manifest.json and manifest.sha256 must both exist")
    manifest_bytes = manifest_path.read_bytes()
    checksum_text = checksum_path.read_text(encoding="ascii").strip()
    expected_line = f"{sha256_bytes(manifest_bytes)}  {manifest_name}"
    if checksum_text != expected_line:
        raise BundleError("manifest.sha256 does not bind manifest.json")
    try:
        manifest = json.loads(manifest_bytes.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise BundleError(f"invalid JSON manifest: {exc}") from exc
    entries = manifest.get("files")
    if not isinstance(entries, list) or manifest.get("file_count") != len(entries):
        raise BundleError("manifest file_count does not match its files list")
    expected: dict[str, dict] = {}
    for entry in entries:
        if not isinstance(entry, dict):
            raise BundleError("manifest entries must be objects")
        relative = safe_payload_path(entry.get("path")).as_posix()
        if relative in expected:
            raise BundleError(f"duplicate manifest path: {relative}")
        if not isinstance(entry.get("bytes"), int) or not HEX64.fullmatch(str(entry.get("sha256", ""))):
            raise BundleError(f"invalid size or digest for {relative}")
        expected[relative] = entry

    actual: set[str] = set()
    for path in root.rglob("*"):
        if path.is_symlink():
            raise BundleError(f"symlinks are not permitted in the exported bundle: {path.relative_to(root)}")
        if path.is_file():
            relative = path.relative_to(root).as_posix()
            if relative not in (manifest_name, checksum_name):
                actual.add(relative)
    if actual != set(expected):
        missing = sorted(set(expected) - actual)
        unlisted = sorted(actual - set(expected))
        raise BundleError(f"bundle inventory mismatch; missing={missing[:3]}, unlisted={unlisted[:3]}")

    for relative, entry in expected.items():
        path = root / safe_payload_path(relative)
        if not path.is_file():
            raise BundleError(f"missing bundle payload: {relative}")
        if path.stat().st_size != entry["bytes"] or sha256_file(path) != entry["sha256"]:
            raise BundleError(f"bundle payload digest or size mismatch: {relative}")
    return len(expected)


def read_json(path: Path) -> dict:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise BundleError(f"cannot read {path.name}: {exc}") from exc
    if not isinstance(value, dict):
        raise BundleError(f"{path.name} must contain a JSON object")
    return value


def verify_source_index(bundle: Path) -> dict[str, dict]:
    index = read_json(bundle / "source-manifest.json")
    entries = index.get("files")
    if index.get("schema") != "mathcase-m20-composition-source-index-v1" or not isinstance(entries, list):
        raise BundleError("unexpected M20 source-manifest schema")
    if index.get("file_count") != len(entries):
        raise BundleError("source-manifest file_count mismatch")
    by_path: dict[str, dict] = {}
    for entry in entries:
        relative = safe_payload_path(entry.get("path")).as_posix()
        if not relative.startswith("sources/") or not relative.endswith(".lean") or relative in by_path:
            raise BundleError(f"invalid or duplicate Lean source path: {relative}")
        path = bundle / safe_payload_path(relative)
        if not path.is_file() or path.stat().st_size != entry.get("bytes") or sha256_file(path) != entry.get("sha256"):
            raise BundleError(f"source-manifest binding mismatch: {relative}")
        by_path[relative] = entry
    actual_sources = {p.relative_to(bundle).as_posix() for p in (bundle / "sources").rglob("*.lean")}
    if actual_sources != set(by_path):
        raise BundleError("source-manifest does not enumerate exactly the Lean source files")
    if len(by_path) != 135:
        raise BundleError(f"expected 135 preserved Lean source files, found {len(by_path)}")
    return by_path


def expected_modules() -> list[str]:
    return [f"M20CompositionShard{i:03d}" for i in range(1, EXPECTED_COMPOSITION_SHARDS + 1)] + [
        "M20CompositionAllFamiliesV1"
    ]


def verify_composition_sources(bundle: Path, source_index: dict[str, dict]) -> int:
    sources = bundle / "sources"
    expected_imports = [f"M20CompositionShard{i:03d}" for i in range(1, EXPECTED_COMPOSITION_SHARDS + 1)]
    final_path = sources / "M20CompositionAllFamiliesV1.lean"
    final_text = final_path.read_text(encoding="utf-8")
    imports = re.findall(r"(?m)^import (M20CompositionShard\d{3})\s*$", final_text)
    if imports != expected_imports:
        raise BundleError("final composition imports are missing, duplicated, or out of order")
    chunk_refs = re.findall(r"CollatzM20CompositionV1\.chunk(\d{3})", final_text)
    if chunk_refs != [f"{i:03d}" for i in range(1, EXPECTED_COMPOSITION_SHARDS + 1)]:
        raise BundleError("final theorem does not compose chunk001 through chunk133 exactly once in order")

    replay_source_hashes: dict[str, str] = {}
    for line_number, line in enumerate((REPLAY / "manifest.tsv").read_text(encoding="utf-8").splitlines(), 1):
        fields = line.split("\t")
        if len(fields) != 6:
            raise BundleError(f"pinned replay manifest line {line_number} has an unexpected field count")
        relative, digest = fields[2], fields[5]
        if relative in replay_source_hashes:
            raise BundleError(f"duplicate pinned replay source path: {relative}")
        replay_source_hashes[relative] = digest

    family_count = 0
    for number in range(1, EXPECTED_COMPOSITION_SHARDS + 1):
        name = f"M20CompositionShard{number:03d}"
        path = sources / f"{name}.lean"
        text = path.read_text(encoding="utf-8")
        if re.findall(r"(?m)^import (M20Shard\d{3})\s*$", text) != [f"M20Shard{number:03d}"]:
            raise BundleError(f"{name} does not import its corresponding original M20 shard")
        relative = f"research/collatz/m20/lean/modules/M20Shard{number:03d}.lean"
        original = SOURCE_ROOT / relative
        expected_hash = replay_source_hashes.get(relative)
        if not original.is_file() or expected_hash is None or sha256_file(original) != expected_hash:
            raise BundleError(f"original M20 shard source is absent or not bound by the pinned replay: {relative}")
        family_count += len(re.findall(r"∀ k : Nat", text))
    if family_count != EXPECTED_FAMILIES:
        raise BundleError(f"expected {EXPECTED_FAMILIES} listed family statements, found {family_count}")
    if "CollatzM20CompositionV1.all_scanned_m20_families_descend_composed_v1" not in final_text:
        raise BundleError("final composition theorem declaration is missing")
    if "#print axioms CollatzM20CompositionV1.all_scanned_m20_families_descend_composed_v1" not in final_text:
        raise BundleError("final source does not include the recorded axiom report command")
    if "sources/M20CompositionAllFamiliesV1.lean" not in source_index:
        raise BundleError("final composition source is not in the source index")
    return family_count


def verify_compile_receipts(bundle: Path, source_index: dict[str, dict], summary: dict) -> dict:
    receipt_path = bundle / "compile-receipts.tsv"
    with receipt_path.open("r", encoding="utf-8", newline="") as stream:
        reader = csv.DictReader(stream, delimiter="\t")
        expected_fields = [
            "module", "source_sha256", "olean_sha256", "exit_code", "started_utc", "finished_utc",
            "stdout_sha256", "stderr_sha256",
        ]
        if reader.fieldnames != expected_fields:
            raise BundleError("compile receipt TSV header does not match the expected schema")
        rows = list(reader)
    modules = expected_modules()
    if [row.get("module") for row in rows] != modules:
        raise BundleError(f"expected the 133 ordered composition shards and one final module; found {len(rows)} rows")

    previous_end: datetime | None = None
    by_module: dict[str, dict] = {}
    for row in rows:
        module = row["module"]
        source_path = f"sources/{module}.lean"
        indexed = source_index.get(source_path)
        if indexed is None or row["source_sha256"] != indexed["sha256"]:
            raise BundleError(f"receipt source digest does not match source index: {module}")
        if row["exit_code"] != "0":
            raise BundleError(f"nonzero archived compile exit code for {module}: {row['exit_code']}")
        for field in ("source_sha256", "olean_sha256", "stdout_sha256", "stderr_sha256"):
            if not HEX64.fullmatch(row[field]):
                raise BundleError(f"invalid SHA-256 in {module} receipt field {field}")
        try:
            started = datetime.fromisoformat(row["started_utc"].replace("Z", "+00:00"))
            finished = datetime.fromisoformat(row["finished_utc"].replace("Z", "+00:00"))
        except ValueError as exc:
            raise BundleError(f"invalid UTC timestamp in {module} receipt") from exc
        if finished < started or (previous_end is not None and started < previous_end):
            raise BundleError(f"non-monotonic archived receipt timestamps at {module}")
        previous_end = finished
        by_module[module] = row

    final = by_module["M20CompositionAllFamiliesV1"]
    if final["olean_sha256"] != summary.get("final_olean_sha256"):
        raise BundleError("summary final OLEAN digest does not match final compile receipt")
    final_source = source_index["sources/M20CompositionAllFamiliesV1.lean"]["sha256"]
    if final_source != summary.get("composition_source_sha256") or final["source_sha256"] != final_source:
        raise BundleError("summary final source digest does not match source index and compile receipt")
    for name, field in (("final-stdout.txt", "stdout_sha256"), ("final-stderr.txt", "stderr_sha256")):
        if sha256_file(bundle / "outputs" / name) != final[field]:
            raise BundleError(f"saved final output does not match compile receipt: {name}")
    stdout = (bundle / "outputs" / "final-stdout.txt").read_text(encoding="utf-8")
    if "depends on axioms: [propext, Quot.sound]" not in stdout:
        raise BundleError("saved final axiom output does not match the stated axiom list")
    return {"compile_receipt_rows": len(rows), "final_olean_sha256": final["olean_sha256"]}


def verify_bundle(bundle: Path = BUNDLE) -> dict:
    bundle = bundle.resolve()
    inventory_count = verify_file_inventory(bundle)
    source_index = verify_source_index(bundle)
    summary = read_json(bundle / "summary.json")
    if summary.get("schema") != "mathcase-m20-composition-public-summary-v1":
        raise BundleError("unexpected public M20 summary schema")
    if summary.get("status") != "PASS_COMPOSED_AGGREGATE_CANDIDATE":
        raise BundleError("summary status is not the expected candidate status")
    if summary.get("compiled_outputs") != EXPECTED_MODULES or summary.get("families_composed") != EXPECTED_FAMILIES:
        raise BundleError("summary counts do not match the fixed composition target")
    if summary.get("intermediate_modules_compiled") != EXPECTED_COMPOSITION_SHARDS:
        raise BundleError("summary intermediate module count mismatch")
    if summary.get("fresh_public_checkout_replay") != "NOT PERFORMED":
        raise BundleError("summary must retain the clean-room replay limitation")
    if summary.get("memory_limit_bytes") != 2_147_483_648 or summary.get("network_mode") != "none":
        raise BundleError("summary runtime limits do not match the recorded bounded run")
    if summary.get("gate_effect") != "No M4 or downstream gate promotion.":
        raise BundleError("summary gate status must remain unchanged")
    family_count = verify_composition_sources(bundle, source_index)
    compile_info = verify_compile_receipts(bundle, source_index, summary)
    return {
        "status": "ARCHIVE_BINDINGS_PASS_NOT_FRESH_REPLAY",
        "bundle_file_count": inventory_count,
        "source_file_count": len(source_index),
        "composition_shards": EXPECTED_COMPOSITION_SHARDS,
        "family_statement_count": family_count,
        "compile_receipt_rows": compile_info["compile_receipt_rows"],
        "final_olean_sha256_recorded_only": compile_info["final_olean_sha256"],
        "olean_bytes_in_bundle": False,
        "lean_invocations": 0,
        "limits": [
            "Checks archived file, source, receipt, and composition bindings only.",
            "Does not validate the archived OLEAN bytes or re-run Lean.",
            "The original run reused cached M20 shard OLEANs; this is not a fresh public checkout replay.",
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bundle", type=Path, default=BUNDLE, help="M20 composition bundle directory")
    args = parser.parse_args()
    try:
        result = verify_bundle(args.bundle)
    except (OSError, BundleError) as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        return 1
    print(json.dumps(result, ensure_ascii=False, sort_keys=True, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
