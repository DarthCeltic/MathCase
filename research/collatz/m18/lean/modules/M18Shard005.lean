import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard005

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_20551 : ∀ k : Nat,
    iterate (262144 * k + 20551) 29 = 177147 * k + 13889 ∧
      177147 * k + 13889 < 262144 * k + 20551 := by
  intro k
  have h1 : C (262144 * k + 20551) = 786432 * k + 61654 := by
    unfold C
    simp [show (262144 * k + 20551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 61654) = 393216 * k + 30827 := by
    unfold C
    simp [show (786432 * k + 61654) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 30827) = 1179648 * k + 92482 := by
    unfold C
    simp [show (393216 * k + 30827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 92482) = 589824 * k + 46241 := by
    unfold C
    simp [show (1179648 * k + 92482) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 46241) = 1769472 * k + 138724 := by
    unfold C
    simp [show (589824 * k + 46241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 138724) = 884736 * k + 69362 := by
    unfold C
    simp [show (1769472 * k + 138724) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 69362) = 442368 * k + 34681 := by
    unfold C
    simp [show (884736 * k + 69362) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 34681) = 1327104 * k + 104044 := by
    unfold C
    simp [show (442368 * k + 34681) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 104044) = 663552 * k + 52022 := by
    unfold C
    simp [show (1327104 * k + 104044) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 52022) = 331776 * k + 26011 := by
    unfold C
    simp [show (663552 * k + 52022) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 26011) = 995328 * k + 78034 := by
    unfold C
    simp [show (331776 * k + 26011) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 78034) = 497664 * k + 39017 := by
    unfold C
    simp [show (995328 * k + 78034) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 39017) = 1492992 * k + 117052 := by
    unfold C
    simp [show (497664 * k + 39017) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 117052) = 746496 * k + 58526 := by
    unfold C
    simp [show (1492992 * k + 117052) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 58526) = 373248 * k + 29263 := by
    unfold C
    simp [show (746496 * k + 58526) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 29263) = 1119744 * k + 87790 := by
    unfold C
    simp [show (373248 * k + 29263) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 87790) = 559872 * k + 43895 := by
    unfold C
    simp [show (1119744 * k + 87790) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 43895) = 1679616 * k + 131686 := by
    unfold C
    simp [show (559872 * k + 43895) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 131686) = 839808 * k + 65843 := by
    unfold C
    simp [show (1679616 * k + 131686) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 65843) = 2519424 * k + 197530 := by
    unfold C
    simp [show (839808 * k + 65843) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 197530) = 1259712 * k + 98765 := by
    unfold C
    simp [show (2519424 * k + 197530) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 98765) = 3779136 * k + 296296 := by
    unfold C
    simp [show (1259712 * k + 98765) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 296296) = 1889568 * k + 148148 := by
    unfold C
    simp [show (3779136 * k + 296296) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 148148) = 944784 * k + 74074 := by
    unfold C
    simp [show (1889568 * k + 148148) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 74074) = 472392 * k + 37037 := by
    unfold C
    simp [show (944784 * k + 74074) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 37037) = 1417176 * k + 111112 := by
    unfold C
    simp [show (472392 * k + 37037) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 111112) = 708588 * k + 55556 := by
    unfold C
    simp [show (1417176 * k + 111112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 55556) = 354294 * k + 27778 := by
    unfold C
    simp [show (708588 * k + 55556) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 27778) = 177147 * k + 13889 := by
    unfold C
    simp [show (354294 * k + 27778) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20551) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20551))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20671 : ∀ k : Nat,
    iterate (262144 * k + 20671) 29 = 177147 * k + 13970 ∧
      177147 * k + 13970 < 262144 * k + 20671 := by
  intro k
  have h1 : C (262144 * k + 20671) = 786432 * k + 62014 := by
    unfold C
    simp [show (262144 * k + 20671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 62014) = 393216 * k + 31007 := by
    unfold C
    simp [show (786432 * k + 62014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31007) = 1179648 * k + 93022 := by
    unfold C
    simp [show (393216 * k + 31007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 93022) = 589824 * k + 46511 := by
    unfold C
    simp [show (1179648 * k + 93022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 46511) = 1769472 * k + 139534 := by
    unfold C
    simp [show (589824 * k + 46511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 139534) = 884736 * k + 69767 := by
    unfold C
    simp [show (1769472 * k + 139534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 69767) = 2654208 * k + 209302 := by
    unfold C
    simp [show (884736 * k + 69767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 209302) = 1327104 * k + 104651 := by
    unfold C
    simp [show (2654208 * k + 209302) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 104651) = 3981312 * k + 313954 := by
    unfold C
    simp [show (1327104 * k + 104651) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 313954) = 1990656 * k + 156977 := by
    unfold C
    simp [show (3981312 * k + 313954) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 156977) = 5971968 * k + 470932 := by
    unfold C
    simp [show (1990656 * k + 156977) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 470932) = 2985984 * k + 235466 := by
    unfold C
    simp [show (5971968 * k + 470932) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 235466) = 1492992 * k + 117733 := by
    unfold C
    simp [show (2985984 * k + 235466) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 117733) = 4478976 * k + 353200 := by
    unfold C
    simp [show (1492992 * k + 117733) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 353200) = 2239488 * k + 176600 := by
    unfold C
    simp [show (4478976 * k + 353200) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 176600) = 1119744 * k + 88300 := by
    unfold C
    simp [show (2239488 * k + 176600) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 88300) = 559872 * k + 44150 := by
    unfold C
    simp [show (1119744 * k + 88300) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 44150) = 279936 * k + 22075 := by
    unfold C
    simp [show (559872 * k + 44150) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 22075) = 839808 * k + 66226 := by
    unfold C
    simp [show (279936 * k + 22075) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 66226) = 419904 * k + 33113 := by
    unfold C
    simp [show (839808 * k + 66226) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 33113) = 1259712 * k + 99340 := by
    unfold C
    simp [show (419904 * k + 33113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 99340) = 629856 * k + 49670 := by
    unfold C
    simp [show (1259712 * k + 99340) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 49670) = 314928 * k + 24835 := by
    unfold C
    simp [show (629856 * k + 49670) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 24835) = 944784 * k + 74506 := by
    unfold C
    simp [show (314928 * k + 24835) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 74506) = 472392 * k + 37253 := by
    unfold C
    simp [show (944784 * k + 74506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 37253) = 1417176 * k + 111760 := by
    unfold C
    simp [show (472392 * k + 37253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 111760) = 708588 * k + 55880 := by
    unfold C
    simp [show (1417176 * k + 111760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 55880) = 354294 * k + 27940 := by
    unfold C
    simp [show (708588 * k + 55880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 27940) = 177147 * k + 13970 := by
    unfold C
    simp [show (354294 * k + 27940) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20719 : ∀ k : Nat,
    iterate (262144 * k + 20719) 29 = 177147 * k + 14002 ∧
      177147 * k + 14002 < 262144 * k + 20719 := by
  intro k
  have h1 : C (262144 * k + 20719) = 786432 * k + 62158 := by
    unfold C
    simp [show (262144 * k + 20719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 62158) = 393216 * k + 31079 := by
    unfold C
    simp [show (786432 * k + 62158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31079) = 1179648 * k + 93238 := by
    unfold C
    simp [show (393216 * k + 31079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 93238) = 589824 * k + 46619 := by
    unfold C
    simp [show (1179648 * k + 93238) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 46619) = 1769472 * k + 139858 := by
    unfold C
    simp [show (589824 * k + 46619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 139858) = 884736 * k + 69929 := by
    unfold C
    simp [show (1769472 * k + 139858) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 69929) = 2654208 * k + 209788 := by
    unfold C
    simp [show (884736 * k + 69929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 209788) = 1327104 * k + 104894 := by
    unfold C
    simp [show (2654208 * k + 209788) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 104894) = 663552 * k + 52447 := by
    unfold C
    simp [show (1327104 * k + 104894) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 52447) = 1990656 * k + 157342 := by
    unfold C
    simp [show (663552 * k + 52447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 157342) = 995328 * k + 78671 := by
    unfold C
    simp [show (1990656 * k + 157342) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 78671) = 2985984 * k + 236014 := by
    unfold C
    simp [show (995328 * k + 78671) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 236014) = 1492992 * k + 118007 := by
    unfold C
    simp [show (2985984 * k + 236014) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 118007) = 4478976 * k + 354022 := by
    unfold C
    simp [show (1492992 * k + 118007) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 354022) = 2239488 * k + 177011 := by
    unfold C
    simp [show (4478976 * k + 354022) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 177011) = 6718464 * k + 531034 := by
    unfold C
    simp [show (2239488 * k + 177011) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 531034) = 3359232 * k + 265517 := by
    unfold C
    simp [show (6718464 * k + 531034) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 265517) = 10077696 * k + 796552 := by
    unfold C
    simp [show (3359232 * k + 265517) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 796552) = 5038848 * k + 398276 := by
    unfold C
    simp [show (10077696 * k + 796552) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 398276) = 2519424 * k + 199138 := by
    unfold C
    simp [show (5038848 * k + 398276) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 199138) = 1259712 * k + 99569 := by
    unfold C
    simp [show (2519424 * k + 199138) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 99569) = 3779136 * k + 298708 := by
    unfold C
    simp [show (1259712 * k + 99569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 298708) = 1889568 * k + 149354 := by
    unfold C
    simp [show (3779136 * k + 298708) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 149354) = 944784 * k + 74677 := by
    unfold C
    simp [show (1889568 * k + 149354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 74677) = 2834352 * k + 224032 := by
    unfold C
    simp [show (944784 * k + 74677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 224032) = 1417176 * k + 112016 := by
    unfold C
    simp [show (2834352 * k + 224032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 112016) = 708588 * k + 56008 := by
    unfold C
    simp [show (1417176 * k + 112016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 56008) = 354294 * k + 28004 := by
    unfold C
    simp [show (708588 * k + 56008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 28004) = 177147 * k + 14002 := by
    unfold C
    simp [show (354294 * k + 28004) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20763 : ∀ k : Nat,
    iterate (262144 * k + 20763) 29 = 177147 * k + 14032 ∧
      177147 * k + 14032 < 262144 * k + 20763 := by
  intro k
  have h1 : C (262144 * k + 20763) = 786432 * k + 62290 := by
    unfold C
    simp [show (262144 * k + 20763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 62290) = 393216 * k + 31145 := by
    unfold C
    simp [show (786432 * k + 62290) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31145) = 1179648 * k + 93436 := by
    unfold C
    simp [show (393216 * k + 31145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 93436) = 589824 * k + 46718 := by
    unfold C
    simp [show (1179648 * k + 93436) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 46718) = 294912 * k + 23359 := by
    unfold C
    simp [show (589824 * k + 46718) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 23359) = 884736 * k + 70078 := by
    unfold C
    simp [show (294912 * k + 23359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 70078) = 442368 * k + 35039 := by
    unfold C
    simp [show (884736 * k + 70078) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 35039) = 1327104 * k + 105118 := by
    unfold C
    simp [show (442368 * k + 35039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 105118) = 663552 * k + 52559 := by
    unfold C
    simp [show (1327104 * k + 105118) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 52559) = 1990656 * k + 157678 := by
    unfold C
    simp [show (663552 * k + 52559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 157678) = 995328 * k + 78839 := by
    unfold C
    simp [show (1990656 * k + 157678) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 78839) = 2985984 * k + 236518 := by
    unfold C
    simp [show (995328 * k + 78839) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 236518) = 1492992 * k + 118259 := by
    unfold C
    simp [show (2985984 * k + 236518) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 118259) = 4478976 * k + 354778 := by
    unfold C
    simp [show (1492992 * k + 118259) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 354778) = 2239488 * k + 177389 := by
    unfold C
    simp [show (4478976 * k + 354778) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 177389) = 6718464 * k + 532168 := by
    unfold C
    simp [show (2239488 * k + 177389) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 532168) = 3359232 * k + 266084 := by
    unfold C
    simp [show (6718464 * k + 532168) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 266084) = 1679616 * k + 133042 := by
    unfold C
    simp [show (3359232 * k + 266084) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 133042) = 839808 * k + 66521 := by
    unfold C
    simp [show (1679616 * k + 133042) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 66521) = 2519424 * k + 199564 := by
    unfold C
    simp [show (839808 * k + 66521) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 199564) = 1259712 * k + 99782 := by
    unfold C
    simp [show (2519424 * k + 199564) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 99782) = 629856 * k + 49891 := by
    unfold C
    simp [show (1259712 * k + 99782) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 49891) = 1889568 * k + 149674 := by
    unfold C
    simp [show (629856 * k + 49891) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 149674) = 944784 * k + 74837 := by
    unfold C
    simp [show (1889568 * k + 149674) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 74837) = 2834352 * k + 224512 := by
    unfold C
    simp [show (944784 * k + 74837) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 224512) = 1417176 * k + 112256 := by
    unfold C
    simp [show (2834352 * k + 224512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 112256) = 708588 * k + 56128 := by
    unfold C
    simp [show (1417176 * k + 112256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 56128) = 354294 * k + 28064 := by
    unfold C
    simp [show (708588 * k + 56128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 28064) = 177147 * k + 14032 := by
    unfold C
    simp [show (354294 * k + 28064) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20763) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20763))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_20799 : ∀ k : Nat,
    iterate (262144 * k + 20799) 29 = 177147 * k + 14056 ∧
      177147 * k + 14056 < 262144 * k + 20799 := by
  intro k
  have h1 : C (262144 * k + 20799) = 786432 * k + 62398 := by
    unfold C
    simp [show (262144 * k + 20799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 62398) = 393216 * k + 31199 := by
    unfold C
    simp [show (786432 * k + 62398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31199) = 1179648 * k + 93598 := by
    unfold C
    simp [show (393216 * k + 31199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 93598) = 589824 * k + 46799 := by
    unfold C
    simp [show (1179648 * k + 93598) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 46799) = 1769472 * k + 140398 := by
    unfold C
    simp [show (589824 * k + 46799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 140398) = 884736 * k + 70199 := by
    unfold C
    simp [show (1769472 * k + 140398) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 70199) = 2654208 * k + 210598 := by
    unfold C
    simp [show (884736 * k + 70199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 210598) = 1327104 * k + 105299 := by
    unfold C
    simp [show (2654208 * k + 210598) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 105299) = 3981312 * k + 315898 := by
    unfold C
    simp [show (1327104 * k + 105299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 315898) = 1990656 * k + 157949 := by
    unfold C
    simp [show (3981312 * k + 315898) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 157949) = 5971968 * k + 473848 := by
    unfold C
    simp [show (1990656 * k + 157949) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 473848) = 2985984 * k + 236924 := by
    unfold C
    simp [show (5971968 * k + 473848) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 236924) = 1492992 * k + 118462 := by
    unfold C
    simp [show (2985984 * k + 236924) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 118462) = 746496 * k + 59231 := by
    unfold C
    simp [show (1492992 * k + 118462) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 59231) = 2239488 * k + 177694 := by
    unfold C
    simp [show (746496 * k + 59231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 177694) = 1119744 * k + 88847 := by
    unfold C
    simp [show (2239488 * k + 177694) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 88847) = 3359232 * k + 266542 := by
    unfold C
    simp [show (1119744 * k + 88847) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 266542) = 1679616 * k + 133271 := by
    unfold C
    simp [show (3359232 * k + 266542) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 133271) = 5038848 * k + 399814 := by
    unfold C
    simp [show (1679616 * k + 133271) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 399814) = 2519424 * k + 199907 := by
    unfold C
    simp [show (5038848 * k + 399814) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 199907) = 7558272 * k + 599722 := by
    unfold C
    simp [show (2519424 * k + 199907) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 599722) = 3779136 * k + 299861 := by
    unfold C
    simp [show (7558272 * k + 599722) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 299861) = 11337408 * k + 899584 := by
    unfold C
    simp [show (3779136 * k + 299861) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 899584) = 5668704 * k + 449792 := by
    unfold C
    simp [show (11337408 * k + 899584) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 449792) = 2834352 * k + 224896 := by
    unfold C
    simp [show (5668704 * k + 449792) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 224896) = 1417176 * k + 112448 := by
    unfold C
    simp [show (2834352 * k + 224896) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 112448) = 708588 * k + 56224 := by
    unfold C
    simp [show (1417176 * k + 112448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 56224) = 354294 * k + 28112 := by
    unfold C
    simp [show (708588 * k + 56224) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 28112) = 177147 * k + 14056 := by
    unfold C
    simp [show (354294 * k + 28112) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 20799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 20799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_21151 : ∀ k : Nat,
    iterate (262144 * k + 21151) 29 = 177147 * k + 14294 ∧
      177147 * k + 14294 < 262144 * k + 21151 := by
  intro k
  have h1 : C (262144 * k + 21151) = 786432 * k + 63454 := by
    unfold C
    simp [show (262144 * k + 21151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 63454) = 393216 * k + 31727 := by
    unfold C
    simp [show (786432 * k + 63454) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31727) = 1179648 * k + 95182 := by
    unfold C
    simp [show (393216 * k + 31727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 95182) = 589824 * k + 47591 := by
    unfold C
    simp [show (1179648 * k + 95182) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 47591) = 1769472 * k + 142774 := by
    unfold C
    simp [show (589824 * k + 47591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 142774) = 884736 * k + 71387 := by
    unfold C
    simp [show (1769472 * k + 142774) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 71387) = 2654208 * k + 214162 := by
    unfold C
    simp [show (884736 * k + 71387) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 214162) = 1327104 * k + 107081 := by
    unfold C
    simp [show (2654208 * k + 214162) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 107081) = 3981312 * k + 321244 := by
    unfold C
    simp [show (1327104 * k + 107081) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 321244) = 1990656 * k + 160622 := by
    unfold C
    simp [show (3981312 * k + 321244) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 160622) = 995328 * k + 80311 := by
    unfold C
    simp [show (1990656 * k + 160622) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 80311) = 2985984 * k + 240934 := by
    unfold C
    simp [show (995328 * k + 80311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 240934) = 1492992 * k + 120467 := by
    unfold C
    simp [show (2985984 * k + 240934) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 120467) = 4478976 * k + 361402 := by
    unfold C
    simp [show (1492992 * k + 120467) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 361402) = 2239488 * k + 180701 := by
    unfold C
    simp [show (4478976 * k + 361402) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 180701) = 6718464 * k + 542104 := by
    unfold C
    simp [show (2239488 * k + 180701) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 542104) = 3359232 * k + 271052 := by
    unfold C
    simp [show (6718464 * k + 542104) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 271052) = 1679616 * k + 135526 := by
    unfold C
    simp [show (3359232 * k + 271052) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 135526) = 839808 * k + 67763 := by
    unfold C
    simp [show (1679616 * k + 135526) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 67763) = 2519424 * k + 203290 := by
    unfold C
    simp [show (839808 * k + 67763) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 203290) = 1259712 * k + 101645 := by
    unfold C
    simp [show (2519424 * k + 203290) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 101645) = 3779136 * k + 304936 := by
    unfold C
    simp [show (1259712 * k + 101645) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 304936) = 1889568 * k + 152468 := by
    unfold C
    simp [show (3779136 * k + 304936) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 152468) = 944784 * k + 76234 := by
    unfold C
    simp [show (1889568 * k + 152468) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 76234) = 472392 * k + 38117 := by
    unfold C
    simp [show (944784 * k + 76234) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 38117) = 1417176 * k + 114352 := by
    unfold C
    simp [show (472392 * k + 38117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 114352) = 708588 * k + 57176 := by
    unfold C
    simp [show (1417176 * k + 114352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 57176) = 354294 * k + 28588 := by
    unfold C
    simp [show (708588 * k + 57176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 28588) = 177147 * k + 14294 := by
    unfold C
    simp [show (354294 * k + 28588) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 21151) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 21151))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_21275 : ∀ k : Nat,
    iterate (262144 * k + 21275) 29 = 177147 * k + 14378 ∧
      177147 * k + 14378 < 262144 * k + 21275 := by
  intro k
  have h1 : C (262144 * k + 21275) = 786432 * k + 63826 := by
    unfold C
    simp [show (262144 * k + 21275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 63826) = 393216 * k + 31913 := by
    unfold C
    simp [show (786432 * k + 63826) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 31913) = 1179648 * k + 95740 := by
    unfold C
    simp [show (393216 * k + 31913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 95740) = 589824 * k + 47870 := by
    unfold C
    simp [show (1179648 * k + 95740) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 47870) = 294912 * k + 23935 := by
    unfold C
    simp [show (589824 * k + 47870) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 23935) = 884736 * k + 71806 := by
    unfold C
    simp [show (294912 * k + 23935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 71806) = 442368 * k + 35903 := by
    unfold C
    simp [show (884736 * k + 71806) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 35903) = 1327104 * k + 107710 := by
    unfold C
    simp [show (442368 * k + 35903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 107710) = 663552 * k + 53855 := by
    unfold C
    simp [show (1327104 * k + 107710) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 53855) = 1990656 * k + 161566 := by
    unfold C
    simp [show (663552 * k + 53855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 161566) = 995328 * k + 80783 := by
    unfold C
    simp [show (1990656 * k + 161566) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 80783) = 2985984 * k + 242350 := by
    unfold C
    simp [show (995328 * k + 80783) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 242350) = 1492992 * k + 121175 := by
    unfold C
    simp [show (2985984 * k + 242350) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 121175) = 4478976 * k + 363526 := by
    unfold C
    simp [show (1492992 * k + 121175) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 363526) = 2239488 * k + 181763 := by
    unfold C
    simp [show (4478976 * k + 363526) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 181763) = 6718464 * k + 545290 := by
    unfold C
    simp [show (2239488 * k + 181763) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 545290) = 3359232 * k + 272645 := by
    unfold C
    simp [show (6718464 * k + 545290) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 272645) = 10077696 * k + 817936 := by
    unfold C
    simp [show (3359232 * k + 272645) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 817936) = 5038848 * k + 408968 := by
    unfold C
    simp [show (10077696 * k + 817936) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 408968) = 2519424 * k + 204484 := by
    unfold C
    simp [show (5038848 * k + 408968) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 204484) = 1259712 * k + 102242 := by
    unfold C
    simp [show (2519424 * k + 204484) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 102242) = 629856 * k + 51121 := by
    unfold C
    simp [show (1259712 * k + 102242) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 51121) = 1889568 * k + 153364 := by
    unfold C
    simp [show (629856 * k + 51121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 153364) = 944784 * k + 76682 := by
    unfold C
    simp [show (1889568 * k + 153364) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 76682) = 472392 * k + 38341 := by
    unfold C
    simp [show (944784 * k + 76682) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 38341) = 1417176 * k + 115024 := by
    unfold C
    simp [show (472392 * k + 38341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 115024) = 708588 * k + 57512 := by
    unfold C
    simp [show (1417176 * k + 115024) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 57512) = 354294 * k + 28756 := by
    unfold C
    simp [show (708588 * k + 57512) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 28756) = 177147 * k + 14378 := by
    unfold C
    simp [show (354294 * k + 28756) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 21275) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 21275))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_22767 : ∀ k : Nat,
    iterate (262144 * k + 22767) 29 = 177147 * k + 15386 ∧
      177147 * k + 15386 < 262144 * k + 22767 := by
  intro k
  have h1 : C (262144 * k + 22767) = 786432 * k + 68302 := by
    unfold C
    simp [show (262144 * k + 22767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 68302) = 393216 * k + 34151 := by
    unfold C
    simp [show (786432 * k + 68302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 34151) = 1179648 * k + 102454 := by
    unfold C
    simp [show (393216 * k + 34151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 102454) = 589824 * k + 51227 := by
    unfold C
    simp [show (1179648 * k + 102454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 51227) = 1769472 * k + 153682 := by
    unfold C
    simp [show (589824 * k + 51227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 153682) = 884736 * k + 76841 := by
    unfold C
    simp [show (1769472 * k + 153682) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 76841) = 2654208 * k + 230524 := by
    unfold C
    simp [show (884736 * k + 76841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 230524) = 1327104 * k + 115262 := by
    unfold C
    simp [show (2654208 * k + 230524) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 115262) = 663552 * k + 57631 := by
    unfold C
    simp [show (1327104 * k + 115262) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 57631) = 1990656 * k + 172894 := by
    unfold C
    simp [show (663552 * k + 57631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 172894) = 995328 * k + 86447 := by
    unfold C
    simp [show (1990656 * k + 172894) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 86447) = 2985984 * k + 259342 := by
    unfold C
    simp [show (995328 * k + 86447) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 259342) = 1492992 * k + 129671 := by
    unfold C
    simp [show (2985984 * k + 259342) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 129671) = 4478976 * k + 389014 := by
    unfold C
    simp [show (1492992 * k + 129671) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 389014) = 2239488 * k + 194507 := by
    unfold C
    simp [show (4478976 * k + 389014) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 194507) = 6718464 * k + 583522 := by
    unfold C
    simp [show (2239488 * k + 194507) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 583522) = 3359232 * k + 291761 := by
    unfold C
    simp [show (6718464 * k + 583522) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 291761) = 10077696 * k + 875284 := by
    unfold C
    simp [show (3359232 * k + 291761) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 875284) = 5038848 * k + 437642 := by
    unfold C
    simp [show (10077696 * k + 875284) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 437642) = 2519424 * k + 218821 := by
    unfold C
    simp [show (5038848 * k + 437642) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 218821) = 7558272 * k + 656464 := by
    unfold C
    simp [show (2519424 * k + 218821) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 656464) = 3779136 * k + 328232 := by
    unfold C
    simp [show (7558272 * k + 656464) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 328232) = 1889568 * k + 164116 := by
    unfold C
    simp [show (3779136 * k + 328232) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 164116) = 944784 * k + 82058 := by
    unfold C
    simp [show (1889568 * k + 164116) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 82058) = 472392 * k + 41029 := by
    unfold C
    simp [show (944784 * k + 82058) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 41029) = 1417176 * k + 123088 := by
    unfold C
    simp [show (472392 * k + 41029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 123088) = 708588 * k + 61544 := by
    unfold C
    simp [show (1417176 * k + 123088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 61544) = 354294 * k + 30772 := by
    unfold C
    simp [show (708588 * k + 61544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 30772) = 177147 * k + 15386 := by
    unfold C
    simp [show (354294 * k + 30772) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 22767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 22767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_22847 : ∀ k : Nat,
    iterate (262144 * k + 22847) 29 = 177147 * k + 15440 ∧
      177147 * k + 15440 < 262144 * k + 22847 := by
  intro k
  have h1 : C (262144 * k + 22847) = 786432 * k + 68542 := by
    unfold C
    simp [show (262144 * k + 22847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 68542) = 393216 * k + 34271 := by
    unfold C
    simp [show (786432 * k + 68542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 34271) = 1179648 * k + 102814 := by
    unfold C
    simp [show (393216 * k + 34271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 102814) = 589824 * k + 51407 := by
    unfold C
    simp [show (1179648 * k + 102814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 51407) = 1769472 * k + 154222 := by
    unfold C
    simp [show (589824 * k + 51407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 154222) = 884736 * k + 77111 := by
    unfold C
    simp [show (1769472 * k + 154222) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 77111) = 2654208 * k + 231334 := by
    unfold C
    simp [show (884736 * k + 77111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 231334) = 1327104 * k + 115667 := by
    unfold C
    simp [show (2654208 * k + 231334) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 115667) = 3981312 * k + 347002 := by
    unfold C
    simp [show (1327104 * k + 115667) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 347002) = 1990656 * k + 173501 := by
    unfold C
    simp [show (3981312 * k + 347002) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 173501) = 5971968 * k + 520504 := by
    unfold C
    simp [show (1990656 * k + 173501) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 520504) = 2985984 * k + 260252 := by
    unfold C
    simp [show (5971968 * k + 520504) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 260252) = 1492992 * k + 130126 := by
    unfold C
    simp [show (2985984 * k + 260252) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 130126) = 746496 * k + 65063 := by
    unfold C
    simp [show (1492992 * k + 130126) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 65063) = 2239488 * k + 195190 := by
    unfold C
    simp [show (746496 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 195190) = 1119744 * k + 97595 := by
    unfold C
    simp [show (2239488 * k + 195190) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 97595) = 3359232 * k + 292786 := by
    unfold C
    simp [show (1119744 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 292786) = 1679616 * k + 146393 := by
    unfold C
    simp [show (3359232 * k + 292786) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 146393) = 5038848 * k + 439180 := by
    unfold C
    simp [show (1679616 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 439180) = 2519424 * k + 219590 := by
    unfold C
    simp [show (5038848 * k + 439180) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 219590) = 1259712 * k + 109795 := by
    unfold C
    simp [show (2519424 * k + 219590) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 109795) = 3779136 * k + 329386 := by
    unfold C
    simp [show (1259712 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 329386) = 1889568 * k + 164693 := by
    unfold C
    simp [show (3779136 * k + 329386) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 164693) = 5668704 * k + 494080 := by
    unfold C
    simp [show (1889568 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 494080) = 2834352 * k + 247040 := by
    unfold C
    simp [show (5668704 * k + 494080) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 247040) = 1417176 * k + 123520 := by
    unfold C
    simp [show (2834352 * k + 247040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 123520) = 708588 * k + 61760 := by
    unfold C
    simp [show (1417176 * k + 123520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 61760) = 354294 * k + 30880 := by
    unfold C
    simp [show (708588 * k + 61760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 30880) = 177147 * k + 15440 := by
    unfold C
    simp [show (354294 * k + 30880) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 22847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 22847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_23023 : ∀ k : Nat,
    iterate (262144 * k + 23023) 29 = 177147 * k + 15559 ∧
      177147 * k + 15559 < 262144 * k + 23023 := by
  intro k
  have h1 : C (262144 * k + 23023) = 786432 * k + 69070 := by
    unfold C
    simp [show (262144 * k + 23023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 69070) = 393216 * k + 34535 := by
    unfold C
    simp [show (786432 * k + 69070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 34535) = 1179648 * k + 103606 := by
    unfold C
    simp [show (393216 * k + 34535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 103606) = 589824 * k + 51803 := by
    unfold C
    simp [show (1179648 * k + 103606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 51803) = 1769472 * k + 155410 := by
    unfold C
    simp [show (589824 * k + 51803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 155410) = 884736 * k + 77705 := by
    unfold C
    simp [show (1769472 * k + 155410) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 77705) = 2654208 * k + 233116 := by
    unfold C
    simp [show (884736 * k + 77705) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 233116) = 1327104 * k + 116558 := by
    unfold C
    simp [show (2654208 * k + 233116) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 116558) = 663552 * k + 58279 := by
    unfold C
    simp [show (1327104 * k + 116558) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 58279) = 1990656 * k + 174838 := by
    unfold C
    simp [show (663552 * k + 58279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 174838) = 995328 * k + 87419 := by
    unfold C
    simp [show (1990656 * k + 174838) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 87419) = 2985984 * k + 262258 := by
    unfold C
    simp [show (995328 * k + 87419) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 262258) = 1492992 * k + 131129 := by
    unfold C
    simp [show (2985984 * k + 262258) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 131129) = 4478976 * k + 393388 := by
    unfold C
    simp [show (1492992 * k + 131129) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 393388) = 2239488 * k + 196694 := by
    unfold C
    simp [show (4478976 * k + 393388) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 196694) = 1119744 * k + 98347 := by
    unfold C
    simp [show (2239488 * k + 196694) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 98347) = 3359232 * k + 295042 := by
    unfold C
    simp [show (1119744 * k + 98347) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 295042) = 1679616 * k + 147521 := by
    unfold C
    simp [show (3359232 * k + 295042) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 147521) = 5038848 * k + 442564 := by
    unfold C
    simp [show (1679616 * k + 147521) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 442564) = 2519424 * k + 221282 := by
    unfold C
    simp [show (5038848 * k + 442564) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 221282) = 1259712 * k + 110641 := by
    unfold C
    simp [show (2519424 * k + 221282) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 110641) = 3779136 * k + 331924 := by
    unfold C
    simp [show (1259712 * k + 110641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 331924) = 1889568 * k + 165962 := by
    unfold C
    simp [show (3779136 * k + 331924) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 165962) = 944784 * k + 82981 := by
    unfold C
    simp [show (1889568 * k + 165962) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 82981) = 2834352 * k + 248944 := by
    unfold C
    simp [show (944784 * k + 82981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 248944) = 1417176 * k + 124472 := by
    unfold C
    simp [show (2834352 * k + 248944) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 124472) = 708588 * k + 62236 := by
    unfold C
    simp [show (1417176 * k + 124472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 62236) = 354294 * k + 31118 := by
    unfold C
    simp [show (708588 * k + 62236) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 31118) = 177147 * k + 15559 := by
    unfold C
    simp [show (354294 * k + 31118) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 23023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 23023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_23547 : ∀ k : Nat,
    iterate (262144 * k + 23547) 29 = 177147 * k + 15914 ∧
      177147 * k + 15914 < 262144 * k + 23547 := by
  intro k
  have h1 : C (262144 * k + 23547) = 786432 * k + 70642 := by
    unfold C
    simp [show (262144 * k + 23547) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 70642) = 393216 * k + 35321 := by
    unfold C
    simp [show (786432 * k + 70642) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 35321) = 1179648 * k + 105964 := by
    unfold C
    simp [show (393216 * k + 35321) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 105964) = 589824 * k + 52982 := by
    unfold C
    simp [show (1179648 * k + 105964) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 52982) = 294912 * k + 26491 := by
    unfold C
    simp [show (589824 * k + 52982) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 26491) = 884736 * k + 79474 := by
    unfold C
    simp [show (294912 * k + 26491) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 79474) = 442368 * k + 39737 := by
    unfold C
    simp [show (884736 * k + 79474) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 39737) = 1327104 * k + 119212 := by
    unfold C
    simp [show (442368 * k + 39737) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 119212) = 663552 * k + 59606 := by
    unfold C
    simp [show (1327104 * k + 119212) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 59606) = 331776 * k + 29803 := by
    unfold C
    simp [show (663552 * k + 59606) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 29803) = 995328 * k + 89410 := by
    unfold C
    simp [show (331776 * k + 29803) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 89410) = 497664 * k + 44705 := by
    unfold C
    simp [show (995328 * k + 89410) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 44705) = 1492992 * k + 134116 := by
    unfold C
    simp [show (497664 * k + 44705) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 134116) = 746496 * k + 67058 := by
    unfold C
    simp [show (1492992 * k + 134116) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 67058) = 373248 * k + 33529 := by
    unfold C
    simp [show (746496 * k + 67058) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 33529) = 1119744 * k + 100588 := by
    unfold C
    simp [show (373248 * k + 33529) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 100588) = 559872 * k + 50294 := by
    unfold C
    simp [show (1119744 * k + 100588) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 50294) = 279936 * k + 25147 := by
    unfold C
    simp [show (559872 * k + 50294) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 25147) = 839808 * k + 75442 := by
    unfold C
    simp [show (279936 * k + 25147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 75442) = 419904 * k + 37721 := by
    unfold C
    simp [show (839808 * k + 75442) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 37721) = 1259712 * k + 113164 := by
    unfold C
    simp [show (419904 * k + 37721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 113164) = 629856 * k + 56582 := by
    unfold C
    simp [show (1259712 * k + 113164) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 56582) = 314928 * k + 28291 := by
    unfold C
    simp [show (629856 * k + 56582) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 28291) = 944784 * k + 84874 := by
    unfold C
    simp [show (314928 * k + 28291) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 84874) = 472392 * k + 42437 := by
    unfold C
    simp [show (944784 * k + 84874) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 42437) = 1417176 * k + 127312 := by
    unfold C
    simp [show (472392 * k + 42437) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 127312) = 708588 * k + 63656 := by
    unfold C
    simp [show (1417176 * k + 127312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 63656) = 354294 * k + 31828 := by
    unfold C
    simp [show (708588 * k + 63656) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 31828) = 177147 * k + 15914 := by
    unfold C
    simp [show (354294 * k + 31828) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 23547) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 23547))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_23579 : ∀ k : Nat,
    iterate (262144 * k + 23579) 29 = 177147 * k + 15935 ∧
      177147 * k + 15935 < 262144 * k + 23579 := by
  intro k
  have h1 : C (262144 * k + 23579) = 786432 * k + 70738 := by
    unfold C
    simp [show (262144 * k + 23579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 70738) = 393216 * k + 35369 := by
    unfold C
    simp [show (786432 * k + 70738) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 35369) = 1179648 * k + 106108 := by
    unfold C
    simp [show (393216 * k + 35369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 106108) = 589824 * k + 53054 := by
    unfold C
    simp [show (1179648 * k + 106108) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 53054) = 294912 * k + 26527 := by
    unfold C
    simp [show (589824 * k + 53054) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 26527) = 884736 * k + 79582 := by
    unfold C
    simp [show (294912 * k + 26527) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 79582) = 442368 * k + 39791 := by
    unfold C
    simp [show (884736 * k + 79582) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 39791) = 1327104 * k + 119374 := by
    unfold C
    simp [show (442368 * k + 39791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 119374) = 663552 * k + 59687 := by
    unfold C
    simp [show (1327104 * k + 119374) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 59687) = 1990656 * k + 179062 := by
    unfold C
    simp [show (663552 * k + 59687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 179062) = 995328 * k + 89531 := by
    unfold C
    simp [show (1990656 * k + 179062) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 89531) = 2985984 * k + 268594 := by
    unfold C
    simp [show (995328 * k + 89531) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 268594) = 1492992 * k + 134297 := by
    unfold C
    simp [show (2985984 * k + 268594) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 134297) = 4478976 * k + 402892 := by
    unfold C
    simp [show (1492992 * k + 134297) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 402892) = 2239488 * k + 201446 := by
    unfold C
    simp [show (4478976 * k + 402892) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 201446) = 1119744 * k + 100723 := by
    unfold C
    simp [show (2239488 * k + 201446) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 100723) = 3359232 * k + 302170 := by
    unfold C
    simp [show (1119744 * k + 100723) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 302170) = 1679616 * k + 151085 := by
    unfold C
    simp [show (3359232 * k + 302170) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 151085) = 5038848 * k + 453256 := by
    unfold C
    simp [show (1679616 * k + 151085) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 453256) = 2519424 * k + 226628 := by
    unfold C
    simp [show (5038848 * k + 453256) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 226628) = 1259712 * k + 113314 := by
    unfold C
    simp [show (2519424 * k + 226628) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 113314) = 629856 * k + 56657 := by
    unfold C
    simp [show (1259712 * k + 113314) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 56657) = 1889568 * k + 169972 := by
    unfold C
    simp [show (629856 * k + 56657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 169972) = 944784 * k + 84986 := by
    unfold C
    simp [show (1889568 * k + 169972) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 84986) = 472392 * k + 42493 := by
    unfold C
    simp [show (944784 * k + 84986) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 42493) = 1417176 * k + 127480 := by
    unfold C
    simp [show (472392 * k + 42493) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 127480) = 708588 * k + 63740 := by
    unfold C
    simp [show (1417176 * k + 127480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 63740) = 354294 * k + 31870 := by
    unfold C
    simp [show (708588 * k + 63740) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 31870) = 177147 * k + 15935 := by
    unfold C
    simp [show (354294 * k + 31870) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 23579) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 23579))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_24423 : ∀ k : Nat,
    iterate (262144 * k + 24423) 29 = 177147 * k + 16505 ∧
      177147 * k + 16505 < 262144 * k + 24423 := by
  intro k
  have h1 : C (262144 * k + 24423) = 786432 * k + 73270 := by
    unfold C
    simp [show (262144 * k + 24423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 73270) = 393216 * k + 36635 := by
    unfold C
    simp [show (786432 * k + 73270) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 36635) = 1179648 * k + 109906 := by
    unfold C
    simp [show (393216 * k + 36635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 109906) = 589824 * k + 54953 := by
    unfold C
    simp [show (1179648 * k + 109906) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 54953) = 1769472 * k + 164860 := by
    unfold C
    simp [show (589824 * k + 54953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 164860) = 884736 * k + 82430 := by
    unfold C
    simp [show (1769472 * k + 164860) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 82430) = 442368 * k + 41215 := by
    unfold C
    simp [show (884736 * k + 82430) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 41215) = 1327104 * k + 123646 := by
    unfold C
    simp [show (442368 * k + 41215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 123646) = 663552 * k + 61823 := by
    unfold C
    simp [show (1327104 * k + 123646) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 61823) = 1990656 * k + 185470 := by
    unfold C
    simp [show (663552 * k + 61823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 185470) = 995328 * k + 92735 := by
    unfold C
    simp [show (1990656 * k + 185470) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 92735) = 2985984 * k + 278206 := by
    unfold C
    simp [show (995328 * k + 92735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 278206) = 1492992 * k + 139103 := by
    unfold C
    simp [show (2985984 * k + 278206) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 139103) = 4478976 * k + 417310 := by
    unfold C
    simp [show (1492992 * k + 139103) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 417310) = 2239488 * k + 208655 := by
    unfold C
    simp [show (4478976 * k + 417310) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 208655) = 6718464 * k + 625966 := by
    unfold C
    simp [show (2239488 * k + 208655) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 625966) = 3359232 * k + 312983 := by
    unfold C
    simp [show (6718464 * k + 625966) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 312983) = 10077696 * k + 938950 := by
    unfold C
    simp [show (3359232 * k + 312983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 938950) = 5038848 * k + 469475 := by
    unfold C
    simp [show (10077696 * k + 938950) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 469475) = 15116544 * k + 1408426 := by
    unfold C
    simp [show (5038848 * k + 469475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 1408426) = 7558272 * k + 704213 := by
    unfold C
    simp [show (15116544 * k + 1408426) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 704213) = 22674816 * k + 2112640 := by
    unfold C
    simp [show (7558272 * k + 704213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 2112640) = 11337408 * k + 1056320 := by
    unfold C
    simp [show (22674816 * k + 2112640) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 1056320) = 5668704 * k + 528160 := by
    unfold C
    simp [show (11337408 * k + 1056320) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 528160) = 2834352 * k + 264080 := by
    unfold C
    simp [show (5668704 * k + 528160) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 264080) = 1417176 * k + 132040 := by
    unfold C
    simp [show (2834352 * k + 264080) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 132040) = 708588 * k + 66020 := by
    unfold C
    simp [show (1417176 * k + 132040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 66020) = 354294 * k + 33010 := by
    unfold C
    simp [show (708588 * k + 66020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 33010) = 177147 * k + 16505 := by
    unfold C
    simp [show (354294 * k + 33010) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 24423) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 24423))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_24479 : ∀ k : Nat,
    iterate (262144 * k + 24479) 29 = 177147 * k + 16543 ∧
      177147 * k + 16543 < 262144 * k + 24479 := by
  intro k
  have h1 : C (262144 * k + 24479) = 786432 * k + 73438 := by
    unfold C
    simp [show (262144 * k + 24479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 73438) = 393216 * k + 36719 := by
    unfold C
    simp [show (786432 * k + 73438) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 36719) = 1179648 * k + 110158 := by
    unfold C
    simp [show (393216 * k + 36719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 110158) = 589824 * k + 55079 := by
    unfold C
    simp [show (1179648 * k + 110158) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 55079) = 1769472 * k + 165238 := by
    unfold C
    simp [show (589824 * k + 55079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 165238) = 884736 * k + 82619 := by
    unfold C
    simp [show (1769472 * k + 165238) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 82619) = 2654208 * k + 247858 := by
    unfold C
    simp [show (884736 * k + 82619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 247858) = 1327104 * k + 123929 := by
    unfold C
    simp [show (2654208 * k + 247858) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 123929) = 3981312 * k + 371788 := by
    unfold C
    simp [show (1327104 * k + 123929) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 371788) = 1990656 * k + 185894 := by
    unfold C
    simp [show (3981312 * k + 371788) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 185894) = 995328 * k + 92947 := by
    unfold C
    simp [show (1990656 * k + 185894) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 92947) = 2985984 * k + 278842 := by
    unfold C
    simp [show (995328 * k + 92947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 278842) = 1492992 * k + 139421 := by
    unfold C
    simp [show (2985984 * k + 278842) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 139421) = 4478976 * k + 418264 := by
    unfold C
    simp [show (1492992 * k + 139421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 418264) = 2239488 * k + 209132 := by
    unfold C
    simp [show (4478976 * k + 418264) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 209132) = 1119744 * k + 104566 := by
    unfold C
    simp [show (2239488 * k + 209132) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 104566) = 559872 * k + 52283 := by
    unfold C
    simp [show (1119744 * k + 104566) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 52283) = 1679616 * k + 156850 := by
    unfold C
    simp [show (559872 * k + 52283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 156850) = 839808 * k + 78425 := by
    unfold C
    simp [show (1679616 * k + 156850) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 78425) = 2519424 * k + 235276 := by
    unfold C
    simp [show (839808 * k + 78425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 235276) = 1259712 * k + 117638 := by
    unfold C
    simp [show (2519424 * k + 235276) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 117638) = 629856 * k + 58819 := by
    unfold C
    simp [show (1259712 * k + 117638) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 58819) = 1889568 * k + 176458 := by
    unfold C
    simp [show (629856 * k + 58819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 176458) = 944784 * k + 88229 := by
    unfold C
    simp [show (1889568 * k + 176458) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 88229) = 2834352 * k + 264688 := by
    unfold C
    simp [show (944784 * k + 88229) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 264688) = 1417176 * k + 132344 := by
    unfold C
    simp [show (2834352 * k + 264688) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 132344) = 708588 * k + 66172 := by
    unfold C
    simp [show (1417176 * k + 132344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 66172) = 354294 * k + 33086 := by
    unfold C
    simp [show (708588 * k + 66172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 33086) = 177147 * k + 16543 := by
    unfold C
    simp [show (354294 * k + 33086) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 24479) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 24479))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_24991 : ∀ k : Nat,
    iterate (262144 * k + 24991) 29 = 177147 * k + 16889 ∧
      177147 * k + 16889 < 262144 * k + 24991 := by
  intro k
  have h1 : C (262144 * k + 24991) = 786432 * k + 74974 := by
    unfold C
    simp [show (262144 * k + 24991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 74974) = 393216 * k + 37487 := by
    unfold C
    simp [show (786432 * k + 74974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 37487) = 1179648 * k + 112462 := by
    unfold C
    simp [show (393216 * k + 37487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 112462) = 589824 * k + 56231 := by
    unfold C
    simp [show (1179648 * k + 112462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 56231) = 1769472 * k + 168694 := by
    unfold C
    simp [show (589824 * k + 56231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 168694) = 884736 * k + 84347 := by
    unfold C
    simp [show (1769472 * k + 168694) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 84347) = 2654208 * k + 253042 := by
    unfold C
    simp [show (884736 * k + 84347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 253042) = 1327104 * k + 126521 := by
    unfold C
    simp [show (2654208 * k + 253042) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 126521) = 3981312 * k + 379564 := by
    unfold C
    simp [show (1327104 * k + 126521) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 379564) = 1990656 * k + 189782 := by
    unfold C
    simp [show (3981312 * k + 379564) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 189782) = 995328 * k + 94891 := by
    unfold C
    simp [show (1990656 * k + 189782) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 94891) = 2985984 * k + 284674 := by
    unfold C
    simp [show (995328 * k + 94891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 284674) = 1492992 * k + 142337 := by
    unfold C
    simp [show (2985984 * k + 284674) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 142337) = 4478976 * k + 427012 := by
    unfold C
    simp [show (1492992 * k + 142337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 427012) = 2239488 * k + 213506 := by
    unfold C
    simp [show (4478976 * k + 427012) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 213506) = 1119744 * k + 106753 := by
    unfold C
    simp [show (2239488 * k + 213506) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 106753) = 3359232 * k + 320260 := by
    unfold C
    simp [show (1119744 * k + 106753) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 320260) = 1679616 * k + 160130 := by
    unfold C
    simp [show (3359232 * k + 320260) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 160130) = 839808 * k + 80065 := by
    unfold C
    simp [show (1679616 * k + 160130) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 80065) = 2519424 * k + 240196 := by
    unfold C
    simp [show (839808 * k + 80065) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 240196) = 1259712 * k + 120098 := by
    unfold C
    simp [show (2519424 * k + 240196) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 120098) = 629856 * k + 60049 := by
    unfold C
    simp [show (1259712 * k + 120098) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 60049) = 1889568 * k + 180148 := by
    unfold C
    simp [show (629856 * k + 60049) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 180148) = 944784 * k + 90074 := by
    unfold C
    simp [show (1889568 * k + 180148) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 90074) = 472392 * k + 45037 := by
    unfold C
    simp [show (944784 * k + 90074) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 45037) = 1417176 * k + 135112 := by
    unfold C
    simp [show (472392 * k + 45037) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 135112) = 708588 * k + 67556 := by
    unfold C
    simp [show (1417176 * k + 135112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 67556) = 354294 * k + 33778 := by
    unfold C
    simp [show (708588 * k + 67556) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 33778) = 177147 * k + 16889 := by
    unfold C
    simp [show (354294 * k + 33778) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 24991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 24991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_25071 : ∀ k : Nat,
    iterate (262144 * k + 25071) 29 = 177147 * k + 16943 ∧
      177147 * k + 16943 < 262144 * k + 25071 := by
  intro k
  have h1 : C (262144 * k + 25071) = 786432 * k + 75214 := by
    unfold C
    simp [show (262144 * k + 25071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 75214) = 393216 * k + 37607 := by
    unfold C
    simp [show (786432 * k + 75214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 37607) = 1179648 * k + 112822 := by
    unfold C
    simp [show (393216 * k + 37607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 112822) = 589824 * k + 56411 := by
    unfold C
    simp [show (1179648 * k + 112822) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 56411) = 1769472 * k + 169234 := by
    unfold C
    simp [show (589824 * k + 56411) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 169234) = 884736 * k + 84617 := by
    unfold C
    simp [show (1769472 * k + 169234) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 84617) = 2654208 * k + 253852 := by
    unfold C
    simp [show (884736 * k + 84617) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 253852) = 1327104 * k + 126926 := by
    unfold C
    simp [show (2654208 * k + 253852) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 126926) = 663552 * k + 63463 := by
    unfold C
    simp [show (1327104 * k + 126926) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 63463) = 1990656 * k + 190390 := by
    unfold C
    simp [show (663552 * k + 63463) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 190390) = 995328 * k + 95195 := by
    unfold C
    simp [show (1990656 * k + 190390) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 95195) = 2985984 * k + 285586 := by
    unfold C
    simp [show (995328 * k + 95195) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 285586) = 1492992 * k + 142793 := by
    unfold C
    simp [show (2985984 * k + 285586) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 142793) = 4478976 * k + 428380 := by
    unfold C
    simp [show (1492992 * k + 142793) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 428380) = 2239488 * k + 214190 := by
    unfold C
    simp [show (4478976 * k + 428380) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 214190) = 1119744 * k + 107095 := by
    unfold C
    simp [show (2239488 * k + 214190) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 107095) = 3359232 * k + 321286 := by
    unfold C
    simp [show (1119744 * k + 107095) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 321286) = 1679616 * k + 160643 := by
    unfold C
    simp [show (3359232 * k + 321286) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 160643) = 5038848 * k + 481930 := by
    unfold C
    simp [show (1679616 * k + 160643) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 481930) = 2519424 * k + 240965 := by
    unfold C
    simp [show (5038848 * k + 481930) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 240965) = 7558272 * k + 722896 := by
    unfold C
    simp [show (2519424 * k + 240965) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 722896) = 3779136 * k + 361448 := by
    unfold C
    simp [show (7558272 * k + 722896) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 361448) = 1889568 * k + 180724 := by
    unfold C
    simp [show (3779136 * k + 361448) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 180724) = 944784 * k + 90362 := by
    unfold C
    simp [show (1889568 * k + 180724) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 90362) = 472392 * k + 45181 := by
    unfold C
    simp [show (944784 * k + 90362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 45181) = 1417176 * k + 135544 := by
    unfold C
    simp [show (472392 * k + 45181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 135544) = 708588 * k + 67772 := by
    unfold C
    simp [show (1417176 * k + 135544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 67772) = 354294 * k + 33886 := by
    unfold C
    simp [show (708588 * k + 67772) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 33886) = 177147 * k + 16943 := by
    unfold C
    simp [show (354294 * k + 33886) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 25071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 25071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_25447 : ∀ k : Nat,
    iterate (262144 * k + 25447) 29 = 177147 * k + 17197 ∧
      177147 * k + 17197 < 262144 * k + 25447 := by
  intro k
  have h1 : C (262144 * k + 25447) = 786432 * k + 76342 := by
    unfold C
    simp [show (262144 * k + 25447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 76342) = 393216 * k + 38171 := by
    unfold C
    simp [show (786432 * k + 76342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 38171) = 1179648 * k + 114514 := by
    unfold C
    simp [show (393216 * k + 38171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 114514) = 589824 * k + 57257 := by
    unfold C
    simp [show (1179648 * k + 114514) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 57257) = 1769472 * k + 171772 := by
    unfold C
    simp [show (589824 * k + 57257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 171772) = 884736 * k + 85886 := by
    unfold C
    simp [show (1769472 * k + 171772) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 85886) = 442368 * k + 42943 := by
    unfold C
    simp [show (884736 * k + 85886) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 42943) = 1327104 * k + 128830 := by
    unfold C
    simp [show (442368 * k + 42943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 128830) = 663552 * k + 64415 := by
    unfold C
    simp [show (1327104 * k + 128830) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 64415) = 1990656 * k + 193246 := by
    unfold C
    simp [show (663552 * k + 64415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 193246) = 995328 * k + 96623 := by
    unfold C
    simp [show (1990656 * k + 193246) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 96623) = 2985984 * k + 289870 := by
    unfold C
    simp [show (995328 * k + 96623) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 289870) = 1492992 * k + 144935 := by
    unfold C
    simp [show (2985984 * k + 289870) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 144935) = 4478976 * k + 434806 := by
    unfold C
    simp [show (1492992 * k + 144935) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 434806) = 2239488 * k + 217403 := by
    unfold C
    simp [show (4478976 * k + 434806) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 217403) = 6718464 * k + 652210 := by
    unfold C
    simp [show (2239488 * k + 217403) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 652210) = 3359232 * k + 326105 := by
    unfold C
    simp [show (6718464 * k + 652210) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 326105) = 10077696 * k + 978316 := by
    unfold C
    simp [show (3359232 * k + 326105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 978316) = 5038848 * k + 489158 := by
    unfold C
    simp [show (10077696 * k + 978316) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 489158) = 2519424 * k + 244579 := by
    unfold C
    simp [show (5038848 * k + 489158) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 244579) = 7558272 * k + 733738 := by
    unfold C
    simp [show (2519424 * k + 244579) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 733738) = 3779136 * k + 366869 := by
    unfold C
    simp [show (7558272 * k + 733738) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 366869) = 11337408 * k + 1100608 := by
    unfold C
    simp [show (3779136 * k + 366869) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 1100608) = 5668704 * k + 550304 := by
    unfold C
    simp [show (11337408 * k + 1100608) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 550304) = 2834352 * k + 275152 := by
    unfold C
    simp [show (5668704 * k + 550304) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 275152) = 1417176 * k + 137576 := by
    unfold C
    simp [show (2834352 * k + 275152) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 137576) = 708588 * k + 68788 := by
    unfold C
    simp [show (1417176 * k + 137576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 68788) = 354294 * k + 34394 := by
    unfold C
    simp [show (708588 * k + 68788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 34394) = 177147 * k + 17197 := by
    unfold C
    simp [show (354294 * k + 34394) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 25447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 25447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_25759 : ∀ k : Nat,
    iterate (262144 * k + 25759) 29 = 177147 * k + 17408 ∧
      177147 * k + 17408 < 262144 * k + 25759 := by
  intro k
  have h1 : C (262144 * k + 25759) = 786432 * k + 77278 := by
    unfold C
    simp [show (262144 * k + 25759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 77278) = 393216 * k + 38639 := by
    unfold C
    simp [show (786432 * k + 77278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 38639) = 1179648 * k + 115918 := by
    unfold C
    simp [show (393216 * k + 38639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 115918) = 589824 * k + 57959 := by
    unfold C
    simp [show (1179648 * k + 115918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 57959) = 1769472 * k + 173878 := by
    unfold C
    simp [show (589824 * k + 57959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 173878) = 884736 * k + 86939 := by
    unfold C
    simp [show (1769472 * k + 173878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 86939) = 2654208 * k + 260818 := by
    unfold C
    simp [show (884736 * k + 86939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 260818) = 1327104 * k + 130409 := by
    unfold C
    simp [show (2654208 * k + 260818) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 130409) = 3981312 * k + 391228 := by
    unfold C
    simp [show (1327104 * k + 130409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 391228) = 1990656 * k + 195614 := by
    unfold C
    simp [show (3981312 * k + 391228) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 195614) = 995328 * k + 97807 := by
    unfold C
    simp [show (1990656 * k + 195614) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 97807) = 2985984 * k + 293422 := by
    unfold C
    simp [show (995328 * k + 97807) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 293422) = 1492992 * k + 146711 := by
    unfold C
    simp [show (2985984 * k + 293422) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 146711) = 4478976 * k + 440134 := by
    unfold C
    simp [show (1492992 * k + 146711) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 440134) = 2239488 * k + 220067 := by
    unfold C
    simp [show (4478976 * k + 440134) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 220067) = 6718464 * k + 660202 := by
    unfold C
    simp [show (2239488 * k + 220067) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 660202) = 3359232 * k + 330101 := by
    unfold C
    simp [show (6718464 * k + 660202) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 330101) = 10077696 * k + 990304 := by
    unfold C
    simp [show (3359232 * k + 330101) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 990304) = 5038848 * k + 495152 := by
    unfold C
    simp [show (10077696 * k + 990304) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 495152) = 2519424 * k + 247576 := by
    unfold C
    simp [show (5038848 * k + 495152) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 247576) = 1259712 * k + 123788 := by
    unfold C
    simp [show (2519424 * k + 247576) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 123788) = 629856 * k + 61894 := by
    unfold C
    simp [show (1259712 * k + 123788) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 61894) = 314928 * k + 30947 := by
    unfold C
    simp [show (629856 * k + 61894) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 30947) = 944784 * k + 92842 := by
    unfold C
    simp [show (314928 * k + 30947) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 92842) = 472392 * k + 46421 := by
    unfold C
    simp [show (944784 * k + 92842) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 46421) = 1417176 * k + 139264 := by
    unfold C
    simp [show (472392 * k + 46421) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 139264) = 708588 * k + 69632 := by
    unfold C
    simp [show (1417176 * k + 139264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 69632) = 354294 * k + 34816 := by
    unfold C
    simp [show (708588 * k + 69632) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 34816) = 177147 * k + 17408 := by
    unfold C
    simp [show (354294 * k + 34816) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 25759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 25759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_26695 : ∀ k : Nat,
    iterate (262144 * k + 26695) 29 = 177147 * k + 18041 ∧
      177147 * k + 18041 < 262144 * k + 26695 := by
  intro k
  have h1 : C (262144 * k + 26695) = 786432 * k + 80086 := by
    unfold C
    simp [show (262144 * k + 26695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 80086) = 393216 * k + 40043 := by
    unfold C
    simp [show (786432 * k + 80086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 40043) = 1179648 * k + 120130 := by
    unfold C
    simp [show (393216 * k + 40043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 120130) = 589824 * k + 60065 := by
    unfold C
    simp [show (1179648 * k + 120130) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 60065) = 1769472 * k + 180196 := by
    unfold C
    simp [show (589824 * k + 60065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 180196) = 884736 * k + 90098 := by
    unfold C
    simp [show (1769472 * k + 180196) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 90098) = 442368 * k + 45049 := by
    unfold C
    simp [show (884736 * k + 90098) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 45049) = 1327104 * k + 135148 := by
    unfold C
    simp [show (442368 * k + 45049) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 135148) = 663552 * k + 67574 := by
    unfold C
    simp [show (1327104 * k + 135148) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 67574) = 331776 * k + 33787 := by
    unfold C
    simp [show (663552 * k + 67574) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 33787) = 995328 * k + 101362 := by
    unfold C
    simp [show (331776 * k + 33787) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 101362) = 497664 * k + 50681 := by
    unfold C
    simp [show (995328 * k + 101362) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 50681) = 1492992 * k + 152044 := by
    unfold C
    simp [show (497664 * k + 50681) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 152044) = 746496 * k + 76022 := by
    unfold C
    simp [show (1492992 * k + 152044) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 76022) = 373248 * k + 38011 := by
    unfold C
    simp [show (746496 * k + 76022) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 38011) = 1119744 * k + 114034 := by
    unfold C
    simp [show (373248 * k + 38011) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 114034) = 559872 * k + 57017 := by
    unfold C
    simp [show (1119744 * k + 114034) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 57017) = 1679616 * k + 171052 := by
    unfold C
    simp [show (559872 * k + 57017) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 171052) = 839808 * k + 85526 := by
    unfold C
    simp [show (1679616 * k + 171052) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 85526) = 419904 * k + 42763 := by
    unfold C
    simp [show (839808 * k + 85526) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 42763) = 1259712 * k + 128290 := by
    unfold C
    simp [show (419904 * k + 42763) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 128290) = 629856 * k + 64145 := by
    unfold C
    simp [show (1259712 * k + 128290) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 64145) = 1889568 * k + 192436 := by
    unfold C
    simp [show (629856 * k + 64145) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 192436) = 944784 * k + 96218 := by
    unfold C
    simp [show (1889568 * k + 192436) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 96218) = 472392 * k + 48109 := by
    unfold C
    simp [show (944784 * k + 96218) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 48109) = 1417176 * k + 144328 := by
    unfold C
    simp [show (472392 * k + 48109) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 144328) = 708588 * k + 72164 := by
    unfold C
    simp [show (1417176 * k + 144328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 72164) = 354294 * k + 36082 := by
    unfold C
    simp [show (708588 * k + 72164) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 36082) = 177147 * k + 18041 := by
    unfold C
    simp [show (354294 * k + 36082) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 26695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 26695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_26855 : ∀ k : Nat,
    iterate (262144 * k + 26855) 29 = 177147 * k + 18149 ∧
      177147 * k + 18149 < 262144 * k + 26855 := by
  intro k
  have h1 : C (262144 * k + 26855) = 786432 * k + 80566 := by
    unfold C
    simp [show (262144 * k + 26855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 80566) = 393216 * k + 40283 := by
    unfold C
    simp [show (786432 * k + 80566) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 40283) = 1179648 * k + 120850 := by
    unfold C
    simp [show (393216 * k + 40283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 120850) = 589824 * k + 60425 := by
    unfold C
    simp [show (1179648 * k + 120850) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 60425) = 1769472 * k + 181276 := by
    unfold C
    simp [show (589824 * k + 60425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 181276) = 884736 * k + 90638 := by
    unfold C
    simp [show (1769472 * k + 181276) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 90638) = 442368 * k + 45319 := by
    unfold C
    simp [show (884736 * k + 90638) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 45319) = 1327104 * k + 135958 := by
    unfold C
    simp [show (442368 * k + 45319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 135958) = 663552 * k + 67979 := by
    unfold C
    simp [show (1327104 * k + 135958) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 67979) = 1990656 * k + 203938 := by
    unfold C
    simp [show (663552 * k + 67979) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 203938) = 995328 * k + 101969 := by
    unfold C
    simp [show (1990656 * k + 203938) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 101969) = 2985984 * k + 305908 := by
    unfold C
    simp [show (995328 * k + 101969) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 305908) = 1492992 * k + 152954 := by
    unfold C
    simp [show (2985984 * k + 305908) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 152954) = 746496 * k + 76477 := by
    unfold C
    simp [show (1492992 * k + 152954) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 76477) = 2239488 * k + 229432 := by
    unfold C
    simp [show (746496 * k + 76477) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 229432) = 1119744 * k + 114716 := by
    unfold C
    simp [show (2239488 * k + 229432) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 114716) = 559872 * k + 57358 := by
    unfold C
    simp [show (1119744 * k + 114716) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 57358) = 279936 * k + 28679 := by
    unfold C
    simp [show (559872 * k + 57358) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 28679) = 839808 * k + 86038 := by
    unfold C
    simp [show (279936 * k + 28679) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 86038) = 419904 * k + 43019 := by
    unfold C
    simp [show (839808 * k + 86038) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 43019) = 1259712 * k + 129058 := by
    unfold C
    simp [show (419904 * k + 43019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 129058) = 629856 * k + 64529 := by
    unfold C
    simp [show (1259712 * k + 129058) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 64529) = 1889568 * k + 193588 := by
    unfold C
    simp [show (629856 * k + 64529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 193588) = 944784 * k + 96794 := by
    unfold C
    simp [show (1889568 * k + 193588) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 96794) = 472392 * k + 48397 := by
    unfold C
    simp [show (944784 * k + 96794) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 48397) = 1417176 * k + 145192 := by
    unfold C
    simp [show (472392 * k + 48397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 145192) = 708588 * k + 72596 := by
    unfold C
    simp [show (1417176 * k + 145192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 72596) = 354294 * k + 36298 := by
    unfold C
    simp [show (708588 * k + 72596) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 36298) = 177147 * k + 18149 := by
    unfold C
    simp [show (354294 * k + 36298) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 26855) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 26855))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard005
