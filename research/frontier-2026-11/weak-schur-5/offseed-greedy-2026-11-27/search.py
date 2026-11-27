"""Off-seed randomized constructive search for a 5-color weak-Schur 208 witness."""
import hashlib, json, random, time
from pathlib import Path

N=208; K=5
def triples(): return [(a,b,a+b) for c in range(3,N+1) for a in range(1,(c+1)//2) for b in [c-a] if a<b]
TS=triples()
def check(c):
    bad=[t for t in TS if c[t[0]]==c[t[1]]==c[t[2]]]
    return bad
def direct_check(c):
    bad=[]
    n=len(c)-1
    for a in range(1,n+1):
        for b in range(a+1,n+1-a):
            if c[a]==c[b]==c[a+b]: bad.append((a,b,a+b))
    return bad
def greedy(rng):
    c=[0]*(N+1)
    # Construct from scratch. At each n only already-colored a+b=n clauses matter.
    for n in range(1,N+1):
        scores=[]
        for col in range(1,K+1):
            score=sum(c[a]==c[n-a]==col for a in range(1,(n+1)//2))
            scores.append(score)
        m=min(scores); choices=[i+1 for i,s in enumerate(scores) if s==m]
        rng.shuffle(choices); c[n]=choices[0]
    return c
def repair(c,rng,moves):
    adj=[[] for _ in range(N+1)]
    for t in TS:
        for x in t: adj[x].append(t)
    bad=check(c); best=c[:]; bestn=len(bad); tabu={}; stall=0
    for move in range(1,moves+1):
        if not bad: return c,[],move
        t=rng.choice(bad); pos=rng.choice(t); old=c[pos]
        choices=list(range(1,K+1)); rng.shuffle(choices)
        bestcol=old; bestscore=10**9
        for col in choices:
            if col==old: continue
            delta=0
            for q in adj[pos]:
                before=(c[q[0]]==c[q[1]]==c[q[2]])
                vals=(col if q[0]==pos else c[q[0]], col if q[1]==pos else c[q[1]], col if q[2]==pos else c[q[2]])
                after=(vals[0]==vals[1]==vals[2]); delta+=int(after)-int(before)
            penalty=2 if tabu.get((pos,col),0)>move else 0
            if delta+penalty<bestscore: bestscore=delta+penalty; bestcol=col
        c[pos]=bestcol
        bad=check(c)
        tabu[(pos,old)]=move+9
        if len(bad)<bestn: bestn=len(bad); best=c[:]; stall=0
        else: stall+=1
        if stall>1800:
            c=best[:]
            for _ in range(18): c[rng.randrange(1,N+1)]=rng.randrange(1,K+1)
            bad=check(c); tabu.clear(); stall=0
    return best,check(best),moves
def main():
    out=Path(__file__).parent; master=2026112701; rng=random.Random(master)
    started=time.perf_counter(); wall=900; starts=0; records=[]; bestn=10**9; best=None
    while time.perf_counter()-started<wall:
        starts+=1; seed=rng.randrange(1<<30); r=random.Random(seed); c=greedy(r)
        initial=check(c); c2,bad,m=repair(c,r,25000); elapsed=time.perf_counter()-started
        rec={"start":starts,"seed":seed,"initial_conflicts":len(initial),"best_conflicts":len(bad),"moves":m,"elapsed_seconds":round(elapsed,3),"status":"SAT" if not bad else "NO_WITNESS"}
        if len(bad)<bestn:
            bestn=len(bad); best=c2[:]; rec["best_violations"]=[list(x) for x in bad]; records.append(rec)
            print(json.dumps(rec),flush=True)
            if not bad: break
    if best is None: best=[0]*(N+1)
    bad=direct_check(best)
    result={"schema":"weak-schur-offseed-greedy-v1","target":"5-color weak Schur 1..208, distinct a<b, a+b=c","master_seed":master,"wall_cap_seconds":wall,"elapsed_seconds":round(time.perf_counter()-started,3),"starts":starts,"best_conflicts":len(bad),"best_violations":[list(x) for x in bad],"best_coloring_1_to_208":best[1:],"records":records,"independent_direct_check_conflicts":len(bad),"claim_limit":"Randomized constructive/repair campaign only; no existence or nonexistence conclusion."}
    (out/"result.json").write_text(json.dumps(result,indent=2)+"\n")
    print(json.dumps({k:result[k] for k in ('status','starts','best_conflicts','elapsed_seconds') if k in result}))
if __name__=='__main__': main()
