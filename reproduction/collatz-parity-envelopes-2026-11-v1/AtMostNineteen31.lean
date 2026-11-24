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

theorem residue_at_most_nineteen_count_31 :
    residueAtMostCount 31 19 = 1986838144 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_3 : ∀ k : Fin 512,
    odds (3 + k.val) 31 ≤ 19 →
      ordinaryIter (3 + k.val) (31 + odds (3 + k.val) 31) < 3 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_515 : ∀ k : Fin 512,
    odds (515 + k.val) 31 ≤ 19 →
      ordinaryIter (515 + k.val) (31 + odds (515 + k.val) 31) < 515 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_1027 : ∀ k : Fin 512,
    odds (1027 + k.val) 31 ≤ 19 →
      ordinaryIter (1027 + k.val) (31 + odds (1027 + k.val) 31) < 1027 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_1539 : ∀ k : Fin 512,
    odds (1539 + k.val) 31 ≤ 19 →
      ordinaryIter (1539 + k.val) (31 + odds (1539 + k.val) 31) < 1539 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_2051 : ∀ k : Fin 512,
    odds (2051 + k.val) 31 ≤ 19 →
      ordinaryIter (2051 + k.val) (31 + odds (2051 + k.val) 31) < 2051 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_2563 : ∀ k : Fin 512,
    odds (2563 + k.val) 31 ≤ 19 →
      ordinaryIter (2563 + k.val) (31 + odds (2563 + k.val) 31) < 2563 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_3075 : ∀ k : Fin 512,
    odds (3075 + k.val) 31 ≤ 19 →
      ordinaryIter (3075 + k.val) (31 + odds (3075 + k.val) 31) < 3075 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_3587 : ∀ k : Fin 512,
    odds (3587 + k.val) 31 ≤ 19 →
      ordinaryIter (3587 + k.val) (31 + odds (3587 + k.val) 31) < 3587 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_4099 : ∀ k : Fin 512,
    odds (4099 + k.val) 31 ≤ 19 →
      ordinaryIter (4099 + k.val) (31 + odds (4099 + k.val) 31) < 4099 + k.val := by decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 100000000 in
private theorem small_chunk_4611 : ∀ k : Fin 219,
    odds (4611 + k.val) 31 ≤ 19 →
      ordinaryIter (4611 + k.val) (31 + odds (4611 + k.val) 31) < 4611 + k.val := by decide

