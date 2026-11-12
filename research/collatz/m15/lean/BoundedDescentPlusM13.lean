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

theorem descent_mod256_39 : ∀ k : Nat, iterate (256 * k + 39) 13 = 243 * k + 38 ∧ 243 * k + 38 < 256 * k + 39 := by
  intro k
  have h1 : C (256 * k + 39) = 768 * k + 118 := by
    unfold C
    simp [show (256 * k + 39) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 118) = 384 * k + 59 := by
    unfold C
    simp [show (768 * k + 118) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 59) = 1152 * k + 178 := by
    unfold C
    simp [show (384 * k + 59) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 178) = 576 * k + 89 := by
    unfold C
    simp [show (1152 * k + 178) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 89) = 1728 * k + 268 := by
    unfold C
    simp [show (576 * k + 89) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1728 * k + 268) = 864 * k + 134 := by
    unfold C
    simp [show (1728 * k + 268) % 2 = 0 by omega]
    omega
  have h7 : C (864 * k + 134) = 432 * k + 67 := by
    unfold C
    simp [show (864 * k + 134) % 2 = 0 by omega]
    omega
  have h8 : C (432 * k + 67) = 1296 * k + 202 := by
    unfold C
    simp [show (432 * k + 67) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1296 * k + 202) = 648 * k + 101 := by
    unfold C
    simp [show (1296 * k + 202) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 101) = 1944 * k + 304 := by
    unfold C
    simp [show (648 * k + 101) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1944 * k + 304) = 972 * k + 152 := by
    unfold C
    simp [show (1944 * k + 304) % 2 = 0 by omega]
    omega
  have h12 : C (972 * k + 152) = 486 * k + 76 := by
    unfold C
    simp [show (972 * k + 152) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 76) = 243 * k + 38 := by
    unfold C
    simp [show (486 * k + 76) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 39) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 39))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_175 : ∀ k : Nat, iterate (256 * k + 175) 13 = 243 * k + 167 ∧ 243 * k + 167 < 256 * k + 175 := by
  intro k
  have h1 : C (256 * k + 175) = 768 * k + 526 := by
    unfold C
    simp [show (256 * k + 175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 526) = 384 * k + 263 := by
    unfold C
    simp [show (768 * k + 526) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 263) = 1152 * k + 790 := by
    unfold C
    simp [show (384 * k + 263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 790) = 576 * k + 395 := by
    unfold C
    simp [show (1152 * k + 790) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 395) = 1728 * k + 1186 := by
    unfold C
    simp [show (576 * k + 395) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1728 * k + 1186) = 864 * k + 593 := by
    unfold C
    simp [show (1728 * k + 1186) % 2 = 0 by omega]
    omega
  have h7 : C (864 * k + 593) = 2592 * k + 1780 := by
    unfold C
    simp [show (864 * k + 593) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2592 * k + 1780) = 1296 * k + 890 := by
    unfold C
    simp [show (2592 * k + 1780) % 2 = 0 by omega]
    omega
  have h9 : C (1296 * k + 890) = 648 * k + 445 := by
    unfold C
    simp [show (1296 * k + 890) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 445) = 1944 * k + 1336 := by
    unfold C
    simp [show (648 * k + 445) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1944 * k + 1336) = 972 * k + 668 := by
    unfold C
    simp [show (1944 * k + 1336) % 2 = 0 by omega]
    omega
  have h12 : C (972 * k + 668) = 486 * k + 334 := by
    unfold C
    simp [show (972 * k + 668) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 334) = 243 * k + 167 := by
    unfold C
    simp [show (486 * k + 334) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 175) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 175))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_199 : ∀ k : Nat, iterate (256 * k + 199) 13 = 243 * k + 190 ∧ 243 * k + 190 < 256 * k + 199 := by
  intro k
  have h1 : C (256 * k + 199) = 768 * k + 598 := by
    unfold C
    simp [show (256 * k + 199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 598) = 384 * k + 299 := by
    unfold C
    simp [show (768 * k + 598) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 299) = 1152 * k + 898 := by
    unfold C
    simp [show (384 * k + 299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 898) = 576 * k + 449 := by
    unfold C
    simp [show (1152 * k + 898) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 449) = 1728 * k + 1348 := by
    unfold C
    simp [show (576 * k + 449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1728 * k + 1348) = 864 * k + 674 := by
    unfold C
    simp [show (1728 * k + 1348) % 2 = 0 by omega]
    omega
  have h7 : C (864 * k + 674) = 432 * k + 337 := by
    unfold C
    simp [show (864 * k + 674) % 2 = 0 by omega]
    omega
  have h8 : C (432 * k + 337) = 1296 * k + 1012 := by
    unfold C
    simp [show (432 * k + 337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1296 * k + 1012) = 648 * k + 506 := by
    unfold C
    simp [show (1296 * k + 1012) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 506) = 324 * k + 253 := by
    unfold C
    simp [show (648 * k + 506) % 2 = 0 by omega]
    omega
  have h11 : C (324 * k + 253) = 972 * k + 760 := by
    unfold C
    simp [show (324 * k + 253) % 2 ≠ 0 by omega]
    omega
  have h12 : C (972 * k + 760) = 486 * k + 380 := by
    unfold C
    simp [show (972 * k + 760) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 380) = 243 * k + 190 := by
    unfold C
    simp [show (486 * k + 380) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 199) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 199))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_79 : ∀ k : Nat, iterate (256 * k + 79) 13 = 243 * k + 76 ∧ 243 * k + 76 < 256 * k + 79 := by
  intro k
  have h1 : C (256 * k + 79) = 768 * k + 238 := by
    unfold C
    simp [show (256 * k + 79) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 238) = 384 * k + 119 := by
    unfold C
    simp [show (768 * k + 238) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 119) = 1152 * k + 358 := by
    unfold C
    simp [show (384 * k + 119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 358) = 576 * k + 179 := by
    unfold C
    simp [show (1152 * k + 358) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 179) = 1728 * k + 538 := by
    unfold C
    simp [show (576 * k + 179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1728 * k + 538) = 864 * k + 269 := by
    unfold C
    simp [show (1728 * k + 538) % 2 = 0 by omega]
    omega
  have h7 : C (864 * k + 269) = 2592 * k + 808 := by
    unfold C
    simp [show (864 * k + 269) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2592 * k + 808) = 1296 * k + 404 := by
    unfold C
    simp [show (2592 * k + 808) % 2 = 0 by omega]
    omega
  have h9 : C (1296 * k + 404) = 648 * k + 202 := by
    unfold C
    simp [show (1296 * k + 404) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 202) = 324 * k + 101 := by
    unfold C
    simp [show (648 * k + 202) % 2 = 0 by omega]
    omega
  have h11 : C (324 * k + 101) = 972 * k + 304 := by
    unfold C
    simp [show (324 * k + 101) % 2 ≠ 0 by omega]
    omega
  have h12 : C (972 * k + 304) = 486 * k + 152 := by
    unfold C
    simp [show (972 * k + 304) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 152) = 243 * k + 76 := by
    unfold C
    simp [show (486 * k + 152) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 79) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 79))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_219 : ∀ k : Nat, iterate (256 * k + 219) 13 = 243 * k + 209 ∧ 243 * k + 209 < 256 * k + 219 := by
  intro k
  have h1 : C (256 * k + 219) = 768 * k + 658 := by
    unfold C
    simp [show (256 * k + 219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 658) = 384 * k + 329 := by
    unfold C
    simp [show (768 * k + 658) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 329) = 1152 * k + 988 := by
    unfold C
    simp [show (384 * k + 329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 988) = 576 * k + 494 := by
    unfold C
    simp [show (1152 * k + 988) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 494) = 288 * k + 247 := by
    unfold C
    simp [show (576 * k + 494) % 2 = 0 by omega]
    omega
  have h6 : C (288 * k + 247) = 864 * k + 742 := by
    unfold C
    simp [show (288 * k + 247) % 2 ≠ 0 by omega]
    omega
  have h7 : C (864 * k + 742) = 432 * k + 371 := by
    unfold C
    simp [show (864 * k + 742) % 2 = 0 by omega]
    omega
  have h8 : C (432 * k + 371) = 1296 * k + 1114 := by
    unfold C
    simp [show (432 * k + 371) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1296 * k + 1114) = 648 * k + 557 := by
    unfold C
    simp [show (1296 * k + 1114) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 557) = 1944 * k + 1672 := by
    unfold C
    simp [show (648 * k + 557) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1944 * k + 1672) = 972 * k + 836 := by
    unfold C
    simp [show (1944 * k + 1672) % 2 = 0 by omega]
    omega
  have h12 : C (972 * k + 836) = 486 * k + 418 := by
    unfold C
    simp [show (972 * k + 836) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 418) = 243 * k + 209 := by
    unfold C
    simp [show (486 * k + 418) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 219) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 219))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_95 : ∀ k : Nat, iterate (256 * k + 95) 13 = 243 * k + 91 ∧ 243 * k + 91 < 256 * k + 95 := by
  intro k
  have h1 : C (256 * k + 95) = 768 * k + 286 := by
    unfold C
    simp [show (256 * k + 95) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 286) = 384 * k + 143 := by
    unfold C
    simp [show (768 * k + 286) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 143) = 1152 * k + 430 := by
    unfold C
    simp [show (384 * k + 143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 430) = 576 * k + 215 := by
    unfold C
    simp [show (1152 * k + 430) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 215) = 1728 * k + 646 := by
    unfold C
    simp [show (576 * k + 215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1728 * k + 646) = 864 * k + 323 := by
    unfold C
    simp [show (1728 * k + 646) % 2 = 0 by omega]
    omega
  have h7 : C (864 * k + 323) = 2592 * k + 970 := by
    unfold C
    simp [show (864 * k + 323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2592 * k + 970) = 1296 * k + 485 := by
    unfold C
    simp [show (2592 * k + 970) % 2 = 0 by omega]
    omega
  have h9 : C (1296 * k + 485) = 3888 * k + 1456 := by
    unfold C
    simp [show (1296 * k + 485) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3888 * k + 1456) = 1944 * k + 728 := by
    unfold C
    simp [show (3888 * k + 1456) % 2 = 0 by omega]
    omega
  have h11 : C (1944 * k + 728) = 972 * k + 364 := by
    unfold C
    simp [show (1944 * k + 728) % 2 = 0 by omega]
    omega
  have h12 : C (972 * k + 364) = 486 * k + 182 := by
    unfold C
    simp [show (972 * k + 364) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 182) = 243 * k + 91 := by
    unfold C
    simp [show (486 * k + 182) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 95) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 95))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

theorem descent_mod256_123 : ∀ k : Nat, iterate (256 * k + 123) 13 = 243 * k + 118 ∧ 243 * k + 118 < 256 * k + 123 := by
  intro k
  have h1 : C (256 * k + 123) = 768 * k + 370 := by
    unfold C
    simp [show (256 * k + 123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (768 * k + 370) = 384 * k + 185 := by
    unfold C
    simp [show (768 * k + 370) % 2 = 0 by omega]
    omega
  have h3 : C (384 * k + 185) = 1152 * k + 556 := by
    unfold C
    simp [show (384 * k + 185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1152 * k + 556) = 576 * k + 278 := by
    unfold C
    simp [show (1152 * k + 556) % 2 = 0 by omega]
    omega
  have h5 : C (576 * k + 278) = 288 * k + 139 := by
    unfold C
    simp [show (576 * k + 278) % 2 = 0 by omega]
    omega
  have h6 : C (288 * k + 139) = 864 * k + 418 := by
    unfold C
    simp [show (288 * k + 139) % 2 ≠ 0 by omega]
    omega
  have h7 : C (864 * k + 418) = 432 * k + 209 := by
    unfold C
    simp [show (864 * k + 418) % 2 = 0 by omega]
    omega
  have h8 : C (432 * k + 209) = 1296 * k + 628 := by
    unfold C
    simp [show (432 * k + 209) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1296 * k + 628) = 648 * k + 314 := by
    unfold C
    simp [show (1296 * k + 628) % 2 = 0 by omega]
    omega
  have h10 : C (648 * k + 314) = 324 * k + 157 := by
    unfold C
    simp [show (648 * k + 314) % 2 = 0 by omega]
    omega
  have h11 : C (324 * k + 157) = 972 * k + 472 := by
    unfold C
    simp [show (324 * k + 157) % 2 ≠ 0 by omega]
    omega
  have h12 : C (972 * k + 472) = 486 * k + 236 := by
    unfold C
    simp [show (972 * k + 472) % 2 = 0 by omega]
    omega
  have h13 : C (486 * k + 236) = 243 * k + 118 := by
    unfold C
    simp [show (486 * k + 236) % 2 = 0 by omega]
    omega
  have hIter : iterate (256 * k + 123) 13 = C (C (C (C (C (C (C (C (C (C (C (C (C (256 * k + 123))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

def oldResidueClass (n : Nat) : Prop :=
  n % 2 = 0 ∨ n % 4 = 1 ∨ n % 16 = 3 ∨ n % 32 = 11 ∨ n % 32 = 23 ∨
    n % 128 = 7 ∨ n % 128 = 15 ∨ n % 128 = 59

theorem bounded_residue_descent_plus_seven :
    ∀ n : Nat, 2 ≤ n →
      (oldResidueClass n ∨ n % 256 = 39 ∨ n % 256 = 175 ∨ n % 256 = 199 ∨
        n % 256 = 79 ∨ n % 256 = 219 ∨ n % 256 = 95 ∨ n % 256 = 123) →
      ∃ t : Nat, 1 ≤ t ∧ t ≤ 13 ∧ iterate n t < n := by
  intro n hn hres
  rcases hres with hold | hrest
  · have holdRaw : n % 2 = 0 ∨ n % 4 = 1 ∨ n % 16 = 3 ∨ n % 32 = 11 ∨ n % 32 = 23 ∨
        n % 128 = 7 ∨ n % 128 = 15 ∨ n % 128 = 59 := by
      simpa [oldResidueClass] using hold
    obtain ⟨t, ht1, ht2, hlt⟩ := bounded_residue_descent n hn holdRaw
    exact ⟨t, ht1, by omega, hlt⟩
  rcases hrest with hres0 | hrest
  · have hdiv : n = 256 * (n / 256) + 39 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_39 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hres1 | hrest
  · have hdiv : n = 256 * (n / 256) + 175 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_175 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hres2 | hrest
  · have hdiv : n = 256 * (n / 256) + 199 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_199 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hres3 | hrest
  · have hdiv : n = 256 * (n / 256) + 79 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_79 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hres4 | hrest
  · have hdiv : n = 256 * (n / 256) + 219 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_219 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hres5 | hrest
  · have hdiv : n = 256 * (n / 256) + 95 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_95 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  · have hdiv : n = 256 * (n / 256) + 123 := by
      have h := Nat.mod_add_div n 256
      omega
    obtain ⟨heq, hlt⟩ := descent_mod256_123 (n / 256)
    refine ⟨13, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt

def eligibleResidue256 (r : Nat) : Bool :=
  eligibleResidue (r % 128) || decide (r % 256 = 39 ∨ r % 256 = 175 ∨ r % 256 = 199 ∨
    r % 256 = 79 ∨ r % 256 = 219 ∨ r % 256 = 95 ∨ r % 256 = 123)

set_option maxRecDepth 4096 in
theorem eligibleResidue256_count :
    (List.filter eligibleResidue256 (List.range 256)).length = 237 := by
  decide

#print axioms descent_mod256_39
#print axioms bounded_residue_descent_plus_seven
#print axioms eligibleResidue256_count


theorem descent_mod1024_287 : ∀ k : Nat, iterate (1024 * k + 287) 16 = 729 * k + 205 ∧ 729 * k + 205 < 1024 * k + 287 := by
  intro k
  have h1 : C (1024 * k + 287) = 3072 * k + 862 := by
    unfold C
    simp [show (1024 * k + 287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 862) = 1536 * k + 431 := by
    unfold C
    simp [show (3072 * k + 862) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 431) = 4608 * k + 1294 := by
    unfold C
    simp [show (1536 * k + 431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 1294) = 2304 * k + 647 := by
    unfold C
    simp [show (4608 * k + 1294) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 647) = 6912 * k + 1942 := by
    unfold C
    simp [show (2304 * k + 647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 1942) = 3456 * k + 971 := by
    unfold C
    simp [show (6912 * k + 1942) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 971) = 10368 * k + 2914 := by
    unfold C
    simp [show (3456 * k + 971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 2914) = 5184 * k + 1457 := by
    unfold C
    simp [show (10368 * k + 2914) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 1457) = 15552 * k + 4372 := by
    unfold C
    simp [show (5184 * k + 1457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15552 * k + 4372) = 7776 * k + 2186 := by
    unfold C
    simp [show (15552 * k + 4372) % 2 = 0 by omega]
    omega
  have h11 : C (7776 * k + 2186) = 3888 * k + 1093 := by
    unfold C
    simp [show (7776 * k + 2186) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 1093) = 11664 * k + 3280 := by
    unfold C
    simp [show (3888 * k + 1093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11664 * k + 3280) = 5832 * k + 1640 := by
    unfold C
    simp [show (11664 * k + 3280) % 2 = 0 by omega]
    omega
  have h14 : C (5832 * k + 1640) = 2916 * k + 820 := by
    unfold C
    simp [show (5832 * k + 1640) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 820) = 1458 * k + 410 := by
    unfold C
    simp [show (2916 * k + 820) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 410) = 729 * k + 205 := by
    unfold C
    simp [show (1458 * k + 410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 287) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 287)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_347 : ∀ k : Nat, iterate (1024 * k + 347) 16 = 729 * k + 248 ∧ 729 * k + 248 < 1024 * k + 347 := by
  intro k
  have h1 : C (1024 * k + 347) = 3072 * k + 1042 := by
    unfold C
    simp [show (1024 * k + 347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1042) = 1536 * k + 521 := by
    unfold C
    simp [show (3072 * k + 1042) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 521) = 4608 * k + 1564 := by
    unfold C
    simp [show (1536 * k + 521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 1564) = 2304 * k + 782 := by
    unfold C
    simp [show (4608 * k + 1564) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 782) = 1152 * k + 391 := by
    unfold C
    simp [show (2304 * k + 782) % 2 = 0 by omega]
    omega
  have h6 : C (1152 * k + 391) = 3456 * k + 1174 := by
    unfold C
    simp [show (1152 * k + 391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3456 * k + 1174) = 1728 * k + 587 := by
    unfold C
    simp [show (3456 * k + 1174) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 587) = 5184 * k + 1762 := by
    unfold C
    simp [show (1728 * k + 587) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 1762) = 2592 * k + 881 := by
    unfold C
    simp [show (5184 * k + 1762) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 881) = 7776 * k + 2644 := by
    unfold C
    simp [show (2592 * k + 881) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 2644) = 3888 * k + 1322 := by
    unfold C
    simp [show (7776 * k + 2644) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 1322) = 1944 * k + 661 := by
    unfold C
    simp [show (3888 * k + 1322) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 661) = 5832 * k + 1984 := by
    unfold C
    simp [show (1944 * k + 661) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 1984) = 2916 * k + 992 := by
    unfold C
    simp [show (5832 * k + 1984) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 992) = 1458 * k + 496 := by
    unfold C
    simp [show (2916 * k + 992) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 496) = 729 * k + 248 := by
    unfold C
    simp [show (1458 * k + 496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 347) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 347)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_367 : ∀ k : Nat, iterate (1024 * k + 367) 16 = 729 * k + 262 ∧ 729 * k + 262 < 1024 * k + 367 := by
  intro k
  have h1 : C (1024 * k + 367) = 3072 * k + 1102 := by
    unfold C
    simp [show (1024 * k + 367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1102) = 1536 * k + 551 := by
    unfold C
    simp [show (3072 * k + 1102) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 551) = 4608 * k + 1654 := by
    unfold C
    simp [show (1536 * k + 551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 1654) = 2304 * k + 827 := by
    unfold C
    simp [show (4608 * k + 1654) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 827) = 6912 * k + 2482 := by
    unfold C
    simp [show (2304 * k + 827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 2482) = 3456 * k + 1241 := by
    unfold C
    simp [show (6912 * k + 2482) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 1241) = 10368 * k + 3724 := by
    unfold C
    simp [show (3456 * k + 1241) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 3724) = 5184 * k + 1862 := by
    unfold C
    simp [show (10368 * k + 3724) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 1862) = 2592 * k + 931 := by
    unfold C
    simp [show (5184 * k + 1862) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 931) = 7776 * k + 2794 := by
    unfold C
    simp [show (2592 * k + 931) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 2794) = 3888 * k + 1397 := by
    unfold C
    simp [show (7776 * k + 2794) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 1397) = 11664 * k + 4192 := by
    unfold C
    simp [show (3888 * k + 1397) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11664 * k + 4192) = 5832 * k + 2096 := by
    unfold C
    simp [show (11664 * k + 4192) % 2 = 0 by omega]
    omega
  have h14 : C (5832 * k + 2096) = 2916 * k + 1048 := by
    unfold C
    simp [show (5832 * k + 2096) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 1048) = 1458 * k + 524 := by
    unfold C
    simp [show (2916 * k + 1048) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 524) = 729 * k + 262 := by
    unfold C
    simp [show (1458 * k + 524) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 367) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 367)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_423 : ∀ k : Nat, iterate (1024 * k + 423) 16 = 729 * k + 302 ∧ 729 * k + 302 < 1024 * k + 423 := by
  intro k
  have h1 : C (1024 * k + 423) = 3072 * k + 1270 := by
    unfold C
    simp [show (1024 * k + 423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1270) = 1536 * k + 635 := by
    unfold C
    simp [show (3072 * k + 1270) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 635) = 4608 * k + 1906 := by
    unfold C
    simp [show (1536 * k + 635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 1906) = 2304 * k + 953 := by
    unfold C
    simp [show (4608 * k + 1906) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 953) = 6912 * k + 2860 := by
    unfold C
    simp [show (2304 * k + 953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 2860) = 3456 * k + 1430 := by
    unfold C
    simp [show (6912 * k + 2860) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 1430) = 1728 * k + 715 := by
    unfold C
    simp [show (3456 * k + 1430) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 715) = 5184 * k + 2146 := by
    unfold C
    simp [show (1728 * k + 715) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 2146) = 2592 * k + 1073 := by
    unfold C
    simp [show (5184 * k + 2146) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 1073) = 7776 * k + 3220 := by
    unfold C
    simp [show (2592 * k + 1073) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 3220) = 3888 * k + 1610 := by
    unfold C
    simp [show (7776 * k + 3220) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 1610) = 1944 * k + 805 := by
    unfold C
    simp [show (3888 * k + 1610) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 805) = 5832 * k + 2416 := by
    unfold C
    simp [show (1944 * k + 805) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 2416) = 2916 * k + 1208 := by
    unfold C
    simp [show (5832 * k + 2416) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 1208) = 1458 * k + 604 := by
    unfold C
    simp [show (2916 * k + 1208) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 604) = 729 * k + 302 := by
    unfold C
    simp [show (1458 * k + 604) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 423) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 423)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_507 : ∀ k : Nat, iterate (1024 * k + 507) 16 = 729 * k + 362 ∧ 729 * k + 362 < 1024 * k + 507 := by
  intro k
  have h1 : C (1024 * k + 507) = 3072 * k + 1522 := by
    unfold C
    simp [show (1024 * k + 507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1522) = 1536 * k + 761 := by
    unfold C
    simp [show (3072 * k + 1522) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 761) = 4608 * k + 2284 := by
    unfold C
    simp [show (1536 * k + 761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 2284) = 2304 * k + 1142 := by
    unfold C
    simp [show (4608 * k + 2284) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 1142) = 1152 * k + 571 := by
    unfold C
    simp [show (2304 * k + 1142) % 2 = 0 by omega]
    omega
  have h6 : C (1152 * k + 571) = 3456 * k + 1714 := by
    unfold C
    simp [show (1152 * k + 571) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3456 * k + 1714) = 1728 * k + 857 := by
    unfold C
    simp [show (3456 * k + 1714) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 857) = 5184 * k + 2572 := by
    unfold C
    simp [show (1728 * k + 857) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 2572) = 2592 * k + 1286 := by
    unfold C
    simp [show (5184 * k + 2572) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 1286) = 1296 * k + 643 := by
    unfold C
    simp [show (2592 * k + 1286) % 2 = 0 by omega]
    omega
  have h11 : C (1296 * k + 643) = 3888 * k + 1930 := by
    unfold C
    simp [show (1296 * k + 643) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3888 * k + 1930) = 1944 * k + 965 := by
    unfold C
    simp [show (3888 * k + 1930) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 965) = 5832 * k + 2896 := by
    unfold C
    simp [show (1944 * k + 965) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 2896) = 2916 * k + 1448 := by
    unfold C
    simp [show (5832 * k + 2896) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 1448) = 1458 * k + 724 := by
    unfold C
    simp [show (2916 * k + 1448) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 724) = 729 * k + 362 := by
    unfold C
    simp [show (1458 * k + 724) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 507) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 507)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_575 : ∀ k : Nat, iterate (1024 * k + 575) 16 = 729 * k + 410 ∧ 729 * k + 410 < 1024 * k + 575 := by
  intro k
  have h1 : C (1024 * k + 575) = 3072 * k + 1726 := by
    unfold C
    simp [show (1024 * k + 575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1726) = 1536 * k + 863 := by
    unfold C
    simp [show (3072 * k + 1726) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 863) = 4608 * k + 2590 := by
    unfold C
    simp [show (1536 * k + 863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 2590) = 2304 * k + 1295 := by
    unfold C
    simp [show (4608 * k + 2590) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 1295) = 6912 * k + 3886 := by
    unfold C
    simp [show (2304 * k + 1295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 3886) = 3456 * k + 1943 := by
    unfold C
    simp [show (6912 * k + 3886) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 1943) = 10368 * k + 5830 := by
    unfold C
    simp [show (3456 * k + 1943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 5830) = 5184 * k + 2915 := by
    unfold C
    simp [show (10368 * k + 5830) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 2915) = 15552 * k + 8746 := by
    unfold C
    simp [show (5184 * k + 2915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15552 * k + 8746) = 7776 * k + 4373 := by
    unfold C
    simp [show (15552 * k + 8746) % 2 = 0 by omega]
    omega
  have h11 : C (7776 * k + 4373) = 23328 * k + 13120 := by
    unfold C
    simp [show (7776 * k + 4373) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23328 * k + 13120) = 11664 * k + 6560 := by
    unfold C
    simp [show (23328 * k + 13120) % 2 = 0 by omega]
    omega
  have h13 : C (11664 * k + 6560) = 5832 * k + 3280 := by
    unfold C
    simp [show (11664 * k + 6560) % 2 = 0 by omega]
    omega
  have h14 : C (5832 * k + 3280) = 2916 * k + 1640 := by
    unfold C
    simp [show (5832 * k + 3280) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 1640) = 1458 * k + 820 := by
    unfold C
    simp [show (2916 * k + 1640) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 820) = 729 * k + 410 := by
    unfold C
    simp [show (1458 * k + 820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 575) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 575)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_583 : ∀ k : Nat, iterate (1024 * k + 583) 16 = 729 * k + 416 ∧ 729 * k + 416 < 1024 * k + 583 := by
  intro k
  have h1 : C (1024 * k + 583) = 3072 * k + 1750 := by
    unfold C
    simp [show (1024 * k + 583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 1750) = 1536 * k + 875 := by
    unfold C
    simp [show (3072 * k + 1750) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 875) = 4608 * k + 2626 := by
    unfold C
    simp [show (1536 * k + 875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 2626) = 2304 * k + 1313 := by
    unfold C
    simp [show (4608 * k + 2626) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 1313) = 6912 * k + 3940 := by
    unfold C
    simp [show (2304 * k + 1313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 3940) = 3456 * k + 1970 := by
    unfold C
    simp [show (6912 * k + 3940) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 1970) = 1728 * k + 985 := by
    unfold C
    simp [show (3456 * k + 1970) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 985) = 5184 * k + 2956 := by
    unfold C
    simp [show (1728 * k + 985) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 2956) = 2592 * k + 1478 := by
    unfold C
    simp [show (5184 * k + 2956) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 1478) = 1296 * k + 739 := by
    unfold C
    simp [show (2592 * k + 1478) % 2 = 0 by omega]
    omega
  have h11 : C (1296 * k + 739) = 3888 * k + 2218 := by
    unfold C
    simp [show (1296 * k + 739) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3888 * k + 2218) = 1944 * k + 1109 := by
    unfold C
    simp [show (3888 * k + 2218) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 1109) = 5832 * k + 3328 := by
    unfold C
    simp [show (1944 * k + 1109) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 3328) = 2916 * k + 1664 := by
    unfold C
    simp [show (5832 * k + 3328) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 1664) = 1458 * k + 832 := by
    unfold C
    simp [show (2916 * k + 1664) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 832) = 729 * k + 416 := by
    unfold C
    simp [show (1458 * k + 832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 583) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 583)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_735 : ∀ k : Nat, iterate (1024 * k + 735) 16 = 729 * k + 524 ∧ 729 * k + 524 < 1024 * k + 735 := by
  intro k
  have h1 : C (1024 * k + 735) = 3072 * k + 2206 := by
    unfold C
    simp [show (1024 * k + 735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 2206) = 1536 * k + 1103 := by
    unfold C
    simp [show (3072 * k + 2206) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 1103) = 4608 * k + 3310 := by
    unfold C
    simp [show (1536 * k + 1103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 3310) = 2304 * k + 1655 := by
    unfold C
    simp [show (4608 * k + 3310) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 1655) = 6912 * k + 4966 := by
    unfold C
    simp [show (2304 * k + 1655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 4966) = 3456 * k + 2483 := by
    unfold C
    simp [show (6912 * k + 4966) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 2483) = 10368 * k + 7450 := by
    unfold C
    simp [show (3456 * k + 2483) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 7450) = 5184 * k + 3725 := by
    unfold C
    simp [show (10368 * k + 7450) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 3725) = 15552 * k + 11176 := by
    unfold C
    simp [show (5184 * k + 3725) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15552 * k + 11176) = 7776 * k + 5588 := by
    unfold C
    simp [show (15552 * k + 11176) % 2 = 0 by omega]
    omega
  have h11 : C (7776 * k + 5588) = 3888 * k + 2794 := by
    unfold C
    simp [show (7776 * k + 5588) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 2794) = 1944 * k + 1397 := by
    unfold C
    simp [show (3888 * k + 2794) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 1397) = 5832 * k + 4192 := by
    unfold C
    simp [show (1944 * k + 1397) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 4192) = 2916 * k + 2096 := by
    unfold C
    simp [show (5832 * k + 4192) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 2096) = 1458 * k + 1048 := by
    unfold C
    simp [show (2916 * k + 2096) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 1048) = 729 * k + 524 := by
    unfold C
    simp [show (1458 * k + 1048) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 735) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 735)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_815 : ∀ k : Nat, iterate (1024 * k + 815) 16 = 729 * k + 581 ∧ 729 * k + 581 < 1024 * k + 815 := by
  intro k
  have h1 : C (1024 * k + 815) = 3072 * k + 2446 := by
    unfold C
    simp [show (1024 * k + 815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 2446) = 1536 * k + 1223 := by
    unfold C
    simp [show (3072 * k + 2446) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 1223) = 4608 * k + 3670 := by
    unfold C
    simp [show (1536 * k + 1223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 3670) = 2304 * k + 1835 := by
    unfold C
    simp [show (4608 * k + 3670) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 1835) = 6912 * k + 5506 := by
    unfold C
    simp [show (2304 * k + 1835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 5506) = 3456 * k + 2753 := by
    unfold C
    simp [show (6912 * k + 5506) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 2753) = 10368 * k + 8260 := by
    unfold C
    simp [show (3456 * k + 2753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 8260) = 5184 * k + 4130 := by
    unfold C
    simp [show (10368 * k + 8260) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 4130) = 2592 * k + 2065 := by
    unfold C
    simp [show (5184 * k + 4130) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 2065) = 7776 * k + 6196 := by
    unfold C
    simp [show (2592 * k + 2065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 6196) = 3888 * k + 3098 := by
    unfold C
    simp [show (7776 * k + 6196) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 3098) = 1944 * k + 1549 := by
    unfold C
    simp [show (3888 * k + 3098) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 1549) = 5832 * k + 4648 := by
    unfold C
    simp [show (1944 * k + 1549) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 4648) = 2916 * k + 2324 := by
    unfold C
    simp [show (5832 * k + 4648) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 2324) = 1458 * k + 1162 := by
    unfold C
    simp [show (2916 * k + 2324) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 1162) = 729 * k + 581 := by
    unfold C
    simp [show (1458 * k + 1162) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 815) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 815)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_923 : ∀ k : Nat, iterate (1024 * k + 923) 16 = 729 * k + 658 ∧ 729 * k + 658 < 1024 * k + 923 := by
  intro k
  have h1 : C (1024 * k + 923) = 3072 * k + 2770 := by
    unfold C
    simp [show (1024 * k + 923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 2770) = 1536 * k + 1385 := by
    unfold C
    simp [show (3072 * k + 2770) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 1385) = 4608 * k + 4156 := by
    unfold C
    simp [show (1536 * k + 1385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 4156) = 2304 * k + 2078 := by
    unfold C
    simp [show (4608 * k + 4156) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 2078) = 1152 * k + 1039 := by
    unfold C
    simp [show (2304 * k + 2078) % 2 = 0 by omega]
    omega
  have h6 : C (1152 * k + 1039) = 3456 * k + 3118 := by
    unfold C
    simp [show (1152 * k + 1039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3456 * k + 3118) = 1728 * k + 1559 := by
    unfold C
    simp [show (3456 * k + 3118) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 1559) = 5184 * k + 4678 := by
    unfold C
    simp [show (1728 * k + 1559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 4678) = 2592 * k + 2339 := by
    unfold C
    simp [show (5184 * k + 4678) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 2339) = 7776 * k + 7018 := by
    unfold C
    simp [show (2592 * k + 2339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 7018) = 3888 * k + 3509 := by
    unfold C
    simp [show (7776 * k + 7018) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 3509) = 11664 * k + 10528 := by
    unfold C
    simp [show (3888 * k + 3509) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11664 * k + 10528) = 5832 * k + 5264 := by
    unfold C
    simp [show (11664 * k + 10528) % 2 = 0 by omega]
    omega
  have h14 : C (5832 * k + 5264) = 2916 * k + 2632 := by
    unfold C
    simp [show (5832 * k + 5264) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 2632) = 1458 * k + 1316 := by
    unfold C
    simp [show (2916 * k + 2632) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 1316) = 729 * k + 658 := by
    unfold C
    simp [show (1458 * k + 1316) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 923) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 923)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_975 : ∀ k : Nat, iterate (1024 * k + 975) 16 = 729 * k + 695 ∧ 729 * k + 695 < 1024 * k + 975 := by
  intro k
  have h1 : C (1024 * k + 975) = 3072 * k + 2926 := by
    unfold C
    simp [show (1024 * k + 975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 2926) = 1536 * k + 1463 := by
    unfold C
    simp [show (3072 * k + 2926) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 1463) = 4608 * k + 4390 := by
    unfold C
    simp [show (1536 * k + 1463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 4390) = 2304 * k + 2195 := by
    unfold C
    simp [show (4608 * k + 4390) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 2195) = 6912 * k + 6586 := by
    unfold C
    simp [show (2304 * k + 2195) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 6586) = 3456 * k + 3293 := by
    unfold C
    simp [show (6912 * k + 6586) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 3293) = 10368 * k + 9880 := by
    unfold C
    simp [show (3456 * k + 3293) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10368 * k + 9880) = 5184 * k + 4940 := by
    unfold C
    simp [show (10368 * k + 9880) % 2 = 0 by omega]
    omega
  have h9 : C (5184 * k + 4940) = 2592 * k + 2470 := by
    unfold C
    simp [show (5184 * k + 4940) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 2470) = 1296 * k + 1235 := by
    unfold C
    simp [show (2592 * k + 2470) % 2 = 0 by omega]
    omega
  have h11 : C (1296 * k + 1235) = 3888 * k + 3706 := by
    unfold C
    simp [show (1296 * k + 1235) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3888 * k + 3706) = 1944 * k + 1853 := by
    unfold C
    simp [show (3888 * k + 3706) % 2 = 0 by omega]
    omega
  have h13 : C (1944 * k + 1853) = 5832 * k + 5560 := by
    unfold C
    simp [show (1944 * k + 1853) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5832 * k + 5560) = 2916 * k + 2780 := by
    unfold C
    simp [show (5832 * k + 5560) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 2780) = 1458 * k + 1390 := by
    unfold C
    simp [show (2916 * k + 2780) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 1390) = 729 * k + 695 := by
    unfold C
    simp [show (1458 * k + 1390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 975) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 975)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod1024_999 : ∀ k : Nat, iterate (1024 * k + 999) 16 = 729 * k + 712 ∧ 729 * k + 712 < 1024 * k + 999 := by
  intro k
  have h1 : C (1024 * k + 999) = 3072 * k + 2998 := by
    unfold C
    simp [show (1024 * k + 999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3072 * k + 2998) = 1536 * k + 1499 := by
    unfold C
    simp [show (3072 * k + 2998) % 2 = 0 by omega]
    omega
  have h3 : C (1536 * k + 1499) = 4608 * k + 4498 := by
    unfold C
    simp [show (1536 * k + 1499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4608 * k + 4498) = 2304 * k + 2249 := by
    unfold C
    simp [show (4608 * k + 4498) % 2 = 0 by omega]
    omega
  have h5 : C (2304 * k + 2249) = 6912 * k + 6748 := by
    unfold C
    simp [show (2304 * k + 2249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (6912 * k + 6748) = 3456 * k + 3374 := by
    unfold C
    simp [show (6912 * k + 6748) % 2 = 0 by omega]
    omega
  have h7 : C (3456 * k + 3374) = 1728 * k + 1687 := by
    unfold C
    simp [show (3456 * k + 3374) % 2 = 0 by omega]
    omega
  have h8 : C (1728 * k + 1687) = 5184 * k + 5062 := by
    unfold C
    simp [show (1728 * k + 1687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5184 * k + 5062) = 2592 * k + 2531 := by
    unfold C
    simp [show (5184 * k + 5062) % 2 = 0 by omega]
    omega
  have h10 : C (2592 * k + 2531) = 7776 * k + 7594 := by
    unfold C
    simp [show (2592 * k + 2531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7776 * k + 7594) = 3888 * k + 3797 := by
    unfold C
    simp [show (7776 * k + 7594) % 2 = 0 by omega]
    omega
  have h12 : C (3888 * k + 3797) = 11664 * k + 11392 := by
    unfold C
    simp [show (3888 * k + 3797) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11664 * k + 11392) = 5832 * k + 5696 := by
    unfold C
    simp [show (11664 * k + 11392) % 2 = 0 by omega]
    omega
  have h14 : C (5832 * k + 5696) = 2916 * k + 2848 := by
    unfold C
    simp [show (5832 * k + 5696) % 2 = 0 by omega]
    omega
  have h15 : C (2916 * k + 2848) = 1458 * k + 1424 := by
    unfold C
    simp [show (2916 * k + 2848) % 2 = 0 by omega]
    omega
  have h16 : C (1458 * k + 1424) = 729 * k + 712 := by
    unfold C
    simp [show (1458 * k + 1424) % 2 = 0 by omega]
    omega
  have hIter : iterate (1024 * k + 999) 16 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1024 * k + 999)))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16]
  · omega

theorem descent_mod4096_231 : ∀ k : Nat, iterate (4096 * k + 231) 19 = 2187 * k + 124 ∧ 2187 * k + 124 < 4096 * k + 231 := by
  intro k
  have h1 : C (4096 * k + 231) = 12288 * k + 694 := by
    unfold C
    simp [show (4096 * k + 231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 694) = 6144 * k + 347 := by
    unfold C
    simp [show (12288 * k + 694) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 347) = 18432 * k + 1042 := by
    unfold C
    simp [show (6144 * k + 347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 1042) = 9216 * k + 521 := by
    unfold C
    simp [show (18432 * k + 1042) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 521) = 27648 * k + 1564 := by
    unfold C
    simp [show (9216 * k + 521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 1564) = 13824 * k + 782 := by
    unfold C
    simp [show (27648 * k + 1564) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 782) = 6912 * k + 391 := by
    unfold C
    simp [show (13824 * k + 782) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 391) = 20736 * k + 1174 := by
    unfold C
    simp [show (6912 * k + 391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 1174) = 10368 * k + 587 := by
    unfold C
    simp [show (20736 * k + 1174) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 587) = 31104 * k + 1762 := by
    unfold C
    simp [show (10368 * k + 587) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 1762) = 15552 * k + 881 := by
    unfold C
    simp [show (31104 * k + 1762) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 881) = 46656 * k + 2644 := by
    unfold C
    simp [show (15552 * k + 881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 2644) = 23328 * k + 1322 := by
    unfold C
    simp [show (46656 * k + 2644) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 1322) = 11664 * k + 661 := by
    unfold C
    simp [show (23328 * k + 1322) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 661) = 34992 * k + 1984 := by
    unfold C
    simp [show (11664 * k + 661) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 1984) = 17496 * k + 992 := by
    unfold C
    simp [show (34992 * k + 1984) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 992) = 8748 * k + 496 := by
    unfold C
    simp [show (17496 * k + 992) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 496) = 4374 * k + 248 := by
    unfold C
    simp [show (8748 * k + 496) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 248) = 2187 * k + 124 := by
    unfold C
    simp [show (4374 * k + 248) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 231) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 231))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_383 : ∀ k : Nat, iterate (4096 * k + 383) 19 = 2187 * k + 205 ∧ 2187 * k + 205 < 4096 * k + 383 := by
  intro k
  have h1 : C (4096 * k + 383) = 12288 * k + 1150 := by
    unfold C
    simp [show (4096 * k + 383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 1150) = 6144 * k + 575 := by
    unfold C
    simp [show (12288 * k + 1150) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 575) = 18432 * k + 1726 := by
    unfold C
    simp [show (6144 * k + 575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 1726) = 9216 * k + 863 := by
    unfold C
    simp [show (18432 * k + 1726) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 863) = 27648 * k + 2590 := by
    unfold C
    simp [show (9216 * k + 863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 2590) = 13824 * k + 1295 := by
    unfold C
    simp [show (27648 * k + 2590) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 1295) = 41472 * k + 3886 := by
    unfold C
    simp [show (13824 * k + 1295) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 3886) = 20736 * k + 1943 := by
    unfold C
    simp [show (41472 * k + 3886) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 1943) = 62208 * k + 5830 := by
    unfold C
    simp [show (20736 * k + 1943) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 5830) = 31104 * k + 2915 := by
    unfold C
    simp [show (62208 * k + 5830) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 2915) = 93312 * k + 8746 := by
    unfold C
    simp [show (31104 * k + 2915) % 2 ≠ 0 by omega]
    omega
  have h12 : C (93312 * k + 8746) = 46656 * k + 4373 := by
    unfold C
    simp [show (93312 * k + 8746) % 2 = 0 by omega]
    omega
  have h13 : C (46656 * k + 4373) = 139968 * k + 13120 := by
    unfold C
    simp [show (46656 * k + 4373) % 2 ≠ 0 by omega]
    omega
  have h14 : C (139968 * k + 13120) = 69984 * k + 6560 := by
    unfold C
    simp [show (139968 * k + 13120) % 2 = 0 by omega]
    omega
  have h15 : C (69984 * k + 6560) = 34992 * k + 3280 := by
    unfold C
    simp [show (69984 * k + 6560) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 3280) = 17496 * k + 1640 := by
    unfold C
    simp [show (34992 * k + 3280) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 1640) = 8748 * k + 820 := by
    unfold C
    simp [show (17496 * k + 1640) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 820) = 4374 * k + 410 := by
    unfold C
    simp [show (8748 * k + 820) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 410) = 2187 * k + 205 := by
    unfold C
    simp [show (4374 * k + 410) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 383) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 383))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_463 : ∀ k : Nat, iterate (4096 * k + 463) 19 = 2187 * k + 248 ∧ 2187 * k + 248 < 4096 * k + 463 := by
  intro k
  have h1 : C (4096 * k + 463) = 12288 * k + 1390 := by
    unfold C
    simp [show (4096 * k + 463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 1390) = 6144 * k + 695 := by
    unfold C
    simp [show (12288 * k + 1390) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 695) = 18432 * k + 2086 := by
    unfold C
    simp [show (6144 * k + 695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 2086) = 9216 * k + 1043 := by
    unfold C
    simp [show (18432 * k + 2086) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 1043) = 27648 * k + 3130 := by
    unfold C
    simp [show (9216 * k + 1043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 3130) = 13824 * k + 1565 := by
    unfold C
    simp [show (27648 * k + 3130) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 1565) = 41472 * k + 4696 := by
    unfold C
    simp [show (13824 * k + 1565) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 4696) = 20736 * k + 2348 := by
    unfold C
    simp [show (41472 * k + 4696) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 2348) = 10368 * k + 1174 := by
    unfold C
    simp [show (20736 * k + 2348) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 1174) = 5184 * k + 587 := by
    unfold C
    simp [show (10368 * k + 1174) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 587) = 15552 * k + 1762 := by
    unfold C
    simp [show (5184 * k + 587) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 1762) = 7776 * k + 881 := by
    unfold C
    simp [show (15552 * k + 1762) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 881) = 23328 * k + 2644 := by
    unfold C
    simp [show (7776 * k + 881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 2644) = 11664 * k + 1322 := by
    unfold C
    simp [show (23328 * k + 2644) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 1322) = 5832 * k + 661 := by
    unfold C
    simp [show (11664 * k + 1322) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 661) = 17496 * k + 1984 := by
    unfold C
    simp [show (5832 * k + 661) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 1984) = 8748 * k + 992 := by
    unfold C
    simp [show (17496 * k + 1984) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 992) = 4374 * k + 496 := by
    unfold C
    simp [show (8748 * k + 992) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 496) = 2187 * k + 248 := by
    unfold C
    simp [show (4374 * k + 496) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 463) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 463))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_615 : ∀ k : Nat, iterate (4096 * k + 615) 19 = 2187 * k + 329 ∧ 2187 * k + 329 < 4096 * k + 615 := by
  intro k
  have h1 : C (4096 * k + 615) = 12288 * k + 1846 := by
    unfold C
    simp [show (4096 * k + 615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 1846) = 6144 * k + 923 := by
    unfold C
    simp [show (12288 * k + 1846) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 923) = 18432 * k + 2770 := by
    unfold C
    simp [show (6144 * k + 923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 2770) = 9216 * k + 1385 := by
    unfold C
    simp [show (18432 * k + 2770) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 1385) = 27648 * k + 4156 := by
    unfold C
    simp [show (9216 * k + 1385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 4156) = 13824 * k + 2078 := by
    unfold C
    simp [show (27648 * k + 4156) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 2078) = 6912 * k + 1039 := by
    unfold C
    simp [show (13824 * k + 2078) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 1039) = 20736 * k + 3118 := by
    unfold C
    simp [show (6912 * k + 1039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 3118) = 10368 * k + 1559 := by
    unfold C
    simp [show (20736 * k + 3118) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 1559) = 31104 * k + 4678 := by
    unfold C
    simp [show (10368 * k + 1559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 4678) = 15552 * k + 2339 := by
    unfold C
    simp [show (31104 * k + 4678) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 2339) = 46656 * k + 7018 := by
    unfold C
    simp [show (15552 * k + 2339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 7018) = 23328 * k + 3509 := by
    unfold C
    simp [show (46656 * k + 7018) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 3509) = 69984 * k + 10528 := by
    unfold C
    simp [show (23328 * k + 3509) % 2 ≠ 0 by omega]
    omega
  have h15 : C (69984 * k + 10528) = 34992 * k + 5264 := by
    unfold C
    simp [show (69984 * k + 10528) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 5264) = 17496 * k + 2632 := by
    unfold C
    simp [show (34992 * k + 5264) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 2632) = 8748 * k + 1316 := by
    unfold C
    simp [show (17496 * k + 2632) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 1316) = 4374 * k + 658 := by
    unfold C
    simp [show (8748 * k + 1316) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 658) = 2187 * k + 329 := by
    unfold C
    simp [show (4374 * k + 658) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 615) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 615))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_879 : ∀ k : Nat, iterate (4096 * k + 879) 19 = 2187 * k + 470 ∧ 2187 * k + 470 < 4096 * k + 879 := by
  intro k
  have h1 : C (4096 * k + 879) = 12288 * k + 2638 := by
    unfold C
    simp [show (4096 * k + 879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 2638) = 6144 * k + 1319 := by
    unfold C
    simp [show (12288 * k + 2638) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 1319) = 18432 * k + 3958 := by
    unfold C
    simp [show (6144 * k + 1319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 3958) = 9216 * k + 1979 := by
    unfold C
    simp [show (18432 * k + 3958) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 1979) = 27648 * k + 5938 := by
    unfold C
    simp [show (9216 * k + 1979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 5938) = 13824 * k + 2969 := by
    unfold C
    simp [show (27648 * k + 5938) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 2969) = 41472 * k + 8908 := by
    unfold C
    simp [show (13824 * k + 2969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 8908) = 20736 * k + 4454 := by
    unfold C
    simp [show (41472 * k + 8908) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 4454) = 10368 * k + 2227 := by
    unfold C
    simp [show (20736 * k + 4454) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 2227) = 31104 * k + 6682 := by
    unfold C
    simp [show (10368 * k + 2227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 6682) = 15552 * k + 3341 := by
    unfold C
    simp [show (31104 * k + 6682) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 3341) = 46656 * k + 10024 := by
    unfold C
    simp [show (15552 * k + 3341) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 10024) = 23328 * k + 5012 := by
    unfold C
    simp [show (46656 * k + 10024) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 5012) = 11664 * k + 2506 := by
    unfold C
    simp [show (23328 * k + 5012) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 2506) = 5832 * k + 1253 := by
    unfold C
    simp [show (11664 * k + 2506) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 1253) = 17496 * k + 3760 := by
    unfold C
    simp [show (5832 * k + 1253) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 3760) = 8748 * k + 1880 := by
    unfold C
    simp [show (17496 * k + 3760) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 1880) = 4374 * k + 940 := by
    unfold C
    simp [show (8748 * k + 1880) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 940) = 2187 * k + 470 := by
    unfold C
    simp [show (4374 * k + 940) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 879) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 879))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_935 : ∀ k : Nat, iterate (4096 * k + 935) 19 = 2187 * k + 500 ∧ 2187 * k + 500 < 4096 * k + 935 := by
  intro k
  have h1 : C (4096 * k + 935) = 12288 * k + 2806 := by
    unfold C
    simp [show (4096 * k + 935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 2806) = 6144 * k + 1403 := by
    unfold C
    simp [show (12288 * k + 2806) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 1403) = 18432 * k + 4210 := by
    unfold C
    simp [show (6144 * k + 1403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 4210) = 9216 * k + 2105 := by
    unfold C
    simp [show (18432 * k + 4210) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 2105) = 27648 * k + 6316 := by
    unfold C
    simp [show (9216 * k + 2105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 6316) = 13824 * k + 3158 := by
    unfold C
    simp [show (27648 * k + 6316) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 3158) = 6912 * k + 1579 := by
    unfold C
    simp [show (13824 * k + 3158) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 1579) = 20736 * k + 4738 := by
    unfold C
    simp [show (6912 * k + 1579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 4738) = 10368 * k + 2369 := by
    unfold C
    simp [show (20736 * k + 4738) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 2369) = 31104 * k + 7108 := by
    unfold C
    simp [show (10368 * k + 2369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 7108) = 15552 * k + 3554 := by
    unfold C
    simp [show (31104 * k + 7108) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 3554) = 7776 * k + 1777 := by
    unfold C
    simp [show (15552 * k + 3554) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 1777) = 23328 * k + 5332 := by
    unfold C
    simp [show (7776 * k + 1777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 5332) = 11664 * k + 2666 := by
    unfold C
    simp [show (23328 * k + 5332) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 2666) = 5832 * k + 1333 := by
    unfold C
    simp [show (11664 * k + 2666) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 1333) = 17496 * k + 4000 := by
    unfold C
    simp [show (5832 * k + 1333) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 4000) = 8748 * k + 2000 := by
    unfold C
    simp [show (17496 * k + 4000) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 2000) = 4374 * k + 1000 := by
    unfold C
    simp [show (8748 * k + 2000) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1000) = 2187 * k + 500 := by
    unfold C
    simp [show (4374 * k + 1000) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 935) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 935))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1019 : ∀ k : Nat, iterate (4096 * k + 1019) 19 = 2187 * k + 545 ∧ 2187 * k + 545 < 4096 * k + 1019 := by
  intro k
  have h1 : C (4096 * k + 1019) = 12288 * k + 3058 := by
    unfold C
    simp [show (4096 * k + 1019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 3058) = 6144 * k + 1529 := by
    unfold C
    simp [show (12288 * k + 3058) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 1529) = 18432 * k + 4588 := by
    unfold C
    simp [show (6144 * k + 1529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 4588) = 9216 * k + 2294 := by
    unfold C
    simp [show (18432 * k + 4588) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 2294) = 4608 * k + 1147 := by
    unfold C
    simp [show (9216 * k + 2294) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 1147) = 13824 * k + 3442 := by
    unfold C
    simp [show (4608 * k + 1147) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 3442) = 6912 * k + 1721 := by
    unfold C
    simp [show (13824 * k + 3442) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 1721) = 20736 * k + 5164 := by
    unfold C
    simp [show (6912 * k + 1721) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 5164) = 10368 * k + 2582 := by
    unfold C
    simp [show (20736 * k + 5164) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 2582) = 5184 * k + 1291 := by
    unfold C
    simp [show (10368 * k + 2582) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 1291) = 15552 * k + 3874 := by
    unfold C
    simp [show (5184 * k + 1291) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 3874) = 7776 * k + 1937 := by
    unfold C
    simp [show (15552 * k + 3874) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 1937) = 23328 * k + 5812 := by
    unfold C
    simp [show (7776 * k + 1937) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 5812) = 11664 * k + 2906 := by
    unfold C
    simp [show (23328 * k + 5812) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 2906) = 5832 * k + 1453 := by
    unfold C
    simp [show (11664 * k + 2906) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 1453) = 17496 * k + 4360 := by
    unfold C
    simp [show (5832 * k + 1453) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 4360) = 8748 * k + 2180 := by
    unfold C
    simp [show (17496 * k + 4360) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 2180) = 4374 * k + 1090 := by
    unfold C
    simp [show (8748 * k + 2180) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1090) = 2187 * k + 545 := by
    unfold C
    simp [show (4374 * k + 1090) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1019) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1019))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1087 : ∀ k : Nat, iterate (4096 * k + 1087) 19 = 2187 * k + 581 ∧ 2187 * k + 581 < 4096 * k + 1087 := by
  intro k
  have h1 : C (4096 * k + 1087) = 12288 * k + 3262 := by
    unfold C
    simp [show (4096 * k + 1087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 3262) = 6144 * k + 1631 := by
    unfold C
    simp [show (12288 * k + 3262) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 1631) = 18432 * k + 4894 := by
    unfold C
    simp [show (6144 * k + 1631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 4894) = 9216 * k + 2447 := by
    unfold C
    simp [show (18432 * k + 4894) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 2447) = 27648 * k + 7342 := by
    unfold C
    simp [show (9216 * k + 2447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 7342) = 13824 * k + 3671 := by
    unfold C
    simp [show (27648 * k + 7342) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 3671) = 41472 * k + 11014 := by
    unfold C
    simp [show (13824 * k + 3671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 11014) = 20736 * k + 5507 := by
    unfold C
    simp [show (41472 * k + 11014) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 5507) = 62208 * k + 16522 := by
    unfold C
    simp [show (20736 * k + 5507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 16522) = 31104 * k + 8261 := by
    unfold C
    simp [show (62208 * k + 16522) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 8261) = 93312 * k + 24784 := by
    unfold C
    simp [show (31104 * k + 8261) % 2 ≠ 0 by omega]
    omega
  have h12 : C (93312 * k + 24784) = 46656 * k + 12392 := by
    unfold C
    simp [show (93312 * k + 24784) % 2 = 0 by omega]
    omega
  have h13 : C (46656 * k + 12392) = 23328 * k + 6196 := by
    unfold C
    simp [show (46656 * k + 12392) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 6196) = 11664 * k + 3098 := by
    unfold C
    simp [show (23328 * k + 6196) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 3098) = 5832 * k + 1549 := by
    unfold C
    simp [show (11664 * k + 3098) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 1549) = 17496 * k + 4648 := by
    unfold C
    simp [show (5832 * k + 1549) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 4648) = 8748 * k + 2324 := by
    unfold C
    simp [show (17496 * k + 4648) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 2324) = 4374 * k + 1162 := by
    unfold C
    simp [show (8748 * k + 2324) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1162) = 2187 * k + 581 := by
    unfold C
    simp [show (4374 * k + 1162) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1087) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1087))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1231 : ∀ k : Nat, iterate (4096 * k + 1231) 19 = 2187 * k + 658 ∧ 2187 * k + 658 < 4096 * k + 1231 := by
  intro k
  have h1 : C (4096 * k + 1231) = 12288 * k + 3694 := by
    unfold C
    simp [show (4096 * k + 1231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 3694) = 6144 * k + 1847 := by
    unfold C
    simp [show (12288 * k + 3694) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 1847) = 18432 * k + 5542 := by
    unfold C
    simp [show (6144 * k + 1847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 5542) = 9216 * k + 2771 := by
    unfold C
    simp [show (18432 * k + 5542) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 2771) = 27648 * k + 8314 := by
    unfold C
    simp [show (9216 * k + 2771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 8314) = 13824 * k + 4157 := by
    unfold C
    simp [show (27648 * k + 8314) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 4157) = 41472 * k + 12472 := by
    unfold C
    simp [show (13824 * k + 4157) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 12472) = 20736 * k + 6236 := by
    unfold C
    simp [show (41472 * k + 12472) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 6236) = 10368 * k + 3118 := by
    unfold C
    simp [show (20736 * k + 6236) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 3118) = 5184 * k + 1559 := by
    unfold C
    simp [show (10368 * k + 3118) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 1559) = 15552 * k + 4678 := by
    unfold C
    simp [show (5184 * k + 1559) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 4678) = 7776 * k + 2339 := by
    unfold C
    simp [show (15552 * k + 4678) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 2339) = 23328 * k + 7018 := by
    unfold C
    simp [show (7776 * k + 2339) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 7018) = 11664 * k + 3509 := by
    unfold C
    simp [show (23328 * k + 7018) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 3509) = 34992 * k + 10528 := by
    unfold C
    simp [show (11664 * k + 3509) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 10528) = 17496 * k + 5264 := by
    unfold C
    simp [show (34992 * k + 10528) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 5264) = 8748 * k + 2632 := by
    unfold C
    simp [show (17496 * k + 5264) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 2632) = 4374 * k + 1316 := by
    unfold C
    simp [show (8748 * k + 2632) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1316) = 2187 * k + 658 := by
    unfold C
    simp [show (4374 * k + 1316) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1231) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1231))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1435 : ∀ k : Nat, iterate (4096 * k + 1435) 19 = 2187 * k + 767 ∧ 2187 * k + 767 < 4096 * k + 1435 := by
  intro k
  have h1 : C (4096 * k + 1435) = 12288 * k + 4306 := by
    unfold C
    simp [show (4096 * k + 1435) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 4306) = 6144 * k + 2153 := by
    unfold C
    simp [show (12288 * k + 4306) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2153) = 18432 * k + 6460 := by
    unfold C
    simp [show (6144 * k + 2153) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 6460) = 9216 * k + 3230 := by
    unfold C
    simp [show (18432 * k + 6460) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 3230) = 4608 * k + 1615 := by
    unfold C
    simp [show (9216 * k + 3230) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 1615) = 13824 * k + 4846 := by
    unfold C
    simp [show (4608 * k + 1615) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 4846) = 6912 * k + 2423 := by
    unfold C
    simp [show (13824 * k + 4846) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 2423) = 20736 * k + 7270 := by
    unfold C
    simp [show (6912 * k + 2423) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 7270) = 10368 * k + 3635 := by
    unfold C
    simp [show (20736 * k + 7270) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 3635) = 31104 * k + 10906 := by
    unfold C
    simp [show (10368 * k + 3635) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 10906) = 15552 * k + 5453 := by
    unfold C
    simp [show (31104 * k + 10906) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 5453) = 46656 * k + 16360 := by
    unfold C
    simp [show (15552 * k + 5453) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 16360) = 23328 * k + 8180 := by
    unfold C
    simp [show (46656 * k + 16360) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 8180) = 11664 * k + 4090 := by
    unfold C
    simp [show (23328 * k + 8180) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 4090) = 5832 * k + 2045 := by
    unfold C
    simp [show (11664 * k + 4090) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 2045) = 17496 * k + 6136 := by
    unfold C
    simp [show (5832 * k + 2045) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 6136) = 8748 * k + 3068 := by
    unfold C
    simp [show (17496 * k + 6136) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3068) = 4374 * k + 1534 := by
    unfold C
    simp [show (8748 * k + 3068) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1534) = 2187 * k + 767 := by
    unfold C
    simp [show (4374 * k + 1534) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1435) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1435))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1647 : ∀ k : Nat, iterate (4096 * k + 1647) 19 = 2187 * k + 880 ∧ 2187 * k + 880 < 4096 * k + 1647 := by
  intro k
  have h1 : C (4096 * k + 1647) = 12288 * k + 4942 := by
    unfold C
    simp [show (4096 * k + 1647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 4942) = 6144 * k + 2471 := by
    unfold C
    simp [show (12288 * k + 4942) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2471) = 18432 * k + 7414 := by
    unfold C
    simp [show (6144 * k + 2471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 7414) = 9216 * k + 3707 := by
    unfold C
    simp [show (18432 * k + 7414) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 3707) = 27648 * k + 11122 := by
    unfold C
    simp [show (9216 * k + 3707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 11122) = 13824 * k + 5561 := by
    unfold C
    simp [show (27648 * k + 11122) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 5561) = 41472 * k + 16684 := by
    unfold C
    simp [show (13824 * k + 5561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 16684) = 20736 * k + 8342 := by
    unfold C
    simp [show (41472 * k + 16684) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 8342) = 10368 * k + 4171 := by
    unfold C
    simp [show (20736 * k + 8342) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 4171) = 31104 * k + 12514 := by
    unfold C
    simp [show (10368 * k + 4171) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 12514) = 15552 * k + 6257 := by
    unfold C
    simp [show (31104 * k + 12514) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 6257) = 46656 * k + 18772 := by
    unfold C
    simp [show (15552 * k + 6257) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 18772) = 23328 * k + 9386 := by
    unfold C
    simp [show (46656 * k + 18772) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 9386) = 11664 * k + 4693 := by
    unfold C
    simp [show (23328 * k + 9386) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 4693) = 34992 * k + 14080 := by
    unfold C
    simp [show (11664 * k + 4693) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 14080) = 17496 * k + 7040 := by
    unfold C
    simp [show (34992 * k + 14080) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 7040) = 8748 * k + 3520 := by
    unfold C
    simp [show (17496 * k + 7040) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3520) = 4374 * k + 1760 := by
    unfold C
    simp [show (8748 * k + 3520) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1760) = 2187 * k + 880 := by
    unfold C
    simp [show (4374 * k + 1760) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1647) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1647))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1703 : ∀ k : Nat, iterate (4096 * k + 1703) 19 = 2187 * k + 910 ∧ 2187 * k + 910 < 4096 * k + 1703 := by
  intro k
  have h1 : C (4096 * k + 1703) = 12288 * k + 5110 := by
    unfold C
    simp [show (4096 * k + 1703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 5110) = 6144 * k + 2555 := by
    unfold C
    simp [show (12288 * k + 5110) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2555) = 18432 * k + 7666 := by
    unfold C
    simp [show (6144 * k + 2555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 7666) = 9216 * k + 3833 := by
    unfold C
    simp [show (18432 * k + 7666) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 3833) = 27648 * k + 11500 := by
    unfold C
    simp [show (9216 * k + 3833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 11500) = 13824 * k + 5750 := by
    unfold C
    simp [show (27648 * k + 11500) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 5750) = 6912 * k + 2875 := by
    unfold C
    simp [show (13824 * k + 5750) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 2875) = 20736 * k + 8626 := by
    unfold C
    simp [show (6912 * k + 2875) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 8626) = 10368 * k + 4313 := by
    unfold C
    simp [show (20736 * k + 8626) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 4313) = 31104 * k + 12940 := by
    unfold C
    simp [show (10368 * k + 4313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 12940) = 15552 * k + 6470 := by
    unfold C
    simp [show (31104 * k + 12940) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 6470) = 7776 * k + 3235 := by
    unfold C
    simp [show (15552 * k + 6470) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 3235) = 23328 * k + 9706 := by
    unfold C
    simp [show (7776 * k + 3235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 9706) = 11664 * k + 4853 := by
    unfold C
    simp [show (23328 * k + 9706) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 4853) = 34992 * k + 14560 := by
    unfold C
    simp [show (11664 * k + 4853) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 14560) = 17496 * k + 7280 := by
    unfold C
    simp [show (34992 * k + 14560) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 7280) = 8748 * k + 3640 := by
    unfold C
    simp [show (17496 * k + 7280) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3640) = 4374 * k + 1820 := by
    unfold C
    simp [show (8748 * k + 3640) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1820) = 2187 * k + 910 := by
    unfold C
    simp [show (4374 * k + 1820) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1703) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1703))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1787 : ∀ k : Nat, iterate (4096 * k + 1787) 19 = 2187 * k + 955 ∧ 2187 * k + 955 < 4096 * k + 1787 := by
  intro k
  have h1 : C (4096 * k + 1787) = 12288 * k + 5362 := by
    unfold C
    simp [show (4096 * k + 1787) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 5362) = 6144 * k + 2681 := by
    unfold C
    simp [show (12288 * k + 5362) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2681) = 18432 * k + 8044 := by
    unfold C
    simp [show (6144 * k + 2681) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 8044) = 9216 * k + 4022 := by
    unfold C
    simp [show (18432 * k + 8044) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 4022) = 4608 * k + 2011 := by
    unfold C
    simp [show (9216 * k + 4022) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 2011) = 13824 * k + 6034 := by
    unfold C
    simp [show (4608 * k + 2011) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 6034) = 6912 * k + 3017 := by
    unfold C
    simp [show (13824 * k + 6034) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 3017) = 20736 * k + 9052 := by
    unfold C
    simp [show (6912 * k + 3017) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 9052) = 10368 * k + 4526 := by
    unfold C
    simp [show (20736 * k + 9052) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 4526) = 5184 * k + 2263 := by
    unfold C
    simp [show (10368 * k + 4526) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 2263) = 15552 * k + 6790 := by
    unfold C
    simp [show (5184 * k + 2263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 6790) = 7776 * k + 3395 := by
    unfold C
    simp [show (15552 * k + 6790) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 3395) = 23328 * k + 10186 := by
    unfold C
    simp [show (7776 * k + 3395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 10186) = 11664 * k + 5093 := by
    unfold C
    simp [show (23328 * k + 10186) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 5093) = 34992 * k + 15280 := by
    unfold C
    simp [show (11664 * k + 5093) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 15280) = 17496 * k + 7640 := by
    unfold C
    simp [show (34992 * k + 15280) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 7640) = 8748 * k + 3820 := by
    unfold C
    simp [show (17496 * k + 7640) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3820) = 4374 * k + 1910 := by
    unfold C
    simp [show (8748 * k + 3820) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1910) = 2187 * k + 955 := by
    unfold C
    simp [show (4374 * k + 1910) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1787) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1787))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1823 : ∀ k : Nat, iterate (4096 * k + 1823) 19 = 2187 * k + 974 ∧ 2187 * k + 974 < 4096 * k + 1823 := by
  intro k
  have h1 : C (4096 * k + 1823) = 12288 * k + 5470 := by
    unfold C
    simp [show (4096 * k + 1823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 5470) = 6144 * k + 2735 := by
    unfold C
    simp [show (12288 * k + 5470) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2735) = 18432 * k + 8206 := by
    unfold C
    simp [show (6144 * k + 2735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 8206) = 9216 * k + 4103 := by
    unfold C
    simp [show (18432 * k + 8206) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 4103) = 27648 * k + 12310 := by
    unfold C
    simp [show (9216 * k + 4103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 12310) = 13824 * k + 6155 := by
    unfold C
    simp [show (27648 * k + 12310) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 6155) = 41472 * k + 18466 := by
    unfold C
    simp [show (13824 * k + 6155) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 18466) = 20736 * k + 9233 := by
    unfold C
    simp [show (41472 * k + 18466) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 9233) = 62208 * k + 27700 := by
    unfold C
    simp [show (20736 * k + 9233) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 27700) = 31104 * k + 13850 := by
    unfold C
    simp [show (62208 * k + 27700) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 13850) = 15552 * k + 6925 := by
    unfold C
    simp [show (31104 * k + 13850) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 6925) = 46656 * k + 20776 := by
    unfold C
    simp [show (15552 * k + 6925) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 20776) = 23328 * k + 10388 := by
    unfold C
    simp [show (46656 * k + 20776) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 10388) = 11664 * k + 5194 := by
    unfold C
    simp [show (23328 * k + 10388) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 5194) = 5832 * k + 2597 := by
    unfold C
    simp [show (11664 * k + 5194) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 2597) = 17496 * k + 7792 := by
    unfold C
    simp [show (5832 * k + 2597) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 7792) = 8748 * k + 3896 := by
    unfold C
    simp [show (17496 * k + 7792) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3896) = 4374 * k + 1948 := by
    unfold C
    simp [show (8748 * k + 3896) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1948) = 2187 * k + 974 := by
    unfold C
    simp [show (4374 * k + 1948) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1823) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1823))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_1855 : ∀ k : Nat, iterate (4096 * k + 1855) 19 = 2187 * k + 991 ∧ 2187 * k + 991 < 4096 * k + 1855 := by
  intro k
  have h1 : C (4096 * k + 1855) = 12288 * k + 5566 := by
    unfold C
    simp [show (4096 * k + 1855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 5566) = 6144 * k + 2783 := by
    unfold C
    simp [show (12288 * k + 5566) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 2783) = 18432 * k + 8350 := by
    unfold C
    simp [show (6144 * k + 2783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 8350) = 9216 * k + 4175 := by
    unfold C
    simp [show (18432 * k + 8350) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 4175) = 27648 * k + 12526 := by
    unfold C
    simp [show (9216 * k + 4175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 12526) = 13824 * k + 6263 := by
    unfold C
    simp [show (27648 * k + 12526) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 6263) = 41472 * k + 18790 := by
    unfold C
    simp [show (13824 * k + 6263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 18790) = 20736 * k + 9395 := by
    unfold C
    simp [show (41472 * k + 18790) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 9395) = 62208 * k + 28186 := by
    unfold C
    simp [show (20736 * k + 9395) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 28186) = 31104 * k + 14093 := by
    unfold C
    simp [show (62208 * k + 28186) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 14093) = 93312 * k + 42280 := by
    unfold C
    simp [show (31104 * k + 14093) % 2 ≠ 0 by omega]
    omega
  have h12 : C (93312 * k + 42280) = 46656 * k + 21140 := by
    unfold C
    simp [show (93312 * k + 42280) % 2 = 0 by omega]
    omega
  have h13 : C (46656 * k + 21140) = 23328 * k + 10570 := by
    unfold C
    simp [show (46656 * k + 21140) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 10570) = 11664 * k + 5285 := by
    unfold C
    simp [show (23328 * k + 10570) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 5285) = 34992 * k + 15856 := by
    unfold C
    simp [show (11664 * k + 5285) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 15856) = 17496 * k + 7928 := by
    unfold C
    simp [show (34992 * k + 15856) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 7928) = 8748 * k + 3964 := by
    unfold C
    simp [show (17496 * k + 7928) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 3964) = 4374 * k + 1982 := by
    unfold C
    simp [show (8748 * k + 3964) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 1982) = 2187 * k + 991 := by
    unfold C
    simp [show (4374 * k + 1982) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 1855) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 1855))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2031 : ∀ k : Nat, iterate (4096 * k + 2031) 19 = 2187 * k + 1085 ∧ 2187 * k + 1085 < 4096 * k + 2031 := by
  intro k
  have h1 : C (4096 * k + 2031) = 12288 * k + 6094 := by
    unfold C
    simp [show (4096 * k + 2031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 6094) = 6144 * k + 3047 := by
    unfold C
    simp [show (12288 * k + 6094) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3047) = 18432 * k + 9142 := by
    unfold C
    simp [show (6144 * k + 3047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 9142) = 9216 * k + 4571 := by
    unfold C
    simp [show (18432 * k + 9142) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 4571) = 27648 * k + 13714 := by
    unfold C
    simp [show (9216 * k + 4571) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 13714) = 13824 * k + 6857 := by
    unfold C
    simp [show (27648 * k + 13714) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 6857) = 41472 * k + 20572 := by
    unfold C
    simp [show (13824 * k + 6857) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 20572) = 20736 * k + 10286 := by
    unfold C
    simp [show (41472 * k + 20572) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 10286) = 10368 * k + 5143 := by
    unfold C
    simp [show (20736 * k + 10286) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 5143) = 31104 * k + 15430 := by
    unfold C
    simp [show (10368 * k + 5143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 15430) = 15552 * k + 7715 := by
    unfold C
    simp [show (31104 * k + 15430) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 7715) = 46656 * k + 23146 := by
    unfold C
    simp [show (15552 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 23146) = 23328 * k + 11573 := by
    unfold C
    simp [show (46656 * k + 23146) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 11573) = 69984 * k + 34720 := by
    unfold C
    simp [show (23328 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h15 : C (69984 * k + 34720) = 34992 * k + 17360 := by
    unfold C
    simp [show (69984 * k + 34720) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 17360) = 17496 * k + 8680 := by
    unfold C
    simp [show (34992 * k + 17360) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 8680) = 8748 * k + 4340 := by
    unfold C
    simp [show (17496 * k + 8680) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 4340) = 4374 * k + 2170 := by
    unfold C
    simp [show (8748 * k + 4340) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2170) = 2187 * k + 1085 := by
    unfold C
    simp [show (4374 * k + 2170) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2031) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2031))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2203 : ∀ k : Nat, iterate (4096 * k + 2203) 19 = 2187 * k + 1177 ∧ 2187 * k + 1177 < 4096 * k + 2203 := by
  intro k
  have h1 : C (4096 * k + 2203) = 12288 * k + 6610 := by
    unfold C
    simp [show (4096 * k + 2203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 6610) = 6144 * k + 3305 := by
    unfold C
    simp [show (12288 * k + 6610) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3305) = 18432 * k + 9916 := by
    unfold C
    simp [show (6144 * k + 3305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 9916) = 9216 * k + 4958 := by
    unfold C
    simp [show (18432 * k + 9916) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 4958) = 4608 * k + 2479 := by
    unfold C
    simp [show (9216 * k + 4958) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 2479) = 13824 * k + 7438 := by
    unfold C
    simp [show (4608 * k + 2479) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 7438) = 6912 * k + 3719 := by
    unfold C
    simp [show (13824 * k + 7438) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 3719) = 20736 * k + 11158 := by
    unfold C
    simp [show (6912 * k + 3719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 11158) = 10368 * k + 5579 := by
    unfold C
    simp [show (20736 * k + 11158) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 5579) = 31104 * k + 16738 := by
    unfold C
    simp [show (10368 * k + 5579) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 16738) = 15552 * k + 8369 := by
    unfold C
    simp [show (31104 * k + 16738) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 8369) = 46656 * k + 25108 := by
    unfold C
    simp [show (15552 * k + 8369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 25108) = 23328 * k + 12554 := by
    unfold C
    simp [show (46656 * k + 25108) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 12554) = 11664 * k + 6277 := by
    unfold C
    simp [show (23328 * k + 12554) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 6277) = 34992 * k + 18832 := by
    unfold C
    simp [show (11664 * k + 6277) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 18832) = 17496 * k + 9416 := by
    unfold C
    simp [show (34992 * k + 18832) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 9416) = 8748 * k + 4708 := by
    unfold C
    simp [show (17496 * k + 9416) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 4708) = 4374 * k + 2354 := by
    unfold C
    simp [show (8748 * k + 4708) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2354) = 2187 * k + 1177 := by
    unfold C
    simp [show (4374 * k + 2354) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2203) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2203))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2239 : ∀ k : Nat, iterate (4096 * k + 2239) 19 = 2187 * k + 1196 ∧ 2187 * k + 1196 < 4096 * k + 2239 := by
  intro k
  have h1 : C (4096 * k + 2239) = 12288 * k + 6718 := by
    unfold C
    simp [show (4096 * k + 2239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 6718) = 6144 * k + 3359 := by
    unfold C
    simp [show (12288 * k + 6718) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3359) = 18432 * k + 10078 := by
    unfold C
    simp [show (6144 * k + 3359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 10078) = 9216 * k + 5039 := by
    unfold C
    simp [show (18432 * k + 10078) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 5039) = 27648 * k + 15118 := by
    unfold C
    simp [show (9216 * k + 5039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 15118) = 13824 * k + 7559 := by
    unfold C
    simp [show (27648 * k + 15118) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 7559) = 41472 * k + 22678 := by
    unfold C
    simp [show (13824 * k + 7559) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 22678) = 20736 * k + 11339 := by
    unfold C
    simp [show (41472 * k + 22678) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 11339) = 62208 * k + 34018 := by
    unfold C
    simp [show (20736 * k + 11339) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 34018) = 31104 * k + 17009 := by
    unfold C
    simp [show (62208 * k + 34018) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 17009) = 93312 * k + 51028 := by
    unfold C
    simp [show (31104 * k + 17009) % 2 ≠ 0 by omega]
    omega
  have h12 : C (93312 * k + 51028) = 46656 * k + 25514 := by
    unfold C
    simp [show (93312 * k + 51028) % 2 = 0 by omega]
    omega
  have h13 : C (46656 * k + 25514) = 23328 * k + 12757 := by
    unfold C
    simp [show (46656 * k + 25514) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 12757) = 69984 * k + 38272 := by
    unfold C
    simp [show (23328 * k + 12757) % 2 ≠ 0 by omega]
    omega
  have h15 : C (69984 * k + 38272) = 34992 * k + 19136 := by
    unfold C
    simp [show (69984 * k + 38272) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 19136) = 17496 * k + 9568 := by
    unfold C
    simp [show (34992 * k + 19136) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 9568) = 8748 * k + 4784 := by
    unfold C
    simp [show (17496 * k + 9568) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 4784) = 4374 * k + 2392 := by
    unfold C
    simp [show (8748 * k + 4784) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2392) = 2187 * k + 1196 := by
    unfold C
    simp [show (4374 * k + 2392) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2239) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2239))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2351 : ∀ k : Nat, iterate (4096 * k + 2351) 19 = 2187 * k + 1256 ∧ 2187 * k + 1256 < 4096 * k + 2351 := by
  intro k
  have h1 : C (4096 * k + 2351) = 12288 * k + 7054 := by
    unfold C
    simp [show (4096 * k + 2351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 7054) = 6144 * k + 3527 := by
    unfold C
    simp [show (12288 * k + 7054) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3527) = 18432 * k + 10582 := by
    unfold C
    simp [show (6144 * k + 3527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 10582) = 9216 * k + 5291 := by
    unfold C
    simp [show (18432 * k + 10582) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 5291) = 27648 * k + 15874 := by
    unfold C
    simp [show (9216 * k + 5291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 15874) = 13824 * k + 7937 := by
    unfold C
    simp [show (27648 * k + 15874) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 7937) = 41472 * k + 23812 := by
    unfold C
    simp [show (13824 * k + 7937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 23812) = 20736 * k + 11906 := by
    unfold C
    simp [show (41472 * k + 23812) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 11906) = 10368 * k + 5953 := by
    unfold C
    simp [show (20736 * k + 11906) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 5953) = 31104 * k + 17860 := by
    unfold C
    simp [show (10368 * k + 5953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 17860) = 15552 * k + 8930 := by
    unfold C
    simp [show (31104 * k + 17860) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 8930) = 7776 * k + 4465 := by
    unfold C
    simp [show (15552 * k + 8930) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 4465) = 23328 * k + 13396 := by
    unfold C
    simp [show (7776 * k + 4465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 13396) = 11664 * k + 6698 := by
    unfold C
    simp [show (23328 * k + 13396) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 6698) = 5832 * k + 3349 := by
    unfold C
    simp [show (11664 * k + 6698) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 3349) = 17496 * k + 10048 := by
    unfold C
    simp [show (5832 * k + 3349) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 10048) = 8748 * k + 5024 := by
    unfold C
    simp [show (17496 * k + 10048) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 5024) = 4374 * k + 2512 := by
    unfold C
    simp [show (8748 * k + 5024) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2512) = 2187 * k + 1256 := by
    unfold C
    simp [show (4374 * k + 2512) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2351) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2351))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2587 : ∀ k : Nat, iterate (4096 * k + 2587) 19 = 2187 * k + 1382 ∧ 2187 * k + 1382 < 4096 * k + 2587 := by
  intro k
  have h1 : C (4096 * k + 2587) = 12288 * k + 7762 := by
    unfold C
    simp [show (4096 * k + 2587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 7762) = 6144 * k + 3881 := by
    unfold C
    simp [show (12288 * k + 7762) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3881) = 18432 * k + 11644 := by
    unfold C
    simp [show (6144 * k + 3881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 11644) = 9216 * k + 5822 := by
    unfold C
    simp [show (18432 * k + 11644) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 5822) = 4608 * k + 2911 := by
    unfold C
    simp [show (9216 * k + 5822) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 2911) = 13824 * k + 8734 := by
    unfold C
    simp [show (4608 * k + 2911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 8734) = 6912 * k + 4367 := by
    unfold C
    simp [show (13824 * k + 8734) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 4367) = 20736 * k + 13102 := by
    unfold C
    simp [show (6912 * k + 4367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 13102) = 10368 * k + 6551 := by
    unfold C
    simp [show (20736 * k + 13102) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 6551) = 31104 * k + 19654 := by
    unfold C
    simp [show (10368 * k + 6551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 19654) = 15552 * k + 9827 := by
    unfold C
    simp [show (31104 * k + 19654) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 9827) = 46656 * k + 29482 := by
    unfold C
    simp [show (15552 * k + 9827) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 29482) = 23328 * k + 14741 := by
    unfold C
    simp [show (46656 * k + 29482) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 14741) = 69984 * k + 44224 := by
    unfold C
    simp [show (23328 * k + 14741) % 2 ≠ 0 by omega]
    omega
  have h15 : C (69984 * k + 44224) = 34992 * k + 22112 := by
    unfold C
    simp [show (69984 * k + 44224) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 22112) = 17496 * k + 11056 := by
    unfold C
    simp [show (34992 * k + 22112) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 11056) = 8748 * k + 5528 := by
    unfold C
    simp [show (17496 * k + 11056) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 5528) = 4374 * k + 2764 := by
    unfold C
    simp [show (8748 * k + 5528) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2764) = 2187 * k + 1382 := by
    unfold C
    simp [show (4374 * k + 2764) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2587) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2587))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2591 : ∀ k : Nat, iterate (4096 * k + 2591) 19 = 2187 * k + 1384 ∧ 2187 * k + 1384 < 4096 * k + 2591 := by
  intro k
  have h1 : C (4096 * k + 2591) = 12288 * k + 7774 := by
    unfold C
    simp [show (4096 * k + 2591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 7774) = 6144 * k + 3887 := by
    unfold C
    simp [show (12288 * k + 7774) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 3887) = 18432 * k + 11662 := by
    unfold C
    simp [show (6144 * k + 3887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 11662) = 9216 * k + 5831 := by
    unfold C
    simp [show (18432 * k + 11662) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 5831) = 27648 * k + 17494 := by
    unfold C
    simp [show (9216 * k + 5831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 17494) = 13824 * k + 8747 := by
    unfold C
    simp [show (27648 * k + 17494) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 8747) = 41472 * k + 26242 := by
    unfold C
    simp [show (13824 * k + 8747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 26242) = 20736 * k + 13121 := by
    unfold C
    simp [show (41472 * k + 26242) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 13121) = 62208 * k + 39364 := by
    unfold C
    simp [show (20736 * k + 13121) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 39364) = 31104 * k + 19682 := by
    unfold C
    simp [show (62208 * k + 39364) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 19682) = 15552 * k + 9841 := by
    unfold C
    simp [show (31104 * k + 19682) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 9841) = 46656 * k + 29524 := by
    unfold C
    simp [show (15552 * k + 9841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 29524) = 23328 * k + 14762 := by
    unfold C
    simp [show (46656 * k + 29524) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 14762) = 11664 * k + 7381 := by
    unfold C
    simp [show (23328 * k + 14762) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 7381) = 34992 * k + 22144 := by
    unfold C
    simp [show (11664 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 22144) = 17496 * k + 11072 := by
    unfold C
    simp [show (34992 * k + 22144) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 11072) = 8748 * k + 5536 := by
    unfold C
    simp [show (17496 * k + 11072) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 5536) = 4374 * k + 2768 := by
    unfold C
    simp [show (8748 * k + 5536) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 2768) = 2187 * k + 1384 := by
    unfold C
    simp [show (4374 * k + 2768) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2591) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2591))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2907 : ∀ k : Nat, iterate (4096 * k + 2907) 19 = 2187 * k + 1553 ∧ 2187 * k + 1553 < 4096 * k + 2907 := by
  intro k
  have h1 : C (4096 * k + 2907) = 12288 * k + 8722 := by
    unfold C
    simp [show (4096 * k + 2907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 8722) = 6144 * k + 4361 := by
    unfold C
    simp [show (12288 * k + 8722) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 4361) = 18432 * k + 13084 := by
    unfold C
    simp [show (6144 * k + 4361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 13084) = 9216 * k + 6542 := by
    unfold C
    simp [show (18432 * k + 13084) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 6542) = 4608 * k + 3271 := by
    unfold C
    simp [show (9216 * k + 6542) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 3271) = 13824 * k + 9814 := by
    unfold C
    simp [show (4608 * k + 3271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 9814) = 6912 * k + 4907 := by
    unfold C
    simp [show (13824 * k + 9814) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 4907) = 20736 * k + 14722 := by
    unfold C
    simp [show (6912 * k + 4907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 14722) = 10368 * k + 7361 := by
    unfold C
    simp [show (20736 * k + 14722) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 7361) = 31104 * k + 22084 := by
    unfold C
    simp [show (10368 * k + 7361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 22084) = 15552 * k + 11042 := by
    unfold C
    simp [show (31104 * k + 22084) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 11042) = 7776 * k + 5521 := by
    unfold C
    simp [show (15552 * k + 11042) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 5521) = 23328 * k + 16564 := by
    unfold C
    simp [show (7776 * k + 5521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 16564) = 11664 * k + 8282 := by
    unfold C
    simp [show (23328 * k + 16564) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 8282) = 5832 * k + 4141 := by
    unfold C
    simp [show (11664 * k + 8282) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 4141) = 17496 * k + 12424 := by
    unfold C
    simp [show (5832 * k + 4141) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 12424) = 8748 * k + 6212 := by
    unfold C
    simp [show (17496 * k + 12424) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 6212) = 4374 * k + 3106 := by
    unfold C
    simp [show (8748 * k + 6212) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3106) = 2187 * k + 1553 := by
    unfold C
    simp [show (4374 * k + 3106) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2907) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2907))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_2975 : ∀ k : Nat, iterate (4096 * k + 2975) 19 = 2187 * k + 1589 ∧ 2187 * k + 1589 < 4096 * k + 2975 := by
  intro k
  have h1 : C (4096 * k + 2975) = 12288 * k + 8926 := by
    unfold C
    simp [show (4096 * k + 2975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 8926) = 6144 * k + 4463 := by
    unfold C
    simp [show (12288 * k + 8926) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 4463) = 18432 * k + 13390 := by
    unfold C
    simp [show (6144 * k + 4463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 13390) = 9216 * k + 6695 := by
    unfold C
    simp [show (18432 * k + 13390) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 6695) = 27648 * k + 20086 := by
    unfold C
    simp [show (9216 * k + 6695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 20086) = 13824 * k + 10043 := by
    unfold C
    simp [show (27648 * k + 20086) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 10043) = 41472 * k + 30130 := by
    unfold C
    simp [show (13824 * k + 10043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 30130) = 20736 * k + 15065 := by
    unfold C
    simp [show (41472 * k + 30130) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 15065) = 62208 * k + 45196 := by
    unfold C
    simp [show (20736 * k + 15065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 45196) = 31104 * k + 22598 := by
    unfold C
    simp [show (62208 * k + 45196) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 22598) = 15552 * k + 11299 := by
    unfold C
    simp [show (31104 * k + 22598) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 11299) = 46656 * k + 33898 := by
    unfold C
    simp [show (15552 * k + 11299) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 33898) = 23328 * k + 16949 := by
    unfold C
    simp [show (46656 * k + 33898) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 16949) = 69984 * k + 50848 := by
    unfold C
    simp [show (23328 * k + 16949) % 2 ≠ 0 by omega]
    omega
  have h15 : C (69984 * k + 50848) = 34992 * k + 25424 := by
    unfold C
    simp [show (69984 * k + 50848) % 2 = 0 by omega]
    omega
  have h16 : C (34992 * k + 25424) = 17496 * k + 12712 := by
    unfold C
    simp [show (34992 * k + 25424) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 12712) = 8748 * k + 6356 := by
    unfold C
    simp [show (17496 * k + 12712) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 6356) = 4374 * k + 3178 := by
    unfold C
    simp [show (8748 * k + 6356) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3178) = 2187 * k + 1589 := by
    unfold C
    simp [show (4374 * k + 3178) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 2975) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 2975))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3119 : ∀ k : Nat, iterate (4096 * k + 3119) 19 = 2187 * k + 1666 ∧ 2187 * k + 1666 < 4096 * k + 3119 := by
  intro k
  have h1 : C (4096 * k + 3119) = 12288 * k + 9358 := by
    unfold C
    simp [show (4096 * k + 3119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 9358) = 6144 * k + 4679 := by
    unfold C
    simp [show (12288 * k + 9358) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 4679) = 18432 * k + 14038 := by
    unfold C
    simp [show (6144 * k + 4679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 14038) = 9216 * k + 7019 := by
    unfold C
    simp [show (18432 * k + 14038) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 7019) = 27648 * k + 21058 := by
    unfold C
    simp [show (9216 * k + 7019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 21058) = 13824 * k + 10529 := by
    unfold C
    simp [show (27648 * k + 21058) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 10529) = 41472 * k + 31588 := by
    unfold C
    simp [show (13824 * k + 10529) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 31588) = 20736 * k + 15794 := by
    unfold C
    simp [show (41472 * k + 31588) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 15794) = 10368 * k + 7897 := by
    unfold C
    simp [show (20736 * k + 15794) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 7897) = 31104 * k + 23692 := by
    unfold C
    simp [show (10368 * k + 7897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 23692) = 15552 * k + 11846 := by
    unfold C
    simp [show (31104 * k + 23692) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 11846) = 7776 * k + 5923 := by
    unfold C
    simp [show (15552 * k + 11846) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 5923) = 23328 * k + 17770 := by
    unfold C
    simp [show (7776 * k + 5923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 17770) = 11664 * k + 8885 := by
    unfold C
    simp [show (23328 * k + 17770) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 8885) = 34992 * k + 26656 := by
    unfold C
    simp [show (11664 * k + 8885) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 26656) = 17496 * k + 13328 := by
    unfold C
    simp [show (34992 * k + 26656) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 13328) = 8748 * k + 6664 := by
    unfold C
    simp [show (17496 * k + 13328) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 6664) = 4374 * k + 3332 := by
    unfold C
    simp [show (8748 * k + 6664) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3332) = 2187 * k + 1666 := by
    unfold C
    simp [show (4374 * k + 3332) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3119) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3119))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3143 : ∀ k : Nat, iterate (4096 * k + 3143) 19 = 2187 * k + 1679 ∧ 2187 * k + 1679 < 4096 * k + 3143 := by
  intro k
  have h1 : C (4096 * k + 3143) = 12288 * k + 9430 := by
    unfold C
    simp [show (4096 * k + 3143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 9430) = 6144 * k + 4715 := by
    unfold C
    simp [show (12288 * k + 9430) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 4715) = 18432 * k + 14146 := by
    unfold C
    simp [show (6144 * k + 4715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 14146) = 9216 * k + 7073 := by
    unfold C
    simp [show (18432 * k + 14146) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 7073) = 27648 * k + 21220 := by
    unfold C
    simp [show (9216 * k + 7073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 21220) = 13824 * k + 10610 := by
    unfold C
    simp [show (27648 * k + 21220) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 10610) = 6912 * k + 5305 := by
    unfold C
    simp [show (13824 * k + 10610) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 5305) = 20736 * k + 15916 := by
    unfold C
    simp [show (6912 * k + 5305) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 15916) = 10368 * k + 7958 := by
    unfold C
    simp [show (20736 * k + 15916) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 7958) = 5184 * k + 3979 := by
    unfold C
    simp [show (10368 * k + 7958) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 3979) = 15552 * k + 11938 := by
    unfold C
    simp [show (5184 * k + 3979) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 11938) = 7776 * k + 5969 := by
    unfold C
    simp [show (15552 * k + 11938) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 5969) = 23328 * k + 17908 := by
    unfold C
    simp [show (7776 * k + 5969) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 17908) = 11664 * k + 8954 := by
    unfold C
    simp [show (23328 * k + 17908) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 8954) = 5832 * k + 4477 := by
    unfold C
    simp [show (11664 * k + 8954) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 4477) = 17496 * k + 13432 := by
    unfold C
    simp [show (5832 * k + 4477) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 13432) = 8748 * k + 6716 := by
    unfold C
    simp [show (17496 * k + 13432) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 6716) = 4374 * k + 3358 := by
    unfold C
    simp [show (8748 * k + 6716) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3358) = 2187 * k + 1679 := by
    unfold C
    simp [show (4374 * k + 3358) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3143) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3143))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3295 : ∀ k : Nat, iterate (4096 * k + 3295) 19 = 2187 * k + 1760 ∧ 2187 * k + 1760 < 4096 * k + 3295 := by
  intro k
  have h1 : C (4096 * k + 3295) = 12288 * k + 9886 := by
    unfold C
    simp [show (4096 * k + 3295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 9886) = 6144 * k + 4943 := by
    unfold C
    simp [show (12288 * k + 9886) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 4943) = 18432 * k + 14830 := by
    unfold C
    simp [show (6144 * k + 4943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 14830) = 9216 * k + 7415 := by
    unfold C
    simp [show (18432 * k + 14830) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 7415) = 27648 * k + 22246 := by
    unfold C
    simp [show (9216 * k + 7415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 22246) = 13824 * k + 11123 := by
    unfold C
    simp [show (27648 * k + 22246) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 11123) = 41472 * k + 33370 := by
    unfold C
    simp [show (13824 * k + 11123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 33370) = 20736 * k + 16685 := by
    unfold C
    simp [show (41472 * k + 33370) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 16685) = 62208 * k + 50056 := by
    unfold C
    simp [show (20736 * k + 16685) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 50056) = 31104 * k + 25028 := by
    unfold C
    simp [show (62208 * k + 50056) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 25028) = 15552 * k + 12514 := by
    unfold C
    simp [show (31104 * k + 25028) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 12514) = 7776 * k + 6257 := by
    unfold C
    simp [show (15552 * k + 12514) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 6257) = 23328 * k + 18772 := by
    unfold C
    simp [show (7776 * k + 6257) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 18772) = 11664 * k + 9386 := by
    unfold C
    simp [show (23328 * k + 18772) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 9386) = 5832 * k + 4693 := by
    unfold C
    simp [show (11664 * k + 9386) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 4693) = 17496 * k + 14080 := by
    unfold C
    simp [show (5832 * k + 4693) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 14080) = 8748 * k + 7040 := by
    unfold C
    simp [show (17496 * k + 14080) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 7040) = 4374 * k + 3520 := by
    unfold C
    simp [show (8748 * k + 7040) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3520) = 2187 * k + 1760 := by
    unfold C
    simp [show (4374 * k + 3520) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3295) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3295))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3559 : ∀ k : Nat, iterate (4096 * k + 3559) 19 = 2187 * k + 1901 ∧ 2187 * k + 1901 < 4096 * k + 3559 := by
  intro k
  have h1 : C (4096 * k + 3559) = 12288 * k + 10678 := by
    unfold C
    simp [show (4096 * k + 3559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 10678) = 6144 * k + 5339 := by
    unfold C
    simp [show (12288 * k + 10678) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 5339) = 18432 * k + 16018 := by
    unfold C
    simp [show (6144 * k + 5339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 16018) = 9216 * k + 8009 := by
    unfold C
    simp [show (18432 * k + 16018) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 8009) = 27648 * k + 24028 := by
    unfold C
    simp [show (9216 * k + 8009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 24028) = 13824 * k + 12014 := by
    unfold C
    simp [show (27648 * k + 24028) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 12014) = 6912 * k + 6007 := by
    unfold C
    simp [show (13824 * k + 12014) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 6007) = 20736 * k + 18022 := by
    unfold C
    simp [show (6912 * k + 6007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 18022) = 10368 * k + 9011 := by
    unfold C
    simp [show (20736 * k + 18022) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 9011) = 31104 * k + 27034 := by
    unfold C
    simp [show (10368 * k + 9011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 27034) = 15552 * k + 13517 := by
    unfold C
    simp [show (31104 * k + 27034) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 13517) = 46656 * k + 40552 := by
    unfold C
    simp [show (15552 * k + 13517) % 2 ≠ 0 by omega]
    omega
  have h13 : C (46656 * k + 40552) = 23328 * k + 20276 := by
    unfold C
    simp [show (46656 * k + 40552) % 2 = 0 by omega]
    omega
  have h14 : C (23328 * k + 20276) = 11664 * k + 10138 := by
    unfold C
    simp [show (23328 * k + 20276) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 10138) = 5832 * k + 5069 := by
    unfold C
    simp [show (11664 * k + 10138) % 2 = 0 by omega]
    omega
  have h16 : C (5832 * k + 5069) = 17496 * k + 15208 := by
    unfold C
    simp [show (5832 * k + 5069) % 2 ≠ 0 by omega]
    omega
  have h17 : C (17496 * k + 15208) = 8748 * k + 7604 := by
    unfold C
    simp [show (17496 * k + 15208) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 7604) = 4374 * k + 3802 := by
    unfold C
    simp [show (8748 * k + 7604) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3802) = 2187 * k + 1901 := by
    unfold C
    simp [show (4374 * k + 3802) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3559) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3559))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3675 : ∀ k : Nat, iterate (4096 * k + 3675) 19 = 2187 * k + 1963 ∧ 2187 * k + 1963 < 4096 * k + 3675 := by
  intro k
  have h1 : C (4096 * k + 3675) = 12288 * k + 11026 := by
    unfold C
    simp [show (4096 * k + 3675) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 11026) = 6144 * k + 5513 := by
    unfold C
    simp [show (12288 * k + 11026) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 5513) = 18432 * k + 16540 := by
    unfold C
    simp [show (6144 * k + 5513) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 16540) = 9216 * k + 8270 := by
    unfold C
    simp [show (18432 * k + 16540) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 8270) = 4608 * k + 4135 := by
    unfold C
    simp [show (9216 * k + 8270) % 2 = 0 by omega]
    omega
  have h6 : C (4608 * k + 4135) = 13824 * k + 12406 := by
    unfold C
    simp [show (4608 * k + 4135) % 2 ≠ 0 by omega]
    omega
  have h7 : C (13824 * k + 12406) = 6912 * k + 6203 := by
    unfold C
    simp [show (13824 * k + 12406) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 6203) = 20736 * k + 18610 := by
    unfold C
    simp [show (6912 * k + 6203) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 18610) = 10368 * k + 9305 := by
    unfold C
    simp [show (20736 * k + 18610) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 9305) = 31104 * k + 27916 := by
    unfold C
    simp [show (10368 * k + 9305) % 2 ≠ 0 by omega]
    omega
  have h11 : C (31104 * k + 27916) = 15552 * k + 13958 := by
    unfold C
    simp [show (31104 * k + 27916) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 13958) = 7776 * k + 6979 := by
    unfold C
    simp [show (15552 * k + 13958) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 6979) = 23328 * k + 20938 := by
    unfold C
    simp [show (7776 * k + 6979) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 20938) = 11664 * k + 10469 := by
    unfold C
    simp [show (23328 * k + 20938) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 10469) = 34992 * k + 31408 := by
    unfold C
    simp [show (11664 * k + 10469) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 31408) = 17496 * k + 15704 := by
    unfold C
    simp [show (34992 * k + 31408) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 15704) = 8748 * k + 7852 := by
    unfold C
    simp [show (17496 * k + 15704) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 7852) = 4374 * k + 3926 := by
    unfold C
    simp [show (8748 * k + 7852) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 3926) = 2187 * k + 1963 := by
    unfold C
    simp [show (4374 * k + 3926) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3675) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3675))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_3911 : ∀ k : Nat, iterate (4096 * k + 3911) 19 = 2187 * k + 2089 ∧ 2187 * k + 2089 < 4096 * k + 3911 := by
  intro k
  have h1 : C (4096 * k + 3911) = 12288 * k + 11734 := by
    unfold C
    simp [show (4096 * k + 3911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 11734) = 6144 * k + 5867 := by
    unfold C
    simp [show (12288 * k + 11734) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 5867) = 18432 * k + 17602 := by
    unfold C
    simp [show (6144 * k + 5867) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 17602) = 9216 * k + 8801 := by
    unfold C
    simp [show (18432 * k + 17602) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 8801) = 27648 * k + 26404 := by
    unfold C
    simp [show (9216 * k + 8801) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 26404) = 13824 * k + 13202 := by
    unfold C
    simp [show (27648 * k + 26404) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 13202) = 6912 * k + 6601 := by
    unfold C
    simp [show (13824 * k + 13202) % 2 = 0 by omega]
    omega
  have h8 : C (6912 * k + 6601) = 20736 * k + 19804 := by
    unfold C
    simp [show (6912 * k + 6601) % 2 ≠ 0 by omega]
    omega
  have h9 : C (20736 * k + 19804) = 10368 * k + 9902 := by
    unfold C
    simp [show (20736 * k + 19804) % 2 = 0 by omega]
    omega
  have h10 : C (10368 * k + 9902) = 5184 * k + 4951 := by
    unfold C
    simp [show (10368 * k + 9902) % 2 = 0 by omega]
    omega
  have h11 : C (5184 * k + 4951) = 15552 * k + 14854 := by
    unfold C
    simp [show (5184 * k + 4951) % 2 ≠ 0 by omega]
    omega
  have h12 : C (15552 * k + 14854) = 7776 * k + 7427 := by
    unfold C
    simp [show (15552 * k + 14854) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 7427) = 23328 * k + 22282 := by
    unfold C
    simp [show (7776 * k + 7427) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 22282) = 11664 * k + 11141 := by
    unfold C
    simp [show (23328 * k + 22282) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 11141) = 34992 * k + 33424 := by
    unfold C
    simp [show (11664 * k + 11141) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 33424) = 17496 * k + 16712 := by
    unfold C
    simp [show (34992 * k + 33424) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 16712) = 8748 * k + 8356 := by
    unfold C
    simp [show (17496 * k + 16712) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 8356) = 4374 * k + 4178 := by
    unfold C
    simp [show (8748 * k + 8356) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 4178) = 2187 * k + 2089 := by
    unfold C
    simp [show (4374 * k + 4178) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 3911) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 3911))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

theorem descent_mod4096_4063 : ∀ k : Nat, iterate (4096 * k + 4063) 19 = 2187 * k + 2170 ∧ 2187 * k + 2170 < 4096 * k + 4063 := by
  intro k
  have h1 : C (4096 * k + 4063) = 12288 * k + 12190 := by
    unfold C
    simp [show (4096 * k + 4063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (12288 * k + 12190) = 6144 * k + 6095 := by
    unfold C
    simp [show (12288 * k + 12190) % 2 = 0 by omega]
    omega
  have h3 : C (6144 * k + 6095) = 18432 * k + 18286 := by
    unfold C
    simp [show (6144 * k + 6095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (18432 * k + 18286) = 9216 * k + 9143 := by
    unfold C
    simp [show (18432 * k + 18286) % 2 = 0 by omega]
    omega
  have h5 : C (9216 * k + 9143) = 27648 * k + 27430 := by
    unfold C
    simp [show (9216 * k + 9143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (27648 * k + 27430) = 13824 * k + 13715 := by
    unfold C
    simp [show (27648 * k + 27430) % 2 = 0 by omega]
    omega
  have h7 : C (13824 * k + 13715) = 41472 * k + 41146 := by
    unfold C
    simp [show (13824 * k + 13715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (41472 * k + 41146) = 20736 * k + 20573 := by
    unfold C
    simp [show (41472 * k + 41146) % 2 = 0 by omega]
    omega
  have h9 : C (20736 * k + 20573) = 62208 * k + 61720 := by
    unfold C
    simp [show (20736 * k + 20573) % 2 ≠ 0 by omega]
    omega
  have h10 : C (62208 * k + 61720) = 31104 * k + 30860 := by
    unfold C
    simp [show (62208 * k + 61720) % 2 = 0 by omega]
    omega
  have h11 : C (31104 * k + 30860) = 15552 * k + 15430 := by
    unfold C
    simp [show (31104 * k + 30860) % 2 = 0 by omega]
    omega
  have h12 : C (15552 * k + 15430) = 7776 * k + 7715 := by
    unfold C
    simp [show (15552 * k + 15430) % 2 = 0 by omega]
    omega
  have h13 : C (7776 * k + 7715) = 23328 * k + 23146 := by
    unfold C
    simp [show (7776 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h14 : C (23328 * k + 23146) = 11664 * k + 11573 := by
    unfold C
    simp [show (23328 * k + 23146) % 2 = 0 by omega]
    omega
  have h15 : C (11664 * k + 11573) = 34992 * k + 34720 := by
    unfold C
    simp [show (11664 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h16 : C (34992 * k + 34720) = 17496 * k + 17360 := by
    unfold C
    simp [show (34992 * k + 34720) % 2 = 0 by omega]
    omega
  have h17 : C (17496 * k + 17360) = 8748 * k + 8680 := by
    unfold C
    simp [show (17496 * k + 17360) % 2 = 0 by omega]
    omega
  have h18 : C (8748 * k + 8680) = 4374 * k + 4340 := by
    unfold C
    simp [show (8748 * k + 8680) % 2 = 0 by omega]
    omega
  have h19 : C (4374 * k + 4340) = 2187 * k + 2170 := by
    unfold C
    simp [show (4374 * k + 4340) % 2 = 0 by omega]
    omega
  have hIter : iterate (4096 * k + 4063) 19 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (4096 * k + 4063))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19]
  · omega

def coveredResidue256Class (n : Nat) : Prop :=
  oldResidueClass n ∨ n % 256 = 39 ∨ n % 256 = 175 ∨ n % 256 = 199 ∨
    n % 256 = 79 ∨ n % 256 = 219 ∨ n % 256 = 95 ∨ n % 256 = 123

theorem bounded_residue_descent_plus_m12_prefix :
    ∀ n : Nat, 2 ≤ n →
      (coveredResidue256Class n ∨
        n % 1024 = 287 ∨ n % 1024 = 347 ∨ n % 1024 = 367 ∨ n % 1024 = 423 ∨
        n % 1024 = 507 ∨ n % 1024 = 575 ∨ n % 1024 = 583 ∨ n % 1024 = 735 ∨
        n % 1024 = 815 ∨ n % 1024 = 923 ∨ n % 1024 = 975 ∨ n % 1024 = 999 ∨
        n % 4096 = 231 ∨ n % 4096 = 383 ∨ n % 4096 = 463 ∨ n % 4096 = 615 ∨
        n % 4096 = 879 ∨ n % 4096 = 935 ∨ n % 4096 = 1019 ∨ n % 4096 = 1087 ∨
        n % 4096 = 1231 ∨ n % 4096 = 1435 ∨ n % 4096 = 1647 ∨ n % 4096 = 1703 ∨
        n % 4096 = 1787 ∨ n % 4096 = 1823 ∨ n % 4096 = 1855 ∨ n % 4096 = 2031 ∨
        n % 4096 = 2203 ∨ n % 4096 = 2239 ∨ n % 4096 = 2351 ∨ n % 4096 = 2587 ∨
        n % 4096 = 2591 ∨ n % 4096 = 2907 ∨ n % 4096 = 2975 ∨ n % 4096 = 3119 ∨
        n % 4096 = 3143 ∨ n % 4096 = 3295 ∨ n % 4096 = 3559 ∨ n % 4096 = 3675 ∨
        n % 4096 = 3911 ∨ n % 4096 = 4063) →
      ∃ t : Nat, 1 ≤ t ∧ t ≤ 19 ∧ iterate n t < n := by
  intro n hn hres
  rcases hres with hbase | hrest
  · have hbaseOld : oldResidueClass n ∨ n % 256 = 39 ∨ n % 256 = 175 ∨ n % 256 = 199 ∨
        n % 256 = 79 ∨ n % 256 = 219 ∨ n % 256 = 95 ∨ n % 256 = 123 := by
      simpa [coveredResidue256Class] using hbase
    obtain ⟨t, ht1, ht2, hlt⟩ := bounded_residue_descent_plus_seven n hn hbaseOld
    exact ⟨t, ht1, by omega, hlt⟩
  rcases hrest with hprefix0 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 287 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_287 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix1 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 347 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_347 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix2 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 367 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_367 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix3 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 423 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_423 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix4 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 507 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_507 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix5 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 575 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_575 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix6 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 583 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_583 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix7 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 735 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_735 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix8 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 815 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_815 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix9 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 923 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_923 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix10 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 975 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_975 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix11 | hrest
  · have hdiv : n = 1024 * (n / 1024) + 999 := by
      have h := Nat.mod_add_div n 1024
      omega
    obtain ⟨heq, hlt⟩ := descent_mod1024_999 (n / 1024)
    refine ⟨16, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix12 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 231 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_231 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix13 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 383 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_383 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix14 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 463 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_463 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix15 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 615 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_615 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix16 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 879 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_879 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix17 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 935 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_935 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix18 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1019 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1019 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix19 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1087 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1087 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix20 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1231 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1231 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix21 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1435 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1435 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix22 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1647 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1647 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix23 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1703 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1703 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix24 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1787 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1787 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix25 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1823 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1823 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix26 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 1855 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_1855 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix27 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2031 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2031 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix28 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2203 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2203 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix29 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2239 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2239 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix30 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2351 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2351 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix31 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2587 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2587 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix32 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2591 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2591 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix33 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2907 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2907 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix34 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 2975 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_2975 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix35 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3119 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3119 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix36 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3143 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3143 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix37 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3295 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3295 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix38 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3559 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3559 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix39 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3675 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3675 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hprefix40 | hrest
  · have hdiv : n = 4096 * (n / 4096) + 3911 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_3911 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  · have hdiv : n = 4096 * (n / 4096) + 4063 := by
      have h := Nat.mod_add_div n 4096
      omega
    obtain ⟨heq, hlt⟩ := descent_mod4096_4063 (n / 4096)
    refine ⟨19, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt

def eligibleResidue4096 (r : Nat) : Bool :=
  eligibleResidue256 (r % 4096) ||
    decide (r % 1024 = 287 ∨ r % 1024 = 347 ∨ r % 1024 = 367 ∨ r % 1024 = 423 ∨
      r % 1024 = 507 ∨ r % 1024 = 575 ∨ r % 1024 = 583 ∨ r % 1024 = 735 ∨
      r % 1024 = 815 ∨ r % 1024 = 923 ∨ r % 1024 = 975 ∨ r % 1024 = 999) ||
    decide (r % 4096 = 231 ∨ r % 4096 = 383 ∨ r % 4096 = 463 ∨ r % 4096 = 615 ∨
      r % 4096 = 879 ∨ r % 4096 = 935 ∨ r % 4096 = 1019 ∨ r % 4096 = 1087 ∨
      r % 4096 = 1231 ∨ r % 4096 = 1435 ∨ r % 4096 = 1647 ∨ r % 4096 = 1703 ∨
      r % 4096 = 1787 ∨ r % 4096 = 1823 ∨ r % 4096 = 1855 ∨ r % 4096 = 2031 ∨
      r % 4096 = 2203 ∨ r % 4096 = 2239 ∨ r % 4096 = 2351 ∨ r % 4096 = 2587 ∨
      r % 4096 = 2591 ∨ r % 4096 = 2907 ∨ r % 4096 = 2975 ∨ r % 4096 = 3119 ∨
      r % 4096 = 3143 ∨ r % 4096 = 3295 ∨ r % 4096 = 3559 ∨ r % 4096 = 3675 ∨
      r % 4096 = 3911 ∨ r % 4096 = 4063)

set_option maxRecDepth 16384 in
theorem eligibleResidue4096_count :
    (List.filter eligibleResidue4096 (List.range 4096)).length = 3870 := by
  decide

#print axioms bounded_residue_descent_plus_m12_prefix
#print axioms eligibleResidue4096_count


theorem descent_mod8192_191 : ∀ k : Nat, iterate (8192 * k + 191) 21 = 6561 * k + 154 ∧ 6561 * k + 154 < 8192 * k + 191 := by
  intro k
  have h1 : C (8192 * k + 191) = 24576 * k + 574 := by
    unfold C
    simp [show (8192 * k + 191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 574) = 12288 * k + 287 := by
    unfold C
    simp [show (24576 * k + 574) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 287) = 36864 * k + 862 := by
    unfold C
    simp [show (12288 * k + 287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 862) = 18432 * k + 431 := by
    unfold C
    simp [show (36864 * k + 862) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 431) = 55296 * k + 1294 := by
    unfold C
    simp [show (18432 * k + 431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 1294) = 27648 * k + 647 := by
    unfold C
    simp [show (55296 * k + 1294) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 647) = 82944 * k + 1942 := by
    unfold C
    simp [show (27648 * k + 647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 1942) = 41472 * k + 971 := by
    unfold C
    simp [show (82944 * k + 1942) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 971) = 124416 * k + 2914 := by
    unfold C
    simp [show (41472 * k + 971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 2914) = 62208 * k + 1457 := by
    unfold C
    simp [show (124416 * k + 2914) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 1457) = 186624 * k + 4372 := by
    unfold C
    simp [show (62208 * k + 1457) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 4372) = 93312 * k + 2186 := by
    unfold C
    simp [show (186624 * k + 4372) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 2186) = 46656 * k + 1093 := by
    unfold C
    simp [show (93312 * k + 2186) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 1093) = 139968 * k + 3280 := by
    unfold C
    simp [show (46656 * k + 1093) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 3280) = 69984 * k + 1640 := by
    unfold C
    simp [show (139968 * k + 3280) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 1640) = 34992 * k + 820 := by
    unfold C
    simp [show (69984 * k + 1640) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 820) = 17496 * k + 410 := by
    unfold C
    simp [show (34992 * k + 820) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 410) = 8748 * k + 205 := by
    unfold C
    simp [show (17496 * k + 410) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 205) = 26244 * k + 616 := by
    unfold C
    simp [show (8748 * k + 205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 616) = 13122 * k + 308 := by
    unfold C
    simp [show (26244 * k + 616) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 308) = 6561 * k + 154 := by
    unfold C
    simp [show (13122 * k + 308) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 191) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 191))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_207 : ∀ k : Nat, iterate (8192 * k + 207) 21 = 6561 * k + 167 ∧ 6561 * k + 167 < 8192 * k + 207 := by
  intro k
  have h1 : C (8192 * k + 207) = 24576 * k + 622 := by
    unfold C
    simp [show (8192 * k + 207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 622) = 12288 * k + 311 := by
    unfold C
    simp [show (24576 * k + 622) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 311) = 36864 * k + 934 := by
    unfold C
    simp [show (12288 * k + 311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 934) = 18432 * k + 467 := by
    unfold C
    simp [show (36864 * k + 934) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 467) = 55296 * k + 1402 := by
    unfold C
    simp [show (18432 * k + 467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 1402) = 27648 * k + 701 := by
    unfold C
    simp [show (55296 * k + 1402) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 701) = 82944 * k + 2104 := by
    unfold C
    simp [show (27648 * k + 701) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 2104) = 41472 * k + 1052 := by
    unfold C
    simp [show (82944 * k + 2104) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 1052) = 20736 * k + 526 := by
    unfold C
    simp [show (41472 * k + 1052) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 526) = 10368 * k + 263 := by
    unfold C
    simp [show (20736 * k + 526) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 263) = 31104 * k + 790 := by
    unfold C
    simp [show (10368 * k + 263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 790) = 15552 * k + 395 := by
    unfold C
    simp [show (31104 * k + 790) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 395) = 46656 * k + 1186 := by
    unfold C
    simp [show (15552 * k + 395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 1186) = 23328 * k + 593 := by
    unfold C
    simp [show (46656 * k + 1186) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 593) = 69984 * k + 1780 := by
    unfold C
    simp [show (23328 * k + 593) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 1780) = 34992 * k + 890 := by
    unfold C
    simp [show (69984 * k + 1780) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 890) = 17496 * k + 445 := by
    unfold C
    simp [show (34992 * k + 890) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 445) = 52488 * k + 1336 := by
    unfold C
    simp [show (17496 * k + 445) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 1336) = 26244 * k + 668 := by
    unfold C
    simp [show (52488 * k + 1336) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 668) = 13122 * k + 334 := by
    unfold C
    simp [show (26244 * k + 668) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 334) = 6561 * k + 167 := by
    unfold C
    simp [show (13122 * k + 334) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 207) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 207))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_255 : ∀ k : Nat, iterate (8192 * k + 255) 21 = 6561 * k + 205 ∧ 6561 * k + 205 < 8192 * k + 255 := by
  intro k
  have h1 : C (8192 * k + 255) = 24576 * k + 766 := by
    unfold C
    simp [show (8192 * k + 255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 766) = 12288 * k + 383 := by
    unfold C
    simp [show (24576 * k + 766) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 383) = 36864 * k + 1150 := by
    unfold C
    simp [show (12288 * k + 383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 1150) = 18432 * k + 575 := by
    unfold C
    simp [show (36864 * k + 1150) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 575) = 55296 * k + 1726 := by
    unfold C
    simp [show (18432 * k + 575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 1726) = 27648 * k + 863 := by
    unfold C
    simp [show (55296 * k + 1726) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 863) = 82944 * k + 2590 := by
    unfold C
    simp [show (27648 * k + 863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 2590) = 41472 * k + 1295 := by
    unfold C
    simp [show (82944 * k + 2590) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 1295) = 124416 * k + 3886 := by
    unfold C
    simp [show (41472 * k + 1295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 3886) = 62208 * k + 1943 := by
    unfold C
    simp [show (124416 * k + 3886) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 1943) = 186624 * k + 5830 := by
    unfold C
    simp [show (62208 * k + 1943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 5830) = 93312 * k + 2915 := by
    unfold C
    simp [show (186624 * k + 5830) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 2915) = 279936 * k + 8746 := by
    unfold C
    simp [show (93312 * k + 2915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (279936 * k + 8746) = 139968 * k + 4373 := by
    unfold C
    simp [show (279936 * k + 8746) % 2 = 0 by omega]
    omega
  have h15 : C (139968 * k + 4373) = 419904 * k + 13120 := by
    unfold C
    simp [show (139968 * k + 4373) % 2 ≠ 0 by omega]
    omega
  have h16 : C (419904 * k + 13120) = 209952 * k + 6560 := by
    unfold C
    simp [show (419904 * k + 13120) % 2 = 0 by omega]
    omega
  have h17 : C (209952 * k + 6560) = 104976 * k + 3280 := by
    unfold C
    simp [show (209952 * k + 6560) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 3280) = 52488 * k + 1640 := by
    unfold C
    simp [show (104976 * k + 3280) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 1640) = 26244 * k + 820 := by
    unfold C
    simp [show (52488 * k + 1640) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 820) = 13122 * k + 410 := by
    unfold C
    simp [show (26244 * k + 820) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 410) = 6561 * k + 205 := by
    unfold C
    simp [show (13122 * k + 410) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 255) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 255))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_303 : ∀ k : Nat, iterate (8192 * k + 303) 21 = 6561 * k + 244 ∧ 6561 * k + 244 < 8192 * k + 303 := by
  intro k
  have h1 : C (8192 * k + 303) = 24576 * k + 910 := by
    unfold C
    simp [show (8192 * k + 303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 910) = 12288 * k + 455 := by
    unfold C
    simp [show (24576 * k + 910) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 455) = 36864 * k + 1366 := by
    unfold C
    simp [show (12288 * k + 455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 1366) = 18432 * k + 683 := by
    unfold C
    simp [show (36864 * k + 1366) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 683) = 55296 * k + 2050 := by
    unfold C
    simp [show (18432 * k + 683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 2050) = 27648 * k + 1025 := by
    unfold C
    simp [show (55296 * k + 2050) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 1025) = 82944 * k + 3076 := by
    unfold C
    simp [show (27648 * k + 1025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 3076) = 41472 * k + 1538 := by
    unfold C
    simp [show (82944 * k + 3076) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 1538) = 20736 * k + 769 := by
    unfold C
    simp [show (41472 * k + 1538) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 769) = 62208 * k + 2308 := by
    unfold C
    simp [show (20736 * k + 769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 2308) = 31104 * k + 1154 := by
    unfold C
    simp [show (62208 * k + 2308) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 1154) = 15552 * k + 577 := by
    unfold C
    simp [show (31104 * k + 1154) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 577) = 46656 * k + 1732 := by
    unfold C
    simp [show (15552 * k + 577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 1732) = 23328 * k + 866 := by
    unfold C
    simp [show (46656 * k + 1732) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 866) = 11664 * k + 433 := by
    unfold C
    simp [show (23328 * k + 866) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 433) = 34992 * k + 1300 := by
    unfold C
    simp [show (11664 * k + 433) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 1300) = 17496 * k + 650 := by
    unfold C
    simp [show (34992 * k + 1300) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 650) = 8748 * k + 325 := by
    unfold C
    simp [show (17496 * k + 650) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 325) = 26244 * k + 976 := by
    unfold C
    simp [show (8748 * k + 325) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 976) = 13122 * k + 488 := by
    unfold C
    simp [show (26244 * k + 976) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 488) = 6561 * k + 244 := by
    unfold C
    simp [show (13122 * k + 488) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 303) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 303))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_539 : ∀ k : Nat, iterate (8192 * k + 539) 21 = 6561 * k + 433 ∧ 6561 * k + 433 < 8192 * k + 539 := by
  intro k
  have h1 : C (8192 * k + 539) = 24576 * k + 1618 := by
    unfold C
    simp [show (8192 * k + 539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 1618) = 12288 * k + 809 := by
    unfold C
    simp [show (24576 * k + 1618) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 809) = 36864 * k + 2428 := by
    unfold C
    simp [show (12288 * k + 809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 2428) = 18432 * k + 1214 := by
    unfold C
    simp [show (36864 * k + 2428) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1214) = 9216 * k + 607 := by
    unfold C
    simp [show (18432 * k + 1214) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 607) = 27648 * k + 1822 := by
    unfold C
    simp [show (9216 * k + 607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 1822) = 13824 * k + 911 := by
    unfold C
    simp [show (27648 * k + 1822) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 911) = 41472 * k + 2734 := by
    unfold C
    simp [show (13824 * k + 911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 2734) = 20736 * k + 1367 := by
    unfold C
    simp [show (41472 * k + 2734) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 1367) = 62208 * k + 4102 := by
    unfold C
    simp [show (20736 * k + 1367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 4102) = 31104 * k + 2051 := by
    unfold C
    simp [show (62208 * k + 4102) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 2051) = 93312 * k + 6154 := by
    unfold C
    simp [show (31104 * k + 2051) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 6154) = 46656 * k + 3077 := by
    unfold C
    simp [show (93312 * k + 6154) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 3077) = 139968 * k + 9232 := by
    unfold C
    simp [show (46656 * k + 3077) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 9232) = 69984 * k + 4616 := by
    unfold C
    simp [show (139968 * k + 9232) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 4616) = 34992 * k + 2308 := by
    unfold C
    simp [show (69984 * k + 4616) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 2308) = 17496 * k + 1154 := by
    unfold C
    simp [show (34992 * k + 2308) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 1154) = 8748 * k + 577 := by
    unfold C
    simp [show (17496 * k + 1154) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 577) = 26244 * k + 1732 := by
    unfold C
    simp [show (8748 * k + 577) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 1732) = 13122 * k + 866 := by
    unfold C
    simp [show (26244 * k + 1732) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 866) = 6561 * k + 433 := by
    unfold C
    simp [show (13122 * k + 866) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 539) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 539))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_543 : ∀ k : Nat, iterate (8192 * k + 543) 21 = 6561 * k + 436 ∧ 6561 * k + 436 < 8192 * k + 543 := by
  intro k
  have h1 : C (8192 * k + 543) = 24576 * k + 1630 := by
    unfold C
    simp [show (8192 * k + 543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 1630) = 12288 * k + 815 := by
    unfold C
    simp [show (24576 * k + 1630) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 815) = 36864 * k + 2446 := by
    unfold C
    simp [show (12288 * k + 815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 2446) = 18432 * k + 1223 := by
    unfold C
    simp [show (36864 * k + 2446) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1223) = 55296 * k + 3670 := by
    unfold C
    simp [show (18432 * k + 1223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 3670) = 27648 * k + 1835 := by
    unfold C
    simp [show (55296 * k + 3670) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 1835) = 82944 * k + 5506 := by
    unfold C
    simp [show (27648 * k + 1835) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 5506) = 41472 * k + 2753 := by
    unfold C
    simp [show (82944 * k + 5506) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 2753) = 124416 * k + 8260 := by
    unfold C
    simp [show (41472 * k + 2753) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 8260) = 62208 * k + 4130 := by
    unfold C
    simp [show (124416 * k + 8260) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 4130) = 31104 * k + 2065 := by
    unfold C
    simp [show (62208 * k + 4130) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 2065) = 93312 * k + 6196 := by
    unfold C
    simp [show (31104 * k + 2065) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 6196) = 46656 * k + 3098 := by
    unfold C
    simp [show (93312 * k + 6196) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 3098) = 23328 * k + 1549 := by
    unfold C
    simp [show (46656 * k + 3098) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 1549) = 69984 * k + 4648 := by
    unfold C
    simp [show (23328 * k + 1549) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 4648) = 34992 * k + 2324 := by
    unfold C
    simp [show (69984 * k + 4648) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 2324) = 17496 * k + 1162 := by
    unfold C
    simp [show (34992 * k + 2324) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 1162) = 8748 * k + 581 := by
    unfold C
    simp [show (17496 * k + 1162) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 581) = 26244 * k + 1744 := by
    unfold C
    simp [show (8748 * k + 581) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 1744) = 13122 * k + 872 := by
    unfold C
    simp [show (26244 * k + 1744) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 872) = 6561 * k + 436 := by
    unfold C
    simp [show (13122 * k + 872) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 543) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 543))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_623 : ∀ k : Nat, iterate (8192 * k + 623) 21 = 6561 * k + 500 ∧ 6561 * k + 500 < 8192 * k + 623 := by
  intro k
  have h1 : C (8192 * k + 623) = 24576 * k + 1870 := by
    unfold C
    simp [show (8192 * k + 623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 1870) = 12288 * k + 935 := by
    unfold C
    simp [show (24576 * k + 1870) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 935) = 36864 * k + 2806 := by
    unfold C
    simp [show (12288 * k + 935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 2806) = 18432 * k + 1403 := by
    unfold C
    simp [show (36864 * k + 2806) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1403) = 55296 * k + 4210 := by
    unfold C
    simp [show (18432 * k + 1403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 4210) = 27648 * k + 2105 := by
    unfold C
    simp [show (55296 * k + 4210) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 2105) = 82944 * k + 6316 := by
    unfold C
    simp [show (27648 * k + 2105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 6316) = 41472 * k + 3158 := by
    unfold C
    simp [show (82944 * k + 6316) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 3158) = 20736 * k + 1579 := by
    unfold C
    simp [show (41472 * k + 3158) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 1579) = 62208 * k + 4738 := by
    unfold C
    simp [show (20736 * k + 1579) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 4738) = 31104 * k + 2369 := by
    unfold C
    simp [show (62208 * k + 4738) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 2369) = 93312 * k + 7108 := by
    unfold C
    simp [show (31104 * k + 2369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 7108) = 46656 * k + 3554 := by
    unfold C
    simp [show (93312 * k + 7108) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 3554) = 23328 * k + 1777 := by
    unfold C
    simp [show (46656 * k + 3554) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 1777) = 69984 * k + 5332 := by
    unfold C
    simp [show (23328 * k + 1777) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 5332) = 34992 * k + 2666 := by
    unfold C
    simp [show (69984 * k + 5332) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 2666) = 17496 * k + 1333 := by
    unfold C
    simp [show (34992 * k + 2666) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 1333) = 52488 * k + 4000 := by
    unfold C
    simp [show (17496 * k + 1333) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 4000) = 26244 * k + 2000 := by
    unfold C
    simp [show (52488 * k + 4000) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 2000) = 13122 * k + 1000 := by
    unfold C
    simp [show (26244 * k + 2000) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1000) = 6561 * k + 500 := by
    unfold C
    simp [show (13122 * k + 1000) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 623) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 623))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_679 : ∀ k : Nat, iterate (8192 * k + 679) 21 = 6561 * k + 545 ∧ 6561 * k + 545 < 8192 * k + 679 := by
  intro k
  have h1 : C (8192 * k + 679) = 24576 * k + 2038 := by
    unfold C
    simp [show (8192 * k + 679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 2038) = 12288 * k + 1019 := by
    unfold C
    simp [show (24576 * k + 2038) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1019) = 36864 * k + 3058 := by
    unfold C
    simp [show (12288 * k + 1019) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 3058) = 18432 * k + 1529 := by
    unfold C
    simp [show (36864 * k + 3058) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1529) = 55296 * k + 4588 := by
    unfold C
    simp [show (18432 * k + 1529) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 4588) = 27648 * k + 2294 := by
    unfold C
    simp [show (55296 * k + 4588) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 2294) = 13824 * k + 1147 := by
    unfold C
    simp [show (27648 * k + 2294) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 1147) = 41472 * k + 3442 := by
    unfold C
    simp [show (13824 * k + 1147) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 3442) = 20736 * k + 1721 := by
    unfold C
    simp [show (41472 * k + 3442) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 1721) = 62208 * k + 5164 := by
    unfold C
    simp [show (20736 * k + 1721) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 5164) = 31104 * k + 2582 := by
    unfold C
    simp [show (62208 * k + 5164) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 2582) = 15552 * k + 1291 := by
    unfold C
    simp [show (31104 * k + 2582) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 1291) = 46656 * k + 3874 := by
    unfold C
    simp [show (15552 * k + 1291) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 3874) = 23328 * k + 1937 := by
    unfold C
    simp [show (46656 * k + 3874) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 1937) = 69984 * k + 5812 := by
    unfold C
    simp [show (23328 * k + 1937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 5812) = 34992 * k + 2906 := by
    unfold C
    simp [show (69984 * k + 5812) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 2906) = 17496 * k + 1453 := by
    unfold C
    simp [show (34992 * k + 2906) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 1453) = 52488 * k + 4360 := by
    unfold C
    simp [show (17496 * k + 1453) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 4360) = 26244 * k + 2180 := by
    unfold C
    simp [show (52488 * k + 4360) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 2180) = 13122 * k + 1090 := by
    unfold C
    simp [show (26244 * k + 2180) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1090) = 6561 * k + 545 := by
    unfold C
    simp [show (13122 * k + 1090) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 679) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 679))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_719 : ∀ k : Nat, iterate (8192 * k + 719) 21 = 6561 * k + 577 ∧ 6561 * k + 577 < 8192 * k + 719 := by
  intro k
  have h1 : C (8192 * k + 719) = 24576 * k + 2158 := by
    unfold C
    simp [show (8192 * k + 719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 2158) = 12288 * k + 1079 := by
    unfold C
    simp [show (24576 * k + 2158) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1079) = 36864 * k + 3238 := by
    unfold C
    simp [show (12288 * k + 1079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 3238) = 18432 * k + 1619 := by
    unfold C
    simp [show (36864 * k + 3238) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1619) = 55296 * k + 4858 := by
    unfold C
    simp [show (18432 * k + 1619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 4858) = 27648 * k + 2429 := by
    unfold C
    simp [show (55296 * k + 4858) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 2429) = 82944 * k + 7288 := by
    unfold C
    simp [show (27648 * k + 2429) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 7288) = 41472 * k + 3644 := by
    unfold C
    simp [show (82944 * k + 7288) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 3644) = 20736 * k + 1822 := by
    unfold C
    simp [show (41472 * k + 3644) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 1822) = 10368 * k + 911 := by
    unfold C
    simp [show (20736 * k + 1822) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 911) = 31104 * k + 2734 := by
    unfold C
    simp [show (10368 * k + 911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 2734) = 15552 * k + 1367 := by
    unfold C
    simp [show (31104 * k + 2734) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 1367) = 46656 * k + 4102 := by
    unfold C
    simp [show (15552 * k + 1367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 4102) = 23328 * k + 2051 := by
    unfold C
    simp [show (46656 * k + 4102) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 2051) = 69984 * k + 6154 := by
    unfold C
    simp [show (23328 * k + 2051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 6154) = 34992 * k + 3077 := by
    unfold C
    simp [show (69984 * k + 6154) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 3077) = 104976 * k + 9232 := by
    unfold C
    simp [show (34992 * k + 3077) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 9232) = 52488 * k + 4616 := by
    unfold C
    simp [show (104976 * k + 9232) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 4616) = 26244 * k + 2308 := by
    unfold C
    simp [show (52488 * k + 4616) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 2308) = 13122 * k + 1154 := by
    unfold C
    simp [show (26244 * k + 2308) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1154) = 6561 * k + 577 := by
    unfold C
    simp [show (13122 * k + 1154) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 719) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 719))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_799 : ∀ k : Nat, iterate (8192 * k + 799) 21 = 6561 * k + 641 ∧ 6561 * k + 641 < 8192 * k + 799 := by
  intro k
  have h1 : C (8192 * k + 799) = 24576 * k + 2398 := by
    unfold C
    simp [show (8192 * k + 799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 2398) = 12288 * k + 1199 := by
    unfold C
    simp [show (24576 * k + 2398) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1199) = 36864 * k + 3598 := by
    unfold C
    simp [show (12288 * k + 1199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 3598) = 18432 * k + 1799 := by
    unfold C
    simp [show (36864 * k + 3598) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 1799) = 55296 * k + 5398 := by
    unfold C
    simp [show (18432 * k + 1799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 5398) = 27648 * k + 2699 := by
    unfold C
    simp [show (55296 * k + 5398) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 2699) = 82944 * k + 8098 := by
    unfold C
    simp [show (27648 * k + 2699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 8098) = 41472 * k + 4049 := by
    unfold C
    simp [show (82944 * k + 8098) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 4049) = 124416 * k + 12148 := by
    unfold C
    simp [show (41472 * k + 4049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 12148) = 62208 * k + 6074 := by
    unfold C
    simp [show (124416 * k + 12148) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 6074) = 31104 * k + 3037 := by
    unfold C
    simp [show (62208 * k + 6074) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 3037) = 93312 * k + 9112 := by
    unfold C
    simp [show (31104 * k + 3037) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 9112) = 46656 * k + 4556 := by
    unfold C
    simp [show (93312 * k + 9112) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 4556) = 23328 * k + 2278 := by
    unfold C
    simp [show (46656 * k + 4556) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 2278) = 11664 * k + 1139 := by
    unfold C
    simp [show (23328 * k + 2278) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 1139) = 34992 * k + 3418 := by
    unfold C
    simp [show (11664 * k + 1139) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 3418) = 17496 * k + 1709 := by
    unfold C
    simp [show (34992 * k + 3418) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 1709) = 52488 * k + 5128 := by
    unfold C
    simp [show (17496 * k + 1709) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 5128) = 26244 * k + 2564 := by
    unfold C
    simp [show (52488 * k + 5128) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 2564) = 13122 * k + 1282 := by
    unfold C
    simp [show (26244 * k + 2564) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1282) = 6561 * k + 641 := by
    unfold C
    simp [show (13122 * k + 1282) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 799) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 799))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1071 : ∀ k : Nat, iterate (8192 * k + 1071) 21 = 6561 * k + 859 ∧ 6561 * k + 859 < 8192 * k + 1071 := by
  intro k
  have h1 : C (8192 * k + 1071) = 24576 * k + 3214 := by
    unfold C
    simp [show (8192 * k + 1071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3214) = 12288 * k + 1607 := by
    unfold C
    simp [show (24576 * k + 3214) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1607) = 36864 * k + 4822 := by
    unfold C
    simp [show (12288 * k + 1607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 4822) = 18432 * k + 2411 := by
    unfold C
    simp [show (36864 * k + 4822) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2411) = 55296 * k + 7234 := by
    unfold C
    simp [show (18432 * k + 2411) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 7234) = 27648 * k + 3617 := by
    unfold C
    simp [show (55296 * k + 7234) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 3617) = 82944 * k + 10852 := by
    unfold C
    simp [show (27648 * k + 3617) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 10852) = 41472 * k + 5426 := by
    unfold C
    simp [show (82944 * k + 10852) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 5426) = 20736 * k + 2713 := by
    unfold C
    simp [show (41472 * k + 5426) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 2713) = 62208 * k + 8140 := by
    unfold C
    simp [show (20736 * k + 2713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 8140) = 31104 * k + 4070 := by
    unfold C
    simp [show (62208 * k + 8140) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 4070) = 15552 * k + 2035 := by
    unfold C
    simp [show (31104 * k + 4070) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 2035) = 46656 * k + 6106 := by
    unfold C
    simp [show (15552 * k + 2035) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 6106) = 23328 * k + 3053 := by
    unfold C
    simp [show (46656 * k + 6106) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 3053) = 69984 * k + 9160 := by
    unfold C
    simp [show (23328 * k + 3053) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 9160) = 34992 * k + 4580 := by
    unfold C
    simp [show (69984 * k + 9160) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 4580) = 17496 * k + 2290 := by
    unfold C
    simp [show (34992 * k + 4580) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 2290) = 8748 * k + 1145 := by
    unfold C
    simp [show (17496 * k + 2290) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 1145) = 26244 * k + 3436 := by
    unfold C
    simp [show (8748 * k + 1145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 3436) = 13122 * k + 1718 := by
    unfold C
    simp [show (26244 * k + 3436) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1718) = 6561 * k + 859 := by
    unfold C
    simp [show (13122 * k + 1718) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1071) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1071))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1135 : ∀ k : Nat, iterate (8192 * k + 1135) 21 = 6561 * k + 910 ∧ 6561 * k + 910 < 8192 * k + 1135 := by
  intro k
  have h1 : C (8192 * k + 1135) = 24576 * k + 3406 := by
    unfold C
    simp [show (8192 * k + 1135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3406) = 12288 * k + 1703 := by
    unfold C
    simp [show (24576 * k + 3406) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1703) = 36864 * k + 5110 := by
    unfold C
    simp [show (12288 * k + 1703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 5110) = 18432 * k + 2555 := by
    unfold C
    simp [show (36864 * k + 5110) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2555) = 55296 * k + 7666 := by
    unfold C
    simp [show (18432 * k + 2555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 7666) = 27648 * k + 3833 := by
    unfold C
    simp [show (55296 * k + 7666) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 3833) = 82944 * k + 11500 := by
    unfold C
    simp [show (27648 * k + 3833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 11500) = 41472 * k + 5750 := by
    unfold C
    simp [show (82944 * k + 11500) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 5750) = 20736 * k + 2875 := by
    unfold C
    simp [show (41472 * k + 5750) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 2875) = 62208 * k + 8626 := by
    unfold C
    simp [show (20736 * k + 2875) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 8626) = 31104 * k + 4313 := by
    unfold C
    simp [show (62208 * k + 8626) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 4313) = 93312 * k + 12940 := by
    unfold C
    simp [show (31104 * k + 4313) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 12940) = 46656 * k + 6470 := by
    unfold C
    simp [show (93312 * k + 12940) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 6470) = 23328 * k + 3235 := by
    unfold C
    simp [show (46656 * k + 6470) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 3235) = 69984 * k + 9706 := by
    unfold C
    simp [show (23328 * k + 3235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 9706) = 34992 * k + 4853 := by
    unfold C
    simp [show (69984 * k + 9706) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 4853) = 104976 * k + 14560 := by
    unfold C
    simp [show (34992 * k + 4853) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 14560) = 52488 * k + 7280 := by
    unfold C
    simp [show (104976 * k + 14560) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 7280) = 26244 * k + 3640 := by
    unfold C
    simp [show (52488 * k + 7280) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 3640) = 13122 * k + 1820 := by
    unfold C
    simp [show (26244 * k + 3640) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1820) = 6561 * k + 910 := by
    unfold C
    simp [show (13122 * k + 1820) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1135) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1135))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1191 : ∀ k : Nat, iterate (8192 * k + 1191) 21 = 6561 * k + 955 ∧ 6561 * k + 955 < 8192 * k + 1191 := by
  intro k
  have h1 : C (8192 * k + 1191) = 24576 * k + 3574 := by
    unfold C
    simp [show (8192 * k + 1191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3574) = 12288 * k + 1787 := by
    unfold C
    simp [show (24576 * k + 3574) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1787) = 36864 * k + 5362 := by
    unfold C
    simp [show (12288 * k + 1787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 5362) = 18432 * k + 2681 := by
    unfold C
    simp [show (36864 * k + 5362) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2681) = 55296 * k + 8044 := by
    unfold C
    simp [show (18432 * k + 2681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 8044) = 27648 * k + 4022 := by
    unfold C
    simp [show (55296 * k + 8044) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 4022) = 13824 * k + 2011 := by
    unfold C
    simp [show (27648 * k + 4022) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 2011) = 41472 * k + 6034 := by
    unfold C
    simp [show (13824 * k + 2011) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 6034) = 20736 * k + 3017 := by
    unfold C
    simp [show (41472 * k + 6034) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 3017) = 62208 * k + 9052 := by
    unfold C
    simp [show (20736 * k + 3017) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 9052) = 31104 * k + 4526 := by
    unfold C
    simp [show (62208 * k + 9052) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 4526) = 15552 * k + 2263 := by
    unfold C
    simp [show (31104 * k + 4526) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 2263) = 46656 * k + 6790 := by
    unfold C
    simp [show (15552 * k + 2263) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 6790) = 23328 * k + 3395 := by
    unfold C
    simp [show (46656 * k + 6790) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 3395) = 69984 * k + 10186 := by
    unfold C
    simp [show (23328 * k + 3395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 10186) = 34992 * k + 5093 := by
    unfold C
    simp [show (69984 * k + 10186) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 5093) = 104976 * k + 15280 := by
    unfold C
    simp [show (34992 * k + 5093) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 15280) = 52488 * k + 7640 := by
    unfold C
    simp [show (104976 * k + 15280) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 7640) = 26244 * k + 3820 := by
    unfold C
    simp [show (52488 * k + 7640) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 3820) = 13122 * k + 1910 := by
    unfold C
    simp [show (26244 * k + 3820) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1910) = 6561 * k + 955 := by
    unfold C
    simp [show (13122 * k + 1910) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1191) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1191))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1215 : ∀ k : Nat, iterate (8192 * k + 1215) 21 = 6561 * k + 974 ∧ 6561 * k + 974 < 8192 * k + 1215 := by
  intro k
  have h1 : C (8192 * k + 1215) = 24576 * k + 3646 := by
    unfold C
    simp [show (8192 * k + 1215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3646) = 12288 * k + 1823 := by
    unfold C
    simp [show (24576 * k + 3646) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1823) = 36864 * k + 5470 := by
    unfold C
    simp [show (12288 * k + 1823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 5470) = 18432 * k + 2735 := by
    unfold C
    simp [show (36864 * k + 5470) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2735) = 55296 * k + 8206 := by
    unfold C
    simp [show (18432 * k + 2735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 8206) = 27648 * k + 4103 := by
    unfold C
    simp [show (55296 * k + 8206) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 4103) = 82944 * k + 12310 := by
    unfold C
    simp [show (27648 * k + 4103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 12310) = 41472 * k + 6155 := by
    unfold C
    simp [show (82944 * k + 12310) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 6155) = 124416 * k + 18466 := by
    unfold C
    simp [show (41472 * k + 6155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 18466) = 62208 * k + 9233 := by
    unfold C
    simp [show (124416 * k + 18466) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 9233) = 186624 * k + 27700 := by
    unfold C
    simp [show (62208 * k + 9233) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 27700) = 93312 * k + 13850 := by
    unfold C
    simp [show (186624 * k + 27700) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 13850) = 46656 * k + 6925 := by
    unfold C
    simp [show (93312 * k + 13850) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 6925) = 139968 * k + 20776 := by
    unfold C
    simp [show (46656 * k + 6925) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 20776) = 69984 * k + 10388 := by
    unfold C
    simp [show (139968 * k + 20776) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 10388) = 34992 * k + 5194 := by
    unfold C
    simp [show (69984 * k + 10388) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 5194) = 17496 * k + 2597 := by
    unfold C
    simp [show (34992 * k + 5194) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 2597) = 52488 * k + 7792 := by
    unfold C
    simp [show (17496 * k + 2597) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 7792) = 26244 * k + 3896 := by
    unfold C
    simp [show (52488 * k + 7792) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 3896) = 13122 * k + 1948 := by
    unfold C
    simp [show (26244 * k + 3896) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 1948) = 6561 * k + 974 := by
    unfold C
    simp [show (13122 * k + 1948) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1215) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1215))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1247 : ∀ k : Nat, iterate (8192 * k + 1247) 21 = 6561 * k + 1000 ∧ 6561 * k + 1000 < 8192 * k + 1247 := by
  intro k
  have h1 : C (8192 * k + 1247) = 24576 * k + 3742 := by
    unfold C
    simp [show (8192 * k + 1247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3742) = 12288 * k + 1871 := by
    unfold C
    simp [show (24576 * k + 3742) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1871) = 36864 * k + 5614 := by
    unfold C
    simp [show (12288 * k + 1871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 5614) = 18432 * k + 2807 := by
    unfold C
    simp [show (36864 * k + 5614) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2807) = 55296 * k + 8422 := by
    unfold C
    simp [show (18432 * k + 2807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 8422) = 27648 * k + 4211 := by
    unfold C
    simp [show (55296 * k + 8422) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 4211) = 82944 * k + 12634 := by
    unfold C
    simp [show (27648 * k + 4211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 12634) = 41472 * k + 6317 := by
    unfold C
    simp [show (82944 * k + 12634) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 6317) = 124416 * k + 18952 := by
    unfold C
    simp [show (41472 * k + 6317) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 18952) = 62208 * k + 9476 := by
    unfold C
    simp [show (124416 * k + 18952) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 9476) = 31104 * k + 4738 := by
    unfold C
    simp [show (62208 * k + 9476) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 4738) = 15552 * k + 2369 := by
    unfold C
    simp [show (31104 * k + 4738) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 2369) = 46656 * k + 7108 := by
    unfold C
    simp [show (15552 * k + 2369) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 7108) = 23328 * k + 3554 := by
    unfold C
    simp [show (46656 * k + 7108) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 3554) = 11664 * k + 1777 := by
    unfold C
    simp [show (23328 * k + 3554) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 1777) = 34992 * k + 5332 := by
    unfold C
    simp [show (11664 * k + 1777) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 5332) = 17496 * k + 2666 := by
    unfold C
    simp [show (34992 * k + 5332) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 2666) = 8748 * k + 1333 := by
    unfold C
    simp [show (17496 * k + 2666) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 1333) = 26244 * k + 4000 := by
    unfold C
    simp [show (8748 * k + 1333) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 4000) = 13122 * k + 2000 := by
    unfold C
    simp [show (26244 * k + 4000) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 2000) = 6561 * k + 1000 := by
    unfold C
    simp [show (13122 * k + 2000) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1247) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1247))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1327 : ∀ k : Nat, iterate (8192 * k + 1327) 21 = 6561 * k + 1064 ∧ 6561 * k + 1064 < 8192 * k + 1327 := by
  intro k
  have h1 : C (8192 * k + 1327) = 24576 * k + 3982 := by
    unfold C
    simp [show (8192 * k + 1327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 3982) = 12288 * k + 1991 := by
    unfold C
    simp [show (24576 * k + 3982) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 1991) = 36864 * k + 5974 := by
    unfold C
    simp [show (12288 * k + 1991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 5974) = 18432 * k + 2987 := by
    unfold C
    simp [show (36864 * k + 5974) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 2987) = 55296 * k + 8962 := by
    unfold C
    simp [show (18432 * k + 2987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 8962) = 27648 * k + 4481 := by
    unfold C
    simp [show (55296 * k + 8962) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 4481) = 82944 * k + 13444 := by
    unfold C
    simp [show (27648 * k + 4481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 13444) = 41472 * k + 6722 := by
    unfold C
    simp [show (82944 * k + 13444) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 6722) = 20736 * k + 3361 := by
    unfold C
    simp [show (41472 * k + 6722) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 3361) = 62208 * k + 10084 := by
    unfold C
    simp [show (20736 * k + 3361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 10084) = 31104 * k + 5042 := by
    unfold C
    simp [show (62208 * k + 10084) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 5042) = 15552 * k + 2521 := by
    unfold C
    simp [show (31104 * k + 5042) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 2521) = 46656 * k + 7564 := by
    unfold C
    simp [show (15552 * k + 2521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 7564) = 23328 * k + 3782 := by
    unfold C
    simp [show (46656 * k + 7564) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 3782) = 11664 * k + 1891 := by
    unfold C
    simp [show (23328 * k + 3782) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 1891) = 34992 * k + 5674 := by
    unfold C
    simp [show (11664 * k + 1891) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 5674) = 17496 * k + 2837 := by
    unfold C
    simp [show (34992 * k + 5674) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 2837) = 52488 * k + 8512 := by
    unfold C
    simp [show (17496 * k + 2837) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 8512) = 26244 * k + 4256 := by
    unfold C
    simp [show (52488 * k + 8512) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 4256) = 13122 * k + 2128 := by
    unfold C
    simp [show (26244 * k + 4256) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 2128) = 6561 * k + 1064 := by
    unfold C
    simp [show (13122 * k + 2128) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1327) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1327))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1563 : ∀ k : Nat, iterate (8192 * k + 1563) 21 = 6561 * k + 1253 ∧ 6561 * k + 1253 < 8192 * k + 1563 := by
  intro k
  have h1 : C (8192 * k + 1563) = 24576 * k + 4690 := by
    unfold C
    simp [show (8192 * k + 1563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 4690) = 12288 * k + 2345 := by
    unfold C
    simp [show (24576 * k + 4690) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 2345) = 36864 * k + 7036 := by
    unfold C
    simp [show (12288 * k + 2345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 7036) = 18432 * k + 3518 := by
    unfold C
    simp [show (36864 * k + 7036) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 3518) = 9216 * k + 1759 := by
    unfold C
    simp [show (18432 * k + 3518) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 1759) = 27648 * k + 5278 := by
    unfold C
    simp [show (9216 * k + 1759) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 5278) = 13824 * k + 2639 := by
    unfold C
    simp [show (27648 * k + 5278) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 2639) = 41472 * k + 7918 := by
    unfold C
    simp [show (13824 * k + 2639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 7918) = 20736 * k + 3959 := by
    unfold C
    simp [show (41472 * k + 7918) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 3959) = 62208 * k + 11878 := by
    unfold C
    simp [show (20736 * k + 3959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 11878) = 31104 * k + 5939 := by
    unfold C
    simp [show (62208 * k + 11878) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 5939) = 93312 * k + 17818 := by
    unfold C
    simp [show (31104 * k + 5939) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 17818) = 46656 * k + 8909 := by
    unfold C
    simp [show (93312 * k + 17818) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 8909) = 139968 * k + 26728 := by
    unfold C
    simp [show (46656 * k + 8909) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 26728) = 69984 * k + 13364 := by
    unfold C
    simp [show (139968 * k + 26728) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 13364) = 34992 * k + 6682 := by
    unfold C
    simp [show (69984 * k + 13364) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 6682) = 17496 * k + 3341 := by
    unfold C
    simp [show (34992 * k + 6682) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 3341) = 52488 * k + 10024 := by
    unfold C
    simp [show (17496 * k + 3341) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 10024) = 26244 * k + 5012 := by
    unfold C
    simp [show (52488 * k + 10024) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 5012) = 13122 * k + 2506 := by
    unfold C
    simp [show (26244 * k + 5012) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 2506) = 6561 * k + 1253 := by
    unfold C
    simp [show (13122 * k + 2506) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1563) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1563))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1567 : ∀ k : Nat, iterate (8192 * k + 1567) 21 = 6561 * k + 1256 ∧ 6561 * k + 1256 < 8192 * k + 1567 := by
  intro k
  have h1 : C (8192 * k + 1567) = 24576 * k + 4702 := by
    unfold C
    simp [show (8192 * k + 1567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 4702) = 12288 * k + 2351 := by
    unfold C
    simp [show (24576 * k + 4702) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 2351) = 36864 * k + 7054 := by
    unfold C
    simp [show (12288 * k + 2351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 7054) = 18432 * k + 3527 := by
    unfold C
    simp [show (36864 * k + 7054) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 3527) = 55296 * k + 10582 := by
    unfold C
    simp [show (18432 * k + 3527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 10582) = 27648 * k + 5291 := by
    unfold C
    simp [show (55296 * k + 10582) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 5291) = 82944 * k + 15874 := by
    unfold C
    simp [show (27648 * k + 5291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 15874) = 41472 * k + 7937 := by
    unfold C
    simp [show (82944 * k + 15874) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 7937) = 124416 * k + 23812 := by
    unfold C
    simp [show (41472 * k + 7937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 23812) = 62208 * k + 11906 := by
    unfold C
    simp [show (124416 * k + 23812) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 11906) = 31104 * k + 5953 := by
    unfold C
    simp [show (62208 * k + 11906) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 5953) = 93312 * k + 17860 := by
    unfold C
    simp [show (31104 * k + 5953) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 17860) = 46656 * k + 8930 := by
    unfold C
    simp [show (93312 * k + 17860) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 8930) = 23328 * k + 4465 := by
    unfold C
    simp [show (46656 * k + 8930) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 4465) = 69984 * k + 13396 := by
    unfold C
    simp [show (23328 * k + 4465) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 13396) = 34992 * k + 6698 := by
    unfold C
    simp [show (69984 * k + 13396) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 6698) = 17496 * k + 3349 := by
    unfold C
    simp [show (34992 * k + 6698) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 3349) = 52488 * k + 10048 := by
    unfold C
    simp [show (17496 * k + 3349) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 10048) = 26244 * k + 5024 := by
    unfold C
    simp [show (52488 * k + 10048) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 5024) = 13122 * k + 2512 := by
    unfold C
    simp [show (26244 * k + 5024) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 2512) = 6561 * k + 1256 := by
    unfold C
    simp [show (13122 * k + 2512) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1567) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1567))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1727 : ∀ k : Nat, iterate (8192 * k + 1727) 21 = 6561 * k + 1384 ∧ 6561 * k + 1384 < 8192 * k + 1727 := by
  intro k
  have h1 : C (8192 * k + 1727) = 24576 * k + 5182 := by
    unfold C
    simp [show (8192 * k + 1727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 5182) = 12288 * k + 2591 := by
    unfold C
    simp [show (24576 * k + 5182) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 2591) = 36864 * k + 7774 := by
    unfold C
    simp [show (12288 * k + 2591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 7774) = 18432 * k + 3887 := by
    unfold C
    simp [show (36864 * k + 7774) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 3887) = 55296 * k + 11662 := by
    unfold C
    simp [show (18432 * k + 3887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 11662) = 27648 * k + 5831 := by
    unfold C
    simp [show (55296 * k + 11662) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 5831) = 82944 * k + 17494 := by
    unfold C
    simp [show (27648 * k + 5831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 17494) = 41472 * k + 8747 := by
    unfold C
    simp [show (82944 * k + 17494) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 8747) = 124416 * k + 26242 := by
    unfold C
    simp [show (41472 * k + 8747) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 26242) = 62208 * k + 13121 := by
    unfold C
    simp [show (124416 * k + 26242) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 13121) = 186624 * k + 39364 := by
    unfold C
    simp [show (62208 * k + 13121) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 39364) = 93312 * k + 19682 := by
    unfold C
    simp [show (186624 * k + 39364) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 19682) = 46656 * k + 9841 := by
    unfold C
    simp [show (93312 * k + 19682) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 9841) = 139968 * k + 29524 := by
    unfold C
    simp [show (46656 * k + 9841) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 29524) = 69984 * k + 14762 := by
    unfold C
    simp [show (139968 * k + 29524) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 14762) = 34992 * k + 7381 := by
    unfold C
    simp [show (69984 * k + 14762) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 7381) = 104976 * k + 22144 := by
    unfold C
    simp [show (34992 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 22144) = 52488 * k + 11072 := by
    unfold C
    simp [show (104976 * k + 22144) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 11072) = 26244 * k + 5536 := by
    unfold C
    simp [show (52488 * k + 11072) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 5536) = 13122 * k + 2768 := by
    unfold C
    simp [show (26244 * k + 5536) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 2768) = 6561 * k + 1384 := by
    unfold C
    simp [show (13122 * k + 2768) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1727) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1727))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_1983 : ∀ k : Nat, iterate (8192 * k + 1983) 21 = 6561 * k + 1589 ∧ 6561 * k + 1589 < 8192 * k + 1983 := by
  intro k
  have h1 : C (8192 * k + 1983) = 24576 * k + 5950 := by
    unfold C
    simp [show (8192 * k + 1983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 5950) = 12288 * k + 2975 := by
    unfold C
    simp [show (24576 * k + 5950) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 2975) = 36864 * k + 8926 := by
    unfold C
    simp [show (12288 * k + 2975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 8926) = 18432 * k + 4463 := by
    unfold C
    simp [show (36864 * k + 8926) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 4463) = 55296 * k + 13390 := by
    unfold C
    simp [show (18432 * k + 4463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 13390) = 27648 * k + 6695 := by
    unfold C
    simp [show (55296 * k + 13390) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 6695) = 82944 * k + 20086 := by
    unfold C
    simp [show (27648 * k + 6695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 20086) = 41472 * k + 10043 := by
    unfold C
    simp [show (82944 * k + 20086) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 10043) = 124416 * k + 30130 := by
    unfold C
    simp [show (41472 * k + 10043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 30130) = 62208 * k + 15065 := by
    unfold C
    simp [show (124416 * k + 30130) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 15065) = 186624 * k + 45196 := by
    unfold C
    simp [show (62208 * k + 15065) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 45196) = 93312 * k + 22598 := by
    unfold C
    simp [show (186624 * k + 45196) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 22598) = 46656 * k + 11299 := by
    unfold C
    simp [show (93312 * k + 22598) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 11299) = 139968 * k + 33898 := by
    unfold C
    simp [show (46656 * k + 11299) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 33898) = 69984 * k + 16949 := by
    unfold C
    simp [show (139968 * k + 33898) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 16949) = 209952 * k + 50848 := by
    unfold C
    simp [show (69984 * k + 16949) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 50848) = 104976 * k + 25424 := by
    unfold C
    simp [show (209952 * k + 50848) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 25424) = 52488 * k + 12712 := by
    unfold C
    simp [show (104976 * k + 25424) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 12712) = 26244 * k + 6356 := by
    unfold C
    simp [show (52488 * k + 12712) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 6356) = 13122 * k + 3178 := by
    unfold C
    simp [show (26244 * k + 6356) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3178) = 6561 * k + 1589 := by
    unfold C
    simp [show (13122 * k + 3178) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 1983) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 1983))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2015 : ∀ k : Nat, iterate (8192 * k + 2015) 21 = 6561 * k + 1615 ∧ 6561 * k + 1615 < 8192 * k + 2015 := by
  intro k
  have h1 : C (8192 * k + 2015) = 24576 * k + 6046 := by
    unfold C
    simp [show (8192 * k + 2015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6046) = 12288 * k + 3023 := by
    unfold C
    simp [show (24576 * k + 6046) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3023) = 36864 * k + 9070 := by
    unfold C
    simp [show (12288 * k + 3023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 9070) = 18432 * k + 4535 := by
    unfold C
    simp [show (36864 * k + 9070) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 4535) = 55296 * k + 13606 := by
    unfold C
    simp [show (18432 * k + 4535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 13606) = 27648 * k + 6803 := by
    unfold C
    simp [show (55296 * k + 13606) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 6803) = 82944 * k + 20410 := by
    unfold C
    simp [show (27648 * k + 6803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 20410) = 41472 * k + 10205 := by
    unfold C
    simp [show (82944 * k + 20410) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 10205) = 124416 * k + 30616 := by
    unfold C
    simp [show (41472 * k + 10205) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 30616) = 62208 * k + 15308 := by
    unfold C
    simp [show (124416 * k + 30616) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 15308) = 31104 * k + 7654 := by
    unfold C
    simp [show (62208 * k + 15308) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 7654) = 15552 * k + 3827 := by
    unfold C
    simp [show (31104 * k + 7654) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 3827) = 46656 * k + 11482 := by
    unfold C
    simp [show (15552 * k + 3827) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 11482) = 23328 * k + 5741 := by
    unfold C
    simp [show (46656 * k + 11482) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 5741) = 69984 * k + 17224 := by
    unfold C
    simp [show (23328 * k + 5741) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 17224) = 34992 * k + 8612 := by
    unfold C
    simp [show (69984 * k + 17224) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 8612) = 17496 * k + 4306 := by
    unfold C
    simp [show (34992 * k + 8612) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 4306) = 8748 * k + 2153 := by
    unfold C
    simp [show (17496 * k + 4306) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 2153) = 26244 * k + 6460 := by
    unfold C
    simp [show (8748 * k + 2153) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 6460) = 13122 * k + 3230 := by
    unfold C
    simp [show (26244 * k + 6460) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3230) = 6561 * k + 1615 := by
    unfold C
    simp [show (13122 * k + 3230) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2015) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2015))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2075 : ∀ k : Nat, iterate (8192 * k + 2075) 21 = 6561 * k + 1663 ∧ 6561 * k + 1663 < 8192 * k + 2075 := by
  intro k
  have h1 : C (8192 * k + 2075) = 24576 * k + 6226 := by
    unfold C
    simp [show (8192 * k + 2075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6226) = 12288 * k + 3113 := by
    unfold C
    simp [show (24576 * k + 6226) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3113) = 36864 * k + 9340 := by
    unfold C
    simp [show (12288 * k + 3113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 9340) = 18432 * k + 4670 := by
    unfold C
    simp [show (36864 * k + 9340) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 4670) = 9216 * k + 2335 := by
    unfold C
    simp [show (18432 * k + 4670) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 2335) = 27648 * k + 7006 := by
    unfold C
    simp [show (9216 * k + 2335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 7006) = 13824 * k + 3503 := by
    unfold C
    simp [show (27648 * k + 7006) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 3503) = 41472 * k + 10510 := by
    unfold C
    simp [show (13824 * k + 3503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 10510) = 20736 * k + 5255 := by
    unfold C
    simp [show (41472 * k + 10510) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 5255) = 62208 * k + 15766 := by
    unfold C
    simp [show (20736 * k + 5255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 15766) = 31104 * k + 7883 := by
    unfold C
    simp [show (62208 * k + 15766) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 7883) = 93312 * k + 23650 := by
    unfold C
    simp [show (31104 * k + 7883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 23650) = 46656 * k + 11825 := by
    unfold C
    simp [show (93312 * k + 23650) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 11825) = 139968 * k + 35476 := by
    unfold C
    simp [show (46656 * k + 11825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 35476) = 69984 * k + 17738 := by
    unfold C
    simp [show (139968 * k + 35476) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 17738) = 34992 * k + 8869 := by
    unfold C
    simp [show (69984 * k + 17738) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 8869) = 104976 * k + 26608 := by
    unfold C
    simp [show (34992 * k + 8869) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 26608) = 52488 * k + 13304 := by
    unfold C
    simp [show (104976 * k + 26608) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 13304) = 26244 * k + 6652 := by
    unfold C
    simp [show (52488 * k + 13304) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 6652) = 13122 * k + 3326 := by
    unfold C
    simp [show (26244 * k + 6652) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3326) = 6561 * k + 1663 := by
    unfold C
    simp [show (13122 * k + 3326) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2075) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2075))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2079 : ∀ k : Nat, iterate (8192 * k + 2079) 21 = 6561 * k + 1666 ∧ 6561 * k + 1666 < 8192 * k + 2079 := by
  intro k
  have h1 : C (8192 * k + 2079) = 24576 * k + 6238 := by
    unfold C
    simp [show (8192 * k + 2079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6238) = 12288 * k + 3119 := by
    unfold C
    simp [show (24576 * k + 6238) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3119) = 36864 * k + 9358 := by
    unfold C
    simp [show (12288 * k + 3119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 9358) = 18432 * k + 4679 := by
    unfold C
    simp [show (36864 * k + 9358) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 4679) = 55296 * k + 14038 := by
    unfold C
    simp [show (18432 * k + 4679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 14038) = 27648 * k + 7019 := by
    unfold C
    simp [show (55296 * k + 14038) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 7019) = 82944 * k + 21058 := by
    unfold C
    simp [show (27648 * k + 7019) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 21058) = 41472 * k + 10529 := by
    unfold C
    simp [show (82944 * k + 21058) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 10529) = 124416 * k + 31588 := by
    unfold C
    simp [show (41472 * k + 10529) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 31588) = 62208 * k + 15794 := by
    unfold C
    simp [show (124416 * k + 31588) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 15794) = 31104 * k + 7897 := by
    unfold C
    simp [show (62208 * k + 15794) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 7897) = 93312 * k + 23692 := by
    unfold C
    simp [show (31104 * k + 7897) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 23692) = 46656 * k + 11846 := by
    unfold C
    simp [show (93312 * k + 23692) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 11846) = 23328 * k + 5923 := by
    unfold C
    simp [show (46656 * k + 11846) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 5923) = 69984 * k + 17770 := by
    unfold C
    simp [show (23328 * k + 5923) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 17770) = 34992 * k + 8885 := by
    unfold C
    simp [show (69984 * k + 17770) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 8885) = 104976 * k + 26656 := by
    unfold C
    simp [show (34992 * k + 8885) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 26656) = 52488 * k + 13328 := by
    unfold C
    simp [show (104976 * k + 26656) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 13328) = 26244 * k + 6664 := by
    unfold C
    simp [show (52488 * k + 13328) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 6664) = 13122 * k + 3332 := by
    unfold C
    simp [show (26244 * k + 6664) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3332) = 6561 * k + 1666 := by
    unfold C
    simp [show (13122 * k + 3332) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2079) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2079))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2095 : ∀ k : Nat, iterate (8192 * k + 2095) 21 = 6561 * k + 1679 ∧ 6561 * k + 1679 < 8192 * k + 2095 := by
  intro k
  have h1 : C (8192 * k + 2095) = 24576 * k + 6286 := by
    unfold C
    simp [show (8192 * k + 2095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6286) = 12288 * k + 3143 := by
    unfold C
    simp [show (24576 * k + 6286) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3143) = 36864 * k + 9430 := by
    unfold C
    simp [show (12288 * k + 3143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 9430) = 18432 * k + 4715 := by
    unfold C
    simp [show (36864 * k + 9430) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 4715) = 55296 * k + 14146 := by
    unfold C
    simp [show (18432 * k + 4715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 14146) = 27648 * k + 7073 := by
    unfold C
    simp [show (55296 * k + 14146) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 7073) = 82944 * k + 21220 := by
    unfold C
    simp [show (27648 * k + 7073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 21220) = 41472 * k + 10610 := by
    unfold C
    simp [show (82944 * k + 21220) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 10610) = 20736 * k + 5305 := by
    unfold C
    simp [show (41472 * k + 10610) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 5305) = 62208 * k + 15916 := by
    unfold C
    simp [show (20736 * k + 5305) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 15916) = 31104 * k + 7958 := by
    unfold C
    simp [show (62208 * k + 15916) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 7958) = 15552 * k + 3979 := by
    unfold C
    simp [show (31104 * k + 7958) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 3979) = 46656 * k + 11938 := by
    unfold C
    simp [show (15552 * k + 3979) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 11938) = 23328 * k + 5969 := by
    unfold C
    simp [show (46656 * k + 11938) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 5969) = 69984 * k + 17908 := by
    unfold C
    simp [show (23328 * k + 5969) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 17908) = 34992 * k + 8954 := by
    unfold C
    simp [show (69984 * k + 17908) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 8954) = 17496 * k + 4477 := by
    unfold C
    simp [show (34992 * k + 8954) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 4477) = 52488 * k + 13432 := by
    unfold C
    simp [show (17496 * k + 4477) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 13432) = 26244 * k + 6716 := by
    unfold C
    simp [show (52488 * k + 13432) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 6716) = 13122 * k + 3358 := by
    unfold C
    simp [show (26244 * k + 6716) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3358) = 6561 * k + 1679 := by
    unfold C
    simp [show (13122 * k + 3358) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2095) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2095))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2271 : ∀ k : Nat, iterate (8192 * k + 2271) 21 = 6561 * k + 1820 ∧ 6561 * k + 1820 < 8192 * k + 2271 := by
  intro k
  have h1 : C (8192 * k + 2271) = 24576 * k + 6814 := by
    unfold C
    simp [show (8192 * k + 2271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6814) = 12288 * k + 3407 := by
    unfold C
    simp [show (24576 * k + 6814) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3407) = 36864 * k + 10222 := by
    unfold C
    simp [show (12288 * k + 3407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 10222) = 18432 * k + 5111 := by
    unfold C
    simp [show (36864 * k + 10222) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 5111) = 55296 * k + 15334 := by
    unfold C
    simp [show (18432 * k + 5111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 15334) = 27648 * k + 7667 := by
    unfold C
    simp [show (55296 * k + 15334) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 7667) = 82944 * k + 23002 := by
    unfold C
    simp [show (27648 * k + 7667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 23002) = 41472 * k + 11501 := by
    unfold C
    simp [show (82944 * k + 23002) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 11501) = 124416 * k + 34504 := by
    unfold C
    simp [show (41472 * k + 11501) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 34504) = 62208 * k + 17252 := by
    unfold C
    simp [show (124416 * k + 34504) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 17252) = 31104 * k + 8626 := by
    unfold C
    simp [show (62208 * k + 17252) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 8626) = 15552 * k + 4313 := by
    unfold C
    simp [show (31104 * k + 8626) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 4313) = 46656 * k + 12940 := by
    unfold C
    simp [show (15552 * k + 4313) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 12940) = 23328 * k + 6470 := by
    unfold C
    simp [show (46656 * k + 12940) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 6470) = 11664 * k + 3235 := by
    unfold C
    simp [show (23328 * k + 6470) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 3235) = 34992 * k + 9706 := by
    unfold C
    simp [show (11664 * k + 3235) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 9706) = 17496 * k + 4853 := by
    unfold C
    simp [show (34992 * k + 9706) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 4853) = 52488 * k + 14560 := by
    unfold C
    simp [show (17496 * k + 4853) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 14560) = 26244 * k + 7280 := by
    unfold C
    simp [show (52488 * k + 14560) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 7280) = 13122 * k + 3640 := by
    unfold C
    simp [show (26244 * k + 7280) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3640) = 6561 * k + 1820 := by
    unfold C
    simp [show (13122 * k + 3640) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2271) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2271))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2331 : ∀ k : Nat, iterate (8192 * k + 2331) 21 = 6561 * k + 1868 ∧ 6561 * k + 1868 < 8192 * k + 2331 := by
  intro k
  have h1 : C (8192 * k + 2331) = 24576 * k + 6994 := by
    unfold C
    simp [show (8192 * k + 2331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 6994) = 12288 * k + 3497 := by
    unfold C
    simp [show (24576 * k + 6994) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3497) = 36864 * k + 10492 := by
    unfold C
    simp [show (12288 * k + 3497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 10492) = 18432 * k + 5246 := by
    unfold C
    simp [show (36864 * k + 10492) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 5246) = 9216 * k + 2623 := by
    unfold C
    simp [show (18432 * k + 5246) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 2623) = 27648 * k + 7870 := by
    unfold C
    simp [show (9216 * k + 2623) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 7870) = 13824 * k + 3935 := by
    unfold C
    simp [show (27648 * k + 7870) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 3935) = 41472 * k + 11806 := by
    unfold C
    simp [show (13824 * k + 3935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 11806) = 20736 * k + 5903 := by
    unfold C
    simp [show (41472 * k + 11806) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 5903) = 62208 * k + 17710 := by
    unfold C
    simp [show (20736 * k + 5903) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 17710) = 31104 * k + 8855 := by
    unfold C
    simp [show (62208 * k + 17710) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 8855) = 93312 * k + 26566 := by
    unfold C
    simp [show (31104 * k + 8855) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 26566) = 46656 * k + 13283 := by
    unfold C
    simp [show (93312 * k + 26566) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 13283) = 139968 * k + 39850 := by
    unfold C
    simp [show (46656 * k + 13283) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 39850) = 69984 * k + 19925 := by
    unfold C
    simp [show (139968 * k + 39850) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 19925) = 209952 * k + 59776 := by
    unfold C
    simp [show (69984 * k + 19925) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 59776) = 104976 * k + 29888 := by
    unfold C
    simp [show (209952 * k + 59776) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 29888) = 52488 * k + 14944 := by
    unfold C
    simp [show (104976 * k + 29888) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 14944) = 26244 * k + 7472 := by
    unfold C
    simp [show (52488 * k + 14944) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 7472) = 13122 * k + 3736 := by
    unfold C
    simp [show (26244 * k + 7472) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3736) = 6561 * k + 1868 := by
    unfold C
    simp [show (13122 * k + 3736) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2331) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2331))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2431 : ∀ k : Nat, iterate (8192 * k + 2431) 21 = 6561 * k + 1948 ∧ 6561 * k + 1948 < 8192 * k + 2431 := by
  intro k
  have h1 : C (8192 * k + 2431) = 24576 * k + 7294 := by
    unfold C
    simp [show (8192 * k + 2431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 7294) = 12288 * k + 3647 := by
    unfold C
    simp [show (24576 * k + 7294) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3647) = 36864 * k + 10942 := by
    unfold C
    simp [show (12288 * k + 3647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 10942) = 18432 * k + 5471 := by
    unfold C
    simp [show (36864 * k + 10942) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 5471) = 55296 * k + 16414 := by
    unfold C
    simp [show (18432 * k + 5471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 16414) = 27648 * k + 8207 := by
    unfold C
    simp [show (55296 * k + 16414) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 8207) = 82944 * k + 24622 := by
    unfold C
    simp [show (27648 * k + 8207) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 24622) = 41472 * k + 12311 := by
    unfold C
    simp [show (82944 * k + 24622) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 12311) = 124416 * k + 36934 := by
    unfold C
    simp [show (41472 * k + 12311) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 36934) = 62208 * k + 18467 := by
    unfold C
    simp [show (124416 * k + 36934) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 18467) = 186624 * k + 55402 := by
    unfold C
    simp [show (62208 * k + 18467) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 55402) = 93312 * k + 27701 := by
    unfold C
    simp [show (186624 * k + 55402) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 27701) = 279936 * k + 83104 := by
    unfold C
    simp [show (93312 * k + 27701) % 2 ≠ 0 by omega]
    omega
  have h14 : C (279936 * k + 83104) = 139968 * k + 41552 := by
    unfold C
    simp [show (279936 * k + 83104) % 2 = 0 by omega]
    omega
  have h15 : C (139968 * k + 41552) = 69984 * k + 20776 := by
    unfold C
    simp [show (139968 * k + 41552) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 20776) = 34992 * k + 10388 := by
    unfold C
    simp [show (69984 * k + 20776) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 10388) = 17496 * k + 5194 := by
    unfold C
    simp [show (34992 * k + 10388) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 5194) = 8748 * k + 2597 := by
    unfold C
    simp [show (17496 * k + 5194) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 2597) = 26244 * k + 7792 := by
    unfold C
    simp [show (8748 * k + 2597) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 7792) = 13122 * k + 3896 := by
    unfold C
    simp [show (26244 * k + 7792) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 3896) = 6561 * k + 1948 := by
    unfold C
    simp [show (13122 * k + 3896) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2431) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2431))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2607 : ∀ k : Nat, iterate (8192 * k + 2607) 21 = 6561 * k + 2089 ∧ 6561 * k + 2089 < 8192 * k + 2607 := by
  intro k
  have h1 : C (8192 * k + 2607) = 24576 * k + 7822 := by
    unfold C
    simp [show (8192 * k + 2607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 7822) = 12288 * k + 3911 := by
    unfold C
    simp [show (24576 * k + 7822) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3911) = 36864 * k + 11734 := by
    unfold C
    simp [show (12288 * k + 3911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 11734) = 18432 * k + 5867 := by
    unfold C
    simp [show (36864 * k + 11734) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 5867) = 55296 * k + 17602 := by
    unfold C
    simp [show (18432 * k + 5867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 17602) = 27648 * k + 8801 := by
    unfold C
    simp [show (55296 * k + 17602) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 8801) = 82944 * k + 26404 := by
    unfold C
    simp [show (27648 * k + 8801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 26404) = 41472 * k + 13202 := by
    unfold C
    simp [show (82944 * k + 26404) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 13202) = 20736 * k + 6601 := by
    unfold C
    simp [show (41472 * k + 13202) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 6601) = 62208 * k + 19804 := by
    unfold C
    simp [show (20736 * k + 6601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 19804) = 31104 * k + 9902 := by
    unfold C
    simp [show (62208 * k + 19804) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 9902) = 15552 * k + 4951 := by
    unfold C
    simp [show (31104 * k + 9902) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 4951) = 46656 * k + 14854 := by
    unfold C
    simp [show (15552 * k + 4951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 14854) = 23328 * k + 7427 := by
    unfold C
    simp [show (46656 * k + 14854) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 7427) = 69984 * k + 22282 := by
    unfold C
    simp [show (23328 * k + 7427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 22282) = 34992 * k + 11141 := by
    unfold C
    simp [show (69984 * k + 22282) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 11141) = 104976 * k + 33424 := by
    unfold C
    simp [show (34992 * k + 11141) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 33424) = 52488 * k + 16712 := by
    unfold C
    simp [show (104976 * k + 33424) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 16712) = 26244 * k + 8356 := by
    unfold C
    simp [show (52488 * k + 16712) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 8356) = 13122 * k + 4178 := by
    unfold C
    simp [show (26244 * k + 8356) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 4178) = 6561 * k + 2089 := by
    unfold C
    simp [show (13122 * k + 4178) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2607) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2607))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_2663 : ∀ k : Nat, iterate (8192 * k + 2663) 21 = 6561 * k + 2134 ∧ 6561 * k + 2134 < 8192 * k + 2663 := by
  intro k
  have h1 : C (8192 * k + 2663) = 24576 * k + 7990 := by
    unfold C
    simp [show (8192 * k + 2663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 7990) = 12288 * k + 3995 := by
    unfold C
    simp [show (24576 * k + 7990) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 3995) = 36864 * k + 11986 := by
    unfold C
    simp [show (12288 * k + 3995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 11986) = 18432 * k + 5993 := by
    unfold C
    simp [show (36864 * k + 11986) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 5993) = 55296 * k + 17980 := by
    unfold C
    simp [show (18432 * k + 5993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 17980) = 27648 * k + 8990 := by
    unfold C
    simp [show (55296 * k + 17980) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 8990) = 13824 * k + 4495 := by
    unfold C
    simp [show (27648 * k + 8990) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 4495) = 41472 * k + 13486 := by
    unfold C
    simp [show (13824 * k + 4495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 13486) = 20736 * k + 6743 := by
    unfold C
    simp [show (41472 * k + 13486) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 6743) = 62208 * k + 20230 := by
    unfold C
    simp [show (20736 * k + 6743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 20230) = 31104 * k + 10115 := by
    unfold C
    simp [show (62208 * k + 20230) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 10115) = 93312 * k + 30346 := by
    unfold C
    simp [show (31104 * k + 10115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 30346) = 46656 * k + 15173 := by
    unfold C
    simp [show (93312 * k + 30346) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 15173) = 139968 * k + 45520 := by
    unfold C
    simp [show (46656 * k + 15173) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 45520) = 69984 * k + 22760 := by
    unfold C
    simp [show (139968 * k + 45520) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 22760) = 34992 * k + 11380 := by
    unfold C
    simp [show (69984 * k + 22760) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 11380) = 17496 * k + 5690 := by
    unfold C
    simp [show (34992 * k + 11380) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 5690) = 8748 * k + 2845 := by
    unfold C
    simp [show (17496 * k + 5690) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 2845) = 26244 * k + 8536 := by
    unfold C
    simp [show (8748 * k + 2845) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 8536) = 13122 * k + 4268 := by
    unfold C
    simp [show (26244 * k + 8536) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 4268) = 6561 * k + 2134 := by
    unfold C
    simp [show (13122 * k + 4268) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 2663) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 2663))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3039 : ∀ k : Nat, iterate (8192 * k + 3039) 21 = 6561 * k + 2435 ∧ 6561 * k + 2435 < 8192 * k + 3039 := by
  intro k
  have h1 : C (8192 * k + 3039) = 24576 * k + 9118 := by
    unfold C
    simp [show (8192 * k + 3039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 9118) = 12288 * k + 4559 := by
    unfold C
    simp [show (24576 * k + 9118) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 4559) = 36864 * k + 13678 := by
    unfold C
    simp [show (12288 * k + 4559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 13678) = 18432 * k + 6839 := by
    unfold C
    simp [show (36864 * k + 13678) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 6839) = 55296 * k + 20518 := by
    unfold C
    simp [show (18432 * k + 6839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 20518) = 27648 * k + 10259 := by
    unfold C
    simp [show (55296 * k + 20518) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 10259) = 82944 * k + 30778 := by
    unfold C
    simp [show (27648 * k + 10259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 30778) = 41472 * k + 15389 := by
    unfold C
    simp [show (82944 * k + 30778) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 15389) = 124416 * k + 46168 := by
    unfold C
    simp [show (41472 * k + 15389) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 46168) = 62208 * k + 23084 := by
    unfold C
    simp [show (124416 * k + 46168) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 23084) = 31104 * k + 11542 := by
    unfold C
    simp [show (62208 * k + 23084) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 11542) = 15552 * k + 5771 := by
    unfold C
    simp [show (31104 * k + 11542) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 5771) = 46656 * k + 17314 := by
    unfold C
    simp [show (15552 * k + 5771) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 17314) = 23328 * k + 8657 := by
    unfold C
    simp [show (46656 * k + 17314) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 8657) = 69984 * k + 25972 := by
    unfold C
    simp [show (23328 * k + 8657) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 25972) = 34992 * k + 12986 := by
    unfold C
    simp [show (69984 * k + 25972) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 12986) = 17496 * k + 6493 := by
    unfold C
    simp [show (34992 * k + 12986) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 6493) = 52488 * k + 19480 := by
    unfold C
    simp [show (17496 * k + 6493) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 19480) = 26244 * k + 9740 := by
    unfold C
    simp [show (52488 * k + 19480) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 9740) = 13122 * k + 4870 := by
    unfold C
    simp [show (26244 * k + 9740) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 4870) = 6561 * k + 2435 := by
    unfold C
    simp [show (13122 * k + 4870) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3039) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3039))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3067 : ∀ k : Nat, iterate (8192 * k + 3067) 21 = 6561 * k + 2458 ∧ 6561 * k + 2458 < 8192 * k + 3067 := by
  intro k
  have h1 : C (8192 * k + 3067) = 24576 * k + 9202 := by
    unfold C
    simp [show (8192 * k + 3067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 9202) = 12288 * k + 4601 := by
    unfold C
    simp [show (24576 * k + 9202) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 4601) = 36864 * k + 13804 := by
    unfold C
    simp [show (12288 * k + 4601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 13804) = 18432 * k + 6902 := by
    unfold C
    simp [show (36864 * k + 13804) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 6902) = 9216 * k + 3451 := by
    unfold C
    simp [show (18432 * k + 6902) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 3451) = 27648 * k + 10354 := by
    unfold C
    simp [show (9216 * k + 3451) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 10354) = 13824 * k + 5177 := by
    unfold C
    simp [show (27648 * k + 10354) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 5177) = 41472 * k + 15532 := by
    unfold C
    simp [show (13824 * k + 5177) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 15532) = 20736 * k + 7766 := by
    unfold C
    simp [show (41472 * k + 15532) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 7766) = 10368 * k + 3883 := by
    unfold C
    simp [show (20736 * k + 7766) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 3883) = 31104 * k + 11650 := by
    unfold C
    simp [show (10368 * k + 3883) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 11650) = 15552 * k + 5825 := by
    unfold C
    simp [show (31104 * k + 11650) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 5825) = 46656 * k + 17476 := by
    unfold C
    simp [show (15552 * k + 5825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 17476) = 23328 * k + 8738 := by
    unfold C
    simp [show (46656 * k + 17476) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 8738) = 11664 * k + 4369 := by
    unfold C
    simp [show (23328 * k + 8738) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 4369) = 34992 * k + 13108 := by
    unfold C
    simp [show (11664 * k + 4369) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 13108) = 17496 * k + 6554 := by
    unfold C
    simp [show (34992 * k + 13108) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 6554) = 8748 * k + 3277 := by
    unfold C
    simp [show (17496 * k + 6554) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 3277) = 26244 * k + 9832 := by
    unfold C
    simp [show (8748 * k + 3277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 9832) = 13122 * k + 4916 := by
    unfold C
    simp [show (26244 * k + 9832) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 4916) = 6561 * k + 2458 := by
    unfold C
    simp [show (13122 * k + 4916) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3067) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3067))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3135 : ∀ k : Nat, iterate (8192 * k + 3135) 21 = 6561 * k + 2512 ∧ 6561 * k + 2512 < 8192 * k + 3135 := by
  intro k
  have h1 : C (8192 * k + 3135) = 24576 * k + 9406 := by
    unfold C
    simp [show (8192 * k + 3135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 9406) = 12288 * k + 4703 := by
    unfold C
    simp [show (24576 * k + 9406) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 4703) = 36864 * k + 14110 := by
    unfold C
    simp [show (12288 * k + 4703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 14110) = 18432 * k + 7055 := by
    unfold C
    simp [show (36864 * k + 14110) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 7055) = 55296 * k + 21166 := by
    unfold C
    simp [show (18432 * k + 7055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 21166) = 27648 * k + 10583 := by
    unfold C
    simp [show (55296 * k + 21166) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 10583) = 82944 * k + 31750 := by
    unfold C
    simp [show (27648 * k + 10583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 31750) = 41472 * k + 15875 := by
    unfold C
    simp [show (82944 * k + 31750) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 15875) = 124416 * k + 47626 := by
    unfold C
    simp [show (41472 * k + 15875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 47626) = 62208 * k + 23813 := by
    unfold C
    simp [show (124416 * k + 47626) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 23813) = 186624 * k + 71440 := by
    unfold C
    simp [show (62208 * k + 23813) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 71440) = 93312 * k + 35720 := by
    unfold C
    simp [show (186624 * k + 71440) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 35720) = 46656 * k + 17860 := by
    unfold C
    simp [show (93312 * k + 35720) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 17860) = 23328 * k + 8930 := by
    unfold C
    simp [show (46656 * k + 17860) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 8930) = 11664 * k + 4465 := by
    unfold C
    simp [show (23328 * k + 8930) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 4465) = 34992 * k + 13396 := by
    unfold C
    simp [show (11664 * k + 4465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 13396) = 17496 * k + 6698 := by
    unfold C
    simp [show (34992 * k + 13396) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 6698) = 8748 * k + 3349 := by
    unfold C
    simp [show (17496 * k + 6698) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 3349) = 26244 * k + 10048 := by
    unfold C
    simp [show (8748 * k + 3349) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 10048) = 13122 * k + 5024 := by
    unfold C
    simp [show (26244 * k + 10048) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 5024) = 6561 * k + 2512 := by
    unfold C
    simp [show (13122 * k + 5024) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3135) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3135))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3455 : ∀ k : Nat, iterate (8192 * k + 3455) 21 = 6561 * k + 2768 ∧ 6561 * k + 2768 < 8192 * k + 3455 := by
  intro k
  have h1 : C (8192 * k + 3455) = 24576 * k + 10366 := by
    unfold C
    simp [show (8192 * k + 3455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 10366) = 12288 * k + 5183 := by
    unfold C
    simp [show (24576 * k + 10366) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5183) = 36864 * k + 15550 := by
    unfold C
    simp [show (12288 * k + 5183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 15550) = 18432 * k + 7775 := by
    unfold C
    simp [show (36864 * k + 15550) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 7775) = 55296 * k + 23326 := by
    unfold C
    simp [show (18432 * k + 7775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 23326) = 27648 * k + 11663 := by
    unfold C
    simp [show (55296 * k + 23326) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 11663) = 82944 * k + 34990 := by
    unfold C
    simp [show (27648 * k + 11663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 34990) = 41472 * k + 17495 := by
    unfold C
    simp [show (82944 * k + 34990) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 17495) = 124416 * k + 52486 := by
    unfold C
    simp [show (41472 * k + 17495) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 52486) = 62208 * k + 26243 := by
    unfold C
    simp [show (124416 * k + 52486) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 26243) = 186624 * k + 78730 := by
    unfold C
    simp [show (62208 * k + 26243) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 78730) = 93312 * k + 39365 := by
    unfold C
    simp [show (186624 * k + 78730) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 39365) = 279936 * k + 118096 := by
    unfold C
    simp [show (93312 * k + 39365) % 2 ≠ 0 by omega]
    omega
  have h14 : C (279936 * k + 118096) = 139968 * k + 59048 := by
    unfold C
    simp [show (279936 * k + 118096) % 2 = 0 by omega]
    omega
  have h15 : C (139968 * k + 59048) = 69984 * k + 29524 := by
    unfold C
    simp [show (139968 * k + 59048) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 29524) = 34992 * k + 14762 := by
    unfold C
    simp [show (69984 * k + 29524) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 14762) = 17496 * k + 7381 := by
    unfold C
    simp [show (34992 * k + 14762) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 7381) = 52488 * k + 22144 := by
    unfold C
    simp [show (17496 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 22144) = 26244 * k + 11072 := by
    unfold C
    simp [show (52488 * k + 22144) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 11072) = 13122 * k + 5536 := by
    unfold C
    simp [show (26244 * k + 11072) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 5536) = 6561 * k + 2768 := by
    unfold C
    simp [show (13122 * k + 5536) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3455) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3455))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3483 : ∀ k : Nat, iterate (8192 * k + 3483) 21 = 6561 * k + 2791 ∧ 6561 * k + 2791 < 8192 * k + 3483 := by
  intro k
  have h1 : C (8192 * k + 3483) = 24576 * k + 10450 := by
    unfold C
    simp [show (8192 * k + 3483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 10450) = 12288 * k + 5225 := by
    unfold C
    simp [show (24576 * k + 10450) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5225) = 36864 * k + 15676 := by
    unfold C
    simp [show (12288 * k + 5225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 15676) = 18432 * k + 7838 := by
    unfold C
    simp [show (36864 * k + 15676) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 7838) = 9216 * k + 3919 := by
    unfold C
    simp [show (18432 * k + 7838) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 3919) = 27648 * k + 11758 := by
    unfold C
    simp [show (9216 * k + 3919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 11758) = 13824 * k + 5879 := by
    unfold C
    simp [show (27648 * k + 11758) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 5879) = 41472 * k + 17638 := by
    unfold C
    simp [show (13824 * k + 5879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 17638) = 20736 * k + 8819 := by
    unfold C
    simp [show (41472 * k + 17638) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 8819) = 62208 * k + 26458 := by
    unfold C
    simp [show (20736 * k + 8819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 26458) = 31104 * k + 13229 := by
    unfold C
    simp [show (62208 * k + 26458) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 13229) = 93312 * k + 39688 := by
    unfold C
    simp [show (31104 * k + 13229) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 39688) = 46656 * k + 19844 := by
    unfold C
    simp [show (93312 * k + 39688) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 19844) = 23328 * k + 9922 := by
    unfold C
    simp [show (46656 * k + 19844) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 9922) = 11664 * k + 4961 := by
    unfold C
    simp [show (23328 * k + 9922) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 4961) = 34992 * k + 14884 := by
    unfold C
    simp [show (11664 * k + 4961) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 14884) = 17496 * k + 7442 := by
    unfold C
    simp [show (34992 * k + 14884) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 7442) = 8748 * k + 3721 := by
    unfold C
    simp [show (17496 * k + 7442) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 3721) = 26244 * k + 11164 := by
    unfold C
    simp [show (8748 * k + 3721) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 11164) = 13122 * k + 5582 := by
    unfold C
    simp [show (26244 * k + 11164) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 5582) = 6561 * k + 2791 := by
    unfold C
    simp [show (13122 * k + 5582) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3483) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3483))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3551 : ∀ k : Nat, iterate (8192 * k + 3551) 21 = 6561 * k + 2845 ∧ 6561 * k + 2845 < 8192 * k + 3551 := by
  intro k
  have h1 : C (8192 * k + 3551) = 24576 * k + 10654 := by
    unfold C
    simp [show (8192 * k + 3551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 10654) = 12288 * k + 5327 := by
    unfold C
    simp [show (24576 * k + 10654) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5327) = 36864 * k + 15982 := by
    unfold C
    simp [show (12288 * k + 5327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 15982) = 18432 * k + 7991 := by
    unfold C
    simp [show (36864 * k + 15982) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 7991) = 55296 * k + 23974 := by
    unfold C
    simp [show (18432 * k + 7991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 23974) = 27648 * k + 11987 := by
    unfold C
    simp [show (55296 * k + 23974) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 11987) = 82944 * k + 35962 := by
    unfold C
    simp [show (27648 * k + 11987) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 35962) = 41472 * k + 17981 := by
    unfold C
    simp [show (82944 * k + 35962) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 17981) = 124416 * k + 53944 := by
    unfold C
    simp [show (41472 * k + 17981) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 53944) = 62208 * k + 26972 := by
    unfold C
    simp [show (124416 * k + 53944) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 26972) = 31104 * k + 13486 := by
    unfold C
    simp [show (62208 * k + 26972) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 13486) = 15552 * k + 6743 := by
    unfold C
    simp [show (31104 * k + 13486) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 6743) = 46656 * k + 20230 := by
    unfold C
    simp [show (15552 * k + 6743) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 20230) = 23328 * k + 10115 := by
    unfold C
    simp [show (46656 * k + 20230) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 10115) = 69984 * k + 30346 := by
    unfold C
    simp [show (23328 * k + 10115) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 30346) = 34992 * k + 15173 := by
    unfold C
    simp [show (69984 * k + 30346) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 15173) = 104976 * k + 45520 := by
    unfold C
    simp [show (34992 * k + 15173) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 45520) = 52488 * k + 22760 := by
    unfold C
    simp [show (104976 * k + 45520) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 22760) = 26244 * k + 11380 := by
    unfold C
    simp [show (52488 * k + 22760) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 11380) = 13122 * k + 5690 := by
    unfold C
    simp [show (26244 * k + 11380) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 5690) = 6561 * k + 2845 := by
    unfold C
    simp [show (13122 * k + 5690) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3551) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3551))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3687 : ∀ k : Nat, iterate (8192 * k + 3687) 21 = 6561 * k + 2954 ∧ 6561 * k + 2954 < 8192 * k + 3687 := by
  intro k
  have h1 : C (8192 * k + 3687) = 24576 * k + 11062 := by
    unfold C
    simp [show (8192 * k + 3687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 11062) = 12288 * k + 5531 := by
    unfold C
    simp [show (24576 * k + 11062) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5531) = 36864 * k + 16594 := by
    unfold C
    simp [show (12288 * k + 5531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 16594) = 18432 * k + 8297 := by
    unfold C
    simp [show (36864 * k + 16594) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 8297) = 55296 * k + 24892 := by
    unfold C
    simp [show (18432 * k + 8297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 24892) = 27648 * k + 12446 := by
    unfold C
    simp [show (55296 * k + 24892) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 12446) = 13824 * k + 6223 := by
    unfold C
    simp [show (27648 * k + 12446) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 6223) = 41472 * k + 18670 := by
    unfold C
    simp [show (13824 * k + 6223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 18670) = 20736 * k + 9335 := by
    unfold C
    simp [show (41472 * k + 18670) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 9335) = 62208 * k + 28006 := by
    unfold C
    simp [show (20736 * k + 9335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 28006) = 31104 * k + 14003 := by
    unfold C
    simp [show (62208 * k + 28006) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 14003) = 93312 * k + 42010 := by
    unfold C
    simp [show (31104 * k + 14003) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 42010) = 46656 * k + 21005 := by
    unfold C
    simp [show (93312 * k + 42010) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 21005) = 139968 * k + 63016 := by
    unfold C
    simp [show (46656 * k + 21005) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 63016) = 69984 * k + 31508 := by
    unfold C
    simp [show (139968 * k + 63016) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 31508) = 34992 * k + 15754 := by
    unfold C
    simp [show (69984 * k + 31508) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 15754) = 17496 * k + 7877 := by
    unfold C
    simp [show (34992 * k + 15754) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 7877) = 52488 * k + 23632 := by
    unfold C
    simp [show (17496 * k + 7877) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 23632) = 26244 * k + 11816 := by
    unfold C
    simp [show (52488 * k + 23632) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 11816) = 13122 * k + 5908 := by
    unfold C
    simp [show (26244 * k + 11816) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 5908) = 6561 * k + 2954 := by
    unfold C
    simp [show (13122 * k + 5908) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3687) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3687))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3835 : ∀ k : Nat, iterate (8192 * k + 3835) 21 = 6561 * k + 3073 ∧ 6561 * k + 3073 < 8192 * k + 3835 := by
  intro k
  have h1 : C (8192 * k + 3835) = 24576 * k + 11506 := by
    unfold C
    simp [show (8192 * k + 3835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 11506) = 12288 * k + 5753 := by
    unfold C
    simp [show (24576 * k + 11506) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5753) = 36864 * k + 17260 := by
    unfold C
    simp [show (12288 * k + 5753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 17260) = 18432 * k + 8630 := by
    unfold C
    simp [show (36864 * k + 17260) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 8630) = 9216 * k + 4315 := by
    unfold C
    simp [show (18432 * k + 8630) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 4315) = 27648 * k + 12946 := by
    unfold C
    simp [show (9216 * k + 4315) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 12946) = 13824 * k + 6473 := by
    unfold C
    simp [show (27648 * k + 12946) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 6473) = 41472 * k + 19420 := by
    unfold C
    simp [show (13824 * k + 6473) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 19420) = 20736 * k + 9710 := by
    unfold C
    simp [show (41472 * k + 19420) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 9710) = 10368 * k + 4855 := by
    unfold C
    simp [show (20736 * k + 9710) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 4855) = 31104 * k + 14566 := by
    unfold C
    simp [show (10368 * k + 4855) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 14566) = 15552 * k + 7283 := by
    unfold C
    simp [show (31104 * k + 14566) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 7283) = 46656 * k + 21850 := by
    unfold C
    simp [show (15552 * k + 7283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 21850) = 23328 * k + 10925 := by
    unfold C
    simp [show (46656 * k + 21850) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 10925) = 69984 * k + 32776 := by
    unfold C
    simp [show (23328 * k + 10925) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 32776) = 34992 * k + 16388 := by
    unfold C
    simp [show (69984 * k + 32776) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 16388) = 17496 * k + 8194 := by
    unfold C
    simp [show (34992 * k + 16388) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 8194) = 8748 * k + 4097 := by
    unfold C
    simp [show (17496 * k + 8194) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 4097) = 26244 * k + 12292 := by
    unfold C
    simp [show (8748 * k + 4097) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 12292) = 13122 * k + 6146 := by
    unfold C
    simp [show (26244 * k + 12292) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6146) = 6561 * k + 3073 := by
    unfold C
    simp [show (13122 * k + 6146) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3835) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3835))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3903 : ∀ k : Nat, iterate (8192 * k + 3903) 21 = 6561 * k + 3127 ∧ 6561 * k + 3127 < 8192 * k + 3903 := by
  intro k
  have h1 : C (8192 * k + 3903) = 24576 * k + 11710 := by
    unfold C
    simp [show (8192 * k + 3903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 11710) = 12288 * k + 5855 := by
    unfold C
    simp [show (24576 * k + 11710) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5855) = 36864 * k + 17566 := by
    unfold C
    simp [show (12288 * k + 5855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 17566) = 18432 * k + 8783 := by
    unfold C
    simp [show (36864 * k + 17566) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 8783) = 55296 * k + 26350 := by
    unfold C
    simp [show (18432 * k + 8783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 26350) = 27648 * k + 13175 := by
    unfold C
    simp [show (55296 * k + 26350) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 13175) = 82944 * k + 39526 := by
    unfold C
    simp [show (27648 * k + 13175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 39526) = 41472 * k + 19763 := by
    unfold C
    simp [show (82944 * k + 39526) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 19763) = 124416 * k + 59290 := by
    unfold C
    simp [show (41472 * k + 19763) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 59290) = 62208 * k + 29645 := by
    unfold C
    simp [show (124416 * k + 59290) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 29645) = 186624 * k + 88936 := by
    unfold C
    simp [show (62208 * k + 29645) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 88936) = 93312 * k + 44468 := by
    unfold C
    simp [show (186624 * k + 88936) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 44468) = 46656 * k + 22234 := by
    unfold C
    simp [show (93312 * k + 44468) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 22234) = 23328 * k + 11117 := by
    unfold C
    simp [show (46656 * k + 22234) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 11117) = 69984 * k + 33352 := by
    unfold C
    simp [show (23328 * k + 11117) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 33352) = 34992 * k + 16676 := by
    unfold C
    simp [show (69984 * k + 33352) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 16676) = 17496 * k + 8338 := by
    unfold C
    simp [show (34992 * k + 16676) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 8338) = 8748 * k + 4169 := by
    unfold C
    simp [show (17496 * k + 8338) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 4169) = 26244 * k + 12508 := by
    unfold C
    simp [show (8748 * k + 4169) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 12508) = 13122 * k + 6254 := by
    unfold C
    simp [show (26244 * k + 12508) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6254) = 6561 * k + 3127 := by
    unfold C
    simp [show (13122 * k + 6254) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3903) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3903))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_3967 : ∀ k : Nat, iterate (8192 * k + 3967) 21 = 6561 * k + 3178 ∧ 6561 * k + 3178 < 8192 * k + 3967 := by
  intro k
  have h1 : C (8192 * k + 3967) = 24576 * k + 11902 := by
    unfold C
    simp [show (8192 * k + 3967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 11902) = 12288 * k + 5951 := by
    unfold C
    simp [show (24576 * k + 11902) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 5951) = 36864 * k + 17854 := by
    unfold C
    simp [show (12288 * k + 5951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 17854) = 18432 * k + 8927 := by
    unfold C
    simp [show (36864 * k + 17854) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 8927) = 55296 * k + 26782 := by
    unfold C
    simp [show (18432 * k + 8927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 26782) = 27648 * k + 13391 := by
    unfold C
    simp [show (55296 * k + 26782) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 13391) = 82944 * k + 40174 := by
    unfold C
    simp [show (27648 * k + 13391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 40174) = 41472 * k + 20087 := by
    unfold C
    simp [show (82944 * k + 40174) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 20087) = 124416 * k + 60262 := by
    unfold C
    simp [show (41472 * k + 20087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 60262) = 62208 * k + 30131 := by
    unfold C
    simp [show (124416 * k + 60262) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 30131) = 186624 * k + 90394 := by
    unfold C
    simp [show (62208 * k + 30131) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 90394) = 93312 * k + 45197 := by
    unfold C
    simp [show (186624 * k + 90394) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 45197) = 279936 * k + 135592 := by
    unfold C
    simp [show (93312 * k + 45197) % 2 ≠ 0 by omega]
    omega
  have h14 : C (279936 * k + 135592) = 139968 * k + 67796 := by
    unfold C
    simp [show (279936 * k + 135592) % 2 = 0 by omega]
    omega
  have h15 : C (139968 * k + 67796) = 69984 * k + 33898 := by
    unfold C
    simp [show (139968 * k + 67796) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 33898) = 34992 * k + 16949 := by
    unfold C
    simp [show (69984 * k + 33898) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 16949) = 104976 * k + 50848 := by
    unfold C
    simp [show (34992 * k + 16949) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 50848) = 52488 * k + 25424 := by
    unfold C
    simp [show (104976 * k + 50848) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 25424) = 26244 * k + 12712 := by
    unfold C
    simp [show (52488 * k + 25424) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 12712) = 13122 * k + 6356 := by
    unfold C
    simp [show (26244 * k + 12712) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6356) = 6561 * k + 3178 := by
    unfold C
    simp [show (13122 * k + 6356) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 3967) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 3967))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4079 : ∀ k : Nat, iterate (8192 * k + 4079) 21 = 6561 * k + 3268 ∧ 6561 * k + 3268 < 8192 * k + 4079 := by
  intro k
  have h1 : C (8192 * k + 4079) = 24576 * k + 12238 := by
    unfold C
    simp [show (8192 * k + 4079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12238) = 12288 * k + 6119 := by
    unfold C
    simp [show (24576 * k + 12238) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6119) = 36864 * k + 18358 := by
    unfold C
    simp [show (12288 * k + 6119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 18358) = 18432 * k + 9179 := by
    unfold C
    simp [show (36864 * k + 18358) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9179) = 55296 * k + 27538 := by
    unfold C
    simp [show (18432 * k + 9179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 27538) = 27648 * k + 13769 := by
    unfold C
    simp [show (55296 * k + 27538) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 13769) = 82944 * k + 41308 := by
    unfold C
    simp [show (27648 * k + 13769) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 41308) = 41472 * k + 20654 := by
    unfold C
    simp [show (82944 * k + 41308) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 20654) = 20736 * k + 10327 := by
    unfold C
    simp [show (41472 * k + 20654) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 10327) = 62208 * k + 30982 := by
    unfold C
    simp [show (20736 * k + 10327) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 30982) = 31104 * k + 15491 := by
    unfold C
    simp [show (62208 * k + 30982) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 15491) = 93312 * k + 46474 := by
    unfold C
    simp [show (31104 * k + 15491) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 46474) = 46656 * k + 23237 := by
    unfold C
    simp [show (93312 * k + 46474) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 23237) = 139968 * k + 69712 := by
    unfold C
    simp [show (46656 * k + 23237) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 69712) = 69984 * k + 34856 := by
    unfold C
    simp [show (139968 * k + 69712) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 34856) = 34992 * k + 17428 := by
    unfold C
    simp [show (69984 * k + 34856) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 17428) = 17496 * k + 8714 := by
    unfold C
    simp [show (34992 * k + 17428) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 8714) = 8748 * k + 4357 := by
    unfold C
    simp [show (17496 * k + 8714) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 4357) = 26244 * k + 13072 := by
    unfold C
    simp [show (8748 * k + 4357) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 13072) = 13122 * k + 6536 := by
    unfold C
    simp [show (26244 * k + 13072) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6536) = 6561 * k + 3268 := by
    unfold C
    simp [show (13122 * k + 6536) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4079) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4079))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4091 : ∀ k : Nat, iterate (8192 * k + 4091) 21 = 6561 * k + 3278 ∧ 6561 * k + 3278 < 8192 * k + 4091 := by
  intro k
  have h1 : C (8192 * k + 4091) = 24576 * k + 12274 := by
    unfold C
    simp [show (8192 * k + 4091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12274) = 12288 * k + 6137 := by
    unfold C
    simp [show (24576 * k + 12274) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6137) = 36864 * k + 18412 := by
    unfold C
    simp [show (12288 * k + 6137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 18412) = 18432 * k + 9206 := by
    unfold C
    simp [show (36864 * k + 18412) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9206) = 9216 * k + 4603 := by
    unfold C
    simp [show (18432 * k + 9206) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 4603) = 27648 * k + 13810 := by
    unfold C
    simp [show (9216 * k + 4603) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 13810) = 13824 * k + 6905 := by
    unfold C
    simp [show (27648 * k + 13810) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 6905) = 41472 * k + 20716 := by
    unfold C
    simp [show (13824 * k + 6905) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 20716) = 20736 * k + 10358 := by
    unfold C
    simp [show (41472 * k + 20716) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 10358) = 10368 * k + 5179 := by
    unfold C
    simp [show (20736 * k + 10358) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 5179) = 31104 * k + 15538 := by
    unfold C
    simp [show (10368 * k + 5179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 15538) = 15552 * k + 7769 := by
    unfold C
    simp [show (31104 * k + 15538) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 7769) = 46656 * k + 23308 := by
    unfold C
    simp [show (15552 * k + 7769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 23308) = 23328 * k + 11654 := by
    unfold C
    simp [show (46656 * k + 23308) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 11654) = 11664 * k + 5827 := by
    unfold C
    simp [show (23328 * k + 11654) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 5827) = 34992 * k + 17482 := by
    unfold C
    simp [show (11664 * k + 5827) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 17482) = 17496 * k + 8741 := by
    unfold C
    simp [show (34992 * k + 17482) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 8741) = 52488 * k + 26224 := by
    unfold C
    simp [show (17496 * k + 8741) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 26224) = 26244 * k + 13112 := by
    unfold C
    simp [show (52488 * k + 26224) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 13112) = 13122 * k + 6556 := by
    unfold C
    simp [show (26244 * k + 13112) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6556) = 6561 * k + 3278 := by
    unfold C
    simp [show (13122 * k + 6556) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4091) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4091))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4159 : ∀ k : Nat, iterate (8192 * k + 4159) 21 = 6561 * k + 3332 ∧ 6561 * k + 3332 < 8192 * k + 4159 := by
  intro k
  have h1 : C (8192 * k + 4159) = 24576 * k + 12478 := by
    unfold C
    simp [show (8192 * k + 4159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12478) = 12288 * k + 6239 := by
    unfold C
    simp [show (24576 * k + 12478) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6239) = 36864 * k + 18718 := by
    unfold C
    simp [show (12288 * k + 6239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 18718) = 18432 * k + 9359 := by
    unfold C
    simp [show (36864 * k + 18718) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9359) = 55296 * k + 28078 := by
    unfold C
    simp [show (18432 * k + 9359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 28078) = 27648 * k + 14039 := by
    unfold C
    simp [show (55296 * k + 28078) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 14039) = 82944 * k + 42118 := by
    unfold C
    simp [show (27648 * k + 14039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 42118) = 41472 * k + 21059 := by
    unfold C
    simp [show (82944 * k + 42118) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 21059) = 124416 * k + 63178 := by
    unfold C
    simp [show (41472 * k + 21059) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 63178) = 62208 * k + 31589 := by
    unfold C
    simp [show (124416 * k + 63178) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 31589) = 186624 * k + 94768 := by
    unfold C
    simp [show (62208 * k + 31589) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 94768) = 93312 * k + 47384 := by
    unfold C
    simp [show (186624 * k + 94768) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 47384) = 46656 * k + 23692 := by
    unfold C
    simp [show (93312 * k + 47384) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 23692) = 23328 * k + 11846 := by
    unfold C
    simp [show (46656 * k + 23692) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 11846) = 11664 * k + 5923 := by
    unfold C
    simp [show (23328 * k + 11846) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 5923) = 34992 * k + 17770 := by
    unfold C
    simp [show (11664 * k + 5923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 17770) = 17496 * k + 8885 := by
    unfold C
    simp [show (34992 * k + 17770) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 8885) = 52488 * k + 26656 := by
    unfold C
    simp [show (17496 * k + 8885) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 26656) = 26244 * k + 13328 := by
    unfold C
    simp [show (52488 * k + 26656) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 13328) = 13122 * k + 6664 := by
    unfold C
    simp [show (26244 * k + 13328) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6664) = 6561 * k + 3332 := by
    unfold C
    simp [show (13122 * k + 6664) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4159) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4159))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4199 : ∀ k : Nat, iterate (8192 * k + 4199) 21 = 6561 * k + 3364 ∧ 6561 * k + 3364 < 8192 * k + 4199 := by
  intro k
  have h1 : C (8192 * k + 4199) = 24576 * k + 12598 := by
    unfold C
    simp [show (8192 * k + 4199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12598) = 12288 * k + 6299 := by
    unfold C
    simp [show (24576 * k + 12598) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6299) = 36864 * k + 18898 := by
    unfold C
    simp [show (12288 * k + 6299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 18898) = 18432 * k + 9449 := by
    unfold C
    simp [show (36864 * k + 18898) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9449) = 55296 * k + 28348 := by
    unfold C
    simp [show (18432 * k + 9449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 28348) = 27648 * k + 14174 := by
    unfold C
    simp [show (55296 * k + 28348) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 14174) = 13824 * k + 7087 := by
    unfold C
    simp [show (27648 * k + 14174) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 7087) = 41472 * k + 21262 := by
    unfold C
    simp [show (13824 * k + 7087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 21262) = 20736 * k + 10631 := by
    unfold C
    simp [show (41472 * k + 21262) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 10631) = 62208 * k + 31894 := by
    unfold C
    simp [show (20736 * k + 10631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 31894) = 31104 * k + 15947 := by
    unfold C
    simp [show (62208 * k + 31894) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 15947) = 93312 * k + 47842 := by
    unfold C
    simp [show (31104 * k + 15947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 47842) = 46656 * k + 23921 := by
    unfold C
    simp [show (93312 * k + 47842) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 23921) = 139968 * k + 71764 := by
    unfold C
    simp [show (46656 * k + 23921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 71764) = 69984 * k + 35882 := by
    unfold C
    simp [show (139968 * k + 71764) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 35882) = 34992 * k + 17941 := by
    unfold C
    simp [show (69984 * k + 35882) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 17941) = 104976 * k + 53824 := by
    unfold C
    simp [show (34992 * k + 17941) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 53824) = 52488 * k + 26912 := by
    unfold C
    simp [show (104976 * k + 53824) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 26912) = 26244 * k + 13456 := by
    unfold C
    simp [show (52488 * k + 26912) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 13456) = 13122 * k + 6728 := by
    unfold C
    simp [show (26244 * k + 13456) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6728) = 6561 * k + 3364 := by
    unfold C
    simp [show (13122 * k + 6728) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4199) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4199))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4223 : ∀ k : Nat, iterate (8192 * k + 4223) 21 = 6561 * k + 3383 ∧ 6561 * k + 3383 < 8192 * k + 4223 := by
  intro k
  have h1 : C (8192 * k + 4223) = 24576 * k + 12670 := by
    unfold C
    simp [show (8192 * k + 4223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12670) = 12288 * k + 6335 := by
    unfold C
    simp [show (24576 * k + 12670) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6335) = 36864 * k + 19006 := by
    unfold C
    simp [show (12288 * k + 6335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 19006) = 18432 * k + 9503 := by
    unfold C
    simp [show (36864 * k + 19006) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9503) = 55296 * k + 28510 := by
    unfold C
    simp [show (18432 * k + 9503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 28510) = 27648 * k + 14255 := by
    unfold C
    simp [show (55296 * k + 28510) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 14255) = 82944 * k + 42766 := by
    unfold C
    simp [show (27648 * k + 14255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 42766) = 41472 * k + 21383 := by
    unfold C
    simp [show (82944 * k + 42766) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 21383) = 124416 * k + 64150 := by
    unfold C
    simp [show (41472 * k + 21383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 64150) = 62208 * k + 32075 := by
    unfold C
    simp [show (124416 * k + 64150) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 32075) = 186624 * k + 96226 := by
    unfold C
    simp [show (62208 * k + 32075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 96226) = 93312 * k + 48113 := by
    unfold C
    simp [show (186624 * k + 96226) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 48113) = 279936 * k + 144340 := by
    unfold C
    simp [show (93312 * k + 48113) % 2 ≠ 0 by omega]
    omega
  have h14 : C (279936 * k + 144340) = 139968 * k + 72170 := by
    unfold C
    simp [show (279936 * k + 144340) % 2 = 0 by omega]
    omega
  have h15 : C (139968 * k + 72170) = 69984 * k + 36085 := by
    unfold C
    simp [show (139968 * k + 72170) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 36085) = 209952 * k + 108256 := by
    unfold C
    simp [show (69984 * k + 36085) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 108256) = 104976 * k + 54128 := by
    unfold C
    simp [show (209952 * k + 108256) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 54128) = 52488 * k + 27064 := by
    unfold C
    simp [show (104976 * k + 54128) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 27064) = 26244 * k + 13532 := by
    unfold C
    simp [show (52488 * k + 27064) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 13532) = 13122 * k + 6766 := by
    unfold C
    simp [show (26244 * k + 13532) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6766) = 6561 * k + 3383 := by
    unfold C
    simp [show (13122 * k + 6766) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4223) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4223))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4251 : ∀ k : Nat, iterate (8192 * k + 4251) 21 = 6561 * k + 3406 ∧ 6561 * k + 3406 < 8192 * k + 4251 := by
  intro k
  have h1 : C (8192 * k + 4251) = 24576 * k + 12754 := by
    unfold C
    simp [show (8192 * k + 4251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 12754) = 12288 * k + 6377 := by
    unfold C
    simp [show (24576 * k + 12754) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6377) = 36864 * k + 19132 := by
    unfold C
    simp [show (12288 * k + 6377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 19132) = 18432 * k + 9566 := by
    unfold C
    simp [show (36864 * k + 19132) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 9566) = 9216 * k + 4783 := by
    unfold C
    simp [show (18432 * k + 9566) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 4783) = 27648 * k + 14350 := by
    unfold C
    simp [show (9216 * k + 4783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 14350) = 13824 * k + 7175 := by
    unfold C
    simp [show (27648 * k + 14350) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 7175) = 41472 * k + 21526 := by
    unfold C
    simp [show (13824 * k + 7175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 21526) = 20736 * k + 10763 := by
    unfold C
    simp [show (41472 * k + 21526) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 10763) = 62208 * k + 32290 := by
    unfold C
    simp [show (20736 * k + 10763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 32290) = 31104 * k + 16145 := by
    unfold C
    simp [show (62208 * k + 32290) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 16145) = 93312 * k + 48436 := by
    unfold C
    simp [show (31104 * k + 16145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 48436) = 46656 * k + 24218 := by
    unfold C
    simp [show (93312 * k + 48436) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 24218) = 23328 * k + 12109 := by
    unfold C
    simp [show (46656 * k + 24218) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 12109) = 69984 * k + 36328 := by
    unfold C
    simp [show (23328 * k + 12109) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 36328) = 34992 * k + 18164 := by
    unfold C
    simp [show (69984 * k + 36328) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 18164) = 17496 * k + 9082 := by
    unfold C
    simp [show (34992 * k + 18164) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 9082) = 8748 * k + 4541 := by
    unfold C
    simp [show (17496 * k + 9082) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 4541) = 26244 * k + 13624 := by
    unfold C
    simp [show (8748 * k + 4541) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 13624) = 13122 * k + 6812 := by
    unfold C
    simp [show (26244 * k + 13624) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 6812) = 6561 * k + 3406 := by
    unfold C
    simp [show (13122 * k + 6812) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4251) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4251))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4455 : ∀ k : Nat, iterate (8192 * k + 4455) 21 = 6561 * k + 3569 ∧ 6561 * k + 3569 < 8192 * k + 4455 := by
  intro k
  have h1 : C (8192 * k + 4455) = 24576 * k + 13366 := by
    unfold C
    simp [show (8192 * k + 4455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 13366) = 12288 * k + 6683 := by
    unfold C
    simp [show (24576 * k + 13366) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6683) = 36864 * k + 20050 := by
    unfold C
    simp [show (12288 * k + 6683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 20050) = 18432 * k + 10025 := by
    unfold C
    simp [show (36864 * k + 20050) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 10025) = 55296 * k + 30076 := by
    unfold C
    simp [show (18432 * k + 10025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 30076) = 27648 * k + 15038 := by
    unfold C
    simp [show (55296 * k + 30076) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 15038) = 13824 * k + 7519 := by
    unfold C
    simp [show (27648 * k + 15038) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 7519) = 41472 * k + 22558 := by
    unfold C
    simp [show (13824 * k + 7519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 22558) = 20736 * k + 11279 := by
    unfold C
    simp [show (41472 * k + 22558) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 11279) = 62208 * k + 33838 := by
    unfold C
    simp [show (20736 * k + 11279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 33838) = 31104 * k + 16919 := by
    unfold C
    simp [show (62208 * k + 33838) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 16919) = 93312 * k + 50758 := by
    unfold C
    simp [show (31104 * k + 16919) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 50758) = 46656 * k + 25379 := by
    unfold C
    simp [show (93312 * k + 50758) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 25379) = 139968 * k + 76138 := by
    unfold C
    simp [show (46656 * k + 25379) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 76138) = 69984 * k + 38069 := by
    unfold C
    simp [show (139968 * k + 76138) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 38069) = 209952 * k + 114208 := by
    unfold C
    simp [show (69984 * k + 38069) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 114208) = 104976 * k + 57104 := by
    unfold C
    simp [show (209952 * k + 114208) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 57104) = 52488 * k + 28552 := by
    unfold C
    simp [show (104976 * k + 57104) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 28552) = 26244 * k + 14276 := by
    unfold C
    simp [show (52488 * k + 28552) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 14276) = 13122 * k + 7138 := by
    unfold C
    simp [show (26244 * k + 14276) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 7138) = 6561 * k + 3569 := by
    unfold C
    simp [show (13122 * k + 7138) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4455) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4455))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4507 : ∀ k : Nat, iterate (8192 * k + 4507) 21 = 6561 * k + 3611 ∧ 6561 * k + 3611 < 8192 * k + 4507 := by
  intro k
  have h1 : C (8192 * k + 4507) = 24576 * k + 13522 := by
    unfold C
    simp [show (8192 * k + 4507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 13522) = 12288 * k + 6761 := by
    unfold C
    simp [show (24576 * k + 13522) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 6761) = 36864 * k + 20284 := by
    unfold C
    simp [show (12288 * k + 6761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 20284) = 18432 * k + 10142 := by
    unfold C
    simp [show (36864 * k + 20284) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 10142) = 9216 * k + 5071 := by
    unfold C
    simp [show (18432 * k + 10142) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 5071) = 27648 * k + 15214 := by
    unfold C
    simp [show (9216 * k + 5071) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 15214) = 13824 * k + 7607 := by
    unfold C
    simp [show (27648 * k + 15214) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 7607) = 41472 * k + 22822 := by
    unfold C
    simp [show (13824 * k + 7607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 22822) = 20736 * k + 11411 := by
    unfold C
    simp [show (41472 * k + 22822) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 11411) = 62208 * k + 34234 := by
    unfold C
    simp [show (20736 * k + 11411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 34234) = 31104 * k + 17117 := by
    unfold C
    simp [show (62208 * k + 34234) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 17117) = 93312 * k + 51352 := by
    unfold C
    simp [show (31104 * k + 17117) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 51352) = 46656 * k + 25676 := by
    unfold C
    simp [show (93312 * k + 51352) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 25676) = 23328 * k + 12838 := by
    unfold C
    simp [show (46656 * k + 25676) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 12838) = 11664 * k + 6419 := by
    unfold C
    simp [show (23328 * k + 12838) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 6419) = 34992 * k + 19258 := by
    unfold C
    simp [show (11664 * k + 6419) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 19258) = 17496 * k + 9629 := by
    unfold C
    simp [show (34992 * k + 19258) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 9629) = 52488 * k + 28888 := by
    unfold C
    simp [show (17496 * k + 9629) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 28888) = 26244 * k + 14444 := by
    unfold C
    simp [show (52488 * k + 28888) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 14444) = 13122 * k + 7222 := by
    unfold C
    simp [show (26244 * k + 14444) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 7222) = 6561 * k + 3611 := by
    unfold C
    simp [show (13122 * k + 7222) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4507) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4507))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4859 : ∀ k : Nat, iterate (8192 * k + 4859) 21 = 6561 * k + 3893 ∧ 6561 * k + 3893 < 8192 * k + 4859 := by
  intro k
  have h1 : C (8192 * k + 4859) = 24576 * k + 14578 := by
    unfold C
    simp [show (8192 * k + 4859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 14578) = 12288 * k + 7289 := by
    unfold C
    simp [show (24576 * k + 14578) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7289) = 36864 * k + 21868 := by
    unfold C
    simp [show (12288 * k + 7289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 21868) = 18432 * k + 10934 := by
    unfold C
    simp [show (36864 * k + 21868) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 10934) = 9216 * k + 5467 := by
    unfold C
    simp [show (18432 * k + 10934) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 5467) = 27648 * k + 16402 := by
    unfold C
    simp [show (9216 * k + 5467) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 16402) = 13824 * k + 8201 := by
    unfold C
    simp [show (27648 * k + 16402) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 8201) = 41472 * k + 24604 := by
    unfold C
    simp [show (13824 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 24604) = 20736 * k + 12302 := by
    unfold C
    simp [show (41472 * k + 24604) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 12302) = 10368 * k + 6151 := by
    unfold C
    simp [show (20736 * k + 12302) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 6151) = 31104 * k + 18454 := by
    unfold C
    simp [show (10368 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 18454) = 15552 * k + 9227 := by
    unfold C
    simp [show (31104 * k + 18454) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 9227) = 46656 * k + 27682 := by
    unfold C
    simp [show (15552 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 27682) = 23328 * k + 13841 := by
    unfold C
    simp [show (46656 * k + 27682) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 13841) = 69984 * k + 41524 := by
    unfold C
    simp [show (23328 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 41524) = 34992 * k + 20762 := by
    unfold C
    simp [show (69984 * k + 41524) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 20762) = 17496 * k + 10381 := by
    unfold C
    simp [show (34992 * k + 20762) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 10381) = 52488 * k + 31144 := by
    unfold C
    simp [show (17496 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 31144) = 26244 * k + 15572 := by
    unfold C
    simp [show (52488 * k + 31144) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 15572) = 13122 * k + 7786 := by
    unfold C
    simp [show (26244 * k + 15572) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 7786) = 6561 * k + 3893 := by
    unfold C
    simp [show (13122 * k + 7786) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4859) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4859))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4927 : ∀ k : Nat, iterate (8192 * k + 4927) 21 = 6561 * k + 3947 ∧ 6561 * k + 3947 < 8192 * k + 4927 := by
  intro k
  have h1 : C (8192 * k + 4927) = 24576 * k + 14782 := by
    unfold C
    simp [show (8192 * k + 4927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 14782) = 12288 * k + 7391 := by
    unfold C
    simp [show (24576 * k + 14782) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7391) = 36864 * k + 22174 := by
    unfold C
    simp [show (12288 * k + 7391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 22174) = 18432 * k + 11087 := by
    unfold C
    simp [show (36864 * k + 22174) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11087) = 55296 * k + 33262 := by
    unfold C
    simp [show (18432 * k + 11087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 33262) = 27648 * k + 16631 := by
    unfold C
    simp [show (55296 * k + 33262) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 16631) = 82944 * k + 49894 := by
    unfold C
    simp [show (27648 * k + 16631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 49894) = 41472 * k + 24947 := by
    unfold C
    simp [show (82944 * k + 49894) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 24947) = 124416 * k + 74842 := by
    unfold C
    simp [show (41472 * k + 24947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 74842) = 62208 * k + 37421 := by
    unfold C
    simp [show (124416 * k + 74842) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 37421) = 186624 * k + 112264 := by
    unfold C
    simp [show (62208 * k + 37421) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 112264) = 93312 * k + 56132 := by
    unfold C
    simp [show (186624 * k + 112264) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 56132) = 46656 * k + 28066 := by
    unfold C
    simp [show (93312 * k + 56132) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 28066) = 23328 * k + 14033 := by
    unfold C
    simp [show (46656 * k + 28066) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 14033) = 69984 * k + 42100 := by
    unfold C
    simp [show (23328 * k + 14033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 42100) = 34992 * k + 21050 := by
    unfold C
    simp [show (69984 * k + 42100) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 21050) = 17496 * k + 10525 := by
    unfold C
    simp [show (34992 * k + 21050) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 10525) = 52488 * k + 31576 := by
    unfold C
    simp [show (17496 * k + 10525) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 31576) = 26244 * k + 15788 := by
    unfold C
    simp [show (52488 * k + 31576) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 15788) = 13122 * k + 7894 := by
    unfold C
    simp [show (26244 * k + 15788) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 7894) = 6561 * k + 3947 := by
    unfold C
    simp [show (13122 * k + 7894) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4927) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4927))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_4955 : ∀ k : Nat, iterate (8192 * k + 4955) 21 = 6561 * k + 3970 ∧ 6561 * k + 3970 < 8192 * k + 4955 := by
  intro k
  have h1 : C (8192 * k + 4955) = 24576 * k + 14866 := by
    unfold C
    simp [show (8192 * k + 4955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 14866) = 12288 * k + 7433 := by
    unfold C
    simp [show (24576 * k + 14866) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7433) = 36864 * k + 22300 := by
    unfold C
    simp [show (12288 * k + 7433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 22300) = 18432 * k + 11150 := by
    unfold C
    simp [show (36864 * k + 22300) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11150) = 9216 * k + 5575 := by
    unfold C
    simp [show (18432 * k + 11150) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 5575) = 27648 * k + 16726 := by
    unfold C
    simp [show (9216 * k + 5575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 16726) = 13824 * k + 8363 := by
    unfold C
    simp [show (27648 * k + 16726) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 8363) = 41472 * k + 25090 := by
    unfold C
    simp [show (13824 * k + 8363) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 25090) = 20736 * k + 12545 := by
    unfold C
    simp [show (41472 * k + 25090) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 12545) = 62208 * k + 37636 := by
    unfold C
    simp [show (20736 * k + 12545) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 37636) = 31104 * k + 18818 := by
    unfold C
    simp [show (62208 * k + 37636) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 18818) = 15552 * k + 9409 := by
    unfold C
    simp [show (31104 * k + 18818) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 9409) = 46656 * k + 28228 := by
    unfold C
    simp [show (15552 * k + 9409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 28228) = 23328 * k + 14114 := by
    unfold C
    simp [show (46656 * k + 28228) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 14114) = 11664 * k + 7057 := by
    unfold C
    simp [show (23328 * k + 14114) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 7057) = 34992 * k + 21172 := by
    unfold C
    simp [show (11664 * k + 7057) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 21172) = 17496 * k + 10586 := by
    unfold C
    simp [show (34992 * k + 21172) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 10586) = 8748 * k + 5293 := by
    unfold C
    simp [show (17496 * k + 10586) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 5293) = 26244 * k + 15880 := by
    unfold C
    simp [show (8748 * k + 5293) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 15880) = 13122 * k + 7940 := by
    unfold C
    simp [show (26244 * k + 15880) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 7940) = 6561 * k + 3970 := by
    unfold C
    simp [show (13122 * k + 7940) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 4955) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 4955))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5023 : ∀ k : Nat, iterate (8192 * k + 5023) 21 = 6561 * k + 4024 ∧ 6561 * k + 4024 < 8192 * k + 5023 := by
  intro k
  have h1 : C (8192 * k + 5023) = 24576 * k + 15070 := by
    unfold C
    simp [show (8192 * k + 5023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 15070) = 12288 * k + 7535 := by
    unfold C
    simp [show (24576 * k + 15070) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7535) = 36864 * k + 22606 := by
    unfold C
    simp [show (12288 * k + 7535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 22606) = 18432 * k + 11303 := by
    unfold C
    simp [show (36864 * k + 22606) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11303) = 55296 * k + 33910 := by
    unfold C
    simp [show (18432 * k + 11303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 33910) = 27648 * k + 16955 := by
    unfold C
    simp [show (55296 * k + 33910) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 16955) = 82944 * k + 50866 := by
    unfold C
    simp [show (27648 * k + 16955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 50866) = 41472 * k + 25433 := by
    unfold C
    simp [show (82944 * k + 50866) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 25433) = 124416 * k + 76300 := by
    unfold C
    simp [show (41472 * k + 25433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 76300) = 62208 * k + 38150 := by
    unfold C
    simp [show (124416 * k + 76300) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 38150) = 31104 * k + 19075 := by
    unfold C
    simp [show (62208 * k + 38150) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 19075) = 93312 * k + 57226 := by
    unfold C
    simp [show (31104 * k + 19075) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 57226) = 46656 * k + 28613 := by
    unfold C
    simp [show (93312 * k + 57226) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 28613) = 139968 * k + 85840 := by
    unfold C
    simp [show (46656 * k + 28613) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 85840) = 69984 * k + 42920 := by
    unfold C
    simp [show (139968 * k + 85840) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 42920) = 34992 * k + 21460 := by
    unfold C
    simp [show (69984 * k + 42920) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 21460) = 17496 * k + 10730 := by
    unfold C
    simp [show (34992 * k + 21460) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 10730) = 8748 * k + 5365 := by
    unfold C
    simp [show (17496 * k + 10730) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 5365) = 26244 * k + 16096 := by
    unfold C
    simp [show (8748 * k + 5365) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 16096) = 13122 * k + 8048 := by
    unfold C
    simp [show (26244 * k + 16096) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8048) = 6561 * k + 4024 := by
    unfold C
    simp [show (13122 * k + 8048) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5023) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5023))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5103 : ∀ k : Nat, iterate (8192 * k + 5103) 21 = 6561 * k + 4088 ∧ 6561 * k + 4088 < 8192 * k + 5103 := by
  intro k
  have h1 : C (8192 * k + 5103) = 24576 * k + 15310 := by
    unfold C
    simp [show (8192 * k + 5103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 15310) = 12288 * k + 7655 := by
    unfold C
    simp [show (24576 * k + 15310) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7655) = 36864 * k + 22966 := by
    unfold C
    simp [show (12288 * k + 7655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 22966) = 18432 * k + 11483 := by
    unfold C
    simp [show (36864 * k + 22966) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11483) = 55296 * k + 34450 := by
    unfold C
    simp [show (18432 * k + 11483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 34450) = 27648 * k + 17225 := by
    unfold C
    simp [show (55296 * k + 34450) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 17225) = 82944 * k + 51676 := by
    unfold C
    simp [show (27648 * k + 17225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 51676) = 41472 * k + 25838 := by
    unfold C
    simp [show (82944 * k + 51676) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 25838) = 20736 * k + 12919 := by
    unfold C
    simp [show (41472 * k + 25838) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 12919) = 62208 * k + 38758 := by
    unfold C
    simp [show (20736 * k + 12919) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 38758) = 31104 * k + 19379 := by
    unfold C
    simp [show (62208 * k + 38758) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 19379) = 93312 * k + 58138 := by
    unfold C
    simp [show (31104 * k + 19379) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 58138) = 46656 * k + 29069 := by
    unfold C
    simp [show (93312 * k + 58138) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 29069) = 139968 * k + 87208 := by
    unfold C
    simp [show (46656 * k + 29069) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 87208) = 69984 * k + 43604 := by
    unfold C
    simp [show (139968 * k + 87208) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 43604) = 34992 * k + 21802 := by
    unfold C
    simp [show (69984 * k + 43604) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 21802) = 17496 * k + 10901 := by
    unfold C
    simp [show (34992 * k + 21802) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 10901) = 52488 * k + 32704 := by
    unfold C
    simp [show (17496 * k + 10901) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 32704) = 26244 * k + 16352 := by
    unfold C
    simp [show (52488 * k + 32704) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 16352) = 13122 * k + 8176 := by
    unfold C
    simp [show (26244 * k + 16352) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8176) = 6561 * k + 4088 := by
    unfold C
    simp [show (13122 * k + 8176) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5103) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5103))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5191 : ∀ k : Nat, iterate (8192 * k + 5191) 21 = 6561 * k + 4159 ∧ 6561 * k + 4159 < 8192 * k + 5191 := by
  intro k
  have h1 : C (8192 * k + 5191) = 24576 * k + 15574 := by
    unfold C
    simp [show (8192 * k + 5191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 15574) = 12288 * k + 7787 := by
    unfold C
    simp [show (24576 * k + 15574) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7787) = 36864 * k + 23362 := by
    unfold C
    simp [show (12288 * k + 7787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 23362) = 18432 * k + 11681 := by
    unfold C
    simp [show (36864 * k + 23362) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11681) = 55296 * k + 35044 := by
    unfold C
    simp [show (18432 * k + 11681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 35044) = 27648 * k + 17522 := by
    unfold C
    simp [show (55296 * k + 35044) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 17522) = 13824 * k + 8761 := by
    unfold C
    simp [show (27648 * k + 17522) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 8761) = 41472 * k + 26284 := by
    unfold C
    simp [show (13824 * k + 8761) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 26284) = 20736 * k + 13142 := by
    unfold C
    simp [show (41472 * k + 26284) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 13142) = 10368 * k + 6571 := by
    unfold C
    simp [show (20736 * k + 13142) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 6571) = 31104 * k + 19714 := by
    unfold C
    simp [show (10368 * k + 6571) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 19714) = 15552 * k + 9857 := by
    unfold C
    simp [show (31104 * k + 19714) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 9857) = 46656 * k + 29572 := by
    unfold C
    simp [show (15552 * k + 9857) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 29572) = 23328 * k + 14786 := by
    unfold C
    simp [show (46656 * k + 29572) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 14786) = 11664 * k + 7393 := by
    unfold C
    simp [show (23328 * k + 14786) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 7393) = 34992 * k + 22180 := by
    unfold C
    simp [show (11664 * k + 7393) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 22180) = 17496 * k + 11090 := by
    unfold C
    simp [show (34992 * k + 22180) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 11090) = 8748 * k + 5545 := by
    unfold C
    simp [show (17496 * k + 11090) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 5545) = 26244 * k + 16636 := by
    unfold C
    simp [show (8748 * k + 5545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 16636) = 13122 * k + 8318 := by
    unfold C
    simp [show (26244 * k + 16636) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8318) = 6561 * k + 4159 := by
    unfold C
    simp [show (13122 * k + 8318) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5191) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5191))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5275 : ∀ k : Nat, iterate (8192 * k + 5275) 21 = 6561 * k + 4226 ∧ 6561 * k + 4226 < 8192 * k + 5275 := by
  intro k
  have h1 : C (8192 * k + 5275) = 24576 * k + 15826 := by
    unfold C
    simp [show (8192 * k + 5275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 15826) = 12288 * k + 7913 := by
    unfold C
    simp [show (24576 * k + 15826) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 7913) = 36864 * k + 23740 := by
    unfold C
    simp [show (12288 * k + 7913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 23740) = 18432 * k + 11870 := by
    unfold C
    simp [show (36864 * k + 23740) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 11870) = 9216 * k + 5935 := by
    unfold C
    simp [show (18432 * k + 11870) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 5935) = 27648 * k + 17806 := by
    unfold C
    simp [show (9216 * k + 5935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 17806) = 13824 * k + 8903 := by
    unfold C
    simp [show (27648 * k + 17806) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 8903) = 41472 * k + 26710 := by
    unfold C
    simp [show (13824 * k + 8903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 26710) = 20736 * k + 13355 := by
    unfold C
    simp [show (41472 * k + 26710) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 13355) = 62208 * k + 40066 := by
    unfold C
    simp [show (20736 * k + 13355) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 40066) = 31104 * k + 20033 := by
    unfold C
    simp [show (62208 * k + 40066) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 20033) = 93312 * k + 60100 := by
    unfold C
    simp [show (31104 * k + 20033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 60100) = 46656 * k + 30050 := by
    unfold C
    simp [show (93312 * k + 60100) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 30050) = 23328 * k + 15025 := by
    unfold C
    simp [show (46656 * k + 30050) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 15025) = 69984 * k + 45076 := by
    unfold C
    simp [show (23328 * k + 15025) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 45076) = 34992 * k + 22538 := by
    unfold C
    simp [show (69984 * k + 45076) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 22538) = 17496 * k + 11269 := by
    unfold C
    simp [show (34992 * k + 22538) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 11269) = 52488 * k + 33808 := by
    unfold C
    simp [show (17496 * k + 11269) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 33808) = 26244 * k + 16904 := by
    unfold C
    simp [show (52488 * k + 33808) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 16904) = 13122 * k + 8452 := by
    unfold C
    simp [show (26244 * k + 16904) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8452) = 6561 * k + 4226 := by
    unfold C
    simp [show (13122 * k + 8452) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5275) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5275))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5371 : ∀ k : Nat, iterate (8192 * k + 5371) 21 = 6561 * k + 4303 ∧ 6561 * k + 4303 < 8192 * k + 5371 := by
  intro k
  have h1 : C (8192 * k + 5371) = 24576 * k + 16114 := by
    unfold C
    simp [show (8192 * k + 5371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 16114) = 12288 * k + 8057 := by
    unfold C
    simp [show (24576 * k + 16114) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8057) = 36864 * k + 24172 := by
    unfold C
    simp [show (12288 * k + 8057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 24172) = 18432 * k + 12086 := by
    unfold C
    simp [show (36864 * k + 24172) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 12086) = 9216 * k + 6043 := by
    unfold C
    simp [show (18432 * k + 12086) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 6043) = 27648 * k + 18130 := by
    unfold C
    simp [show (9216 * k + 6043) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 18130) = 13824 * k + 9065 := by
    unfold C
    simp [show (27648 * k + 18130) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 9065) = 41472 * k + 27196 := by
    unfold C
    simp [show (13824 * k + 9065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 27196) = 20736 * k + 13598 := by
    unfold C
    simp [show (41472 * k + 27196) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 13598) = 10368 * k + 6799 := by
    unfold C
    simp [show (20736 * k + 13598) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 6799) = 31104 * k + 20398 := by
    unfold C
    simp [show (10368 * k + 6799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 20398) = 15552 * k + 10199 := by
    unfold C
    simp [show (31104 * k + 20398) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 10199) = 46656 * k + 30598 := by
    unfold C
    simp [show (15552 * k + 10199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 30598) = 23328 * k + 15299 := by
    unfold C
    simp [show (46656 * k + 30598) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 15299) = 69984 * k + 45898 := by
    unfold C
    simp [show (23328 * k + 15299) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 45898) = 34992 * k + 22949 := by
    unfold C
    simp [show (69984 * k + 45898) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 22949) = 104976 * k + 68848 := by
    unfold C
    simp [show (34992 * k + 22949) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 68848) = 52488 * k + 34424 := by
    unfold C
    simp [show (104976 * k + 68848) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 34424) = 26244 * k + 17212 := by
    unfold C
    simp [show (52488 * k + 34424) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 17212) = 13122 * k + 8606 := by
    unfold C
    simp [show (26244 * k + 17212) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8606) = 6561 * k + 4303 := by
    unfold C
    simp [show (13122 * k + 8606) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5371) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5371))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5439 : ∀ k : Nat, iterate (8192 * k + 5439) 21 = 6561 * k + 4357 ∧ 6561 * k + 4357 < 8192 * k + 5439 := by
  intro k
  have h1 : C (8192 * k + 5439) = 24576 * k + 16318 := by
    unfold C
    simp [show (8192 * k + 5439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 16318) = 12288 * k + 8159 := by
    unfold C
    simp [show (24576 * k + 16318) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8159) = 36864 * k + 24478 := by
    unfold C
    simp [show (12288 * k + 8159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 24478) = 18432 * k + 12239 := by
    unfold C
    simp [show (36864 * k + 24478) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 12239) = 55296 * k + 36718 := by
    unfold C
    simp [show (18432 * k + 12239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 36718) = 27648 * k + 18359 := by
    unfold C
    simp [show (55296 * k + 36718) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 18359) = 82944 * k + 55078 := by
    unfold C
    simp [show (27648 * k + 18359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 55078) = 41472 * k + 27539 := by
    unfold C
    simp [show (82944 * k + 55078) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 27539) = 124416 * k + 82618 := by
    unfold C
    simp [show (41472 * k + 27539) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 82618) = 62208 * k + 41309 := by
    unfold C
    simp [show (124416 * k + 82618) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 41309) = 186624 * k + 123928 := by
    unfold C
    simp [show (62208 * k + 41309) % 2 ≠ 0 by omega]
    omega
  have h12 : C (186624 * k + 123928) = 93312 * k + 61964 := by
    unfold C
    simp [show (186624 * k + 123928) % 2 = 0 by omega]
    omega
  have h13 : C (93312 * k + 61964) = 46656 * k + 30982 := by
    unfold C
    simp [show (93312 * k + 61964) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 30982) = 23328 * k + 15491 := by
    unfold C
    simp [show (46656 * k + 30982) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 15491) = 69984 * k + 46474 := by
    unfold C
    simp [show (23328 * k + 15491) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 46474) = 34992 * k + 23237 := by
    unfold C
    simp [show (69984 * k + 46474) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 23237) = 104976 * k + 69712 := by
    unfold C
    simp [show (34992 * k + 23237) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 69712) = 52488 * k + 34856 := by
    unfold C
    simp [show (104976 * k + 69712) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 34856) = 26244 * k + 17428 := by
    unfold C
    simp [show (52488 * k + 34856) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 17428) = 13122 * k + 8714 := by
    unfold C
    simp [show (26244 * k + 17428) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8714) = 6561 * k + 4357 := by
    unfold C
    simp [show (13122 * k + 8714) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5439) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5439))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5607 : ∀ k : Nat, iterate (8192 * k + 5607) 21 = 6561 * k + 4492 ∧ 6561 * k + 4492 < 8192 * k + 5607 := by
  intro k
  have h1 : C (8192 * k + 5607) = 24576 * k + 16822 := by
    unfold C
    simp [show (8192 * k + 5607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 16822) = 12288 * k + 8411 := by
    unfold C
    simp [show (24576 * k + 16822) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8411) = 36864 * k + 25234 := by
    unfold C
    simp [show (12288 * k + 8411) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 25234) = 18432 * k + 12617 := by
    unfold C
    simp [show (36864 * k + 25234) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 12617) = 55296 * k + 37852 := by
    unfold C
    simp [show (18432 * k + 12617) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 37852) = 27648 * k + 18926 := by
    unfold C
    simp [show (55296 * k + 37852) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 18926) = 13824 * k + 9463 := by
    unfold C
    simp [show (27648 * k + 18926) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 9463) = 41472 * k + 28390 := by
    unfold C
    simp [show (13824 * k + 9463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 28390) = 20736 * k + 14195 := by
    unfold C
    simp [show (41472 * k + 28390) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 14195) = 62208 * k + 42586 := by
    unfold C
    simp [show (20736 * k + 14195) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 42586) = 31104 * k + 21293 := by
    unfold C
    simp [show (62208 * k + 42586) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 21293) = 93312 * k + 63880 := by
    unfold C
    simp [show (31104 * k + 21293) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 63880) = 46656 * k + 31940 := by
    unfold C
    simp [show (93312 * k + 63880) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 31940) = 23328 * k + 15970 := by
    unfold C
    simp [show (46656 * k + 31940) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 15970) = 11664 * k + 7985 := by
    unfold C
    simp [show (23328 * k + 15970) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 7985) = 34992 * k + 23956 := by
    unfold C
    simp [show (11664 * k + 7985) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 23956) = 17496 * k + 11978 := by
    unfold C
    simp [show (34992 * k + 23956) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 11978) = 8748 * k + 5989 := by
    unfold C
    simp [show (17496 * k + 11978) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 5989) = 26244 * k + 17968 := by
    unfold C
    simp [show (8748 * k + 5989) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 17968) = 13122 * k + 8984 := by
    unfold C
    simp [show (26244 * k + 17968) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8984) = 6561 * k + 4492 := by
    unfold C
    simp [show (13122 * k + 8984) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5607) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5607))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5615 : ∀ k : Nat, iterate (8192 * k + 5615) 21 = 6561 * k + 4498 ∧ 6561 * k + 4498 < 8192 * k + 5615 := by
  intro k
  have h1 : C (8192 * k + 5615) = 24576 * k + 16846 := by
    unfold C
    simp [show (8192 * k + 5615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 16846) = 12288 * k + 8423 := by
    unfold C
    simp [show (24576 * k + 16846) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8423) = 36864 * k + 25270 := by
    unfold C
    simp [show (12288 * k + 8423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 25270) = 18432 * k + 12635 := by
    unfold C
    simp [show (36864 * k + 25270) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 12635) = 55296 * k + 37906 := by
    unfold C
    simp [show (18432 * k + 12635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 37906) = 27648 * k + 18953 := by
    unfold C
    simp [show (55296 * k + 37906) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 18953) = 82944 * k + 56860 := by
    unfold C
    simp [show (27648 * k + 18953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 56860) = 41472 * k + 28430 := by
    unfold C
    simp [show (82944 * k + 56860) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 28430) = 20736 * k + 14215 := by
    unfold C
    simp [show (41472 * k + 28430) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 14215) = 62208 * k + 42646 := by
    unfold C
    simp [show (20736 * k + 14215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 42646) = 31104 * k + 21323 := by
    unfold C
    simp [show (62208 * k + 42646) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 21323) = 93312 * k + 63970 := by
    unfold C
    simp [show (31104 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 63970) = 46656 * k + 31985 := by
    unfold C
    simp [show (93312 * k + 63970) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 31985) = 139968 * k + 95956 := by
    unfold C
    simp [show (46656 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 95956) = 69984 * k + 47978 := by
    unfold C
    simp [show (139968 * k + 95956) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 47978) = 34992 * k + 23989 := by
    unfold C
    simp [show (69984 * k + 47978) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 23989) = 104976 * k + 71968 := by
    unfold C
    simp [show (34992 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 71968) = 52488 * k + 35984 := by
    unfold C
    simp [show (104976 * k + 71968) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 35984) = 26244 * k + 17992 := by
    unfold C
    simp [show (52488 * k + 35984) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 17992) = 13122 * k + 8996 := by
    unfold C
    simp [show (26244 * k + 17992) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 8996) = 6561 * k + 4498 := by
    unfold C
    simp [show (13122 * k + 8996) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5615) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5615))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5723 : ∀ k : Nat, iterate (8192 * k + 5723) 21 = 6561 * k + 4585 ∧ 6561 * k + 4585 < 8192 * k + 5723 := by
  intro k
  have h1 : C (8192 * k + 5723) = 24576 * k + 17170 := by
    unfold C
    simp [show (8192 * k + 5723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 17170) = 12288 * k + 8585 := by
    unfold C
    simp [show (24576 * k + 17170) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8585) = 36864 * k + 25756 := by
    unfold C
    simp [show (12288 * k + 8585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 25756) = 18432 * k + 12878 := by
    unfold C
    simp [show (36864 * k + 25756) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 12878) = 9216 * k + 6439 := by
    unfold C
    simp [show (18432 * k + 12878) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 6439) = 27648 * k + 19318 := by
    unfold C
    simp [show (9216 * k + 6439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 19318) = 13824 * k + 9659 := by
    unfold C
    simp [show (27648 * k + 19318) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 9659) = 41472 * k + 28978 := by
    unfold C
    simp [show (13824 * k + 9659) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 28978) = 20736 * k + 14489 := by
    unfold C
    simp [show (41472 * k + 28978) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 14489) = 62208 * k + 43468 := by
    unfold C
    simp [show (20736 * k + 14489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 43468) = 31104 * k + 21734 := by
    unfold C
    simp [show (62208 * k + 43468) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 21734) = 15552 * k + 10867 := by
    unfold C
    simp [show (31104 * k + 21734) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 10867) = 46656 * k + 32602 := by
    unfold C
    simp [show (15552 * k + 10867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 32602) = 23328 * k + 16301 := by
    unfold C
    simp [show (46656 * k + 32602) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 16301) = 69984 * k + 48904 := by
    unfold C
    simp [show (23328 * k + 16301) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 48904) = 34992 * k + 24452 := by
    unfold C
    simp [show (69984 * k + 48904) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 24452) = 17496 * k + 12226 := by
    unfold C
    simp [show (34992 * k + 24452) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 12226) = 8748 * k + 6113 := by
    unfold C
    simp [show (17496 * k + 12226) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 6113) = 26244 * k + 18340 := by
    unfold C
    simp [show (8748 * k + 6113) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 18340) = 13122 * k + 9170 := by
    unfold C
    simp [show (26244 * k + 18340) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9170) = 6561 * k + 4585 := by
    unfold C
    simp [show (13122 * k + 9170) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5723) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5723))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5787 : ∀ k : Nat, iterate (8192 * k + 5787) 21 = 6561 * k + 4636 ∧ 6561 * k + 4636 < 8192 * k + 5787 := by
  intro k
  have h1 : C (8192 * k + 5787) = 24576 * k + 17362 := by
    unfold C
    simp [show (8192 * k + 5787) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 17362) = 12288 * k + 8681 := by
    unfold C
    simp [show (24576 * k + 17362) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8681) = 36864 * k + 26044 := by
    unfold C
    simp [show (12288 * k + 8681) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 26044) = 18432 * k + 13022 := by
    unfold C
    simp [show (36864 * k + 26044) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13022) = 9216 * k + 6511 := by
    unfold C
    simp [show (18432 * k + 13022) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 6511) = 27648 * k + 19534 := by
    unfold C
    simp [show (9216 * k + 6511) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 19534) = 13824 * k + 9767 := by
    unfold C
    simp [show (27648 * k + 19534) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 9767) = 41472 * k + 29302 := by
    unfold C
    simp [show (13824 * k + 9767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 29302) = 20736 * k + 14651 := by
    unfold C
    simp [show (41472 * k + 29302) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 14651) = 62208 * k + 43954 := by
    unfold C
    simp [show (20736 * k + 14651) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 43954) = 31104 * k + 21977 := by
    unfold C
    simp [show (62208 * k + 43954) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 21977) = 93312 * k + 65932 := by
    unfold C
    simp [show (31104 * k + 21977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 65932) = 46656 * k + 32966 := by
    unfold C
    simp [show (93312 * k + 65932) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 32966) = 23328 * k + 16483 := by
    unfold C
    simp [show (46656 * k + 32966) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 16483) = 69984 * k + 49450 := by
    unfold C
    simp [show (23328 * k + 16483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 49450) = 34992 * k + 24725 := by
    unfold C
    simp [show (69984 * k + 49450) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 24725) = 104976 * k + 74176 := by
    unfold C
    simp [show (34992 * k + 24725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 74176) = 52488 * k + 37088 := by
    unfold C
    simp [show (104976 * k + 74176) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 37088) = 26244 * k + 18544 := by
    unfold C
    simp [show (52488 * k + 37088) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 18544) = 13122 * k + 9272 := by
    unfold C
    simp [show (26244 * k + 18544) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9272) = 6561 * k + 4636 := by
    unfold C
    simp [show (13122 * k + 9272) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5787) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5787))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5871 : ∀ k : Nat, iterate (8192 * k + 5871) 21 = 6561 * k + 4703 ∧ 6561 * k + 4703 < 8192 * k + 5871 := by
  intro k
  have h1 : C (8192 * k + 5871) = 24576 * k + 17614 := by
    unfold C
    simp [show (8192 * k + 5871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 17614) = 12288 * k + 8807 := by
    unfold C
    simp [show (24576 * k + 17614) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8807) = 36864 * k + 26422 := by
    unfold C
    simp [show (12288 * k + 8807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 26422) = 18432 * k + 13211 := by
    unfold C
    simp [show (36864 * k + 26422) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13211) = 55296 * k + 39634 := by
    unfold C
    simp [show (18432 * k + 13211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 39634) = 27648 * k + 19817 := by
    unfold C
    simp [show (55296 * k + 39634) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 19817) = 82944 * k + 59452 := by
    unfold C
    simp [show (27648 * k + 19817) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 59452) = 41472 * k + 29726 := by
    unfold C
    simp [show (82944 * k + 59452) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 29726) = 20736 * k + 14863 := by
    unfold C
    simp [show (41472 * k + 29726) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 14863) = 62208 * k + 44590 := by
    unfold C
    simp [show (20736 * k + 14863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 44590) = 31104 * k + 22295 := by
    unfold C
    simp [show (62208 * k + 44590) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 22295) = 93312 * k + 66886 := by
    unfold C
    simp [show (31104 * k + 22295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 66886) = 46656 * k + 33443 := by
    unfold C
    simp [show (93312 * k + 66886) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 33443) = 139968 * k + 100330 := by
    unfold C
    simp [show (46656 * k + 33443) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 100330) = 69984 * k + 50165 := by
    unfold C
    simp [show (139968 * k + 100330) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 50165) = 209952 * k + 150496 := by
    unfold C
    simp [show (69984 * k + 50165) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 150496) = 104976 * k + 75248 := by
    unfold C
    simp [show (209952 * k + 150496) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 75248) = 52488 * k + 37624 := by
    unfold C
    simp [show (104976 * k + 75248) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 37624) = 26244 * k + 18812 := by
    unfold C
    simp [show (52488 * k + 37624) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 18812) = 13122 * k + 9406 := by
    unfold C
    simp [show (26244 * k + 18812) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9406) = 6561 * k + 4703 := by
    unfold C
    simp [show (13122 * k + 9406) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5871) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5871))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5959 : ∀ k : Nat, iterate (8192 * k + 5959) 21 = 6561 * k + 4774 ∧ 6561 * k + 4774 < 8192 * k + 5959 := by
  intro k
  have h1 : C (8192 * k + 5959) = 24576 * k + 17878 := by
    unfold C
    simp [show (8192 * k + 5959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 17878) = 12288 * k + 8939 := by
    unfold C
    simp [show (24576 * k + 17878) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8939) = 36864 * k + 26818 := by
    unfold C
    simp [show (12288 * k + 8939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 26818) = 18432 * k + 13409 := by
    unfold C
    simp [show (36864 * k + 26818) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13409) = 55296 * k + 40228 := by
    unfold C
    simp [show (18432 * k + 13409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 40228) = 27648 * k + 20114 := by
    unfold C
    simp [show (55296 * k + 40228) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 20114) = 13824 * k + 10057 := by
    unfold C
    simp [show (27648 * k + 20114) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 10057) = 41472 * k + 30172 := by
    unfold C
    simp [show (13824 * k + 10057) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 30172) = 20736 * k + 15086 := by
    unfold C
    simp [show (41472 * k + 30172) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 15086) = 10368 * k + 7543 := by
    unfold C
    simp [show (20736 * k + 15086) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 7543) = 31104 * k + 22630 := by
    unfold C
    simp [show (10368 * k + 7543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 22630) = 15552 * k + 11315 := by
    unfold C
    simp [show (31104 * k + 22630) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 11315) = 46656 * k + 33946 := by
    unfold C
    simp [show (15552 * k + 11315) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 33946) = 23328 * k + 16973 := by
    unfold C
    simp [show (46656 * k + 33946) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 16973) = 69984 * k + 50920 := by
    unfold C
    simp [show (23328 * k + 16973) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 50920) = 34992 * k + 25460 := by
    unfold C
    simp [show (69984 * k + 50920) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 25460) = 17496 * k + 12730 := by
    unfold C
    simp [show (34992 * k + 25460) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 12730) = 8748 * k + 6365 := by
    unfold C
    simp [show (17496 * k + 12730) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 6365) = 26244 * k + 19096 := by
    unfold C
    simp [show (8748 * k + 6365) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 19096) = 13122 * k + 9548 := by
    unfold C
    simp [show (26244 * k + 19096) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9548) = 6561 * k + 4774 := by
    unfold C
    simp [show (13122 * k + 9548) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5959) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5959))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_5979 : ∀ k : Nat, iterate (8192 * k + 5979) 21 = 6561 * k + 4790 ∧ 6561 * k + 4790 < 8192 * k + 5979 := by
  intro k
  have h1 : C (8192 * k + 5979) = 24576 * k + 17938 := by
    unfold C
    simp [show (8192 * k + 5979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 17938) = 12288 * k + 8969 := by
    unfold C
    simp [show (24576 * k + 17938) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 8969) = 36864 * k + 26908 := by
    unfold C
    simp [show (12288 * k + 8969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 26908) = 18432 * k + 13454 := by
    unfold C
    simp [show (36864 * k + 26908) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13454) = 9216 * k + 6727 := by
    unfold C
    simp [show (18432 * k + 13454) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 6727) = 27648 * k + 20182 := by
    unfold C
    simp [show (9216 * k + 6727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 20182) = 13824 * k + 10091 := by
    unfold C
    simp [show (27648 * k + 20182) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 10091) = 41472 * k + 30274 := by
    unfold C
    simp [show (13824 * k + 10091) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 30274) = 20736 * k + 15137 := by
    unfold C
    simp [show (41472 * k + 30274) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 15137) = 62208 * k + 45412 := by
    unfold C
    simp [show (20736 * k + 15137) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 45412) = 31104 * k + 22706 := by
    unfold C
    simp [show (62208 * k + 45412) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 22706) = 15552 * k + 11353 := by
    unfold C
    simp [show (31104 * k + 22706) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 11353) = 46656 * k + 34060 := by
    unfold C
    simp [show (15552 * k + 11353) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 34060) = 23328 * k + 17030 := by
    unfold C
    simp [show (46656 * k + 34060) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 17030) = 11664 * k + 8515 := by
    unfold C
    simp [show (23328 * k + 17030) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 8515) = 34992 * k + 25546 := by
    unfold C
    simp [show (11664 * k + 8515) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 25546) = 17496 * k + 12773 := by
    unfold C
    simp [show (34992 * k + 25546) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 12773) = 52488 * k + 38320 := by
    unfold C
    simp [show (17496 * k + 12773) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 38320) = 26244 * k + 19160 := by
    unfold C
    simp [show (52488 * k + 38320) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 19160) = 13122 * k + 9580 := by
    unfold C
    simp [show (26244 * k + 19160) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9580) = 6561 * k + 4790 := by
    unfold C
    simp [show (13122 * k + 9580) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 5979) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 5979))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6047 : ∀ k : Nat, iterate (8192 * k + 6047) 21 = 6561 * k + 4844 ∧ 6561 * k + 4844 < 8192 * k + 6047 := by
  intro k
  have h1 : C (8192 * k + 6047) = 24576 * k + 18142 := by
    unfold C
    simp [show (8192 * k + 6047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 18142) = 12288 * k + 9071 := by
    unfold C
    simp [show (24576 * k + 18142) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9071) = 36864 * k + 27214 := by
    unfold C
    simp [show (12288 * k + 9071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 27214) = 18432 * k + 13607 := by
    unfold C
    simp [show (36864 * k + 27214) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13607) = 55296 * k + 40822 := by
    unfold C
    simp [show (18432 * k + 13607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 40822) = 27648 * k + 20411 := by
    unfold C
    simp [show (55296 * k + 40822) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 20411) = 82944 * k + 61234 := by
    unfold C
    simp [show (27648 * k + 20411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 61234) = 41472 * k + 30617 := by
    unfold C
    simp [show (82944 * k + 61234) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 30617) = 124416 * k + 91852 := by
    unfold C
    simp [show (41472 * k + 30617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 91852) = 62208 * k + 45926 := by
    unfold C
    simp [show (124416 * k + 91852) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 45926) = 31104 * k + 22963 := by
    unfold C
    simp [show (62208 * k + 45926) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 22963) = 93312 * k + 68890 := by
    unfold C
    simp [show (31104 * k + 22963) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 68890) = 46656 * k + 34445 := by
    unfold C
    simp [show (93312 * k + 68890) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 34445) = 139968 * k + 103336 := by
    unfold C
    simp [show (46656 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 103336) = 69984 * k + 51668 := by
    unfold C
    simp [show (139968 * k + 103336) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 51668) = 34992 * k + 25834 := by
    unfold C
    simp [show (69984 * k + 51668) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 25834) = 17496 * k + 12917 := by
    unfold C
    simp [show (34992 * k + 25834) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 12917) = 52488 * k + 38752 := by
    unfold C
    simp [show (17496 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 38752) = 26244 * k + 19376 := by
    unfold C
    simp [show (52488 * k + 38752) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 19376) = 13122 * k + 9688 := by
    unfold C
    simp [show (26244 * k + 19376) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9688) = 6561 * k + 4844 := by
    unfold C
    simp [show (13122 * k + 9688) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6047) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6047))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6215 : ∀ k : Nat, iterate (8192 * k + 6215) 21 = 6561 * k + 4979 ∧ 6561 * k + 4979 < 8192 * k + 6215 := by
  intro k
  have h1 : C (8192 * k + 6215) = 24576 * k + 18646 := by
    unfold C
    simp [show (8192 * k + 6215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 18646) = 12288 * k + 9323 := by
    unfold C
    simp [show (24576 * k + 18646) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9323) = 36864 * k + 27970 := by
    unfold C
    simp [show (12288 * k + 9323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 27970) = 18432 * k + 13985 := by
    unfold C
    simp [show (36864 * k + 27970) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 13985) = 55296 * k + 41956 := by
    unfold C
    simp [show (18432 * k + 13985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 41956) = 27648 * k + 20978 := by
    unfold C
    simp [show (55296 * k + 41956) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 20978) = 13824 * k + 10489 := by
    unfold C
    simp [show (27648 * k + 20978) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 10489) = 41472 * k + 31468 := by
    unfold C
    simp [show (13824 * k + 10489) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 31468) = 20736 * k + 15734 := by
    unfold C
    simp [show (41472 * k + 31468) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 15734) = 10368 * k + 7867 := by
    unfold C
    simp [show (20736 * k + 15734) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 7867) = 31104 * k + 23602 := by
    unfold C
    simp [show (10368 * k + 7867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 23602) = 15552 * k + 11801 := by
    unfold C
    simp [show (31104 * k + 23602) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 11801) = 46656 * k + 35404 := by
    unfold C
    simp [show (15552 * k + 11801) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 35404) = 23328 * k + 17702 := by
    unfold C
    simp [show (46656 * k + 35404) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 17702) = 11664 * k + 8851 := by
    unfold C
    simp [show (23328 * k + 17702) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 8851) = 34992 * k + 26554 := by
    unfold C
    simp [show (11664 * k + 8851) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 26554) = 17496 * k + 13277 := by
    unfold C
    simp [show (34992 * k + 26554) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 13277) = 52488 * k + 39832 := by
    unfold C
    simp [show (17496 * k + 13277) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 39832) = 26244 * k + 19916 := by
    unfold C
    simp [show (52488 * k + 39832) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 19916) = 13122 * k + 9958 := by
    unfold C
    simp [show (26244 * k + 19916) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 9958) = 6561 * k + 4979 := by
    unfold C
    simp [show (13122 * k + 9958) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6215) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6215))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6375 : ∀ k : Nat, iterate (8192 * k + 6375) 21 = 6561 * k + 5107 ∧ 6561 * k + 5107 < 8192 * k + 6375 := by
  intro k
  have h1 : C (8192 * k + 6375) = 24576 * k + 19126 := by
    unfold C
    simp [show (8192 * k + 6375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 19126) = 12288 * k + 9563 := by
    unfold C
    simp [show (24576 * k + 19126) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9563) = 36864 * k + 28690 := by
    unfold C
    simp [show (12288 * k + 9563) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 28690) = 18432 * k + 14345 := by
    unfold C
    simp [show (36864 * k + 28690) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 14345) = 55296 * k + 43036 := by
    unfold C
    simp [show (18432 * k + 14345) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 43036) = 27648 * k + 21518 := by
    unfold C
    simp [show (55296 * k + 43036) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 21518) = 13824 * k + 10759 := by
    unfold C
    simp [show (27648 * k + 21518) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 10759) = 41472 * k + 32278 := by
    unfold C
    simp [show (13824 * k + 10759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 32278) = 20736 * k + 16139 := by
    unfold C
    simp [show (41472 * k + 32278) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 16139) = 62208 * k + 48418 := by
    unfold C
    simp [show (20736 * k + 16139) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 48418) = 31104 * k + 24209 := by
    unfold C
    simp [show (62208 * k + 48418) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 24209) = 93312 * k + 72628 := by
    unfold C
    simp [show (31104 * k + 24209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 72628) = 46656 * k + 36314 := by
    unfold C
    simp [show (93312 * k + 72628) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 36314) = 23328 * k + 18157 := by
    unfold C
    simp [show (46656 * k + 36314) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 18157) = 69984 * k + 54472 := by
    unfold C
    simp [show (23328 * k + 18157) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 54472) = 34992 * k + 27236 := by
    unfold C
    simp [show (69984 * k + 54472) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 27236) = 17496 * k + 13618 := by
    unfold C
    simp [show (34992 * k + 27236) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 13618) = 8748 * k + 6809 := by
    unfold C
    simp [show (17496 * k + 13618) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 6809) = 26244 * k + 20428 := by
    unfold C
    simp [show (8748 * k + 6809) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 20428) = 13122 * k + 10214 := by
    unfold C
    simp [show (26244 * k + 20428) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10214) = 6561 * k + 5107 := by
    unfold C
    simp [show (13122 * k + 10214) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6375) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6375))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6559 : ∀ k : Nat, iterate (8192 * k + 6559) 21 = 6561 * k + 5254 ∧ 6561 * k + 5254 < 8192 * k + 6559 := by
  intro k
  have h1 : C (8192 * k + 6559) = 24576 * k + 19678 := by
    unfold C
    simp [show (8192 * k + 6559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 19678) = 12288 * k + 9839 := by
    unfold C
    simp [show (24576 * k + 19678) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9839) = 36864 * k + 29518 := by
    unfold C
    simp [show (12288 * k + 9839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 29518) = 18432 * k + 14759 := by
    unfold C
    simp [show (36864 * k + 29518) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 14759) = 55296 * k + 44278 := by
    unfold C
    simp [show (18432 * k + 14759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 44278) = 27648 * k + 22139 := by
    unfold C
    simp [show (55296 * k + 44278) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 22139) = 82944 * k + 66418 := by
    unfold C
    simp [show (27648 * k + 22139) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 66418) = 41472 * k + 33209 := by
    unfold C
    simp [show (82944 * k + 66418) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 33209) = 124416 * k + 99628 := by
    unfold C
    simp [show (41472 * k + 33209) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 99628) = 62208 * k + 49814 := by
    unfold C
    simp [show (124416 * k + 99628) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 49814) = 31104 * k + 24907 := by
    unfold C
    simp [show (62208 * k + 49814) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 24907) = 93312 * k + 74722 := by
    unfold C
    simp [show (31104 * k + 24907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 74722) = 46656 * k + 37361 := by
    unfold C
    simp [show (93312 * k + 74722) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 37361) = 139968 * k + 112084 := by
    unfold C
    simp [show (46656 * k + 37361) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 112084) = 69984 * k + 56042 := by
    unfold C
    simp [show (139968 * k + 112084) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 56042) = 34992 * k + 28021 := by
    unfold C
    simp [show (69984 * k + 56042) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 28021) = 104976 * k + 84064 := by
    unfold C
    simp [show (34992 * k + 28021) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 84064) = 52488 * k + 42032 := by
    unfold C
    simp [show (104976 * k + 84064) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 42032) = 26244 * k + 21016 := by
    unfold C
    simp [show (52488 * k + 42032) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 21016) = 13122 * k + 10508 := by
    unfold C
    simp [show (26244 * k + 21016) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10508) = 6561 * k + 5254 := by
    unfold C
    simp [show (13122 * k + 10508) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6559) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6559))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6607 : ∀ k : Nat, iterate (8192 * k + 6607) 21 = 6561 * k + 5293 ∧ 6561 * k + 5293 < 8192 * k + 6607 := by
  intro k
  have h1 : C (8192 * k + 6607) = 24576 * k + 19822 := by
    unfold C
    simp [show (8192 * k + 6607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 19822) = 12288 * k + 9911 := by
    unfold C
    simp [show (24576 * k + 19822) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9911) = 36864 * k + 29734 := by
    unfold C
    simp [show (12288 * k + 9911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 29734) = 18432 * k + 14867 := by
    unfold C
    simp [show (36864 * k + 29734) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 14867) = 55296 * k + 44602 := by
    unfold C
    simp [show (18432 * k + 14867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 44602) = 27648 * k + 22301 := by
    unfold C
    simp [show (55296 * k + 44602) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 22301) = 82944 * k + 66904 := by
    unfold C
    simp [show (27648 * k + 22301) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 66904) = 41472 * k + 33452 := by
    unfold C
    simp [show (82944 * k + 66904) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 33452) = 20736 * k + 16726 := by
    unfold C
    simp [show (41472 * k + 33452) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 16726) = 10368 * k + 8363 := by
    unfold C
    simp [show (20736 * k + 16726) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 8363) = 31104 * k + 25090 := by
    unfold C
    simp [show (10368 * k + 8363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 25090) = 15552 * k + 12545 := by
    unfold C
    simp [show (31104 * k + 25090) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 12545) = 46656 * k + 37636 := by
    unfold C
    simp [show (15552 * k + 12545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 37636) = 23328 * k + 18818 := by
    unfold C
    simp [show (46656 * k + 37636) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 18818) = 11664 * k + 9409 := by
    unfold C
    simp [show (23328 * k + 18818) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 9409) = 34992 * k + 28228 := by
    unfold C
    simp [show (11664 * k + 9409) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 28228) = 17496 * k + 14114 := by
    unfold C
    simp [show (34992 * k + 28228) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 14114) = 8748 * k + 7057 := by
    unfold C
    simp [show (17496 * k + 14114) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 7057) = 26244 * k + 21172 := by
    unfold C
    simp [show (8748 * k + 7057) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 21172) = 13122 * k + 10586 := by
    unfold C
    simp [show (26244 * k + 21172) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10586) = 6561 * k + 5293 := by
    unfold C
    simp [show (13122 * k + 10586) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6607) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6607))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6631 : ∀ k : Nat, iterate (8192 * k + 6631) 21 = 6561 * k + 5312 ∧ 6561 * k + 5312 < 8192 * k + 6631 := by
  intro k
  have h1 : C (8192 * k + 6631) = 24576 * k + 19894 := by
    unfold C
    simp [show (8192 * k + 6631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 19894) = 12288 * k + 9947 := by
    unfold C
    simp [show (24576 * k + 19894) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 9947) = 36864 * k + 29842 := by
    unfold C
    simp [show (12288 * k + 9947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 29842) = 18432 * k + 14921 := by
    unfold C
    simp [show (36864 * k + 29842) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 14921) = 55296 * k + 44764 := by
    unfold C
    simp [show (18432 * k + 14921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 44764) = 27648 * k + 22382 := by
    unfold C
    simp [show (55296 * k + 44764) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 22382) = 13824 * k + 11191 := by
    unfold C
    simp [show (27648 * k + 22382) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 11191) = 41472 * k + 33574 := by
    unfold C
    simp [show (13824 * k + 11191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 33574) = 20736 * k + 16787 := by
    unfold C
    simp [show (41472 * k + 33574) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 16787) = 62208 * k + 50362 := by
    unfold C
    simp [show (20736 * k + 16787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 50362) = 31104 * k + 25181 := by
    unfold C
    simp [show (62208 * k + 50362) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 25181) = 93312 * k + 75544 := by
    unfold C
    simp [show (31104 * k + 25181) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 75544) = 46656 * k + 37772 := by
    unfold C
    simp [show (93312 * k + 75544) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 37772) = 23328 * k + 18886 := by
    unfold C
    simp [show (46656 * k + 37772) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 18886) = 11664 * k + 9443 := by
    unfold C
    simp [show (23328 * k + 18886) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 9443) = 34992 * k + 28330 := by
    unfold C
    simp [show (11664 * k + 9443) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 28330) = 17496 * k + 14165 := by
    unfold C
    simp [show (34992 * k + 28330) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 14165) = 52488 * k + 42496 := by
    unfold C
    simp [show (17496 * k + 14165) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 42496) = 26244 * k + 21248 := by
    unfold C
    simp [show (52488 * k + 42496) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 21248) = 13122 * k + 10624 := by
    unfold C
    simp [show (26244 * k + 21248) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10624) = 6561 * k + 5312 := by
    unfold C
    simp [show (13122 * k + 10624) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6631) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6631))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6747 : ∀ k : Nat, iterate (8192 * k + 6747) 21 = 6561 * k + 5405 ∧ 6561 * k + 5405 < 8192 * k + 6747 := by
  intro k
  have h1 : C (8192 * k + 6747) = 24576 * k + 20242 := by
    unfold C
    simp [show (8192 * k + 6747) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 20242) = 12288 * k + 10121 := by
    unfold C
    simp [show (24576 * k + 20242) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10121) = 36864 * k + 30364 := by
    unfold C
    simp [show (12288 * k + 10121) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 30364) = 18432 * k + 15182 := by
    unfold C
    simp [show (36864 * k + 30364) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 15182) = 9216 * k + 7591 := by
    unfold C
    simp [show (18432 * k + 15182) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 7591) = 27648 * k + 22774 := by
    unfold C
    simp [show (9216 * k + 7591) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 22774) = 13824 * k + 11387 := by
    unfold C
    simp [show (27648 * k + 22774) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 11387) = 41472 * k + 34162 := by
    unfold C
    simp [show (13824 * k + 11387) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 34162) = 20736 * k + 17081 := by
    unfold C
    simp [show (41472 * k + 34162) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 17081) = 62208 * k + 51244 := by
    unfold C
    simp [show (20736 * k + 17081) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 51244) = 31104 * k + 25622 := by
    unfold C
    simp [show (62208 * k + 51244) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 25622) = 15552 * k + 12811 := by
    unfold C
    simp [show (31104 * k + 25622) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 12811) = 46656 * k + 38434 := by
    unfold C
    simp [show (15552 * k + 12811) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 38434) = 23328 * k + 19217 := by
    unfold C
    simp [show (46656 * k + 38434) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 19217) = 69984 * k + 57652 := by
    unfold C
    simp [show (23328 * k + 19217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 57652) = 34992 * k + 28826 := by
    unfold C
    simp [show (69984 * k + 57652) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 28826) = 17496 * k + 14413 := by
    unfold C
    simp [show (34992 * k + 28826) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 14413) = 52488 * k + 43240 := by
    unfold C
    simp [show (17496 * k + 14413) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 43240) = 26244 * k + 21620 := by
    unfold C
    simp [show (52488 * k + 43240) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 21620) = 13122 * k + 10810 := by
    unfold C
    simp [show (26244 * k + 21620) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10810) = 6561 * k + 5405 := by
    unfold C
    simp [show (13122 * k + 10810) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6747) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6747))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6815 : ∀ k : Nat, iterate (8192 * k + 6815) 21 = 6561 * k + 5459 ∧ 6561 * k + 5459 < 8192 * k + 6815 := by
  intro k
  have h1 : C (8192 * k + 6815) = 24576 * k + 20446 := by
    unfold C
    simp [show (8192 * k + 6815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 20446) = 12288 * k + 10223 := by
    unfold C
    simp [show (24576 * k + 20446) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10223) = 36864 * k + 30670 := by
    unfold C
    simp [show (12288 * k + 10223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 30670) = 18432 * k + 15335 := by
    unfold C
    simp [show (36864 * k + 30670) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 15335) = 55296 * k + 46006 := by
    unfold C
    simp [show (18432 * k + 15335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 46006) = 27648 * k + 23003 := by
    unfold C
    simp [show (55296 * k + 46006) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 23003) = 82944 * k + 69010 := by
    unfold C
    simp [show (27648 * k + 23003) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 69010) = 41472 * k + 34505 := by
    unfold C
    simp [show (82944 * k + 69010) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 34505) = 124416 * k + 103516 := by
    unfold C
    simp [show (41472 * k + 34505) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 103516) = 62208 * k + 51758 := by
    unfold C
    simp [show (124416 * k + 103516) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 51758) = 31104 * k + 25879 := by
    unfold C
    simp [show (62208 * k + 51758) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 25879) = 93312 * k + 77638 := by
    unfold C
    simp [show (31104 * k + 25879) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 77638) = 46656 * k + 38819 := by
    unfold C
    simp [show (93312 * k + 77638) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 38819) = 139968 * k + 116458 := by
    unfold C
    simp [show (46656 * k + 38819) % 2 ≠ 0 by omega]
    omega
  have h15 : C (139968 * k + 116458) = 69984 * k + 58229 := by
    unfold C
    simp [show (139968 * k + 116458) % 2 = 0 by omega]
    omega
  have h16 : C (69984 * k + 58229) = 209952 * k + 174688 := by
    unfold C
    simp [show (69984 * k + 58229) % 2 ≠ 0 by omega]
    omega
  have h17 : C (209952 * k + 174688) = 104976 * k + 87344 := by
    unfold C
    simp [show (209952 * k + 174688) % 2 = 0 by omega]
    omega
  have h18 : C (104976 * k + 87344) = 52488 * k + 43672 := by
    unfold C
    simp [show (104976 * k + 87344) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 43672) = 26244 * k + 21836 := by
    unfold C
    simp [show (52488 * k + 43672) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 21836) = 13122 * k + 10918 := by
    unfold C
    simp [show (26244 * k + 21836) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 10918) = 6561 * k + 5459 := by
    unfold C
    simp [show (13122 * k + 10918) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6815) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6815))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_6983 : ∀ k : Nat, iterate (8192 * k + 6983) 21 = 6561 * k + 5594 ∧ 6561 * k + 5594 < 8192 * k + 6983 := by
  intro k
  have h1 : C (8192 * k + 6983) = 24576 * k + 20950 := by
    unfold C
    simp [show (8192 * k + 6983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 20950) = 12288 * k + 10475 := by
    unfold C
    simp [show (24576 * k + 20950) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10475) = 36864 * k + 31426 := by
    unfold C
    simp [show (12288 * k + 10475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 31426) = 18432 * k + 15713 := by
    unfold C
    simp [show (36864 * k + 31426) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 15713) = 55296 * k + 47140 := by
    unfold C
    simp [show (18432 * k + 15713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 47140) = 27648 * k + 23570 := by
    unfold C
    simp [show (55296 * k + 47140) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 23570) = 13824 * k + 11785 := by
    unfold C
    simp [show (27648 * k + 23570) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 11785) = 41472 * k + 35356 := by
    unfold C
    simp [show (13824 * k + 11785) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 35356) = 20736 * k + 17678 := by
    unfold C
    simp [show (41472 * k + 35356) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 17678) = 10368 * k + 8839 := by
    unfold C
    simp [show (20736 * k + 17678) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 8839) = 31104 * k + 26518 := by
    unfold C
    simp [show (10368 * k + 8839) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 26518) = 15552 * k + 13259 := by
    unfold C
    simp [show (31104 * k + 26518) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 13259) = 46656 * k + 39778 := by
    unfold C
    simp [show (15552 * k + 13259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 39778) = 23328 * k + 19889 := by
    unfold C
    simp [show (46656 * k + 39778) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 19889) = 69984 * k + 59668 := by
    unfold C
    simp [show (23328 * k + 19889) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 59668) = 34992 * k + 29834 := by
    unfold C
    simp [show (69984 * k + 59668) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 29834) = 17496 * k + 14917 := by
    unfold C
    simp [show (34992 * k + 29834) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 14917) = 52488 * k + 44752 := by
    unfold C
    simp [show (17496 * k + 14917) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 44752) = 26244 * k + 22376 := by
    unfold C
    simp [show (52488 * k + 44752) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 22376) = 13122 * k + 11188 := by
    unfold C
    simp [show (26244 * k + 22376) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11188) = 6561 * k + 5594 := by
    unfold C
    simp [show (13122 * k + 11188) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 6983) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 6983))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7023 : ∀ k : Nat, iterate (8192 * k + 7023) 21 = 6561 * k + 5626 ∧ 6561 * k + 5626 < 8192 * k + 7023 := by
  intro k
  have h1 : C (8192 * k + 7023) = 24576 * k + 21070 := by
    unfold C
    simp [show (8192 * k + 7023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 21070) = 12288 * k + 10535 := by
    unfold C
    simp [show (24576 * k + 21070) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10535) = 36864 * k + 31606 := by
    unfold C
    simp [show (12288 * k + 10535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 31606) = 18432 * k + 15803 := by
    unfold C
    simp [show (36864 * k + 31606) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 15803) = 55296 * k + 47410 := by
    unfold C
    simp [show (18432 * k + 15803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 47410) = 27648 * k + 23705 := by
    unfold C
    simp [show (55296 * k + 47410) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 23705) = 82944 * k + 71116 := by
    unfold C
    simp [show (27648 * k + 23705) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 71116) = 41472 * k + 35558 := by
    unfold C
    simp [show (82944 * k + 71116) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 35558) = 20736 * k + 17779 := by
    unfold C
    simp [show (41472 * k + 35558) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 17779) = 62208 * k + 53338 := by
    unfold C
    simp [show (20736 * k + 17779) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 53338) = 31104 * k + 26669 := by
    unfold C
    simp [show (62208 * k + 53338) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 26669) = 93312 * k + 80008 := by
    unfold C
    simp [show (31104 * k + 26669) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 80008) = 46656 * k + 40004 := by
    unfold C
    simp [show (93312 * k + 80008) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 40004) = 23328 * k + 20002 := by
    unfold C
    simp [show (46656 * k + 40004) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 20002) = 11664 * k + 10001 := by
    unfold C
    simp [show (23328 * k + 20002) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 10001) = 34992 * k + 30004 := by
    unfold C
    simp [show (11664 * k + 10001) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 30004) = 17496 * k + 15002 := by
    unfold C
    simp [show (34992 * k + 30004) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 15002) = 8748 * k + 7501 := by
    unfold C
    simp [show (17496 * k + 15002) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 7501) = 26244 * k + 22504 := by
    unfold C
    simp [show (8748 * k + 7501) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 22504) = 13122 * k + 11252 := by
    unfold C
    simp [show (26244 * k + 22504) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11252) = 6561 * k + 5626 := by
    unfold C
    simp [show (13122 * k + 11252) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7023) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7023))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7079 : ∀ k : Nat, iterate (8192 * k + 7079) 21 = 6561 * k + 5671 ∧ 6561 * k + 5671 < 8192 * k + 7079 := by
  intro k
  have h1 : C (8192 * k + 7079) = 24576 * k + 21238 := by
    unfold C
    simp [show (8192 * k + 7079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 21238) = 12288 * k + 10619 := by
    unfold C
    simp [show (24576 * k + 21238) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10619) = 36864 * k + 31858 := by
    unfold C
    simp [show (12288 * k + 10619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 31858) = 18432 * k + 15929 := by
    unfold C
    simp [show (36864 * k + 31858) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 15929) = 55296 * k + 47788 := by
    unfold C
    simp [show (18432 * k + 15929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 47788) = 27648 * k + 23894 := by
    unfold C
    simp [show (55296 * k + 47788) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 23894) = 13824 * k + 11947 := by
    unfold C
    simp [show (27648 * k + 23894) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 11947) = 41472 * k + 35842 := by
    unfold C
    simp [show (13824 * k + 11947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 35842) = 20736 * k + 17921 := by
    unfold C
    simp [show (41472 * k + 35842) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 17921) = 62208 * k + 53764 := by
    unfold C
    simp [show (20736 * k + 17921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 53764) = 31104 * k + 26882 := by
    unfold C
    simp [show (62208 * k + 53764) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 26882) = 15552 * k + 13441 := by
    unfold C
    simp [show (31104 * k + 26882) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 13441) = 46656 * k + 40324 := by
    unfold C
    simp [show (15552 * k + 13441) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 40324) = 23328 * k + 20162 := by
    unfold C
    simp [show (46656 * k + 40324) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 20162) = 11664 * k + 10081 := by
    unfold C
    simp [show (23328 * k + 20162) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 10081) = 34992 * k + 30244 := by
    unfold C
    simp [show (11664 * k + 10081) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 30244) = 17496 * k + 15122 := by
    unfold C
    simp [show (34992 * k + 30244) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 15122) = 8748 * k + 7561 := by
    unfold C
    simp [show (17496 * k + 15122) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 7561) = 26244 * k + 22684 := by
    unfold C
    simp [show (8748 * k + 7561) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 22684) = 13122 * k + 11342 := by
    unfold C
    simp [show (26244 * k + 22684) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11342) = 6561 * k + 5671 := by
    unfold C
    simp [show (13122 * k + 11342) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7079) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7079))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7259 : ∀ k : Nat, iterate (8192 * k + 7259) 21 = 6561 * k + 5815 ∧ 6561 * k + 5815 < 8192 * k + 7259 := by
  intro k
  have h1 : C (8192 * k + 7259) = 24576 * k + 21778 := by
    unfold C
    simp [show (8192 * k + 7259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 21778) = 12288 * k + 10889 := by
    unfold C
    simp [show (24576 * k + 21778) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 10889) = 36864 * k + 32668 := by
    unfold C
    simp [show (12288 * k + 10889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 32668) = 18432 * k + 16334 := by
    unfold C
    simp [show (36864 * k + 32668) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 16334) = 9216 * k + 8167 := by
    unfold C
    simp [show (18432 * k + 16334) % 2 = 0 by omega]
    omega
  have h6 : C (9216 * k + 8167) = 27648 * k + 24502 := by
    unfold C
    simp [show (9216 * k + 8167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (27648 * k + 24502) = 13824 * k + 12251 := by
    unfold C
    simp [show (27648 * k + 24502) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 12251) = 41472 * k + 36754 := by
    unfold C
    simp [show (13824 * k + 12251) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 36754) = 20736 * k + 18377 := by
    unfold C
    simp [show (41472 * k + 36754) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 18377) = 62208 * k + 55132 := by
    unfold C
    simp [show (20736 * k + 18377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 55132) = 31104 * k + 27566 := by
    unfold C
    simp [show (62208 * k + 55132) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 27566) = 15552 * k + 13783 := by
    unfold C
    simp [show (31104 * k + 27566) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 13783) = 46656 * k + 41350 := by
    unfold C
    simp [show (15552 * k + 13783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 41350) = 23328 * k + 20675 := by
    unfold C
    simp [show (46656 * k + 41350) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 20675) = 69984 * k + 62026 := by
    unfold C
    simp [show (23328 * k + 20675) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 62026) = 34992 * k + 31013 := by
    unfold C
    simp [show (69984 * k + 62026) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 31013) = 104976 * k + 93040 := by
    unfold C
    simp [show (34992 * k + 31013) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 93040) = 52488 * k + 46520 := by
    unfold C
    simp [show (104976 * k + 93040) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 46520) = 26244 * k + 23260 := by
    unfold C
    simp [show (52488 * k + 46520) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 23260) = 13122 * k + 11630 := by
    unfold C
    simp [show (26244 * k + 23260) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11630) = 6561 * k + 5815 := by
    unfold C
    simp [show (13122 * k + 11630) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7259) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7259))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7375 : ∀ k : Nat, iterate (8192 * k + 7375) 21 = 6561 * k + 5908 ∧ 6561 * k + 5908 < 8192 * k + 7375 := by
  intro k
  have h1 : C (8192 * k + 7375) = 24576 * k + 22126 := by
    unfold C
    simp [show (8192 * k + 7375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 22126) = 12288 * k + 11063 := by
    unfold C
    simp [show (24576 * k + 22126) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11063) = 36864 * k + 33190 := by
    unfold C
    simp [show (12288 * k + 11063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 33190) = 18432 * k + 16595 := by
    unfold C
    simp [show (36864 * k + 33190) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 16595) = 55296 * k + 49786 := by
    unfold C
    simp [show (18432 * k + 16595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 49786) = 27648 * k + 24893 := by
    unfold C
    simp [show (55296 * k + 49786) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 24893) = 82944 * k + 74680 := by
    unfold C
    simp [show (27648 * k + 24893) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 74680) = 41472 * k + 37340 := by
    unfold C
    simp [show (82944 * k + 74680) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 37340) = 20736 * k + 18670 := by
    unfold C
    simp [show (41472 * k + 37340) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 18670) = 10368 * k + 9335 := by
    unfold C
    simp [show (20736 * k + 18670) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 9335) = 31104 * k + 28006 := by
    unfold C
    simp [show (10368 * k + 9335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 28006) = 15552 * k + 14003 := by
    unfold C
    simp [show (31104 * k + 28006) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 14003) = 46656 * k + 42010 := by
    unfold C
    simp [show (15552 * k + 14003) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 42010) = 23328 * k + 21005 := by
    unfold C
    simp [show (46656 * k + 42010) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 21005) = 69984 * k + 63016 := by
    unfold C
    simp [show (23328 * k + 21005) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 63016) = 34992 * k + 31508 := by
    unfold C
    simp [show (69984 * k + 63016) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 31508) = 17496 * k + 15754 := by
    unfold C
    simp [show (34992 * k + 31508) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 15754) = 8748 * k + 7877 := by
    unfold C
    simp [show (17496 * k + 15754) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 7877) = 26244 * k + 23632 := by
    unfold C
    simp [show (8748 * k + 7877) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 23632) = 13122 * k + 11816 := by
    unfold C
    simp [show (26244 * k + 23632) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11816) = 6561 * k + 5908 := by
    unfold C
    simp [show (13122 * k + 11816) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7375) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7375))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7399 : ∀ k : Nat, iterate (8192 * k + 7399) 21 = 6561 * k + 5927 ∧ 6561 * k + 5927 < 8192 * k + 7399 := by
  intro k
  have h1 : C (8192 * k + 7399) = 24576 * k + 22198 := by
    unfold C
    simp [show (8192 * k + 7399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 22198) = 12288 * k + 11099 := by
    unfold C
    simp [show (24576 * k + 22198) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11099) = 36864 * k + 33298 := by
    unfold C
    simp [show (12288 * k + 11099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 33298) = 18432 * k + 16649 := by
    unfold C
    simp [show (36864 * k + 33298) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 16649) = 55296 * k + 49948 := by
    unfold C
    simp [show (18432 * k + 16649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 49948) = 27648 * k + 24974 := by
    unfold C
    simp [show (55296 * k + 49948) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 24974) = 13824 * k + 12487 := by
    unfold C
    simp [show (27648 * k + 24974) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 12487) = 41472 * k + 37462 := by
    unfold C
    simp [show (13824 * k + 12487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 37462) = 20736 * k + 18731 := by
    unfold C
    simp [show (41472 * k + 37462) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 18731) = 62208 * k + 56194 := by
    unfold C
    simp [show (20736 * k + 18731) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 56194) = 31104 * k + 28097 := by
    unfold C
    simp [show (62208 * k + 56194) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 28097) = 93312 * k + 84292 := by
    unfold C
    simp [show (31104 * k + 28097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 84292) = 46656 * k + 42146 := by
    unfold C
    simp [show (93312 * k + 84292) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 42146) = 23328 * k + 21073 := by
    unfold C
    simp [show (46656 * k + 42146) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 21073) = 69984 * k + 63220 := by
    unfold C
    simp [show (23328 * k + 21073) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 63220) = 34992 * k + 31610 := by
    unfold C
    simp [show (69984 * k + 63220) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 31610) = 17496 * k + 15805 := by
    unfold C
    simp [show (34992 * k + 31610) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 15805) = 52488 * k + 47416 := by
    unfold C
    simp [show (17496 * k + 15805) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 47416) = 26244 * k + 23708 := by
    unfold C
    simp [show (52488 * k + 47416) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 23708) = 13122 * k + 11854 := by
    unfold C
    simp [show (26244 * k + 23708) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 11854) = 6561 * k + 5927 := by
    unfold C
    simp [show (13122 * k + 11854) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7399) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7399))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7495 : ∀ k : Nat, iterate (8192 * k + 7495) 21 = 6561 * k + 6004 ∧ 6561 * k + 6004 < 8192 * k + 7495 := by
  intro k
  have h1 : C (8192 * k + 7495) = 24576 * k + 22486 := by
    unfold C
    simp [show (8192 * k + 7495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 22486) = 12288 * k + 11243 := by
    unfold C
    simp [show (24576 * k + 22486) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11243) = 36864 * k + 33730 := by
    unfold C
    simp [show (12288 * k + 11243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 33730) = 18432 * k + 16865 := by
    unfold C
    simp [show (36864 * k + 33730) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 16865) = 55296 * k + 50596 := by
    unfold C
    simp [show (18432 * k + 16865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 50596) = 27648 * k + 25298 := by
    unfold C
    simp [show (55296 * k + 50596) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 25298) = 13824 * k + 12649 := by
    unfold C
    simp [show (27648 * k + 25298) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 12649) = 41472 * k + 37948 := by
    unfold C
    simp [show (13824 * k + 12649) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 37948) = 20736 * k + 18974 := by
    unfold C
    simp [show (41472 * k + 37948) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 18974) = 10368 * k + 9487 := by
    unfold C
    simp [show (20736 * k + 18974) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 9487) = 31104 * k + 28462 := by
    unfold C
    simp [show (10368 * k + 9487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 28462) = 15552 * k + 14231 := by
    unfold C
    simp [show (31104 * k + 28462) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 14231) = 46656 * k + 42694 := by
    unfold C
    simp [show (15552 * k + 14231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 42694) = 23328 * k + 21347 := by
    unfold C
    simp [show (46656 * k + 42694) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 21347) = 69984 * k + 64042 := by
    unfold C
    simp [show (23328 * k + 21347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 64042) = 34992 * k + 32021 := by
    unfold C
    simp [show (69984 * k + 64042) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 32021) = 104976 * k + 96064 := by
    unfold C
    simp [show (34992 * k + 32021) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 96064) = 52488 * k + 48032 := by
    unfold C
    simp [show (104976 * k + 96064) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 48032) = 26244 * k + 24016 := by
    unfold C
    simp [show (52488 * k + 48032) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 24016) = 13122 * k + 12008 := by
    unfold C
    simp [show (26244 * k + 24016) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12008) = 6561 * k + 6004 := by
    unfold C
    simp [show (13122 * k + 12008) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7495) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7495))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7631 : ∀ k : Nat, iterate (8192 * k + 7631) 21 = 6561 * k + 6113 ∧ 6561 * k + 6113 < 8192 * k + 7631 := by
  intro k
  have h1 : C (8192 * k + 7631) = 24576 * k + 22894 := by
    unfold C
    simp [show (8192 * k + 7631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 22894) = 12288 * k + 11447 := by
    unfold C
    simp [show (24576 * k + 22894) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11447) = 36864 * k + 34342 := by
    unfold C
    simp [show (12288 * k + 11447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 34342) = 18432 * k + 17171 := by
    unfold C
    simp [show (36864 * k + 34342) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 17171) = 55296 * k + 51514 := by
    unfold C
    simp [show (18432 * k + 17171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 51514) = 27648 * k + 25757 := by
    unfold C
    simp [show (55296 * k + 51514) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 25757) = 82944 * k + 77272 := by
    unfold C
    simp [show (27648 * k + 25757) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 77272) = 41472 * k + 38636 := by
    unfold C
    simp [show (82944 * k + 77272) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 38636) = 20736 * k + 19318 := by
    unfold C
    simp [show (41472 * k + 38636) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 19318) = 10368 * k + 9659 := by
    unfold C
    simp [show (20736 * k + 19318) % 2 = 0 by omega]
    omega
  have h11 : C (10368 * k + 9659) = 31104 * k + 28978 := by
    unfold C
    simp [show (10368 * k + 9659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (31104 * k + 28978) = 15552 * k + 14489 := by
    unfold C
    simp [show (31104 * k + 28978) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 14489) = 46656 * k + 43468 := by
    unfold C
    simp [show (15552 * k + 14489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 43468) = 23328 * k + 21734 := by
    unfold C
    simp [show (46656 * k + 43468) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 21734) = 11664 * k + 10867 := by
    unfold C
    simp [show (23328 * k + 21734) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 10867) = 34992 * k + 32602 := by
    unfold C
    simp [show (11664 * k + 10867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 32602) = 17496 * k + 16301 := by
    unfold C
    simp [show (34992 * k + 32602) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 16301) = 52488 * k + 48904 := by
    unfold C
    simp [show (17496 * k + 16301) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 48904) = 26244 * k + 24452 := by
    unfold C
    simp [show (52488 * k + 48904) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 24452) = 13122 * k + 12226 := by
    unfold C
    simp [show (26244 * k + 24452) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12226) = 6561 * k + 6113 := by
    unfold C
    simp [show (13122 * k + 12226) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7631) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7631))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7791 : ∀ k : Nat, iterate (8192 * k + 7791) 21 = 6561 * k + 6241 ∧ 6561 * k + 6241 < 8192 * k + 7791 := by
  intro k
  have h1 : C (8192 * k + 7791) = 24576 * k + 23374 := by
    unfold C
    simp [show (8192 * k + 7791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 23374) = 12288 * k + 11687 := by
    unfold C
    simp [show (24576 * k + 23374) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11687) = 36864 * k + 35062 := by
    unfold C
    simp [show (12288 * k + 11687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 35062) = 18432 * k + 17531 := by
    unfold C
    simp [show (36864 * k + 35062) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 17531) = 55296 * k + 52594 := by
    unfold C
    simp [show (18432 * k + 17531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 52594) = 27648 * k + 26297 := by
    unfold C
    simp [show (55296 * k + 52594) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 26297) = 82944 * k + 78892 := by
    unfold C
    simp [show (27648 * k + 26297) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 78892) = 41472 * k + 39446 := by
    unfold C
    simp [show (82944 * k + 78892) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 39446) = 20736 * k + 19723 := by
    unfold C
    simp [show (41472 * k + 39446) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 19723) = 62208 * k + 59170 := by
    unfold C
    simp [show (20736 * k + 19723) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 59170) = 31104 * k + 29585 := by
    unfold C
    simp [show (62208 * k + 59170) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 29585) = 93312 * k + 88756 := by
    unfold C
    simp [show (31104 * k + 29585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 88756) = 46656 * k + 44378 := by
    unfold C
    simp [show (93312 * k + 88756) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 44378) = 23328 * k + 22189 := by
    unfold C
    simp [show (46656 * k + 44378) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 22189) = 69984 * k + 66568 := by
    unfold C
    simp [show (23328 * k + 22189) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 66568) = 34992 * k + 33284 := by
    unfold C
    simp [show (69984 * k + 66568) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 33284) = 17496 * k + 16642 := by
    unfold C
    simp [show (34992 * k + 33284) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 16642) = 8748 * k + 8321 := by
    unfold C
    simp [show (17496 * k + 16642) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 8321) = 26244 * k + 24964 := by
    unfold C
    simp [show (8748 * k + 8321) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 24964) = 13122 * k + 12482 := by
    unfold C
    simp [show (26244 * k + 24964) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12482) = 6561 * k + 6241 := by
    unfold C
    simp [show (13122 * k + 12482) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7791) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7791))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7847 : ∀ k : Nat, iterate (8192 * k + 7847) 21 = 6561 * k + 6286 ∧ 6561 * k + 6286 < 8192 * k + 7847 := by
  intro k
  have h1 : C (8192 * k + 7847) = 24576 * k + 23542 := by
    unfold C
    simp [show (8192 * k + 7847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 23542) = 12288 * k + 11771 := by
    unfold C
    simp [show (24576 * k + 23542) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11771) = 36864 * k + 35314 := by
    unfold C
    simp [show (12288 * k + 11771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 35314) = 18432 * k + 17657 := by
    unfold C
    simp [show (36864 * k + 35314) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 17657) = 55296 * k + 52972 := by
    unfold C
    simp [show (18432 * k + 17657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 52972) = 27648 * k + 26486 := by
    unfold C
    simp [show (55296 * k + 52972) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 26486) = 13824 * k + 13243 := by
    unfold C
    simp [show (27648 * k + 26486) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 13243) = 41472 * k + 39730 := by
    unfold C
    simp [show (13824 * k + 13243) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 39730) = 20736 * k + 19865 := by
    unfold C
    simp [show (41472 * k + 39730) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 19865) = 62208 * k + 59596 := by
    unfold C
    simp [show (20736 * k + 19865) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 59596) = 31104 * k + 29798 := by
    unfold C
    simp [show (62208 * k + 59596) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 29798) = 15552 * k + 14899 := by
    unfold C
    simp [show (31104 * k + 29798) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 14899) = 46656 * k + 44698 := by
    unfold C
    simp [show (15552 * k + 14899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 44698) = 23328 * k + 22349 := by
    unfold C
    simp [show (46656 * k + 44698) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 22349) = 69984 * k + 67048 := by
    unfold C
    simp [show (23328 * k + 22349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 67048) = 34992 * k + 33524 := by
    unfold C
    simp [show (69984 * k + 67048) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 33524) = 17496 * k + 16762 := by
    unfold C
    simp [show (34992 * k + 33524) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 16762) = 8748 * k + 8381 := by
    unfold C
    simp [show (17496 * k + 16762) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 8381) = 26244 * k + 25144 := by
    unfold C
    simp [show (8748 * k + 8381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 25144) = 13122 * k + 12572 := by
    unfold C
    simp [show (26244 * k + 25144) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12572) = 6561 * k + 6286 := by
    unfold C
    simp [show (13122 * k + 12572) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7847) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7847))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7911 : ∀ k : Nat, iterate (8192 * k + 7911) 21 = 6561 * k + 6337 ∧ 6561 * k + 6337 < 8192 * k + 7911 := by
  intro k
  have h1 : C (8192 * k + 7911) = 24576 * k + 23734 := by
    unfold C
    simp [show (8192 * k + 7911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 23734) = 12288 * k + 11867 := by
    unfold C
    simp [show (24576 * k + 23734) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11867) = 36864 * k + 35602 := by
    unfold C
    simp [show (12288 * k + 11867) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 35602) = 18432 * k + 17801 := by
    unfold C
    simp [show (36864 * k + 35602) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 17801) = 55296 * k + 53404 := by
    unfold C
    simp [show (18432 * k + 17801) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 53404) = 27648 * k + 26702 := by
    unfold C
    simp [show (55296 * k + 53404) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 26702) = 13824 * k + 13351 := by
    unfold C
    simp [show (27648 * k + 26702) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 13351) = 41472 * k + 40054 := by
    unfold C
    simp [show (13824 * k + 13351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 40054) = 20736 * k + 20027 := by
    unfold C
    simp [show (41472 * k + 40054) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 20027) = 62208 * k + 60082 := by
    unfold C
    simp [show (20736 * k + 20027) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 60082) = 31104 * k + 30041 := by
    unfold C
    simp [show (62208 * k + 60082) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 30041) = 93312 * k + 90124 := by
    unfold C
    simp [show (31104 * k + 30041) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 90124) = 46656 * k + 45062 := by
    unfold C
    simp [show (93312 * k + 90124) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 45062) = 23328 * k + 22531 := by
    unfold C
    simp [show (46656 * k + 45062) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 22531) = 69984 * k + 67594 := by
    unfold C
    simp [show (23328 * k + 22531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (69984 * k + 67594) = 34992 * k + 33797 := by
    unfold C
    simp [show (69984 * k + 67594) % 2 = 0 by omega]
    omega
  have h17 : C (34992 * k + 33797) = 104976 * k + 101392 := by
    unfold C
    simp [show (34992 * k + 33797) % 2 ≠ 0 by omega]
    omega
  have h18 : C (104976 * k + 101392) = 52488 * k + 50696 := by
    unfold C
    simp [show (104976 * k + 101392) % 2 = 0 by omega]
    omega
  have h19 : C (52488 * k + 50696) = 26244 * k + 25348 := by
    unfold C
    simp [show (52488 * k + 50696) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 25348) = 13122 * k + 12674 := by
    unfold C
    simp [show (26244 * k + 25348) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12674) = 6561 * k + 6337 := by
    unfold C
    simp [show (13122 * k + 12674) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7911) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7911))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_7967 : ∀ k : Nat, iterate (8192 * k + 7967) 21 = 6561 * k + 6382 ∧ 6561 * k + 6382 < 8192 * k + 7967 := by
  intro k
  have h1 : C (8192 * k + 7967) = 24576 * k + 23902 := by
    unfold C
    simp [show (8192 * k + 7967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 23902) = 12288 * k + 11951 := by
    unfold C
    simp [show (24576 * k + 23902) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 11951) = 36864 * k + 35854 := by
    unfold C
    simp [show (12288 * k + 11951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 35854) = 18432 * k + 17927 := by
    unfold C
    simp [show (36864 * k + 35854) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 17927) = 55296 * k + 53782 := by
    unfold C
    simp [show (18432 * k + 17927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 53782) = 27648 * k + 26891 := by
    unfold C
    simp [show (55296 * k + 53782) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 26891) = 82944 * k + 80674 := by
    unfold C
    simp [show (27648 * k + 26891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 80674) = 41472 * k + 40337 := by
    unfold C
    simp [show (82944 * k + 80674) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 40337) = 124416 * k + 121012 := by
    unfold C
    simp [show (41472 * k + 40337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (124416 * k + 121012) = 62208 * k + 60506 := by
    unfold C
    simp [show (124416 * k + 121012) % 2 = 0 by omega]
    omega
  have h11 : C (62208 * k + 60506) = 31104 * k + 30253 := by
    unfold C
    simp [show (62208 * k + 60506) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 30253) = 93312 * k + 90760 := by
    unfold C
    simp [show (31104 * k + 30253) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 90760) = 46656 * k + 45380 := by
    unfold C
    simp [show (93312 * k + 90760) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 45380) = 23328 * k + 22690 := by
    unfold C
    simp [show (46656 * k + 45380) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 22690) = 11664 * k + 11345 := by
    unfold C
    simp [show (23328 * k + 22690) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 11345) = 34992 * k + 34036 := by
    unfold C
    simp [show (11664 * k + 11345) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 34036) = 17496 * k + 17018 := by
    unfold C
    simp [show (34992 * k + 34036) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 17018) = 8748 * k + 8509 := by
    unfold C
    simp [show (17496 * k + 17018) % 2 = 0 by omega]
    omega
  have h19 : C (8748 * k + 8509) = 26244 * k + 25528 := by
    unfold C
    simp [show (8748 * k + 8509) % 2 ≠ 0 by omega]
    omega
  have h20 : C (26244 * k + 25528) = 13122 * k + 12764 := by
    unfold C
    simp [show (26244 * k + 25528) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12764) = 6561 * k + 6382 := by
    unfold C
    simp [show (13122 * k + 12764) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 7967) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 7967))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_8047 : ∀ k : Nat, iterate (8192 * k + 8047) 21 = 6561 * k + 6446 ∧ 6561 * k + 6446 < 8192 * k + 8047 := by
  intro k
  have h1 : C (8192 * k + 8047) = 24576 * k + 24142 := by
    unfold C
    simp [show (8192 * k + 8047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 24142) = 12288 * k + 12071 := by
    unfold C
    simp [show (24576 * k + 24142) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 12071) = 36864 * k + 36214 := by
    unfold C
    simp [show (12288 * k + 12071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 36214) = 18432 * k + 18107 := by
    unfold C
    simp [show (36864 * k + 36214) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 18107) = 55296 * k + 54322 := by
    unfold C
    simp [show (18432 * k + 18107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 54322) = 27648 * k + 27161 := by
    unfold C
    simp [show (55296 * k + 54322) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 27161) = 82944 * k + 81484 := by
    unfold C
    simp [show (27648 * k + 27161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (82944 * k + 81484) = 41472 * k + 40742 := by
    unfold C
    simp [show (82944 * k + 81484) % 2 = 0 by omega]
    omega
  have h9 : C (41472 * k + 40742) = 20736 * k + 20371 := by
    unfold C
    simp [show (41472 * k + 40742) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 20371) = 62208 * k + 61114 := by
    unfold C
    simp [show (20736 * k + 20371) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 61114) = 31104 * k + 30557 := by
    unfold C
    simp [show (62208 * k + 61114) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 30557) = 93312 * k + 91672 := by
    unfold C
    simp [show (31104 * k + 30557) % 2 ≠ 0 by omega]
    omega
  have h13 : C (93312 * k + 91672) = 46656 * k + 45836 := by
    unfold C
    simp [show (93312 * k + 91672) % 2 = 0 by omega]
    omega
  have h14 : C (46656 * k + 45836) = 23328 * k + 22918 := by
    unfold C
    simp [show (46656 * k + 45836) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 22918) = 11664 * k + 11459 := by
    unfold C
    simp [show (23328 * k + 22918) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 11459) = 34992 * k + 34378 := by
    unfold C
    simp [show (11664 * k + 11459) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 34378) = 17496 * k + 17189 := by
    unfold C
    simp [show (34992 * k + 34378) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 17189) = 52488 * k + 51568 := by
    unfold C
    simp [show (17496 * k + 17189) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 51568) = 26244 * k + 25784 := by
    unfold C
    simp [show (52488 * k + 51568) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 25784) = 13122 * k + 12892 := by
    unfold C
    simp [show (26244 * k + 25784) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12892) = 6561 * k + 6446 := by
    unfold C
    simp [show (13122 * k + 12892) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 8047) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 8047))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

theorem descent_mod8192_8103 : ∀ k : Nat, iterate (8192 * k + 8103) 21 = 6561 * k + 6491 ∧ 6561 * k + 6491 < 8192 * k + 8103 := by
  intro k
  have h1 : C (8192 * k + 8103) = 24576 * k + 24310 := by
    unfold C
    simp [show (8192 * k + 8103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (24576 * k + 24310) = 12288 * k + 12155 := by
    unfold C
    simp [show (24576 * k + 24310) % 2 = 0 by omega]
    omega
  have h3 : C (12288 * k + 12155) = 36864 * k + 36466 := by
    unfold C
    simp [show (12288 * k + 12155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (36864 * k + 36466) = 18432 * k + 18233 := by
    unfold C
    simp [show (36864 * k + 36466) % 2 = 0 by omega]
    omega
  have h5 : C (18432 * k + 18233) = 55296 * k + 54700 := by
    unfold C
    simp [show (18432 * k + 18233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (55296 * k + 54700) = 27648 * k + 27350 := by
    unfold C
    simp [show (55296 * k + 54700) % 2 = 0 by omega]
    omega
  have h7 : C (27648 * k + 27350) = 13824 * k + 13675 := by
    unfold C
    simp [show (27648 * k + 27350) % 2 = 0 by omega]
    omega
  have h8 : C (13824 * k + 13675) = 41472 * k + 41026 := by
    unfold C
    simp [show (13824 * k + 13675) % 2 ≠ 0 by omega]
    omega
  have h9 : C (41472 * k + 41026) = 20736 * k + 20513 := by
    unfold C
    simp [show (41472 * k + 41026) % 2 = 0 by omega]
    omega
  have h10 : C (20736 * k + 20513) = 62208 * k + 61540 := by
    unfold C
    simp [show (20736 * k + 20513) % 2 ≠ 0 by omega]
    omega
  have h11 : C (62208 * k + 61540) = 31104 * k + 30770 := by
    unfold C
    simp [show (62208 * k + 61540) % 2 = 0 by omega]
    omega
  have h12 : C (31104 * k + 30770) = 15552 * k + 15385 := by
    unfold C
    simp [show (31104 * k + 30770) % 2 = 0 by omega]
    omega
  have h13 : C (15552 * k + 15385) = 46656 * k + 46156 := by
    unfold C
    simp [show (15552 * k + 15385) % 2 ≠ 0 by omega]
    omega
  have h14 : C (46656 * k + 46156) = 23328 * k + 23078 := by
    unfold C
    simp [show (46656 * k + 46156) % 2 = 0 by omega]
    omega
  have h15 : C (23328 * k + 23078) = 11664 * k + 11539 := by
    unfold C
    simp [show (23328 * k + 23078) % 2 = 0 by omega]
    omega
  have h16 : C (11664 * k + 11539) = 34992 * k + 34618 := by
    unfold C
    simp [show (11664 * k + 11539) % 2 ≠ 0 by omega]
    omega
  have h17 : C (34992 * k + 34618) = 17496 * k + 17309 := by
    unfold C
    simp [show (34992 * k + 34618) % 2 = 0 by omega]
    omega
  have h18 : C (17496 * k + 17309) = 52488 * k + 51928 := by
    unfold C
    simp [show (17496 * k + 17309) % 2 ≠ 0 by omega]
    omega
  have h19 : C (52488 * k + 51928) = 26244 * k + 25964 := by
    unfold C
    simp [show (52488 * k + 51928) % 2 = 0 by omega]
    omega
  have h20 : C (26244 * k + 25964) = 13122 * k + 12982 := by
    unfold C
    simp [show (26244 * k + 25964) % 2 = 0 by omega]
    omega
  have h21 : C (13122 * k + 12982) = 6561 * k + 6491 := by
    unfold C
    simp [show (13122 * k + 12982) % 2 = 0 by omega]
    omega
  have hIter : iterate (8192 * k + 8103) 21 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (8192 * k + 8103))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21]
  · omega

def coveredResidue4096Class (n : Nat) : Prop :=
  coveredResidue256Class n ∨
    n % 1024 = 287 ∨ n % 1024 = 347 ∨ n % 1024 = 367 ∨ n % 1024 = 423 ∨ n % 1024 = 507 ∨ n % 1024 = 575 ∨ n % 1024 = 583 ∨ n % 1024 = 735 ∨ n % 1024 = 815 ∨ n % 1024 = 923 ∨ n % 1024 = 975 ∨ n % 1024 = 999 ∨
    n % 4096 = 231 ∨ n % 4096 = 383 ∨ n % 4096 = 463 ∨ n % 4096 = 615 ∨ n % 4096 = 879 ∨ n % 4096 = 935 ∨ n % 4096 = 1019 ∨ n % 4096 = 1087 ∨ n % 4096 = 1231 ∨ n % 4096 = 1435 ∨ n % 4096 = 1647 ∨ n % 4096 = 1703 ∨ n % 4096 = 1787 ∨ n % 4096 = 1823 ∨ n % 4096 = 1855 ∨ n % 4096 = 2031 ∨ n % 4096 = 2203 ∨ n % 4096 = 2239 ∨ n % 4096 = 2351 ∨ n % 4096 = 2587 ∨ n % 4096 = 2591 ∨ n % 4096 = 2907 ∨ n % 4096 = 2975 ∨ n % 4096 = 3119 ∨ n % 4096 = 3143 ∨ n % 4096 = 3295 ∨ n % 4096 = 3559 ∨ n % 4096 = 3675 ∨ n % 4096 = 3911 ∨ n % 4096 = 4063

theorem bounded_residue_descent_plus_m13_prefix :
    ∀ n : Nat, 2 ≤ n →
      (coveredResidue4096Class n ∨
        n % 8192 = 191 ∨ n % 8192 = 207 ∨ n % 8192 = 255 ∨ n % 8192 = 303 ∨ n % 8192 = 539 ∨ n % 8192 = 543 ∨ n % 8192 = 623 ∨ n % 8192 = 679 ∨ n % 8192 = 719 ∨ n % 8192 = 799 ∨ n % 8192 = 1071 ∨ n % 8192 = 1135 ∨ n % 8192 = 1191 ∨ n % 8192 = 1215 ∨ n % 8192 = 1247 ∨ n % 8192 = 1327 ∨ n % 8192 = 1563 ∨ n % 8192 = 1567 ∨ n % 8192 = 1727 ∨ n % 8192 = 1983 ∨ n % 8192 = 2015 ∨ n % 8192 = 2075 ∨ n % 8192 = 2079 ∨ n % 8192 = 2095 ∨ n % 8192 = 2271 ∨ n % 8192 = 2331 ∨ n % 8192 = 2431 ∨ n % 8192 = 2607 ∨ n % 8192 = 2663 ∨ n % 8192 = 3039 ∨ n % 8192 = 3067 ∨ n % 8192 = 3135 ∨ n % 8192 = 3455 ∨ n % 8192 = 3483 ∨ n % 8192 = 3551 ∨ n % 8192 = 3687 ∨ n % 8192 = 3835 ∨ n % 8192 = 3903 ∨ n % 8192 = 3967 ∨ n % 8192 = 4079 ∨ n % 8192 = 4091 ∨ n % 8192 = 4159 ∨ n % 8192 = 4199 ∨ n % 8192 = 4223 ∨ n % 8192 = 4251 ∨ n % 8192 = 4455 ∨ n % 8192 = 4507 ∨ n % 8192 = 4859 ∨ n % 8192 = 4927 ∨ n % 8192 = 4955 ∨ n % 8192 = 5023 ∨ n % 8192 = 5103 ∨ n % 8192 = 5191 ∨ n % 8192 = 5275 ∨ n % 8192 = 5371 ∨ n % 8192 = 5439 ∨ n % 8192 = 5607 ∨ n % 8192 = 5615 ∨ n % 8192 = 5723 ∨ n % 8192 = 5787 ∨ n % 8192 = 5871 ∨ n % 8192 = 5959 ∨ n % 8192 = 5979 ∨ n % 8192 = 6047 ∨ n % 8192 = 6215 ∨ n % 8192 = 6375 ∨ n % 8192 = 6559 ∨ n % 8192 = 6607 ∨ n % 8192 = 6631 ∨ n % 8192 = 6747 ∨ n % 8192 = 6815 ∨ n % 8192 = 6983 ∨ n % 8192 = 7023 ∨ n % 8192 = 7079 ∨ n % 8192 = 7259 ∨ n % 8192 = 7375 ∨ n % 8192 = 7399 ∨ n % 8192 = 7495 ∨ n % 8192 = 7631 ∨ n % 8192 = 7791 ∨ n % 8192 = 7847 ∨ n % 8192 = 7911 ∨ n % 8192 = 7967 ∨ n % 8192 = 8047 ∨ n % 8192 = 8103) →
      ∃ t : Nat, 1 ≤ t ∧ t ≤ 21 ∧ iterate n t < n := by
  intro n hn hres
  rcases hres with hbase | hrest
  · have hbaseRaw : coveredResidue256Class n ∨
        n % 1024 = 287 ∨ n % 1024 = 347 ∨ n % 1024 = 367 ∨ n % 1024 = 423 ∨ n % 1024 = 507 ∨ n % 1024 = 575 ∨ n % 1024 = 583 ∨ n % 1024 = 735 ∨ n % 1024 = 815 ∨ n % 1024 = 923 ∨ n % 1024 = 975 ∨ n % 1024 = 999 ∨
        n % 4096 = 231 ∨ n % 4096 = 383 ∨ n % 4096 = 463 ∨ n % 4096 = 615 ∨ n % 4096 = 879 ∨ n % 4096 = 935 ∨ n % 4096 = 1019 ∨ n % 4096 = 1087 ∨ n % 4096 = 1231 ∨ n % 4096 = 1435 ∨ n % 4096 = 1647 ∨ n % 4096 = 1703 ∨ n % 4096 = 1787 ∨ n % 4096 = 1823 ∨ n % 4096 = 1855 ∨ n % 4096 = 2031 ∨ n % 4096 = 2203 ∨ n % 4096 = 2239 ∨ n % 4096 = 2351 ∨ n % 4096 = 2587 ∨ n % 4096 = 2591 ∨ n % 4096 = 2907 ∨ n % 4096 = 2975 ∨ n % 4096 = 3119 ∨ n % 4096 = 3143 ∨ n % 4096 = 3295 ∨ n % 4096 = 3559 ∨ n % 4096 = 3675 ∨ n % 4096 = 3911 ∨ n % 4096 = 4063 := by
      simpa [coveredResidue4096Class] using hbase
    obtain ⟨t, ht1, ht2, hlt⟩ := bounded_residue_descent_plus_m12_prefix n hn hbaseRaw
    exact ⟨t, ht1, by omega, hlt⟩
  rcases hrest with hnew0 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 191 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_191 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew1 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 207 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_207 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew2 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 255 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_255 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew3 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 303 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_303 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew4 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 539 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_539 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew5 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 543 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_543 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew6 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 623 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_623 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew7 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 679 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_679 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew8 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 719 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_719 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew9 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 799 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_799 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew10 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1071 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1071 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew11 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1135 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1135 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew12 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1191 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1191 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew13 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1215 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1215 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew14 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1247 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1247 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew15 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1327 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1327 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew16 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1563 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1563 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew17 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1567 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1567 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew18 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1727 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1727 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew19 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 1983 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_1983 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew20 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2015 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2015 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew21 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2075 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2075 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew22 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2079 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2079 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew23 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2095 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2095 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew24 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2271 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2271 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew25 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2331 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2331 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew26 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2431 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2431 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew27 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2607 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2607 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew28 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 2663 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_2663 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew29 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3039 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3039 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew30 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3067 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3067 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew31 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3135 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3135 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew32 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3455 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3455 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew33 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3483 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3483 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew34 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3551 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3551 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew35 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3687 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3687 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew36 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3835 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3835 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew37 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3903 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3903 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew38 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 3967 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_3967 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew39 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4079 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4079 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew40 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4091 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4091 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew41 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4159 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4159 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew42 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4199 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4199 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew43 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4223 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4223 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew44 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4251 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4251 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew45 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4455 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4455 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew46 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4507 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4507 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew47 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4859 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4859 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew48 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4927 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4927 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew49 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 4955 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_4955 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew50 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5023 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5023 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew51 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5103 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5103 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew52 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5191 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5191 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew53 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5275 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5275 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew54 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5371 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5371 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew55 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5439 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5439 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew56 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5607 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5607 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew57 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5615 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5615 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew58 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5723 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5723 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew59 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5787 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5787 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew60 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5871 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5871 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew61 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5959 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5959 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew62 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 5979 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_5979 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew63 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6047 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6047 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew64 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6215 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6215 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew65 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6375 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6375 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew66 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6559 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6559 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew67 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6607 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6607 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew68 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6631 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6631 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew69 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6747 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6747 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew70 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6815 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6815 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew71 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 6983 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_6983 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew72 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7023 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7023 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew73 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7079 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7079 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew74 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7259 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7259 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew75 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7375 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7375 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew76 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7399 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7399 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew77 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7495 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7495 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew78 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7631 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7631 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew79 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7791 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7791 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew80 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7847 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7847 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew81 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7911 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7911 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew82 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 7967 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_7967 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  rcases hrest with hnew83 | hrest
  · have hdiv : n = 8192 * (n / 8192) + 8047 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_8047 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt
  · have hdiv : n = 8192 * (n / 8192) + 8103 := by
      have h := Nat.mod_add_div n 8192
      omega
    obtain ⟨heq, hlt⟩ := descent_mod8192_8103 (n / 8192)
    refine ⟨21, by omega, by omega, ?_⟩
    rw [hdiv]
    rw [heq]
    exact hlt

def eligibleResidue8192 (r : Nat) : Bool :=
  eligibleResidue4096 (r % 8192) || ([191, 207, 255, 303, 539, 543, 623, 679, 719, 799, 1071, 1135, 1191, 1215, 1247, 1327, 1563, 1567, 1727, 1983, 2015, 2075, 2079, 2095, 2271, 2331, 2431, 2607, 2663, 3039, 3067, 3135, 3455, 3483, 3551, 3687, 3835, 3903, 3967, 4079, 4091, 4159, 4199, 4223, 4251, 4455, 4507, 4859, 4927, 4955, 5023, 5103, 5191, 5275, 5371, 5439, 5607, 5615, 5723, 5787, 5871, 5959, 5979, 6047, 6215, 6375, 6559, 6607, 6631, 6747, 6815, 6983, 7023, 7079, 7259, 7375, 7399, 7495, 7631, 7791, 7847, 7911, 7967, 8047, 8103].contains (r % 8192))

set_option maxRecDepth 32768 in
theorem eligibleResidue8192_count :
    (List.filter eligibleResidue8192 (List.range 8192)).length = 7825 := by
  decide

#print axioms bounded_residue_descent_plus_m13_prefix
#print axioms eligibleResidue8192_count

end ResidueLane115
