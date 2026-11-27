import PrimeBand

/-! The two possible multiplier sums in the wider near-minimum window.
The two offset families occupy different residue classes modulo four. -/

namespace MathCase.PrimeBand.TwoDiagonal

def firstOffset (t : Int) : Int := 4*(t*(t+1))
def secondOffset (B t : Int) : Int := 4*(t*(t-1))-8*B+2

theorem adjacent_value (B t : Int) :
    multiplierValue (B-t+1) (B+t) = D B - secondOffset B t := by
  unfold multiplierValue D secondOffset
  grind

theorem two_possible {a B t p : Int} (hb : 16≤B) (ht : 0≤t)
    (width : t*(t-3)<4*B-1) (hl : D (B-1)<p) (hh : p≤D B)
    (ho : p%2=1) (hr : p=multiplierValue a (B+t)) :
    a=B-t-1 ∨ a=B-t+1 := by
  have even := parity hr ho
  have bpos : 1 ≤ B+t := by omega
  have prod : 0≤t*(t+1) := Int.mul_nonneg ht (by omega)
  by_cases small : a<B-t-1
  · have order := slope_nondecreasing bpos (show a≤B-t-3 by omega)
    have poly : multiplierValue (B-t-3) (B+t) =
        D (B-1)-8-8*t-4*(t*(t+1)) := by unfold multiplierValue D; grind
    omega
  · by_cases big : B-t+1<a
    · have order := slope_nondecreasing bpos (show B-t+3≤a by omega)
      have poly : multiplierValue (B-t+3) (B+t) =
          D B - 4*(t*(t-3)) +16*B-4 := by unfold multiplierValue D; grind
      omega
    · omega

theorem inside_width {s t B : Int} (hb : 16≤B) (ht : 0≤t) (hts : t≤s)
    (width : s*(s-3)<4*B-1) : t*(t-3)<4*B-1 := by
  by_cases h : 0≤s+t-3
  · have hmul := Int.mul_nonneg (show 0≤s-t by omega) h
    grind
  · have hmul := Int.mul_nonpos_of_nonneg_of_nonpos ht (show t-3≤0 by omega)
    omega

def Coordinates (p a b x y z : Int) : Prop :=
  0<a ∧ a<b ∧ x=a*b ∧ y=a*p ∧ z=b*p

def Candidate (B p t x y z : Int) : Prop :=
  (D B-p=firstOffset t ∧ Coordinates p (B-t-1) (B+t) x y z) ∨
  (D B-p=secondOffset B t ∧ Coordinates p (B-t+1) (B+t) x y z)

theorem classification {p B s x y z : Int} (hp : Prime p) (large : 43≤p)
    (hb : 16≤B) (hl : D (B-1)<p) (hh : p≤D B) (_hs : 0≤s)
    (hc : 4*(B+s)-1<p) (hd : D (B+s)<2*p) (hw : s*(s-3)<4*B-1) :
    UnderCap p ((B+s)*p) x y z ↔ ∃ t, 0≤t ∧ t≤s ∧ Candidate B p t x y z := by
  constructor
  · rintro ⟨pos,hxy,hyz,hr,cap⟩
    obtain ⟨a,b,apos,ab,bmin,bmax,eqn,xe,ye,ze⟩ :=
      reduced_pair hp large pos hxy hyz hr hl cap hc hd
    let t := b-B
    have ht : 0≤t := by dsimp [t]; omega
    have hts : t≤s := by dsimp [t]; omega
    have bval : b=B+t := by dsimp [t]; omega
    have d : p=multiplierValue a (B+t) := by rw [← bval]; exact eqn
    have forms := two_possible hb ht (inside_width hb ht hts hw) hl hh (prime_odd hp large) d
    refine ⟨t,ht,hts,?_⟩
    have coords : Coordinates p a (B+t) x y z := by rw [← bval]; exact ⟨by omega,ab,xe,ye,ze⟩
    rcases forms with h|h
    · left
      rw [h] at coords d
      exact ⟨by rw [central_pair] at d; unfold firstOffset; grind,coords⟩
    · right
      rw [h] at coords d
      exact ⟨by rw [adjacent_value] at d; omega,coords⟩
  · rintro ⟨t,ht,hts,h⟩
    have build (a : Int) (eqn : multiplierValue a (B+t)=p)
        (coords : Coordinates p a (B+t) x y z) : UnderCap p ((B+s)*p) x y z := by
      obtain ⟨apos,ab,rfl,rfl,rfl⟩ := coords
      exact ⟨Int.mul_pos apos (by omega),Int.mul_lt_mul_of_pos_left (by omega) apos,
        Int.mul_lt_mul_of_pos_right ab (by omega),realizes eqn,
        Int.mul_le_mul_of_nonneg_right (by omega) (by omega)⟩
    rcases h with ⟨he,coords⟩ | ⟨he,coords⟩
    · apply build _ _ coords
      unfold firstOffset at he
      rw [central_pair]
      grind
    · apply build _ _ coords
      rw [adjacent_value]
      omega

