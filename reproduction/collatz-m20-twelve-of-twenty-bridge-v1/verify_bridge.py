"""Audit whether the published M20 rows fit the 12-of-20 Lean theorem."""

from __future__ import annotations

import argparse
import csv
from datetime import datetime, timezone
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys
import time


REPO = Path(__file__).resolve().parents[2]
REPRODUCTION = REPO / "reproduction"
M20 = REPRODUCTION / "collatz-affine-family-replay-v1"
TWELVE = REPRODUCTION / "collatz-twelve-of-twenty-v1"
COMPOSITION_SOURCES = (
    REPRODUCTION
    / "m15-m20-r2"
    / "evidence"
    / "collatz"
    / "m15-m20-pinned-replay"
    / "m20-composition-v1"
    / "sources"
)

PINNED_INPUTS = {
    "reproduction/collatz-affine-family-replay-v1/PAIRS.tsv":
        "30f06904507a35d180fab9d0d9195759047d13edfd857c04e2ef483eaf75194a",
    "reproduction/collatz-affine-family-replay-v1/M20Table.lean":
        "bd811cfc8e355280c24fc325e7f2ceffdaa3fe187cdd8d09f0d186b14fa18f5e",
    "reproduction/collatz-affine-family-replay-v1/generate_m20_table.py":
        "26947efafb476dcf59302abab8d6350305773b7b05b4fc5ad058f922f8033b64",
    "reproduction/collatz-twelve-of-twenty-v1/WordBound.lean":
        "2208a91a348c41b110c799124b450957a5a7a168e33c49dbab03ec0736c3d48d",
    "reproduction/collatz-twelve-of-twenty-v1/WordResidue.lean":
        "812b00cdf2375de9a87d8c87fbd7cebb61924542d251775828dcc845bd0fdc1c",
    "reproduction/collatz-twelve-of-twenty-v1/CountWords.lean":
        "3466e894caf365eadbad480bd7f9bb75de7ae015ff84e567f1eeb0c363e99e60",
    "reproduction/collatz-twelve-of-twenty-v1/count-receipt.json":
        "47bffda67288f09fd520e4251b52fe62fa1307fe3c353fbe6c04b0ffcf95fe58",
}

EXPECTED_ROWS = 2652
MODULUS = 1 << 20
ACCELERATED_STEPS = 20
ORDINARY_STEPS = 32
ODD_INPUTS = 12
SLOPE = 3**ODD_INPUTS
EXPECTED_COUNT = 125970


class AuditError(RuntimeError):
    """Raised when a pinned source or a finite bridge check is inconsistent."""


