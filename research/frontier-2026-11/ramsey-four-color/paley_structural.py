"""Try Seidel cuts and circulant distance-class recolorings of Paley(101)."""
from itertools import combinations
from math import comb
import json
from paley_extension import paley_adjacency, cliques

N = 101


def graph_after_cut(base, cut):
    group = set(cut)
    changed = base.copy()
    for u in group:
        for v in range(N):
            if v not in group:
                changed[u] ^= 1 << v
                changed[v] ^= 1 << u
    return changed


def undirected(d):
    d %= N
    return min(d, (-d)%N)


def graph_after_distances(base, distances):
    changed = base.copy()
    for d in distances:
        for u in range(N):
            v = (u+d)%N
            changed[u] ^= 1 << v
            changed[v] ^= 1 << u
    return changed


def find_monochromatic_six(base, graph):
    full = (1<<N)-1
    complement = [full ^ (1<<i) ^ row for i,row in enumerate(graph)]
    distance = sum((a^b).bit_count() for a,b in zip(base,graph))//2
    for name,layer in (("red",graph),("blue",complement)):
        witness = next(cliques(layer,6,full), None)
        if witness is not None:
            if len(set(witness))!=6 or not all((layer[u]>>v)&1 for u,v in combinations(witness,2)):
                raise AssertionError("six-clique replay failed")
            return {"changed_old_edges":distance,"status":"MONOCHROMATIC_K6",
                    "color":name,"vertices":witness}
    return {"changed_old_edges":distance,"status":"SURVIVES_FOR_EXTENSION"}


def cut_representatives():
    groups = {}
    for trial in [(0,), (0,1)] + [(0,1,t) for t in range(2,N)]:
        if trial in groups:
            continue
        # Every triple can move two distinct points to zero and one.
        orbit = {tuple(sorted((a+d*x)%N for x in trial)) for a in range(N) for d in range(1,N)}
        for k in orbit:
            if len(k)==1 or (0 in k and 1 in k):
                groups[k]=trial
        yield trial,len(orbit)


def distance_representatives():
    squares = {i*i%N for i in range(1,N)}
    values = range(1,(N+1)//2)
    # A single undirected distance or one red plus one blue distance.
    candidates = {(v,) for v in values}
    candidates.update((a,b) for a,b in combinations(values,2) if (a in squares)!=(b in squares))
    while candidates:
        rep = min(candidates)
        orbit = {tuple(sorted(undirected(d*x) for x in rep)) for d in range(1,N)}
        if not orbit <= candidates:
            raise AssertionError("overlapping or invalid distance orbit")
        candidates -= orbit
        yield rep,len(orbit)


def main():
    base=paley_adjacency()
    out=[]
    coverage={}
    for kind, representatives, change in (("cut",cut_representatives(),graph_after_cut),
                                           ("distances",distance_representatives(),graph_after_distances)):
        for rep, orbit in representatives:
            rec = find_monochromatic_six(base, change(base,rep))
            if rec["status"] == "MONOCHROMATIC_K6":
                for a,b in combinations(rec["vertices"],2):
                    original_red = pow((b-a)%N, (N-1)//2, N) == 1
                    flipped = ((a in rep) != (b in rep)) if kind == "cut" else undirected(b-a) in rep
                    if (original_red != flipped) != (rec["color"] == "red"):
                        raise AssertionError("independent edge-formula check failed")
            rec.update(kind=kind, representative=rep, labeled_choices=orbit)
            out.append(rec)
            key=f"{kind}_{len(rep)}"
            coverage[key]=coverage.get(key,0)+orbit
    expected={"cut_1":N,"cut_2":comb(N,2),"cut_3":comb(N,3),"distances_1":50,"distances_2":625}
    if coverage!=expected:
        raise ValueError((coverage,expected))
    return {"covered_labeled_choices":coverage,"representatives":len(out),
            "surviving_bases":sum(r["status"]=="SURVIVES_FOR_EXTENSION" for r in out),
            "results":out}


if __name__ == "__main__":
    print(json.dumps(main(),indent=2))
