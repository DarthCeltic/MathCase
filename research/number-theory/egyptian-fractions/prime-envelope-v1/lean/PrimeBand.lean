import Std

/-! Exact near-minimum bounds for three distinct Egyptian-fraction denominators.
The equation is stated over positive integers after clearing denominators.
The public statements are `floor_bound`, `at_floor`, `classification`,
and `unique_under_cap`. Only Lean's standard library is required. -/

namespace MathCase.PrimeBand

def D (b : Int) : Int := 4*b*b - 6*b + 1
def multiplierValue (a b : Int) : Int := 4*a*b - a - b

theorem central_pair (B t : Int) :
    multiplierValue (B-t-1) (B+t) = D B - 4*t*(t+1) := by
  unfold multiplierValue D
  grind

theorem value_difference (a c b : Int) :
    multiplierValue a b - multiplierValue c b = (4*b-1)*(a-c) := by
  unfold multiplierValue
  grind

theorem slope_nondecreasing {a c b : Int} (hb : 1 ≤ b) (h : a ≤ c) :
    multiplierValue a b ≤ multiplierValue c b := by
  have hsign : 0 ≤ (4*b-1)*(c-a) :=
    Int.mul_nonneg (by omega) (by omega)
  have hv := value_difference c a b
  omega

theorem parity {a B t p : Int} (heq : p = multiplierValue a (B+t))
    (hp : p % 2 = 1) : (a-(B-t-1)) % 2 = 0 := by
  have h : p + a + (B+t) = 4*(a*(B+t)) := by unfold multiplierValue at heq; grind
  omega

theorem forced_multiplier {a B t p : Int}
    (hB : 1 ≤ B) (ht : 0 ≤ t) (hwidth : (t+1)*(t+1) ≤ B)
    (hlo : D (B-1) < p) (hhi : p ≤ D B) (hodd : p%2=1)
    (hrep : p = multiplierValue a (B+t)) : a = B-t-1 := by
  have even := parity hrep hodd
  have hb : 1 ≤ B+t := by omega
  have prod : 0 ≤ t*(t+1) := Int.mul_nonneg ht (by omega)
  have prod_le : t*(t+1) ≤ B := by grind
  by_cases hlt : a < B-t-1
  · have ha : a ≤ B-t-1-2 := by omega
    have hm := slope_nondecreasing hb ha
    have hpoly : multiplierValue (B-t-1-2) (B+t) =
        D (B-1) - 8 - 8*t - 4*(t*(t+1)) := by unfold multiplierValue D; grind
    omega
  · by_cases hgt : B-t-1 < a
    · have ha : B-t-1+2 ≤ a := by omega
      have hm := slope_nondecreasing hb ha
      have hpoly : multiplierValue (B-t-1+2) (B+t) =
          D B - 4*(t*(t+1)) + 8*(B+t)-2 := by unfold multiplierValue D; grind
      omega
    · omega

/-- A positive nonunit prime element of the integers, by divisibility of products. -/
def Prime (p : Int) : Prop := 1 < p ∧ ∀ a b : Int, p ∣ a*b → p ∣ a ∨ p ∣ b

def Represents (p x y z : Int) : Prop := 4*x*y*z = p*(x*y+x*z+y*z)

theorem prime_odd {p : Int} (hp : Prime p) (large : 43 ≤ p) : p % 2 = 1 := by
  apply Classical.byContradiction
  intro h
  have e : p = 2*(p/2) := by omega
  have dv : p ∣ 2*(p/2) := ⟨1, by omega⟩
  rcases hp.2 2 (p/2) dv with h2 | hh
  · have := Int.le_of_dvd (by decide : (0:Int)<2) h2
    omega
  · have := Int.le_of_dvd (show 0 < p/2 by omega) hh
    omega