def sha256_bytes(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def sha256_file(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def verify_pinned_inputs() -> dict[str, str]:
    found: dict[str, str] = {}
    for relative, expected in PINNED_INPUTS.items():
        path = REPO / Path(relative)
        if not path.is_file():
            raise AuditError(f"MISSING_PINNED_INPUT: {relative}")
        actual = sha256_file(path)
        if actual != expected:
            raise AuditError(f"PINNED_HASH_MISMATCH: {relative}: {actual}")
        found[relative] = actual
    return found


def accelerated_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else (3 * n + 1) // 2


def accelerated_trace(n: int, steps: int) -> tuple[int, int]:
    odd_inputs = 0
    for _ in range(steps):
        if n % 2:
            odd_inputs += 1
        n = accelerated_step(n)
    return odd_inputs, n


def ordinary_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else 3 * n + 1


def ordinary_trace(n: int, steps: int) -> int:
    for _ in range(steps):
        n = ordinary_step(n)
    return n


def check_pair(r: int, q: int) -> dict[str, object]:
    odd_count, accelerated_endpoint = accelerated_trace(r, ACCELERATED_STEPS)
    ordinary_endpoint = ordinary_trace(r, ORDINARY_STEPS)
    checks = {
        "residue_in_range": 0 <= r < MODULUS,
        "exactly_twelve_odd_inputs": odd_count == ODD_INPUTS,
        "accelerated_endpoint_matches_q": accelerated_endpoint == q,
        "ordinary_32_endpoint_matches_q": ordinary_endpoint == q,
        "strict_base_descent": q < r,
    }
    return {
        "r": r,
        "q": q,
        "odd_inputs": odd_count,
        "accelerated_endpoint": accelerated_endpoint,
        "ordinary_32_endpoint": ordinary_endpoint,
        "checks": checks,
        "valid": all(checks.values()),
    }


def load_rows() -> list[dict[str, str]]:
    raw = (M20 / "PAIRS.tsv").read_bytes()
    if sha256_bytes(raw) != PINNED_INPUTS[
        "reproduction/collatz-affine-family-replay-v1/PAIRS.tsv"
    ]:
        raise AuditError("PINNED_HASH_MISMATCH: PAIRS.tsv")
    text = raw.decode("utf-8")
    reader = csv.DictReader(text.splitlines(), delimiter="\t")
    expected_header = [
        "pair", "composition_module", "source_line", "r", "q",
        "intercept_gap", "source_sha256",
    ]
    if reader.fieldnames != expected_header:
        raise AuditError("UNEXPECTED_PAIRS_HEADER")
    rows = list(reader)
    if len(rows) != EXPECTED_ROWS:
        raise AuditError(f"EXPECTED_2652_ROWS_GOT_{len(rows)}")
    return rows


def verify_source_provenance(rows: list[dict[str, str]]) -> dict[str, object]:
    source_hashes: dict[str, str] = {}
    modules = set()
    for row in rows:
        module = row["composition_module"]
        if Path(module).name != module or not module.endswith(".lean"):
            raise AuditError(f"UNSAFE_COMPOSITION_MODULE_NAME: {module}")
        source = COMPOSITION_SOURCES / module
        if not source.is_file():
            raise AuditError(f"MISSING_COMPOSITION_SOURCE: {module}")
        actual = sha256_file(source)
        if actual != row["source_sha256"]:
            raise AuditError(f"COMPOSITION_SOURCE_HASH_MISMATCH: {module}")
        source_hashes[module] = actual
        modules.add(module)

        line_number = int(row["source_line"])
        lines = source.read_text(encoding="utf-8").splitlines()
        if not 1 <= line_number <= len(lines):
            raise AuditError(f"SOURCE_LINE_OUT_OF_RANGE: {module}:{line_number}")
        line = lines[line_number - 1]
        r, q = int(row["r"]), int(row["q"])
        start_expr = rf"(?<!\d)1048576 \* k \+ {r}(?!\d)"
        endpoint_expr = rf"(?<!\d)531441 \* k \+ {q}(?!\d)"
        if not re.search(start_expr, line) or not re.search(endpoint_expr, line):
            raise AuditError(f"SOURCE_LINE_PAIR_MISMATCH: {module}:{line_number}")

    if len(modules) != 133:
        raise AuditError(f"EXPECTED_133_COMPOSITION_MODULES_GOT_{len(modules)}")
    return {
        "composition_modules": len(modules),
        "composition_source_files": len(source_hashes),
        "all_referenced_module_hashes_match": True,
        "all_referenced_source_lines_match": True,
    }


def verify_generated_table() -> dict[str, object]:
    generator_path = M20 / "generate_m20_table.py"
    spec = importlib.util.spec_from_file_location("m20_table_generator", generator_path)
    if spec is None or spec.loader is None:
        raise AuditError("CANNOT_LOAD_PINNED_TABLE_GENERATOR")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    regenerated = module.generate(M20 / "PAIRS.tsv").encode("utf-8")
    checked_in = (M20 / "M20Table.lean").read_bytes()
    matches = regenerated == checked_in
    if not matches:
        raise AuditError("REGENERATED_M20_LEAN_TABLE_DIFFERS")
    return {
        "generator_output_matches_checked_in_table": True,
        "rows": EXPECTED_ROWS,
    }


def verify_lean_receipt() -> dict[str, object]:
    path = TWELVE / "count-receipt.json"
    receipt = json.loads(path.read_text(encoding="utf-8"))
    expected_modules = {
        "WordBound": PINNED_INPUTS[
            "reproduction/collatz-twelve-of-twenty-v1/WordBound.lean"],
        "WordResidue": PINNED_INPUTS[
            "reproduction/collatz-twelve-of-twenty-v1/WordResidue.lean"],
        "CountWords": PINNED_INPUTS[
            "reproduction/collatz-twelve-of-twenty-v1/CountWords.lean"],
    }
    for name, expected_hash in expected_modules.items():
        record = receipt.get("module_results", {}).get(name, {})
        if record.get("sha256") != expected_hash or record.get("exit") != 0:
            raise AuditError(f"LEAN_RECEIPT_SOURCE_OR_EXIT_MISMATCH: {name}")
        axiom_text = "\n".join(record.get("axioms", []))
        if "sorryAx" in axiom_text or "Lean.trustCompiler" in axiom_text:
            raise AuditError(f"FORBIDDEN_AXIOM_IN_SAVED_RECEIPT: {name}")
    count_axioms = "\n".join(
        receipt["module_results"]["CountWords"].get("axioms", []))
    expected_target = (
        "'MathCase.Collatz.WordBound.counted_progressions_descend' "
        "depends on axioms: [propext, Classical.choice, Quot.sound]"
    )
    if expected_target not in count_axioms:
        raise AuditError("COUNTED_PROGRESSION_THEOREM_AUDIT_MISSING")
    return {
        "status": "existing saved Lean receipt verified by hash",
        "toolchain": receipt.get("toolchain"),
        "target": "MathCase.Collatz.WordBound.counted_progressions_descend",
        "axioms": ["propext", "Classical.choice", "Quot.sound"],
        "sorryAx": False,
        "new_lean_run_performed": False,
    }


def audit() -> dict[str, object]:
    started = time.monotonic()
    pinned_hashes = verify_pinned_inputs()
    pinned_hashes[
        "reproduction/collatz-m20-twelve-of-twenty-bridge-v1/verify_bridge.py"
    ] = sha256_file(Path(__file__).resolve())
    rows = load_rows()
    provenance = verify_source_provenance(rows)
    table_rebuild = verify_generated_table()
    lean_receipt = verify_lean_receipt()

    seen_pairs: set[tuple[int, int]] = set()
    residues: set[int] = set()
    failures = []
    odd_histogram: dict[str, int] = {}
    endpoint_matches = 0
    ordinary_matches = 0
    for expected_index, row in enumerate(rows, start=1):
        if int(row["pair"]) != expected_index:
            raise AuditError(f"NONCONSECUTIVE_PAIR_INDEX: {row['pair']}")
        r, q = int(row["r"]), int(row["q"])
        pair = (r, q)
        if pair in seen_pairs or r in residues:
            raise AuditError(f"DUPLICATE_PAIR_OR_RESIDUE: {pair}")
        seen_pairs.add(pair)
        residues.add(r)

        gap = int(row["intercept_gap"])
        if gap != r - q:
            raise AuditError(f"INTERCEPT_GAP_MISMATCH: {pair}")
        result = check_pair(r, q)
        odd_key = str(result["odd_inputs"])
        odd_histogram[odd_key] = odd_histogram.get(odd_key, 0) + 1
        endpoint_matches += bool(result["checks"]["accelerated_endpoint_matches_q"])
        ordinary_matches += bool(result["checks"]["ordinary_32_endpoint_matches_q"])
        if not result["valid"]:
            failures.append({"pair": pair, **result})

    if failures:
        raise AuditError(f"FINITE_BRIDGE_FAILURES: {json.dumps(failures[:3])}")
    if odd_histogram != {str(ODD_INPUTS): EXPECTED_ROWS}:
        raise AuditError(f"UNEXPECTED_ODD_COUNT_HISTOGRAM: {odd_histogram}")

    negative_control = check_pair(int(rows[0]["r"]), int(rows[0]["q"]) + 1)
    if negative_control["valid"] or negative_control["checks"]["accelerated_endpoint_matches_q"]:
        raise AuditError("PLANTED_WRONG_ENDPOINT_WAS_NOT_REJECTED")

    return {
        "schema": "mathcase-m20-twelve-of-twenty-finite-bridge-v1",
        "status": "PASS",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "method": (
            "Finite Python audit of every pinned M20 coefficient row, with separate "
            "accelerated and ordinary-step implementations; links the rows to the "
            "already saved Lean theorem by exact source and receipt hashes."
        ),
        "result": {
            "published_rows_checked": EXPECTED_ROWS,
            "rows_with_exactly_12_odd_inputs_in_20_accelerated_steps": EXPECTED_ROWS,
            "accelerated_base_endpoints_matching_q": endpoint_matches,
            "ordinary_32_base_endpoints_matching_q": ordinary_matches,
            "all_intercept_gaps_positive": True,
            "residue_count_in_saved_lean_theorem": EXPECTED_COUNT,
            "residue_space_size": MODULUS,
            "histogram_of_odd_counts": odd_histogram,
        },
        "source_hashes": pinned_hashes,
        "composition_provenance": provenance,
        "table_regeneration": table_rebuild,
        "existing_lean_receipt": lean_receipt,
        "negative_control": {
            "description": "The first row's q was increased by 1.",
            "rejected": True,
            "accelerated_endpoint_match": False,
        },
        "wall_seconds": round(time.monotonic() - started, 3),
        "limits": [
            "This is a finite arithmetic bridge over the 2,652 listed rows, not a new Lean run.",
            "The universal conclusion comes from combining this bridge with the separately hash-pinned Lean theorem.",
            "It does not rewrite or replace the historical M20 replay.",
            "It does not prove global Collatz convergence or establish novelty.",
        ],
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="optional JSON receipt path")
    args = parser.parse_args(argv)
    started = datetime.now(timezone.utc).isoformat()
    try:
        result = audit()
    except (AuditError, OSError, ValueError, KeyError) as exc:
        result = {
            "schema": "mathcase-m20-twelve-of-twenty-finite-bridge-v1",
            "status": "FAIL",
            "created_utc": started,
            "failure": {
                "type": type(exc).__name__,
                "message": str(exc) if isinstance(exc, AuditError) else "Input or parsing error; see local stderr.",
            },
            "new_lean_run_performed": False,
        }
        text = json.dumps(result, indent=2, ensure_ascii=False) + "\n"
        if args.output:
            args.output.parent.mkdir(parents=True, exist_ok=True)
            args.output.write_bytes(text.encode("utf-8"))
        print(text, end="", file=sys.stderr)
        return 1
    text = json.dumps(result, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_bytes(text.encode("utf-8"))
    print(text, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
