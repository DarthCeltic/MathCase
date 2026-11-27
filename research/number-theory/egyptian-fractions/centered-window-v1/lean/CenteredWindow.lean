import PrimeBand

/-! Classification by the integer center of a pair of denominator multipliers.
At most one of the four consecutive centers B through B+3 is possible. -/

namespace MathCase.PrimeBand.CenteredWindow

def WithCenter (p c r x y z : Int) : Prop :=
  0<c-r-1 ∧ x=(c-r-1)*(c+r) ∧ y=(c-r-1)*p ∧ z=(c+r)*p

/-- This equivalence needs the two size caps, with no bound on the number of centers. -/
theorem classification {p B s x y z : Int} (hp : Prime p) (large : 43≤p)
    (hb : 16≤B) (hl : D (B-1)<p) (_hh : p≤D B) (_hs : 0≤s)
    (hc : 4*(B+s)-1<p) (hd : D (B+s)<2*p) :
    UnderCap p ((B+s)*p) x y z ↔
      ∃ c r, B≤c ∧ 0≤r ∧ c+r≤B+s ∧ p=D c-4*r*(r+1) ∧ WithCenter p c r x y z := by
  constructor
  · rintro ⟨pos,hxy,hyz,rep,cap⟩
    obtain ⟨a,b,apos,ab,bmin,bmax,eqn,hx,hy,hz⟩ :=
      reduced_pair hp large pos hxy hyz rep hl cap hc hd
    have even := parity (B:=b) (t:=0) (by simpa using eqn) (prime_odd hp large)
    let r := (b-a-1)/2
    let c := b-r
    have rpos : 0≤r := by dsimp [r]; omega
    have av : c-r-1=a := by dsimp [c,r]; omega
    have bv : c+r=b := by dsimp [c]; omega
    have v := central_pair c r
    rw [av,bv,← eqn] at v
    have hprod := Int.mul_nonneg rpos (show 0≤r+1 by omega)
    have cm : B≤c := by
      apply Classical.byContradiction
      intro small
      have cc : 1≤c := by omega
      have h := D_nondecreasing cc (show c≤B-1 by omega)
      grind
    refine ⟨c,r,cm,rpos,by omega,v,?_⟩
    unfold WithCenter
    rw [av,bv]
    exact ⟨by omega,hx,hy,hz⟩
  · rintro ⟨c,r,cm,rpos,cap,eqn,ap,hx,hy,hz⟩
    have d : multiplierValue (c-r-1) (c+r)=p := (central_pair c r).trans eqn.symm
    unfold UnderCap
    rw [hx,hy,hz]
    exact ⟨Int.mul_pos ap (by omega), Int.mul_lt_mul_of_pos_left (by omega) ap,
      Int.mul_lt_mul_of_pos_right (by omega) (by omega), realizes d,
      Int.mul_le_mul_of_nonneg_right cap (by omega)⟩

private theorem even_adjacent (n : Int) : ∃ k : Int, n*(n+1)=2*k := by
  by_cases h : n%2=0
  · have e : n=2*(n/2) := by omega
    exact ⟨(n/2)*(n+1),by grind⟩
  · have e : n+1=2*((n+1)/2) := by omega
    exact ⟨n*((n+1)/2),by grind⟩

/-- In every representation in this range, two times the center is 1-p modulo eight. -/
theorem center_residue {p c r : Int} (h : p=D c-4*r*(r+1)) :
    ∃ k : Int, p=1-2*c+8*k := by
  obtain ⟨u,hu⟩ := even_adjacent (c-1)
  obtain ⟨v,hv⟩ := even_adjacent r
  exact ⟨u-v,by unfold D at h; grind⟩

theorem center_lt_fourth_successor {p B s c r : Int} (hb : 16≤B)
    (hp : p≤D B) (hs : s*(s-7)<8*B-2) (cm : B≤c) (hr : 0≤r)
    (hcap : c+r≤B+s) (h : p=D c-4*r*(r+1)) : c<B+4 := by
  let t := c+r-B
  have ht : 0≤t := by dsimp [t]; omega
  have hts : t≤s := by dsimp [t]; omega
  have small : t*(t-7)<8*B-2 := by
    by_cases pos : 0≤s+t-7
    · have hmul := Int.mul_nonneg (show 0≤s-t by omega) pos
      grind
    · have hmul := Int.mul_nonpos_of_nonneg_of_nonpos ht (show t-7≤0 by omega)
      omega
  apply Classical.byContradiction
  intro far
  have steps : B-t+7≤c-r-1 := by dsimp [t]; omega
  have upper := slope_nondecreasing (show 1≤c+r by omega) steps
  have d := central_pair c r
  have br : c+r=B+t := by dsimp [t]; omega
  have at_four : multiplierValue (B-t+7) (B+t) = D B-4*(t*(t-7))+32*B-8 := by
    unfold multiplierValue D
    grind
  rw [br] at upper d
  omega

