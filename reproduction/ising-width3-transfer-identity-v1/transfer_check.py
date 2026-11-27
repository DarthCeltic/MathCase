"""Exact transfer-matrix and small exhaustive checks for the periodic 3 x L Ising torus."""
from __future__ import annotations
import hashlib
import itertools
import json
import platform
import time
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
REFERENCE = HERE / "density-3x10-public.json"
WIDTH = 3
STATES = range(1 << WIDTH)


def vertical_broken(state: int) -> int:
    return sum(((state >> j) & 1) != ((state >> ((j + 1) % WIDTH)) & 1)
               for j in range(WIDTH))


def horizontal_broken(a: int, b: int) -> int:
    return (a ^ b).bit_count()


def transition_matrix(damage: bool = False) -> list[list[dict[int, int]]]:
    matrix = [[{} for _ in STATES] for _ in STATES]
    for left in STATES:
        for right in STATES:
            exponent = vertical_broken(right) + horizontal_broken(left, right)
            if damage and left == 0 and right == 0:
                exponent += 1
            matrix[left][right] = {exponent: 1}
    return matrix


def poly_add(dst: dict[int, int], src: dict[int, int]) -> None:
    for degree, coefficient in src.items():
        dst[degree] = dst.get(degree, 0) + coefficient
        if dst[degree] == 0:
            del dst[degree]


def poly_multiply(a: dict[int, int], b: dict[int, int]) -> dict[int, int]:
    out: dict[int, int] = {}
    for da, ca in a.items():
        for db, cb in b.items():
            d = da + db
            out[d] = out.get(d, 0) + ca * cb
    return {d: c for d, c in out.items() if c}


def matrix_multiply(a: list[list[dict[int, int]]],
                    b: list[list[dict[int, int]]]) -> list[list[dict[int, int]]]:
    n = len(a)
    out = [[{} for _ in range(n)] for _ in range(n)]
    for i in range(n):
        for k in range(n):
            if not a[i][k]:
                continue
            for j in range(n):
                if b[k][j]:
                    poly_add(out[i][j], poly_multiply(a[i][k], b[k][j]))
    return out


def trace_power(length: int, damage: bool = False) -> dict[int, int]:
    n = 1 << WIDTH
    result = [[({0: 1} if i == j else {}) for j in range(n)] for i in range(n)]
    base = transition_matrix(damage)
    exponent = length
    while exponent:
        if exponent & 1:
            result = matrix_multiply(result, base)
        exponent >>= 1
        if exponent:
            base = matrix_multiply(base, base)
    trace: dict[int, int] = {}
    for i in range(n):
        poly_add(trace, result[i][i])
    return trace


def direct_enumeration(length: int) -> dict[int, int]:
    """Enumerate each labeled spin assignment directly, independently of matrices."""
    counts: dict[int, int] = {}
    for columns in itertools.product(STATES, repeat=length):
        broken = sum(vertical_broken(column) for column in columns)
        broken += sum(horizontal_broken(columns[i], columns[(i + 1) % length])
                      for i in range(length))
        counts[broken] = counts.get(broken, 0) + 1
    return counts


def normalize(poly: dict[int, int], max_degree: int) -> list[int]:
    return [poly.get(i, 0) for i in range(max_degree + 1)]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--output",
        type=Path,
        default=HERE / "evidence" / "runs" / "local-result.json",
        help="write a fresh receipt here instead of changing the committed result.json",
    )
    args = parser.parse_args()
    started = time.perf_counter()
    checks = {}
    small = {}
    for length in range(3, 7):
        trace = trace_power(length)
        direct = direct_enumeration(length)
        checks[f"full_enum_matches_trace_L{length}"] = trace == direct
        checks[f"total_states_L{length}"] = sum(trace.values()) == (1 << (WIDTH * length))
        checks[f"broken_bonds_even_L{length}"] = all(b % 2 == 0 for b, c in trace.items() if c)
        small[str(length)] = {
            "states": 1 << (WIDTH * length),
            "nonzero_bins": sum(c != 0 for c in trace.values()),
            "max_broken_bonds": max(trace),
            "total_matches_direct_enumeration": trace == direct,
        }

    reference = json.loads(REFERENCE.read_text(encoding="utf-8"))
    if reference.get("schema") != "mathcase-ising-3x10-density-of-states-v1" or reference.get("verified") is not True:
        raise ValueError("PUBLIC_REFERENCE_NOT_VERIFIED")
    trace10 = trace_power(10)
    expected10 = {i: c for i, c in enumerate(reference["counts_by_broken_bonds"]) if c}
    independent10 = {i: c for i, c in enumerate(reference["gray_counts_by_broken_bonds"]) if c}
    checks["trace_L10_matches_public_row_transfer"] = trace10 == expected10
    checks["trace_L10_matches_public_gray_enumeration"] = trace10 == independent10
    checks["trace_L10_counts_all_2_pow_30"] = sum(trace10.values()) == 1 << 30
    checks["trace_L10_ground_bin_is_6_at_50"] = trace10.get(50) == 6

    damaged = trace_power(3, damage=True)
    correct3 = direct_enumeration(3)
    checks["damaged_transition_control_rejected"] = damaged != correct3
    result = {
        "schema": "mathcase-ising-3xL-polynomial-transfer-check-v1",
        "status": "PASS" if all(checks.values()) else "FAIL",
        "scope": "periodic width-3 square-lattice tori; arbitrary-L identity proved by the transition-weight bookkeeping in README, finite checks at L=3..6, receipt comparison at L=10",
        "transfer_definition": "T[s,t](z)=z^(verticalBroken(t)+horizontalBroken(s,t)); P_L(z)=trace(T(z)^L)",
        "checks": checks,
        "small_length_checks": small,
        "length_10": {
            "states": 1 << 30,
            "polynomial_coefficients_by_B_0_to_60": normalize(trace10, 60),
            "nonzero_bins": sum(c != 0 for c in trace10.values()),
            "maximum_broken_bonds": max(trace10),
            "ground_state_degeneracy": trace10.get(50, 0),
            "published_reference_sha256": hashlib.sha256(REFERENCE.read_bytes()).hexdigest(),
            "public_mathcase_source_commit": "2bce5aa25f3d31020d59ac5bf42cc61b70ef79a3",
        },
        "python_version": platform.python_version(),
        "elapsed_seconds": round(time.perf_counter() - started, 6),
        "provider_spend_usd": 0,
        "claim_boundary": "A finite implementation check of an elementary transfer-matrix identity; finite Ising density-of-states and transfer-matrix methods are established, no novelty claim.",
    }
    path = args.output if args.output.is_absolute() else HERE / args.output
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"status": result["status"], "checks_passed": sum(checks.values()), "checks_total": len(checks), "elapsed_seconds": result["elapsed_seconds"], "result": str(path)}, indent=2))
    return 0 if result["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
