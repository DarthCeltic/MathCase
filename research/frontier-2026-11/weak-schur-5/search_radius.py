"""Complete bounded Hamming-ball search around each published 207-color seed."""
import argparse
import json
from pathlib import Path
from verify_weak_schur import NAMES, source, verify


def try_color(seed, append, radius, cap, palette=5):
    n = len(seed)
    colors = seed + [append]
    triples = [(a, c-a, c) for c in range(3,n+1) for a in range(1,(c+1)//2)]
    incidents = [[] for _ in colors]
    for i, triple in enumerate(triples):
        for x in triple:
            incidents[x].append(i)

    def bad(i):
        a,b,c = triples[i]
        return colors[a] == colors[b] == colors[c]

    initial = {i for i in range(len(triples)) if bad(i)}
    nodes = 0
    locked = {n}
    class Limit(Exception):
        pass

    def visit(conflicts, left):
        nonlocal nodes
        if nodes >= cap:
            raise Limit
        nodes += 1
        if not conflicts:
            return list(colors)
        if not left:
            return None
        choices = [tuple(x for x in triples[i] if x not in locked) for i in sorted(conflicts)]
        choices.sort(key=lambda xs: (len(xs),xs))
        if not choices[0]:
            return None
        used = set()
        disjoint = 0
        for xs in choices:
            if used.isdisjoint(xs):
                used.update(xs)
                disjoint += 1
                if disjoint > left:
                    return None
        for x in choices[0]:
            old = colors[x]
            unaffected = conflicts.difference(incidents[x])
            locked.add(x)
            for new in range(1,palette+1):
                if new == old:
                    continue
                colors[x] = new
                result = visit(unaffected | {i for i in incidents[x] if bad(i)}, left-1)
                if result is not None:
                    return result
            colors[x] = old
            locked.remove(x)
        return None

    try:
        result = visit(initial, radius)
    except Limit:
        return {"color":append, "nodes":nodes, "status":"UNKNOWN_NODE_LIMIT"}
    if result is None:
        return {"color":append, "nodes":nodes, "status":"UNSAT_WITHIN_RADIUS"}
    checked = verify(result)
    distance = sum(a != b for a,b in zip(result[1:n], seed[1:]))
    if checked["monochromatic"] or distance > radius or result[-1] != append:
        raise AssertionError("Bad witness")
    return {"color":append, "nodes":nodes, "status":"SAT", "actual_distance":distance,
            "candidate":result[1:], "independent_check":checked}


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--input-cache", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--radius", type=int, required=True)
    p.add_argument("--nodes", type=int, default=25000)
    args = p.parse_args()
    if not 0 <= args.radius <= 207 or args.nodes <= 0:
        p.error("invalid radius or node budget")
    report = {"schema":"mathcase-weak-schur-radius-v1", "radius":args.radius,
              "node_cap_per_appended_color":args.nodes, "witnesses":{}}
    for name in NAMES:
        seed = source(name,args.input_cache)
        report["witnesses"][name] = [try_color(seed,c,args.radius,args.nodes) for c in range(1,6)]
    args.output.write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
