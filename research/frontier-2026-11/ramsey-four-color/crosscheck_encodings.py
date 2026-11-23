"""Independent finite controls for the two graph encodings and LRAT checker."""
import hashlib
import itertools
import json
import tempfile
from pathlib import Path
from verify_refutation import derive, k50_clauses
from four_color import generate, verify
from paley_extension import dimacs


def check_translated_fives():
    prime = 101
    squares = {a*a % prime for a in range(1,prime)}
    clauses = []
    totals = []
    for color in (True, False):
        # For this independent enumerator, anchor one vertex at zero, choose its
        # four co-neighbors, check the six remaining differences, then translate.
        neighbors = [a for a in range(1,prime) if (a in squares) == color]
        catalog = set()
        for group in itertools.combinations(neighbors,4):
            if all((((b-a)%prime) in squares) == color for a,b in itertools.combinations(group,2)):
                for t in range(prime):
                    indices = sorted(((n+t)%prime)+1 for n in (0,*group))
                    catalog.add(tuple((-v if color else v) for v in indices))
        totals.append(len(catalog))
        clauses.extend(catalog)
    text = dimacs(101,sorted(clauses,key=lambda c:(len(c),c)))
    return {"five_cliques":totals,"cnf_sha256":hashlib.sha256(text).hexdigest()}


def control_proof():
    with tempfile.TemporaryDirectory() as tmp:
        proof = Path(tmp)/"test.lrat"
        proof.write_text("3 0 1 2 0\n",encoding="ascii")
        if derive([(1,),(-1,)], 1,proof)["status"] != "VERIFIED_UNSAT":
            raise AssertionError("valid proof failed")
        try:
            derive([(1,),(1,)],1,proof)
        except ValueError:
            pass
        else:
            raise AssertionError("invalid proof accepted")
        proof.write_text("3 0 1 0\n",encoding="ascii")
        try:
            derive([(1,),(-1,)],1,proof)
        except ValueError:
            pass
        else:
            raise AssertionError("incomplete proof accepted")


def check_matrix():
    m=generate()
    # For every color the color-neighbors of each vertex must form an independent set.
    tested=0
    for vertex,row in enumerate(m):
        for color in (1,2,3,4):
            neighbors=[v for v in range(50) if row[v]==color]
            for u,v in itertools.combinations(neighbors,2):
                tested+=1
                if m[u][v]==color:
                    raise ValueError("monochromatic triangle")
    clauses=k50_clauses(m)
    color_clauses=set(map(tuple,clauses))
    for a,b in itertools.combinations(range(50),2):
        c=m[a][b]
        # The fixed edge forbids exactly one assignment to those two new edges.
        if (-(4*a+c),-(4*b+c)) not in color_clauses:
            raise AssertionError("missing color clause")
    return {"monochromatic_triangles":0,"neighbor_pairs":tested,"clauses":len(clauses)}


if __name__ == "__main__":
    control_proof()
    matrix_result=check_matrix()
    translation=check_translated_fives()
    if translation["cnf_sha256"] != "5b19d39c3bf539e8f2a46e6694a66ef5fad5bd89944854f2a98a58c78b1fa810":
        raise SystemExit("independent Paley encoding disagrees")
    print(json.dumps({"K50":matrix_result,"Paley101":translation,
                      "LRAT_controls":"valid proof accepted; false and incomplete proofs rejected"},indent=2))
