"""Check the canonical Exoo(42) graph6 witness. Python standard library only."""
import argparse
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent

def decode_graph6(data):
    """Read one small graph using McKay's upper-triangle column ordering."""
    line = data.removesuffix(b"\n").removesuffix(b"\r")
    if not line or not 63 <= line[0] <= 125:
        raise ValueError("expected one graph6 vertex count between 0 and 62")
    n = line[0] - 63
    count = n * (n - 1) // 2
    values = [byte - 63 for byte in line[1:]]
    if len(values) != (count + 5) // 6 or any(not 0 <= v < 64 for v in values):
        raise ValueError("invalid graph6 payload length or alphabet")
    padding = (-count) % 6
    if padding and values[-1] & ((1 << padding) - 1):
        raise ValueError("nonzero graph6 padding")
    rows = [0] * n
    for j in range(1, n):
        for i in range(j):
            bit = j * (j - 1) // 2 + i
            if values[bit // 6] & (1 << (5 - bit % 6)):
                rows[i] |= 1 << j
                rows[j] |= 1 << i
    return rows

def check_witness(data, lean_source=None):
    # This is the five-vertex example in the graph6 specification.
    if decode_graph6(b"DQc") != [20, 8, 1, 18, 9]:
        raise ValueError("graph6 published reference vector failed")
    rows = decode_graph6(data)
    if len(rows) != 42:
        raise ValueError("Exoo certificate needs 42 vertices")
    if lean_source is not None:
        source = Path(lean_source).read_text(encoding="utf-8")
        definition = source.split("def neighborMask ", 1)[1].split("| _ => 0", 1)[0]
        entries = re.findall(r"^\s*\|\s*(\d+)\s*=>\s*(\d+)\s*$", definition, re.MULTILINE)
        masks = {int(i): int(mask) for i, mask in entries}
        if len(entries) != 42 or masks != dict(enumerate(rows)):
            raise ValueError("graph6 adjacency disagrees with the Lean witness")
    total = 0
    for subset in itertools.combinations(range(42), 5):
        edges = sum((rows[i] >> j) & 1 for i, j in itertools.combinations(subset, 2))
        if edges in (0, 10):
            raise ValueError(f"monochromatic five-set {subset}, edges={edges}")
        total += 1
    return {"status":"PASS","format":"graph6","vertices":42,
            "edges":sum(row.bit_count() for row in rows)//2,"five_vertex_subsets":total,
            "red_k5":0,"blue_k5":0,"graph6_sha256":hashlib.sha256(data).hexdigest(),
            "matches_all_lean_rows":True if lean_source is not None else None}

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("graph", nargs="?", type=Path, default=HERE / "exoo42.g6")
    ap.add_argument("--lean-source", type=Path, help="compare all 42 masks in FoundationV4.lean")
    args = ap.parse_args()
    try:
        result = check_witness(args.graph.read_bytes(), args.lean_source)
    except (OSError, ValueError, IndexError) as e:
        ap.exit(1, f"FAIL: {e}\n")
    print(json.dumps(result, indent=2))

if __name__ == "__main__":
    main()
