import CountWords

namespace MathCase.Collatz.WordBound

def residueAtMostCount (steps cutoff : Nat) :=
  sumBelow (fun h => residueCount steps h) (cutoff + 1)

private theorem sum_residue_count_eq_word_count (t n : Nat) :
    sumBelow (fun h => residueCount t h) n =
      sumBelow (fun h => parityWordCount t h) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [sumBelow, ih, residueCount_eq_wordCount]

/-- Exact count of the 22-bit parity families with at most 13 odd inputs. -/
theorem residue_at_most_thirteen_count_22 :
    residueAtMostCount 22 13 = 3593934 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 5000000 in
private theorem small_starts_at_most_thirteen_22 : ∀ n : Fin 313,
    3 ≤ n.val → odds n.val 22 ≤ 13 →
      ordinaryIter n.val (22 + odds n.val 22) < n.val := by decide

/-- Every start n >= 3 with at most 13 odd inputs among its first 22
    accelerated steps is smaller after 22+h ordinary steps, where h is the
    number of odd accelerated inputs. -/
theorem at_most_thirteen_of_twenty_two_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 22 ≤ 13) :
    ordinaryIter n (22 + odds n 22) < n := by
  by_cases hsmall : n < 313
  · exact small_starts_at_most_thirteen_22 ⟨n, hsmall⟩ hn ho
  · have hnlarge : 313 ≤ n := by omega
    have hc := counts n 22
    have he : evens n 22 = 22 - odds n 22 := by omega
    have hbound := scaled_upper n 22
    rw [he] at hbound
    have hcases : odds n 22 = 0 ∨ odds n 22 = 1 ∨ odds n 22 = 2 ∨
        odds n 22 = 3 ∨ odds n 22 = 4 ∨ odds n 22 = 5 ∨
        odds n 22 = 6 ∨ odds n 22 = 7 ∨ odds n 22 = 8 ∨
        odds n 22 = 9 ∨ odds n 22 = 10 ∨ odds n 22 = 11 ∨
        odds n 22 = 12 ∨ odds n 22 = 13 := by omega
    have hnumeric : 3^(odds n 22) * (n + 2^(22 - odds n 22)) <
        2^22 * (n + 1) := by
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
    have hproduct : 2^22 * (acceleratedIter n 22 + 1) <
        2^22 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 22 < n := by omega
    have hbridge := ordinary_eq_accelerated n 22
    calc
      ordinaryIter n (22 + odds n 22) = acceleratedIter n 22 := hbridge
      _ < n := haccelerated

theorem counted_at_most_thirteen_families_22 :
    residueAtMostCount 22 13 = 3593934 ∧
      ∀ (r : Fin 4194304) (k : Nat),
        3 ≤ 4194304 * k + r.val → odds r.val 22 ≤ 13 →
          ordinaryIter (4194304 * k + r.val) (22 + odds r.val 22) <
            4194304 * k + r.val := by
  constructor
  · exact residue_at_most_thirteen_count_22
  · intro r k hn ho
    have lift := lift_residue 22 r.val k
    have hactual : odds (4194304 * k + r.val) 22 ≤ 13 := by
      rw [lift.1]
      exact ho
    have hdesc := at_most_thirteen_of_twenty_two_descend _ hn hactual
    rw [lift.1] at hdesc
    exact hdesc

#print axioms residue_at_most_thirteen_count_22
#print axioms at_most_thirteen_of_twenty_two_descend
#print axioms counted_at_most_thirteen_families_22

end MathCase.Collatz.WordBound
