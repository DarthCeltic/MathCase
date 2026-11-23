"""Build the prespecified outside-set candidate using scalar iteration as the oracle.

The split supplies residues only. For each residue the program derives q from its
32 ordinary iterates. It compares with the separately frozen prediction bundle
only after deriving all output pairs. Lean checks the resulting universal rows.
"""
import argparse
import csv
import hashlib
import io
import json
from pathlib import Path
from generate_m20_table import TABLE_SHA256, render

SPLIT_SHA256 = "95fe10b16ef819c0214cf923adc0be37f8c6db8e0ac16cdb5610eb2e4f1e4dc6"
PREDICTIONS_SHA256 = "498370ac59541531500c3a37ca35f359fbd7c8224e59662f2e5572b07d01bf69"

def pinned(path, expected):
    body = path.read_bytes()
    if hashlib.sha256(body).hexdigest() != expected:
        raise ValueError(f"Hash mismatch for {path.name}.")
    return body

def scalar_expected(r):
    n = r
    halvings = 0
    for _ in range(32):
        # After 20 halvings the coefficient of k is odd; another step
        # would require splitting the class to obtain uniform parity.
        if halvings == 20:
            return None
        if n % 2 == 0:
            halvings += 1
            n //= 2
        else:
            n = 3*n + 1
    if halvings == 20 and n < r:
        return n
    return None

def outside_rows(split_path, predictions_path, table_path):
    split = json.loads(pinned(split_path, SPLIT_SHA256))
    probes = split["outside_table_probes"]
    recorded = csv.DictReader(io.StringIO(pinned(table_path, TABLE_SHA256).decode()), delimiter="\t")
    old = {int(row["r"]) for row in recorded}
    if len(probes) != 4096 or len(set(probes)) != 4096 or not old.isdisjoint(probes):
        raise ValueError("Incorrect outside sample or overlap with original table.")
    pairs = []
    for r in probes:
        q = scalar_expected(r)
        if q is not None:
            pairs.append((r, q))
    if len(pairs) != 456:
        raise ValueError(f"Unexpected number of eligible rows: {len(pairs)}.")
    predictions = json.loads(pinned(predictions_path, PREDICTIONS_SHA256))
    expected = [(r, result[1]) for group,r,result in predictions if group == "outside"
                and result is not None and result[0] == 531441 and result[1] < r]
    if pairs != expected:
        raise ValueError("The scalar oracle disagrees with the recorded positive predictions.")
    return pairs

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("split", type=Path)
    parser.add_argument("predictions", type=Path)
    parser.add_argument("published_pairs", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    pairs = outside_rows(args.split, args.predictions, args.published_pairs)
    source = render(pairs, "Outside456").replace("originalRows", "outsideRows")
    source = source.replace("Quantified M20 conclusion", "Quantified conclusion for the prespecified outside sample")
    args.output.write_bytes(source.encode("utf-8"))

if __name__ == "__main__":
    main()