theorem smallest_lt_prime {p x y z : Int} (pos : 0 < x) (hxy : x<y) (hyz : y<z)
    (hr : Represents p x y z) : x < p := by
  apply Classical.byContradiction
  intro small
  have hpz : p ≤ z := by omega
  have hpy : p ≤ y := by omega
  have hpx : p ≤ x := by omega
  have h1 := Int.mul_le_mul_of_nonneg_right hpz (Int.mul_nonneg (show 0≤x by omega) (show 0≤y by omega))
  have h2 := Int.mul_le_mul_of_nonneg_right hpy (Int.mul_nonneg (show 0≤x by omega) (show 0≤z by omega))
  have h3 := Int.mul_le_mul_of_nonneg_right hpx (Int.mul_nonneg (show 0≤y by omega) (show 0≤z by omega))
  have hz : 0 < x*y*z := Int.mul_pos (Int.mul_pos pos (by omega)) (by omega)
  unfold Represents at hr
  grind

theorem one_multiple_impossible {p u v k c : Int} (hp : Prime p) (hu : ¬ p ∣ u) (hv : ¬ p ∣ v)
    (hk : 0<k) (hkc : k ≤ c) (hc : 4*c-1<p) (hrep : Represents p u v (k*p)) : False := by
  have hh : p*((4*k-1)*u*v) = p*(p*(k*(u+v))) := by unfold Represents at hrep; grind
  have he := Int.eq_of_mul_eq_mul_left (show p ≠ 0 by have := hp.1; omega) hh
  have hd : p ∣ ((4*k-1)*u)*v := ⟨k*(u+v), he⟩
  rcases hp.2 _ _ hd with h | h
  · rcases hp.2 _ _ h with h | h
    · have := Int.le_of_dvd (show 0 < 4*k-1 by omega) h
      omega
    · exact hu h
  · exact hv h

theorem D_nondecreasing {b c : Int} (hb : 1 ≤ b) (h : b ≤ c) : D b ≤ D c := by
  have prod := Int.mul_nonneg (show 0≤c-b by omega) (show 0≤4*(c+b)-6 by omega)
  unfold D
  grind

theorem band_caps {B s p : Int} (hb : 16 ≤ B) (hs : 0 ≤ s)
    (hw : (s+1)*(s+1) ≤ B) (hl : D (B-1) < p) :
    4*(B+s)-1 < p ∧ D (B+s) < 2*p := by
  have sq := Int.sq_nonneg (s-1)
  have h4 : 4*s ≤ B := by grind
  have hlarge := Int.mul_nonneg (show 0≤B by omega) (show 0≤B-16 by omega)
  have upper := Int.mul_nonneg (show 0≤5*B-4*(B+s) by omega) (show 0≤5*B+4*(B+s) by omega)
  unfold D at *
  constructor <;> grind

/-- A single multiple kp would force p to divide the positive number 4k − 1. -/
theorem two_multiples {p x y z c : Int} (hp : Prime p) (large : 43 ≤ p)
    (pos : 0<x) (hxy : x<y) (hyz : y<z) (hr : Represents p x y z)
    (cap : z≤c*p) (hc : 4*c-1 < p) : ¬ p ∣ x ∧ p ∣ y ∧ p ∣ z := by
  have hn : ¬ p ∣ x := by
    intro h
    have := Int.le_of_dvd pos h
    have := smallest_lt_prime pos hxy hyz hr
    omega
  have total : p ∣ 4*x*y*z := ⟨x*y+x*z+y*z, hr⟩
  have cover : p ∣ y ∨ p ∣ z := by
    rcases hp.2 _ _ total with h | h
    · rcases hp.2 _ _ h with h | h
      · rcases hp.2 _ _ h with h | h
        · have := Int.le_of_dvd (by decide : (0:Int)<4) h
          omega
        · exact False.elim (hn h)
      · exact Or.inl h
    · exact Or.inr h
  have ppos : 0 < p := by omega
  have yp : p ∣ y := by
    apply Classical.byContradiction
    intro no
    obtain ⟨k,hk⟩ := cover.resolve_left no
    have hpos : 0<k*p := by grind
    have hkpos := Int.pos_of_mul_pos_left hpos ppos
    have hcap : k*p≤c*p := by grind
    apply one_multiple_impossible hp hn no hkpos (Int.le_of_mul_le_mul_right hcap ppos) hc
    unfold Represents at *
    grind
  have zp : p ∣ z := by
    apply Classical.byContradiction
    intro no
    obtain ⟨k,hk⟩ := yp
    have hpos : 0<k*p := by grind
    have hkpos := Int.pos_of_mul_pos_left hpos ppos
    have hcap : k*p≤c*p := by grind
    apply one_multiple_impossible hp hn no hkpos (Int.le_of_mul_le_mul_right hcap ppos) hc
    unfold Represents at *
    grind
  exact ⟨hn,yp,zp⟩