/-- If the maximum center is B+3, the single residue class modulo four forces uniqueness. -/
theorem unique_under_cap {p B s x y z x' y' z' : Int} (hp : Prime p) (large : 43≤p)
    (hb : 16≤B) (hl : D (B-1)<p) (hh : p≤D B) (hs : 0≤s)
    (hc : 4*(B+s)-1<p) (hd : D (B+s)<2*p) (width : s*(s-7)<8*B-2)
    (one : UnderCap p ((B+s)*p) x y z) (two : UnderCap p ((B+s)*p) x' y' z') :
    x=x' ∧ y=y' ∧ z=z' := by
  obtain ⟨c,r,cm,hr,cr,e,coords⟩ := (classification hp large hb hl hh hs hc hd).mp one
  obtain ⟨d,q,dm,hq,dq,f,other⟩ := (classification hp large hb hl hh hs hc hd).mp two
  have cu := center_lt_fourth_successor hb hh width cm hr cr e
  have du := center_lt_fourth_successor hb hh width dm hq dq f
  obtain ⟨i,hi⟩ := center_residue e
  obtain ⟨j,hj⟩ := center_residue f
  have cd : c=d := by omega
  subst d
  have poly : r*(r+q+1)=q*(r+q+1) := by grind
  have rq : r=q := Int.eq_of_mul_eq_mul_right (by omega) poly
  subst q
  obtain ⟨_,hx,hy,hz⟩ := coords
  obtain ⟨_,hx',hy',hz'⟩ := other
  exact ⟨hx.trans hx'.symm,hy.trans hy'.symm,hz.trans hz'.symm⟩

private theorem no_small_divisor : ∀ n : Fin 159, 2≤n.val → 25121%n.val≠0 := by
  decide

private theorem divisors_of_boundary {d : Nat} (dvd : d ∣ 25121) : d=1 ∨ d=25121 := by
  obtain ⟨k,h⟩ := dvd
  have small_one (n : Nat) (hp : 0<n) (hs : n<159) (hd : n ∣ 25121) : n=1 := by
    apply Classical.byContradiction
    intro hn
    exact no_small_divisor ⟨n,hs⟩ (show 2≤n by omega) (Nat.mod_eq_zero_of_dvd hd)
  have dpos : 0<d := by
    by_cases e : d=0
    · simp [e] at h
    · omega
  have kpos : 0<k := by
    by_cases e : k=0
    · simp [e] at h
    · omega
  by_cases sm : d<159
  · exact Or.inl (small_one d dpos sm ⟨k,h⟩)
  · have ks : k<159 := by
      apply Classical.byContradiction
      intro nk
      have high := Nat.mul_le_mul (show 159≤d by omega) (show 159≤k by omega)
      omega
    have ek := small_one k kpos ks ⟨d,by grind⟩
    right
    grind

/-- Primality is part of the checked counterexample. Kernel evaluation tests
every potential divisor up to the square root; the gcd argument gives Euclid's property. -/
theorem boundary_prime : Prime 25121 := by
  refine ⟨by decide,?_⟩
  intro a b h
  have dg : Int.gcd 25121 a ∣ 25121 := Int.gcd_dvd_natAbs_left 25121 a
  rcases divisors_of_boundary dg with one | all
  · right
    have e := Int.gcd_mul_right_right_of_gcd_eq_one (k:=b) one
    have f : Int.gcd 25121 (a*b) = 25121 := Int.gcd_eq_natAbs_left h
    have d := Int.gcd_dvd_right 25121 b
    rwa [← e,f] at d
  · left
    have d := Int.gcd_dvd_right 25121 a
    rwa [all] at d

/-- At equality in the width test the two possible centers are 80 and 84. -/
theorem equality_counterexample :
    Prime 25121 ∧ D 79 < 25121 ∧ 25121 = D 80 ∧
    4*(80+29)-1 < (25121:Int) ∧ D (80+29)<2*25121 ∧
    (29:Int)*(29-7)=8*80-2 ∧
    UnderCap 25121 ((80+29)*25121) 6320 1984559 2009680 ∧
    UnderCap 25121 ((80+29)*25121) 6322 1457018 2738189 ∧ (6320:Int)≠6322 := by
  refine ⟨boundary_prime,?_⟩
  unfold UnderCap Represents D
  decide

end MathCase.PrimeBand.CenteredWindow
