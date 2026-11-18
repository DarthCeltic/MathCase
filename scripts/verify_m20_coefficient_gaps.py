#!/usr/bin/env python3
"""Check the public M20 coefficient-gap table against the bundled Lean statements."""
from __future__ import annotations
import csv
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE_ROOT = ROOT / "reproduction/m15-m20-r2/evidence/collatz/m15-m20-pinned-replay/m20-composition-v1/sources"
TABLE = ROOT / "docs/m20-coefficient-gaps.tsv"
PATTERN = re.compile(
    r"iterate\s*\(\s*1048576\s*\*\s*k\s*\+\s*(\d+)\s*\)"
    r"\s*32\s*=\s*531441\s*\*\s*k\s*\+\s*(\d+)"
    r"\s*∧\s*531441\s*\*\s*k\s*\+\s*\d+"
    r"\s*<\s*1048576\s*\*\s*k\s*\+\s*(\d+)",
    re.S,
)

def main() -> int:
    expected = []
    for path in sorted(SOURCE_ROOT.glob("M20CompositionShard*.lean")):
        text = path.read_text(encoding="utf-8")
        for r, q, start in PATTERN.findall(text):
            if r != start:
                print(f"FAIL: input residue mismatch in {path.name}", file=sys.stderr)
                return 1
            expected.append((path.name, int(r), int(q), int(r) - int(q)))
    expected.sort(key=lambda row: (row[1], row[0]))
    if len(expected) != 2652 or len({row[1] for row in expected}) != 2652:
        print(f"FAIL: expected 2,652 unique statements, found {len(expected)}", file=sys.stderr)
        return 1
    with TABLE.open(encoding="utf-8", newline="") as handle:
        actual = [
            (row["composition_module"], int(row["starting_residue_r"]),
             int(row["ending_offset_q"]), int(row["intercept_gap_r_minus_q"]))
            for row in csv.DictReader(handle, delimiter="\t")
        ]
    if actual != expected:
        print("FAIL: coefficient table differs from the Lean source statements", file=sys.stderr)
        return 1
    if min(row[3] for row in actual) != 117:
        print("FAIL: minimum intercept gap is not 117", file=sys.stderr)
        return 1
    if 1048576 - 531441 != 517135:
        print("FAIL: leading coefficient audit changed", file=sys.stderr)
        return 1
    print("PASS: 2,652 unique Lean families; 2^20 - 3^12 = 517,135; minimum r-q = 117")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
