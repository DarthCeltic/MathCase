import CountWords

namespace MathCase.Collatz.WordBound

def residueAtMostCount (steps cutoff : Nat) :=
  sumBelow (fun h => residueCount steps h) (cutoff + 1)

theorem sum_residue_count_eq_word_count (t n : Nat) :
    sumBelow (fun h => residueCount t h) n =
      sumBelow (fun h => parityWordCount t h) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [sumBelow, ih, residueCount_eq_wordCount]

/-- Exact count of the 21-bit parity families with at most 13 odd inputs. -/
theorem residue_at_most_thirteen_count :
    residueAtMostCount 21 13 = 1898712 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 5000000 in
private theorem small_starts_at_most_thirteen_21 : ∀ n : Fin 808,
    3 ≤ n.val → odds n.val 21 ≤ 13 →
      ordinaryIter n.val (21 + odds n.val 21) < n.val := by decide

/-- For every n ≥ 3 with at most 13 odd inputs in its first 21 accelerated
    steps, the matching standard Collatz iterate at step 21+h is smaller. -/
theorem at_most_thirteen_of_twenty_one_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 21 ≤ 13) :
    ordinaryIter n (21 + odds n 21) < n := by
  by_cases hsmall : n < 808
  · exact small_starts_at_most_thirteen_21 ⟨n, hsmall⟩ hn ho
  · have hnlarge : 808 ≤ n := by omega
    have hc := counts n 21
    have he : evens n 21 = 21 - odds n 21 := by omega
    have hbound := scaled_upper n 21
    rw [he] at hbound
    have hcases : odds n 21 = 0 ∨ odds n 21 = 1 ∨ odds n 21 = 2 ∨
        odds n 21 = 3 ∨ odds n 21 = 4 ∨ odds n 21 = 5 ∨
        odds n 21 = 6 ∨ odds n 21 = 7 ∨ odds n 21 = 8 ∨
        odds n 21 = 9 ∨ odds n 21 = 10 ∨ odds n 21 = 11 ∨
        odds n 21 = 12 ∨ odds n 21 = 13 := by omega
    have hnumeric : 3^(odds n 21) * (n + 2^(21 - odds n 21)) <
        2^21 * (n + 1) := by
      rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13
      · rw [h0]; omega
      · rw [h1]; omega
      · rw [h2]; omega
      · rw [h3]; omega
      · rw [h4]; omega
      · rw [h5]; omega
      · rw [h6]; omega
      · rw [h7]; omega
      · rw [h8]; omega
      · rw [h9]; omega
      · rw [h10]; omega
      · rw [h11]; omega
      · rw [h12]; omega
      · rw [h13]; omega
    have hproduct : 2^21 * (acceleratedIter n 21 + 1) <
        2^21 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 21 < n := by omega
    rw [ordinary_eq_accelerated n 21]
    exact haccelerated

theorem counted_at_most_thirteen_families :
    residueAtMostCount 21 13 = 1898712 ∧
      ∀ (r k : Nat), 3 ≤ 2^21 * k + r → odds r 21 ≤ 13 →
        ordinaryIter (2^21 * k + r) (21 + odds r 21) < 2^21 * k + r := by
  constructor
  · exact residue_at_most_thirteen_count
  · intro r k hn ho
    have lift := lift_residue 21 r k
    have hactual : odds (2^21 * k + r) 21 ≤ 13 := by
      rw [lift.1]
      exact ho
    have hdesc := at_most_thirteen_of_twenty_one_descend _ hn hactual
    rw [lift.1] at hdesc
    exact hdesc

#print axioms residue_at_most_thirteen_count
#print axioms at_most_thirteen_of_twenty_one_descend
#print axioms counted_at_most_thirteen_families

end MathCase.Collatz.WordBound
