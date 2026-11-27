#!/usr/bin/env python3
"""Independent arithmetic cross-check for the four one-column CW models."""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import platform
import time
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parent
MODELS_PATH = ROOT / "models.json"


def independent_result(generators: str, word: str) -> dict[str, Any]:
    if len(set(generators)) != len(generators) or any(not ("a" <= x <= "z") for x in generators):
        raise ValueError("INVALID_GENERATOR_LIST")
    if any(ch.lower() not in generators or ch not in (ch.lower(), ch.upper()) for ch in word):
        raise ValueError("INVALID_WORD")
    # Deliberately count occurrences per label rather than parsing sequentially.
    column = [word.count(edge) - word.count(edge.upper()) for edge in generators]
    divisor = math.gcd(*(abs(value) for value in column)) if any(column) else 0
    relation_rank = 1 if any(column) else 0
    return {
        "d2_column": column,
        "homology": {
            "H0": "Z",
            "H1_free_rank": len(generators) - relation_rank,
            "H1_torsion_orders": [divisor] if divisor > 1 else [],
            "H2_free_rank": 1 - relation_rank,
        },
        "euler_characteristic": 2 - len(generators),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Cross-check integer homology by independent letter counts.")
    parser.add_argument("--models", type=Path, default=MODELS_PATH)
    parser.add_argument("--receipt", type=Path, help="write this run's JSON receipt to the given path")
    args = parser.parse_args()
    started = time.perf_counter()
    raw_models = args.models.read_bytes()
    models = json.loads(raw_models.decode("utf-8-sig"))
    results: dict[str, Any] = {}
    checks: dict[str, bool] = {}
    for name, case in models["cases"].items():
        result = independent_result(case["generators"], case["attaching_word"])
        results[name] = result
        checks[f"{name}_matches_expected_homology"] = result["homology"] == case["expected"]
        checks[f"{name}_matches_expected_euler_characteristic"] = result["euler_characteristic"] == case["euler_characteristic"]
    wrong_klein = independent_result("ab", "abAB")
    rp2 = independent_result("a", "aa")
    try:
        independent_result("a", "ac")
        invalid_rejected = False
    except ValueError:
        invalid_rejected = True
    controls = {
        "torus_word_is_not_klein_homology": wrong_klein["homology"] != models["cases"]["klein_bottle"]["expected"],
        "Z_over_3_is_not_projective_plane_homology": rp2["homology"]["H1_torsion_orders"] != [3],
        "unknown_edge_symbol_rejected": invalid_rejected,
    }
    passed = all(checks.values()) and all(controls.values())
    receipt = {
        "schema": "mathcase-integer-surface-independent-arithmetic-check-v1",
        "status": "PASS" if passed else "FAIL",
        "checks": checks,
        "controls": controls,
        "results": results,
        "method": "Count each lowercase and uppercase edge label independently, compute the gcd of the resulting single relation vector, then derive the ranks and torsion factors.",
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "models_sha256": hashlib.sha256(raw_models).hexdigest(),
        "python_version": platform.python_version(),
        "elapsed_seconds": time.perf_counter() - started,
        "provider_spend_usd": 0,
        "scope": "Independent arithmetic implementation for the same four stated CW models; not a separate proof of cellular homology or a Lean check.",
    }
    if args.receipt:
        args.receipt.parent.mkdir(parents=True, exist_ok=True)
        with args.receipt.open("w", encoding="utf-8", newline="\n") as handle:
            handle.write(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    print(json.dumps({
        "status": receipt["status"],
        "checks_passed": sum(checks.values()),
        "checks_total": len(checks),
        "controls_passed": sum(controls.values()),
        "controls_total": len(controls),
        "source_sha256": receipt["source_sha256"],
        "models_sha256": receipt["models_sha256"],
        "receipt": str(args.receipt) if args.receipt else None,
    }, indent=2))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())