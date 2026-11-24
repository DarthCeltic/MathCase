import CountWords
import ParameterizedDescent

namespace MathCase.Collatz.WordBound

/-- If at most 17 of the first 27 accelerated Collatz inputs are odd, every
    start at least 26,018 descends by the corresponding ordinary step 27+h. -/
theorem at_most_seventeen_of_twenty_seven_descend (n : Nat) (hn : 26018 ≤ n)
    (ho : odds n 27 ≤ 17) :
    ordinaryIter n (27 + odds n 27) < n := by
  have hc := counts n 27
  have ht : odds n 27 ≤ 27 := by omega
  have hcases : odds n 27 = 0 ∨ odds n 27 = 1 ∨ odds n 27 = 2 ∨
      odds n 27 = 3 ∨ odds n 27 = 4 ∨ odds n 27 = 5 ∨
      odds n 27 = 6 ∨ odds n 27 = 7 ∨ odds n 27 = 8 ∨
      odds n 27 = 9 ∨ odds n 27 = 10 ∨ odds n 27 = 11 ∨
      odds n 27 = 12 ∨ odds n 27 = 13 ∨ odds n 27 = 14 ∨
      odds n 27 = 15 ∨ odds n 27 = 16 ∨ odds n 27 = 17 := by omega
  have hcoeff : 3^(odds n 27) * (n + 2^(27 - odds n 27)) < 2^27 * (n+1) := by
    rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 |
        h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17
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
    · rw [h14]; omega
    · rw [h15]; omega
    · rw [h16]; omega
    · rw [h17]; omega
  exact descent_from_parity_count n 27 (odds n 27) rfl (by omega) hcoeff

#print axioms at_most_seventeen_of_twenty_seven_descend

end MathCase.Collatz.WordBound
