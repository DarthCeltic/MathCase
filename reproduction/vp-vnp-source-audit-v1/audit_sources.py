from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from urllib.request import Request, urlopen

UPSTREAM = "anthropics/formal-math"
PIN = "11b6c7e3c927df2658f513b6b68ea7f8929c62c5"
BASE = f"https://raw.githubusercontent.com/{UPSTREAM}/{PIN}/"
PINS = {
    "vp-vnp/comparator.json": "e52c3c8a04ee33f7583ab9dd583a322bea5668841e2226c30f963078b6b3eceb",
    "vp-vnp/Challenge.lean": "808337bc2f4bc2a60d3a1971c9caa1da11ce22bcd7ad5da94a663387a9540912",
    "vp-vnp/Solution.lean": "97bdfbf83eb1f84b9791d0c525a324c5bf1cbbda5e253efb0b536022eadb4c85",
    "vp-vnp/Statement.lean": "f090345dafa13c7629ff0c0737bb1c2fe5d60e8b2d08372281cbb2e65b506ffd",
    "vp-vnp/lakefile.toml": "48059b78ff6f9ebd6af5a5b289384190e3268cecc02e18845a7121e0c5dc9387",
    "vp-vnp/lean-toolchain": "3aac669c7a910ec2389f4e4f921b605adf6ebf2d1e0c9b9cd0be4d33f3f5db71",
    "vp-vnp/lake-manifest.json": "e802752382ed2eddb4ed3b430caea1ebe13f9973225b349c234bb3cb289cb9a5",
}
TARGETS = [
    "Solution.mainTheorem",
    "Solution.mainTheoremApprox",
    "Solution.separation",
    "Solution.separationClosure",
    "Solution.permanent_over_real",
]
EXPECTED_AXIOMS = ["propext", "Quot.sound", "Classical.choice"]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def fetch_pinned(opener=urlopen) -> dict[str, bytes]:
    result = {}
    for path in sorted(PINS):
        request = Request(
            BASE + path,
            headers={"User-Agent": "MathCase-pinned-source-audit/1.0"},
        )
        with opener(request, timeout=30) as response:
            if getattr(response, "status", 200) != 200:
                raise RuntimeError(f"HTTP status {response.status} for {path}")
            data = response.read(4_000_001)
        if len(data) > 4_000_000:
            raise RuntimeError(f"source exceeded the 4 MB cap: {path}")
        result[path] = data
    return result


def validate_sources(contents: dict[str, bytes]) -> tuple[bool, str, dict[str, str]]:
    if set(contents) != set(PINS):
        return False, "source path set differs from the seven pinned files", {}
    hashes = {path: sha256(data) for path, data in sorted(contents.items())}
    for path, expected in PINS.items():
        if hashes[path] != expected:
            return False, f"SHA-256 mismatch for {path}", hashes

    config = json.loads(contents["vp-vnp/comparator.json"].decode("utf-8"))
    if config.get("theorem_names") != TARGETS:
        return False, "Comparator target declaration list differs", hashes
    if config.get("enable_nanoda") is not True:
        return False, "Comparator does not enable nanoda", hashes
    if config.get("permitted_axioms") != EXPECTED_AXIOMS:
        return False, "Comparator axiom allowlist differs", hashes

    challenge = contents["vp-vnp/Challenge.lean"].decode("utf-8")
    solution = contents["vp-vnp/Solution.lean"].decode("utf-8")
    statement = contents["vp-vnp/Statement.lean"].decode("utf-8")
    for full_name in TARGETS:
        name = full_name.split(".", 1)[1]
        declaration = f"theorem {name} :"
        if declaration not in challenge or declaration not in solution:
            return False, f"target declaration not found in both Lean modules: {name}", hashes
    if "def MainTheorem : Prop" not in statement or "def Separation : Prop" not in statement:
        return False, "the expected statement definitions were not found", hashes
    return True, "all seven pinned source/config files and declared targets match", hashes


def permanent_2x2(matrix: list[list[int]]) -> int:
    if len(matrix) != 2 or any(len(row) != 2 for row in matrix):
        raise ValueError("expected a 2 by 2 matrix")
    return matrix[0][0] * matrix[1][1] + matrix[0][1] * matrix[1][0]


def determinant_2x2(matrix: list[list[int]]) -> int:
    if len(matrix) != 2 or any(len(row) != 2 for row in matrix):
        raise ValueError("expected a 2 by 2 matrix")
    return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]


def check_example() -> dict:
    matrix = [[1, 1], [1, 1]]
    permanent = permanent_2x2(matrix)
    determinant = determinant_2x2(matrix)
    if permanent != 2 or determinant != 0:
        raise ValueError("all-ones example did not produce permanent 2 and determinant 0")
    if permanent % 2 != determinant % 2:
        raise ValueError("characteristic-two check failed")
    wrong_answer_rejected = False
    try:
        if permanent != 1:
            raise ValueError("wrong proposed permanent value")
    except ValueError:
        wrong_answer_rejected = True
    if not wrong_answer_rejected:
        raise ValueError("damaged permanent answer was not rejected")
    return {
        "matrix": matrix,
        "permanent_over_integers": permanent,
        "determinant_over_integers": determinant,
        "permanent_mod_2": permanent % 2,
        "determinant_mod_2": determinant % 2,
        "wrong_answer_1_rejected": wrong_answer_rejected,
    }


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description="Compare seven public source files with pinned SHA-256 values.")
    parser.add_argument("--receipt", type=Path, help="write the hash-only audit receipt here")
    args = parser.parse_args(argv)
    try:
        contents = fetch_pinned()
        ok, message, hashes = validate_sources(contents)
        example = check_example()
        status = "PASS_SOURCE_AUDIT_AND_EXAMPLE" if ok else "FAIL_SOURCE_AUDIT"
        receipt = {
            "schema": "mathcase-vp-vnp-pinned-source-audit-v1",
            "status": status,
            "upstream": UPSTREAM,
            "commit": PIN,
            "checked_utc": datetime.now(timezone.utc).isoformat(),
            "scope": "Fetches seven pinned upstream source/config files in memory, checks their SHA-256 values and selected declaration/config strings, and checks one exact 2x2 arithmetic example. It does not parse or compile Lean, run Comparator or nanoda, audit proof axioms, or validate the upstream theorem.",
            "source_message": message,
            "source_sha256": hashes,
            "example": example,
            "lean": "NOT_RUN",
            "comparator": "NOT_RUN",
            "nanoda": "NOT_RUN",
            "axiom_audit": "NOT_RUN",
            "external_model_or_provider_calls": 0,
            "provider_spend_usd": 0,
        }
        if args.receipt:
            args.receipt.parent.mkdir(parents=True, exist_ok=True)
            args.receipt.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
        print(json.dumps(receipt, indent=2))
        return 0 if ok else 1
    except Exception as exc:
        receipt = {
            "schema": "mathcase-vp-vnp-pinned-source-audit-v1",
            "status": "NOT_VERIFIED",
            "error_type": type(exc).__name__,
            "error": str(exc),
            "lean": "NOT_RUN",
            "comparator": "NOT_RUN",
            "axiom_audit": "NOT_RUN",
        }
        if args.receipt:
            args.receipt.parent.mkdir(parents=True, exist_ok=True)
            args.receipt.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
        print(json.dumps(receipt, indent=2))
        return 2


if __name__ == "__main__":
    raise SystemExit(main())