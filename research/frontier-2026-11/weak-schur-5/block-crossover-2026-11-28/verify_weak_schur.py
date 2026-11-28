"""Recheck two published WS(5) lower bounds and search for a 208 extension."""
import argparse
from collections import deque
import hashlib
import itertools
import json
from pathlib import Path
import re
import urllib.request

NAMES = {
    "rowley": ("https://raw.githubusercontent.com/oeis/oeisdata/"
               "aa67dedbb4e7fbefd9837e649293f8bdb09e5e69/seq/A072/A072842.seq",
               "dadba1c3277c9b360693b23f9309174c92128002785b2752d916b34db4c61e63"),
    "vicenzi": ("https://raw.githubusercontent.com/rebeccavicenzi/Weak_Schur_Problem_FunSearch/"
                "f21786ee926d6535fe01767ad74392bb1c0dd985/experiments/ws5_207_sat/partition_207.json",
                "2393698ef49eba4b100b3e048e2ddc28c7db99d99cfa525ba3ba7450d0f35c0b"),
}


def source(name, cache):
    url, digest = NAMES[name]
    path = cache / name
    raw = path.read_bytes() if path.exists() else urllib.request.urlopen(url, timeout=30).read()
    if hashlib.sha256(raw).hexdigest() != digest:
        raise ValueError(f"{name}: source digest mismatch")
    if not path.exists():
        cache.mkdir(parents=True, exist_ok=True)
        path.write_bytes(raw)
    if name == "rowley":
        part = raw.decode().split("The following coloring demonstrates", 1)[1].split("(End)", 1)[0]
        digits = [int(c) for line in part.splitlines()
                  if line.startswith("%C A072842 ") for c in re.findall(r"[1-5]", line[11:])]
        if len(digits) != 207:
            raise ValueError("Rowley block length")
        return [0, *digits]
    groups = json.loads(raw)["partition"]
    flat = sorted(n for group in groups for n in group)
    if len(groups) != 5 or flat != list(range(1, 208)):
        raise ValueError("Invalid partition")
    colors = [0] * 208
    for color, group in enumerate(groups, 1):
        for i in group:
            colors[i] = color
    return colors


def verify(colors):
    """Direct all-pairs verifier, independent of CSP propagation and ordering."""
    if not colors or colors[0] != 0 or any(type(c) is not int or not 1 <= c <= 5 for c in colors[1:]):
        raise ValueError("Color array format")
    pairs = 0
    conflicts = 0
    first = None
    for a, b in itertools.combinations(range(1, len(colors)), 2):
        if a+b >= len(colors):
            continue
        pairs += 1
        if colors[a] == colors[b] == colors[a+b]:
            conflicts += 1
            if first is None:
                first = [a, b, a+b, colors[a]]
    return {"n": len(colors)-1, "admissible_pairs": pairs, "monochromatic": conflicts,
            "first_conflict": first, "class_sizes": [colors.count(c) for c in range(1, 6)]}


