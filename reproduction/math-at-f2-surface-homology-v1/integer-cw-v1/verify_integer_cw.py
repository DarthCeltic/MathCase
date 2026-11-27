#!/usr/bin/env python3
"""Check integer homology for four stated one-vertex surface CW models."""
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


def exponent_vector(generators: str, word: str) -> list[int]:
    """Abelianize an attaching word; capitals mean reverse edge traversal."""
    if len(set(generators)) != len(generators) or any(not ("a" <= x <= "z") for x in generators):
        raise ValueError("GENERATORS_MUST_BE_UNIQUE_LOWERCASE_ASCII")
    positions = {letter: i for i, letter in enumerate(generators)}
    vector = [0] * len(generators)
    for symbol in word:
        letter = symbol.lower()
        if letter not in positions or symbol not in (letter, letter.upper()):
            raise ValueError(f"INVALID_ATTACHING_WORD_SYMBOL:{symbol}")
        vector[positions[letter]] += 1 if symbol == letter else -1
    return vector


def derive_homology(generators: str, word: str) -> dict[str, Any]:
    """Compute H0, H1 and H2 for the specified one-vertex, one-face model.

    The boundary d2: Z -> Z^g is one column. Its only nonzero Smith
    invariant is the gcd of that column's entries.
    """
    column = exponent_vector(generators, word)
    nonzero = any(column)
    gcd_invariant = math.gcd(*(abs(value) for value in column)) if nonzero else 0
    rank = int(nonzero)
    h1_torsion = [gcd_invariant] if gcd_invariant > 1 else []
    h1_free_rank = len(generators) - rank
    h2_free_rank = 1 - rank
    d1_row = [0] * len(generators)
    d1_d2 = sum(coefficient * value for coefficient, value in zip(d1_row, column))
    return {
        "generators": generators,
        "attaching_word": word,
        "d2_column": column,
        "d2_rank": rank,
        "d1_row": d1_row,
        "d1_d2": d1_d2,
        "gcd_invariant": gcd_invariant,
        "homology": {
            "H0": "Z",
            "H1_free_rank": h1_free_rank,
            "H1_torsion_orders": h1_torsion,
            "H2_free_rank": h2_free_rank,
        },
        "euler_characteristic_from_cells": 2 - len(generators),
        "euler_characteristic_from_free_ranks": 1 - h1_free_rank + h2_free_rank,
    }


def verify(models: dict[str, Any]) -> tuple[dict[str, Any], dict[str, bool], dict[str, bool]]:
    if models.get("schema_version") != 1 or models.get("coefficient_ring") != "Z":
        raise ValueError("UNSUPPORTED_MODEL_SCHEMA")
    results: dict[str, Any] = {}
    checks: dict[str, bool] = {}
    for name, case in models["cases"].items():
        result = derive_homology(case["generators"], case["attaching_word"])
        results[name] = result
        checks[f"{name}_homology_matches_expected"] = result["homology"] == case["expected"]
        checks[f"{name}_Euler_characteristics_agree"] = (
            result["euler_characteristic_from_cells"]
            == result["euler_characteristic_from_free_ranks"]
            == case["euler_characteristic"]
        )
        checks[f"{name}_one_vertex_boundary_d1_d2_is_zero"] = result["d1_d2"] == 0

    wrong_klein = derive_homology("ab", "abAB")
    wrong_rp2 = derive_homology("a", "aa")
    controls = {
        "torus_commutator_rejected_as_klein_model": (
            wrong_klein["homology"] != models["cases"]["klein_bottle"]["expected"]
        ),
        "projective_plane_Z_over_3_claim_rejected": (
            wrong_rp2["homology"]["H1_torsion_orders"] != [3]
        ),
        "unknown_edge_symbol_rejected": _rejects_invalid_symbol(),
    }
    return results, checks, controls


def _rejects_invalid_symbol() -> bool:
    try:
        exponent_vector("a", "ab")
    except ValueError as exc:
        return str(exc).startswith("INVALID_ATTACHING_WORD_SYMBOL:")
    return False


def main() -> int:
    parser = argparse.ArgumentParser(description="Check the four stated integer cellular-homology examples.")
    parser.add_argument("--models", type=Path, default=MODELS_PATH)
    parser.add_argument("--receipt", type=Path, help="write this run's JSON receipt to the given path")
    args = parser.parse_args()
    started = time.perf_counter()
    raw_models = args.models.read_bytes()
    models = json.loads(raw_models.decode("utf-8-sig"))
    results, checks, controls = verify(models)
    passed = all(checks.values()) and all(controls.values())
    receipt = {
        "schema": "mathcase-integer-surface-cw-homology-check-v1",
        "status": "PASS" if passed else "FAIL",
        "checks": checks,
        "controls": controls,
        "results": results,
        "method": "Count signed edge occurrences in each attaching word. For a single boundary column, its gcd is the nonzero Smith invariant; the quotient gives H1 and the kernel gives H2.",
        "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "models_sha256": hashlib.sha256(raw_models).hexdigest(),
        "python_version": platform.python_version(),
        "elapsed_seconds": time.perf_counter() - started,
        "provider_spend_usd": 0,
        "scope": "Exact arithmetic for four explicitly stated one-vertex, one-face CW models. The calculation assumes the listed models describe the named standard surfaces; it does not construct those spaces, prove the general cellular-homology theorem, or provide Lean verification.",
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