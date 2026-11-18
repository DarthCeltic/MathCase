import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard049

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_262079 : ∀ k : Nat,
    iterate (262144 * k + 262079) 29 = 177147 * k + 177104 ∧
      177147 * k + 177104 < 262144 * k + 262079 := by
  intro k
  have h1 : C (262144 * k + 262079) = 786432 * k + 786238 := by
    unfold C
    simp [show (262144 * k + 262079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 786238) = 393216 * k + 393119 := by
    unfold C
    simp [show (786432 * k + 786238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 393119) = 1179648 * k + 1179358 := by
    unfold C
    simp [show (393216 * k + 393119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1179358) = 589824 * k + 589679 := by
    unfold C
    simp [show (1179648 * k + 1179358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 589679) = 1769472 * k + 1769038 := by
    unfold C
    simp [show (589824 * k + 589679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1769038) = 884736 * k + 884519 := by
    unfold C
    simp [show (1769472 * k + 1769038) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 884519) = 2654208 * k + 2653558 := by
    unfold C
    simp [show (884736 * k + 884519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2653558) = 1327104 * k + 1326779 := by
    unfold C
    simp [show (2654208 * k + 2653558) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1326779) = 3981312 * k + 3980338 := by
    unfold C
    simp [show (1327104 * k + 1326779) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3980338) = 1990656 * k + 1990169 := by
    unfold C
    simp [show (3981312 * k + 3980338) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1990169) = 5971968 * k + 5970508 := by
    unfold C
    simp [show (1990656 * k + 1990169) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5970508) = 2985984 * k + 2985254 := by
    unfold C
    simp [show (5971968 * k + 5970508) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2985254) = 1492992 * k + 1492627 := by
    unfold C
    simp [show (2985984 * k + 2985254) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1492627) = 4478976 * k + 4477882 := by
    unfold C
    simp [show (1492992 * k + 1492627) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4477882) = 2239488 * k + 2238941 := by
    unfold C
    simp [show (4478976 * k + 4477882) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2238941) = 6718464 * k + 6716824 := by
    unfold C
    simp [show (2239488 * k + 2238941) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6716824) = 3359232 * k + 3358412 := by
    unfold C
    simp [show (6718464 * k + 6716824) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3358412) = 1679616 * k + 1679206 := by
    unfold C
    simp [show (3359232 * k + 3358412) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1679206) = 839808 * k + 839603 := by
    unfold C
    simp [show (1679616 * k + 1679206) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 839603) = 2519424 * k + 2518810 := by
    unfold C
    simp [show (839808 * k + 839603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2518810) = 1259712 * k + 1259405 := by
    unfold C
    simp [show (2519424 * k + 2518810) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1259405) = 3779136 * k + 3778216 := by
    unfold C
    simp [show (1259712 * k + 1259405) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3778216) = 1889568 * k + 1889108 := by
    unfold C
    simp [show (3779136 * k + 3778216) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1889108) = 944784 * k + 944554 := by
    unfold C
    simp [show (1889568 * k + 1889108) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 944554) = 472392 * k + 472277 := by
    unfold C
    simp [show (944784 * k + 944554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 472277) = 1417176 * k + 1416832 := by
    unfold C
    simp [show (472392 * k + 472277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1416832) = 708588 * k + 708416 := by
    unfold C
    simp [show (1417176 * k + 1416832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 708416) = 354294 * k + 354208 := by
    unfold C
    simp [show (708588 * k + 708416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 354208) = 177147 * k + 177104 := by
    unfold C
    simp [show (354294 * k + 354208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 262079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 262079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard049
