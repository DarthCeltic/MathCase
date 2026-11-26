#!/usr/bin/env python3
"""Exact finite-field checks for local intersections of binomial plane curves."""
from __future__ import annotations

import json
from math import gcd
from pathlib import Path

ROOT = Path(__file__).resolve().parent

# (label, p, m, n, A, a, b, B) represents
# f = y^m - A*x^n, g = y^a - B*x^b over F_p.
CASES = [
    ("transverse-lines-F3", 3, 1, 1, 1, 1, 1, 2),
    ("tangent-lines-F3", 3, 1, 2, 1, 1, 2, 2),
    ("coincident-tangent-F3", 3, 1, 2, 1, 1, 2, 1),
    ("x-y2-vs-y3-x2-F2", 2, 2, 1, 1, 3, 2, 1),
    ("x-y2-vs-y3-x2-F5", 5, 2, 1, 1, 3, 2, 1),
    ("x-y2-vs-y4-x2-common-F5", 5, 2, 1, 1, 4, 2, 1),
    ("x-y2-vs-y5-x2-F5", 5, 2, 1, 1, 5, 2, 1),
    ("x-y2-vs-y6-x2-F5", 5, 2, 1, 1, 6, 2, 1),
    ("equal-weight-unequal-coeff-F3", 3, 2, 1, 1, 4, 2, 2),
    ("unequal-weights-F2", 2, 2, 3, 1, 3, 2, 1),
    ("common-component-F2", 2, 2, 1, 1, 4, 2, 1),
]


