"""Generate and audit the unrestricted five-colour, 171-position SAT target."""
import argparse
from hashlib import sha256
from itertools import combinations, product
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import time

def triples(n):
    for step in range(1, (n-1)//2+1):
        for start in range(n-2*step):
            yield start, start+step, start+2*step

def formula(n, colors):
    variable = lambda position, color: 1+colors*position+color
    result = []
    for x in range(n):
        row = [variable(x,c) for c in range(colors)]
        result.append(row)
        result.extend([-a,-b] for a,b in combinations(row,2))
    for a,b,c in triples(n):
        for color in range(colors):
            result.append([-variable(x,color) for x in (a,b,c)])
    return result

def dimacs(n, colors, clauses):
    lines=[f"p cnf {n*colors} {len(clauses)}"]
    lines.extend(" ".join(map(str,c))+" 0" for c in clauses)
    return ("\n".join(lines)+"\n").encode("ascii")

def avoids_triples(row):
    return all(not (row[a] == row[b] == row[2*b-a])
               for a in range(len(row)) for b in range(a+1,len(row)) if 2*b-a < len(row))

def control():
    outcomes={}
    for n in (8,9):
        clauses=formula(n,2)
        valid=0
        for row in product(range(2),repeat=n):
            truth={1+2*x+c for x,c in enumerate(row)}
            legal=all(any(((abs(lit) in truth)==(lit>0)) for lit in clause) for clause in clauses)
            if legal!=avoids_triples(row): raise ValueError("Encoding disagrees with the direct checker")
            valid+=legal
        outcomes[str(n)]={"colorings":2**n,"avoiding":valid}
    if outcomes["8"]["avoiding"]==0 or outcomes["9"]["avoiding"]!=0:
        raise ValueError("Known exact control failed")
    return outcomes

def solve_probe(budget, scratch):
    from pysat.solvers import Solver
    with Solver(name="g4", bootstrap_with=formula(171,5), with_proof=True) as solver:
        solver.conf_budget(budget)
        result=solver.solve_limited()
        outcome={"result":result,"statistics":solver.accum_stats()}
        if result is True:
            outcome["positives"]=[x for x in solver.get_model() if x>0]
        if result is False:
            (scratch/"probe.drat").write_text("\n".join(solver.get_proof())+"\n",encoding="ascii")
        print(json.dumps(outcome))

def main():
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument("operation",choices=["control","encode","probe"])
    cli.add_argument("--cnf",type=Path,help="write a new DIMACS file for [171] with five colors")
    cli.add_argument("--conflicts",type=int,default=4000,help="conflict budget for the optional PySAT g4 probe")
    cli.add_argument("--seconds",type=int,default=20,help="hard wall-clock limit for the isolated 171-position solver process")
    cli.add_argument("--drat-trim",type=Path,help="independent DRAT verifier for UNSAT and the known control")
    cli.add_argument("--receipt",type=Path,help="write a new JSON record")
    args=cli.parse_args()
    if args.conflicts<1: cli.error("choose a positive conflict budget")
    if args.seconds<1: cli.error("choose a positive wall-clock limit")
    if any(path and path.exists() for path in (args.cnf,args.receipt)):
        cli.error("choose a new path for each output")
    cases=formula(171,5)
    data=dimacs(171,5,cases)
    report={"target":"five colors on [1,171], avoiding every monochromatic three-term progression",
            "colors":5,"positions":171,"variables":855,"progressions":sum(1 for _ in triples(171)),
            "clauses":len(cases),"dimacs_sha256":sha256(data).hexdigest()}
    if args.cnf: args.cnf.write_bytes(data)
    if args.operation=="control":
        report["control_W_2_3"]=control()
        report["large_target"]="encoding generated"
    if args.operation=="probe":
        try:
            import pysat
            from pysat.solvers import Solver
        except ImportError: cli.error("probe requires python-sat; control and encode use only the standard library")
        report["solver"]={"implementation":"Glucose 4","python_sat":pysat.__version__,"conflict_budget":args.conflicts}
        with tempfile.TemporaryDirectory(prefix="mathcase-vdw-") as tmp:
            scratch=Path(tmp)
            def verify_drat(clauses,n,c,proof):
                cnf=scratch/"input.cnf"; drat=scratch/"proof.drat"
                cnf.write_bytes(dimacs(n,c,clauses))
                drat.write_bytes(("\n".join(proof)+"\n").encode("ascii"))
                check=subprocess.run([str(args.drat_trim.resolve()),str(cnf),str(drat)],
                                     capture_output=True,timeout=180)
                if check.returncode!=0 or b"s VERIFIED" not in check.stdout:
                    raise ValueError("Independent DRAT verification did not accept the refutation")
                return {"status":"verified","proof_sha256":sha256(drat.read_bytes()).hexdigest(),
                        "clauses_in_trace":len(proof)}
            if args.drat_trim:
                small=formula(9,2)
                with Solver(name="g4",bootstrap_with=small,with_proof=True) as solver:
                    if solver.solve() is not False: raise ValueError("Small UNSAT control failed")
                    report["control_DRAT_W_2_3"]=verify_drat(small,9,2,solver.get_proof())
            report["solver"]["wall_limit_seconds"]=args.seconds
            started=time.monotonic()
            try:
                child=subprocess.run([sys.executable,"-B",str(Path(__file__).resolve()),
                                      "--solve-worker",str(args.conflicts),str(scratch)],
                                     capture_output=True,timeout=args.seconds,check=True,text=True)
            except subprocess.TimeoutExpired:
                report["large_target"]="UNKNOWN_WALL_LIMIT"
            else:
                outcome=json.loads(child.stdout)
                result=outcome["result"]
                report["solver"]["statistics"]=outcome["statistics"]
                if result is None:
                    report["large_target"]="UNKNOWN_BUDGET_EXHAUSTED"
                elif result:
                    positives=set(outcome["positives"])
                    row=[next(c for c in range(5) if 1+5*x+c in positives) for x in range(171)]
                    if not avoids_triples(row): raise ValueError("Solver model failed the independent progression checker")
                    report.update(large_target="VALID_171_COLORING", coloring=row)
                elif args.drat_trim:
                    proof=(scratch/"probe.drat").read_text(encoding="ascii").splitlines()
                    report["large_refutation"]=verify_drat(cases,171,5,proof)
                    report["large_target"]="UNSAT_INDEPENDENTLY_CHECKED"
                else:
                    report["large_target"]="UNSAT_REPORTED_AWAITING_INDEPENDENT_CHECK"
            report["elapsed_seconds"]=round(time.monotonic()-started,3)
    text=json.dumps(report,indent=2)+"\n"
    if args.receipt:
        with args.receipt.open("x",encoding="utf-8") as output: output.write(text)
    print(text,end="")

if __name__=="__main__":
    if len(sys.argv)==4 and sys.argv[1]=="--solve-worker":
        solve_probe(int(sys.argv[2]), Path(sys.argv[3]))
    else:
        main()
