theorem doubleEven (n : Nat) : ∃ k : Nat, n + n = 2 * k := by
  exact ⟨n, (Nat.two_mul n).symm⟩
