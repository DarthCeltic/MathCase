"""Verify the saved WS(5) block-crossover result without rerunning its search."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("weak_schur", ROOT / "verify_weak_schur.py")
ws = importlib.util.module_from_spec(spec)
spec.loader.exec_module(ws)
result = json.loads((ROOT / "result.json").read_text(encoding="utf-8"))

assert result["schema"] == "ws5-208-block-crossover-repair-v1"
assert result["status"] == "WALL_CAP_NO_WITNESS"
assert result["target"].endswith("distinct a<b with a+b<=208")
assert result["evaluated_starts"] == len(result["designs"]) == 39
assert result["actual_moves"] == 46766 and result["wall_cap_seconds"] == 30
assert result["runtime"]["paid_compute_usd"] == 0
assert result["runtime"]["external_calls"] == 0 and result["runtime"]["lean"] is False
for name, digest in result["source_sha256"].items():
    assert hashlib.sha256((ROOT / name).read_bytes()).hexdigest() == digest, name
assert hashlib.sha256((ROOT / "pilot.py").read_bytes()).hexdigest() == result["code_sha256"]

rowley = ws.source("rowley", ROOT)
vicenzi = ws.source("vicenzi", ROOT)
assert result["source_receipt_sha256"] == {name: ws.NAMES[name][1] for name in ("rowley", "vicenzi")}
assert ws.verify(rowley)["monochromatic"] == 0
assert ws.verify(vicenzi)["monochromatic"] == 0
assert result["baseline_controls"] == {
    "rowley": {"direct": 0, "pinned": 0},
    "vicenzi": {"direct": 0, "pinned": 0},
}

colors = [0, *result["best_coloring"]]
assert len(colors) == 209 and all(type(c) is int and 1 <= c <= 5 for c in colors[1:])
assert hashlib.sha256(("".join(map(str, colors[1:])) + "\n").encode()).hexdigest() == result["best_coloring_sha256"]

# Independent direct enumeration of all 10,712 distinct-addend constraints.
direct = []
for a, b in itertools.combinations(range(1, 209), 2):
    c = a + b
    if c <= 208 and colors[a] == colors[b] == colors[c]:
        direct.append([a, b, c, colors[a]])

# Independent bitset intersection check of the same constraints.
bitsets = [0] * 6
for n in range(1, 209):
    bitsets[colors[n]] |= 1 << n
bitset = []
for color in range(1, 6):
    members = bitsets[color]
    for a in range(1, 105):
        if not ((members >> a) & 1):
            continue
        bs = members & (members >> a)
        while bs:
            low = bs & -bs
            b = low.bit_length() - 1
            if b > a and a + b <= 208:
                bitset.append([a, b, a + b, color])
            bs -= low

assert direct == bitset == result["violated_triples"]
assert len(direct) == result["best_violations"] == 1
assert result["triple_count"] == 10712
assert result["pinned_verifier"]["monochromatic"] == 1

# The candidate is distinct from the Rowley-plus-208 assignment, although it
# retains that assignment's single forbidden triple.
rowley_appended = rowley + [4]
assert ws.verify(rowley_appended)["first_conflict"] == direct[0]
rowley_distance = sum(x != y for x, y in zip(colors[1:], rowley_appended[1:]))
vicenzi_appended = vicenzi + [4]
vicenzi_distance = sum(x != y for x, y in zip(colors[1:], vicenzi_appended[1:]))
assert rowley_distance == 7 and vicenzi_distance == 9
assert result["distance_from_known_appended_seeds"]["rowley_plus_4"] == 167
assert result["distance_from_known_appended_seeds"]["vicenzi_plus_each_color"]["4"] == vicenzi_distance

damaged = [0] + [1] * 208
damage_count = ws.verify(damaged)["monochromatic"]
assert damage_count == 10712
assert result["damaged_control_all_color_1"]["rejects"] is True

print(json.dumps({
    "status": result["status"],
    "starts": result["evaluated_starts"],
    "designed_starts": len(result["designs"]),
    "moves": result["actual_moves"],
    "candidate_conflicts_direct": len(direct),
    "candidate_conflicts_bitset": len(bitset),
    "sole_conflict": direct[0],
    "rowley_appended_hamming_distance": rowley_distance,
    "vicenzi_appended_hamming_distance": vicenzi_distance,
    "stored_rowley_distance_field": result["distance_from_known_appended_seeds"]["rowley_plus_4"],
    "stored_rowley_distance_field_matches": result["distance_from_known_appended_seeds"]["rowley_plus_4"] == rowley_distance,
    "all_color_1_control_conflicts": damage_count,
    "result": "PASS",
}, indent=2))
