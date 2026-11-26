"""Check the odd-L ground-state formula by a separate row-mask transfer."""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
from math import comb
import json
from pathlib import Path


def admissible_rows(width: int) -> list[int]:
    """Generate every labelled row with exactly one aligned horizontal bond."""
    rows = []
    for defect in range(width):
        for first in range(2):
            bits = [first]
            for edge in range(width - 1):
                bits.append(bits[-1] ^ (edge != defect))
            if sum(bits[col] == bits[(col + 1) % width] for col in range(width)) != 1:
                raise AssertionError("constructed row does not have exactly one defect")
            rows.append(sum(bit << col for col, bit in enumerate(bits)))
    if len(set(rows)) != 2 * width:
        raise AssertionError("expected 2L distinct one-defect rows")
    return rows


def count_ground_rows(width: int) -> int:
    """Count ground configurations using row masks, without binomial counts."""
    rows = admissible_rows(width)
    start = rows[0]
    costs = {row: [(following, width - (row ^ following).bit_count())
                   for following in rows] for row in rows}
    states = Counter({(start, 0): 1})
    for step in range(width):
        next_states = Counter()
        for (row, aligned), multiplicity in states.items():
            for following, added in costs[row]:
                total = aligned + added
                if total <= width and (step < width - 1 or following == start):
                    next_states[(following, total)] += multiplicity
        states = next_states
    if any(row != start or aligned != width for row, aligned in states):
        raise AssertionError("row-mask transfer ended outside its ground-state target")
    return 2 * width * states[start, width]


def verify() -> dict:
    results = []
    for width in range(3, 26, 2):
        transfer_count = count_ground_rows(width)
        formula_count = 2 * width * (comb(2 * width, width) - width)
        if transfer_count != formula_count:
            raise AssertionError(f"L={width}: transfer {transfer_count} != formula {formula_count}")
        results.append({"L": width, "transfer_count": transfer_count,
                        "formula_count": formula_count, "matches": True})
    return {
        "schema": "mathcase-ising-odd-ground-formula-check-v1",
        "verified": True,
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "method": "direct row-mask dynamic count of one-defect rows and exactly L vertical alignments; binomial formula evaluated only for comparison",
        "sizes_tested": len(results),
        "results": results,
        "limit": "Odd L from 3 through 25; this is finite validation of the general argument in README.md.",
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    receipt = verify()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"verified": receipt["verified"], "sizes_tested": receipt["sizes_tested"],
                      "selected": [row for row in receipt["results"] if row["L"] in (3, 5, 7, 9, 25)]}, indent=2))


if __name__ == "__main__":
    main()
