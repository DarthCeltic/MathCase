from __future__ import annotations
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
N, K, LIMIT = 208, 5, 3

def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def build_query(colors: list[int]) -> bytes:
    triples = [(a, b, a + b) for a in range(1, N) for b in range(a + 1, N - a + 1)]
    if len(triples) != 10712:
        raise ValueError("unexpected triple count")
    lines = [
        "; One saved Weak Schur candidate: five colors on 1..208.",
        "; All constraints: 1 <= a < b and a+b <= 208; forbid monochromatic triples.",
        "; Ask whether any valid coloring is within Hamming distance <= 3 of this candidate.",
        "(set-option :produce-models true)",
        "(set-option :timeout 45000)",
        "(set-option :smt.random_seed 20261125)",
        "(set-option :sat.random_seed 20261125)",
        "(set-logic QF_LIA)",
    ]
    for n in range(1, N + 1):
        for color in range(1, K + 1):
            lines.append(f"(declare-fun x_{n}_{color} () Bool)")
    for n in range(1, N + 1):
        terms = " ".join(f"(ite x_{n}_{color} 1 0)" for color in range(1, K + 1))
        lines.append(f"(assert (= (+ {terms}) 1))")
    for a, b, c in triples:
        for color in range(1, K + 1):
            lines.append(f"(assert (or (not x_{a}_{color}) (not x_{b}_{color}) (not x_{c}_{color})))")
    changes = " ".join(f"(ite x_{n}_{colors[n - 1]} 0 1)" for n in range(1, N + 1))
    lines.extend([f"(assert (<= (+ {changes}) {LIMIT}))", "(check-sat)", "(exit)"])
    return ("\n".join(lines) + "\n").encode("ascii")

def main() -> None:
    candidate_bytes = (ROOT / "candidate.json").read_bytes()
    candidate = json.loads(candidate_bytes.decode("utf-8"))
    colors = candidate["colors_1_to_208"]
    if len(colors) != N or any(type(c) is not int or c < 1 or c > K for c in colors):
        raise SystemExit("invalid candidate")
    formula = build_query(colors)
    (ROOT / "check-at-most-three.smt2").write_bytes(formula)
    print(json.dumps({"candidate_sha256": sha(candidate_bytes), "formula_sha256": sha(formula), "bytes": len(formula)}, indent=2))

if __name__ == "__main__":
    main()
