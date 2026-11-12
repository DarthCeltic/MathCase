import Mathlib.Data.Nat.Prime.Basic
import CollatzAffineTrace

namespace MathCase.CollatzAffineTrace

theorem collatzStep_pos {n : Nat} (hn : 0 < n) : 0 < collatzStep n := by
  unfold collatzStep
  split <;> omega

theorem iterate_pos : ∀ n t : Nat, 0 < n → 0 < iterate n t := by
  intro n t
  induction t generalizing n with
  | zero =>
      intro hn
      simpa [iterate] using hn
  | succ t ih =>
      intro hn
      rw [iterate_succ]
      exact ih (collatzStep n) (collatzStep_pos hn)

theorem iterate_add : ∀ n a b : Nat, iterate n (a + b) = iterate (iterate n a) b := by
  intro n a
  induction a generalizing n with
  | zero =>
      intro b
      simp [iterate]
  | succ a ih =>
      intro b
      calc
        iterate n ((a + 1) + b) = iterate n ((a + b) + 1) := by
          congr 1
          omega
        _ = iterate (collatzStep n) (a + b) := iterate_succ n (a + b)
        _ = iterate (iterate (collatzStep n) a) b := ih (collatzStep n) b
        _ = iterate (iterate n (a + 1)) b := by rw [iterate_succ]

theorem strictDescentImpliesEventualOne
    (hdescent : ∀ n : Nat, 1 < n → ∃ steps : Nat, 0 < steps ∧ iterate n steps < n) :
    ∀ n : Nat, 0 < n → ∃ steps : Nat, iterate n steps = 1 := by
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro hn
      by_cases hOne : n = 1
      · subst n
        exact ⟨0, rfl⟩
      · have hgt : 1 < n := by omega
        obtain ⟨steps, hsteps, hlt⟩ := hdescent n hgt
        have hpositive := iterate_pos n steps hn
        obtain ⟨rest, hrest⟩ := ih (iterate n steps) hlt hpositive
        refine ⟨steps + rest, ?_⟩
        calc
          iterate n (steps + rest) = iterate (iterate n steps) rest := iterate_add n steps rest
          _ = 1 := hrest

end MathCase.CollatzAffineTrace

#print axioms MathCase.CollatzAffineTrace.strictDescentImpliesEventualOne
