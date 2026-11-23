"""Independently validate a certificate bundle and count its covered model assignments."""
import argparse
import hashlib
import json
from collections import Counter
from pathlib import Path

PRIME = 617
LENGTH = 3704
STEPS = 7

def require(pred, message):
    if not pred:
        raise ValueError(message)

def verify_record(record):
    shift = record["shift"]
    residue = record["residue"]
    forced = record["forced_color"]
    lines = record["forcing_progressions"]
    require(type(shift) is int and 0 <= shift < PRIME, "invalid translation")
    require(type(residue) is int and residue in (0, 1), "invalid progression residue")
    require(type(forced) is int and forced in (0, 1), "invalid color")
    require(len(lines) == STEPS, "missing forcing progressions")
    variable = {0, 1, -shift % PRIME}
    support = set()
    for j, line in enumerate(lines):
        first, stride = line
        require(type(first) is int and type(stride) is int and stride > 0, "invalid progression")
        end = first + (STEPS-1) * stride
        require(0 <= first <= end < LENGTH, "progression outside the interval")
        cells = {first + t*stride for t in range(STEPS)}
        target = residue + j * PRIME
        require(target in cells and target % PRIME in variable, "missing target")
        cells.remove(target)
        for point in cells:
            require(point % PRIME not in variable, "additional free point")
            # Euler's criterion is independent of the generator's square enumeration.
            char = pow((point+shift) % PRIME, (PRIME-1)//2, PRIME)
            require(char in (1, PRIME-1), "non-unit fixed point")
            color = int(char == PRIME-1)
            require(color == 1 - forced, "forcing background has wrong color")
        support.update(cells)
    # The seven targets form a single admissible monochromatic progression.
    require(residue + 6 * PRIME < LENGTH, "forced progression outside interval")
    free_count = sum(1 + (LENGTH - 1 - r) // PRIME for r in variable)
    return free_count, len(support)

def verify(packet):
    require(packet["format"] == 1 and packet["coordinates"] == "zero-based", "unsupported format")
    require(packet["prime"] == PRIME and packet["length"] == LENGTH, "different problem")
    require(packet["considered"] == PRIME and packet["unclassified"] == [], "incomplete search")
    records = packet["certificates"]
    seen = set()
    freedoms = Counter()
    supports = []
    for record in records:
        count, support = verify_record(record)
        shift = record["shift"]
        require(shift not in seen, "duplicate translation")
        seen.add(shift)
        freedoms[count] += 1
        supports.append(support)
    require(seen == set(range(PRIME)), "missing translation")
    return {"verified": True, "translations": len(seen), "length": LENGTH,
            "geometry": "x = 0 through 3703; on [1,3704] add one to every coordinate",
            "translations_by_independent_free_cell_count": dict(sorted(freedoms.items())),
            "sum_of_labeled_assignments": sum(n * 2**f for f,n in freedoms.items()),
            "verified_forcing_progressions": STEPS * len(seen),
            "verified_final_progressions": len(seen),
            "distinct_fixed_cells_in_each_contradiction": [min(supports), max(supports)],
            "scope": "Only the stated translated-quadratic family is excluded."}

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("certificate", type=Path, nargs="?", default=Path("certificates.json"))
    args = p.parse_args()
    raw = args.certificate.read_bytes()
    receipt = verify(json.loads(raw))
    receipt["certificate_sha256"] = hashlib.sha256(raw).hexdigest()
    print(json.dumps(receipt, indent=2))

if __name__ == "__main__":
    main()
