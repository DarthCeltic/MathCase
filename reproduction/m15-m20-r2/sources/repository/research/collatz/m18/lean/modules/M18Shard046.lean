import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard046

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_245851 : ∀ k : Nat,
    iterate (262144 * k + 245851) 29 = 177147 * k + 166138 ∧
      177147 * k + 166138 < 262144 * k + 245851 := by
  intro k
  have h1 : C (262144 * k + 245851) = 786432 * k + 737554 := by
    unfold C
    simp [show (262144 * k + 245851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 737554) = 393216 * k + 368777 := by
    unfold C
    simp [show (786432 * k + 737554) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 368777) = 1179648 * k + 1106332 := by
    unfold C
    simp [show (393216 * k + 368777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1106332) = 589824 * k + 553166 := by
    unfold C
    simp [show (1179648 * k + 1106332) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 553166) = 294912 * k + 276583 := by
    unfold C
    simp [show (589824 * k + 553166) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 276583) = 884736 * k + 829750 := by
    unfold C
    simp [show (294912 * k + 276583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 829750) = 442368 * k + 414875 := by
    unfold C
    simp [show (884736 * k + 829750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 414875) = 1327104 * k + 1244626 := by
    unfold C
    simp [show (442368 * k + 414875) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1244626) = 663552 * k + 622313 := by
    unfold C
    simp [show (1327104 * k + 1244626) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 622313) = 1990656 * k + 1866940 := by
    unfold C
    simp [show (663552 * k + 622313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1866940) = 995328 * k + 933470 := by
    unfold C
    simp [show (1990656 * k + 1866940) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 933470) = 497664 * k + 466735 := by
    unfold C
    simp [show (995328 * k + 933470) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 466735) = 1492992 * k + 1400206 := by
    unfold C
    simp [show (497664 * k + 466735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1400206) = 746496 * k + 700103 := by
    unfold C
    simp [show (1492992 * k + 1400206) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 700103) = 2239488 * k + 2100310 := by
    unfold C
    simp [show (746496 * k + 700103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2100310) = 1119744 * k + 1050155 := by
    unfold C
    simp [show (2239488 * k + 2100310) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1050155) = 3359232 * k + 3150466 := by
    unfold C
    simp [show (1119744 * k + 1050155) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3150466) = 1679616 * k + 1575233 := by
    unfold C
    simp [show (3359232 * k + 3150466) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1575233) = 5038848 * k + 4725700 := by
    unfold C
    simp [show (1679616 * k + 1575233) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4725700) = 2519424 * k + 2362850 := by
    unfold C
    simp [show (5038848 * k + 4725700) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2362850) = 1259712 * k + 1181425 := by
    unfold C
    simp [show (2519424 * k + 2362850) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1181425) = 3779136 * k + 3544276 := by
    unfold C
    simp [show (1259712 * k + 1181425) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3544276) = 1889568 * k + 1772138 := by
    unfold C
    simp [show (3779136 * k + 3544276) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1772138) = 944784 * k + 886069 := by
    unfold C
    simp [show (1889568 * k + 1772138) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 886069) = 2834352 * k + 2658208 := by
    unfold C
    simp [show (944784 * k + 886069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2658208) = 1417176 * k + 1329104 := by
    unfold C
    simp [show (2834352 * k + 2658208) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1329104) = 708588 * k + 664552 := by
    unfold C
    simp [show (1417176 * k + 1329104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 664552) = 354294 * k + 332276 := by
    unfold C
    simp [show (708588 * k + 664552) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 332276) = 177147 * k + 166138 := by
    unfold C
    simp [show (354294 * k + 332276) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 245851) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 245851))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_246655 : ∀ k : Nat,
    iterate (262144 * k + 246655) 29 = 177147 * k + 166681 ∧
      177147 * k + 166681 < 262144 * k + 246655 := by
  intro k
  have h1 : C (262144 * k + 246655) = 786432 * k + 739966 := by
    unfold C
    simp [show (262144 * k + 246655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 739966) = 393216 * k + 369983 := by
    unfold C
    simp [show (786432 * k + 739966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 369983) = 1179648 * k + 1109950 := by
    unfold C
    simp [show (393216 * k + 369983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1109950) = 589824 * k + 554975 := by
    unfold C
    simp [show (1179648 * k + 1109950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 554975) = 1769472 * k + 1664926 := by
    unfold C
    simp [show (589824 * k + 554975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1664926) = 884736 * k + 832463 := by
    unfold C
    simp [show (1769472 * k + 1664926) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 832463) = 2654208 * k + 2497390 := by
    unfold C
    simp [show (884736 * k + 832463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2497390) = 1327104 * k + 1248695 := by
    unfold C
    simp [show (2654208 * k + 2497390) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1248695) = 3981312 * k + 3746086 := by
    unfold C
    simp [show (1327104 * k + 1248695) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3746086) = 1990656 * k + 1873043 := by
    unfold C
    simp [show (3981312 * k + 3746086) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1873043) = 5971968 * k + 5619130 := by
    unfold C
    simp [show (1990656 * k + 1873043) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5619130) = 2985984 * k + 2809565 := by
    unfold C
    simp [show (5971968 * k + 5619130) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2809565) = 8957952 * k + 8428696 := by
    unfold C
    simp [show (2985984 * k + 2809565) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8428696) = 4478976 * k + 4214348 := by
    unfold C
    simp [show (8957952 * k + 8428696) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4214348) = 2239488 * k + 2107174 := by
    unfold C
    simp [show (4478976 * k + 4214348) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2107174) = 1119744 * k + 1053587 := by
    unfold C
    simp [show (2239488 * k + 2107174) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1053587) = 3359232 * k + 3160762 := by
    unfold C
    simp [show (1119744 * k + 1053587) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3160762) = 1679616 * k + 1580381 := by
    unfold C
    simp [show (3359232 * k + 3160762) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1580381) = 5038848 * k + 4741144 := by
    unfold C
    simp [show (1679616 * k + 1580381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4741144) = 2519424 * k + 2370572 := by
    unfold C
    simp [show (5038848 * k + 4741144) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2370572) = 1259712 * k + 1185286 := by
    unfold C
    simp [show (2519424 * k + 2370572) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1185286) = 629856 * k + 592643 := by
    unfold C
    simp [show (1259712 * k + 1185286) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 592643) = 1889568 * k + 1777930 := by
    unfold C
    simp [show (629856 * k + 592643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1777930) = 944784 * k + 888965 := by
    unfold C
    simp [show (1889568 * k + 1777930) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 888965) = 2834352 * k + 2666896 := by
    unfold C
    simp [show (944784 * k + 888965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2666896) = 1417176 * k + 1333448 := by
    unfold C
    simp [show (2834352 * k + 2666896) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1333448) = 708588 * k + 666724 := by
    unfold C
    simp [show (1417176 * k + 1333448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 666724) = 354294 * k + 333362 := by
    unfold C
    simp [show (708588 * k + 666724) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 333362) = 177147 * k + 166681 := by
    unfold C
    simp [show (354294 * k + 333362) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 246655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 246655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_246687 : ∀ k : Nat,
    iterate (262144 * k + 246687) 29 = 177147 * k + 166703 ∧
      177147 * k + 166703 < 262144 * k + 246687 := by
  intro k
  have h1 : C (262144 * k + 246687) = 786432 * k + 740062 := by
    unfold C
    simp [show (262144 * k + 246687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 740062) = 393216 * k + 370031 := by
    unfold C
    simp [show (786432 * k + 740062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370031) = 1179648 * k + 1110094 := by
    unfold C
    simp [show (393216 * k + 370031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1110094) = 589824 * k + 555047 := by
    unfold C
    simp [show (1179648 * k + 1110094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 555047) = 1769472 * k + 1665142 := by
    unfold C
    simp [show (589824 * k + 555047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1665142) = 884736 * k + 832571 := by
    unfold C
    simp [show (1769472 * k + 1665142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 832571) = 2654208 * k + 2497714 := by
    unfold C
    simp [show (884736 * k + 832571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2497714) = 1327104 * k + 1248857 := by
    unfold C
    simp [show (2654208 * k + 2497714) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1248857) = 3981312 * k + 3746572 := by
    unfold C
    simp [show (1327104 * k + 1248857) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3746572) = 1990656 * k + 1873286 := by
    unfold C
    simp [show (3981312 * k + 3746572) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1873286) = 995328 * k + 936643 := by
    unfold C
    simp [show (1990656 * k + 1873286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 936643) = 2985984 * k + 2809930 := by
    unfold C
    simp [show (995328 * k + 936643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2809930) = 1492992 * k + 1404965 := by
    unfold C
    simp [show (2985984 * k + 2809930) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1404965) = 4478976 * k + 4214896 := by
    unfold C
    simp [show (1492992 * k + 1404965) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4214896) = 2239488 * k + 2107448 := by
    unfold C
    simp [show (4478976 * k + 4214896) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2107448) = 1119744 * k + 1053724 := by
    unfold C
    simp [show (2239488 * k + 2107448) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1053724) = 559872 * k + 526862 := by
    unfold C
    simp [show (1119744 * k + 1053724) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 526862) = 279936 * k + 263431 := by
    unfold C
    simp [show (559872 * k + 526862) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 263431) = 839808 * k + 790294 := by
    unfold C
    simp [show (279936 * k + 263431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 790294) = 419904 * k + 395147 := by
    unfold C
    simp [show (839808 * k + 790294) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 395147) = 1259712 * k + 1185442 := by
    unfold C
    simp [show (419904 * k + 395147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1185442) = 629856 * k + 592721 := by
    unfold C
    simp [show (1259712 * k + 1185442) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 592721) = 1889568 * k + 1778164 := by
    unfold C
    simp [show (629856 * k + 592721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1778164) = 944784 * k + 889082 := by
    unfold C
    simp [show (1889568 * k + 1778164) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 889082) = 472392 * k + 444541 := by
    unfold C
    simp [show (944784 * k + 889082) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 444541) = 1417176 * k + 1333624 := by
    unfold C
    simp [show (472392 * k + 444541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1333624) = 708588 * k + 666812 := by
    unfold C
    simp [show (1417176 * k + 1333624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 666812) = 354294 * k + 333406 := by
    unfold C
    simp [show (708588 * k + 666812) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 333406) = 177147 * k + 166703 := by
    unfold C
    simp [show (354294 * k + 333406) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 246687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 246687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_246767 : ∀ k : Nat,
    iterate (262144 * k + 246767) 29 = 177147 * k + 166757 ∧
      177147 * k + 166757 < 262144 * k + 246767 := by
  intro k
  have h1 : C (262144 * k + 246767) = 786432 * k + 740302 := by
    unfold C
    simp [show (262144 * k + 246767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 740302) = 393216 * k + 370151 := by
    unfold C
    simp [show (786432 * k + 740302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370151) = 1179648 * k + 1110454 := by
    unfold C
    simp [show (393216 * k + 370151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1110454) = 589824 * k + 555227 := by
    unfold C
    simp [show (1179648 * k + 1110454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 555227) = 1769472 * k + 1665682 := by
    unfold C
    simp [show (589824 * k + 555227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1665682) = 884736 * k + 832841 := by
    unfold C
    simp [show (1769472 * k + 1665682) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 832841) = 2654208 * k + 2498524 := by
    unfold C
    simp [show (884736 * k + 832841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2498524) = 1327104 * k + 1249262 := by
    unfold C
    simp [show (2654208 * k + 2498524) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1249262) = 663552 * k + 624631 := by
    unfold C
    simp [show (1327104 * k + 1249262) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 624631) = 1990656 * k + 1873894 := by
    unfold C
    simp [show (663552 * k + 624631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1873894) = 995328 * k + 936947 := by
    unfold C
    simp [show (1990656 * k + 1873894) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 936947) = 2985984 * k + 2810842 := by
    unfold C
    simp [show (995328 * k + 936947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2810842) = 1492992 * k + 1405421 := by
    unfold C
    simp [show (2985984 * k + 2810842) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1405421) = 4478976 * k + 4216264 := by
    unfold C
    simp [show (1492992 * k + 1405421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4216264) = 2239488 * k + 2108132 := by
    unfold C
    simp [show (4478976 * k + 4216264) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2108132) = 1119744 * k + 1054066 := by
    unfold C
    simp [show (2239488 * k + 2108132) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1054066) = 559872 * k + 527033 := by
    unfold C
    simp [show (1119744 * k + 1054066) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 527033) = 1679616 * k + 1581100 := by
    unfold C
    simp [show (559872 * k + 527033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1581100) = 839808 * k + 790550 := by
    unfold C
    simp [show (1679616 * k + 1581100) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 790550) = 419904 * k + 395275 := by
    unfold C
    simp [show (839808 * k + 790550) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 395275) = 1259712 * k + 1185826 := by
    unfold C
    simp [show (419904 * k + 395275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1185826) = 629856 * k + 592913 := by
    unfold C
    simp [show (1259712 * k + 1185826) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 592913) = 1889568 * k + 1778740 := by
    unfold C
    simp [show (629856 * k + 592913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1778740) = 944784 * k + 889370 := by
    unfold C
    simp [show (1889568 * k + 1778740) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 889370) = 472392 * k + 444685 := by
    unfold C
    simp [show (944784 * k + 889370) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 444685) = 1417176 * k + 1334056 := by
    unfold C
    simp [show (472392 * k + 444685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1334056) = 708588 * k + 667028 := by
    unfold C
    simp [show (1417176 * k + 1334056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 667028) = 354294 * k + 333514 := by
    unfold C
    simp [show (708588 * k + 667028) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 333514) = 177147 * k + 166757 := by
    unfold C
    simp [show (354294 * k + 333514) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 246767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 246767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_246855 : ∀ k : Nat,
    iterate (262144 * k + 246855) 29 = 177147 * k + 166817 ∧
      177147 * k + 166817 < 262144 * k + 246855 := by
  intro k
  have h1 : C (262144 * k + 246855) = 786432 * k + 740566 := by
    unfold C
    simp [show (262144 * k + 246855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 740566) = 393216 * k + 370283 := by
    unfold C
    simp [show (786432 * k + 740566) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370283) = 1179648 * k + 1110850 := by
    unfold C
    simp [show (393216 * k + 370283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1110850) = 589824 * k + 555425 := by
    unfold C
    simp [show (1179648 * k + 1110850) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 555425) = 1769472 * k + 1666276 := by
    unfold C
    simp [show (589824 * k + 555425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1666276) = 884736 * k + 833138 := by
    unfold C
    simp [show (1769472 * k + 1666276) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 833138) = 442368 * k + 416569 := by
    unfold C
    simp [show (884736 * k + 833138) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 416569) = 1327104 * k + 1249708 := by
    unfold C
    simp [show (442368 * k + 416569) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1249708) = 663552 * k + 624854 := by
    unfold C
    simp [show (1327104 * k + 1249708) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 624854) = 331776 * k + 312427 := by
    unfold C
    simp [show (663552 * k + 624854) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 312427) = 995328 * k + 937282 := by
    unfold C
    simp [show (331776 * k + 312427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 937282) = 497664 * k + 468641 := by
    unfold C
    simp [show (995328 * k + 937282) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 468641) = 1492992 * k + 1405924 := by
    unfold C
    simp [show (497664 * k + 468641) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1405924) = 746496 * k + 702962 := by
    unfold C
    simp [show (1492992 * k + 1405924) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 702962) = 373248 * k + 351481 := by
    unfold C
    simp [show (746496 * k + 702962) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 351481) = 1119744 * k + 1054444 := by
    unfold C
    simp [show (373248 * k + 351481) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1054444) = 559872 * k + 527222 := by
    unfold C
    simp [show (1119744 * k + 1054444) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 527222) = 279936 * k + 263611 := by
    unfold C
    simp [show (559872 * k + 527222) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 263611) = 839808 * k + 790834 := by
    unfold C
    simp [show (279936 * k + 263611) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 790834) = 419904 * k + 395417 := by
    unfold C
    simp [show (839808 * k + 790834) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 395417) = 1259712 * k + 1186252 := by
    unfold C
    simp [show (419904 * k + 395417) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1186252) = 629856 * k + 593126 := by
    unfold C
    simp [show (1259712 * k + 1186252) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 593126) = 314928 * k + 296563 := by
    unfold C
    simp [show (629856 * k + 593126) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 296563) = 944784 * k + 889690 := by
    unfold C
    simp [show (314928 * k + 296563) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 889690) = 472392 * k + 444845 := by
    unfold C
    simp [show (944784 * k + 889690) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 444845) = 1417176 * k + 1334536 := by
    unfold C
    simp [show (472392 * k + 444845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1334536) = 708588 * k + 667268 := by
    unfold C
    simp [show (1417176 * k + 1334536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 667268) = 354294 * k + 333634 := by
    unfold C
    simp [show (708588 * k + 667268) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 333634) = 177147 * k + 166817 := by
    unfold C
    simp [show (354294 * k + 333634) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 246855) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 246855))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_246887 : ∀ k : Nat,
    iterate (262144 * k + 246887) 29 = 177147 * k + 166838 ∧
      177147 * k + 166838 < 262144 * k + 246887 := by
  intro k
  have h1 : C (262144 * k + 246887) = 786432 * k + 740662 := by
    unfold C
    simp [show (262144 * k + 246887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 740662) = 393216 * k + 370331 := by
    unfold C
    simp [show (786432 * k + 740662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370331) = 1179648 * k + 1110994 := by
    unfold C
    simp [show (393216 * k + 370331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1110994) = 589824 * k + 555497 := by
    unfold C
    simp [show (1179648 * k + 1110994) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 555497) = 1769472 * k + 1666492 := by
    unfold C
    simp [show (589824 * k + 555497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1666492) = 884736 * k + 833246 := by
    unfold C
    simp [show (1769472 * k + 1666492) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 833246) = 442368 * k + 416623 := by
    unfold C
    simp [show (884736 * k + 833246) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 416623) = 1327104 * k + 1249870 := by
    unfold C
    simp [show (442368 * k + 416623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1249870) = 663552 * k + 624935 := by
    unfold C
    simp [show (1327104 * k + 1249870) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 624935) = 1990656 * k + 1874806 := by
    unfold C
    simp [show (663552 * k + 624935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1874806) = 995328 * k + 937403 := by
    unfold C
    simp [show (1990656 * k + 1874806) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 937403) = 2985984 * k + 2812210 := by
    unfold C
    simp [show (995328 * k + 937403) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2812210) = 1492992 * k + 1406105 := by
    unfold C
    simp [show (2985984 * k + 2812210) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1406105) = 4478976 * k + 4218316 := by
    unfold C
    simp [show (1492992 * k + 1406105) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4218316) = 2239488 * k + 2109158 := by
    unfold C
    simp [show (4478976 * k + 4218316) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2109158) = 1119744 * k + 1054579 := by
    unfold C
    simp [show (2239488 * k + 2109158) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1054579) = 3359232 * k + 3163738 := by
    unfold C
    simp [show (1119744 * k + 1054579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3163738) = 1679616 * k + 1581869 := by
    unfold C
    simp [show (3359232 * k + 3163738) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1581869) = 5038848 * k + 4745608 := by
    unfold C
    simp [show (1679616 * k + 1581869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4745608) = 2519424 * k + 2372804 := by
    unfold C
    simp [show (5038848 * k + 4745608) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2372804) = 1259712 * k + 1186402 := by
    unfold C
    simp [show (2519424 * k + 2372804) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1186402) = 629856 * k + 593201 := by
    unfold C
    simp [show (1259712 * k + 1186402) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 593201) = 1889568 * k + 1779604 := by
    unfold C
    simp [show (629856 * k + 593201) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1779604) = 944784 * k + 889802 := by
    unfold C
    simp [show (1889568 * k + 1779604) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 889802) = 472392 * k + 444901 := by
    unfold C
    simp [show (944784 * k + 889802) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 444901) = 1417176 * k + 1334704 := by
    unfold C
    simp [show (472392 * k + 444901) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1334704) = 708588 * k + 667352 := by
    unfold C
    simp [show (1417176 * k + 1334704) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 667352) = 354294 * k + 333676 := by
    unfold C
    simp [show (708588 * k + 667352) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 333676) = 177147 * k + 166838 := by
    unfold C
    simp [show (354294 * k + 333676) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 246887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 246887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247167 : ∀ k : Nat,
    iterate (262144 * k + 247167) 29 = 177147 * k + 167027 ∧
      177147 * k + 167027 < 262144 * k + 247167 := by
  intro k
  have h1 : C (262144 * k + 247167) = 786432 * k + 741502 := by
    unfold C
    simp [show (262144 * k + 247167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 741502) = 393216 * k + 370751 := by
    unfold C
    simp [show (786432 * k + 741502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370751) = 1179648 * k + 1112254 := by
    unfold C
    simp [show (393216 * k + 370751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1112254) = 589824 * k + 556127 := by
    unfold C
    simp [show (1179648 * k + 1112254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 556127) = 1769472 * k + 1668382 := by
    unfold C
    simp [show (589824 * k + 556127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1668382) = 884736 * k + 834191 := by
    unfold C
    simp [show (1769472 * k + 1668382) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 834191) = 2654208 * k + 2502574 := by
    unfold C
    simp [show (884736 * k + 834191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2502574) = 1327104 * k + 1251287 := by
    unfold C
    simp [show (2654208 * k + 2502574) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1251287) = 3981312 * k + 3753862 := by
    unfold C
    simp [show (1327104 * k + 1251287) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3753862) = 1990656 * k + 1876931 := by
    unfold C
    simp [show (3981312 * k + 3753862) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1876931) = 5971968 * k + 5630794 := by
    unfold C
    simp [show (1990656 * k + 1876931) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5630794) = 2985984 * k + 2815397 := by
    unfold C
    simp [show (5971968 * k + 5630794) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2815397) = 8957952 * k + 8446192 := by
    unfold C
    simp [show (2985984 * k + 2815397) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8446192) = 4478976 * k + 4223096 := by
    unfold C
    simp [show (8957952 * k + 8446192) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4223096) = 2239488 * k + 2111548 := by
    unfold C
    simp [show (4478976 * k + 4223096) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2111548) = 1119744 * k + 1055774 := by
    unfold C
    simp [show (2239488 * k + 2111548) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1055774) = 559872 * k + 527887 := by
    unfold C
    simp [show (1119744 * k + 1055774) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 527887) = 1679616 * k + 1583662 := by
    unfold C
    simp [show (559872 * k + 527887) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1583662) = 839808 * k + 791831 := by
    unfold C
    simp [show (1679616 * k + 1583662) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 791831) = 2519424 * k + 2375494 := by
    unfold C
    simp [show (839808 * k + 791831) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2375494) = 1259712 * k + 1187747 := by
    unfold C
    simp [show (2519424 * k + 2375494) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1187747) = 3779136 * k + 3563242 := by
    unfold C
    simp [show (1259712 * k + 1187747) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3563242) = 1889568 * k + 1781621 := by
    unfold C
    simp [show (3779136 * k + 3563242) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1781621) = 5668704 * k + 5344864 := by
    unfold C
    simp [show (1889568 * k + 1781621) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5344864) = 2834352 * k + 2672432 := by
    unfold C
    simp [show (5668704 * k + 5344864) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2672432) = 1417176 * k + 1336216 := by
    unfold C
    simp [show (2834352 * k + 2672432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1336216) = 708588 * k + 668108 := by
    unfold C
    simp [show (1417176 * k + 1336216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 668108) = 354294 * k + 334054 := by
    unfold C
    simp [show (708588 * k + 668108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 334054) = 177147 * k + 167027 := by
    unfold C
    simp [show (354294 * k + 334054) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247263 : ∀ k : Nat,
    iterate (262144 * k + 247263) 29 = 177147 * k + 167092 ∧
      177147 * k + 167092 < 262144 * k + 247263 := by
  intro k
  have h1 : C (262144 * k + 247263) = 786432 * k + 741790 := by
    unfold C
    simp [show (262144 * k + 247263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 741790) = 393216 * k + 370895 := by
    unfold C
    simp [show (786432 * k + 741790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 370895) = 1179648 * k + 1112686 := by
    unfold C
    simp [show (393216 * k + 370895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1112686) = 589824 * k + 556343 := by
    unfold C
    simp [show (1179648 * k + 1112686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 556343) = 1769472 * k + 1669030 := by
    unfold C
    simp [show (589824 * k + 556343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1669030) = 884736 * k + 834515 := by
    unfold C
    simp [show (1769472 * k + 1669030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 834515) = 2654208 * k + 2503546 := by
    unfold C
    simp [show (884736 * k + 834515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2503546) = 1327104 * k + 1251773 := by
    unfold C
    simp [show (2654208 * k + 2503546) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1251773) = 3981312 * k + 3755320 := by
    unfold C
    simp [show (1327104 * k + 1251773) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3755320) = 1990656 * k + 1877660 := by
    unfold C
    simp [show (3981312 * k + 3755320) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1877660) = 995328 * k + 938830 := by
    unfold C
    simp [show (1990656 * k + 1877660) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 938830) = 497664 * k + 469415 := by
    unfold C
    simp [show (995328 * k + 938830) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 469415) = 1492992 * k + 1408246 := by
    unfold C
    simp [show (497664 * k + 469415) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1408246) = 746496 * k + 704123 := by
    unfold C
    simp [show (1492992 * k + 1408246) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 704123) = 2239488 * k + 2112370 := by
    unfold C
    simp [show (746496 * k + 704123) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2112370) = 1119744 * k + 1056185 := by
    unfold C
    simp [show (2239488 * k + 2112370) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1056185) = 3359232 * k + 3168556 := by
    unfold C
    simp [show (1119744 * k + 1056185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3168556) = 1679616 * k + 1584278 := by
    unfold C
    simp [show (3359232 * k + 3168556) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1584278) = 839808 * k + 792139 := by
    unfold C
    simp [show (1679616 * k + 1584278) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 792139) = 2519424 * k + 2376418 := by
    unfold C
    simp [show (839808 * k + 792139) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2376418) = 1259712 * k + 1188209 := by
    unfold C
    simp [show (2519424 * k + 2376418) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1188209) = 3779136 * k + 3564628 := by
    unfold C
    simp [show (1259712 * k + 1188209) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3564628) = 1889568 * k + 1782314 := by
    unfold C
    simp [show (3779136 * k + 3564628) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1782314) = 944784 * k + 891157 := by
    unfold C
    simp [show (1889568 * k + 1782314) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 891157) = 2834352 * k + 2673472 := by
    unfold C
    simp [show (944784 * k + 891157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2673472) = 1417176 * k + 1336736 := by
    unfold C
    simp [show (2834352 * k + 2673472) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1336736) = 708588 * k + 668368 := by
    unfold C
    simp [show (1417176 * k + 1336736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 668368) = 354294 * k + 334184 := by
    unfold C
    simp [show (708588 * k + 668368) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 334184) = 177147 * k + 167092 := by
    unfold C
    simp [show (354294 * k + 334184) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247343 : ∀ k : Nat,
    iterate (262144 * k + 247343) 29 = 177147 * k + 167146 ∧
      177147 * k + 167146 < 262144 * k + 247343 := by
  intro k
  have h1 : C (262144 * k + 247343) = 786432 * k + 742030 := by
    unfold C
    simp [show (262144 * k + 247343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 742030) = 393216 * k + 371015 := by
    unfold C
    simp [show (786432 * k + 742030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 371015) = 1179648 * k + 1113046 := by
    unfold C
    simp [show (393216 * k + 371015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1113046) = 589824 * k + 556523 := by
    unfold C
    simp [show (1179648 * k + 1113046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 556523) = 1769472 * k + 1669570 := by
    unfold C
    simp [show (589824 * k + 556523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1669570) = 884736 * k + 834785 := by
    unfold C
    simp [show (1769472 * k + 1669570) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 834785) = 2654208 * k + 2504356 := by
    unfold C
    simp [show (884736 * k + 834785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2504356) = 1327104 * k + 1252178 := by
    unfold C
    simp [show (2654208 * k + 2504356) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1252178) = 663552 * k + 626089 := by
    unfold C
    simp [show (1327104 * k + 1252178) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 626089) = 1990656 * k + 1878268 := by
    unfold C
    simp [show (663552 * k + 626089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1878268) = 995328 * k + 939134 := by
    unfold C
    simp [show (1990656 * k + 1878268) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 939134) = 497664 * k + 469567 := by
    unfold C
    simp [show (995328 * k + 939134) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 469567) = 1492992 * k + 1408702 := by
    unfold C
    simp [show (497664 * k + 469567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1408702) = 746496 * k + 704351 := by
    unfold C
    simp [show (1492992 * k + 1408702) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 704351) = 2239488 * k + 2113054 := by
    unfold C
    simp [show (746496 * k + 704351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2113054) = 1119744 * k + 1056527 := by
    unfold C
    simp [show (2239488 * k + 2113054) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1056527) = 3359232 * k + 3169582 := by
    unfold C
    simp [show (1119744 * k + 1056527) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3169582) = 1679616 * k + 1584791 := by
    unfold C
    simp [show (3359232 * k + 3169582) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1584791) = 5038848 * k + 4754374 := by
    unfold C
    simp [show (1679616 * k + 1584791) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4754374) = 2519424 * k + 2377187 := by
    unfold C
    simp [show (5038848 * k + 4754374) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2377187) = 7558272 * k + 7131562 := by
    unfold C
    simp [show (2519424 * k + 2377187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7131562) = 3779136 * k + 3565781 := by
    unfold C
    simp [show (7558272 * k + 7131562) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3565781) = 11337408 * k + 10697344 := by
    unfold C
    simp [show (3779136 * k + 3565781) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 10697344) = 5668704 * k + 5348672 := by
    unfold C
    simp [show (11337408 * k + 10697344) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5348672) = 2834352 * k + 2674336 := by
    unfold C
    simp [show (5668704 * k + 5348672) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2674336) = 1417176 * k + 1337168 := by
    unfold C
    simp [show (2834352 * k + 2674336) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1337168) = 708588 * k + 668584 := by
    unfold C
    simp [show (1417176 * k + 1337168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 668584) = 354294 * k + 334292 := by
    unfold C
    simp [show (708588 * k + 668584) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 334292) = 177147 * k + 167146 := by
    unfold C
    simp [show (354294 * k + 334292) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247535 : ∀ k : Nat,
    iterate (262144 * k + 247535) 29 = 177147 * k + 167276 ∧
      177147 * k + 167276 < 262144 * k + 247535 := by
  intro k
  have h1 : C (262144 * k + 247535) = 786432 * k + 742606 := by
    unfold C
    simp [show (262144 * k + 247535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 742606) = 393216 * k + 371303 := by
    unfold C
    simp [show (786432 * k + 742606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 371303) = 1179648 * k + 1113910 := by
    unfold C
    simp [show (393216 * k + 371303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1113910) = 589824 * k + 556955 := by
    unfold C
    simp [show (1179648 * k + 1113910) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 556955) = 1769472 * k + 1670866 := by
    unfold C
    simp [show (589824 * k + 556955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1670866) = 884736 * k + 835433 := by
    unfold C
    simp [show (1769472 * k + 1670866) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 835433) = 2654208 * k + 2506300 := by
    unfold C
    simp [show (884736 * k + 835433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2506300) = 1327104 * k + 1253150 := by
    unfold C
    simp [show (2654208 * k + 2506300) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1253150) = 663552 * k + 626575 := by
    unfold C
    simp [show (1327104 * k + 1253150) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 626575) = 1990656 * k + 1879726 := by
    unfold C
    simp [show (663552 * k + 626575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1879726) = 995328 * k + 939863 := by
    unfold C
    simp [show (1990656 * k + 1879726) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 939863) = 2985984 * k + 2819590 := by
    unfold C
    simp [show (995328 * k + 939863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2819590) = 1492992 * k + 1409795 := by
    unfold C
    simp [show (2985984 * k + 2819590) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1409795) = 4478976 * k + 4229386 := by
    unfold C
    simp [show (1492992 * k + 1409795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4229386) = 2239488 * k + 2114693 := by
    unfold C
    simp [show (4478976 * k + 4229386) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2114693) = 6718464 * k + 6344080 := by
    unfold C
    simp [show (2239488 * k + 2114693) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6344080) = 3359232 * k + 3172040 := by
    unfold C
    simp [show (6718464 * k + 6344080) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3172040) = 1679616 * k + 1586020 := by
    unfold C
    simp [show (3359232 * k + 3172040) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1586020) = 839808 * k + 793010 := by
    unfold C
    simp [show (1679616 * k + 1586020) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 793010) = 419904 * k + 396505 := by
    unfold C
    simp [show (839808 * k + 793010) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 396505) = 1259712 * k + 1189516 := by
    unfold C
    simp [show (419904 * k + 396505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1189516) = 629856 * k + 594758 := by
    unfold C
    simp [show (1259712 * k + 1189516) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 594758) = 314928 * k + 297379 := by
    unfold C
    simp [show (629856 * k + 594758) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 297379) = 944784 * k + 892138 := by
    unfold C
    simp [show (314928 * k + 297379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 892138) = 472392 * k + 446069 := by
    unfold C
    simp [show (944784 * k + 892138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 446069) = 1417176 * k + 1338208 := by
    unfold C
    simp [show (472392 * k + 446069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1338208) = 708588 * k + 669104 := by
    unfold C
    simp [show (1417176 * k + 1338208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 669104) = 354294 * k + 334552 := by
    unfold C
    simp [show (708588 * k + 669104) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 334552) = 177147 * k + 167276 := by
    unfold C
    simp [show (354294 * k + 334552) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247899 : ∀ k : Nat,
    iterate (262144 * k + 247899) 29 = 177147 * k + 167522 ∧
      177147 * k + 167522 < 262144 * k + 247899 := by
  intro k
  have h1 : C (262144 * k + 247899) = 786432 * k + 743698 := by
    unfold C
    simp [show (262144 * k + 247899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 743698) = 393216 * k + 371849 := by
    unfold C
    simp [show (786432 * k + 743698) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 371849) = 1179648 * k + 1115548 := by
    unfold C
    simp [show (393216 * k + 371849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1115548) = 589824 * k + 557774 := by
    unfold C
    simp [show (1179648 * k + 1115548) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 557774) = 294912 * k + 278887 := by
    unfold C
    simp [show (589824 * k + 557774) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 278887) = 884736 * k + 836662 := by
    unfold C
    simp [show (294912 * k + 278887) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 836662) = 442368 * k + 418331 := by
    unfold C
    simp [show (884736 * k + 836662) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 418331) = 1327104 * k + 1254994 := by
    unfold C
    simp [show (442368 * k + 418331) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1254994) = 663552 * k + 627497 := by
    unfold C
    simp [show (1327104 * k + 1254994) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 627497) = 1990656 * k + 1882492 := by
    unfold C
    simp [show (663552 * k + 627497) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1882492) = 995328 * k + 941246 := by
    unfold C
    simp [show (1990656 * k + 1882492) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 941246) = 497664 * k + 470623 := by
    unfold C
    simp [show (995328 * k + 941246) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 470623) = 1492992 * k + 1411870 := by
    unfold C
    simp [show (497664 * k + 470623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1411870) = 746496 * k + 705935 := by
    unfold C
    simp [show (1492992 * k + 1411870) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 705935) = 2239488 * k + 2117806 := by
    unfold C
    simp [show (746496 * k + 705935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2117806) = 1119744 * k + 1058903 := by
    unfold C
    simp [show (2239488 * k + 2117806) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1058903) = 3359232 * k + 3176710 := by
    unfold C
    simp [show (1119744 * k + 1058903) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3176710) = 1679616 * k + 1588355 := by
    unfold C
    simp [show (3359232 * k + 3176710) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1588355) = 5038848 * k + 4765066 := by
    unfold C
    simp [show (1679616 * k + 1588355) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4765066) = 2519424 * k + 2382533 := by
    unfold C
    simp [show (5038848 * k + 4765066) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2382533) = 7558272 * k + 7147600 := by
    unfold C
    simp [show (2519424 * k + 2382533) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7147600) = 3779136 * k + 3573800 := by
    unfold C
    simp [show (7558272 * k + 7147600) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3573800) = 1889568 * k + 1786900 := by
    unfold C
    simp [show (3779136 * k + 3573800) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1786900) = 944784 * k + 893450 := by
    unfold C
    simp [show (1889568 * k + 1786900) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 893450) = 472392 * k + 446725 := by
    unfold C
    simp [show (944784 * k + 893450) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 446725) = 1417176 * k + 1340176 := by
    unfold C
    simp [show (472392 * k + 446725) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1340176) = 708588 * k + 670088 := by
    unfold C
    simp [show (1417176 * k + 1340176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 670088) = 354294 * k + 335044 := by
    unfold C
    simp [show (708588 * k + 670088) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 335044) = 177147 * k + 167522 := by
    unfold C
    simp [show (354294 * k + 335044) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247899) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247899))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_247935 : ∀ k : Nat,
    iterate (262144 * k + 247935) 29 = 177147 * k + 167546 ∧
      177147 * k + 167546 < 262144 * k + 247935 := by
  intro k
  have h1 : C (262144 * k + 247935) = 786432 * k + 743806 := by
    unfold C
    simp [show (262144 * k + 247935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 743806) = 393216 * k + 371903 := by
    unfold C
    simp [show (786432 * k + 743806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 371903) = 1179648 * k + 1115710 := by
    unfold C
    simp [show (393216 * k + 371903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1115710) = 589824 * k + 557855 := by
    unfold C
    simp [show (1179648 * k + 1115710) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 557855) = 1769472 * k + 1673566 := by
    unfold C
    simp [show (589824 * k + 557855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1673566) = 884736 * k + 836783 := by
    unfold C
    simp [show (1769472 * k + 1673566) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 836783) = 2654208 * k + 2510350 := by
    unfold C
    simp [show (884736 * k + 836783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2510350) = 1327104 * k + 1255175 := by
    unfold C
    simp [show (2654208 * k + 2510350) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1255175) = 3981312 * k + 3765526 := by
    unfold C
    simp [show (1327104 * k + 1255175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3765526) = 1990656 * k + 1882763 := by
    unfold C
    simp [show (3981312 * k + 3765526) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1882763) = 5971968 * k + 5648290 := by
    unfold C
    simp [show (1990656 * k + 1882763) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5648290) = 2985984 * k + 2824145 := by
    unfold C
    simp [show (5971968 * k + 5648290) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2824145) = 8957952 * k + 8472436 := by
    unfold C
    simp [show (2985984 * k + 2824145) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8472436) = 4478976 * k + 4236218 := by
    unfold C
    simp [show (8957952 * k + 8472436) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4236218) = 2239488 * k + 2118109 := by
    unfold C
    simp [show (4478976 * k + 4236218) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2118109) = 6718464 * k + 6354328 := by
    unfold C
    simp [show (2239488 * k + 2118109) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6354328) = 3359232 * k + 3177164 := by
    unfold C
    simp [show (6718464 * k + 6354328) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3177164) = 1679616 * k + 1588582 := by
    unfold C
    simp [show (3359232 * k + 3177164) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1588582) = 839808 * k + 794291 := by
    unfold C
    simp [show (1679616 * k + 1588582) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 794291) = 2519424 * k + 2382874 := by
    unfold C
    simp [show (839808 * k + 794291) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2382874) = 1259712 * k + 1191437 := by
    unfold C
    simp [show (2519424 * k + 2382874) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1191437) = 3779136 * k + 3574312 := by
    unfold C
    simp [show (1259712 * k + 1191437) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3574312) = 1889568 * k + 1787156 := by
    unfold C
    simp [show (3779136 * k + 3574312) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1787156) = 944784 * k + 893578 := by
    unfold C
    simp [show (1889568 * k + 1787156) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 893578) = 472392 * k + 446789 := by
    unfold C
    simp [show (944784 * k + 893578) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 446789) = 1417176 * k + 1340368 := by
    unfold C
    simp [show (472392 * k + 446789) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1340368) = 708588 * k + 670184 := by
    unfold C
    simp [show (1417176 * k + 1340368) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 670184) = 354294 * k + 335092 := by
    unfold C
    simp [show (708588 * k + 670184) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 335092) = 177147 * k + 167546 := by
    unfold C
    simp [show (354294 * k + 335092) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 247935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 247935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_249391 : ∀ k : Nat,
    iterate (262144 * k + 249391) 29 = 177147 * k + 168530 ∧
      177147 * k + 168530 < 262144 * k + 249391 := by
  intro k
  have h1 : C (262144 * k + 249391) = 786432 * k + 748174 := by
    unfold C
    simp [show (262144 * k + 249391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 748174) = 393216 * k + 374087 := by
    unfold C
    simp [show (786432 * k + 748174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 374087) = 1179648 * k + 1122262 := by
    unfold C
    simp [show (393216 * k + 374087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1122262) = 589824 * k + 561131 := by
    unfold C
    simp [show (1179648 * k + 1122262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 561131) = 1769472 * k + 1683394 := by
    unfold C
    simp [show (589824 * k + 561131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1683394) = 884736 * k + 841697 := by
    unfold C
    simp [show (1769472 * k + 1683394) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 841697) = 2654208 * k + 2525092 := by
    unfold C
    simp [show (884736 * k + 841697) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2525092) = 1327104 * k + 1262546 := by
    unfold C
    simp [show (2654208 * k + 2525092) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1262546) = 663552 * k + 631273 := by
    unfold C
    simp [show (1327104 * k + 1262546) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 631273) = 1990656 * k + 1893820 := by
    unfold C
    simp [show (663552 * k + 631273) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1893820) = 995328 * k + 946910 := by
    unfold C
    simp [show (1990656 * k + 1893820) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 946910) = 497664 * k + 473455 := by
    unfold C
    simp [show (995328 * k + 946910) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 473455) = 1492992 * k + 1420366 := by
    unfold C
    simp [show (497664 * k + 473455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1420366) = 746496 * k + 710183 := by
    unfold C
    simp [show (1492992 * k + 1420366) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 710183) = 2239488 * k + 2130550 := by
    unfold C
    simp [show (746496 * k + 710183) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2130550) = 1119744 * k + 1065275 := by
    unfold C
    simp [show (2239488 * k + 2130550) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1065275) = 3359232 * k + 3195826 := by
    unfold C
    simp [show (1119744 * k + 1065275) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3195826) = 1679616 * k + 1597913 := by
    unfold C
    simp [show (3359232 * k + 3195826) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1597913) = 5038848 * k + 4793740 := by
    unfold C
    simp [show (1679616 * k + 1597913) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4793740) = 2519424 * k + 2396870 := by
    unfold C
    simp [show (5038848 * k + 4793740) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2396870) = 1259712 * k + 1198435 := by
    unfold C
    simp [show (2519424 * k + 2396870) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1198435) = 3779136 * k + 3595306 := by
    unfold C
    simp [show (1259712 * k + 1198435) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3595306) = 1889568 * k + 1797653 := by
    unfold C
    simp [show (3779136 * k + 3595306) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1797653) = 5668704 * k + 5392960 := by
    unfold C
    simp [show (1889568 * k + 1797653) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5392960) = 2834352 * k + 2696480 := by
    unfold C
    simp [show (5668704 * k + 5392960) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2696480) = 1417176 * k + 1348240 := by
    unfold C
    simp [show (2834352 * k + 2696480) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1348240) = 708588 * k + 674120 := by
    unfold C
    simp [show (1417176 * k + 1348240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 674120) = 354294 * k + 337060 := by
    unfold C
    simp [show (708588 * k + 674120) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 337060) = 177147 * k + 168530 := by
    unfold C
    simp [show (354294 * k + 337060) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 249391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 249391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_250459 : ∀ k : Nat,
    iterate (262144 * k + 250459) 29 = 177147 * k + 169252 ∧
      177147 * k + 169252 < 262144 * k + 250459 := by
  intro k
  have h1 : C (262144 * k + 250459) = 786432 * k + 751378 := by
    unfold C
    simp [show (262144 * k + 250459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 751378) = 393216 * k + 375689 := by
    unfold C
    simp [show (786432 * k + 751378) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 375689) = 1179648 * k + 1127068 := by
    unfold C
    simp [show (393216 * k + 375689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1127068) = 589824 * k + 563534 := by
    unfold C
    simp [show (1179648 * k + 1127068) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 563534) = 294912 * k + 281767 := by
    unfold C
    simp [show (589824 * k + 563534) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 281767) = 884736 * k + 845302 := by
    unfold C
    simp [show (294912 * k + 281767) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 845302) = 442368 * k + 422651 := by
    unfold C
    simp [show (884736 * k + 845302) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 422651) = 1327104 * k + 1267954 := by
    unfold C
    simp [show (442368 * k + 422651) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1267954) = 663552 * k + 633977 := by
    unfold C
    simp [show (1327104 * k + 1267954) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 633977) = 1990656 * k + 1901932 := by
    unfold C
    simp [show (663552 * k + 633977) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1901932) = 995328 * k + 950966 := by
    unfold C
    simp [show (1990656 * k + 1901932) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 950966) = 497664 * k + 475483 := by
    unfold C
    simp [show (995328 * k + 950966) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 475483) = 1492992 * k + 1426450 := by
    unfold C
    simp [show (497664 * k + 475483) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1426450) = 746496 * k + 713225 := by
    unfold C
    simp [show (1492992 * k + 1426450) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 713225) = 2239488 * k + 2139676 := by
    unfold C
    simp [show (746496 * k + 713225) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2139676) = 1119744 * k + 1069838 := by
    unfold C
    simp [show (2239488 * k + 2139676) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1069838) = 559872 * k + 534919 := by
    unfold C
    simp [show (1119744 * k + 1069838) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 534919) = 1679616 * k + 1604758 := by
    unfold C
    simp [show (559872 * k + 534919) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1604758) = 839808 * k + 802379 := by
    unfold C
    simp [show (1679616 * k + 1604758) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 802379) = 2519424 * k + 2407138 := by
    unfold C
    simp [show (839808 * k + 802379) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2407138) = 1259712 * k + 1203569 := by
    unfold C
    simp [show (2519424 * k + 2407138) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1203569) = 3779136 * k + 3610708 := by
    unfold C
    simp [show (1259712 * k + 1203569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3610708) = 1889568 * k + 1805354 := by
    unfold C
    simp [show (3779136 * k + 3610708) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1805354) = 944784 * k + 902677 := by
    unfold C
    simp [show (1889568 * k + 1805354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 902677) = 2834352 * k + 2708032 := by
    unfold C
    simp [show (944784 * k + 902677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2708032) = 1417176 * k + 1354016 := by
    unfold C
    simp [show (2834352 * k + 2708032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1354016) = 708588 * k + 677008 := by
    unfold C
    simp [show (1417176 * k + 1354016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 677008) = 354294 * k + 338504 := by
    unfold C
    simp [show (708588 * k + 677008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 338504) = 177147 * k + 169252 := by
    unfold C
    simp [show (354294 * k + 338504) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 250459) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 250459))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_250971 : ∀ k : Nat,
    iterate (262144 * k + 250971) 29 = 177147 * k + 169598 ∧
      177147 * k + 169598 < 262144 * k + 250971 := by
  intro k
  have h1 : C (262144 * k + 250971) = 786432 * k + 752914 := by
    unfold C
    simp [show (262144 * k + 250971) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 752914) = 393216 * k + 376457 := by
    unfold C
    simp [show (786432 * k + 752914) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 376457) = 1179648 * k + 1129372 := by
    unfold C
    simp [show (393216 * k + 376457) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1129372) = 589824 * k + 564686 := by
    unfold C
    simp [show (1179648 * k + 1129372) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 564686) = 294912 * k + 282343 := by
    unfold C
    simp [show (589824 * k + 564686) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 282343) = 884736 * k + 847030 := by
    unfold C
    simp [show (294912 * k + 282343) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 847030) = 442368 * k + 423515 := by
    unfold C
    simp [show (884736 * k + 847030) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 423515) = 1327104 * k + 1270546 := by
    unfold C
    simp [show (442368 * k + 423515) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1270546) = 663552 * k + 635273 := by
    unfold C
    simp [show (1327104 * k + 1270546) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 635273) = 1990656 * k + 1905820 := by
    unfold C
    simp [show (663552 * k + 635273) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1905820) = 995328 * k + 952910 := by
    unfold C
    simp [show (1990656 * k + 1905820) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 952910) = 497664 * k + 476455 := by
    unfold C
    simp [show (995328 * k + 952910) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 476455) = 1492992 * k + 1429366 := by
    unfold C
    simp [show (497664 * k + 476455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1429366) = 746496 * k + 714683 := by
    unfold C
    simp [show (1492992 * k + 1429366) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 714683) = 2239488 * k + 2144050 := by
    unfold C
    simp [show (746496 * k + 714683) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2144050) = 1119744 * k + 1072025 := by
    unfold C
    simp [show (2239488 * k + 2144050) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1072025) = 3359232 * k + 3216076 := by
    unfold C
    simp [show (1119744 * k + 1072025) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3216076) = 1679616 * k + 1608038 := by
    unfold C
    simp [show (3359232 * k + 3216076) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1608038) = 839808 * k + 804019 := by
    unfold C
    simp [show (1679616 * k + 1608038) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 804019) = 2519424 * k + 2412058 := by
    unfold C
    simp [show (839808 * k + 804019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2412058) = 1259712 * k + 1206029 := by
    unfold C
    simp [show (2519424 * k + 2412058) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1206029) = 3779136 * k + 3618088 := by
    unfold C
    simp [show (1259712 * k + 1206029) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3618088) = 1889568 * k + 1809044 := by
    unfold C
    simp [show (3779136 * k + 3618088) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1809044) = 944784 * k + 904522 := by
    unfold C
    simp [show (1889568 * k + 1809044) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 904522) = 472392 * k + 452261 := by
    unfold C
    simp [show (944784 * k + 904522) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 452261) = 1417176 * k + 1356784 := by
    unfold C
    simp [show (472392 * k + 452261) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1356784) = 708588 * k + 678392 := by
    unfold C
    simp [show (1417176 * k + 1356784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 678392) = 354294 * k + 339196 := by
    unfold C
    simp [show (708588 * k + 678392) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 339196) = 177147 * k + 169598 := by
    unfold C
    simp [show (354294 * k + 339196) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 250971) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 250971))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_251263 : ∀ k : Nat,
    iterate (262144 * k + 251263) 29 = 177147 * k + 169795 ∧
      177147 * k + 169795 < 262144 * k + 251263 := by
  intro k
  have h1 : C (262144 * k + 251263) = 786432 * k + 753790 := by
    unfold C
    simp [show (262144 * k + 251263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 753790) = 393216 * k + 376895 := by
    unfold C
    simp [show (786432 * k + 753790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 376895) = 1179648 * k + 1130686 := by
    unfold C
    simp [show (393216 * k + 376895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1130686) = 589824 * k + 565343 := by
    unfold C
    simp [show (1179648 * k + 1130686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 565343) = 1769472 * k + 1696030 := by
    unfold C
    simp [show (589824 * k + 565343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1696030) = 884736 * k + 848015 := by
    unfold C
    simp [show (1769472 * k + 1696030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 848015) = 2654208 * k + 2544046 := by
    unfold C
    simp [show (884736 * k + 848015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2544046) = 1327104 * k + 1272023 := by
    unfold C
    simp [show (2654208 * k + 2544046) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1272023) = 3981312 * k + 3816070 := by
    unfold C
    simp [show (1327104 * k + 1272023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3816070) = 1990656 * k + 1908035 := by
    unfold C
    simp [show (3981312 * k + 3816070) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1908035) = 5971968 * k + 5724106 := by
    unfold C
    simp [show (1990656 * k + 1908035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5724106) = 2985984 * k + 2862053 := by
    unfold C
    simp [show (5971968 * k + 5724106) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2862053) = 8957952 * k + 8586160 := by
    unfold C
    simp [show (2985984 * k + 2862053) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8586160) = 4478976 * k + 4293080 := by
    unfold C
    simp [show (8957952 * k + 8586160) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4293080) = 2239488 * k + 2146540 := by
    unfold C
    simp [show (4478976 * k + 4293080) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2146540) = 1119744 * k + 1073270 := by
    unfold C
    simp [show (2239488 * k + 2146540) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1073270) = 559872 * k + 536635 := by
    unfold C
    simp [show (1119744 * k + 1073270) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 536635) = 1679616 * k + 1609906 := by
    unfold C
    simp [show (559872 * k + 536635) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1609906) = 839808 * k + 804953 := by
    unfold C
    simp [show (1679616 * k + 1609906) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 804953) = 2519424 * k + 2414860 := by
    unfold C
    simp [show (839808 * k + 804953) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2414860) = 1259712 * k + 1207430 := by
    unfold C
    simp [show (2519424 * k + 2414860) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1207430) = 629856 * k + 603715 := by
    unfold C
    simp [show (1259712 * k + 1207430) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 603715) = 1889568 * k + 1811146 := by
    unfold C
    simp [show (629856 * k + 603715) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1811146) = 944784 * k + 905573 := by
    unfold C
    simp [show (1889568 * k + 1811146) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 905573) = 2834352 * k + 2716720 := by
    unfold C
    simp [show (944784 * k + 905573) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2716720) = 1417176 * k + 1358360 := by
    unfold C
    simp [show (2834352 * k + 2716720) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1358360) = 708588 * k + 679180 := by
    unfold C
    simp [show (1417176 * k + 1358360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 679180) = 354294 * k + 339590 := by
    unfold C
    simp [show (708588 * k + 679180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 339590) = 177147 * k + 169795 := by
    unfold C
    simp [show (354294 * k + 339590) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 251263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 251263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_251327 : ∀ k : Nat,
    iterate (262144 * k + 251327) 29 = 177147 * k + 169838 ∧
      177147 * k + 169838 < 262144 * k + 251327 := by
  intro k
  have h1 : C (262144 * k + 251327) = 786432 * k + 753982 := by
    unfold C
    simp [show (262144 * k + 251327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 753982) = 393216 * k + 376991 := by
    unfold C
    simp [show (786432 * k + 753982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 376991) = 1179648 * k + 1130974 := by
    unfold C
    simp [show (393216 * k + 376991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1130974) = 589824 * k + 565487 := by
    unfold C
    simp [show (1179648 * k + 1130974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 565487) = 1769472 * k + 1696462 := by
    unfold C
    simp [show (589824 * k + 565487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1696462) = 884736 * k + 848231 := by
    unfold C
    simp [show (1769472 * k + 1696462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 848231) = 2654208 * k + 2544694 := by
    unfold C
    simp [show (884736 * k + 848231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2544694) = 1327104 * k + 1272347 := by
    unfold C
    simp [show (2654208 * k + 2544694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1272347) = 3981312 * k + 3817042 := by
    unfold C
    simp [show (1327104 * k + 1272347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3817042) = 1990656 * k + 1908521 := by
    unfold C
    simp [show (3981312 * k + 3817042) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1908521) = 5971968 * k + 5725564 := by
    unfold C
    simp [show (1990656 * k + 1908521) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5725564) = 2985984 * k + 2862782 := by
    unfold C
    simp [show (5971968 * k + 5725564) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2862782) = 1492992 * k + 1431391 := by
    unfold C
    simp [show (2985984 * k + 2862782) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1431391) = 4478976 * k + 4294174 := by
    unfold C
    simp [show (1492992 * k + 1431391) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4294174) = 2239488 * k + 2147087 := by
    unfold C
    simp [show (4478976 * k + 4294174) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2147087) = 6718464 * k + 6441262 := by
    unfold C
    simp [show (2239488 * k + 2147087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6441262) = 3359232 * k + 3220631 := by
    unfold C
    simp [show (6718464 * k + 6441262) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3220631) = 10077696 * k + 9661894 := by
    unfold C
    simp [show (3359232 * k + 3220631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9661894) = 5038848 * k + 4830947 := by
    unfold C
    simp [show (10077696 * k + 9661894) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4830947) = 15116544 * k + 14492842 := by
    unfold C
    simp [show (5038848 * k + 4830947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 14492842) = 7558272 * k + 7246421 := by
    unfold C
    simp [show (15116544 * k + 14492842) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 7246421) = 22674816 * k + 21739264 := by
    unfold C
    simp [show (7558272 * k + 7246421) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 21739264) = 11337408 * k + 10869632 := by
    unfold C
    simp [show (22674816 * k + 21739264) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 10869632) = 5668704 * k + 5434816 := by
    unfold C
    simp [show (11337408 * k + 10869632) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5434816) = 2834352 * k + 2717408 := by
    unfold C
    simp [show (5668704 * k + 5434816) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2717408) = 1417176 * k + 1358704 := by
    unfold C
    simp [show (2834352 * k + 2717408) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1358704) = 708588 * k + 679352 := by
    unfold C
    simp [show (1417176 * k + 1358704) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 679352) = 354294 * k + 339676 := by
    unfold C
    simp [show (708588 * k + 679352) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 339676) = 177147 * k + 169838 := by
    unfold C
    simp [show (354294 * k + 339676) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 251327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 251327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_251495 : ∀ k : Nat,
    iterate (262144 * k + 251495) 29 = 177147 * k + 169952 ∧
      177147 * k + 169952 < 262144 * k + 251495 := by
  intro k
  have h1 : C (262144 * k + 251495) = 786432 * k + 754486 := by
    unfold C
    simp [show (262144 * k + 251495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 754486) = 393216 * k + 377243 := by
    unfold C
    simp [show (786432 * k + 754486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 377243) = 1179648 * k + 1131730 := by
    unfold C
    simp [show (393216 * k + 377243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1131730) = 589824 * k + 565865 := by
    unfold C
    simp [show (1179648 * k + 1131730) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 565865) = 1769472 * k + 1697596 := by
    unfold C
    simp [show (589824 * k + 565865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1697596) = 884736 * k + 848798 := by
    unfold C
    simp [show (1769472 * k + 1697596) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 848798) = 442368 * k + 424399 := by
    unfold C
    simp [show (884736 * k + 848798) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 424399) = 1327104 * k + 1273198 := by
    unfold C
    simp [show (442368 * k + 424399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1273198) = 663552 * k + 636599 := by
    unfold C
    simp [show (1327104 * k + 1273198) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 636599) = 1990656 * k + 1909798 := by
    unfold C
    simp [show (663552 * k + 636599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1909798) = 995328 * k + 954899 := by
    unfold C
    simp [show (1990656 * k + 1909798) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 954899) = 2985984 * k + 2864698 := by
    unfold C
    simp [show (995328 * k + 954899) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2864698) = 1492992 * k + 1432349 := by
    unfold C
    simp [show (2985984 * k + 2864698) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1432349) = 4478976 * k + 4297048 := by
    unfold C
    simp [show (1492992 * k + 1432349) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4297048) = 2239488 * k + 2148524 := by
    unfold C
    simp [show (4478976 * k + 4297048) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2148524) = 1119744 * k + 1074262 := by
    unfold C
    simp [show (2239488 * k + 2148524) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1074262) = 559872 * k + 537131 := by
    unfold C
    simp [show (1119744 * k + 1074262) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 537131) = 1679616 * k + 1611394 := by
    unfold C
    simp [show (559872 * k + 537131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1611394) = 839808 * k + 805697 := by
    unfold C
    simp [show (1679616 * k + 1611394) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 805697) = 2519424 * k + 2417092 := by
    unfold C
    simp [show (839808 * k + 805697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2417092) = 1259712 * k + 1208546 := by
    unfold C
    simp [show (2519424 * k + 2417092) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1208546) = 629856 * k + 604273 := by
    unfold C
    simp [show (1259712 * k + 1208546) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 604273) = 1889568 * k + 1812820 := by
    unfold C
    simp [show (629856 * k + 604273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1812820) = 944784 * k + 906410 := by
    unfold C
    simp [show (1889568 * k + 1812820) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 906410) = 472392 * k + 453205 := by
    unfold C
    simp [show (944784 * k + 906410) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 453205) = 1417176 * k + 1359616 := by
    unfold C
    simp [show (472392 * k + 453205) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1359616) = 708588 * k + 679808 := by
    unfold C
    simp [show (1417176 * k + 1359616) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 679808) = 354294 * k + 339904 := by
    unfold C
    simp [show (708588 * k + 679808) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 339904) = 177147 * k + 169952 := by
    unfold C
    simp [show (354294 * k + 339904) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 251495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 251495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_251775 : ∀ k : Nat,
    iterate (262144 * k + 251775) 29 = 177147 * k + 170141 ∧
      177147 * k + 170141 < 262144 * k + 251775 := by
  intro k
  have h1 : C (262144 * k + 251775) = 786432 * k + 755326 := by
    unfold C
    simp [show (262144 * k + 251775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 755326) = 393216 * k + 377663 := by
    unfold C
    simp [show (786432 * k + 755326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 377663) = 1179648 * k + 1132990 := by
    unfold C
    simp [show (393216 * k + 377663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1132990) = 589824 * k + 566495 := by
    unfold C
    simp [show (1179648 * k + 1132990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 566495) = 1769472 * k + 1699486 := by
    unfold C
    simp [show (589824 * k + 566495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1699486) = 884736 * k + 849743 := by
    unfold C
    simp [show (1769472 * k + 1699486) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 849743) = 2654208 * k + 2549230 := by
    unfold C
    simp [show (884736 * k + 849743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2549230) = 1327104 * k + 1274615 := by
    unfold C
    simp [show (2654208 * k + 2549230) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1274615) = 3981312 * k + 3823846 := by
    unfold C
    simp [show (1327104 * k + 1274615) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3823846) = 1990656 * k + 1911923 := by
    unfold C
    simp [show (3981312 * k + 3823846) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1911923) = 5971968 * k + 5735770 := by
    unfold C
    simp [show (1990656 * k + 1911923) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5735770) = 2985984 * k + 2867885 := by
    unfold C
    simp [show (5971968 * k + 5735770) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2867885) = 8957952 * k + 8603656 := by
    unfold C
    simp [show (2985984 * k + 2867885) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8603656) = 4478976 * k + 4301828 := by
    unfold C
    simp [show (8957952 * k + 8603656) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4301828) = 2239488 * k + 2150914 := by
    unfold C
    simp [show (4478976 * k + 4301828) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2150914) = 1119744 * k + 1075457 := by
    unfold C
    simp [show (2239488 * k + 2150914) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1075457) = 3359232 * k + 3226372 := by
    unfold C
    simp [show (1119744 * k + 1075457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3226372) = 1679616 * k + 1613186 := by
    unfold C
    simp [show (3359232 * k + 3226372) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1613186) = 839808 * k + 806593 := by
    unfold C
    simp [show (1679616 * k + 1613186) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 806593) = 2519424 * k + 2419780 := by
    unfold C
    simp [show (839808 * k + 806593) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2419780) = 1259712 * k + 1209890 := by
    unfold C
    simp [show (2519424 * k + 2419780) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1209890) = 629856 * k + 604945 := by
    unfold C
    simp [show (1259712 * k + 1209890) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 604945) = 1889568 * k + 1814836 := by
    unfold C
    simp [show (629856 * k + 604945) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1814836) = 944784 * k + 907418 := by
    unfold C
    simp [show (1889568 * k + 1814836) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 907418) = 472392 * k + 453709 := by
    unfold C
    simp [show (944784 * k + 907418) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 453709) = 1417176 * k + 1361128 := by
    unfold C
    simp [show (472392 * k + 453709) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1361128) = 708588 * k + 680564 := by
    unfold C
    simp [show (1417176 * k + 1361128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 680564) = 354294 * k + 340282 := by
    unfold C
    simp [show (708588 * k + 680564) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 340282) = 177147 * k + 170141 := by
    unfold C
    simp [show (354294 * k + 340282) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 251775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 251775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_252263 : ∀ k : Nat,
    iterate (262144 * k + 252263) 29 = 177147 * k + 170471 ∧
      177147 * k + 170471 < 262144 * k + 252263 := by
  intro k
  have h1 : C (262144 * k + 252263) = 786432 * k + 756790 := by
    unfold C
    simp [show (262144 * k + 252263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 756790) = 393216 * k + 378395 := by
    unfold C
    simp [show (786432 * k + 756790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 378395) = 1179648 * k + 1135186 := by
    unfold C
    simp [show (393216 * k + 378395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1135186) = 589824 * k + 567593 := by
    unfold C
    simp [show (1179648 * k + 1135186) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 567593) = 1769472 * k + 1702780 := by
    unfold C
    simp [show (589824 * k + 567593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1702780) = 884736 * k + 851390 := by
    unfold C
    simp [show (1769472 * k + 1702780) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 851390) = 442368 * k + 425695 := by
    unfold C
    simp [show (884736 * k + 851390) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 425695) = 1327104 * k + 1277086 := by
    unfold C
    simp [show (442368 * k + 425695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1277086) = 663552 * k + 638543 := by
    unfold C
    simp [show (1327104 * k + 1277086) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 638543) = 1990656 * k + 1915630 := by
    unfold C
    simp [show (663552 * k + 638543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1915630) = 995328 * k + 957815 := by
    unfold C
    simp [show (1990656 * k + 1915630) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 957815) = 2985984 * k + 2873446 := by
    unfold C
    simp [show (995328 * k + 957815) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2873446) = 1492992 * k + 1436723 := by
    unfold C
    simp [show (2985984 * k + 2873446) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1436723) = 4478976 * k + 4310170 := by
    unfold C
    simp [show (1492992 * k + 1436723) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4310170) = 2239488 * k + 2155085 := by
    unfold C
    simp [show (4478976 * k + 4310170) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2155085) = 6718464 * k + 6465256 := by
    unfold C
    simp [show (2239488 * k + 2155085) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6465256) = 3359232 * k + 3232628 := by
    unfold C
    simp [show (6718464 * k + 6465256) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3232628) = 1679616 * k + 1616314 := by
    unfold C
    simp [show (3359232 * k + 3232628) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1616314) = 839808 * k + 808157 := by
    unfold C
    simp [show (1679616 * k + 1616314) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 808157) = 2519424 * k + 2424472 := by
    unfold C
    simp [show (839808 * k + 808157) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2424472) = 1259712 * k + 1212236 := by
    unfold C
    simp [show (2519424 * k + 2424472) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1212236) = 629856 * k + 606118 := by
    unfold C
    simp [show (1259712 * k + 1212236) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 606118) = 314928 * k + 303059 := by
    unfold C
    simp [show (629856 * k + 606118) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 303059) = 944784 * k + 909178 := by
    unfold C
    simp [show (314928 * k + 303059) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 909178) = 472392 * k + 454589 := by
    unfold C
    simp [show (944784 * k + 909178) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 454589) = 1417176 * k + 1363768 := by
    unfold C
    simp [show (472392 * k + 454589) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1363768) = 708588 * k + 681884 := by
    unfold C
    simp [show (1417176 * k + 1363768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 681884) = 354294 * k + 340942 := by
    unfold C
    simp [show (708588 * k + 681884) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 340942) = 177147 * k + 170471 := by
    unfold C
    simp [show (354294 * k + 340942) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 252263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 252263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard046
