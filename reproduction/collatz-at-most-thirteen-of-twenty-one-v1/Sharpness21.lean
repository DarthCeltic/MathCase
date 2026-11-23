import WordResidue

namespace MathCase.Collatz.WordBound

/-- Every residue with 14 odd inputs has a representative that does not
    descend at the corresponding ordinary step 35. -/
theorem fourteen_odd_family_fails_at_step35 (r : Fin (2^21))
    (ho : odds r.val 21 = 14) :
    ¬ ordinaryIter (2^21 + r.val) 35 < 2^21 + r.val := by
  have lift := lift_residue 21 r.val 1
  simp only [Nat.mul_one] at lift
  rw [ho] at lift
  have hcount : odds (2^21 + r.val) 21 = 14 := lift.1
  have hbridge := ordinary_eq_accelerated (2^21 + r.val) 21
  rw [hcount] at hbridge
  change ordinaryIter (2^21 + r.val) 35 = acceleratedIter (2^21 + r.val) 21 at hbridge
  rw [lift.2] at hbridge
  have hr : r.val < 2^21 := r.isLt
  have hnum : 2^22 < 3^14 := by decide
  have hstart : 2^21 + r.val < 2^22 := by omega
  have hge : 2^21 + r.val ≤ 3^14 + acceleratedIter r.val 21 := by omega
  rw [hbridge]
  omega

#print axioms fourteen_odd_family_fails_at_step35

end MathCase.Collatz.WordBound