/-- Below these two explicit caps, every triple has the form (ab, ap, bp)
with p = 4ab − a − b. No factorization data enter the hypothesis. -/
theorem reduced_pair {p x y z B s : Int} (hp : Prime p) (large : 43 ≤ p)
    (pos : 0<x) (hxy : x<y) (hyz : y<z) (hr : Represents p x y z)
    (hlo : D (B-1)<p)
    (hcap : z ≤ (B+s)*p) (hc : 4*(B+s)-1 < p) (hd : D (B+s) < 2*p) :
    ∃ a b, 1≤a ∧ a<b ∧ B≤b ∧ b≤B+s ∧
      p = multiplierValue a b ∧ x=a*b ∧ y=a*p ∧ z=b*p := by
  obtain ⟨hn,⟨a,ay⟩,⟨b,bz⟩⟩ := two_multiples hp large pos hxy hyz hr hcap hc
  have pp : 0<p := by omega
  have yap : y=a*p := by grind
  have zbp : z=b*p := by grind
  have apos := Int.pos_of_mul_pos_left (show 0<a*p by omega) pp
  have ab := Int.lt_of_mul_lt_mul_right (show a*p<b*p by omega) (show 0≤p by omega)
  have bcap := Int.le_of_mul_le_mul_right (show b*p≤(B+s)*p by omega) pp
  have factor : (p*p)*(multiplierValue a b*x) = (p*p)*(p*(a*b)) := by
    unfold multiplierValue
    unfold Represents at hr
    grind
  have nonzero : p*p ≠ 0 := by have := Int.mul_pos pp pp; omega
  have eqn := Int.eq_of_mul_eq_mul_left nonzero factor
  have divides : p ∣ multiplierValue a b*x := ⟨a*b,eqn⟩
  have pd := (hp.2 _ _ divides).resolve_right hn
  have lower := slope_nondecreasing (show 1≤b by omega) (show 1≤a by omega)
  have m1 : multiplierValue 1 b = 3*b-1 := by unfold multiplierValue; grind
  have dpos : 0<multiplierValue a b := by omega
  have dp := Int.le_of_dvd dpos pd
  have upper := slope_nondecreasing (show 1≤b by omega) (show a≤b-1 by omega)
  have dmax : multiplierValue (b-1) b = D b := by unfold multiplierValue D; grind
  have bmin : B≤b := by
    apply Classical.byContradiction
    intro smaller
    have := D_nondecreasing (show 1≤b by omega) (show b≤B-1 by omega)
    omega
  have iv := D_nondecreasing (show 1≤b by omega) bcap
  have only : multiplierValue a b = p := by
    obtain ⟨k,hk⟩ := pd
    have h1 := Int.pos_of_mul_pos_left (show 0<k*p by grind) pp
    have h2 := Int.lt_of_mul_lt_mul_right (show k*p<2*p by grind) (show 0≤p by omega)
    have : k=1 := by omega
    grind
  have prod : x=a*b := Int.eq_of_mul_eq_mul_left (by omega : p≠0) (by rw [← only] at eqn ⊢; exact eqn)
  exact ⟨a,b,by omega,ab,bmin,bcap,only.symm,prod,yap,zbp⟩

