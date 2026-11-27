#!/usr/bin/env python3
"""Verify positive-anchor constraints for the pinned 208-value weak-Schur case."""
from __future__ import annotations

import argparse
import gzip
import hashlib
import itertools
import json
import re
import subprocess
import tempfile
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent
SEED_SHA256 = {
    "rowley": "dadba1c3277c9b360693b23f9309174c92128002785b2752d916b34db4c61e63",
    "vicenzi": "2393698ef49eba4b100b3e048e2ddc28c7db99d99cfa525ba3ba7450d0f35c0b",
}
SEED_URLS = {
    "rowley": "https://raw.githubusercontent.com/oeis/oeisdata/aa67dedbb4e7fbefd9837e649293f8bdb09e5e69/seq/A072/A072842.seq",
    "vicenzi": "https://raw.githubusercontent.com/rebeccavicenzi/Weak_Schur_Problem_FunSearch/f21786ee926d6535fe01767ad74392bb1c0dd985/experiments/ws5_207_sat/partition_207.json",
}
EXPECTED_OUTSIDER_COUNTS = {
    "rowley": [7, 0, 38, 0, 6],
    "vicenzi": [10, 1, 10, 6, 6],
}
EXPECTED_FORMULAS = {
    "all_66_anchors": {"unit_count": 66, "clauses": 55914, "sha256": "af8a9d1b0ae8facfcd2597812bc9af11304ed560006aa68ae3844ff088251baf"},
    "without_190": {"unit_count": 65, "clauses": 55913, "sha256": "3d9adf377ceed1bdb2b52faa8c1b991938f90b3c90a93f53dbd56c7665c3bee7"},
}
DRAT_GZIP = ROOT / "rowley-65-anchor.drat.gz"
EXPECTED_DRAT = {
    "gzip_sha256": "b7ec01a132ce8aea4fda8f09c621a951623804fdb27dc51c6d74f3d539bd59f6",
    "raw_sha256": "8c52034bd7e7d0bcbffde1cff1891a53408d44949fa2cf52198fec629cf5cf17",
    "raw_bytes": 2893201,
}


def load_seed(name: str) -> tuple[list[int], bytes]:
    raw = (ROOT / "inputs" / ("rowley.seq" if name == "rowley" else "vicenzi.json")).read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != SEED_SHA256[name]:
        raise ValueError(f"{name}: input digest mismatch: {digest}")
    if name == "rowley":
        part = raw.decode("utf-8").split("The following coloring demonstrates", 1)[1].split("(End)", 1)[0]
        labels = [int(char) for line in part.splitlines() if line.startswith("%C A072842 ") for char in re.findall(r"[1-5]", line[11:])]
        if len(labels) != 207:
            raise ValueError("Rowley source did not yield 207 labels")
        colors = [0, *labels]
    else:
        partition = json.loads(raw)["partition"]
        flattened = sorted(number for group in partition for number in group)
        if len(partition) != 5 or flattened != list(range(1, 208)):
            raise ValueError("Vicenzi source is not a five-class partition of 1..207")
        colors = [0] * 208
        for color, group in enumerate(partition, 1):
            for number in group:
                colors[number] = color
    return colors, raw


