#!/usr/bin/env python3
"""Build the curated representative atlases and merge the affine audit."""
from __future__ import annotations

import argparse
import csv
import io
import json
import subprocess
from pathlib import Path

PACKAGE = Path(__file__).resolve().parent
CONFIGS = ((12, 12), (8, 16), (16, 8))


def run(executable: Path, *args: str) -> bytes:
    completed = subprocess.run([str(executable), *args], check=True, capture_output=True)
    return completed.stdout


def merge_affine_audit(atlas: dict, csv_bytes: bytes) -> None:
    rows = list(csv.DictReader(io.StringIO(csv_bytes.decode("utf-8"))))
    expected_rows = (atlas["window_lengths"]["first"] + 1) * (
        atlas["window_lengths"]["second"] + 1
    )
    if len(rows) != expected_rows:
        raise AssertionError(f"affine audit has {len(rows)} rows, expected {expected_rows}")
    by_cap = {(int(row["cap1"]), int(row["cap2"])): row for row in rows}
    if len(by_cap) != expected_rows:
        raise AssertionError("affine audit contains duplicate cap rows")

    for gate in atlas["upper_cap_gates"]:
        key = (gate["cap_first"], gate["cap_second"])
        row = by_cap[key]
        admitted = int(row["admitted"])
        all_drop = int(row["all_drop"])
        mixed = int(row["mixed"])
        none_drop = int(row["none_drop"])
        exceptions = int(row["exceptions_in_mixed"])
        least_undropped = int(row["least_undropped"]) if row["least_undropped"] else None

        if admitted != gate["admitted_class_count"]:
            raise AssertionError(f"admitted class count disagrees for cap pair {key}")
        if all_drop + mixed + none_drop != admitted:
            raise AssertionError(f"member classification does not partition cap pair {key}")
        if mixed + none_drop != gate["least_representative_no_drop_class_count"]:
            raise AssertionError(f"representative exceptions disagree for cap pair {key}")
        if all_drop != gate["guaranteed_drop_class_count"]:
            raise AssertionError(f"guaranteed class count disagrees for cap pair {key}")
        if least_undropped != gate["unresolved_least_representative"]:
            raise AssertionError(f"least unresolved start disagrees for cap pair {key}")
        full = all_drop == admitted
        if full != gate["fully_covered"]:
            raise AssertionError(f"full-coverage flag disagrees for cap pair {key}")

        gate["member_classification"] = {
            "all_member_drop_class_count": all_drop,
            "mixed_member_class_count": mixed,
            "no_member_drop_class_count": none_drop,
            "finite_non_dropping_member_count_in_mixed_classes": exceptions,
            "least_undropped_representative": least_undropped,
        }
        if full:
            affine_shortcut = int(row["max_shortcut"])
            affine_shortcut_witness = int(row["shortcut_witness"])
            affine_ordinary = int(row["max_ordinary"])
            affine_ordinary_witness = int(row["ordinary_witness"])
            for field, affine_value in (
                ("sharp_max_first_drop_accelerated_steps", affine_shortcut),
                ("least_witness_accelerated", affine_shortcut_witness),
                ("sharp_max_first_drop_ordinary_steps", affine_ordinary),
                ("least_witness_ordinary", affine_ordinary_witness),
            ):
                if gate[field] != affine_value:
                    raise AssertionError(f"direct and affine scans disagree for {key}: {field}")
        elif any(row[field] for field in ("max_shortcut", "shortcut_witness", "max_ordinary", "ordinary_witness")):
            raise AssertionError(f"partial gate unexpectedly has uniform maximum data: {key}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--atlas-executable", required=True, type=Path)
    parser.add_argument("--affine-executable", required=True, type=Path)
    parser.add_argument("--output-dir", type=Path, default=PACKAGE)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    for first, second in CONFIGS:
        slug = f"{first}-{second}"
        atlas = json.loads(run(args.atlas_executable, str(first), str(second)))
        affine_csv = run(args.affine_executable, str(first), str(second))
        (args.output_dir / f"affine-audit-{slug}.csv").write_bytes(affine_csv)
        merge_affine_audit(atlas, affine_csv)
        atlas["member_classification_source"] = {
            "file": "affine_audit.cpp",
            "method": "symbolic parity-prefix affine thresholds, independent of representative orbit simulation",
            "csv": f"affine-audit-{slug}.csv",
        }
        atlas["interpretation"]["least_representative_no_drop_class_count"] = (
            "Classes whose least representative is an explicit counterexample. The independent affine audit partitions these into mixed classes, where sufficiently large members drop by the horizon, and no-member-drop classes."
        )
        atlas["interpretation"]["member_classification"] = (
            "all_member_drop_class_count counts classes where every n>=3 in the residue class drops by the horizon; mixed_member_class_count counts classes with a finite set of smaller non-dropping starts and a later drop; no_member_drop_class_count counts classes with no drop by the horizon for any member."
        )
        json_path = args.output_dir / f"atlas-{slug}.json"
        json_path.write_text(json.dumps(atlas, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
        print(f"Wrote {json_path} ({atlas['class_modulus']} classes)")


if __name__ == "__main__":
    main()
