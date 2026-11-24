import WordBound

namespace MathCase.Collatz.WordBound

/-- Every start in a class modulo 2^t has the same count of odd inputs through
    t accelerated steps. The exact final slope is 3 to that count. -/
theorem lift_residue (t r k : Nat) :
    odds (2^t*k+r) t = odds r t ∧
      acceleratedIter (2^t*k+r) t = 3^(odds r t)*k + acceleratedIter r t := by
  induction t generalizing r k with
  | zero => simp [odds, acceleratedIter]
  | succ t ih =>
    let a := 2^t*k
    have hfirst : 2^(t+1)*k+r = 2*a+r := by
      rw [Nat.pow_succ, Nat.mul_comm (2^t) 2, Nat.mul_assoc]
    rw [hfirst]
    by_cases he : r % 2 = 0
    · have he' : (2*a+r)%2=0 := by omega
      have hs : accelerated (2*a+r)=2^t*k+accelerated r := by
        simp only [accelerated, if_pos he, if_pos he']
        change (2*a+r)/2 = a+r/2
        omega
      simpa only [odds, acceleratedIter, if_pos he, if_pos he', hs] using
        (show odds (accelerated (2*a+r)) t = odds (accelerated r) t ∧
           acceleratedIter (accelerated (2*a+r)) t =
            3^(odds (accelerated r) t)*k + acceleratedIter (accelerated r) t
          from hs ▸ ih (accelerated r) k)
    · have he' : (2*a+r)%2≠0 := by omega
      have hs : accelerated (2*a+r)=2^t*(3*k)+accelerated r := by
        simp only [accelerated, if_neg he, if_neg he']
        have hm : 2^t*(3*k)=3*a := Nat.mul_left_comm _ _ _
        rw [hm]
        omega
      have h := ih (accelerated r) (3*k)
      simp only [odds, acceleratedIter, if_neg he, if_neg he', hs, Nat.pow_succ, Nat.mul_assoc]
      exact ⟨congrArg (fun x : Nat => x+1) h.1, h.2⟩

/-- Membership and descent for every member of qualifying residue families. -/
theorem residue_twelve_of_twenty (r k : Nat) (ho : odds r 20 = 12) :
    ordinaryIter (1048576*k+r) 32 = 531441*k + acceleratedIter r 20 ∧
    ordinaryIter (1048576*k+r) 32 < 1048576*k+r := by
  have lift := lift_residue 20 r k
  rw [ho] at lift
  have hcount : odds (1048576*k+r) 20 = 12 := lift.1
  have hb := ordinary_eq_accelerated (1048576*k+r) 20
  rw [hcount] at hb
  exact ⟨hb.trans lift.2, twelve_of_twenty _ hcount⟩

#print axioms lift_residue
#print axioms residue_twelve_of_twenty

end MathCase.Collatz.WordBound