private theorem small_starts_at_most_nineteen_31 (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 31 ≤ 19) (hsmall : n < 4830) :
    ordinaryIter n (31 + odds n 31) < n := by
  have hparts : (3 ≤ n ∧ n < 515) ∨ (515 ≤ n ∧ n < 1027) ∨ (1027 ≤ n ∧ n < 1539) ∨ (1539 ≤ n ∧ n < 2051) ∨ (2051 ≤ n ∧ n < 2563) ∨ (2563 ≤ n ∧ n < 3075) ∨ (3075 ≤ n ∧ n < 3587) ∨ (3587 ≤ n ∧ n < 4099) ∨ (4099 ≤ n ∧ n < 4611) ∨ (4611 ≤ n ∧ n < 4830) := by omega
  rcases hparts with ⟨lo0, hi0⟩ | ⟨lo1, hi1⟩ | ⟨lo2, hi2⟩ | ⟨lo3, hi3⟩ | ⟨lo4, hi4⟩ | ⟨lo5, hi5⟩ | ⟨lo6, hi6⟩ | ⟨lo7, hi7⟩ | ⟨lo8, hi8⟩ | ⟨lo9, hi9⟩
  ·
    have hk : n - 3 < 512 := by omega
    have heq : 3 + (n - 3) = n := by omega
    have hho : odds (3 + (n - 3)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_3 ⟨n - 3, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 515 < 512 := by omega
    have heq : 515 + (n - 515) = n := by omega
    have hho : odds (515 + (n - 515)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_515 ⟨n - 515, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 1027 < 512 := by omega
    have heq : 1027 + (n - 1027) = n := by omega
    have hho : odds (1027 + (n - 1027)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_1027 ⟨n - 1027, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 1539 < 512 := by omega
    have heq : 1539 + (n - 1539) = n := by omega
    have hho : odds (1539 + (n - 1539)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_1539 ⟨n - 1539, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 2051 < 512 := by omega
    have heq : 2051 + (n - 2051) = n := by omega
    have hho : odds (2051 + (n - 2051)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_2051 ⟨n - 2051, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 2563 < 512 := by omega
    have heq : 2563 + (n - 2563) = n := by omega
    have hho : odds (2563 + (n - 2563)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_2563 ⟨n - 2563, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 3075 < 512 := by omega
    have heq : 3075 + (n - 3075) = n := by omega
    have hho : odds (3075 + (n - 3075)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_3075 ⟨n - 3075, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 3587 < 512 := by omega
    have heq : 3587 + (n - 3587) = n := by omega
    have hho : odds (3587 + (n - 3587)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_3587 ⟨n - 3587, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 4099 < 512 := by omega
    have heq : 4099 + (n - 4099) = n := by omega
    have hho : odds (4099 + (n - 4099)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_4099 ⟨n - 4099, hk⟩ hho
    simpa only [heq] using hchunk
  ·
    have hk : n - 4611 < 219 := by omega
    have heq : 4611 + (n - 4611) = n := by omega
    have hho : odds (4611 + (n - 4611)) 31 ≤ 19 := by simpa [heq] using ho
    have hchunk := small_chunk_4611 ⟨n - 4611, hk⟩ hho
    simpa only [heq] using hchunk

theorem at_most_nineteen_of_thirty_one_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 31 ≤ 19) :
    ordinaryIter n (31 + odds n 31) < n := by
  by_cases hsmall : n < 4830
  · exact small_starts_at_most_nineteen_31 n hn ho hsmall
  · have hnlarge : 4830 ≤ n := by omega
    have hc := counts n 31
    have he : evens n 31 = 31 - odds n 31 := by omega
    have hbound := scaled_upper n 31
    rw [he] at hbound
    have hcases : odds n 31 = 0 ∨ odds n 31 = 1 ∨ odds n 31 = 2 ∨
        odds n 31 = 3 ∨ odds n 31 = 4 ∨ odds n 31 = 5 ∨
        odds n 31 = 6 ∨ odds n 31 = 7 ∨ odds n 31 = 8 ∨
        odds n 31 = 9 ∨ odds n 31 = 10 ∨ odds n 31 = 11 ∨
        odds n 31 = 12 ∨ odds n 31 = 13 ∨ odds n 31 = 14 ∨
        odds n 31 = 15 ∨ odds n 31 = 16 ∨ odds n 31 = 17 ∨
        odds n 31 = 18 ∨ odds n 31 = 19 := by omega
    have hnumeric : 3^(odds n 31) * (n + 2^(31 - odds n 31)) <
        2^31 * (n + 1) := by
      rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19
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
      · rw [h18]; omega
      · rw [h19]; omega
    have hproduct : 2^31 * (acceleratedIter n 31 + 1) <
        2^31 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 31 < n := by omega
    have hbridge := ordinary_eq_accelerated n 31
    calc
      ordinaryIter n (31 + odds n 31) = acceleratedIter n 31 := hbridge
      _ < n := haccelerated

theorem counted_at_most_nineteen_families_31 :
    (residueAtMostCount 31 19 = 1986838144) ∧
      ∀ n : Nat, 3 ≤ n → odds n 31 ≤ 19 →
        ordinaryIter n (31 + odds n 31) < n := by
  constructor
  · exact residue_at_most_nineteen_count_31
  · intro n hn ho
    exact at_most_nineteen_of_thirty_one_descend n hn ho

#print axioms residue_at_most_nineteen_count_31
#print axioms at_most_nineteen_of_thirty_one_descend
#print axioms counted_at_most_nineteen_families_31

end MathCase.Collatz.WordBound