def UnderCap (p cap x y z : Int) : Prop :=
  0 < x ∧ x < y ∧ y < z ∧ Represents p x y z ∧ z ≤ cap

def AtOffset (B p t x y z : Int) : Prop :=
  x = (B-t-1)*(B+t) ∧ y = (B-t-1)*p ∧ z = (B+t)*p

theorem realizes {a b p : Int} (h : multiplierValue a b = p) :
    Represents p (a*b) (a*p) (b*p) := by
  unfold Represents
  unfold multiplierValue at h
  rw [← h]
  grind

private theorem floor_caps {B p : Int} (hb : 5≤B) (hl : D (B-1)<p) :
    4*B-1<p ∧ D B < 2*p := by
  have growth := Int.mul_nonneg (show 0≤B-5 by omega) (show 0≤4*B-2 by omega)
  unfold D at *
  constructor <;> grind

/-- Every solution, with or without a requested upper cap, satisfies z ≥ Bp. -/
theorem floor_bound {p B x y z : Int} (hp : Prime p) (large : 43≤p)
    (base : 2≤B) (hl : D (B-1)<p) (hh : p≤D B)
    (pos : 0<x) (hxy : x<y) (hyz : y<z) (hr : Represents p x y z) : B*p≤z := by
  have hb : 5≤B := by
    apply Classical.byContradiction
    intro h
    have := D_nondecreasing (show 1≤B by omega) (show B≤4 by omega)
    have : D 4=41 := by decide
    omega
  obtain ⟨hc,hd⟩ := floor_caps hb hl
  apply Classical.byContradiction
  intro small
  obtain ⟨_,b,_,_,bmin,bmax,_,_,_,bz⟩ :=
    reduced_pair (s:=0) hp large pos hxy hyz hr hl (by simpa using (show z≤B*p by omega))
      (by simpa) (by simpa)
  have : b=B := by omega
  grind

/-- The lower floor is attained exactly for p = D(B), by one specified triple. -/
theorem at_floor {p B x y z : Int} (hp : Prime p) (large : 43≤p)
    (base : 2≤B) (hl : D (B-1)<p) (hh : p≤D B) :
    UnderCap p (B*p) x y z ↔
      p=D B ∧ x=(B-1)*B ∧ y=(B-1)*p ∧ z=B*p := by
  have hb : 5≤B := by
    apply Classical.byContradiction
    intro h
    have := D_nondecreasing (show 1≤B by omega) (show B≤4 by omega)
    have : D 4=41 := by decide
    omega
  obtain ⟨hc,hd⟩ := floor_caps hb hl
  constructor
  · rintro ⟨pos,hxy,hyz,hr,cap⟩
    obtain ⟨a,b,_,_,bmin,bmax,eqn,xe,ye,ze⟩ :=
      reduced_pair (s:=0) hp large pos hxy hyz hr hl (by simpa using cap) (by simpa) (by simpa)
    have beq : b=B := by omega
    subst b
    have ae := forced_multiplier (t:=0) (show 1≤B by omega) (by decide) (by simp; omega)
      hl hh (prime_odd hp large) (by simpa using eqn)
    simp at ae
    subst a
    have e : multiplierValue (B-1) B=D B := by unfold multiplierValue D; grind
    exact ⟨eqn.trans e,xe,ye,ze⟩
  · rintro ⟨ep,rfl,rfl,rfl⟩
    have eqn : multiplierValue (B-1) B=p := by unfold multiplierValue D at *; grind
    have pos : 0<B-1 := by omega
    exact ⟨Int.mul_pos pos (by omega), Int.mul_lt_mul_of_pos_left (by omega) pos,
      Int.mul_lt_mul_of_pos_right (by omega) (by omega), realizes eqn, by omega⟩

