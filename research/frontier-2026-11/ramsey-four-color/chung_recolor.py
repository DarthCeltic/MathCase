"""Exhaust the one- and two-old-edge recolorings of this fixed K50, then try K51."""
from collections import Counter
from itertools import combinations
import json
from math import comb
from four_color import extension, generate


def local_triangles(matrix, a, b, color):
    return sum(matrix[a][v] == matrix[b][v] == color for v in range(len(matrix)))


def permutations(base):
    # Translating all GF(16) labels leaves differences fixed. The last pair is interchangeable.
    for delta in range(16):
        for swap in (0,1):
            mapping = [(v//16)*16 + ((v % 16)^delta) if v < 48 else 48 + ((v-48)^swap) for v in range(50)]
            if len(set(mapping)) != 50 or any(base[a][b] != base[mapping[a]][mapping[b]]
                                              for a,b in combinations(range(50),2)):
                raise AssertionError("permutation did not preserve base colors")
            yield mapping


def transform(edit, mapping):
    a,b,c = edit
    i,j = sorted((mapping[a], mapping[b]))
    return (i,j,c)


def check():
    base = generate()
    changes = []
    harm = Counter()
    for a,b in combinations(range(50),2):
        for c in range(1,5):
            if c == base[a][b]:
                continue
            triangles = local_triangles(base,a,b,c)
            harm[triangles] += 1
            # Every other edge is in at most one triangle containing this edge.
            if triangles <= 1:
                changes.append((a,b,c))
    maps = list(permutations(base))
    images = {edit:[transform(edit, perm) for perm in maps] for edit in changes}
    stats = {}
    for count in (1,2):
        examined = 0
        valid = 0
        classes = {}
        for edits in combinations(changes,count):
            if count==2 and edits[0][:2]==edits[1][:2]:
                continue
            examined += 1
            old = []
            for a,b,c in edits:
                old.append(base[a][b])
                base[a][b] = base[b][a] = c
            bad = any(local_triangles(base,*e) for e in edits)
            for (a,b,_),color in zip(edits,old):
                base[a][b] = base[b][a] = color
            if bad:
                continue
            valid += 1
            key = min(tuple(sorted(image)) for image in zip(*(images[e] for e in edits)))
            classes[key] = classes.get(key,0)+1
        total_nodes = 0
        max_nodes = 0
        for rep in classes:
            old = []
            for a,b,c in rep:
                old.append(base[a][b])
                base[a][b]=base[b][a]=c
            run = extension(base,1000000)
            if run["status"] != "NO_EXTENSION_OF_THIS_COLORING":
                raise ValueError({"status":run["status"],"edits":rep,"nodes":run["nodes"],"colors":run.get("colors")})
            total_nodes += run["nodes"]
            max_nodes = max(max_nodes,run["nodes"])
            for (a,b,_),color in zip(rep,old):
                base[a][b]=base[b][a]=color
        stats[count] = {"all_distinct_old_edge_recolorings":comb(1225,count)*(3**count),
                        "locally_possible_recolorings_examined":examined,
                        "good_K50_colorings":valid,"symmetry_classes_checked":len(classes),
                        "full_extension_search_nodes":total_nodes,"largest_tree":max_nodes,
                        "K51_extensions":0}
    return {"original_single_change_triangle_counts":dict(sorted(harm.items())),
            "verified_automorphisms_used":len(maps),"recolorings":stats}


if __name__ == "__main__":
    print(json.dumps(check(),indent=2))
