#!/usr/bin/env python3
"""Validate the public MathCase evidence graph and all referenced files."""

import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GRAPH = ROOT / "research" / "knowledge-graph-v1" / "knowledge-graph.json"


def main() -> int:
    graph = json.loads(GRAPH.read_text(encoding="utf-8"))
    if graph.get("schema") != "mathcase-knowledge-graph-v1":
        raise ValueError("unexpected schema")
    nodes = graph.get("nodes", [])
    ids = [node.get("id") for node in nodes]
    if len(ids) != len(set(ids)):
        raise ValueError("duplicate node id")
    by_id = set(ids)
    for node in nodes:
        path = node.get("path")
        if not path or not (ROOT / path).is_file():
            raise ValueError(f"missing node path: {path}")
    for edge in graph.get("edges", []):
        if edge.get("from") not in by_id or edge.get("to") not in by_id:
            raise ValueError(f"broken edge: {edge}")
        if not edge.get("relation"):
            raise ValueError(f"unnamed edge: {edge}")
    print(f"knowledge graph: PASS ({len(nodes)} nodes, {len(graph.get('edges', []))} edges)")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"knowledge graph: FAIL: {exc}", file=sys.stderr)
        raise SystemExit(1)
