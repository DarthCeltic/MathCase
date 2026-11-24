import CountWords

namespace MathCase.Collatz.WordBound

def residueAtMostCount (steps cutoff : Nat) :=
  sumBelow (fun h => residueCount steps h) (cutoff + 1)

private theorem sum_residue_count_eq_word_count (t n : Nat) :
    sumBelow (fun h => residueCount t h) n =
      sumBelow (fun h => parityWordCount t h) n := by
  induction n with
  | zero => rfl
  | succ n _ => simp only [sumBelow, residueCount_eq_wordCount]

theorem residue_at_most_fifteen_count_24 :
    residueAtMostCount 24 15 = 15505590 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_3 : ∀ k : Fin 512,
    odds (3 + k.val) 24 ≤ 15 →
      ordinaryIter (3 + k.val) (24 + odds (3 + k.val) 24) < 3 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_515 : ∀ k : Fin 512,
    odds (515 + k.val) 24 ≤ 15 →
      ordinaryIter (515 + k.val) (24 + odds (515 + k.val) 24) < 515 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_1027 : ∀ k : Fin 512,
    odds (1027 + k.val) 24 ≤ 15 →
      ordinaryIter (1027 + k.val) (24 + odds (1027 + k.val) 24) < 1027 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_1539 : ∀ k : Fin 512,
    odds (1539 + k.val) 24 ≤ 15 →
      ordinaryIter (1539 + k.val) (24 + odds (1539 + k.val) 24) < 1539 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_2051 : ∀ k : Fin 512,
    odds (2051 + k.val) 24 ≤ 15 →
      ordinaryIter (2051 + k.val) (24 + odds (2051 + k.val) 24) < 2051 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_2563 : ∀ k : Fin 456,
    odds (2563 + k.val) 24 ≤ 15 →
      ordinaryIter (2563 + k.val) (24 + odds (2563 + k.val) 24) < 2563 + k.val := by decide

private theorem small_starts_at_most_fifteen_24 (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 24 ≤ 15) (hsmall : n < 3019) :
    ordinaryIter n (24 + odds n 24) < n := by
  have hparts : (3 ≤ n ∧ n < 515) ∨ (515 ≤ n ∧ n < 1027) ∨ (1027 ≤ n ∧ n < 1539) ∨ (1539 ≤ n ∧ n < 2051) ∨ (2051 ≤ n ∧ n < 2563) ∨ (2563 ≤ n ∧ n < 3019) := by omega
  rcases hparts with ⟨lo0, hi0⟩ | ⟨lo1, hi1⟩ | ⟨lo2, hi2⟩ | ⟨lo3, hi3⟩ | ⟨lo4, hi4⟩ | ⟨lo5, hi5⟩
  ·
    have hk : n - 3 < 512 := by omega
    have heq : 3 + (n - 3) = n := by omega
    have hho : odds (3 + (n - 3)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_3 ⟨n - 3, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 515 < 512 := by omega
    have heq : 515 + (n - 515) = n := by omega
    have hho : odds (515 + (n - 515)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_515 ⟨n - 515, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 1027 < 512 := by omega
    have heq : 1027 + (n - 1027) = n := by omega
    have hho : odds (1027 + (n - 1027)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_1027 ⟨n - 1027, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 1539 < 512 := by omega
    have heq : 1539 + (n - 1539) = n := by omega
    have hho : odds (1539 + (n - 1539)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_1539 ⟨n - 1539, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 2051 < 512 := by omega
    have heq : 2051 + (n - 2051) = n := by omega
    have hho : odds (2051 + (n - 2051)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_2051 ⟨n - 2051, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 2563 < 456 := by omega
    have heq : 2563 + (n - 2563) = n := by omega
    have hho : odds (2563 + (n - 2563)) 24 ≤ 15 := by simpa [heq] using ho
    have hchunk := small_chunk_2563 ⟨n - 2563, hk⟩ hho
    simpa only [heq] using hchunk

theorem at_most_fifteen_of_twenty_four_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 24 ≤ 15) :
    ordinaryIter n (24 + odds n 24) < n := by
  by_cases hsmall : n < 3019
  · exact small_starts_at_most_fifteen_24 n hn ho hsmall
  · have hnlarge : 3019 ≤ n := by omega
    have hc := counts n 24
    have he : evens n 24 = 24 - odds n 24 := by omega
    have hbound := scaled_upper n 24
    rw [he] at hbound
    have hcases : odds n 24 = 0 ∨ odds n 24 = 1 ∨ odds n 24 = 2 ∨ odds n 24 = 3 ∨ odds n 24 = 4 ∨ odds n 24 = 5 ∨ odds n 24 = 6 ∨ odds n 24 = 7 ∨ odds n 24 = 8 ∨ odds n 24 = 9 ∨ odds n 24 = 10 ∨ odds n 24 = 11 ∨ odds n 24 = 12 ∨ odds n 24 = 13 ∨ odds n 24 = 14 ∨ odds n 24 = 15 := by omega
    have hnumeric : 3^(odds n 24) * (n + 2^(24 - odds n 24)) <
        2^24 * (n + 1) := by
      rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15
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
    have hproduct : 2^24 * (acceleratedIter n 24 + 1) <
        2^24 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 24 < n := by omega
    have hbridge := ordinary_eq_accelerated n 24
    calc
      ordinaryIter n (24 + odds n 24) = acceleratedIter n 24 := hbridge
      _ < n := haccelerated

theorem counted_at_most_fifteen_families_24 :
    (residueAtMostCount 24 15 = 15505590) ∧
      ∀ n : Nat, 3 ≤ n → odds n 24 ≤ 15 →
        ordinaryIter n (24 + odds n 24) < n := by
  constructor
  · exact residue_at_most_fifteen_count_24
  · intro n hn ho
    exact at_most_fifteen_of_twenty_four_descend n hn ho

#print axioms residue_at_most_fifteen_count_24
#print axioms at_most_fifteen_of_twenty_four_descend
#print axioms counted_at_most_fifteen_families_24

end MathCase.Collatz.WordBound
