import Mathlib.Data.Nat.Prime.Basic

theorem mathcase_candidate : (∀ (p n : Nat), p.Prime → p ∣ n ^ 2 → p ∣ n) := by
  intro p n hp h; exact Nat.Prime.dvd_of_dvd_pow hp h

#print axioms mathcase_candidate
