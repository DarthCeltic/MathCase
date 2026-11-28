import hashlib,json,random,time,itertools,importlib.util,sys
from pathlib import Path
root=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('ws',root/'verify_weak_schur.py');ws=importlib.util.module_from_spec(spec);spec.loader.exec_module(ws)
cache=root
raw={n:(root/n).read_bytes() for n in ('rowley','vicenzi')}
row=ws.source('rowley',cache); vic=ws.source('vicenzi',cache)
triples=[(a,b,a+b) for a in range(1,209) for b in range(a+1,209) if a+b<=208]
inc=[[] for _ in range(209)]
for i,t in enumerate(triples):
 for x in t: inc[x].append(i)
def direct(c): return [[a,b,d,c[a]] for a in range(1,len(c)) for b in range(a+1,len(c)) for d in [a+b] if d<len(c) and c[a]==c[b]==c[d]]
def bitcheck(c):
 masks=[0]*6
 for x in range(1,209):masks[c[x]]|=1<<x
 out=[]
 for col in range(1,6):
  m=masks[col]
  for a in range(1,105):
   if (m>>a)&1:
    elig=m&(m>>a)&((1<<209)-1)&~((1<<(a+1))-1)
    while elig:
     bit=elig&-elig;b=bit.bit_length()-1
     if a+b<=208:out.append([a,b,a+b,col])
     elig-=bit
 return sorted(out)
def crossover(block,shift,pattern,append):
 c=[0]*209
 for i in range(1,208):
  seg=((i+shift)//block)
  use=(seg%2==pattern)
  c[i]=(row if use else vic)[i]
 c[208]=append
 return c
def conflicts(c):return [False if c[a]!=c[b] or c[a]!=c[d] else True for a,b,d in triples]
def run():
 started=time.monotonic(); cap=30; rng=random.Random(20261128); best=None;bestn=10**9; starts=[]; moves=0; timed=False
 designs=[(4,0,0),(7,2,0),(11,1,1),(16,3,1),(23,5,0),(31,7,1),(43,9,0),(64,13,1),(17,0,1),(29,4,0)]
 for di,(block,shift,pat) in enumerate(designs):
  for app in (1,2,3,4,5):
   if time.monotonic()-started>=cap:timed=True;break
   c=crossover(block,shift,pat,app); bad=conflicts(c); count=sum(bad); initial=count; local=0; localbest=count
   while local<1200 and time.monotonic()-started<cap and count:
    ti=rng.choice([i for i,x in enumerate(bad) if x]); vars=triples[ti]; opts=[]
    for x in vars:
     old=c[x]
     for nc in range(1,6):
      if nc==old:continue
      delta=0
      for j in inc[x]:
       a,b,d=triples[j]; before=bad[j]
       ca,cb,cd=c[a],c[b],c[d]
       if x==a: after=(nc==cb==cd)
       elif x==b: after=(ca==nc==cd)
       else: after=(ca==cb==nc)
       delta+=int(after)-int(before)
      opts.append((delta,x,nc))
    md=min(o[0] for o in opts); cand=[o for o in opts if o[0]==md]
    if md>0 and rng.random()<0.82:
     cand=[o for o in opts if o[0]<=md+1]
    delta,x,nc=rng.choice(cand); c[x]=nc
    for j in inc[x]:
     a,b,d=triples[j];bad[j]=(c[a]==c[b]==c[d])
    count=sum(bad);local+=1;moves+=1
    if count<localbest:localbest=count
    if count<bestn:bestn=count;best=c.copy();best_meta={'design':{'block':block,'shift':shift,'pattern':pat,'append_208':app},'start_conflicts':initial,'local_moves':local,'global_moves':moves}
   starts.append({'design':{'block':block,'shift':shift,'pattern':pat,'append_208':app},'initial':initial,'best':localbest,'moves':local})
  if timed:break
 elapsed=time.monotonic()-started
 d=direct(best); b=bitcheck(best); pinned=ws.verify(best)
 damage=best.copy();damage[1:]=[1]*208; dd=direct(damage);db=bitcheck(damage);dp=ws.verify(damage)
 # controls on both 207 seeds
 base={}
 for name,c in [('rowley',row),('vicenzi',vic)]:base[name]={'direct':len(direct(c)),'pinned':ws.verify(c)['monochromatic']}
 return {'schema':'ws5-208-block-crossover-repair-v1','status':'WITNESS_FOUND' if not d else ('WALL_CAP_NO_WITNESS' if timed or elapsed>=cap else 'DESIGN_SET_EXHAUSTED_NO_WITNESS'),'target':'five-color weak Schur coloring of 1..208; only distinct a<b with a+b<=208','method':'contiguous-block crossover of two pinned 207 witnesses with five append colors, followed by greedy conflict-delta local repair; blocks can change many inherited positions, unlike fixed-radius neighborhoods','source_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in [root/'verify_weak_schur.py',root/'rowley',root/'vicenzi']},'source_receipt_sha256':{'rowley':'dadba1c3277c9b360693b23f9309174c92128002785b2752d916b34db4c61e63','vicenzi':'2393698ef49eba4b100b3e048e2ddc28c7db99d99cfa525ba3ba7450d0f35c0b'},'seed':20261128,'wall_cap_seconds':cap,'elapsed_seconds':round(elapsed,3),'evaluated_starts':len(starts),'local_move_cap_per_start':1200,'actual_moves':moves,'best_violations':len(d),'best_coloring':best[1:],'best_coloring_sha256':hashlib.sha256((''.join(map(str,best[1:]))+'\n').encode()).hexdigest(),'best_origin':best_meta,'violated_triples':d,'independent_bitset_violations':len(b),'checkers_agree':d==b,'pinned_verifier':pinned,'damaged_control_all_color_1':{'direct':len(dd),'bitset':len(db),'pinned':dp['monochromatic'],'rejects':bool(dd) and dd==db and len(dd)==dp['monochromatic']},'baseline_controls':base,'triple_count':len(triples),'designs':starts,'limits':['No valid 208 coloring found in this bounded crossover/local-repair experiment.','This is not an impossibility result and does not alter the published 207 lower-bound construction.','No Lean, external solver, paid compute, or publication.']}
r=run();(root/'result.json').write_text(json.dumps(r,indent=2)+'\n',encoding='utf-8'); print(json.dumps({k:r[k] for k in ['status','elapsed_seconds','evaluated_starts','actual_moves','best_violations','best_origin','violated_triples','checkers_agree','damaged_control_all_color_1']},indent=2))

