import Mathlib.Data.Nat.Prime.Basic

theorem mathcase_candidate : ((fun C : Nat → Nat => ∀ k : Nat, Nat.rec (256*k+39) (fun _ previous => C previous) 13 = 243*k+38 ∧ 243*k+38 < 256*k+39) (fun n : Nat => if n % 2 = 0 then n / 2 else 3*n+1)) := by
  intro k
  have h1mod : (256*k+39) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h1 : (if (256*k+39) % 2 = 0 then (256*k+39)/2 else 3*(256*k+39)+1) = 768*k+118 := by
    rw [if_neg]
    · omega
    · simp [h1mod]
  have h2mod : (768*k+118) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h2 : (if (768*k+118) % 2 = 0 then (768*k+118)/2 else 3*(768*k+118)+1) = 384*k+59 := by
    rw [if_pos h2mod]
    rw [show 768*k+118 = 2*(384*k+59) by omega]
    simp [Nat.mul_div_right]
  have h3mod : (384*k+59) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h3 : (if (384*k+59) % 2 = 0 then (384*k+59)/2 else 3*(384*k+59)+1) = 1152*k+178 := by
    rw [if_neg]
    · omega
    · simp [h3mod]
  have h4mod : (1152*k+178) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h4 : (if (1152*k+178) % 2 = 0 then (1152*k+178)/2 else 3*(1152*k+178)+1) = 576*k+89 := by
    rw [if_pos h4mod]
    rw [show 1152*k+178 = 2*(576*k+89) by omega]
    simp [Nat.mul_div_right]
  have h5mod : (576*k+89) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h5 : (if (576*k+89) % 2 = 0 then (576*k+89)/2 else 3*(576*k+89)+1) = 1728*k+268 := by
    rw [if_neg]
    · omega
    · simp [h5mod]
  have h6mod : (1728*k+268) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h6 : (if (1728*k+268) % 2 = 0 then (1728*k+268)/2 else 3*(1728*k+268)+1) = 864*k+134 := by
    rw [if_pos h6mod]
    rw [show 1728*k+268 = 2*(864*k+134) by omega]
    simp [Nat.mul_div_right]
  have h7mod : (864*k+134) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h7 : (if (864*k+134) % 2 = 0 then (864*k+134)/2 else 3*(864*k+134)+1) = 432*k+67 := by
    rw [if_pos h7mod]
    rw [show 864*k+134 = 2*(432*k+67) by omega]
    simp [Nat.mul_div_right]
  have h8mod : (432*k+67) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h8 : (if (432*k+67) % 2 = 0 then (432*k+67)/2 else 3*(432*k+67)+1) = 1296*k+202 := by
    rw [if_neg]
    · omega
    · simp [h8mod]
  have h9mod : (1296*k+202) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h9 : (if (1296*k+202) % 2 = 0 then (1296*k+202)/2 else 3*(1296*k+202)+1) = 648*k+101 := by
    rw [if_pos h9mod]
    rw [show 1296*k+202 = 2*(648*k+101) by omega]
    simp [Nat.mul_div_right]
  have h10mod : (648*k+101) % 2 = 1 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h10 : (if (648*k+101) % 2 = 0 then (648*k+101)/2 else 3*(648*k+101)+1) = 1944*k+304 := by
    rw [if_neg]
    · omega
    · simp [h10mod]
  have h11mod : (1944*k+304) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h11 : (if (1944*k+304) % 2 = 0 then (1944*k+304)/2 else 3*(1944*k+304)+1) = 972*k+152 := by
    rw [if_pos h11mod]
    rw [show 1944*k+304 = 2*(972*k+152) by omega]
    simp [Nat.mul_div_right]
  have h12mod : (972*k+152) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h12 : (if (972*k+152) % 2 = 0 then (972*k+152)/2 else 3*(972*k+152)+1) = 486*k+76 := by
    rw [if_pos h12mod]
    rw [show 972*k+152 = 2*(486*k+76) by omega]
    simp [Nat.mul_div_right]
  have h13mod : (486*k+76) % 2 = 0 := by
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt]
  have h13 : (if (486*k+76) % 2 = 0 then (486*k+76)/2 else 3*(486*k+76)+1) = 243*k+38 := by
    rw [if_pos h13mod]
    rw [show 486*k+76 = 2*(243*k+38) by omega]
    simp [Nat.mul_div_right]
  have hIter : Nat.rec (256*k+39) (fun _ previous => (fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) previous) 13 =
      (fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((fun n : Nat => if n % 2 = 0 then n / 2 else 3 * n + 1) ((256*k+39)))))))))))))) := by
    rfl
  constructor
  · rw [hIter]
    simp only [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13]
  · omega

#print axioms mathcase_candidate
