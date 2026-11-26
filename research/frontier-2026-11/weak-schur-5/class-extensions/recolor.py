"""Generate two-seed recoloring formulas and independently check solver proofs."""

import argparse
from hashlib import sha256
from importlib.metadata import version
from itertools import combinations
import json
from multiprocessing import get_context
from pathlib import Path
import subprocess
import sys

from pysat.solvers import Glucose4

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from verify_weak_schur import NAMES, source, verify


def formula(vertices, width):
    variables = {x: [width * i + j + 1 for j in range(width)] for i, x in enumerate(vertices)}
    clauses = []
    for choices in variables.values():
        clauses.append(choices)
        clauses.extend([[-a, -b] for a, b in combinations(choices, 2)])
    for a, b in combinations(vertices, 2):
        if a + b in variables:
            for j in range(width):
                clauses.append([-variables[a][j], -variables[b][j], -variables[a + b][j]])
    # Free color names are arbitrary. Require them to appear in ascending order.
    for i, x in enumerate(vertices):
        for j in range(1, width):
            earlier = [variables[y][j - 1] for y in vertices[:i]]
            clauses.append([-variables[x][j], *earlier])
    return variables, clauses


def dimacs(max_variable, clauses):
    header = f"p cnf {max_variable} {len(clauses)}\n"
    return (header + "".join(" ".join(map(str, clause)) + " 0\n" for clause in clauses)).encode("ascii")


def check_proof(checker, folder):
    result = subprocess.run([checker, "input.cnf", "proof.drat"], cwd=folder,
                            capture_output=True, timeout=240)
    transcript = result.stdout + result.stderr
    (folder / "proof-check.log").write_bytes(transcript)
    return result.returncode == 0 and b"s VERIFIED" in transcript.splitlines()


def run_one(seed, free, limit, folder, checker):
    vertices = [x for x in range(1, 208) if seed[x] in free] + [208]
    variables, clauses = formula(vertices, len(free))
    cnf = dimacs(len(vertices) * len(free), clauses)
    (folder / "input.cnf").write_bytes(cnf)
    row = {"free_colors": list(free), "free_vertices": len(vertices),
           "clauses": len(clauses), "cnf_sha256": sha256(cnf).hexdigest()}
    with Glucose4(bootstrap_with=clauses, with_proof=True) as solver:
        solver.conf_budget(limit)
        status = solver.solve_limited()
        row["solver_conflicts"] = solver.accum_stats()["conflicts"]
        if status is None:
            row["status"] = "inconclusive"
        elif status:
            positives = set(solver.get_model())
            coloring = seed + [0]
            for x in vertices:
                coloring[x] = next(free[j] for j, var in enumerate(variables[x]) if var in positives)
            if verify(coloring)["monochromatic"]:
                raise ValueError("Invalid 208 coloring")
            row["status"] = "verified_coloring"
            row["colors"] = coloring[1:]
        else:
            proof = ("\n".join(solver.get_proof()) + "\n").encode("ascii")
            (folder / "proof.drat").write_bytes(proof)
            if not check_proof(checker, folder):
                raise ValueError(f"Refutation failed independent checking in {folder.name}")
            row.update(status="verified_refutation", proof_sha256=sha256(proof).hexdigest(),
                       proof_bytes=len(proof))
    return row


def worker(seed, free, limit, folder, checker):
    row = run_one(seed, free, limit, folder, checker)
    (folder / "result.json").write_text(json.dumps(row) + "\n", encoding="utf-8")


def bounded_case(seed, free, args, folder, checker):
    folder.mkdir()
    process = get_context("spawn").Process(target=worker, args=(seed, free, args.conflicts, folder, checker))
    process.start()
    process.join(args.seconds_per_case)
    if process.is_alive():
        process.terminate()
        process.join()
        return {"free_colors": list(free), "status": "inconclusive_wall_limit"}
    if process.exitcode != 0:
        raise RuntimeError(f"Search or proof check failed in {folder.name}")
    return json.loads((folder / "result.json").read_bytes())


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--width", type=int, choices=(2, 3, 4), required=True)
    parser.add_argument("--conflicts", type=int, default=50000)
    parser.add_argument("--seconds-per-case", type=int, default=120)
    parser.add_argument("--checker", type=Path, required=True, help="compiled drat-trim")
    parser.add_argument("--input-cache", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True, help="new run directory")
    args = parser.parse_args()
    if min(args.conflicts, args.seconds_per_case) < 1:
        parser.error("Both resource limits must be positive")
    checker = args.checker.resolve(strict=True)
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=False)
    negative = out / "invalid-proof-control"
    negative.mkdir()
    (negative / "input.cnf").write_bytes(b"p cnf 1 1\n1 0\n")
    (negative / "proof.drat").write_bytes(b"0\n")
    if check_proof(checker, negative):
        raise ValueError("Checker accepted an invalid proof for a satisfiable formula")
    rows = []
    for name in NAMES:
        seed = source(name, args.input_cache)
        if verify(seed)["monochromatic"]:
            raise ValueError(f"Invalid seed: {name}")
        for color in range(1, 6):
            if not verify(seed + [color])["monochromatic"]:
                raise ValueError(f"The original class {color} can already take 208")
        for free in combinations(range(1, 6), args.width):
            folder = out / (name + "-" + "".join(map(str, free)))
            row = bounded_case(seed, free, args, folder, checker)
            rows.append({"seed": name, **row})
            print(folder.name, row["status"], flush=True)
    record = {"schema": 1, "solver": "Glucose4 via python-sat " + version("python-sat"),
              "conflict_budget": args.conflicts, "seconds_per_case": args.seconds_per_case, "width": args.width,
              "checker_binary_sha256": sha256(checker.read_bytes()).hexdigest(),
              "invalid_proof_rejected": True, "cases": rows}
    (out / "summary.json").write_text(json.dumps(record, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