def search(seed, n, prefix, budget):
    """Five-color finite CSP. Each singleton pair excludes its color from the third."""
    watchers = [[] for _ in range(n+1)]
    for c in range(3, n+1):
        for a in range(1, (c+1)//2):
            b = c-a
            watchers[a].append((b, c))
            watchers[b].append((a, c))
            watchers[c].append((a, b))
    nodes = 0
    max_fixed = 0

    def propagate(d, q):
        while q:
            x = q.popleft()
            color = d[x]
            for y, z in watchers[x]:
                if d[y] == color:
                    other = z
                elif d[z] == color:
                    other = y
                else:
                    continue
                if not d[other] & color:
                    continue
                d[other] &= ~color
                if not d[other]:
                    return False
                if d[other].bit_count() == 1:
                    q.append(other)
        return True

    class Limit(Exception):
        pass

    def solve(d, q):
        nonlocal nodes, max_fixed
        if nodes >= budget:
            raise Limit
        nodes += 1
        if not propagate(d, q):
            return None
        free = [i for i in range(1, n+1) if d[i].bit_count() > 1]
        max_fixed = max(max_fixed, n-len(free))
        if not free:
            return [0] + [c.bit_length() for c in d[1:]]
        x = min(free, key=lambda i: (d[i].bit_count(), -len(watchers[i]), i))
        choices = [1 << j for j in range(5) if d[x] & (1 << j)]
        preferred = 1 << (seed[x]-1) if x < len(seed) else None
        choices.sort(key=lambda k: (k != preferred, k))
        for bit in choices:
            nxt = d.copy()
            nxt[x] = bit
            result = solve(nxt, deque([x]))
            if result is not None:
                return result
        return None

    d = [31] * (n+1)
    for i in range(1, prefix+1):
        d[i] = 1 << (seed[i]-1)
    outcome = {"n": n, "fixed_prefix": prefix, "node_cap": budget}
    try:
        coloring = solve(d, deque(range(1, prefix+1)))
        outcome["status"] = "SAT" if coloring else "UNSAT_FIXED_PREFIX"
        if coloring:
            checked = verify(coloring)
            if checked["monochromatic"] or coloring[1:prefix+1] != seed[1:prefix+1]:
                raise AssertionError("Independent candidate verification failed")
            outcome["candidate_check"] = checked
            if n == 208:
                outcome["candidate"] = coloring[1:]
    except Limit:
        outcome["status"] = "UNKNOWN_NODE_LIMIT"
    return {**outcome, "nodes": nodes, "most_fixed_after_propagation": max_fixed}


def run(cache, prefixes, cap):
    seeds = {k: source(k, cache) for k in NAMES}
    report = {"schema": "mathcase-weak-schur-replay-v1", "witnesses": {}, "negative_controls": {}}
    for name, seed in seeds.items():
        checked = verify(seed)
        if checked["admissible_pairs"] != 10609 or checked["monochromatic"]:
            raise AssertionError("Invalid 207 witness")
        appended = [verify(seed + [c])["monochromatic"] for c in range(1,6)]
        counter = [sum(seed[a] == c == seed[208-a] for a in range(1,104)) for c in range(1,6)]
        if appended != counter:
            raise AssertionError("Cross-check of 208 obstructions disagreed")
        control = search(seed, 207, 96, cap)
        if control["status"] != "SAT":
            raise AssertionError("Positive 207 search control failed")
        results = [search(seed, 208, prefix, cap) for prefix in prefixes]
        report["witnesses"][name] = {
            "source_url":NAMES[name][0], "source_sha256":NAMES[name][1],
            "witness_check":checked, "violations_by_color_if_208_appended":appended,
            "minimum_old_recolorings_necessary_by_disjoint_pairs":min(counter),
            "positive_207_search_control":control, "208_search": results}
    agreement = max(sum(x == perm[y-1] for x,y in zip(seeds["rowley"][1:],seeds["vicenzi"][1:]))
                    for perm in itertools.permutations(range(1,6)))
    report["maximum_agreement_after_color_permutation"] = agreement
    corrupt = seeds["rowley"].copy()
    corrupt[1] = corrupt[2] = corrupt[3] = 1
    negative = verify(corrupt)
    allowed = verify([0,1,1])
    if not negative["monochromatic"] or not negative["first_conflict"][:3] == [1,2,3] or allowed["monochromatic"]:
        raise AssertionError("Controls failed")
    report["negative_controls"] = {"corrupt_207_expected_conflict":negative,
                                   "allowed_equal_addends_1_plus_1":allowed}
    return report


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input-cache", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--prefixes", nargs="+", type=int, default=[160,128,104,96,80,64,48,32])
    parser.add_argument("--nodes", type=int, default=12000)
    args = parser.parse_args()
    if args.nodes < 1 or any(p < 0 or p > 207 for p in args.prefixes):
        parser.error("invalid node cap or prefix")
    args.output.write_text(json.dumps(run(args.input_cache, args.prefixes, args.nodes), indent=2)+"\n",
                           encoding="utf-8")
