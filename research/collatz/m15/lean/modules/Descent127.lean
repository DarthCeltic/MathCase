import Mathlib.Data.Nat.Prime.Basic

namespace CollatzR127

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_127 : ∀ k : Nat, iterate (32768 * k + 127) 24 = 19683 * k + 77 ∧ 19683 * k + 77 < 32768 * k + 127 := by
  intro k
  have h1 : C (32768 * k + 127) = 98304 * k + 382 := by
    unfold C
    simp [show (32768 * k + 127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 382) = 49152 * k + 191 := by
    unfold C
    simp [show (98304 * k + 382) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 191) = 147456 * k + 574 := by
    unfold C
    simp [show (49152 * k + 191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 574) = 73728 * k + 287 := by
    unfold C
    simp [show (147456 * k + 574) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 287) = 221184 * k + 862 := by
    unfold C
    simp [show (73728 * k + 287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 862) = 110592 * k + 431 := by
    unfold C
    simp [show (221184 * k + 862) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 431) = 331776 * k + 1294 := by
    unfold C
    simp [show (110592 * k + 431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 1294) = 165888 * k + 647 := by
    unfold C
    simp [show (331776 * k + 1294) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 647) = 497664 * k + 1942 := by
    unfold C
    simp [show (165888 * k + 647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 1942) = 248832 * k + 971 := by
    unfold C
    simp [show (497664 * k + 1942) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 971) = 746496 * k + 2914 := by
    unfold C
    simp [show (248832 * k + 971) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 2914) = 373248 * k + 1457 := by
    unfold C
    simp [show (746496 * k + 2914) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 1457) = 1119744 * k + 4372 := by
    unfold C
    simp [show (373248 * k + 1457) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 4372) = 559872 * k + 2186 := by
    unfold C
    simp [show (1119744 * k + 4372) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 2186) = 279936 * k + 1093 := by
    unfold C
    simp [show (559872 * k + 2186) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 1093) = 839808 * k + 3280 := by
    unfold C
    simp [show (279936 * k + 1093) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 3280) = 419904 * k + 1640 := by
    unfold C
    simp [show (839808 * k + 3280) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 1640) = 209952 * k + 820 := by
    unfold C
    simp [show (419904 * k + 1640) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 820) = 104976 * k + 410 := by
    unfold C
    simp [show (209952 * k + 820) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 410) = 52488 * k + 205 := by
    unfold C
    simp [show (104976 * k + 410) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 205) = 157464 * k + 616 := by
    unfold C
    simp [show (52488 * k + 205) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 616) = 78732 * k + 308 := by
    unfold C
    simp [show (157464 * k + 616) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 308) = 39366 * k + 154 := by
    unfold C
    simp [show (78732 * k + 308) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 154) = 19683 * k + 77 := by
    unfold C
    simp [show (39366 * k + 154) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 127) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 127)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_127

end CollatzR127
