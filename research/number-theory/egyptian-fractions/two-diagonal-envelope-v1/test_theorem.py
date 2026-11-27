"""Small exact regression checks for boundary cases and the second family."""
from verify import D, lower_index, predicted, inspect_prime, max_certified_slack, theorem_hypotheses

# Strict j>=2 inequality, including the t=0 and t=1 edges, follows from the s condition.
for b_index in range(16, 500):
    for s in range(0, 2*b_index+1):
        if s*(s-3) < 4*b_index-1:
            for t in range(s+1):
                assert 4*t*(t+1) < 2*(8*(b_index+t)-2), (b_index,s,t)
# The j=1 formula is inadmissible at t=0 (a>=b), but admissible at t=1.
assert 21-0-1+2 >= 21+0
assert 21-1-1+2 < 21+1
# Check every t in the B=16..20 bands before the first qualifying j=1 case.
j1_candidates=[]
for B in range(16,21):
    for t in range(1,31):
        if t*(t-3) >= 4*B-1: continue
        p=D(B)-4*t*(t+1)+8*(B+t)-2
        if p>=43 and lower_index(p)==B and all(theorem_hypotheses(p,B,t).values()):
            j1_candidates.append((p,B,t))
assert min(p for p,_,_ in j1_candidates)==1471
# For B>=21, p>D(B-1)>=D(20)=1481, so none can precede 1471.
r=inspect_prime(1471)
assert r['status']=='certified' and r['s']==7
assert r['families']==[(378,20594,39717)]
# The p=1637 triple lands exactly on the requested 28p cap.
r=inspect_prime(1637,7)
assert r['status']=='certified'
assert all(r['hypotheses'].values())
assert r['families']==[(420,24555,45836)]
assert r['families'][0][2]==28*1637 and r['cap']==28*1637
assert D(21)-1637 == 2
# p=887 is certified at maximal s=5, but the tempting s=7 window fails D(B+s)<2p.
assert lower_index(887)==16 and max_certified_slack(887)==5
assert inspect_prime(887,5)['status']=='certified' and predicted(887,16,5)==[]
wide=inspect_prime(887,7)
assert wide['status']=='out_of_scope' and wide['families']==[]
assert not wide['hypotheses']['D_B_plus_s_lt_2p']
a,b,p=10,23,887
d=4*a*b-a-b
x=p*a*b//d
assert d==p and (x,a*p,b*p)==(230,8870,20401)
assert D(23)>2*p
assert 1979==D(23) and 1774==2*p
# A second p=821 decomposition lies beyond the theorem's 16p cap.
p=821
extra=(209,22*p,38*p)
assert 4*extra[0]*extra[1]*extra[2] == p*(extra[0]*extra[1]+extra[0]*extra[2]+extra[1]*extra[2])
assert extra[2] > 16*p
print('boundary checks passed; earliest j=1 p=1471; p=1637 endpoint; p=887 s=7 rejected; p=821 extra triple')
