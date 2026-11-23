"""Compute a lower bound on edits needed to change the Paley(101) witness."""
from itertools import combinations
from math import comb
import json


def analyze():
    n = 101
    squares = {x*x % n for x in range(1, n)}
    if 1 not in squares or -1 % n not in squares:
        raise AssertionError("edge orientations do not match Paley(101)")
    # The affine map t -> a + d*t sends 0,1 to any two distinct vertices.
    # It preserves both colors if d is square and swaps both otherwise.
    for d in range(1,n):
        for delta in range(1,n):
            preserves = (((d*delta)%n in squares) == (delta in squares))
            if preserves != (d in squares):
                raise AssertionError("affine normalization failed")
    common = [x for x in range(2,n) if x not in squares and (x-1)%n not in squares]
    completions = [s for s in combinations(common,4)
                   if all((a-b)%n not in squares for a,b in combinations(s,2))]
    if len(common) != 25 or len(completions) != 96:
        raise ValueError("unexpected common-neighbor geometry")
    incident = {v:sum(1 << i for i,s in enumerate(completions) if v in s) for v in common}
    all_completions = (1 << len(completions))-1
    attempts = 0
    seven_hits = 0
    for chosen in combinations(common,7):
        attempts += 1
        covered = 0
        for x in chosen:
            covered |= incident[x]
        if covered == all_completions:
            seven_hits += 1
    if attempts != comb(25,7) or seven_hits:
        raise AssertionError("an exact seven-vertex hitting set was found")
    eight = [8,35,39,61,62,67,75,91]
    if not all(set(eight).intersection(s) for s in completions):
        raise ValueError("the eight-vertex cover failed")
    return {"normalized_changed_edge":[0,1],"common_opposite_color_neighbors":common,
            "opposite_color_four_cliques":len(completions),
            "size_seven_sets_tested":attempts,"size_seven_hitting_sets":seven_hits,
            "local_minimum_hitting_set":8,"example_eight_vertex_hitting_set":eight,
            "minimum_required_old_color_changes_each_direction":8,
            "lower_bound_old_color_changes_for_distinct_good_coloring":16}


if __name__ == "__main__":
    print(json.dumps(analyze(),indent=2))
