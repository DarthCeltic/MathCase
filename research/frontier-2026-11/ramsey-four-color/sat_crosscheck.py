"""Optional independent SAT cross-check. Install python-sat in a separate environment."""
import argparse, hashlib, json
from itertools import combinations
from pathlib import Path
from pysat.solvers import Solver
from four_color import generate, verify
from paley_extension import dimacs


def new_vertex_k50(matrix):
    n = len(matrix)
    def variable(v, c): return 4*v+c
    clauses = []
    for v in range(n):
        cols = [variable(v, c) for c in range(1, 5)]
        clauses.append(cols)
        clauses.extend([-a,-b] for a,b in combinations(cols, 2))
    for a,b in combinations(range(n), 2):
        color = matrix[a][b]
        clauses.append([-variable(a,color),-variable(b,color)])
    return clauses


def read_dimacs(path):
    with path.open(encoding="ascii") as lines:
        header = next(lines).split()
        clauses = []
        for line in lines:
            ints = list(map(int, line.split()))
            if not ints or ints[-1] != 0:
                raise ValueError("invalid DIMACS clause")
            clauses.append(ints[:-1])
    if len(clauses) != int(header[3]):
        raise ValueError("wrong clause count")
    return clauses


def solve(name, clauses, limit, proof_path=None):
    with Solver(name="g4", bootstrap_with=clauses, with_proof=bool(proof_path)) as solver:
        solver.conf_budget(limit)
        result = solver.solve_limited(expect_interrupt=True)
        state = {None:"INCONCLUSIVE_CONFLICT_LIMIT", True:"SAT", False:"UNSAT"}[result]
        out = {"solver":"Glucose4", "status":state, "conflict_budget":limit,
               "statistics":solver.accum_stats()}
        if result is False and proof_path:
            lines = solver.get_proof()
            data = ("\n".join(lines) + "\n").encode("ascii")
            proof_path.write_bytes(data)
            out["proof_sha256"] = hashlib.sha256(data).hexdigest()
            out["proof_lines"] = len(lines)
        if result:
            truth = {lit for lit in solver.get_model() if lit>0}
            if not all(any((lit>0)==(abs(lit) in truth) for lit in cl) for cl in clauses):
                raise ValueError("SAT returned an invalid model")
            out["positive_literals"] = sorted(truth)
        return out


if __name__ == "__main__":
    import pysat
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=Path)
    parser.add_argument("--unrestricted-conflicts", type=int, default=2500)
    opts = parser.parse_args()
    root = opts.directory
    k50_rows = generate()
    if verify(k50_rows)["monochromatic_triangles"]:
        raise SystemExit("K50 base failed")
    clauses = new_vertex_k50(k50_rows)
    data = dimacs(200,clauses)
    (root/"K51-fixed.cnf").write_bytes(data)
    result = {"python_sat":pysat.__version__,
        "K51_fixed": {**solve("K51",clauses,5000,root/"K51-fixed.drup"),
                      "cnf_sha256":hashlib.sha256(data).hexdigest()},
        "Paley_order5":solve("order5",read_dimacs(root/"order5.cnf"),5000,root/"order5.drup"),
        "Paley_unrestricted":solve("unrestricted",read_dimacs(root/"unrestricted.cnf"),opts.unrestricted_conflicts,root/"unrestricted.drup")}
    print(json.dumps(result,indent=2))

