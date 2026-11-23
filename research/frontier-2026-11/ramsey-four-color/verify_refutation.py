"""Check LRAT additions with explicit reverse-unit-propagation (RUP) hints.

This deliberately accepts only the RUP subset used by the two included proofs.
The initial clauses must come from the independently regenerated graph instance.
"""
from pathlib import Path
from itertools import combinations
import argparse
import hashlib
import json
from four_color import generate, verify
from paley_extension import paley_adjacency, cliques, extension_clauses, dimacs


def k50_clauses(matrix):
    # Each of the 50 new edges has exactly one of four colors.
    clauses = []
    for vertex in range(len(matrix)):
        row = tuple(4 * vertex + 1 + i for i in range(4))
        clauses.append(row)
        clauses.extend((-a, -b) for a, b in combinations(row, 2))
    for a, b in combinations(range(len(matrix)), 2):
        color = matrix[a][b]
        clauses.append((-(4*a + color), -(4*b + color)))
    return clauses


def derive(clauses, bound, proof_path):
    store = {i: tuple(c) for i, c in enumerate(clauses, 1)}
    last = len(store)
    additions = 0
    resolutions = 0
    for raw in proof_path.read_text(encoding="ascii").splitlines():
        fields = raw.split()
        if len(fields) < 3 or fields[-1] != "0":
            raise ValueError("malformed proof line")
        number = int(fields[0])
        if fields[1] == "d":
            for word in fields[2:-1]:
                del store[int(word)]
            continue
        if number <= last:
            raise ValueError("clause identifier was reused")
        last = number
        boundary = fields.index("0", 1)
        target = tuple(int(x) for x in fields[1:boundary])
        if any(lit == 0 or abs(lit) > bound for lit in target):
            raise ValueError("variable outside finite instance")
        if len(set(target)) != len(target) or any(-x in target for x in target):
            raise ValueError("invalid target literal list")
        hints = [int(x) for x in fields[boundary+1:-1]]
        if not hints or any(h <= 0 for h in hints):
            raise ValueError("only positive, explicit RUP hints are supported")
        # Derive a contradiction assuming the negation of the proposed clause.
        true = {-x for x in target}
        conflict = False
        for hint in hints:
            clause = store[hint]
            resolutions += 1
            if any(x in true for x in clause):
                raise ValueError("a proposed unit/conflict clause is already satisfied")
            free = [x for x in clause if -x not in true]
            if not free:
                conflict = True
                break
            if len(free) != 1:
                raise ValueError("step is not a forced literal")
            true.add(free[0])
        if not conflict:
            raise ValueError("the supplied hints do not derive a contradiction")
        store[number] = target
        additions += 1
        if not target:
            return {"status":"VERIFIED_UNSAT", "rup_additions":additions,
                    "hint_clauses_read":resolutions,
                    "lrat_sha256":hashlib.sha256(proof_path.read_bytes()).hexdigest()}
    raise ValueError("proof never derived the empty clause")


def verify_case(name, proof):
    if name == "K51-fixed":
        matrix = generate()
        if verify(matrix)["monochromatic_triangles"]:
            raise ValueError("invalid K50 base")
        n = 200
        clauses = k50_clauses(matrix)
    else:
        n = 101
        all_vertices = (1 << n)-1
        red = paley_adjacency(n)
        blue = [all_vertices ^ (1 << i) ^ a for i, a in enumerate(red)]
        clauses = extension_clauses(cliques(red, 5, all_vertices), cliques(blue, 5, all_vertices),
                                    {i:i+1 for i in range(n)})
    out = derive(clauses, n, proof)
    out["variables"] = n
    out["clauses"] = len(clauses)
    out["dimacs_sha256"] = hashlib.sha256(dimacs(n, clauses)).hexdigest()
    return out


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("case", choices=("K51-fixed", "unrestricted"))
    parser.add_argument("proof", type=Path)
    args = parser.parse_args()
    print(json.dumps(verify_case(args.case,args.proof), indent=2))
