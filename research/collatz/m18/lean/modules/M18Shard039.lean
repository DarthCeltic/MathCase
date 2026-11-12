import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard039

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_207451 : ∀ k : Nat,
    iterate (262144 * k + 207451) 29 = 177147 * k + 140189 ∧
      177147 * k + 140189 < 262144 * k + 207451 := by
  intro k
  have h1 : C (262144 * k + 207451) = 786432 * k + 622354 := by
    unfold C
    simp [show (262144 * k + 207451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 622354) = 393216 * k + 311177 := by
    unfold C
    simp [show (786432 * k + 622354) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 311177) = 1179648 * k + 933532 := by
    unfold C
    simp [show (393216 * k + 311177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 933532) = 589824 * k + 466766 := by
    unfold C
    simp [show (1179648 * k + 933532) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 466766) = 294912 * k + 233383 := by
    unfold C
    simp [show (589824 * k + 466766) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 233383) = 884736 * k + 700150 := by
    unfold C
    simp [show (294912 * k + 233383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 700150) = 442368 * k + 350075 := by
    unfold C
    simp [show (884736 * k + 700150) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 350075) = 1327104 * k + 1050226 := by
    unfold C
    simp [show (442368 * k + 350075) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1050226) = 663552 * k + 525113 := by
    unfold C
    simp [show (1327104 * k + 1050226) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 525113) = 1990656 * k + 1575340 := by
    unfold C
    simp [show (663552 * k + 525113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1575340) = 995328 * k + 787670 := by
    unfold C
    simp [show (1990656 * k + 1575340) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 787670) = 497664 * k + 393835 := by
    unfold C
    simp [show (995328 * k + 787670) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 393835) = 1492992 * k + 1181506 := by
    unfold C
    simp [show (497664 * k + 393835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1181506) = 746496 * k + 590753 := by
    unfold C
    simp [show (1492992 * k + 1181506) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 590753) = 2239488 * k + 1772260 := by
    unfold C
    simp [show (746496 * k + 590753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1772260) = 1119744 * k + 886130 := by
    unfold C
    simp [show (2239488 * k + 1772260) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 886130) = 559872 * k + 443065 := by
    unfold C
    simp [show (1119744 * k + 886130) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 443065) = 1679616 * k + 1329196 := by
    unfold C
    simp [show (559872 * k + 443065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1329196) = 839808 * k + 664598 := by
    unfold C
    simp [show (1679616 * k + 1329196) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 664598) = 419904 * k + 332299 := by
    unfold C
    simp [show (839808 * k + 664598) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 332299) = 1259712 * k + 996898 := by
    unfold C
    simp [show (419904 * k + 332299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 996898) = 629856 * k + 498449 := by
    unfold C
    simp [show (1259712 * k + 996898) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 498449) = 1889568 * k + 1495348 := by
    unfold C
    simp [show (629856 * k + 498449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1495348) = 944784 * k + 747674 := by
    unfold C
    simp [show (1889568 * k + 1495348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 747674) = 472392 * k + 373837 := by
    unfold C
    simp [show (944784 * k + 747674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 373837) = 1417176 * k + 1121512 := by
    unfold C
    simp [show (472392 * k + 373837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1121512) = 708588 * k + 560756 := by
    unfold C
    simp [show (1417176 * k + 1121512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 560756) = 354294 * k + 280378 := by
    unfold C
    simp [show (708588 * k + 560756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 280378) = 177147 * k + 140189 := by
    unfold C
    simp [show (354294 * k + 280378) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 207451) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 207451))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_207611 : ∀ k : Nat,
    iterate (262144 * k + 207611) 29 = 177147 * k + 140297 ∧
      177147 * k + 140297 < 262144 * k + 207611 := by
  intro k
  have h1 : C (262144 * k + 207611) = 786432 * k + 622834 := by
    unfold C
    simp [show (262144 * k + 207611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 622834) = 393216 * k + 311417 := by
    unfold C
    simp [show (786432 * k + 622834) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 311417) = 1179648 * k + 934252 := by
    unfold C
    simp [show (393216 * k + 311417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 934252) = 589824 * k + 467126 := by
    unfold C
    simp [show (1179648 * k + 934252) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 467126) = 294912 * k + 233563 := by
    unfold C
    simp [show (589824 * k + 467126) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 233563) = 884736 * k + 700690 := by
    unfold C
    simp [show (294912 * k + 233563) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 700690) = 442368 * k + 350345 := by
    unfold C
    simp [show (884736 * k + 700690) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 350345) = 1327104 * k + 1051036 := by
    unfold C
    simp [show (442368 * k + 350345) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1051036) = 663552 * k + 525518 := by
    unfold C
    simp [show (1327104 * k + 1051036) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 525518) = 331776 * k + 262759 := by
    unfold C
    simp [show (663552 * k + 525518) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 262759) = 995328 * k + 788278 := by
    unfold C
    simp [show (331776 * k + 262759) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 788278) = 497664 * k + 394139 := by
    unfold C
    simp [show (995328 * k + 788278) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 394139) = 1492992 * k + 1182418 := by
    unfold C
    simp [show (497664 * k + 394139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1182418) = 746496 * k + 591209 := by
    unfold C
    simp [show (1492992 * k + 1182418) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 591209) = 2239488 * k + 1773628 := by
    unfold C
    simp [show (746496 * k + 591209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1773628) = 1119744 * k + 886814 := by
    unfold C
    simp [show (2239488 * k + 1773628) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 886814) = 559872 * k + 443407 := by
    unfold C
    simp [show (1119744 * k + 886814) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 443407) = 1679616 * k + 1330222 := by
    unfold C
    simp [show (559872 * k + 443407) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1330222) = 839808 * k + 665111 := by
    unfold C
    simp [show (1679616 * k + 1330222) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 665111) = 2519424 * k + 1995334 := by
    unfold C
    simp [show (839808 * k + 665111) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1995334) = 1259712 * k + 997667 := by
    unfold C
    simp [show (2519424 * k + 1995334) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 997667) = 3779136 * k + 2993002 := by
    unfold C
    simp [show (1259712 * k + 997667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2993002) = 1889568 * k + 1496501 := by
    unfold C
    simp [show (3779136 * k + 2993002) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1496501) = 5668704 * k + 4489504 := by
    unfold C
    simp [show (1889568 * k + 1496501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4489504) = 2834352 * k + 2244752 := by
    unfold C
    simp [show (5668704 * k + 4489504) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2244752) = 1417176 * k + 1122376 := by
    unfold C
    simp [show (2834352 * k + 2244752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1122376) = 708588 * k + 561188 := by
    unfold C
    simp [show (1417176 * k + 1122376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 561188) = 354294 * k + 280594 := by
    unfold C
    simp [show (708588 * k + 561188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 280594) = 177147 * k + 140297 := by
    unfold C
    simp [show (354294 * k + 280594) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 207611) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 207611))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_207807 : ∀ k : Nat,
    iterate (262144 * k + 207807) 29 = 177147 * k + 140429 ∧
      177147 * k + 140429 < 262144 * k + 207807 := by
  intro k
  have h1 : C (262144 * k + 207807) = 786432 * k + 623422 := by
    unfold C
    simp [show (262144 * k + 207807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 623422) = 393216 * k + 311711 := by
    unfold C
    simp [show (786432 * k + 623422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 311711) = 1179648 * k + 935134 := by
    unfold C
    simp [show (393216 * k + 311711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 935134) = 589824 * k + 467567 := by
    unfold C
    simp [show (1179648 * k + 935134) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 467567) = 1769472 * k + 1402702 := by
    unfold C
    simp [show (589824 * k + 467567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1402702) = 884736 * k + 701351 := by
    unfold C
    simp [show (1769472 * k + 1402702) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 701351) = 2654208 * k + 2104054 := by
    unfold C
    simp [show (884736 * k + 701351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2104054) = 1327104 * k + 1052027 := by
    unfold C
    simp [show (2654208 * k + 2104054) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1052027) = 3981312 * k + 3156082 := by
    unfold C
    simp [show (1327104 * k + 1052027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3156082) = 1990656 * k + 1578041 := by
    unfold C
    simp [show (3981312 * k + 3156082) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1578041) = 5971968 * k + 4734124 := by
    unfold C
    simp [show (1990656 * k + 1578041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4734124) = 2985984 * k + 2367062 := by
    unfold C
    simp [show (5971968 * k + 4734124) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2367062) = 1492992 * k + 1183531 := by
    unfold C
    simp [show (2985984 * k + 2367062) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1183531) = 4478976 * k + 3550594 := by
    unfold C
    simp [show (1492992 * k + 1183531) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3550594) = 2239488 * k + 1775297 := by
    unfold C
    simp [show (4478976 * k + 3550594) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1775297) = 6718464 * k + 5325892 := by
    unfold C
    simp [show (2239488 * k + 1775297) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5325892) = 3359232 * k + 2662946 := by
    unfold C
    simp [show (6718464 * k + 5325892) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2662946) = 1679616 * k + 1331473 := by
    unfold C
    simp [show (3359232 * k + 2662946) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1331473) = 5038848 * k + 3994420 := by
    unfold C
    simp [show (1679616 * k + 1331473) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3994420) = 2519424 * k + 1997210 := by
    unfold C
    simp [show (5038848 * k + 3994420) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1997210) = 1259712 * k + 998605 := by
    unfold C
    simp [show (2519424 * k + 1997210) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 998605) = 3779136 * k + 2995816 := by
    unfold C
    simp [show (1259712 * k + 998605) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2995816) = 1889568 * k + 1497908 := by
    unfold C
    simp [show (3779136 * k + 2995816) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1497908) = 944784 * k + 748954 := by
    unfold C
    simp [show (1889568 * k + 1497908) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 748954) = 472392 * k + 374477 := by
    unfold C
    simp [show (944784 * k + 748954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 374477) = 1417176 * k + 1123432 := by
    unfold C
    simp [show (472392 * k + 374477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1123432) = 708588 * k + 561716 := by
    unfold C
    simp [show (1417176 * k + 1123432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 561716) = 354294 * k + 280858 := by
    unfold C
    simp [show (708588 * k + 561716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 280858) = 177147 * k + 140429 := by
    unfold C
    simp [show (354294 * k + 280858) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 207807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 207807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_208027 : ∀ k : Nat,
    iterate (262144 * k + 208027) 29 = 177147 * k + 140578 ∧
      177147 * k + 140578 < 262144 * k + 208027 := by
  intro k
  have h1 : C (262144 * k + 208027) = 786432 * k + 624082 := by
    unfold C
    simp [show (262144 * k + 208027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 624082) = 393216 * k + 312041 := by
    unfold C
    simp [show (786432 * k + 624082) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 312041) = 1179648 * k + 936124 := by
    unfold C
    simp [show (393216 * k + 312041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 936124) = 589824 * k + 468062 := by
    unfold C
    simp [show (1179648 * k + 936124) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 468062) = 294912 * k + 234031 := by
    unfold C
    simp [show (589824 * k + 468062) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 234031) = 884736 * k + 702094 := by
    unfold C
    simp [show (294912 * k + 234031) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 702094) = 442368 * k + 351047 := by
    unfold C
    simp [show (884736 * k + 702094) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 351047) = 1327104 * k + 1053142 := by
    unfold C
    simp [show (442368 * k + 351047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1053142) = 663552 * k + 526571 := by
    unfold C
    simp [show (1327104 * k + 1053142) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 526571) = 1990656 * k + 1579714 := by
    unfold C
    simp [show (663552 * k + 526571) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1579714) = 995328 * k + 789857 := by
    unfold C
    simp [show (1990656 * k + 1579714) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 789857) = 2985984 * k + 2369572 := by
    unfold C
    simp [show (995328 * k + 789857) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2369572) = 1492992 * k + 1184786 := by
    unfold C
    simp [show (2985984 * k + 2369572) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1184786) = 746496 * k + 592393 := by
    unfold C
    simp [show (1492992 * k + 1184786) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 592393) = 2239488 * k + 1777180 := by
    unfold C
    simp [show (746496 * k + 592393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1777180) = 1119744 * k + 888590 := by
    unfold C
    simp [show (2239488 * k + 1777180) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 888590) = 559872 * k + 444295 := by
    unfold C
    simp [show (1119744 * k + 888590) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 444295) = 1679616 * k + 1332886 := by
    unfold C
    simp [show (559872 * k + 444295) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1332886) = 839808 * k + 666443 := by
    unfold C
    simp [show (1679616 * k + 1332886) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 666443) = 2519424 * k + 1999330 := by
    unfold C
    simp [show (839808 * k + 666443) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1999330) = 1259712 * k + 999665 := by
    unfold C
    simp [show (2519424 * k + 1999330) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 999665) = 3779136 * k + 2998996 := by
    unfold C
    simp [show (1259712 * k + 999665) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2998996) = 1889568 * k + 1499498 := by
    unfold C
    simp [show (3779136 * k + 2998996) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1499498) = 944784 * k + 749749 := by
    unfold C
    simp [show (1889568 * k + 1499498) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 749749) = 2834352 * k + 2249248 := by
    unfold C
    simp [show (944784 * k + 749749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2249248) = 1417176 * k + 1124624 := by
    unfold C
    simp [show (2834352 * k + 2249248) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1124624) = 708588 * k + 562312 := by
    unfold C
    simp [show (1417176 * k + 1124624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 562312) = 354294 * k + 281156 := by
    unfold C
    simp [show (708588 * k + 562312) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 281156) = 177147 * k + 140578 := by
    unfold C
    simp [show (354294 * k + 281156) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 208027) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 208027))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_208539 : ∀ k : Nat,
    iterate (262144 * k + 208539) 29 = 177147 * k + 140924 ∧
      177147 * k + 140924 < 262144 * k + 208539 := by
  intro k
  have h1 : C (262144 * k + 208539) = 786432 * k + 625618 := by
    unfold C
    simp [show (262144 * k + 208539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 625618) = 393216 * k + 312809 := by
    unfold C
    simp [show (786432 * k + 625618) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 312809) = 1179648 * k + 938428 := by
    unfold C
    simp [show (393216 * k + 312809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 938428) = 589824 * k + 469214 := by
    unfold C
    simp [show (1179648 * k + 938428) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 469214) = 294912 * k + 234607 := by
    unfold C
    simp [show (589824 * k + 469214) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 234607) = 884736 * k + 703822 := by
    unfold C
    simp [show (294912 * k + 234607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 703822) = 442368 * k + 351911 := by
    unfold C
    simp [show (884736 * k + 703822) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 351911) = 1327104 * k + 1055734 := by
    unfold C
    simp [show (442368 * k + 351911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1055734) = 663552 * k + 527867 := by
    unfold C
    simp [show (1327104 * k + 1055734) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 527867) = 1990656 * k + 1583602 := by
    unfold C
    simp [show (663552 * k + 527867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1583602) = 995328 * k + 791801 := by
    unfold C
    simp [show (1990656 * k + 1583602) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 791801) = 2985984 * k + 2375404 := by
    unfold C
    simp [show (995328 * k + 791801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2375404) = 1492992 * k + 1187702 := by
    unfold C
    simp [show (2985984 * k + 2375404) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1187702) = 746496 * k + 593851 := by
    unfold C
    simp [show (1492992 * k + 1187702) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 593851) = 2239488 * k + 1781554 := by
    unfold C
    simp [show (746496 * k + 593851) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1781554) = 1119744 * k + 890777 := by
    unfold C
    simp [show (2239488 * k + 1781554) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 890777) = 3359232 * k + 2672332 := by
    unfold C
    simp [show (1119744 * k + 890777) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2672332) = 1679616 * k + 1336166 := by
    unfold C
    simp [show (3359232 * k + 2672332) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1336166) = 839808 * k + 668083 := by
    unfold C
    simp [show (1679616 * k + 1336166) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 668083) = 2519424 * k + 2004250 := by
    unfold C
    simp [show (839808 * k + 668083) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2004250) = 1259712 * k + 1002125 := by
    unfold C
    simp [show (2519424 * k + 2004250) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1002125) = 3779136 * k + 3006376 := by
    unfold C
    simp [show (1259712 * k + 1002125) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3006376) = 1889568 * k + 1503188 := by
    unfold C
    simp [show (3779136 * k + 3006376) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1503188) = 944784 * k + 751594 := by
    unfold C
    simp [show (1889568 * k + 1503188) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 751594) = 472392 * k + 375797 := by
    unfold C
    simp [show (944784 * k + 751594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 375797) = 1417176 * k + 1127392 := by
    unfold C
    simp [show (472392 * k + 375797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1127392) = 708588 * k + 563696 := by
    unfold C
    simp [show (1417176 * k + 1127392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 563696) = 354294 * k + 281848 := by
    unfold C
    simp [show (708588 * k + 563696) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 281848) = 177147 * k + 140924 := by
    unfold C
    simp [show (354294 * k + 281848) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 208539) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 208539))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_208591 : ∀ k : Nat,
    iterate (262144 * k + 208591) 29 = 177147 * k + 140959 ∧
      177147 * k + 140959 < 262144 * k + 208591 := by
  intro k
  have h1 : C (262144 * k + 208591) = 786432 * k + 625774 := by
    unfold C
    simp [show (262144 * k + 208591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 625774) = 393216 * k + 312887 := by
    unfold C
    simp [show (786432 * k + 625774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 312887) = 1179648 * k + 938662 := by
    unfold C
    simp [show (393216 * k + 312887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 938662) = 589824 * k + 469331 := by
    unfold C
    simp [show (1179648 * k + 938662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 469331) = 1769472 * k + 1407994 := by
    unfold C
    simp [show (589824 * k + 469331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1407994) = 884736 * k + 703997 := by
    unfold C
    simp [show (1769472 * k + 1407994) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 703997) = 2654208 * k + 2111992 := by
    unfold C
    simp [show (884736 * k + 703997) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2111992) = 1327104 * k + 1055996 := by
    unfold C
    simp [show (2654208 * k + 2111992) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1055996) = 663552 * k + 527998 := by
    unfold C
    simp [show (1327104 * k + 1055996) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 527998) = 331776 * k + 263999 := by
    unfold C
    simp [show (663552 * k + 527998) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 263999) = 995328 * k + 791998 := by
    unfold C
    simp [show (331776 * k + 263999) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 791998) = 497664 * k + 395999 := by
    unfold C
    simp [show (995328 * k + 791998) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 395999) = 1492992 * k + 1187998 := by
    unfold C
    simp [show (497664 * k + 395999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1187998) = 746496 * k + 593999 := by
    unfold C
    simp [show (1492992 * k + 1187998) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 593999) = 2239488 * k + 1781998 := by
    unfold C
    simp [show (746496 * k + 593999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1781998) = 1119744 * k + 890999 := by
    unfold C
    simp [show (2239488 * k + 1781998) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 890999) = 3359232 * k + 2672998 := by
    unfold C
    simp [show (1119744 * k + 890999) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2672998) = 1679616 * k + 1336499 := by
    unfold C
    simp [show (3359232 * k + 2672998) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1336499) = 5038848 * k + 4009498 := by
    unfold C
    simp [show (1679616 * k + 1336499) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4009498) = 2519424 * k + 2004749 := by
    unfold C
    simp [show (5038848 * k + 4009498) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2004749) = 7558272 * k + 6014248 := by
    unfold C
    simp [show (2519424 * k + 2004749) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6014248) = 3779136 * k + 3007124 := by
    unfold C
    simp [show (7558272 * k + 6014248) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3007124) = 1889568 * k + 1503562 := by
    unfold C
    simp [show (3779136 * k + 3007124) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1503562) = 944784 * k + 751781 := by
    unfold C
    simp [show (1889568 * k + 1503562) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 751781) = 2834352 * k + 2255344 := by
    unfold C
    simp [show (944784 * k + 751781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2255344) = 1417176 * k + 1127672 := by
    unfold C
    simp [show (2834352 * k + 2255344) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1127672) = 708588 * k + 563836 := by
    unfold C
    simp [show (1417176 * k + 1127672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 563836) = 354294 * k + 281918 := by
    unfold C
    simp [show (708588 * k + 563836) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 281918) = 177147 * k + 140959 := by
    unfold C
    simp [show (354294 * k + 281918) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 208591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 208591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_208831 : ∀ k : Nat,
    iterate (262144 * k + 208831) 29 = 177147 * k + 141121 ∧
      177147 * k + 141121 < 262144 * k + 208831 := by
  intro k
  have h1 : C (262144 * k + 208831) = 786432 * k + 626494 := by
    unfold C
    simp [show (262144 * k + 208831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 626494) = 393216 * k + 313247 := by
    unfold C
    simp [show (786432 * k + 626494) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 313247) = 1179648 * k + 939742 := by
    unfold C
    simp [show (393216 * k + 313247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 939742) = 589824 * k + 469871 := by
    unfold C
    simp [show (1179648 * k + 939742) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 469871) = 1769472 * k + 1409614 := by
    unfold C
    simp [show (589824 * k + 469871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1409614) = 884736 * k + 704807 := by
    unfold C
    simp [show (1769472 * k + 1409614) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 704807) = 2654208 * k + 2114422 := by
    unfold C
    simp [show (884736 * k + 704807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2114422) = 1327104 * k + 1057211 := by
    unfold C
    simp [show (2654208 * k + 2114422) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1057211) = 3981312 * k + 3171634 := by
    unfold C
    simp [show (1327104 * k + 1057211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3171634) = 1990656 * k + 1585817 := by
    unfold C
    simp [show (3981312 * k + 3171634) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1585817) = 5971968 * k + 4757452 := by
    unfold C
    simp [show (1990656 * k + 1585817) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4757452) = 2985984 * k + 2378726 := by
    unfold C
    simp [show (5971968 * k + 4757452) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2378726) = 1492992 * k + 1189363 := by
    unfold C
    simp [show (2985984 * k + 2378726) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1189363) = 4478976 * k + 3568090 := by
    unfold C
    simp [show (1492992 * k + 1189363) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3568090) = 2239488 * k + 1784045 := by
    unfold C
    simp [show (4478976 * k + 3568090) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1784045) = 6718464 * k + 5352136 := by
    unfold C
    simp [show (2239488 * k + 1784045) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5352136) = 3359232 * k + 2676068 := by
    unfold C
    simp [show (6718464 * k + 5352136) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2676068) = 1679616 * k + 1338034 := by
    unfold C
    simp [show (3359232 * k + 2676068) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1338034) = 839808 * k + 669017 := by
    unfold C
    simp [show (1679616 * k + 1338034) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 669017) = 2519424 * k + 2007052 := by
    unfold C
    simp [show (839808 * k + 669017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2007052) = 1259712 * k + 1003526 := by
    unfold C
    simp [show (2519424 * k + 2007052) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1003526) = 629856 * k + 501763 := by
    unfold C
    simp [show (1259712 * k + 1003526) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 501763) = 1889568 * k + 1505290 := by
    unfold C
    simp [show (629856 * k + 501763) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1505290) = 944784 * k + 752645 := by
    unfold C
    simp [show (1889568 * k + 1505290) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 752645) = 2834352 * k + 2257936 := by
    unfold C
    simp [show (944784 * k + 752645) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2257936) = 1417176 * k + 1128968 := by
    unfold C
    simp [show (2834352 * k + 2257936) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1128968) = 708588 * k + 564484 := by
    unfold C
    simp [show (1417176 * k + 1128968) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 564484) = 354294 * k + 282242 := by
    unfold C
    simp [show (708588 * k + 564484) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 282242) = 177147 * k + 141121 := by
    unfold C
    simp [show (354294 * k + 282242) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 208831) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 208831))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_208943 : ∀ k : Nat,
    iterate (262144 * k + 208943) 29 = 177147 * k + 141197 ∧
      177147 * k + 141197 < 262144 * k + 208943 := by
  intro k
  have h1 : C (262144 * k + 208943) = 786432 * k + 626830 := by
    unfold C
    simp [show (262144 * k + 208943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 626830) = 393216 * k + 313415 := by
    unfold C
    simp [show (786432 * k + 626830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 313415) = 1179648 * k + 940246 := by
    unfold C
    simp [show (393216 * k + 313415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 940246) = 589824 * k + 470123 := by
    unfold C
    simp [show (1179648 * k + 940246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 470123) = 1769472 * k + 1410370 := by
    unfold C
    simp [show (589824 * k + 470123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1410370) = 884736 * k + 705185 := by
    unfold C
    simp [show (1769472 * k + 1410370) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 705185) = 2654208 * k + 2115556 := by
    unfold C
    simp [show (884736 * k + 705185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2115556) = 1327104 * k + 1057778 := by
    unfold C
    simp [show (2654208 * k + 2115556) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1057778) = 663552 * k + 528889 := by
    unfold C
    simp [show (1327104 * k + 1057778) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 528889) = 1990656 * k + 1586668 := by
    unfold C
    simp [show (663552 * k + 528889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1586668) = 995328 * k + 793334 := by
    unfold C
    simp [show (1990656 * k + 1586668) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 793334) = 497664 * k + 396667 := by
    unfold C
    simp [show (995328 * k + 793334) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 396667) = 1492992 * k + 1190002 := by
    unfold C
    simp [show (497664 * k + 396667) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1190002) = 746496 * k + 595001 := by
    unfold C
    simp [show (1492992 * k + 1190002) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 595001) = 2239488 * k + 1785004 := by
    unfold C
    simp [show (746496 * k + 595001) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1785004) = 1119744 * k + 892502 := by
    unfold C
    simp [show (2239488 * k + 1785004) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 892502) = 559872 * k + 446251 := by
    unfold C
    simp [show (1119744 * k + 892502) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 446251) = 1679616 * k + 1338754 := by
    unfold C
    simp [show (559872 * k + 446251) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1338754) = 839808 * k + 669377 := by
    unfold C
    simp [show (1679616 * k + 1338754) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 669377) = 2519424 * k + 2008132 := by
    unfold C
    simp [show (839808 * k + 669377) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2008132) = 1259712 * k + 1004066 := by
    unfold C
    simp [show (2519424 * k + 2008132) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1004066) = 629856 * k + 502033 := by
    unfold C
    simp [show (1259712 * k + 1004066) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 502033) = 1889568 * k + 1506100 := by
    unfold C
    simp [show (629856 * k + 502033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1506100) = 944784 * k + 753050 := by
    unfold C
    simp [show (1889568 * k + 1506100) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 753050) = 472392 * k + 376525 := by
    unfold C
    simp [show (944784 * k + 753050) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 376525) = 1417176 * k + 1129576 := by
    unfold C
    simp [show (472392 * k + 376525) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1129576) = 708588 * k + 564788 := by
    unfold C
    simp [show (1417176 * k + 1129576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 564788) = 354294 * k + 282394 := by
    unfold C
    simp [show (708588 * k + 564788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 282394) = 177147 * k + 141197 := by
    unfold C
    simp [show (354294 * k + 282394) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 208943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 208943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_209063 : ∀ k : Nat,
    iterate (262144 * k + 209063) 29 = 177147 * k + 141278 ∧
      177147 * k + 141278 < 262144 * k + 209063 := by
  intro k
  have h1 : C (262144 * k + 209063) = 786432 * k + 627190 := by
    unfold C
    simp [show (262144 * k + 209063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 627190) = 393216 * k + 313595 := by
    unfold C
    simp [show (786432 * k + 627190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 313595) = 1179648 * k + 940786 := by
    unfold C
    simp [show (393216 * k + 313595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 940786) = 589824 * k + 470393 := by
    unfold C
    simp [show (1179648 * k + 940786) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 470393) = 1769472 * k + 1411180 := by
    unfold C
    simp [show (589824 * k + 470393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1411180) = 884736 * k + 705590 := by
    unfold C
    simp [show (1769472 * k + 1411180) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 705590) = 442368 * k + 352795 := by
    unfold C
    simp [show (884736 * k + 705590) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 352795) = 1327104 * k + 1058386 := by
    unfold C
    simp [show (442368 * k + 352795) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1058386) = 663552 * k + 529193 := by
    unfold C
    simp [show (1327104 * k + 1058386) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 529193) = 1990656 * k + 1587580 := by
    unfold C
    simp [show (663552 * k + 529193) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1587580) = 995328 * k + 793790 := by
    unfold C
    simp [show (1990656 * k + 1587580) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 793790) = 497664 * k + 396895 := by
    unfold C
    simp [show (995328 * k + 793790) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 396895) = 1492992 * k + 1190686 := by
    unfold C
    simp [show (497664 * k + 396895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1190686) = 746496 * k + 595343 := by
    unfold C
    simp [show (1492992 * k + 1190686) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 595343) = 2239488 * k + 1786030 := by
    unfold C
    simp [show (746496 * k + 595343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1786030) = 1119744 * k + 893015 := by
    unfold C
    simp [show (2239488 * k + 1786030) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 893015) = 3359232 * k + 2679046 := by
    unfold C
    simp [show (1119744 * k + 893015) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2679046) = 1679616 * k + 1339523 := by
    unfold C
    simp [show (3359232 * k + 2679046) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1339523) = 5038848 * k + 4018570 := by
    unfold C
    simp [show (1679616 * k + 1339523) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4018570) = 2519424 * k + 2009285 := by
    unfold C
    simp [show (5038848 * k + 4018570) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2009285) = 7558272 * k + 6027856 := by
    unfold C
    simp [show (2519424 * k + 2009285) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6027856) = 3779136 * k + 3013928 := by
    unfold C
    simp [show (7558272 * k + 6027856) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3013928) = 1889568 * k + 1506964 := by
    unfold C
    simp [show (3779136 * k + 3013928) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1506964) = 944784 * k + 753482 := by
    unfold C
    simp [show (1889568 * k + 1506964) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 753482) = 472392 * k + 376741 := by
    unfold C
    simp [show (944784 * k + 753482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 376741) = 1417176 * k + 1130224 := by
    unfold C
    simp [show (472392 * k + 376741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1130224) = 708588 * k + 565112 := by
    unfold C
    simp [show (1417176 * k + 1130224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 565112) = 354294 * k + 282556 := by
    unfold C
    simp [show (708588 * k + 565112) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 282556) = 177147 * k + 141278 := by
    unfold C
    simp [show (354294 * k + 282556) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 209063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 209063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_209343 : ∀ k : Nat,
    iterate (262144 * k + 209343) 29 = 177147 * k + 141467 ∧
      177147 * k + 141467 < 262144 * k + 209343 := by
  intro k
  have h1 : C (262144 * k + 209343) = 786432 * k + 628030 := by
    unfold C
    simp [show (262144 * k + 209343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 628030) = 393216 * k + 314015 := by
    unfold C
    simp [show (786432 * k + 628030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 314015) = 1179648 * k + 942046 := by
    unfold C
    simp [show (393216 * k + 314015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 942046) = 589824 * k + 471023 := by
    unfold C
    simp [show (1179648 * k + 942046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 471023) = 1769472 * k + 1413070 := by
    unfold C
    simp [show (589824 * k + 471023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1413070) = 884736 * k + 706535 := by
    unfold C
    simp [show (1769472 * k + 1413070) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 706535) = 2654208 * k + 2119606 := by
    unfold C
    simp [show (884736 * k + 706535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2119606) = 1327104 * k + 1059803 := by
    unfold C
    simp [show (2654208 * k + 2119606) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1059803) = 3981312 * k + 3179410 := by
    unfold C
    simp [show (1327104 * k + 1059803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3179410) = 1990656 * k + 1589705 := by
    unfold C
    simp [show (3981312 * k + 3179410) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1589705) = 5971968 * k + 4769116 := by
    unfold C
    simp [show (1990656 * k + 1589705) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4769116) = 2985984 * k + 2384558 := by
    unfold C
    simp [show (5971968 * k + 4769116) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2384558) = 1492992 * k + 1192279 := by
    unfold C
    simp [show (2985984 * k + 2384558) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1192279) = 4478976 * k + 3576838 := by
    unfold C
    simp [show (1492992 * k + 1192279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3576838) = 2239488 * k + 1788419 := by
    unfold C
    simp [show (4478976 * k + 3576838) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1788419) = 6718464 * k + 5365258 := by
    unfold C
    simp [show (2239488 * k + 1788419) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5365258) = 3359232 * k + 2682629 := by
    unfold C
    simp [show (6718464 * k + 5365258) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2682629) = 10077696 * k + 8047888 := by
    unfold C
    simp [show (3359232 * k + 2682629) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8047888) = 5038848 * k + 4023944 := by
    unfold C
    simp [show (10077696 * k + 8047888) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4023944) = 2519424 * k + 2011972 := by
    unfold C
    simp [show (5038848 * k + 4023944) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2011972) = 1259712 * k + 1005986 := by
    unfold C
    simp [show (2519424 * k + 2011972) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1005986) = 629856 * k + 502993 := by
    unfold C
    simp [show (1259712 * k + 1005986) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 502993) = 1889568 * k + 1508980 := by
    unfold C
    simp [show (629856 * k + 502993) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1508980) = 944784 * k + 754490 := by
    unfold C
    simp [show (1889568 * k + 1508980) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 754490) = 472392 * k + 377245 := by
    unfold C
    simp [show (944784 * k + 754490) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 377245) = 1417176 * k + 1131736 := by
    unfold C
    simp [show (472392 * k + 377245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1131736) = 708588 * k + 565868 := by
    unfold C
    simp [show (1417176 * k + 1131736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 565868) = 354294 * k + 282934 := by
    unfold C
    simp [show (708588 * k + 565868) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 282934) = 177147 * k + 141467 := by
    unfold C
    simp [show (354294 * k + 282934) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 209343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 209343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_209919 : ∀ k : Nat,
    iterate (262144 * k + 209919) 29 = 177147 * k + 141856 ∧
      177147 * k + 141856 < 262144 * k + 209919 := by
  intro k
  have h1 : C (262144 * k + 209919) = 786432 * k + 629758 := by
    unfold C
    simp [show (262144 * k + 209919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 629758) = 393216 * k + 314879 := by
    unfold C
    simp [show (786432 * k + 629758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 314879) = 1179648 * k + 944638 := by
    unfold C
    simp [show (393216 * k + 314879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 944638) = 589824 * k + 472319 := by
    unfold C
    simp [show (1179648 * k + 944638) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 472319) = 1769472 * k + 1416958 := by
    unfold C
    simp [show (589824 * k + 472319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1416958) = 884736 * k + 708479 := by
    unfold C
    simp [show (1769472 * k + 1416958) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 708479) = 2654208 * k + 2125438 := by
    unfold C
    simp [show (884736 * k + 708479) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2125438) = 1327104 * k + 1062719 := by
    unfold C
    simp [show (2654208 * k + 2125438) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1062719) = 3981312 * k + 3188158 := by
    unfold C
    simp [show (1327104 * k + 1062719) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3188158) = 1990656 * k + 1594079 := by
    unfold C
    simp [show (3981312 * k + 3188158) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1594079) = 5971968 * k + 4782238 := by
    unfold C
    simp [show (1990656 * k + 1594079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4782238) = 2985984 * k + 2391119 := by
    unfold C
    simp [show (5971968 * k + 4782238) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2391119) = 8957952 * k + 7173358 := by
    unfold C
    simp [show (2985984 * k + 2391119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7173358) = 4478976 * k + 3586679 := by
    unfold C
    simp [show (8957952 * k + 7173358) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3586679) = 13436928 * k + 10760038 := by
    unfold C
    simp [show (4478976 * k + 3586679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10760038) = 6718464 * k + 5380019 := by
    unfold C
    simp [show (13436928 * k + 10760038) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5380019) = 20155392 * k + 16140058 := by
    unfold C
    simp [show (6718464 * k + 5380019) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 16140058) = 10077696 * k + 8070029 := by
    unfold C
    simp [show (20155392 * k + 16140058) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 8070029) = 30233088 * k + 24210088 := by
    unfold C
    simp [show (10077696 * k + 8070029) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 24210088) = 15116544 * k + 12105044 := by
    unfold C
    simp [show (30233088 * k + 24210088) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 12105044) = 7558272 * k + 6052522 := by
    unfold C
    simp [show (15116544 * k + 12105044) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6052522) = 3779136 * k + 3026261 := by
    unfold C
    simp [show (7558272 * k + 6052522) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3026261) = 11337408 * k + 9078784 := by
    unfold C
    simp [show (3779136 * k + 3026261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 9078784) = 5668704 * k + 4539392 := by
    unfold C
    simp [show (11337408 * k + 9078784) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4539392) = 2834352 * k + 2269696 := by
    unfold C
    simp [show (5668704 * k + 4539392) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2269696) = 1417176 * k + 1134848 := by
    unfold C
    simp [show (2834352 * k + 2269696) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1134848) = 708588 * k + 567424 := by
    unfold C
    simp [show (1417176 * k + 1134848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 567424) = 354294 * k + 283712 := by
    unfold C
    simp [show (708588 * k + 567424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 283712) = 177147 * k + 141856 := by
    unfold C
    simp [show (354294 * k + 283712) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 209919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 209919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_210687 : ∀ k : Nat,
    iterate (262144 * k + 210687) 29 = 177147 * k + 142375 ∧
      177147 * k + 142375 < 262144 * k + 210687 := by
  intro k
  have h1 : C (262144 * k + 210687) = 786432 * k + 632062 := by
    unfold C
    simp [show (262144 * k + 210687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 632062) = 393216 * k + 316031 := by
    unfold C
    simp [show (786432 * k + 632062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 316031) = 1179648 * k + 948094 := by
    unfold C
    simp [show (393216 * k + 316031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 948094) = 589824 * k + 474047 := by
    unfold C
    simp [show (1179648 * k + 948094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 474047) = 1769472 * k + 1422142 := by
    unfold C
    simp [show (589824 * k + 474047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1422142) = 884736 * k + 711071 := by
    unfold C
    simp [show (1769472 * k + 1422142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 711071) = 2654208 * k + 2133214 := by
    unfold C
    simp [show (884736 * k + 711071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2133214) = 1327104 * k + 1066607 := by
    unfold C
    simp [show (2654208 * k + 2133214) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1066607) = 3981312 * k + 3199822 := by
    unfold C
    simp [show (1327104 * k + 1066607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3199822) = 1990656 * k + 1599911 := by
    unfold C
    simp [show (3981312 * k + 3199822) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1599911) = 5971968 * k + 4799734 := by
    unfold C
    simp [show (1990656 * k + 1599911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4799734) = 2985984 * k + 2399867 := by
    unfold C
    simp [show (5971968 * k + 4799734) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2399867) = 8957952 * k + 7199602 := by
    unfold C
    simp [show (2985984 * k + 2399867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7199602) = 4478976 * k + 3599801 := by
    unfold C
    simp [show (8957952 * k + 7199602) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3599801) = 13436928 * k + 10799404 := by
    unfold C
    simp [show (4478976 * k + 3599801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10799404) = 6718464 * k + 5399702 := by
    unfold C
    simp [show (13436928 * k + 10799404) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5399702) = 3359232 * k + 2699851 := by
    unfold C
    simp [show (6718464 * k + 5399702) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2699851) = 10077696 * k + 8099554 := by
    unfold C
    simp [show (3359232 * k + 2699851) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8099554) = 5038848 * k + 4049777 := by
    unfold C
    simp [show (10077696 * k + 8099554) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4049777) = 15116544 * k + 12149332 := by
    unfold C
    simp [show (5038848 * k + 4049777) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 12149332) = 7558272 * k + 6074666 := by
    unfold C
    simp [show (15116544 * k + 12149332) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6074666) = 3779136 * k + 3037333 := by
    unfold C
    simp [show (7558272 * k + 6074666) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3037333) = 11337408 * k + 9112000 := by
    unfold C
    simp [show (3779136 * k + 3037333) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 9112000) = 5668704 * k + 4556000 := by
    unfold C
    simp [show (11337408 * k + 9112000) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4556000) = 2834352 * k + 2278000 := by
    unfold C
    simp [show (5668704 * k + 4556000) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2278000) = 1417176 * k + 1139000 := by
    unfold C
    simp [show (2834352 * k + 2278000) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1139000) = 708588 * k + 569500 := by
    unfold C
    simp [show (1417176 * k + 1139000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 569500) = 354294 * k + 284750 := by
    unfold C
    simp [show (708588 * k + 569500) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 284750) = 177147 * k + 142375 := by
    unfold C
    simp [show (354294 * k + 284750) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 210687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 210687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_210975 : ∀ k : Nat,
    iterate (262144 * k + 210975) 29 = 177147 * k + 142570 ∧
      177147 * k + 142570 < 262144 * k + 210975 := by
  intro k
  have h1 : C (262144 * k + 210975) = 786432 * k + 632926 := by
    unfold C
    simp [show (262144 * k + 210975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 632926) = 393216 * k + 316463 := by
    unfold C
    simp [show (786432 * k + 632926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 316463) = 1179648 * k + 949390 := by
    unfold C
    simp [show (393216 * k + 316463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 949390) = 589824 * k + 474695 := by
    unfold C
    simp [show (1179648 * k + 949390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 474695) = 1769472 * k + 1424086 := by
    unfold C
    simp [show (589824 * k + 474695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1424086) = 884736 * k + 712043 := by
    unfold C
    simp [show (1769472 * k + 1424086) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 712043) = 2654208 * k + 2136130 := by
    unfold C
    simp [show (884736 * k + 712043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2136130) = 1327104 * k + 1068065 := by
    unfold C
    simp [show (2654208 * k + 2136130) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1068065) = 3981312 * k + 3204196 := by
    unfold C
    simp [show (1327104 * k + 1068065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3204196) = 1990656 * k + 1602098 := by
    unfold C
    simp [show (3981312 * k + 3204196) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1602098) = 995328 * k + 801049 := by
    unfold C
    simp [show (1990656 * k + 1602098) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 801049) = 2985984 * k + 2403148 := by
    unfold C
    simp [show (995328 * k + 801049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2403148) = 1492992 * k + 1201574 := by
    unfold C
    simp [show (2985984 * k + 2403148) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1201574) = 746496 * k + 600787 := by
    unfold C
    simp [show (1492992 * k + 1201574) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 600787) = 2239488 * k + 1802362 := by
    unfold C
    simp [show (746496 * k + 600787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1802362) = 1119744 * k + 901181 := by
    unfold C
    simp [show (2239488 * k + 1802362) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 901181) = 3359232 * k + 2703544 := by
    unfold C
    simp [show (1119744 * k + 901181) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2703544) = 1679616 * k + 1351772 := by
    unfold C
    simp [show (3359232 * k + 2703544) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1351772) = 839808 * k + 675886 := by
    unfold C
    simp [show (1679616 * k + 1351772) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 675886) = 419904 * k + 337943 := by
    unfold C
    simp [show (839808 * k + 675886) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 337943) = 1259712 * k + 1013830 := by
    unfold C
    simp [show (419904 * k + 337943) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1013830) = 629856 * k + 506915 := by
    unfold C
    simp [show (1259712 * k + 1013830) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 506915) = 1889568 * k + 1520746 := by
    unfold C
    simp [show (629856 * k + 506915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1520746) = 944784 * k + 760373 := by
    unfold C
    simp [show (1889568 * k + 1520746) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 760373) = 2834352 * k + 2281120 := by
    unfold C
    simp [show (944784 * k + 760373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2281120) = 1417176 * k + 1140560 := by
    unfold C
    simp [show (2834352 * k + 2281120) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1140560) = 708588 * k + 570280 := by
    unfold C
    simp [show (1417176 * k + 1140560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 570280) = 354294 * k + 285140 := by
    unfold C
    simp [show (708588 * k + 570280) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 285140) = 177147 * k + 142570 := by
    unfold C
    simp [show (354294 * k + 285140) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 210975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 210975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211055 : ∀ k : Nat,
    iterate (262144 * k + 211055) 29 = 177147 * k + 142624 ∧
      177147 * k + 142624 < 262144 * k + 211055 := by
  intro k
  have h1 : C (262144 * k + 211055) = 786432 * k + 633166 := by
    unfold C
    simp [show (262144 * k + 211055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 633166) = 393216 * k + 316583 := by
    unfold C
    simp [show (786432 * k + 633166) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 316583) = 1179648 * k + 949750 := by
    unfold C
    simp [show (393216 * k + 316583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 949750) = 589824 * k + 474875 := by
    unfold C
    simp [show (1179648 * k + 949750) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 474875) = 1769472 * k + 1424626 := by
    unfold C
    simp [show (589824 * k + 474875) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1424626) = 884736 * k + 712313 := by
    unfold C
    simp [show (1769472 * k + 1424626) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 712313) = 2654208 * k + 2136940 := by
    unfold C
    simp [show (884736 * k + 712313) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2136940) = 1327104 * k + 1068470 := by
    unfold C
    simp [show (2654208 * k + 2136940) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1068470) = 663552 * k + 534235 := by
    unfold C
    simp [show (1327104 * k + 1068470) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 534235) = 1990656 * k + 1602706 := by
    unfold C
    simp [show (663552 * k + 534235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1602706) = 995328 * k + 801353 := by
    unfold C
    simp [show (1990656 * k + 1602706) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 801353) = 2985984 * k + 2404060 := by
    unfold C
    simp [show (995328 * k + 801353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2404060) = 1492992 * k + 1202030 := by
    unfold C
    simp [show (2985984 * k + 2404060) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1202030) = 746496 * k + 601015 := by
    unfold C
    simp [show (1492992 * k + 1202030) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 601015) = 2239488 * k + 1803046 := by
    unfold C
    simp [show (746496 * k + 601015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1803046) = 1119744 * k + 901523 := by
    unfold C
    simp [show (2239488 * k + 1803046) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 901523) = 3359232 * k + 2704570 := by
    unfold C
    simp [show (1119744 * k + 901523) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2704570) = 1679616 * k + 1352285 := by
    unfold C
    simp [show (3359232 * k + 2704570) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1352285) = 5038848 * k + 4056856 := by
    unfold C
    simp [show (1679616 * k + 1352285) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4056856) = 2519424 * k + 2028428 := by
    unfold C
    simp [show (5038848 * k + 4056856) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2028428) = 1259712 * k + 1014214 := by
    unfold C
    simp [show (2519424 * k + 2028428) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1014214) = 629856 * k + 507107 := by
    unfold C
    simp [show (1259712 * k + 1014214) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 507107) = 1889568 * k + 1521322 := by
    unfold C
    simp [show (629856 * k + 507107) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1521322) = 944784 * k + 760661 := by
    unfold C
    simp [show (1889568 * k + 1521322) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 760661) = 2834352 * k + 2281984 := by
    unfold C
    simp [show (944784 * k + 760661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2281984) = 1417176 * k + 1140992 := by
    unfold C
    simp [show (2834352 * k + 2281984) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1140992) = 708588 * k + 570496 := by
    unfold C
    simp [show (1417176 * k + 1140992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 570496) = 354294 * k + 285248 := by
    unfold C
    simp [show (708588 * k + 570496) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 285248) = 177147 * k + 142624 := by
    unfold C
    simp [show (354294 * k + 285248) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211055) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211055))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211167 : ∀ k : Nat,
    iterate (262144 * k + 211167) 29 = 177147 * k + 142700 ∧
      177147 * k + 142700 < 262144 * k + 211167 := by
  intro k
  have h1 : C (262144 * k + 211167) = 786432 * k + 633502 := by
    unfold C
    simp [show (262144 * k + 211167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 633502) = 393216 * k + 316751 := by
    unfold C
    simp [show (786432 * k + 633502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 316751) = 1179648 * k + 950254 := by
    unfold C
    simp [show (393216 * k + 316751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 950254) = 589824 * k + 475127 := by
    unfold C
    simp [show (1179648 * k + 950254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 475127) = 1769472 * k + 1425382 := by
    unfold C
    simp [show (589824 * k + 475127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1425382) = 884736 * k + 712691 := by
    unfold C
    simp [show (1769472 * k + 1425382) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 712691) = 2654208 * k + 2138074 := by
    unfold C
    simp [show (884736 * k + 712691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2138074) = 1327104 * k + 1069037 := by
    unfold C
    simp [show (2654208 * k + 2138074) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1069037) = 3981312 * k + 3207112 := by
    unfold C
    simp [show (1327104 * k + 1069037) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3207112) = 1990656 * k + 1603556 := by
    unfold C
    simp [show (3981312 * k + 3207112) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1603556) = 995328 * k + 801778 := by
    unfold C
    simp [show (1990656 * k + 1603556) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 801778) = 497664 * k + 400889 := by
    unfold C
    simp [show (995328 * k + 801778) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 400889) = 1492992 * k + 1202668 := by
    unfold C
    simp [show (497664 * k + 400889) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1202668) = 746496 * k + 601334 := by
    unfold C
    simp [show (1492992 * k + 1202668) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 601334) = 373248 * k + 300667 := by
    unfold C
    simp [show (746496 * k + 601334) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 300667) = 1119744 * k + 902002 := by
    unfold C
    simp [show (373248 * k + 300667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 902002) = 559872 * k + 451001 := by
    unfold C
    simp [show (1119744 * k + 902002) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 451001) = 1679616 * k + 1353004 := by
    unfold C
    simp [show (559872 * k + 451001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1353004) = 839808 * k + 676502 := by
    unfold C
    simp [show (1679616 * k + 1353004) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 676502) = 419904 * k + 338251 := by
    unfold C
    simp [show (839808 * k + 676502) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 338251) = 1259712 * k + 1014754 := by
    unfold C
    simp [show (419904 * k + 338251) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1014754) = 629856 * k + 507377 := by
    unfold C
    simp [show (1259712 * k + 1014754) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 507377) = 1889568 * k + 1522132 := by
    unfold C
    simp [show (629856 * k + 507377) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1522132) = 944784 * k + 761066 := by
    unfold C
    simp [show (1889568 * k + 1522132) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 761066) = 472392 * k + 380533 := by
    unfold C
    simp [show (944784 * k + 761066) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 380533) = 1417176 * k + 1141600 := by
    unfold C
    simp [show (472392 * k + 380533) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1141600) = 708588 * k + 570800 := by
    unfold C
    simp [show (1417176 * k + 1141600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 570800) = 354294 * k + 285400 := by
    unfold C
    simp [show (708588 * k + 570800) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 285400) = 177147 * k + 142700 := by
    unfold C
    simp [show (354294 * k + 285400) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211327 : ∀ k : Nat,
    iterate (262144 * k + 211327) 29 = 177147 * k + 142808 ∧
      177147 * k + 142808 < 262144 * k + 211327 := by
  intro k
  have h1 : C (262144 * k + 211327) = 786432 * k + 633982 := by
    unfold C
    simp [show (262144 * k + 211327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 633982) = 393216 * k + 316991 := by
    unfold C
    simp [show (786432 * k + 633982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 316991) = 1179648 * k + 950974 := by
    unfold C
    simp [show (393216 * k + 316991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 950974) = 589824 * k + 475487 := by
    unfold C
    simp [show (1179648 * k + 950974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 475487) = 1769472 * k + 1426462 := by
    unfold C
    simp [show (589824 * k + 475487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1426462) = 884736 * k + 713231 := by
    unfold C
    simp [show (1769472 * k + 1426462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 713231) = 2654208 * k + 2139694 := by
    unfold C
    simp [show (884736 * k + 713231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2139694) = 1327104 * k + 1069847 := by
    unfold C
    simp [show (2654208 * k + 2139694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1069847) = 3981312 * k + 3209542 := by
    unfold C
    simp [show (1327104 * k + 1069847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3209542) = 1990656 * k + 1604771 := by
    unfold C
    simp [show (3981312 * k + 3209542) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1604771) = 5971968 * k + 4814314 := by
    unfold C
    simp [show (1990656 * k + 1604771) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4814314) = 2985984 * k + 2407157 := by
    unfold C
    simp [show (5971968 * k + 4814314) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2407157) = 8957952 * k + 7221472 := by
    unfold C
    simp [show (2985984 * k + 2407157) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7221472) = 4478976 * k + 3610736 := by
    unfold C
    simp [show (8957952 * k + 7221472) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3610736) = 2239488 * k + 1805368 := by
    unfold C
    simp [show (4478976 * k + 3610736) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1805368) = 1119744 * k + 902684 := by
    unfold C
    simp [show (2239488 * k + 1805368) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 902684) = 559872 * k + 451342 := by
    unfold C
    simp [show (1119744 * k + 902684) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 451342) = 279936 * k + 225671 := by
    unfold C
    simp [show (559872 * k + 451342) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 225671) = 839808 * k + 677014 := by
    unfold C
    simp [show (279936 * k + 225671) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 677014) = 419904 * k + 338507 := by
    unfold C
    simp [show (839808 * k + 677014) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 338507) = 1259712 * k + 1015522 := by
    unfold C
    simp [show (419904 * k + 338507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1015522) = 629856 * k + 507761 := by
    unfold C
    simp [show (1259712 * k + 1015522) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 507761) = 1889568 * k + 1523284 := by
    unfold C
    simp [show (629856 * k + 507761) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1523284) = 944784 * k + 761642 := by
    unfold C
    simp [show (1889568 * k + 1523284) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 761642) = 472392 * k + 380821 := by
    unfold C
    simp [show (944784 * k + 761642) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 380821) = 1417176 * k + 1142464 := by
    unfold C
    simp [show (472392 * k + 380821) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1142464) = 708588 * k + 571232 := by
    unfold C
    simp [show (1417176 * k + 1142464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 571232) = 354294 * k + 285616 := by
    unfold C
    simp [show (708588 * k + 571232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 285616) = 177147 * k + 142808 := by
    unfold C
    simp [show (354294 * k + 285616) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211567 : ∀ k : Nat,
    iterate (262144 * k + 211567) 29 = 177147 * k + 142970 ∧
      177147 * k + 142970 < 262144 * k + 211567 := by
  intro k
  have h1 : C (262144 * k + 211567) = 786432 * k + 634702 := by
    unfold C
    simp [show (262144 * k + 211567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 634702) = 393216 * k + 317351 := by
    unfold C
    simp [show (786432 * k + 634702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317351) = 1179648 * k + 952054 := by
    unfold C
    simp [show (393216 * k + 317351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952054) = 589824 * k + 476027 := by
    unfold C
    simp [show (1179648 * k + 952054) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476027) = 1769472 * k + 1428082 := by
    unfold C
    simp [show (589824 * k + 476027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1428082) = 884736 * k + 714041 := by
    unfold C
    simp [show (1769472 * k + 1428082) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 714041) = 2654208 * k + 2142124 := by
    unfold C
    simp [show (884736 * k + 714041) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2142124) = 1327104 * k + 1071062 := by
    unfold C
    simp [show (2654208 * k + 2142124) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071062) = 663552 * k + 535531 := by
    unfold C
    simp [show (1327104 * k + 1071062) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 535531) = 1990656 * k + 1606594 := by
    unfold C
    simp [show (663552 * k + 535531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1606594) = 995328 * k + 803297 := by
    unfold C
    simp [show (1990656 * k + 1606594) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 803297) = 2985984 * k + 2409892 := by
    unfold C
    simp [show (995328 * k + 803297) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2409892) = 1492992 * k + 1204946 := by
    unfold C
    simp [show (2985984 * k + 2409892) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1204946) = 746496 * k + 602473 := by
    unfold C
    simp [show (1492992 * k + 1204946) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 602473) = 2239488 * k + 1807420 := by
    unfold C
    simp [show (746496 * k + 602473) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1807420) = 1119744 * k + 903710 := by
    unfold C
    simp [show (2239488 * k + 1807420) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 903710) = 559872 * k + 451855 := by
    unfold C
    simp [show (1119744 * k + 903710) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 451855) = 1679616 * k + 1355566 := by
    unfold C
    simp [show (559872 * k + 451855) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1355566) = 839808 * k + 677783 := by
    unfold C
    simp [show (1679616 * k + 1355566) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 677783) = 2519424 * k + 2033350 := by
    unfold C
    simp [show (839808 * k + 677783) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2033350) = 1259712 * k + 1016675 := by
    unfold C
    simp [show (2519424 * k + 2033350) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1016675) = 3779136 * k + 3050026 := by
    unfold C
    simp [show (1259712 * k + 1016675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3050026) = 1889568 * k + 1525013 := by
    unfold C
    simp [show (3779136 * k + 3050026) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1525013) = 5668704 * k + 4575040 := by
    unfold C
    simp [show (1889568 * k + 1525013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4575040) = 2834352 * k + 2287520 := by
    unfold C
    simp [show (5668704 * k + 4575040) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2287520) = 1417176 * k + 1143760 := by
    unfold C
    simp [show (2834352 * k + 2287520) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1143760) = 708588 * k + 571880 := by
    unfold C
    simp [show (1417176 * k + 1143760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 571880) = 354294 * k + 285940 := by
    unfold C
    simp [show (708588 * k + 571880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 285940) = 177147 * k + 142970 := by
    unfold C
    simp [show (354294 * k + 285940) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211623 : ∀ k : Nat,
    iterate (262144 * k + 211623) 29 = 177147 * k + 143008 ∧
      177147 * k + 143008 < 262144 * k + 211623 := by
  intro k
  have h1 : C (262144 * k + 211623) = 786432 * k + 634870 := by
    unfold C
    simp [show (262144 * k + 211623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 634870) = 393216 * k + 317435 := by
    unfold C
    simp [show (786432 * k + 634870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317435) = 1179648 * k + 952306 := by
    unfold C
    simp [show (393216 * k + 317435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952306) = 589824 * k + 476153 := by
    unfold C
    simp [show (1179648 * k + 952306) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476153) = 1769472 * k + 1428460 := by
    unfold C
    simp [show (589824 * k + 476153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1428460) = 884736 * k + 714230 := by
    unfold C
    simp [show (1769472 * k + 1428460) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 714230) = 442368 * k + 357115 := by
    unfold C
    simp [show (884736 * k + 714230) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 357115) = 1327104 * k + 1071346 := by
    unfold C
    simp [show (442368 * k + 357115) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071346) = 663552 * k + 535673 := by
    unfold C
    simp [show (1327104 * k + 1071346) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 535673) = 1990656 * k + 1607020 := by
    unfold C
    simp [show (663552 * k + 535673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1607020) = 995328 * k + 803510 := by
    unfold C
    simp [show (1990656 * k + 1607020) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 803510) = 497664 * k + 401755 := by
    unfold C
    simp [show (995328 * k + 803510) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 401755) = 1492992 * k + 1205266 := by
    unfold C
    simp [show (497664 * k + 401755) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1205266) = 746496 * k + 602633 := by
    unfold C
    simp [show (1492992 * k + 1205266) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 602633) = 2239488 * k + 1807900 := by
    unfold C
    simp [show (746496 * k + 602633) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1807900) = 1119744 * k + 903950 := by
    unfold C
    simp [show (2239488 * k + 1807900) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 903950) = 559872 * k + 451975 := by
    unfold C
    simp [show (1119744 * k + 903950) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 451975) = 1679616 * k + 1355926 := by
    unfold C
    simp [show (559872 * k + 451975) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1355926) = 839808 * k + 677963 := by
    unfold C
    simp [show (1679616 * k + 1355926) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 677963) = 2519424 * k + 2033890 := by
    unfold C
    simp [show (839808 * k + 677963) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2033890) = 1259712 * k + 1016945 := by
    unfold C
    simp [show (2519424 * k + 2033890) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1016945) = 3779136 * k + 3050836 := by
    unfold C
    simp [show (1259712 * k + 1016945) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3050836) = 1889568 * k + 1525418 := by
    unfold C
    simp [show (3779136 * k + 3050836) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1525418) = 944784 * k + 762709 := by
    unfold C
    simp [show (1889568 * k + 1525418) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 762709) = 2834352 * k + 2288128 := by
    unfold C
    simp [show (944784 * k + 762709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2288128) = 1417176 * k + 1144064 := by
    unfold C
    simp [show (2834352 * k + 2288128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1144064) = 708588 * k + 572032 := by
    unfold C
    simp [show (1417176 * k + 1144064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572032) = 354294 * k + 286016 := by
    unfold C
    simp [show (708588 * k + 572032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286016) = 177147 * k + 143008 := by
    unfold C
    simp [show (354294 * k + 286016) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211647 : ∀ k : Nat,
    iterate (262144 * k + 211647) 29 = 177147 * k + 143024 ∧
      177147 * k + 143024 < 262144 * k + 211647 := by
  intro k
  have h1 : C (262144 * k + 211647) = 786432 * k + 634942 := by
    unfold C
    simp [show (262144 * k + 211647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 634942) = 393216 * k + 317471 := by
    unfold C
    simp [show (786432 * k + 634942) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317471) = 1179648 * k + 952414 := by
    unfold C
    simp [show (393216 * k + 317471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952414) = 589824 * k + 476207 := by
    unfold C
    simp [show (1179648 * k + 952414) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476207) = 1769472 * k + 1428622 := by
    unfold C
    simp [show (589824 * k + 476207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1428622) = 884736 * k + 714311 := by
    unfold C
    simp [show (1769472 * k + 1428622) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 714311) = 2654208 * k + 2142934 := by
    unfold C
    simp [show (884736 * k + 714311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2142934) = 1327104 * k + 1071467 := by
    unfold C
    simp [show (2654208 * k + 2142934) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071467) = 3981312 * k + 3214402 := by
    unfold C
    simp [show (1327104 * k + 1071467) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3214402) = 1990656 * k + 1607201 := by
    unfold C
    simp [show (3981312 * k + 3214402) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1607201) = 5971968 * k + 4821604 := by
    unfold C
    simp [show (1990656 * k + 1607201) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4821604) = 2985984 * k + 2410802 := by
    unfold C
    simp [show (5971968 * k + 4821604) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2410802) = 1492992 * k + 1205401 := by
    unfold C
    simp [show (2985984 * k + 2410802) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1205401) = 4478976 * k + 3616204 := by
    unfold C
    simp [show (1492992 * k + 1205401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3616204) = 2239488 * k + 1808102 := by
    unfold C
    simp [show (4478976 * k + 3616204) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1808102) = 1119744 * k + 904051 := by
    unfold C
    simp [show (2239488 * k + 1808102) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 904051) = 3359232 * k + 2712154 := by
    unfold C
    simp [show (1119744 * k + 904051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2712154) = 1679616 * k + 1356077 := by
    unfold C
    simp [show (3359232 * k + 2712154) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1356077) = 5038848 * k + 4068232 := by
    unfold C
    simp [show (1679616 * k + 1356077) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4068232) = 2519424 * k + 2034116 := by
    unfold C
    simp [show (5038848 * k + 4068232) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2034116) = 1259712 * k + 1017058 := by
    unfold C
    simp [show (2519424 * k + 2034116) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1017058) = 629856 * k + 508529 := by
    unfold C
    simp [show (1259712 * k + 1017058) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 508529) = 1889568 * k + 1525588 := by
    unfold C
    simp [show (629856 * k + 508529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1525588) = 944784 * k + 762794 := by
    unfold C
    simp [show (1889568 * k + 1525588) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 762794) = 472392 * k + 381397 := by
    unfold C
    simp [show (944784 * k + 762794) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 381397) = 1417176 * k + 1144192 := by
    unfold C
    simp [show (472392 * k + 381397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1144192) = 708588 * k + 572096 := by
    unfold C
    simp [show (1417176 * k + 1144192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572096) = 354294 * k + 286048 := by
    unfold C
    simp [show (708588 * k + 572096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286048) = 177147 * k + 143024 := by
    unfold C
    simp [show (354294 * k + 286048) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211647) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211647))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211663 : ∀ k : Nat,
    iterate (262144 * k + 211663) 29 = 177147 * k + 143035 ∧
      177147 * k + 143035 < 262144 * k + 211663 := by
  intro k
  have h1 : C (262144 * k + 211663) = 786432 * k + 634990 := by
    unfold C
    simp [show (262144 * k + 211663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 634990) = 393216 * k + 317495 := by
    unfold C
    simp [show (786432 * k + 634990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317495) = 1179648 * k + 952486 := by
    unfold C
    simp [show (393216 * k + 317495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952486) = 589824 * k + 476243 := by
    unfold C
    simp [show (1179648 * k + 952486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476243) = 1769472 * k + 1428730 := by
    unfold C
    simp [show (589824 * k + 476243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1428730) = 884736 * k + 714365 := by
    unfold C
    simp [show (1769472 * k + 1428730) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 714365) = 2654208 * k + 2143096 := by
    unfold C
    simp [show (884736 * k + 714365) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2143096) = 1327104 * k + 1071548 := by
    unfold C
    simp [show (2654208 * k + 2143096) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071548) = 663552 * k + 535774 := by
    unfold C
    simp [show (1327104 * k + 1071548) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 535774) = 331776 * k + 267887 := by
    unfold C
    simp [show (663552 * k + 535774) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 267887) = 995328 * k + 803662 := by
    unfold C
    simp [show (331776 * k + 267887) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 803662) = 497664 * k + 401831 := by
    unfold C
    simp [show (995328 * k + 803662) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 401831) = 1492992 * k + 1205494 := by
    unfold C
    simp [show (497664 * k + 401831) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1205494) = 746496 * k + 602747 := by
    unfold C
    simp [show (1492992 * k + 1205494) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 602747) = 2239488 * k + 1808242 := by
    unfold C
    simp [show (746496 * k + 602747) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1808242) = 1119744 * k + 904121 := by
    unfold C
    simp [show (2239488 * k + 1808242) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 904121) = 3359232 * k + 2712364 := by
    unfold C
    simp [show (1119744 * k + 904121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2712364) = 1679616 * k + 1356182 := by
    unfold C
    simp [show (3359232 * k + 2712364) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1356182) = 839808 * k + 678091 := by
    unfold C
    simp [show (1679616 * k + 1356182) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 678091) = 2519424 * k + 2034274 := by
    unfold C
    simp [show (839808 * k + 678091) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2034274) = 1259712 * k + 1017137 := by
    unfold C
    simp [show (2519424 * k + 2034274) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1017137) = 3779136 * k + 3051412 := by
    unfold C
    simp [show (1259712 * k + 1017137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3051412) = 1889568 * k + 1525706 := by
    unfold C
    simp [show (3779136 * k + 3051412) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1525706) = 944784 * k + 762853 := by
    unfold C
    simp [show (1889568 * k + 1525706) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 762853) = 2834352 * k + 2288560 := by
    unfold C
    simp [show (944784 * k + 762853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2288560) = 1417176 * k + 1144280 := by
    unfold C
    simp [show (2834352 * k + 2288560) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1144280) = 708588 * k + 572140 := by
    unfold C
    simp [show (1417176 * k + 1144280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572140) = 354294 * k + 286070 := by
    unfold C
    simp [show (708588 * k + 572140) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286070) = 177147 * k + 143035 := by
    unfold C
    simp [show (354294 * k + 286070) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard039
