#!/usr/bin/env python3
"""Cross-check the pinned M20 families against the 23/14 parity filter."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import platform
from pathlib import Path


REPO = Path(__file__).resolve().parents[2]
AFFINE = REPO / "reproduction" / "collatz-affine-family-replay-v1"
PARITY = REPO / "reproduction" / "collatz-parity-envelopes-2026-11-v1"
SOURCE_PINS = {
    "reproduction/collatz-affine-family-replay-v1/CollatzAffineTrace.lean": "8a53e1cee2436efc347c6ebb07da0203d9c613670ad52bafdd0d0d19258d408c",
    "reproduction/collatz-affine-family-replay-v1/SymbolicFamilies.lean": "ea4a87af1afec86a1ed74d2ca6caa1182e40250d2b5ebffee7644585828572ff",
    "reproduction/collatz-affine-family-replay-v1/M20Table.lean": "bd811cfc8e355280c24fc325e7f2ceffdaa3fe187cdd8d09f0d186b14fa18f5e",
    "reproduction/collatz-affine-family-replay-v1/PAIRS.tsv": "30f06904507a35d180fab9d0d9195759047d13edfd857c04e2ef483eaf75194a",
    "reproduction/collatz-parity-envelopes-2026-11-v1/WordBound.lean": "2208a91a348c41b110c799124b450957a5a7a168e33c49dbab03ec0736c3d48d",
    "reproduction/collatz-parity-envelopes-2026-11-v1/WordResidue.lean": "812b00cdf2375de9a87d8c87fbd7cebb61924542d251775828dcc845bd0fdc1c",
    "reproduction/collatz-parity-envelopes-2026-11-v1/CountWords.lean": "3466e894caf365eadbad480bd7f9bb75de7ae015ff84e567f1eeb0c363e99e60",
    "reproduction/collatz-parity-envelopes-2026-11-v1/AtMostFourteen23.lean": "cade28fcb7ae5743668bf93688265d7572acaf89bc979701a0187aaa6e1efdc9",
    "reproduction/collatz-parity-envelopes-2026-11-v1/replay.py": "8c33228aa3f3a103780972e6aff4e716ef3ec79c11268be1eb9b83bdb1df68b1",
}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def accelerated_iteration(start: int, steps: int) -> tuple[int, int]:
    """Return (odd-input count, endpoint) using integer floor iteration."""
    n = start
    odd_count = 0
    for _ in range(steps):
        if n % 2:
            odd_count += 1
            n = (3 * n + 1) // 2
        else:
            n //= 2
    return odd_count, n


def affine_numerator_iteration(start: int, steps: int) -> tuple[int, int]:
    """Independently track the exact numerator over denominator 2**steps."""
    numerator = start
    denominator = 1
    odd_count = 0
    for _ in range(steps):
        assert numerator % denominator == 0
        if (numerator // denominator) % 2:
            odd_count += 1
            numerator = 3 * numerator + denominator
        denominator *= 2
    assert numerator % denominator == 0
    return odd_count, numerator // denominator


def ordinary_iteration(start: int, steps: int) -> int:
    n = start
    for _ in range(steps):
        n = n // 2 if n % 2 == 0 else 3 * n + 1
    return n


def analyze() -> dict[str, object]:
    checked_sources: dict[str, str] = {}
    for relative, expected in SOURCE_PINS.items():
        actual = sha256(REPO / relative)
        if actual != expected:
            raise SystemExit(f"SOURCE_HASH_MISMATCH {relative}: {actual} != {expected}")
        checked_sources[relative] = actual

    with (AFFINE / "PAIRS.tsv").open(encoding="utf-8", newline="") as stream:
        rows = list(csv.DictReader(stream, delimiter="\t"))
    if len(rows) != 2652:
        raise SystemExit(f"PAIR_ROW_COUNT_MISMATCH: {len(rows)} != 2652")

    odd_count_distribution: dict[int, int] = {}
    qualifying_lifts_per_family: list[int] = []
    signatures_20: set[tuple[int, int]] = set()
    samples: list[dict[str, object]] = []
    residues: set[int] = set()

    for row in rows:
        residue = int(row["r"])
        endpoint = int(row["q"])
        if residue in residues:
            raise SystemExit(f"DUPLICATE_RESIDUE: {residue}")
        residues.add(residue)

        base_signature = accelerated_iteration(residue, 20)
        affine_signature = affine_numerator_iteration(residue, 20)
        if base_signature != affine_signature or base_signature != (12, endpoint):
            raise SystemExit(f"M20_BASE_MISMATCH: r={residue}, q={endpoint}")
        signatures_20.add(base_signature)

        family_counts: dict[int, int] = {}
        qualifying_parameters: list[int] = []
        for j in range(8):
            lift = residue + (1 << 20) * j
            direct = accelerated_iteration(lift, 23)
            affine = affine_numerator_iteration(lift, 23)
            if direct != affine:
                raise SystemExit(f"LIFT_METHOD_MISMATCH: r={residue}, j={j}")
            odd_count, _ = direct
            family_counts[odd_count] = family_counts.get(odd_count, 0) + 1
            odd_count_distribution[odd_count] = odd_count_distribution.get(odd_count, 0) + 1
            if odd_count <= 14:
                qualifying_parameters.append(j)
        if len(qualifying_parameters) != 7:
            raise SystemExit(f"UNEXPECTED_23_14_COVERAGE: r={residue}")
        qualifying_lifts_per_family.append(len(qualifying_parameters))
        if len(samples) < 3:
            samples.append({
                "r": residue,
                "q": endpoint,
                "odd_count_distribution": dict(sorted(family_counts.items())),
                "qualifying_k_mod_8": qualifying_parameters,
            })

        if ordinary_iteration(residue, 32) != endpoint:
            raise SystemExit(f"ORDINARY_32_ENDPOINT_MISMATCH: r={residue}")

    first = rows[0]
    wrong_endpoint = int(first["q"]) + 1
    if (accelerated_iteration(int(first["r"]), 20)[1] == wrong_endpoint
            or affine_numerator_iteration(int(first["r"]), 20)[1] == wrong_endpoint):
        raise SystemExit("NEGATIVE_CONTROL_NOT_REJECTED")

    refined_total = len(rows) * 8
    covered = sum(qualifying_lifts_per_family)
    return {
        "source_reference_commit": "3631fca127943dcbc6899a3a065e704eaade5de5",
        "python_version": platform.python_version(),
        "pair_rows": len(rows),
        "pairs_sha256": checked_sources["reproduction/collatz-affine-family-replay-v1/PAIRS.tsv"],
        "checks": {
            "m20_base_endpoint_and_odd_count": "PASS for all 2,652 rows",
            "refined_classes_checked_by_both_methods": len(rows) * 8,
            "ordinary_32_step_base_endpoint": "PASS for all 2,652 rows",
            "wrong_endpoint_negative_control": "REJECTED",
        },
        "refinement": {
            "subfamilies_per_m20_family": 8,
            "total_subfamilies": refined_total,
            "odd_count_distribution": dict(sorted(odd_count_distribution.items())),
            "covered_by_23_14_filter": covered,
            "covered_fraction": f"{covered}/{refined_total} = 87.5%",
            "qualifying_lifts_per_family": {"7": len(qualifying_lifts_per_family)},
            "outside_filter_h15_lifts": odd_count_distribution[15],
        },
        "sample": samples,
        "source_sha256": checked_sources,
        "interpretation": (
            "Finite cross-check only. The 23/14 theorem covers seven refined residue classes "
            "from each listed M20 family; the remaining class has 15 odd inputs. No proof "
            "obligations were deduplicated, and no broader Collatz claim follows."
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="write JSON to this path; stdout if omitted")
    args = parser.parse_args()
    result = json.dumps(analyze(), indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_bytes(result.encode("utf-8"))
    else:
        print(result, end="")


if __name__ == "__main__":
    main()
