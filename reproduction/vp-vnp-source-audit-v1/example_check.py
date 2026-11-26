from __future__ import annotations

import json


def permanent_2x2(matrix: list[list[int]]) -> int:
    return matrix[0][0] * matrix[1][1] + matrix[0][1] * matrix[1][0]


def determinant_2x2(matrix: list[list[int]]) -> int:
    return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]


def main() -> int:
    matrix = [[1, 1], [1, 1]]
    permanent = permanent_2x2(matrix)
    determinant = determinant_2x2(matrix)
    if (permanent, determinant) != (2, 0):
        raise SystemExit("FAIL: expected permanent 2 and determinant 0")
    if permanent % 2 != determinant % 2:
        raise SystemExit("FAIL: characteristic-two values should agree")
    damaged_value = 1
    wrong_answer_rejected = permanent != damaged_value
    if not wrong_answer_rejected:
        raise SystemExit("FAIL: damaged permanent answer was accepted")
    print(json.dumps({
        "matrix": matrix,
        "permanent": permanent,
        "determinant": determinant,
        "permanent_mod_2": permanent % 2,
        "determinant_mod_2": determinant % 2,
        "wrong_answer_1_rejected": wrong_answer_rejected,
        "scope": "worked 2x2 example only; not a proof of the upstream theorem",
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())