"""Construct short obstruction certificates for translated quadratic colorings."""
import argparse
import json
from pathlib import Path

P = 617
N = 3704
SQUARES = {x*x % P for x in range(1, P)}

def forcing_progression(fixed, x, background):
    for step in range(1, (N - 1) // 6 + 1):
        for slot in range(7):
            start = x - slot * step
            if start < 0 or start + 6 * step >= N:
                continue
            if all(fixed[start + j*step] == background for j in range(7) if j != slot):
                return [start, step]
    return None

def certificate(shift):
    free_residues = {0, 1, (-shift) % P}
    fixed = [
        -1 if x % P in free_residues else int((x + shift) % P not in SQUARES)
        for x in range(N)
    ]
    for residue in (0, 1):
        shifted = (residue + shift) % P
        if shifted == 0:
            continue
        forced = int(shifted not in SQUARES)
        witnesses = []
        for x in range(residue, N, P):
            witness = forcing_progression(fixed, x, 1 - forced)
            if witness is None:
                break
            witnesses.append(witness)
        if len(witnesses) == 7:
            return {"shift": shift, "residue": residue, "forced_color": forced,
                    "forcing_progressions": witnesses}
    return None

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=Path("certificates.json"))
    parser.add_argument("--count", type=int, default=P)
    args = parser.parse_args()
    if not 1 <= args.count <= P:
        parser.error("count must lie between 1 and 617")
    certificates = []
    unclassified = []
    for shift in range(args.count):
        record = certificate(shift)
        if record is None:
            unclassified.append(shift)
        else:
            certificates.append(record)
    packet = {"format": 1, "coordinates": "zero-based", "prime": P, "length": N,
              "considered": args.count, "certificates": certificates,
              "unclassified": unclassified}
    data = (json.dumps(packet, separators=(",", ":")) + "\n").encode("ascii")
    args.out.write_bytes(data)
    print(f"{len(certificates)} certificates; {len(unclassified)} unclassified")

if __name__ == "__main__":
    main()
