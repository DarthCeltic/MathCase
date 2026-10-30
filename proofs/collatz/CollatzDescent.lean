import Mathlib.Data.Nat.Prime.Basic

def collatzStep (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

theorem collatz_three_step_family_natRec :
    (fun C : Nat → Nat => ∀ k : Nat, 0 < k →
      Nat.rec (4 * k + 1) (fun _ previous => C previous) 3 = 3 * k + 1 ∧
        3 * k + 1 < 4 * k + 1) collatzStep := by
  intro k hk
  change Nat.rec (4 * k + 1) (fun _ previous => collatzStep previous) 3 = 3 * k + 1 ∧
    3 * k + 1 < 4 * k + 1
  have h1 : collatzStep (4 * k + 1) = 12 * k + 4 := by
    dsimp [collatzStep]
    simp [show (4 * k + 1) % 2 ≠ 0 by omega]
    omega
  have h2 : collatzStep (12 * k + 4) = 6 * k + 2 := by
    dsimp [collatzStep]
    simp [show (12 * k + 4) % 2 = 0 by omega]
    omega
  have h3 : collatzStep (6 * k + 2) = 3 * k + 1 := by
    dsimp [collatzStep]
    simp [show (6 * k + 2) % 2 = 0 by omega]
    omega
  have hIter : Nat.rec (4 * k + 1) (fun _ previous => collatzStep previous) 3 =
      collatzStep (collatzStep (collatzStep (4 * k + 1))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3]
  · omega

theorem collatz_six_step_family_natRec :
    (fun C : Nat → Nat => ∀ k : Nat,
      Nat.rec (16 * k + 3) (fun _ previous => C previous) 6 = 9 * k + 2 ∧
        9 * k + 2 < 16 * k + 3) collatzStep := by
  intro k
  change Nat.rec (16 * k + 3) (fun _ previous => collatzStep previous) 6 = 9 * k + 2 ∧
    9 * k + 2 < 16 * k + 3
  have h1 : collatzStep (16 * k + 3) = 48 * k + 10 := by
    dsimp [collatzStep]
    simp [show (16 * k + 3) % 2 ≠ 0 by omega]
    omega
  have h2 : collatzStep (48 * k + 10) = 24 * k + 5 := by
    dsimp [collatzStep]
    simp [show (48 * k + 10) % 2 = 0 by omega]
    omega
  have h3 : collatzStep (24 * k + 5) = 72 * k + 16 := by
    dsimp [collatzStep]
    simp [show (24 * k + 5) % 2 ≠ 0 by omega]
    omega
  have h4 : collatzStep (72 * k + 16) = 36 * k + 8 := by
    dsimp [collatzStep]
    simp [show (72 * k + 16) % 2 = 0 by omega]
    omega
  have h5 : collatzStep (36 * k + 8) = 18 * k + 4 := by
    dsimp [collatzStep]
    simp [show (36 * k + 8) % 2 = 0 by omega]
    omega
  have h6 : collatzStep (18 * k + 4) = 9 * k + 2 := by
    dsimp [collatzStep]
    simp [show (18 * k + 4) % 2 = 0 by omega]
    omega
  have hIter : Nat.rec (16 * k + 3) (fun _ previous => collatzStep previous) 6 =
      collatzStep (collatzStep (collatzStep (collatzStep (collatzStep (collatzStep (16 * k + 3)))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6]
  · omega

 theorem collatz_restricted_descent :
    ∀ n : Nat, 0 < n →
      (n % 2 = 0 ∨ (∃ k : Nat, n = 4 * k + 1 ∧ 0 < k) ∨
        (∃ k : Nat, n = 16 * k + 3)) →
      ∃ t : Nat, t ≤ 6 ∧ Nat.rec n (fun _ previous => collatzStep previous) t < n := by
  intro n hn hcases
  rcases hcases with hEven | hFour | hSix
  · refine ⟨1, by omega, ?_⟩
    change collatzStep n < n
    dsimp [collatzStep]
    simp [hEven]
    omega
  · rcases hFour with ⟨k, hEq, hk⟩
    subst n
    rcases collatz_three_step_family_natRec k hk with ⟨hIter, hlt⟩
    exact ⟨3, by omega, hIter ▸ hlt⟩
  · rcases hSix with ⟨k, hEq⟩
    subst n
    rcases collatz_six_step_family_natRec k with ⟨hIter, hlt⟩
    exact ⟨6, by omega, hIter ▸ hlt⟩

#print axioms collatz_three_step_family_natRec
#print axioms collatz_six_step_family_natRec
#print axioms collatz_restricted_descent
theorem collatz_residue_coverage :
    ∀ n : Nat, 2 ≤ n → n % 16 ≠ 7 → n % 16 ≠ 11 → n % 16 ≠ 15 →
      ∃ t : Nat, 1 ≤ t ∧ t ≤ 6 ∧
        Nat.rec n (fun _ previous => collatzStep previous) t < n := by
  intro n hn h7 h11 h15
  by_cases hEven : n % 2 = 0
  · refine ⟨1, by omega, by omega, ?_⟩
    change collatzStep n < n
    dsimp [collatzStep]
    simp [hEven]
    omega
  · have hOdd : n % 2 = 1 := by omega
    by_cases hThree : n % 16 = 3
    · let k : Nat := n / 16
      have hEq : n = 16 * k + 3 := by dsimp [k]; omega
      rcases collatz_six_step_family_natRec k with ⟨hIter, hlt⟩
      refine ⟨6, by omega, by omega, ?_⟩
      rw [hEq]
      exact hIter ▸ hlt
    · have hFour : n % 4 = 1 := by omega
      let k : Nat := n / 4
      have hEq : n = 4 * k + 1 := by dsimp [k]; omega
      have hk : 0 < k := by dsimp [k]; omega
      rcases collatz_three_step_family_natRec k hk with ⟨hIter, hlt⟩
      refine ⟨3, by omega, by omega, ?_⟩
      rw [hEq]
      exact hIter ▸ hlt

#print axioms collatz_residue_coverage
