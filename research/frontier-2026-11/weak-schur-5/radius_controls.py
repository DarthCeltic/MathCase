"""Exhaustively cross-check the radius pruning on small two-color problems."""
import itertools
import json
from search_radius import try_color
from verify_weak_schur import verify


def test():
    results = {"queries":0, "sat":0, "unsat":0, "sat_requiring_recolor":0}
    for n in range(2,10):
        bases = [p for p in itertools.product((1,2), repeat=n-1) if not verify([0,*p])["monochromatic"]]
        full = [p for p in itertools.product((1,2), repeat=n) if not verify([0,*p])["monochromatic"]]
        for seed, append, radius in itertools.product(bases, (1,2), range(3)):
            ds = [sum(x != y for x,y in zip(p,seed)) for p in full if p[-1] == append]
            expected = min(ds, default=n+1) <= radius
            actual = try_color([0,*seed], append, radius, 100000, palette=2)["status"]
            if actual != ("SAT" if expected else "UNSAT_WITHIN_RADIUS"):
                raise AssertionError((n,seed,append,radius,expected,actual))
            results["queries"] += 1
            results["sat" if expected else "unsat"] += 1
            results["sat_requiring_recolor"] += int(expected and min(ds)>0)
    return results


if __name__ == "__main__":
    print(json.dumps(test(), sort_keys=True))