def sum_triples(limit: int):
    for total in range(3, limit + 1):
        for a in range(1, (total + 1) // 2):
            b = total - a
            if a < b:
                yield a, b, total


def validate_seed(colors: list[int]) -> None:
    if len(colors) != 208 or colors[0] != 0 or any(not 1 <= colors[n] <= 5 for n in range(1, 208)):
        raise ValueError("invalid seed shape or color label")
    for a, b, total in sum_triples(207):
        if colors[a] == colors[b] == colors[total]:
            raise ValueError(f"seed has monochromatic sum {a}+{b}={total}")


def blocker_for_outsider(members: list[int], outsider: int) -> dict | None:
    """Return an old same-color pair making outsider illegal, in either role."""
    member_set = set(members)
    for a in members:
        b = outsider - a
        if a < b and b in member_set:
            return {"relation": "a+b=outsider", "pair": [a, b]}
    for a in members:
        b = a + outsider
        if b in member_set:
            return {"relation": "outsider+a=b", "pair": [a, b]}
    return None


def class_audit(colors: list[int], color: int) -> dict:
    members = [n for n in range(1, 208) if colors[n] == color]
    outsider_blocks = {}
    joinable = []
    for number in range(1, 208):
        if number in members:
            continue
        blocker = blocker_for_outsider(members, number)
        if blocker is None:
            joinable.append(number)
        else:
            outsider_blocks[str(number)] = blocker
    pair_to_208 = next(([a, 208 - a] for a in members if a < 208 - a and 208 - a in set(members)), None)
    return {
        "member_count": len(members),
        "outsider_joinable_count": len(joinable),
        "outsider_joinable_values": joinable,
        "pair_sum_to_208": pair_to_208,
        "blocking_pair_count": len(outsider_blocks),
        "blocking_witnesses_sha256": hashlib.sha256(json.dumps(outsider_blocks, sort_keys=True, separators=(",", ":")).encode()).hexdigest(),
    }


def variable(number: int, color: int) -> int:
    return (number - 1) * 5 + color


def build_cnf(colors: list[int], anchor_positions: list[int]) -> tuple[bytes, int]:
    clauses: list[list[int]] = []
    for number in range(1, 209):
        choices = [variable(number, color) for color in range(1, 6)]
        clauses.append(choices)
        clauses.extend([[-left, -right] for left, right in itertools.combinations(choices, 2)])
    for a, b, total in sum_triples(208):
        for color in range(1, 6):
            clauses.append([-variable(a, color), -variable(b, color), -variable(total, color)])
    for number in anchor_positions:
        clauses.append([variable(number, colors[number])])
    lines = [f"p cnf 1040 {len(clauses)}\n"]
    lines.extend(" ".join(map(str, clause)) + " 0\n" for clause in clauses)
    return "".join(lines).encode("ascii"), len(clauses)


def run_checker(checker: Path, formula: bytes, drat: bytes, label: str, scratch_dir: Path | None) -> dict:
    if not checker.is_file():
        raise FileNotFoundError(f"DRAT-trim checker not found: {checker}")
    if scratch_dir is not None:
        scratch_dir.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="positive-anchor-", dir=scratch_dir) as temp_name:
        temp = Path(temp_name)
        cnf_path = temp / f"{label}.cnf"
        proof_path = temp / "proof.drat"
        cnf_path.write_bytes(formula)
        proof_path.write_bytes(drat)
        run = subprocess.run([str(checker), str(cnf_path), str(proof_path)], capture_output=True, check=False)
        output = (run.stdout + b"\n" + run.stderr).decode("utf-8", errors="replace").replace("\r", "\n")
        verified = run.returncode == 0 and re.search(r"(?m)^s VERIFIED\s*$", output) is not None
        if not verified:
            raise ValueError(f"DRAT-trim failed for {label}; exit={run.returncode}; output tail={output[-500:]}")
        resolutions = re.search(r"([0-9]+) resolution steps", output)
        return {"status": "VERIFIED", "checker_returncode": run.returncode, "resolution_steps": int(resolutions.group(1)) if resolutions else None}


