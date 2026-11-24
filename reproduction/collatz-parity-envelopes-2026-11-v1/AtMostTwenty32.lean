import CountWords

namespace MathCase.Collatz.WordBound

set_option maxRecDepth 10000
set_option maxHeartbeats 100000000

def residueAtMostCount (steps cutoff : Nat) :=
  sumBelow (fun h => residueCount steps h) (cutoff + 1)

private theorem sum_residue_count_eq_word_count (t n : Nat) :
    sumBelow (fun h => residueCount t h) n =
      sumBelow (fun h => parityWordCount t h) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [sumBelow, ih, residueCount_eq_wordCount]

theorem residue_at_most_twenty_count_32 :
    residueAtMostCount 32 20 = 4058348603 := by
  unfold residueAtMostCount
  rw [sum_residue_count_eq_word_count]
  decide

private theorem small_chunk_3 : ∀ k : Fin 512,
    odds (3 + k.val) 32 ≤ 20 →
      ordinaryIter (3 + k.val) (32 + odds (3 + k.val) 32) < 3 + k.val := by decide

private theorem small_chunk_515 : ∀ k : Fin 512,
    odds (515 + k.val) 32 ≤ 20 →
      ordinaryIter (515 + k.val) (32 + odds (515 + k.val) 32) < 515 + k.val := by decide

private theorem small_chunk_1027 : ∀ k : Fin 512,
    odds (1027 + k.val) 32 ≤ 20 →
      ordinaryIter (1027 + k.val) (32 + odds (1027 + k.val) 32) < 1027 + k.val := by decide

private theorem small_chunk_1539 : ∀ k : Fin 512,
    odds (1539 + k.val) 32 ≤ 20 →
      ordinaryIter (1539 + k.val) (32 + odds (1539 + k.val) 32) < 1539 + k.val := by decide

private theorem small_chunk_2051 : ∀ k : Fin 512,
    odds (2051 + k.val) 32 ≤ 20 →
      ordinaryIter (2051 + k.val) (32 + odds (2051 + k.val) 32) < 2051 + k.val := by decide

private theorem small_chunk_2563 : ∀ k : Fin 512,
    odds (2563 + k.val) 32 ≤ 20 →
      ordinaryIter (2563 + k.val) (32 + odds (2563 + k.val) 32) < 2563 + k.val := by decide

private theorem small_chunk_3075 : ∀ k : Fin 512,
    odds (3075 + k.val) 32 ≤ 20 →
      ordinaryIter (3075 + k.val) (32 + odds (3075 + k.val) 32) < 3075 + k.val := by decide

private theorem small_chunk_3587 : ∀ k : Fin 512,
    odds (3587 + k.val) 32 ≤ 20 →
      ordinaryIter (3587 + k.val) (32 + odds (3587 + k.val) 32) < 3587 + k.val := by decide

private theorem small_chunk_4099 : ∀ k : Fin 512,
    odds (4099 + k.val) 32 ≤ 20 →
      ordinaryIter (4099 + k.val) (32 + odds (4099 + k.val) 32) < 4099 + k.val := by decide

private theorem small_chunk_4611 : ∀ k : Fin 512,
    odds (4611 + k.val) 32 ≤ 20 →
      ordinaryIter (4611 + k.val) (32 + odds (4611 + k.val) 32) < 4611 + k.val := by decide

private theorem small_chunk_5123 : ∀ k : Fin 512,
    odds (5123 + k.val) 32 ≤ 20 →
      ordinaryIter (5123 + k.val) (32 + odds (5123 + k.val) 32) < 5123 + k.val := by decide

private theorem small_chunk_5635 : ∀ k : Fin 512,
    odds (5635 + k.val) 32 ≤ 20 →
      ordinaryIter (5635 + k.val) (32 + odds (5635 + k.val) 32) < 5635 + k.val := by decide

private theorem small_chunk_6147 : ∀ k : Fin 512,
    odds (6147 + k.val) 32 ≤ 20 →
      ordinaryIter (6147 + k.val) (32 + odds (6147 + k.val) 32) < 6147 + k.val := by decide

private theorem small_chunk_6659 : ∀ k : Fin 512,
    odds (6659 + k.val) 32 ≤ 20 →
      ordinaryIter (6659 + k.val) (32 + odds (6659 + k.val) 32) < 6659 + k.val := by decide

private theorem small_chunk_7171 : ∀ k : Fin 512,
    odds (7171 + k.val) 32 ≤ 20 →
      ordinaryIter (7171 + k.val) (32 + odds (7171 + k.val) 32) < 7171 + k.val := by decide

