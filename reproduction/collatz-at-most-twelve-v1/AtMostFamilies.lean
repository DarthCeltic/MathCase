import AtMostCount
import AtMostTwelve

namespace MathCase.Collatz.WordBound

theorem counted_at_most_twelve_families :
    residueAtMostCount 20 12 = 910596 ∧
      ∀ (r k : Nat), 3 ≤ 2^20 * k + r → odds r 20 ≤ 12 →
        ordinaryIter (2^20 * k + r) (20 + odds r 20) < 2^20 * k + r := by
  constructor
  · exact residue_at_most_twelve_count
  · intro r k hn ho
    have lift := lift_residue 20 r k
    have hactual : odds (2^20 * k + r) 20 ≤ 12 := by
      rw [lift.1]
      exact ho
    have hdesc := at_most_twelve_descend (2^20 * k + r) hn hactual
    rw [lift.1] at hdesc
    exact hdesc

#print axioms counted_at_most_twelve_families

end MathCase.Collatz.WordBound
