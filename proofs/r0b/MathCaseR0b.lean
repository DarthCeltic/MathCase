/-!
R0b rebuild of Lean's published Nat.add_assoc theorem.

Source theorem: Lean 4 v4.33.1, Init/Data/Nat/Basic.lean.
This local tactic proof is intentionally written with an explicit induction split
so the interactive proof interfaces can expose and measure both resulting states.
-/

theorem mathcaseNatAddAssoc (n m k : Nat) : (n + m) + k = n + (m + k) := by
  induction k with
  | zero => rfl
  | succ k ih =>
    simp only [Nat.add_succ]
    rw [ih]

#print axioms mathcaseNatAddAssoc