def audit(checker: Path | None = None, scratch_dir: Path | None = None) -> dict:
    seeds = {name: load_seed(name)[0] for name in ("rowley", "vicenzi")}
    for colors in seeds.values():
        validate_seed(colors)
    audits = {name: {str(color): class_audit(colors, color) for color in range(1, 6)} for name, colors in seeds.items()}
    actual_counts = {name: [audits[name][str(color)]["outsider_joinable_count"] for color in range(1, 6)] for name in seeds}
    if actual_counts != EXPECTED_OUTSIDER_COUNTS:
        raise ValueError(f"outsider counts mismatch: {actual_counts}")
    rowley = seeds["rowley"]
    if audits["rowley"]["2"]["outsider_joinable_count"] != 0 or audits["rowley"]["4"]["outsider_joinable_count"] != 0:
        raise ValueError("Rowley classes 2 and 4 must be saturated")
    if audits["rowley"]["2"]["pair_sum_to_208"] is None or audits["rowley"]["4"]["pair_sum_to_208"] is None:
        raise ValueError("Rowley classes 2 and 4 must each block color 208")

    class_one = [n for n in range(1, 208) if rowley[n] == 1]
    class_three = [n for n in range(1, 208) if rowley[n] == 3]
    full_anchors = sorted(class_one + class_three)
    reduced_anchors = [n for n in full_anchors if n != 190]
    if len(class_one) != 42 or len(class_three) != 24 or len(full_anchors) != 66 or rowley[190] != 1 or len(reduced_anchors) != 65:
        raise ValueError("unexpected Rowley anchor membership")

    full_cnf, full_clause_count = build_cnf(rowley, full_anchors)
    reduced_cnf, reduced_clause_count = build_cnf(rowley, reduced_anchors)
    formulas = {
        "all_66_anchors": (full_cnf, full_clause_count),
        "without_190": (reduced_cnf, reduced_clause_count),
    }
    for label, (formula, clause_count) in formulas.items():
        expected = EXPECTED_FORMULAS[label]
        actual = {"unit_count": len(full_anchors) if label == "all_66_anchors" else len(reduced_anchors), "clauses": clause_count, "sha256": hashlib.sha256(formula).hexdigest()}
        if actual != expected:
            raise ValueError(f"{label} formula mismatch: {actual}")

    compressed = DRAT_GZIP.read_bytes()
    if hashlib.sha256(compressed).hexdigest() != EXPECTED_DRAT["gzip_sha256"]:
        raise ValueError("compressed proof digest mismatch")
    drat = gzip.decompress(compressed)
    if len(drat) != EXPECTED_DRAT["raw_bytes"] or hashlib.sha256(drat).hexdigest() != EXPECTED_DRAT["raw_sha256"]:
        raise ValueError("uncompressed proof digest mismatch")

    check_results = None
    if checker is not None:
        check_results = {label: run_checker(checker, formula, drat, label, scratch_dir) for label, (formula, _) in formulas.items()}
    return {
        "status": "PASS" if checker is not None else "AUDIT_ONLY_DRAT_UNCHECKED",
        "drat_checked": checker is not None,
        "seed_metadata": {name: {"url": SEED_URLS[name], "sha256": SEED_SHA256[name]} for name in seeds},
        "seed_checks": {name: "sum-free on 1..207" for name in seeds},
        "outsider_joinable_counts_by_color_1_to_5": actual_counts,
        "outsider_joinable_values_by_color_1_to_5": {
            name: {str(color): audits[name][str(color)]["outsider_joinable_values"] for color in range(1, 6)}
            for name in seeds
        },
        "drat_proof_metadata": {**EXPECTED_DRAT, "gzip_bytes": len(compressed)},
        "rowley_saturated_classes": {
            "2": audits["rowley"]["2"]["pair_sum_to_208"],
            "4": audits["rowley"]["4"]["pair_sum_to_208"],
        },
        "proof_provenance": {
            "generator": "Glucose4 via python-sat 1.9.dev25 with proof generation enabled",
            "solver_formula": "all 66 old Rowley members in classes 1 and 3 fixed; every other value including 208 may use any of the five colors",
            "solver_conflicts": 25029,
            "solver_elapsed_seconds": 0.312255,
            "drat_trimmer_revision": "2e3b2dc0ecf938addbd779d42877b6ed69d9a985",
            "drat_trimmer_source_sha256": "d834b649f437e091597f5347f259b9f681087f89ca0844d0cee250a1a1a0c2ee",
            "same_drat_checked_on_full_and_reduced_formulas": True,
            "reduced_formula_removes_only_unit_for_vertex_190": True,
        },
        "formula_metadata": EXPECTED_FORMULAS,
        "positive_anchor_result": {
            "seed": "rowley",
            "anchored_classes": [1, 3],
            "class_sizes": {"1": len(class_one), "3": len(class_three)},
            "fixed_anchor_count": len(reduced_anchors),
            "unanchored_exception": 190,
            "anchor_positions": reduced_anchors,
            "solver_formula_hashes": {name: EXPECTED_FORMULAS[name]["sha256"] for name in EXPECTED_FORMULAS},
            "proof_sha256": EXPECTED_DRAT["raw_sha256"],
            "drat_checked": check_results is not None,
            "drat_check_results": check_results,
        },
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--checker", type=Path, help="optional DRAT-trim executable; verifies the bundled proof against both CNFs")
    parser.add_argument("--scratch-dir", type=Path, help="directory for temporary CNF and DRAT files")
    parser.add_argument("--receipt", type=Path, help="optional path for the deterministic JSON audit output")
    args = parser.parse_args()
    output = json.dumps(audit(args.checker, args.scratch_dir), indent=2, sort_keys=True) + "\n"
    if args.receipt is not None:
        args.receipt.parent.mkdir(parents=True, exist_ok=True)
        args.receipt.write_text(output, encoding="utf-8")
    print(output, end="")


if __name__ == "__main__":
    main()
