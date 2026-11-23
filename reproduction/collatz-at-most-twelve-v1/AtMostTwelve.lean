import WordBound

namespace MathCase.Collatz.WordBound

/-- The threshold is necessary for the fixed variable endpoint time: at 1
    and 2 the qualifying 20-step parity count is ten, but the endpoint at
    ordinary time 20+10 is not smaller. -/
example : odds 1 20 = 10 ∧ ordinaryIter 1 30 = 1 := by decide
example : odds 2 20 = 10 ∧ ordinaryIter 2 30 = 2 := by decide

set_option maxRecDepth 4096 in
private theorem small_starts_at_most_twelve : ∀ n : Fin 262,
    3 ≤ n.val → odds n.val 20 ≤ 12 →
      ordinaryIter n.val (20 + odds n.val 20) < n.val := by decide

/-- For every start n ≥ 3, if at most twelve of the first twenty accelerated
    inputs are odd, the corresponding standard Collatz iterate (twenty steps
    plus one extra step per odd input) is strictly below n. -/
theorem at_most_twelve_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 20 ≤ 12) :
    ordinaryIter n (20 + odds n 20) < n := by
  by_cases hsmall : n < 262
  · exact small_starts_at_most_twelve ⟨n, hsmall⟩ hn ho
  · have hnlarge : 262 ≤ n := by omega
    have hc := counts n 20
    have he : evens n 20 = 20 - odds n 20 := by omega
    have hbound := scaled_upper n 20
    rw [he] at hbound
    have hcases : odds n 20 = 0 ∨ odds n 20 = 1 ∨ odds n 20 = 2 ∨
        odds n 20 = 3 ∨ odds n 20 = 4 ∨ odds n 20 = 5 ∨
        odds n 20 = 6 ∨ odds n 20 = 7 ∨ odds n 20 = 8 ∨
        odds n 20 = 9 ∨ odds n 20 = 10 ∨ odds n 20 = 11 ∨
        odds n 20 = 12 := by omega
    have hnumeric : 3^(odds n 20) * (n + 2^(20 - odds n 20)) <
        2^20 * (n + 1) := by
      rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12
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
    have hproduct : 2^20 * (acceleratedIter n 20 + 1) < 2^20 * (n + 1) :=
      Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 20 < n := by omega
    rw [ordinary_eq_accelerated n 20]
    exact haccelerated

#print axioms at_most_twelve_descend

end MathCase.Collatz.WordBound
