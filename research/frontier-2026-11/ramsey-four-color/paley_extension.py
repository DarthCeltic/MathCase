"""Check a fixed Paley(101) witness and searches for one-vertex extensions."""
import argparse
from itertools import combinations
import hashlib
import json
from math import comb


def paley_adjacency(n=101):
    residues = {v * v % n for v in range(1, n)}
    return [sum(1 << v for v in range(n) if (v - u) % n in residues) for u in range(n)]


def cliques(adjacency, size, candidates, chosen=()):
    """List all increasing cliques exactly once by intersecting neighbor sets."""
    if size == 0:
        yield chosen
        return
    while candidates.bit_count() >= size:
        first = candidates & -candidates
        candidates ^= first
        vertex = first.bit_length() - 1
        yield from cliques(adjacency, size-1, candidates & adjacency[vertex], chosen + (vertex,))


def orbit_map(n, generator):
    result = {}
    orbits = []
    for vertex in range(n):
        if vertex in result:
            continue
        orbit = []
        v = vertex
        while v not in result:
            orbit.append(v)
            result[v] = len(orbits) + 1
            v = v * generator % n
        if v != vertex:
            raise ValueError("multiplier is not a permutation")
        orbits.append(orbit)
    return result, orbits


def extension_clauses(red_fives, blue_fives, variables):
    # True means a new red edge. Forbid red neighborhoods containing a red K5
    # and blue neighborhoods containing a blue K5. Orbit ties may shorten a clause.
    clauses = set()
    for sign, fives in ((-1, red_fives), (1, blue_fives)):
        for five in fives:
            indices = sorted({variables[v] for v in five})
            clauses.add(tuple(sign * index for index in indices))
    return sorted(clauses, key=lambda clause: (len(clause), clause))


def dimacs(n, clauses):
    return (f"p cnf {n} {len(clauses)}\n" + "".join(
        " ".join(str(lit) for lit in clause) + " 0\n" for clause in clauses)).encode("ascii")


def exhaustive_orbit_search(variables, clauses):
    """Count all candidates, using the first conflicting monochromatic clique to prune."""
    # Positive clauses exclude all-false vertices (blue edges); negative exclude all-red.
    positive = sorted({sum(1 << (abs(i)-1) for i in clause) for clause in clauses if clause[0] > 0})
    negative = sorted({sum(1 << (abs(i)-1) for i in clause) for clause in clauses if clause[0] < 0})
    by_last = [{True: [], False: []} for _ in range(variables)]
    for color, masks in ((True, negative), (False, positive)):
        for mask in masks:
            by_last[mask.bit_length()-1][color].append(mask)
    queue = [(0, 0)]
    tested = 0
    rejected = 0
    survivors = []
    while queue:
        depth, red = queue.pop()
        if depth == variables:
            tested += 1
            survivors.append(red)
            continue
        for is_red in (False, True):
            red_next = red | (int(is_red) << depth)
            selected = red_next if is_red else ~red_next
            if any((mask & selected) == mask for mask in by_last[depth][is_red]):
                rejected += 1 << (variables-depth-1)
            else:
                queue.append((depth+1, red_next))
    if rejected + tested != (1 << variables):
        raise AssertionError("assignment accounting failed")
    return {"total_assignments": 1 << variables, "rejected_assignments": rejected,
            "surviving_assignments": tested, "first_survivor": survivors[0] if survivors else None}


def self_test():
    # A one-edge complete graph and the four-vertex empty graph give predictable clique counts.
    if list(cliques([2, 1], 2, 3)) != [(0, 1)] or list(cliques([0]*4, 2, 15)):
        raise AssertionError("graph controls failed")
    import itertools
    clauses = [(1, 2), (-2,), (-1, -3)]
    out = exhaustive_orbit_search(3, clauses)
    direct = sum(all(any(bits[abs(l)-1] == (l > 0) for l in clause) for clause in clauses)
                 for bits in itertools.product([False, True], repeat=3))
    if out["surviving_assignments"] != direct:
        raise AssertionError("extension controls failed")


def main():
    from pathlib import Path
    parser = argparse.ArgumentParser()
    parser.add_argument("--cnf-directory", type=Path)
    args = parser.parse_args()
    self_test()
    n = 101
    all_vertices = (1 << n)-1
    red = paley_adjacency(n)
    blue = [all_vertices ^ (1 << i) ^ edges for i, edges in enumerate(red)]
    red_fives = list(cliques(red, 5, all_vertices))
    blue_fives = list(cliques(blue, 5, all_vertices))
    six_counts = [sum(1 for _ in cliques(layer, 6, all_vertices)) for layer in (red, blue)]
    if six_counts != [0, 0]:
        raise SystemExit("baseline K101 already has a monochromatic K6")
    report = {"n": n, "base_six_cliques_red_blue": six_counts,
              "base_five_cliques_red_blue": [len(red_fives), len(blue_fives)]}
    for name, generator in (("order5", 36), ("unrestricted", 1)):
        variables, orbits = orbit_map(n, generator)
        if name == "order5" and ([len(x) for x in orbits] != [1] + [5]*20
                or any(((red[u] >> v) & 1) != ((red[generator*u%n] >> (generator*v%n)) & 1)
                       for u,v in combinations(range(n), 2))):
            raise AssertionError("incorrect orbit map or graph automorphism")
        clauses = extension_clauses(red_fives, blue_fives, variables)
        encoded = dimacs(len(orbits), clauses)
        item = {"multiplier": generator, "variables": len(orbits), "clauses": len(clauses),
                "dimacs_sha256": hashlib.sha256(encoded).hexdigest()}
        if args.cnf_directory:
            args.cnf_directory.mkdir(exist_ok=True, parents=True)
            (args.cnf_directory / f"{name}.cnf").write_bytes(encoded)
        if name == "order5":
            item["exhaustive"] = exhaustive_orbit_search(len(orbits), clauses)
        report[name] = item
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