/-- Both directions of the exact window theorem, including all three coordinates. -/
theorem classification {p B s x y z : Int} (hp : Prime p) (large : 43 ≤ p)
    (hb : 16 ≤ B) (hl : D (B-1) < p) (hh : p ≤ D B)
    (hs : 0 ≤ s) (hw : (s+1)*(s+1) ≤ B) :
    UnderCap p ((B+s)*p) x y z ↔ ∃ t, 0≤t ∧ t≤s ∧
      D B - p = 4*t*(t+1) ∧ AtOffset B p t x y z := by
  obtain ⟨hc,hd⟩ := band_caps hb hs hw hl
  constructor
  · rintro ⟨pos,hxy,hyz,hr,hcap⟩
    obtain ⟨a,b,apos,ab,bmin,bmax,d,xe,ye,ze⟩ :=
      reduced_pair hp large pos hxy hyz hr hl hcap hc hd
    let t := b-B
    have ht : 0≤t := by dsimp [t]; omega
    have hts : t≤s := by dsimp [t]; omega
    have beq : b=B+t := by dsimp [t]; omega
    have order := Int.mul_nonneg (show 0≤s-t by omega) (show 0≤s+t+2 by omega)
    have small : (t+1)*(t+1) ≤ B := by grind
    have ae := forced_multiplier (show 1≤B by omega) ht small hl hh (prime_odd hp large) (show p=multiplierValue a (B+t) by simpa only [← beq] using d)
    have offset := central_pair B t
    refine ⟨t,ht,hts,?_,?_⟩
    · rw [← beq,← ae,← d] at offset
      omega
    · unfold AtOffset
      rw [← beq,← ae]
      exact ⟨xe,ye,ze⟩
  · rintro ⟨t,ht,hts,offset,xe,ye,ze⟩
    let a := B-t-1
    let b := B+t
    have c4 := Int.sq_nonneg (s-1)
    have h4 : 4*s≤B := by grind
    have pa : 0<a := by dsimp [a]; omega
    have ab : a<b := by dsimp [a,b]; omega
    have bp : b<p := by dsimp [b]; omega
    have prod : 0<a*b := Int.mul_pos pa (by omega)
    have xy := Int.mul_lt_mul_of_pos_left bp pa
    have yz := Int.mul_lt_mul_of_pos_right ab (show 0<p by omega)
    have zcap := Int.mul_le_mul_of_nonneg_right (show b≤B+s by dsimp [b]; omega) (show 0≤p by omega)
    have meq : multiplierValue a b = p := by
      have := central_pair B t
      dsimp [a,b]
      omega
    change x=a*b at xe
    change y=a*p at ye
    change z=b*p at ze
    unfold UnderCap
    rw [xe,ye,ze]
    exact ⟨prod,xy,yz,realizes meq,zcap⟩

theorem unique_under_cap {p B s x y z x' y' z' : Int} (hp : Prime p) (large : 43 ≤ p)
    (hb : 16 ≤ B) (hl : D (B-1) < p) (hh : p ≤ D B)
    (hs : 0 ≤ s) (hw : (s+1)*(s+1) ≤ B)
    (first : UnderCap p ((B+s)*p) x y z) (second : UnderCap p ((B+s)*p) x' y' z') :
    x=x' ∧ y=y' ∧ z=z' := by
  obtain ⟨t,ht,_,he,coordinates⟩ := (classification hp large hb hl hh hs hw).mp first
  obtain ⟨u,hu,_,hf,other⟩ := (classification hp large hb hl hh hs hw).mp second
  have pos : 0 < t+u+1 := by omega
  have mul : t*(t+u+1)=u*(t+u+1) := by grind
  have same : t=u := Int.eq_of_mul_eq_mul_right (by omega : t+u+1≠0) mul
  rw [← same] at other
  obtain ⟨hx,hy,hz⟩ := coordinates
  obtain ⟨hx',hy',hz'⟩ := other
  exact ⟨hx.trans hx'.symm,hy.trans hy'.symm,hz.trans hz'.symm⟩

end MathCase.PrimeBand
