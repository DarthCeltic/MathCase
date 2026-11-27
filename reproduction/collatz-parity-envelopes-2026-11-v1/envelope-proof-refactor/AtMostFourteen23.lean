import CountWords
import EnvelopeLemma

namespace MathCase.Collatz.WordBound

def residueAtMostCount (steps cutoff : Nat) :=
  sumBelow (fun h => residueCount steps h) (cutoff + 1)

private theorem sum_residue_count_eq_word_count (t n : Nat) :
    sumBelow (fun h => residueCount t h) n =
      sumBelow (fun h => parityWordCount t h) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [sumBelow, residueCount_eq_wordCount]

theorem residue_at_most_fourteen_count_23 :
    residueAtMostCount 23 14 = 7507638 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 5000000 in
private theorem small_starts_at_most_fourteen_23 : ∀ n : Fin 677,
    3 ≤ n.val → odds n.val 23 ≤ 14 →
      ordinaryIter n.val (23 + odds n.val 23) < n.val := by decide

/-- Every start n >= 3 with at most 14 odd inputs among its first 23
    accelerated steps is strictly smaller after 23+h ordinary steps. -/
theorem at_most_fourteen_of_twenty_three_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 23 ≤ 14) :
    ordinaryIter n (23 + odds n 23) < n := by
  by_cases hsmall : n < 677
  · exact small_starts_at_most_fourteen_23 ⟨n, hsmall⟩ hn ho
  · have hnlarge : 677 ≤ n := by omega
    have hc := counts n 23
    have he : evens n 23 = 23 - odds n 23 := by omega
    have hbound := scaled_upper n 23
    rw [he] at hbound
    have hnumeric : 3^(odds n 23) * (n + 2^(23-odds n 23)) <
        2^23 * (n+1) := by
      have hp3 : 3^14 = 4782969 := by decide
      have hp29 : 2^9 = 512 := by decide
      have hp23 : 2^23 = 8388608 := by decide
      have hlargeBound : 3^14 * (n + 2^9) < 2^23 * (n+1) := by
        rw [hp3, hp29, hp23]
        omega
      calc
        3^(odds n 23) * (n + 2^(23-odds n 23)) = scaledEnvelope 23 (odds n 23) n := rfl
        _ ≤ scaledEnvelope 23 14 n := scaledEnvelope_le_cap 23 (odds n 23) 14 n (by omega) (by omega)
        _ = 3^14 * (n + 2^9) := by simp [scaledEnvelope]
        _ < 2^23 * (n+1) := hlargeBound
    have hproduct : 2^23 * (acceleratedIter n 23 + 1) <
        2^23 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 23 < n := by omega
    have hbridge := ordinary_eq_accelerated n 23
    calc
      ordinaryIter n (23 + odds n 23) = acceleratedIter n 23 := hbridge
      _ < n := haccelerated

theorem counted_at_most_fourteen_families_23 :
    (residueAtMostCount 23 14 = 7507638) ∧
      ∀ n : Nat, 3 ≤ n → odds n 23 ≤ 14 →
        ordinaryIter n (23 + odds n 23) < n := by
  constructor
  · exact residue_at_most_fourteen_count_23
  · intro n hn ho
    exact at_most_fourteen_of_twenty_three_descend n hn ho

#print axioms residue_at_most_fourteen_count_23
#print axioms at_most_fourteen_of_twenty_three_descend
#print axioms counted_at_most_fourteen_families_23

end MathCase.Collatz.WordBound
