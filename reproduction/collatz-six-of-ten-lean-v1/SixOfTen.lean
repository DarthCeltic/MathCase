import WordBound

namespace MathCase.Collatz.SixOfTen

open MathCase.Collatz.WordBound

/-- A reusable sufficient criterion obtained from `WordBound.scaled_upper`.
If the scaled RHS contracts against `2^t * (n + 1)`, the accelerated
representative and hence the corresponding ordinary iterate is below `n`. -/
theorem cap_scaled_descent (n t k : Nat) (ho : odds n t ≤ k)
    (hcap : 3^k * (n + 2^t) < 2^t * (n + 1)) :
    ordinaryIter n (t + odds n t) < n := by
  have hc := counts n t
  have he : evens n t ≤ t := by omega
  have hodd : 3^(odds n t) ≤ 3^k := Nat.pow_le_pow_right (by omega) ho
  have heven : 2^(evens n t) ≤ 2^t := Nat.pow_le_pow_right (by omega) he
  have hsum : n + 2^(evens n t) ≤ n + 2^t := Nat.add_le_add_left heven n
  have hrhs : 3^(odds n t) * (n + 2^(evens n t)) ≤ 3^k * (n + 2^t) :=
    Nat.mul_le_mul hodd hsum
  have hs : 2^t * (acceleratedIter n t + 1) ≤ 3^k * (n + 2^t) :=
    Nat.le_trans (scaled_upper n t) hrhs
  have hacc : acceleratedIter n t < n := by
    have hh : 2^t * (acceleratedIter n t + 1) < 2^t * (n + 1) :=
      Nat.lt_of_le_of_lt hs hcap
    by_cases hle : n ≤ acceleratedIter n t
    · have hmul := Nat.mul_le_mul_left (2^t) (Nat.add_le_add_right hle 1)
      omega
    · omega
  rw [ordinary_eq_accelerated n t]
  exact hacc

/-- Six odd accelerated inputs among the first ten imply descent by step 16,
once the start is at least 2528. -/
theorem six_of_ten_large (n : Nat) (hn : 2528 ≤ n) (ho : odds n 10 ≤ 6) :
    ordinaryIter n (10 + odds n 10) < n := by
  apply cap_scaled_descent n 10 6 ho
  have hthree : 3^6 = 729 := by decide
  have htwo : 2^10 = 1024 := by decide
  rw [hthree, htwo]
  omega

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
private theorem small_starts : ∀ n : Fin 2528,
    3 ≤ n.val → odds n.val 10 ≤ 6 →
    ordinaryIter n.val (10 + odds n.val 10) < n.val := by
  decide

/-- Every start `n ≥ 3` with at most six odd accelerated inputs in ten steps
falls below `n` by ordinary time `10 + odds(n,10)`, at most 16. -/
theorem six_of_ten (n : Nat) (hn : 3 ≤ n) (ho : odds n 10 ≤ 6) :
    ordinaryIter n (10 + odds n 10) < n := by
  by_cases hlarge : 2528 ≤ n
  · exact six_of_ten_large n hlarge ho
  · exact small_starts ⟨n, by omega⟩ hn ho

/-- Odd-input counts are monotone as a prefix is extended. -/
theorem odds_append (n t u : Nat) :
    odds n (t + u) = odds n t + odds (acceleratedIter n t) u := by
  induction t generalizing n with
  | zero => simp [odds, acceleratedIter]
  | succ t ih =>
    rw [Nat.succ_add]
    simp only [odds]
    rw [ih (accelerated n)]
    simp only [acceleratedIter]
    by_cases he : n % 2 = 0 <;> simp [he, Nat.add_assoc] <;> omega

theorem odds_prefix_mono (n t u : Nat) : odds n t ≤ odds n (t + u) := by
  rw [odds_append]
  omega

/-- A six-of-twelve prefix condition implies the same drop, since the first
ten odd count cannot exceed the first twelve odd count. The ordinary step is
at most 16. -/
theorem six_of_twelve (n : Nat) (hn : 3 ≤ n) (ho : odds n 12 ≤ 6) :
    ordinaryIter n (10 + odds n 10) < n := by
  have ho10 : odds n 10 ≤ 6 := Nat.le_trans (odds_prefix_mono n 10 2) ho
  exact six_of_ten n hn ho10

/-- The start 347 has six odd inputs in its first ten accelerated steps and
its first strict descent occurs exactly at ordinary step 16. -/
theorem n347_first_drop :
    odds 347 10 = 6 ∧ ordinaryIter 347 16 < 347 ∧
    ∀ t : Nat, t < 16 → 347 ≤ ordinaryIter 347 t := by
  decide

#print axioms cap_scaled_descent
#print axioms six_of_ten
#print axioms six_of_twelve
#print axioms n347_first_drop

end MathCase.Collatz.SixOfTen