def resultant_prediction(p: int, m: int, n: int, A: int, a: int, b: int, B: int) -> tuple[str, int | None, dict]:
    d = gcd(m, a)
    left_weight, right_weight = n * a, m * b
    left_coefficient = pow(A, a // d, p)
    right_coefficient = pow(B, m // d, p)
    details = {
        "d_gcd_y_degrees": d,
        "left_resultant_weight": left_weight,
        "right_resultant_weight": right_weight,
        "left_resultant_coefficient_mod_p": left_coefficient,
        "right_resultant_coefficient_mod_p": right_coefficient,
    }
    if left_weight == right_weight and left_coefficient == right_coefficient:
        return "common component", None, details
    return "isolated", min(left_weight, right_weight), details


def monomials(cutoff: int) -> list[tuple[int, int]]:
    """Basis x^i y^j with total degree less than cutoff."""
    return [(i, j) for degree in range(cutoff) for i in range(degree, -1, -1) for j in (degree - i,)]


def rank_mod_p(columns: list[list[int]], p: int) -> int:
    """Column Gaussian elimination over the prime field, using normalized pivots."""
    pivots: dict[int, list[int]] = {}
    for source in columns:
        value = source[:]
        while True:
            pivot = next((index for index in range(len(value) - 1, -1, -1) if value[index] % p), None)
            if pivot is None:
                break
            if pivot not in pivots:
                inverse = pow(value[pivot] % p, -1, p)
                value = [(entry * inverse) % p for entry in value]
                pivots[pivot] = value
                break
            scale = value[pivot] % p
            basis = pivots[pivot]
            value = [(entry - scale * base) % p for entry, base in zip(value, basis)]
    return len(pivots)


def macaulay_quotient_dimension(p: int, m: int, n: int, A: int, a: int, b: int, B: int, cutoff: int) -> tuple[int, list[int]]:
    """dim F_p[x,y]/(f,g,(x,y)^cutoff), with exact Macaulay rank."""
    basis = monomials(cutoff)
    index = {monomial: position for position, monomial in enumerate(basis)}
    columns: list[list[int]] = []
    for i, j in basis:
        # Construct f times x^i*y^j, omitting terms killed by the cutoff.
        vector_f = [0] * len(basis)
        if (i, j + m) in index:
            vector_f[index[(i, j + m)]] = 1
        if (i + n, j) in index:
            pos = index[(i + n, j)]
            vector_f[pos] = (vector_f[pos] - A) % p
        columns.append(vector_f)

        vector_g = [0] * len(basis)
        if (i, j + a) in index:
            vector_g[index[(i, j + a)]] = 1
        if (i + b, j) in index:
            pos = index[(i + b, j)]
            vector_g[pos] = (vector_g[pos] - B) % p
        columns.append(vector_g)
    rank = rank_mod_p(columns, p)
    return len(basis) - rank, [len(basis), rank]


def analyze_case(case: tuple) -> dict:
    label, p, m, n, A, a, b, B = case
    status, length, formula = resultant_prediction(p, m, n, A, a, b, B)
    coefficients = (A % p, B % p)
    if p not in (2, 3, 5) or any(value == 0 for value in coefficients):
        raise AssertionError(f"{label}: coefficients must be nonzero in F_p")
    result = {
        "label": label,
        "field": f"F_{p}",
        "parameters": {"m": m, "n": n, "A": A % p, "a": a, "b": b, "B": B % p},
        "branches": [f"y^{m} - {A % p}*x^{n}", f"y^{a} - {B % p}*x^{b}"],
        "classification": status,
        "resultant_data": formula,
    }
    if status == "isolated":
        assert length is not None
        # For an m-primary plane-curve ideal of length L, Nakayama implies m^L=0;
        # the Macaulay quotient at cutoff L therefore already equals the local length.
        dim_at_length, (basis_size, rank_at_length) = macaulay_quotient_dimension(p, m, n, A, a, b, B, length)
        dim_next, _ = macaulay_quotient_dimension(p, m, n, A, a, b, B, length + 1)
        if dim_at_length != length or dim_next != length:
            raise AssertionError(f"{label}: resultant length {length}, Macaulay dimensions {dim_at_length}, {dim_next}")
        dims = [macaulay_quotient_dimension(p, m, n, A, a, b, B, cutoff)[0] for cutoff in range(1, length + 2)]
        increments = [dims[0]] + [dims[i] - dims[i - 1] for i in range(1, len(dims))]
        result.update({
            "local_intersection_multiplicity": length,
            "macaulay_cutoffs": list(range(1, length + 2)),
            "truncated_quotient_dimensions": dims,
            "hilbert_function_increments": increments,
            "dimension_at_resultant_length_cutoff": dim_at_length,
            "dimension_one_cutoff_later": dim_next,
            "macaulay_basis_size_at_resultant_cutoff": basis_size,
            "macaulay_relation_rank_at_resultant_cutoff": rank_at_length,
        })
    else:
        # The resultant vanishes identically, so the branches share a component.
        # Finite truncated dimensions are reported as samples only; no plateau claim is made.
        cutoffs = [4, 5, 6, 7, 8, 9]
        dims = [macaulay_quotient_dimension(p, m, n, A, a, b, B, cutoff)[0] for cutoff in cutoffs]
        result.update({
            "local_intersection_multiplicity": None,
            "macaulay_cutoffs": cutoffs,
            "truncated_quotient_dimensions": dims,
            "hilbert_function_increments": [dims[0]] + [dims[i] - dims[i - 1] for i in range(1, len(dims))],
            "dimension_sequence_is_finite_evidence_only": True,
        })
    return result


def main() -> None:
    results = [analyze_case(case) for case in CASES]
    receipt = {
        "schema_version": 1,
        "method": "binomial resultant formula compared with exact Macaulay ranks over F_p",
        "scope": "11 small explicit pairs over F_2, F_3, and F_5; classical computation, not new mathematics",
        "reference": "William Fulton, Algebraic Curves, Chapter 3, Section 3 (intersection numbers)",
        "common_component_boundary": "A zero resultant classifies a shared component; truncated-dimension growth is recorded only for the listed cutoffs and is not used to claim stabilization or non-stabilization by itself.",
        "cases": results,
    }
    (ROOT / "verification.json").write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(f"PASS: resultant predictions match Macaulay local quotient dimensions for {sum(r['classification']=='isolated' for r in results)} isolated cases; common-component cases remain separate.")
    for result in results:
        print(result["label"], result["field"], result["classification"], result["local_intersection_multiplicity"])


if __name__ == "__main__":
    main()