private theorem small_chunk_7683 : ∀ k : Fin 512,
    odds (7683 + k.val) 32 ≤ 20 →
      ordinaryIter (7683 + k.val) (32 + odds (7683 + k.val) 32) < 7683 + k.val := by decide

private theorem small_chunk_8195 : ∀ k : Fin 512,
    odds (8195 + k.val) 32 ≤ 20 →
      ordinaryIter (8195 + k.val) (32 + odds (8195 + k.val) 32) < 8195 + k.val := by decide

private theorem small_chunk_8707 : ∀ k : Fin 512,
    odds (8707 + k.val) 32 ≤ 20 →
      ordinaryIter (8707 + k.val) (32 + odds (8707 + k.val) 32) < 8707 + k.val := by decide

private theorem small_chunk_9219 : ∀ k : Fin 512,
    odds (9219 + k.val) 32 ≤ 20 →
      ordinaryIter (9219 + k.val) (32 + odds (9219 + k.val) 32) < 9219 + k.val := by decide

private theorem small_chunk_9731 : ∀ k : Fin 512,
    odds (9731 + k.val) 32 ≤ 20 →
      ordinaryIter (9731 + k.val) (32 + odds (9731 + k.val) 32) < 9731 + k.val := by decide

private theorem small_chunk_10243 : ∀ k : Fin 512,
    odds (10243 + k.val) 32 ≤ 20 →
      ordinaryIter (10243 + k.val) (32 + odds (10243 + k.val) 32) < 10243 + k.val := by decide

private theorem small_chunk_10755 : ∀ k : Fin 512,
    odds (10755 + k.val) 32 ≤ 20 →
      ordinaryIter (10755 + k.val) (32 + odds (10755 + k.val) 32) < 10755 + k.val := by decide

private theorem small_chunk_11267 : ∀ k : Fin 512,
    odds (11267 + k.val) 32 ≤ 20 →
      ordinaryIter (11267 + k.val) (32 + odds (11267 + k.val) 32) < 11267 + k.val := by decide

private theorem small_chunk_11779 : ∀ k : Fin 512,
    odds (11779 + k.val) 32 ≤ 20 →
      ordinaryIter (11779 + k.val) (32 + odds (11779 + k.val) 32) < 11779 + k.val := by decide

private theorem small_chunk_12291 : ∀ k : Fin 512,
    odds (12291 + k.val) 32 ≤ 20 →
      ordinaryIter (12291 + k.val) (32 + odds (12291 + k.val) 32) < 12291 + k.val := by decide

private theorem small_chunk_12803 : ∀ k : Fin 512,
    odds (12803 + k.val) 32 ≤ 20 →
      ordinaryIter (12803 + k.val) (32 + odds (12803 + k.val) 32) < 12803 + k.val := by decide

private theorem small_chunk_13315 : ∀ k : Fin 512,
    odds (13315 + k.val) 32 ≤ 20 →
      ordinaryIter (13315 + k.val) (32 + odds (13315 + k.val) 32) < 13315 + k.val := by decide

private theorem small_chunk_13827 : ∀ k : Fin 512,
    odds (13827 + k.val) 32 ≤ 20 →
      ordinaryIter (13827 + k.val) (32 + odds (13827 + k.val) 32) < 13827 + k.val := by decide

private theorem small_chunk_14339 : ∀ k : Fin 512,
    odds (14339 + k.val) 32 ≤ 20 →
      ordinaryIter (14339 + k.val) (32 + odds (14339 + k.val) 32) < 14339 + k.val := by decide

private theorem small_chunk_14851 : ∀ k : Fin 512,
    odds (14851 + k.val) 32 ≤ 20 →
      ordinaryIter (14851 + k.val) (32 + odds (14851 + k.val) 32) < 14851 + k.val := by decide

private theorem small_chunk_15363 : ∀ k : Fin 512,
    odds (15363 + k.val) 32 ≤ 20 →
      ordinaryIter (15363 + k.val) (32 + odds (15363 + k.val) 32) < 15363 + k.val := by decide

private theorem small_chunk_15875 : ∀ k : Fin 512,
    odds (15875 + k.val) 32 ≤ 20 →
      ordinaryIter (15875 + k.val) (32 + odds (15875 + k.val) 32) < 15875 + k.val := by decide