theorem first_injective {t u : Int} (ht : 0≤t) (hu : 0≤u)
    (h : firstOffset t=firstOffset u) : t=u := by
  unfold firstOffset at h
  have e : t*(t+u+1)=u*(t+u+1) := by grind
  exact Int.eq_of_mul_eq_mul_right (by omega) e

theorem second_injective {B t u : Int} (ht : 1≤t) (hu : 1≤u)
    (h : secondOffset B t=secondOffset B u) : t=u := by
  unfold secondOffset at h
  have e : t*(t+u-1)=u*(t+u-1) := by grind
  exact Int.eq_of_mul_eq_mul_right (by omega) e

theorem distinct_offsets (B t u : Int) : firstOffset t ≠ secondOffset B u := by
  unfold firstOffset secondOffset
  omega

theorem unique_under_cap {p B s x y z x' y' z' : Int} (hp : Prime p) (large : 43≤p)
    (hb : 16≤B) (hl : D (B-1)<p) (hh : p≤D B) (hs : 0≤s)
    (hc : 4*(B+s)-1<p) (hd : D (B+s)<2*p) (hw : s*(s-3)<4*B-1)
    (one : UnderCap p ((B+s)*p) x y z) (two : UnderCap p ((B+s)*p) x' y' z') :
    x=x' ∧ y=y' ∧ z=z' := by
  have same {a b} (h : Coordinates p a b x y z) (h' : Coordinates p a b x' y' z') :
      x=x' ∧ y=y' ∧ z=z' := by
    obtain ⟨_,_,hx,hy,hz⟩ := h
    obtain ⟨_,_,hx',hy',hz'⟩ := h'
    exact ⟨hx.trans hx'.symm,hy.trans hy'.symm,hz.trans hz'.symm⟩
  obtain ⟨t,ht,_,tc⟩ := (classification hp large hb hl hh hs hc hd hw).mp one
  obtain ⟨u,hu,_,uc⟩ := (classification hp large hb hl hh hs hc hd hw).mp two
  rcases tc with ⟨te,ct⟩|⟨te,ct⟩ <;> rcases uc with ⟨ue,cu⟩|⟨ue,cu⟩
  · have e := first_injective ht hu (te.symm.trans ue)
    rw [← e] at cu
    exact same ct cu
  · exact False.elim (distinct_offsets B t u (te.symm.trans ue))
  · exact False.elim (distinct_offsets B u t (ue.symm.trans te))
  · have ot := ct.2.1
    have ou := cu.2.1
    have e := second_injective (show 1≤t by omega) (show 1≤u by omega) (te.symm.trans ue)
    rw [← e] at cu
    exact same ct cu

end MathCase.PrimeBand.TwoDiagonal
