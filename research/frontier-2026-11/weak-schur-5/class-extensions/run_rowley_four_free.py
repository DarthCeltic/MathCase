import json, multiprocessing as mp, time
from pathlib import Path
from hashlib import sha256
from itertools import combinations
from pysat.solvers import Glucose4
from verify_weak_schur import source, verify, NAMES

ROOT = Path(__file__).parent
FREE = (1, 2, 3, 4)

def formula(vertices, width):
    variables = {x: [width*i+j+1 for j in range(width)] for i,x in enumerate(vertices)}
    clauses=[]
    for choices in variables.values():
        clauses.append(choices)
        clauses.extend([[-a,-b] for a,b in combinations(choices,2)])
    for a,b in combinations(vertices,2):
        if a+b in variables:
            for j in range(width): clauses.append([-variables[a][j],-variables[b][j],-variables[a+b][j]])
    for i,x in enumerate(vertices):
        for j in range(1,width): clauses.append([-variables[x][j], *[variables[y][j-1] for y in vertices[:i]]])
    return variables, clauses

def child(out):
    seed=source("rowley", ROOT/"inputs")
    vertices=[x for x in range(1,208) if seed[x] in FREE]+[208]
    variables, clauses=formula(vertices,len(FREE))
    cnf=(f"p cnf {len(vertices)*len(FREE)} {len(clauses)}\n"+"".join(" ".join(map(str,c))+" 0\n" for c in clauses)).encode()
    row={"seed":"rowley","free_colors":list(FREE),"free_vertices":len(vertices),"clauses":len(clauses),"cnf_sha256":sha256(cnf).hexdigest(),"conflict_budget":2000000}
    with Glucose4(bootstrap_with=clauses, with_proof=False) as s:
        s.conf_budget(2000000); started=time.perf_counter(); status=s.solve_limited(); row["elapsed_seconds"]=round(time.perf_counter()-started,6); row["solver_conflicts"]=s.accum_stats()["conflicts"]
        if status is None: row["status"]="inconclusive_conflict_limit"
        elif status:
            positives=set(s.get_model()); coloring=seed+[0]
            for x in vertices: coloring[x]=next(FREE[j] for j,v in enumerate(variables[x]) if v in positives)
            row["status"]="verified_coloring" if verify(coloring)["monochromatic"]==0 else "solver_model_failed_independent_check"
            row["independent_check"]=verify(coloring)
        else: row["status"]="unsat_solver_only_no_drat"
    (out/"result.json").write_text(json.dumps(row,indent=2)+"\n")

if __name__ == "__main__":
    out=ROOT/"rowley-1234-120s"; out.mkdir(exist_ok=False)
    p=mp.get_context("spawn").Process(target=child,args=(out,)); p.start(); p.join(120)
    if p.is_alive(): p.terminate(); p.join(); (out/"result.json").write_text(json.dumps({"status":"inconclusive_wall_limit","wall_seconds":120,"seed":"rowley","free_colors":list(FREE)},indent=2)+"\n")
    print((out/"result.json").read_text())
