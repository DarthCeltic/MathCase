import Mathlib.Data.Nat.Prime.Basic

namespace ResidueLane115

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod4_one : ∀ k : Nat, 0 < k → iterate (4 * k + 1) 3 = 3 * k + 1 ∧ 3 * k + 1 < 4 * k + 1 := by
  intro k hk
  have h1 : C (4 * k + 1) = 12 * k + 4 := by
    unfold C
    simp [show (4 * k + 1) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12 * k + 4) = 6 * k + 2 := by
    unfold C
    simp [show (12 * k + 4) % 2 = 0 by omega]
    omega
  have h3 : C (6 * k + 2) = 3 * k + 1 := by
    unfold C
    simp [show (6 * k + 2) % 2 = 0 by omega]
    omega
  have hIter : iterate (4 * k + 1) 3 = C (C (C (4 * k + 1))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3]
  · omega

theorem descent_mod16_three : ∀ k : Nat, iterate (16 * k + 3) 6 = 9 * k + 2 ∧ 9 * k + 2 < 16 * k + 3 := by
  intro k
  have h1 : C (16 * k + 3) = 48 * k + 10 := by
    unfold C
    simp [show (16 * k + 3) % 2 ≠ 0 by omega]
    omega
  have h2 : C (48 * k + 10) = 24 * k + 5 := by
    unfold C
    simp [show (48 * k + 10) % 2 = 0 by omega]
    omega
  have h3 : C (24 * k + 5) = 72 * k + 16 := by
    unfold C
    simp [show (24 * k + 5) % 2 ≠ 0 by omega]
    omega
  have h4 : C (72 * k + 16) = 36 * k + 8 := by
    unfold C
    simp [show (72 * k + 16) % 2 = 0 by omega]
    omega
  have h5 : C (36 * k + 8) = 18 * k + 4 := by
    unfold C
    simp [show (36 * k + 8) % 2 = 0 by omega]
    omega
  have h6 : C (18 * k + 4) = 9 * k + 2 := by
    unfold C
    simp [show (18 * k + 4) % 2 = 0 by omega]
    omega
  have hIter : iterate (16 * k + 3) 6 = C (C (C (C (C (C (16 * k + 3)))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6]
  · omega

theorem descent_mod32_eleven : ∀ k : Nat, iterate (32 * k + 11) 8 = 27 * k + 10 ∧ 27 * k + 10 < 32 * k + 11 := by
  intro k
  have h1 : C (32 * k + 11) = 96 * k + 34 := by
    unfold C
    simp [show (32 * k + 11) % 2 ≠ 0 by omega]
    omega
  have h2 : C (96 * k + 34) = 48 * k + 17 := by
    unfold C
    simp [show (96 * k + 34) % 2 = 0 by omega]
    omega
  have h3 : C (48 * k + 17) = 144 * k + 52 := by
    unfold C
    simp [show (48 * k + 17) % 2 ≠ 0 by omega]
    omega
  have h4 : C (144 * k + 52) = 72 * k + 26 := by
    unfold C
    simp [show (144 * k + 52) % 2 = 0 by omega]
    omega
  have h5 : C (72 * k + 26) = 36 * k + 13 := by
    unfold C
    simp [show (72 * k + 26) % 2 = 0 by omega]
    omega
  have h6 : C (36 * k + 13) = 108 * k + 40 := by
    unfold C
    simp [show (36 * k + 13) % 2 ≠ 0 by omega]
    omega
  have h7 : C (108 * k + 40) = 54 * k + 20 := by
    unfold C
    simp [show (108 * k + 40) % 2 = 0 by omega]
    omega
  have h8 : C (54 * k + 20) = 27 * k + 10 := by
    unfold C
    simp [show (54 * k + 20) % 2 = 0 by omega]
    omega
  have hIter : iterate (32 * k + 11) 8 = C (C (C (C (C (C (C (C (32 * k + 11)))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8]
  · omega

theorem descent_mod32_twentythree : ∀ k : Nat, iterate (32 * k + 23) 8 = 27 * k + 20 ∧ 27 * k + 20 < 32 * k + 23 := by
  intro k
  have h1 : C (32 * k + 23) = 96 * k + 70 := by
    unfold C
    simp [show (32 * k + 23) % 2 ≠ 0 by omega]
    omega
  have h2 : C (96 * k + 70) = 48 * k + 35 := by
    unfold C
    simp [show (96 * k + 70) % 2 = 0 by omega]
    omega
  have h3 : C (48 * k + 35) = 144 * k + 106 := by
    unfold C
    simp [show (48 * k + 35) % 2 ≠ 0 by omega]
    omega
  have h4 : C (144 * k + 106) = 72 * k + 53 := by
    unfold C
    simp [show (144 * k + 106) % 2 = 0 by omega]
    omega
  have h5 : C (72 * k + 53) = 216 * k + 160 := by
    unfold C
    simp [show (72 * k + 53) % 2 ≠ 0 by omega]
    omega
  have h6 : C (216 * k + 160) = 108 * k + 80 := by
    unfold C
    simp [show (216 * k + 160) % 2 = 0 by omega]
    omega
  have h7 : C (108 * k + 80) = 54 * k + 40 := by
    unfold C
    simp [show (108 * k + 80) % 2 = 0 by omega]
    omega
  have h8 : C (54 * k + 40) = 27 * k + 20 := by
    unfold C
    simp [show (54 * k + 40) % 2 = 0 by omega]
    omega
  have hIter : iterate (32 * k + 23) 8 = C (C (C (C (C (C (C (C (32 * k + 23)))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8]
  · omega

theorem descent_mod128_seven : ∀ k : Nat, iterate (128 * k + 7) 11 = 81 * k + 5 ∧ 81 * k + 5 < 128 * k + 7 := by
  intro k
  have h1 : C (128 * k + 7) = 384 * k + 22 := by
    unfold C
    simp [show (128 * k + 7) % 2 ≠ 0 by omega]
    omega
  have h2 : C (384 * k + 22) = 192 * k + 11 := by
    unfold C
    simp [show (384 * k + 22) % 2 = 0 by omega]
    omega
  have h3 : C (192 * k + 11) = 576 * k + 34 := by
    unfold C
    simp [show (192 * k + 11) % 2 ≠ 0 by omega]
    omega
  have h4 : C (576 * k + 34) = 288 * k + 17 := by
    unfold C
    simp [show (576 * k + 34) % 2 = 0 by omega]
    omega
  have h5 : C (288 * k + 17) = 864 * k + 52 := by
    unfold C
    simp [show (288 * k + 17) % 2 ≠ 0 by omega]
    omega
  have h6 : C (864 * k + 52) = 432 * k + 26 := by
    unfold C
    simp [show (864 * k + 52) % 2 = 0 by omega]
    omega
  have h7 : C (432 * k + 26) = 216 * k + 13 := by
    unfold C
    simp [show (432 * k + 26) % 2 = 0 by omega]
    omega
  have h8 : C (216 * k + 13) = 648 * k + 40 := by
    unfold C
    simp [show (216 * k + 13) % 2 ≠ 0 by omega]
    omega
  have h9 : C (648 * k + 40) = 324 * k + 20 := by
    unfold C
    simp [show (648 * k + 40) % 2 = 0 by omega]
    omega
  have h10 : C (324 * k + 20) = 162 * k + 10 := by
    unfold C
    simp [show (324 * k + 20) % 2 = 0 by omega]
    omega
  have h11 : C (162 * k + 10) = 81 * k + 5 := by
    unfold C
    simp [show (162 * k + 10) % 2 = 0 by omega]
    omega
  have hIter : iterate (128 * k + 7) 11 = C (C (C (C (C (C (C (C (C (C (C (128 * k + 7))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11]
  · omega

theorem descent_mod128_fifteen : ∀ k : Nat, iterate (128 * k + 15) 11 = 81 * k + 10 ∧ 81 * k + 10 < 128 * k + 15 := by
  intro k
  have h1 : C (128 * k + 15) = 384 * k + 46 := by
    unfold C
    simp [show (128 * k + 15) % 2 ≠ 0 by omega]
    omega
  have h2 : C (384 * k + 46) = 192 * k + 23 := by
    unfold C
    simp [show (384 * k + 46) % 2 = 0 by omega]
    omega
  have h3 : C (192 * k + 23) = 576 * k + 70 := by
    unfold C
    simp [show (192 * k + 23) % 2 ≠ 0 by omega]
    omega
  have h4 : C (576 * k + 70) = 288 * k + 35 := by
    unfold C
    simp [show (576 * k + 70) % 2 = 0 by omega]
    omega
  have h5 : C (288 * k + 35) = 864 * k + 106 := by
    unfold C
    simp [show (288 * k + 35) % 2 ≠ 0 by omega]
    omega
  have h6 : C (864 * k + 106) = 432 * k + 53 := by
    unfold C
    simp [show (864 * k + 106) % 2 = 0 by omega]
    omega
  have h7 : C (432 * k + 53) = 1296 * k + 160 := by
    unfold C
    simp [show (432 * k + 53) % 2 ≠ 0 by omega]
    omega
  have h8 : C (1296 * k + 160) = 648 * k + 80 := by
    unfold C
    simp [show (1296 * k + 160) % 2 = 0 by omega]
    omega
  have h9 : C (648 * k + 80) = 324 * k + 40 := by
    unfold C
    simp [show (648 * k + 80) % 2 = 0 by omega]
    omega
  have h10 : C (324 * k + 40) = 162 * k + 20 := by
    unfold C
    simp [show (324 * k + 40) % 2 = 0 by omega]
    omega
  have h11 : C (162 * k + 20) = 81 * k + 10 := by
    unfold C
    simp [show (162 * k + 20) % 2 = 0 by omega]
    omega
  have hIter : iterate (128 * k + 15) 11 = C (C (C (C (C (C (C (C (C (C (C (128 * k + 15))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11]
  · omega

theorem descent_mod128_fiftynine : ∀ k : Nat, iterate (128 * k + 59) 11 = 81 * k + 38 ∧ 81 * k + 38 < 128 * k + 59 := by
  intro k
  have h1 : C (128 * k + 59) = 384 * k + 178 := by
    unfold C
    simp [show (128 * k + 59) % 2 ≠ 0 by omega]
    omega
  have h2 : C (384 * k + 178) = 192 * k + 89 := by
    unfold C
    simp [show (384 * k + 178) % 2 = 0 by omega]
    omega
  have h3 : C (192 * k + 89) = 576 * k + 268 := by
    unfold C
    simp [show (192 * k + 89) % 2 ≠ 0 by omega]
    omega
  have h4 : C (576 * k + 268) = 288 * k + 134 := by
    unfold C
    simp [show (576 * k + 268) % 2 = 0 by omega]
    omega
  have h5 : C (288 * k + 134) = 144 * k + 67 := by
    unfold C
    simp [show (288 * k + 134) % 2 = 0 by omega]
    omega
  have h6 : C (144 * k + 67) = 432 * k + 202 := by
    unfold C
    simp [show (144 * k + 67) % 2 ≠ 0 by omega]
    omega
  have h7 : C (432 * k + 202) = 216 * k + 101 := by
    unfold C
    simp [show (432 * k + 202) % 2 = 0 by omega]
    omega
  have h8 : C (216 * k + 101) = 648 * k + 304 := by
    unfold C
    simp [show (216 * k + 101) % 2 ≠ 0 by omega]
    omega
  have h9 : C (648 * k + 304) = 324 * k + 152 := by
    unfold C
    simp [show (648 * k + 304) % 2 = 0 by omega]
    omega
  have h10 : C (324 * k + 152) = 162 * k + 76 := by
    unfold C
    simp [show (324 * k + 152) % 2 = 0 by omega]
    omega
  have h11 : C (162 * k + 76) = 81 * k + 38 := by
    unfold C
    simp [show (162 * k + 76) % 2 = 0 by omega]
    omega
  have hIter : iterate (128 * k + 59) 11 = C (C (C (C (C (C (C (C (C (C (C (128 * k + 59))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11]
  · omega

theorem bounded_residue_descent :
    ∀ n : Nat, 2 ≤ n →
      (n % 2 = 0 ∨ n % 4 = 1 ∨ n % 16 = 3 ∨ n % 32 = 11 ∨ n % 32 = 23 ∨
        n % 128 = 7 ∨ n % 128 = 15 ∨ n % 128 = 59) →
      ∃ t : Nat, 1 ≤ t ∧ t ≤ 11 ∧ iterate n t < n := by
  intro n hn hres
  rcases hres with heven | hrest
  · refine ⟨1, by omega, by omega, ?_⟩
    have h : C n < n := by
      unfold C
      simp [heven]
      omega
    simpa [iterate] using h
  rcases hrest with h4 | hrest
  · have hdiv : n = 4 * (n / 4) + 1 := by
      have h := Nat.mod_add_div n 4
      omega
    have hk : 0 < n / 4 := by omega
    obtain ⟨heq, hlt⟩ := descent_mod4_one (n / 4) hk
    refine ⟨3, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with h16 | hrest
  · have hdiv : n = 16 * (n / 16) + 3 := by
      have h := Nat.mod_add_div n 16
      omega
    obtain ⟨heq, hlt⟩ := descent_mod16_three (n / 16)
    refine ⟨6, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with h32a | hrest
  · have hdiv : n = 32 * (n / 32) + 11 := by
      have h := Nat.mod_add_div n 32
      omega
    obtain ⟨heq, hlt⟩ := descent_mod32_eleven (n / 32)
    refine ⟨8, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with h32b | hrest
  · have hdiv : n = 32 * (n / 32) + 23 := by
      have h := Nat.mod_add_div n 32
      omega
    obtain ⟨heq, hlt⟩ := descent_mod32_twentythree (n / 32)
    refine ⟨8, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with h128a | hrest
  · have hdiv : n = 128 * (n / 128) + 7 := by
      have h := Nat.mod_add_div n 128
      omega
    obtain ⟨heq, hlt⟩ := descent_mod128_seven (n / 128)
    refine ⟨11, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with h128b | h128c
  · have hdiv : n = 128 * (n / 128) + 15 := by
      have h := Nat.mod_add_div n 128
      omega
    obtain ⟨heq, hlt⟩ := descent_mod128_fifteen (n / 128)
    refine ⟨11, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  · have hdiv : n = 128 * (n / 128) + 59 := by
      have h := Nat.mod_add_div n 128
      omega
    obtain ⟨heq, hlt⟩ := descent_mod128_fiftynine (n / 128)
    refine ⟨11, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt

#print axioms bounded_residue_descent



def eligibleResidue (r : Nat) : Bool :=
  decide (r % 2 = 0 ∨ r % 4 = 1 ∨ r % 16 = 3 ∨ r % 32 = 11 ∨ r % 32 = 23 ∨
    r % 128 = 7 ∨ r % 128 = 15 ∨ r % 128 = 59)

theorem eligibleResidue_count :
    (List.filter eligibleResidue (List.range 128)).length = 115 := by
  decide

#print axioms eligibleResidue_count

end ResidueLane115