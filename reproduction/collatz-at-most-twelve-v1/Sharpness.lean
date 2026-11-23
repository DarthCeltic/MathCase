import WordResidue

namespace MathCase.Collatz.WordBound

theorem thirteen_odd_family_not_uniformly_descending (r : Nat)
    (ho : odds r 20 = 13) :
    ∃ k, 2^20 * k + r ≤ ordinaryIter (2^20 * k + r) 33 := by
  let k := r + 1
  have hcount : odds (2^20 * k + r) 20 = 13 := by
    rw [(lift_residue 20 r k).1]
    exact ho
  have hbridge := ordinary_eq_accelerated (2^20 * k + r) 20
  rw [hcount] at hbridge
  have hendpoint := (lift_residue 20 r k).2
  rw [ho] at hendpoint
  have hslope : 2^20 < 3^13 := by decide
  refine ⟨k, ?_⟩
  rw [hbridge, hendpoint]
  dsimp [k]
  omega

#print axioms thirteen_odd_family_not_uniformly_descending

end MathCase.Collatz.WordBound
