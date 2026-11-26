#!/usr/bin/env python3
"""Check a proposed five-color assignment of 1..208 for weak-Schur triples."""
import argparse
import json
import sys
from pathlib import Path

N = 208
COLOR_COUNT = 5
EXPECTED_TRIPLES = 10_712


def load_candidate(path: Path) -> list[int]:
    try:
        obj = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError) as exc:
        raise ValueError(f"cannot read JSON candidate: {exc}") from exc
    if isinstance(obj, dict):
        if "colors_1_to_208" not in obj:
            raise ValueError("object must contain 'colors_1_to_208'")
        values = obj["colors_1_to_208"]
    else:
        values = obj
    if not isinstance(values, list) or len(values) != N:
        raise ValueError("expected exactly 208 color entries, for numbers 1 through 208")
    if any(type(color) is not int or not 1 <= color <= COLOR_COUNT for color in values):
        raise ValueError("each color must be an integer from 1 through 5")
    return [0, *values]


def find_conflicts(colors: list[int]) -> list[dict[str, int]]:
    """Exhaustively test each distinct positive pair a < b with a+b <= 208."""
    if len(colors) != N + 1:
        raise ValueError("internal color array has wrong length")
    found = []
    for a in range(1, N + 1):
        for b in range(a + 1, N + 1):
            total = a + b
            if total > N:
                break
            if colors[a] == colors[b] == colors[total]:
                found.append({"a": a, "b": b, "sum": total, "color": colors[a]})
    return found


def main() -> int:
    parser = argparse.ArgumentParser(description="Check all weak-Schur triples in a five-coloring of 1..208.")
    parser.add_argument("candidate", type=Path, help="JSON array or {\"colors_1_to_208\": [...]} file")
    parser.add_argument("--output", type=Path, help="optional path for the JSON result")
    args = parser.parse_args()
    try:
        colors = load_candidate(args.candidate)
    except ValueError as exc:
        print(json.dumps({"status": "INPUT_ERROR", "message": str(exc)}, indent=2))
        return 2
    conflicts = find_conflicts(colors)
    result = {
        "schema": "weak-schur-5-candidate-check-v1",
        "n": N,
        "colors": COLOR_COUNT,
        "distinct_addend_triples_checked": EXPECTED_TRIPLES,
        "conflict_count": len(conflicts),
        "conflicts": conflicts,
        "status": "VALID_CANDIDATE" if not conflicts else "CONFLICTS_FOUND",
        "meaning": "A conflict-free assignment witnesses WS(5) >= 208. A conflict rules out this assignment.",
    }
    rendered = json.dumps(result, indent=2) + "\n"
    if args.output:
        args.output.write_text(rendered, encoding="utf-8")
    sys.stdout.write(rendered)
    return 0 if not conflicts else 1


if __name__ == "__main__":
    raise SystemExit(main())