private theorem small_chunk_16387 : ∀ k : Fin 512,
    odds (16387 + k.val) 32 ≤ 20 →
      ordinaryIter (16387 + k.val) (32 + odds (16387 + k.val) 32) < 16387 + k.val := by decide

private theorem small_chunk_16899 : ∀ k : Fin 512,
    odds (16899 + k.val) 32 ≤ 20 →
      ordinaryIter (16899 + k.val) (32 + odds (16899 + k.val) 32) < 16899 + k.val := by decide

private theorem small_chunk_17411 : ∀ k : Fin 256,
    odds (17411 + k.val) 32 ≤ 20 →
      ordinaryIter (17411 + k.val) (32 + odds (17411 + k.val) 32) < 17411 + k.val := by decide

private theorem small_starts_at_most_twenty_32 (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 32 ≤ 20) (hsmall : n < 17667) :
    ordinaryIter n (32 + odds n 32) < n := by
  have hparts : (3 ≤ n ∧ n < 515) ∨ (515 ≤ n ∧ n < 1027) ∨ (1027 ≤ n ∧ n < 1539) ∨ (1539 ≤ n ∧ n < 2051) ∨ (2051 ≤ n ∧ n < 2563) ∨ (2563 ≤ n ∧ n < 3075) ∨ (3075 ≤ n ∧ n < 3587) ∨ (3587 ≤ n ∧ n < 4099) ∨ (4099 ≤ n ∧ n < 4611) ∨ (4611 ≤ n ∧ n < 5123) ∨ (5123 ≤ n ∧ n < 5635) ∨ (5635 ≤ n ∧ n < 6147) ∨ (6147 ≤ n ∧ n < 6659) ∨ (6659 ≤ n ∧ n < 7171) ∨ (7171 ≤ n ∧ n < 7683) ∨ (7683 ≤ n ∧ n < 8195) ∨ (8195 ≤ n ∧ n < 8707) ∨ (8707 ≤ n ∧ n < 9219) ∨ (9219 ≤ n ∧ n < 9731) ∨ (9731 ≤ n ∧ n < 10243) ∨ (10243 ≤ n ∧ n < 10755) ∨ (10755 ≤ n ∧ n < 11267) ∨ (11267 ≤ n ∧ n < 11779) ∨ (11779 ≤ n ∧ n < 12291) ∨ (12291 ≤ n ∧ n < 12803) ∨ (12803 ≤ n ∧ n < 13315) ∨ (13315 ≤ n ∧ n < 13827) ∨ (13827 ≤ n ∧ n < 14339) ∨ (14339 ≤ n ∧ n < 14851) ∨ (14851 ≤ n ∧ n < 15363) ∨ (15363 ≤ n ∧ n < 15875) ∨ (15875 ≤ n ∧ n < 16387) ∨ (16387 ≤ n ∧ n < 16899) ∨ (16899 ≤ n ∧ n < 17411) ∨ (17411 ≤ n ∧ n < 17667) := by omega
  rcases hparts with ⟨lo0, hi0⟩ | ⟨lo1, hi1⟩ | ⟨lo2, hi2⟩ | ⟨lo3, hi3⟩ | ⟨lo4, hi4⟩ | ⟨lo5, hi5⟩ | ⟨lo6, hi6⟩ | ⟨lo7, hi7⟩ | ⟨lo8, hi8⟩ | ⟨lo9, hi9⟩ | ⟨lo10, hi10⟩ | ⟨lo11, hi11⟩ | ⟨lo12, hi12⟩ | ⟨lo13, hi13⟩ | ⟨lo14, hi14⟩ | ⟨lo15, hi15⟩ | ⟨lo16, hi16⟩ | ⟨lo17, hi17⟩ | ⟨lo18, hi18⟩ | ⟨lo19, hi19⟩ | ⟨lo20, hi20⟩ | ⟨lo21, hi21⟩ | ⟨lo22, hi22⟩ | ⟨lo23, hi23⟩ | ⟨lo24, hi24⟩ | ⟨lo25, hi25⟩ | ⟨lo26, hi26⟩ | ⟨lo27, hi27⟩ | ⟨lo28, hi28⟩ | ⟨lo29, hi29⟩ | ⟨lo30, hi30⟩ | ⟨lo31, hi31⟩ | ⟨lo32, hi32⟩ | ⟨lo33, hi33⟩ | ⟨lo34, hi34⟩
  · have hk : n - 3 < 512 := by omega
    have heq : 3 + (n - 3) = n := by omega
    have hho : odds (3 + (n - 3)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_3 ⟨n - 3, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 515 < 512 := by omega
    have heq : 515 + (n - 515) = n := by omega
    have hho : odds (515 + (n - 515)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_515 ⟨n - 515, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 1027 < 512 := by omega
    have heq : 1027 + (n - 1027) = n := by omega
    have hho : odds (1027 + (n - 1027)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_1027 ⟨n - 1027, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 1539 < 512 := by omega
    have heq : 1539 + (n - 1539) = n := by omega
    have hho : odds (1539 + (n - 1539)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_1539 ⟨n - 1539, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 2051 < 512 := by omega
    have heq : 2051 + (n - 2051) = n := by omega
    have hho : odds (2051 + (n - 2051)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_2051 ⟨n - 2051, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 2563 < 512 := by omega
    have heq : 2563 + (n - 2563) = n := by omega
    have hho : odds (2563 + (n - 2563)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_2563 ⟨n - 2563, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 3075 < 512 := by omega
    have heq : 3075 + (n - 3075) = n := by omega
    have hho : odds (3075 + (n - 3075)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_3075 ⟨n - 3075, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 3587 < 512 := by omega
    have heq : 3587 + (n - 3587) = n := by omega
    have hho : odds (3587 + (n - 3587)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_3587 ⟨n - 3587, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 4099 < 512 := by omega
    have heq : 4099 + (n - 4099) = n := by omega
    have hho : odds (4099 + (n - 4099)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_4099 ⟨n - 4099, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 4611 < 512 := by omega
    have heq : 4611 + (n - 4611) = n := by omega
    have hho : odds (4611 + (n - 4611)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_4611 ⟨n - 4611, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 5123 < 512 := by omega
    have heq : 5123 + (n - 5123) = n := by omega
    have hho : odds (5123 + (n - 5123)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_5123 ⟨n - 5123, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 5635 < 512 := by omega
    have heq : 5635 + (n - 5635) = n := by omega
    have hho : odds (5635 + (n - 5635)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_5635 ⟨n - 5635, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 6147 < 512 := by omega
    have heq : 6147 + (n - 6147) = n := by omega
    have hho : odds (6147 + (n - 6147)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_6147 ⟨n - 6147, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 6659 < 512 := by omega
    have heq : 6659 + (n - 6659) = n := by omega
    have hho : odds (6659 + (n - 6659)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_6659 ⟨n - 6659, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 7171 < 512 := by omega
    have heq : 7171 + (n - 7171) = n := by omega
    have hho : odds (7171 + (n - 7171)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_7171 ⟨n - 7171, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 7683 < 512 := by omega
    have heq : 7683 + (n - 7683) = n := by omega
    have hho : odds (7683 + (n - 7683)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_7683 ⟨n - 7683, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 8195 < 512 := by omega
    have heq : 8195 + (n - 8195) = n := by omega
    have hho : odds (8195 + (n - 8195)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_8195 ⟨n - 8195, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 8707 < 512 := by omega
    have heq : 8707 + (n - 8707) = n := by omega
    have hho : odds (8707 + (n - 8707)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_8707 ⟨n - 8707, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 9219 < 512 := by omega
    have heq : 9219 + (n - 9219) = n := by omega
    have hho : odds (9219 + (n - 9219)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_9219 ⟨n - 9219, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 9731 < 512 := by omega
    have heq : 9731 + (n - 9731) = n := by omega
    have hho : odds (9731 + (n - 9731)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_9731 ⟨n - 9731, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 10243 < 512 := by omega
    have heq : 10243 + (n - 10243) = n := by omega
    have hho : odds (10243 + (n - 10243)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_10243 ⟨n - 10243, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 10755 < 512 := by omega
    have heq : 10755 + (n - 10755) = n := by omega
    have hho : odds (10755 + (n - 10755)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_10755 ⟨n - 10755, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 11267 < 512 := by omega
    have heq : 11267 + (n - 11267) = n := by omega
    have hho : odds (11267 + (n - 11267)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_11267 ⟨n - 11267, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 11779 < 512 := by omega
    have heq : 11779 + (n - 11779) = n := by omega
    have hho : odds (11779 + (n - 11779)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_11779 ⟨n - 11779, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 12291 < 512 := by omega
    have heq : 12291 + (n - 12291) = n := by omega
    have hho : odds (12291 + (n - 12291)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_12291 ⟨n - 12291, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 12803 < 512 := by omega
    have heq : 12803 + (n - 12803) = n := by omega
    have hho : odds (12803 + (n - 12803)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_12803 ⟨n - 12803, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 13315 < 512 := by omega
    have heq : 13315 + (n - 13315) = n := by omega
    have hho : odds (13315 + (n - 13315)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_13315 ⟨n - 13315, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 13827 < 512 := by omega
    have heq : 13827 + (n - 13827) = n := by omega
    have hho : odds (13827 + (n - 13827)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_13827 ⟨n - 13827, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 14339 < 512 := by omega
    have heq : 14339 + (n - 14339) = n := by omega
    have hho : odds (14339 + (n - 14339)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_14339 ⟨n - 14339, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 14851 < 512 := by omega
    have heq : 14851 + (n - 14851) = n := by omega
    have hho : odds (14851 + (n - 14851)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_14851 ⟨n - 14851, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 15363 < 512 := by omega
    have heq : 15363 + (n - 15363) = n := by omega
    have hho : odds (15363 + (n - 15363)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_15363 ⟨n - 15363, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 15875 < 512 := by omega
    have heq : 15875 + (n - 15875) = n := by omega
    have hho : odds (15875 + (n - 15875)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_15875 ⟨n - 15875, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 16387 < 512 := by omega
    have heq : 16387 + (n - 16387) = n := by omega
    have hho : odds (16387 + (n - 16387)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_16387 ⟨n - 16387, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 16899 < 512 := by omega
    have heq : 16899 + (n - 16899) = n := by omega
    have hho : odds (16899 + (n - 16899)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_16899 ⟨n - 16899, hk⟩ hho
    simpa only [heq] using hchunk
  · have hk : n - 17411 < 256 := by omega
    have heq : 17411 + (n - 17411) = n := by omega
    have hho : odds (17411 + (n - 17411)) 32 ≤ 20 := by simpa [heq] using ho
    have hchunk := small_chunk_17411 ⟨n - 17411, hk⟩ hho
    simpa only [heq] using hchunk

theorem at_most_twenty_of_thirty_two_descend (n : Nat) (hn : 3 ≤ n)
    (ho : odds n 32 ≤ 20) :
    ordinaryIter n (32 + odds n 32) < n := by
  by_cases hsmall : n < 17667
  · exact small_starts_at_most_twenty_32 n hn ho hsmall
  · have hnlarge : 17667 ≤ n := by omega
    have hc := counts n 32
    have he : evens n 32 = 32 - odds n 32 := by omega
    have hbound := scaled_upper n 32
    rw [he] at hbound
    have hcases : odds n 32 = 0 ∨ odds n 32 = 1 ∨ odds n 32 = 2 ∨ odds n 32 = 3 ∨ odds n 32 = 4 ∨ odds n 32 = 5 ∨ odds n 32 = 6 ∨ odds n 32 = 7 ∨ odds n 32 = 8 ∨ odds n 32 = 9 ∨ odds n 32 = 10 ∨ odds n 32 = 11 ∨ odds n 32 = 12 ∨ odds n 32 = 13 ∨ odds n 32 = 14 ∨ odds n 32 = 15 ∨ odds n 32 = 16 ∨ odds n 32 = 17 ∨ odds n 32 = 18 ∨ odds n 32 = 19 ∨ odds n 32 = 20 := by omega
    have hnumeric : 3^(odds n 32) * (n + 2^(32 - odds n 32)) <
        2^32 * (n + 1) := by
      rcases hcases with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20
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
      · rw [h20]; omega
    have hproduct : 2^32 * (acceleratedIter n 32 + 1) <
        2^32 * (n + 1) := Nat.lt_of_le_of_lt hbound hnumeric
    have haccelerated : acceleratedIter n 32 < n := by omega
    have hbridge := ordinary_eq_accelerated n 32
    calc
      ordinaryIter n (32 + odds n 32) = acceleratedIter n 32 := hbridge
      _ < n := haccelerated

theorem counted_at_most_twenty_families_32 :
    (residueAtMostCount 32 20 = 4058348603) ∧
      ∀ n : Nat, 3 ≤ n → odds n 32 ≤ 20 →
        ordinaryIter n (32 + odds n 32) < n := by
  constructor
  · exact residue_at_most_twenty_count_32
  · intro n hn ho
    exact at_most_twenty_of_thirty_two_descend n hn ho

#print axioms residue_at_most_twenty_count_32
#print axioms at_most_twenty_of_thirty_two_descend
#print axioms counted_at_most_twenty_families_32

end MathCase.Collatz.WordBound
