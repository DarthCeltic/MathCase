import Mathlib.Data.Nat.Prime.Basic

theorem mathcase_candidate : ((fun C : Nat → Nat => ∀ k : Nat, Nat.rec (128*k+7) (fun _ previous => C previous) 11 = 81*k+5 ∧ 81*k+5 < 128*k+7) (fun n : Nat => if n % 2 = 0 then n / 2 else 3*n+1)) := by
  intro k
  have h1mod : (128*k+7) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h1 : (if (128*k+7) % 2 = 0 then (128*k+7)/2 else 3*(128*k+7)+1) = 384*k+22 := by
    rw [if_neg]
    · omega
    · simp [h1mod]
  have h2mod : (384*k+22) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h2 : (if (384*k+22) % 2 = 0 then (384*k+22)/2 else 3*(384*k+22)+1) = 192*k+11 := by
    rw [if_pos h2mod]
    rw [show 384*k+22 = 2*(192*k+11) by omega]
    simp [Nat.mul_div_right]
  have h3mod : (192*k+11) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h3 : (if (192*k+11) % 2 = 0 then (192*k+11)/2 else 3*(192*k+11)+1) = 576*k+34 := by
    rw [if_neg]
    · omega
    · simp [h3mod]
  have h4mod : (576*k+34) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h4 : (if (576*k+34) % 2 = 0 then (576*k+34)/2 else 3*(576*k+34)+1) = 288*k+17 := by
    rw [if_pos h4mod]
    rw [show 576*k+34 = 2*(288*k+17) by omega]
    simp [Nat.mul_div_right]
  have h5mod : (288*k+17) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h5 : (if (288*k+17) % 2 = 0 then (288*k+17)/2 else 3*(288*k+17)+1) = 864*k+52 := by
    rw [if_neg]
    · omega
    · simp [h5mod]
  have h6mod : (864*k+52) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h6 : (if (864*k+52) % 2 = 0 then (864*k+52)/2 else 3*(864*k+52)+1) = 432*k+26 := by
    rw [if_pos h6mod]
    rw [show 864*k+52 = 2*(432*k+26) by omega]
    simp [Nat.mul_div_right]
  have h7mod : (432*k+26) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h7 : (if (432*k+26) % 2 = 0 then (432*k+26)/2 else 3*(432*k+26)+1) = 216*k+13 := by
    rw [if_pos h7mod]
    rw [show 432*k+26 = 2*(216*k+13) by omega]
    simp [Nat.mul_div_right]
  have h8mod : (216*k+13) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h8 : (if (216*k+13) % 2 = 0 then (216*k+13)/2 else 3*(216*k+13)+1) = 648*k+40 := by
    rw [if_neg]
    · omega
    · simp [h8mod]
  have h9mod : (648*k+40) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h9 : (if (648*k+40) % 2 = 0 then (648*k+40)/2 else 3*(648*k+40)+1) = 324*k+20 := by
    rw [if_pos h9mod]
    rw [show 648*k+40 = 2*(324*k+20) by omega]
    simp [Nat.mul_div_right]
  have h10mod : (324*k+20) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h10 : (if (324*k+20) % 2 = 0 then (324*k+20)/2 else 3*(324*k+20)+1) = 162*k+10 := by
    rw [if_pos h10mod]
    rw [show 324*k+20 = 2*(162*k+10) by omega]
    simp [Nat.mul_div_right]
  have h11mod : (162*k+10) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h11 : (if (162*k+10) % 2 = 0 then (162*k+10)/2 else 3*(162*k+10)+1) = 81*k+5 := by
    rw [if_pos h11mod]
    rw [show 162*k+10 = 2*(81*k+5) by omega]
    simp [Nat.mul_div_right]
  constructor
  · repeat rw [Nat.rec_succ]
    rw [Nat.rec_zero]
    simp [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11]
  · omega

#print axioms mathcase_candidate
