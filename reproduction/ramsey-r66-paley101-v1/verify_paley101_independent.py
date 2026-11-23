#!/usr/bin/env python3
"""Independent Python verifier for a finite R(6,6) graph certificate."""
from __future__ import annotations
import argparse, hashlib, json, time
from pathlib import Path

VERTICES = 101
K = 6
NODE_LIMIT = 10_000_000
TIME_LIMIT_SECONDS = 900

def parse_graph(path: Path) -> list[int]:
    obj = json.loads(path.read_text(encoding="utf-8"))
    if obj.get("schema") != "mathcase-simple-graph-certificate-v1" or obj.get("vertices") != VERTICES:
        raise ValueError("schema or vertex count mismatch")
    raw_edges = obj.get("edges")
    if not isinstance(raw_edges, list) or len(raw_edges) != 2525:
        raise ValueError("expected exactly 2525 edge rows")
    rows: list[tuple[int, int]] = []
    for row in raw_edges:
        if not isinstance(row, list) or len(row) != 2 or not all(type(x) is int for x in row):
            raise ValueError("edge row must contain two integers")
        u, v = row
        if not (0 <= u < v < VERTICES):
            raise ValueError("edge endpoints are invalid or unordered")
        rows.append((u, v))
    if rows != sorted(set(rows)):
        raise ValueError("edges must be strictly sorted and unique")
    adjacency = [0] * VERTICES
    for u, v in rows:
        adjacency[u] |= 1 << v
        adjacency[v] |= 1 << u
    if any(mask.bit_count() != 50 for mask in adjacency):
        raise ValueError("every vertex must have degree 50")
    return adjacency

def find_k_set(adjacency: list[int], k: int) -> tuple[tuple[int, ...] | None, int]:
    nodes = 0
    started = time.monotonic()
    all_vertices = list(range(len(adjacency)))
    path: list[int] = []
    def visit(candidates: list[int], need: int) -> tuple[int, ...] | None:
        nonlocal nodes
        if need == 0:
            return tuple(path)
        if len(candidates) < need:
            return None
        for i, vertex in enumerate(candidates):
            if len(candidates) - i < need:
                break
            nodes += 1
            if nodes > NODE_LIMIT:
                raise TimeoutError("node budget exceeded")
            if nodes % 4096 == 0 and time.monotonic() - started > TIME_LIMIT_SECONDS:
                raise TimeoutError("wall-clock budget exceeded")
            later = candidates[i + 1:]
            common = [w for w in later if (adjacency[vertex] >> w) & 1]
            path.append(vertex)
            found = visit(common, need - 1)
            if found is not None:
                return found
            path.pop()
        return None
    return visit(all_vertices, k), nodes

def self_test() -> None:
    k6 = [0] * 6
    empty = [0] * 6
    mixed = [0] * 6
    for i in range(6):
        for j in range(i + 1, 6):
            k6[i] |= 1 << j
            k6[j] |= 1 << i
    mixed[0] |= 1 << 1
    mixed[1] |= 1 << 0
    complement = lambda rows: [((1 << 6) - 1) ^ row ^ (1 << i) for i, row in enumerate(rows)]
    assert find_k_set(k6, 6)[0] is not None
    assert find_k_set(complement(empty), 6)[0] is not None
    assert find_k_set(mixed, 6)[0] is None
    assert find_k_set(complement(mixed), 6)[0] is None
    print("PASS Python verifier finds K6 and independent 6-set")
    print("PASS Python verifier rejects mixed six-set in both searches")

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("certificate", type=Path)
    ap.add_argument("--out-dir", type=Path, required=True)
    ap.add_argument("--self-test", action="store_true")
    args = ap.parse_args()
    out = args.out_dir.resolve()
    out.mkdir(parents=True, exist_ok=False)
    stdout_path, stderr_path = out / "stdout.log", out / "stderr.log"
    start = time.monotonic()
    code, status, message = 0, "PASS_INDEPENDENT_FINITE_CERTIFICATE", ""
    try:
        if args.self_test:
            self_test()
            output = "PASS_INDEPENDENT_VERIFIER_SELFTEST\n"
        else:
            adjacency = parse_graph(args.certificate)
            clique, clique_nodes = find_k_set(adjacency, K)
            complement = [((1 << VERTICES) - 1) ^ row ^ (1 << i) for i, row in enumerate(adjacency)]
            independent, independent_nodes = find_k_set(complement, K)
            if clique is not None:
                raise ValueError(f"K6 found: {clique}")
            if independent is not None:
                raise ValueError(f"independent 6-set found: {independent}")
            output = (f"PASS_INDEPENDENT_R66_CERTIFICATE vertices={VERTICES} edges=2525 "
                      f"clique_nodes={clique_nodes} independent_nodes={independent_nodes} "
                      "no_K6=yes no_independent6=yes\n")
        stdout_path.write_text(output, encoding="utf-8", newline="\n")
        stderr_path.write_text("", encoding="utf-8", newline="\n")
    except Exception as exc:
        code, status, message = 2, "FAILED_PRESERVED", f"{type(exc).__name__}: {exc}"
        stdout_path.write_text("", encoding="utf-8", newline="\n")
        stderr_path.write_text(message + "\n", encoding="utf-8", newline="\n")
    elapsed = round(time.monotonic() - start, 6)
    receipt = {
        "schema": "mathcase-independent-ramsey66-verification-receipt-v1",
        "status": status,
        "exit_code": code,
        "elapsed_seconds": elapsed,
        "candidate_sha256": None if args.self_test else digest(args.certificate),
        "verifier_sha256": digest(Path(__file__).resolve()),
        "stdout_sha256": digest(stdout_path),
        "stderr_sha256": digest(stderr_path),
        "stdout_bytes": stdout_path.stat().st_size,
        "stderr_bytes": stderr_path.stat().st_size,
        "external_calls": 0,
        "cost_usd": 0,
    }
    (out / "receipt.json").write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(stdout_path.read_text(encoding="utf-8"), end="")
    if message:
        print(message)
    print(json.dumps(receipt, indent=2, sort_keys=True))
    return code

if __name__ == "__main__":
    raise SystemExit(main())