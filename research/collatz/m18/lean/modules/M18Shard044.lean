import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard044

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_232303 : ∀ k : Nat,
    iterate (262144 * k + 232303) 29 = 177147 * k + 156983 ∧
      177147 * k + 156983 < 262144 * k + 232303 := by
  intro k
  have h1 : C (262144 * k + 232303) = 786432 * k + 696910 := by
    unfold C
    simp [show (262144 * k + 232303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 696910) = 393216 * k + 348455 := by
    unfold C
    simp [show (786432 * k + 696910) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 348455) = 1179648 * k + 1045366 := by
    unfold C
    simp [show (393216 * k + 348455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1045366) = 589824 * k + 522683 := by
    unfold C
    simp [show (1179648 * k + 1045366) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 522683) = 1769472 * k + 1568050 := by
    unfold C
    simp [show (589824 * k + 522683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1568050) = 884736 * k + 784025 := by
    unfold C
    simp [show (1769472 * k + 1568050) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 784025) = 2654208 * k + 2352076 := by
    unfold C
    simp [show (884736 * k + 784025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2352076) = 1327104 * k + 1176038 := by
    unfold C
    simp [show (2654208 * k + 2352076) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1176038) = 663552 * k + 588019 := by
    unfold C
    simp [show (1327104 * k + 1176038) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 588019) = 1990656 * k + 1764058 := by
    unfold C
    simp [show (663552 * k + 588019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1764058) = 995328 * k + 882029 := by
    unfold C
    simp [show (1990656 * k + 1764058) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 882029) = 2985984 * k + 2646088 := by
    unfold C
    simp [show (995328 * k + 882029) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2646088) = 1492992 * k + 1323044 := by
    unfold C
    simp [show (2985984 * k + 2646088) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1323044) = 746496 * k + 661522 := by
    unfold C
    simp [show (1492992 * k + 1323044) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 661522) = 373248 * k + 330761 := by
    unfold C
    simp [show (746496 * k + 661522) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 330761) = 1119744 * k + 992284 := by
    unfold C
    simp [show (373248 * k + 330761) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 992284) = 559872 * k + 496142 := by
    unfold C
    simp [show (1119744 * k + 992284) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 496142) = 279936 * k + 248071 := by
    unfold C
    simp [show (559872 * k + 496142) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 248071) = 839808 * k + 744214 := by
    unfold C
    simp [show (279936 * k + 248071) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 744214) = 419904 * k + 372107 := by
    unfold C
    simp [show (839808 * k + 744214) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 372107) = 1259712 * k + 1116322 := by
    unfold C
    simp [show (419904 * k + 372107) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1116322) = 629856 * k + 558161 := by
    unfold C
    simp [show (1259712 * k + 1116322) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 558161) = 1889568 * k + 1674484 := by
    unfold C
    simp [show (629856 * k + 558161) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1674484) = 944784 * k + 837242 := by
    unfold C
    simp [show (1889568 * k + 1674484) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 837242) = 472392 * k + 418621 := by
    unfold C
    simp [show (944784 * k + 837242) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 418621) = 1417176 * k + 1255864 := by
    unfold C
    simp [show (472392 * k + 418621) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1255864) = 708588 * k + 627932 := by
    unfold C
    simp [show (1417176 * k + 1255864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 627932) = 354294 * k + 313966 := by
    unfold C
    simp [show (708588 * k + 627932) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 313966) = 177147 * k + 156983 := by
    unfold C
    simp [show (354294 * k + 313966) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 232303) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 232303))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_232863 : ∀ k : Nat,
    iterate (262144 * k + 232863) 29 = 177147 * k + 157361 ∧
      177147 * k + 157361 < 262144 * k + 232863 := by
  intro k
  have h1 : C (262144 * k + 232863) = 786432 * k + 698590 := by
    unfold C
    simp [show (262144 * k + 232863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 698590) = 393216 * k + 349295 := by
    unfold C
    simp [show (786432 * k + 698590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349295) = 1179648 * k + 1047886 := by
    unfold C
    simp [show (393216 * k + 349295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1047886) = 589824 * k + 523943 := by
    unfold C
    simp [show (1179648 * k + 1047886) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 523943) = 1769472 * k + 1571830 := by
    unfold C
    simp [show (589824 * k + 523943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1571830) = 884736 * k + 785915 := by
    unfold C
    simp [show (1769472 * k + 1571830) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 785915) = 2654208 * k + 2357746 := by
    unfold C
    simp [show (884736 * k + 785915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2357746) = 1327104 * k + 1178873 := by
    unfold C
    simp [show (2654208 * k + 2357746) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1178873) = 3981312 * k + 3536620 := by
    unfold C
    simp [show (1327104 * k + 1178873) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3536620) = 1990656 * k + 1768310 := by
    unfold C
    simp [show (3981312 * k + 3536620) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1768310) = 995328 * k + 884155 := by
    unfold C
    simp [show (1990656 * k + 1768310) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 884155) = 2985984 * k + 2652466 := by
    unfold C
    simp [show (995328 * k + 884155) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2652466) = 1492992 * k + 1326233 := by
    unfold C
    simp [show (2985984 * k + 2652466) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1326233) = 4478976 * k + 3978700 := by
    unfold C
    simp [show (1492992 * k + 1326233) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3978700) = 2239488 * k + 1989350 := by
    unfold C
    simp [show (4478976 * k + 3978700) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1989350) = 1119744 * k + 994675 := by
    unfold C
    simp [show (2239488 * k + 1989350) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 994675) = 3359232 * k + 2984026 := by
    unfold C
    simp [show (1119744 * k + 994675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2984026) = 1679616 * k + 1492013 := by
    unfold C
    simp [show (3359232 * k + 2984026) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1492013) = 5038848 * k + 4476040 := by
    unfold C
    simp [show (1679616 * k + 1492013) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4476040) = 2519424 * k + 2238020 := by
    unfold C
    simp [show (5038848 * k + 4476040) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2238020) = 1259712 * k + 1119010 := by
    unfold C
    simp [show (2519424 * k + 2238020) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1119010) = 629856 * k + 559505 := by
    unfold C
    simp [show (1259712 * k + 1119010) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 559505) = 1889568 * k + 1678516 := by
    unfold C
    simp [show (629856 * k + 559505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1678516) = 944784 * k + 839258 := by
    unfold C
    simp [show (1889568 * k + 1678516) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 839258) = 472392 * k + 419629 := by
    unfold C
    simp [show (944784 * k + 839258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 419629) = 1417176 * k + 1258888 := by
    unfold C
    simp [show (472392 * k + 419629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1258888) = 708588 * k + 629444 := by
    unfold C
    simp [show (1417176 * k + 1258888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 629444) = 354294 * k + 314722 := by
    unfold C
    simp [show (708588 * k + 629444) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 314722) = 177147 * k + 157361 := by
    unfold C
    simp [show (354294 * k + 314722) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 232863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 232863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_232911 : ∀ k : Nat,
    iterate (262144 * k + 232911) 29 = 177147 * k + 157394 ∧
      177147 * k + 157394 < 262144 * k + 232911 := by
  intro k
  have h1 : C (262144 * k + 232911) = 786432 * k + 698734 := by
    unfold C
    simp [show (262144 * k + 232911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 698734) = 393216 * k + 349367 := by
    unfold C
    simp [show (786432 * k + 698734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349367) = 1179648 * k + 1048102 := by
    unfold C
    simp [show (393216 * k + 349367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1048102) = 589824 * k + 524051 := by
    unfold C
    simp [show (1179648 * k + 1048102) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 524051) = 1769472 * k + 1572154 := by
    unfold C
    simp [show (589824 * k + 524051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1572154) = 884736 * k + 786077 := by
    unfold C
    simp [show (1769472 * k + 1572154) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 786077) = 2654208 * k + 2358232 := by
    unfold C
    simp [show (884736 * k + 786077) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2358232) = 1327104 * k + 1179116 := by
    unfold C
    simp [show (2654208 * k + 2358232) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1179116) = 663552 * k + 589558 := by
    unfold C
    simp [show (1327104 * k + 1179116) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 589558) = 331776 * k + 294779 := by
    unfold C
    simp [show (663552 * k + 589558) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 294779) = 995328 * k + 884338 := by
    unfold C
    simp [show (331776 * k + 294779) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 884338) = 497664 * k + 442169 := by
    unfold C
    simp [show (995328 * k + 884338) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 442169) = 1492992 * k + 1326508 := by
    unfold C
    simp [show (497664 * k + 442169) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1326508) = 746496 * k + 663254 := by
    unfold C
    simp [show (1492992 * k + 1326508) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 663254) = 373248 * k + 331627 := by
    unfold C
    simp [show (746496 * k + 663254) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 331627) = 1119744 * k + 994882 := by
    unfold C
    simp [show (373248 * k + 331627) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 994882) = 559872 * k + 497441 := by
    unfold C
    simp [show (1119744 * k + 994882) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 497441) = 1679616 * k + 1492324 := by
    unfold C
    simp [show (559872 * k + 497441) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1492324) = 839808 * k + 746162 := by
    unfold C
    simp [show (1679616 * k + 1492324) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 746162) = 419904 * k + 373081 := by
    unfold C
    simp [show (839808 * k + 746162) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 373081) = 1259712 * k + 1119244 := by
    unfold C
    simp [show (419904 * k + 373081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1119244) = 629856 * k + 559622 := by
    unfold C
    simp [show (1259712 * k + 1119244) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 559622) = 314928 * k + 279811 := by
    unfold C
    simp [show (629856 * k + 559622) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 279811) = 944784 * k + 839434 := by
    unfold C
    simp [show (314928 * k + 279811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 839434) = 472392 * k + 419717 := by
    unfold C
    simp [show (944784 * k + 839434) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 419717) = 1417176 * k + 1259152 := by
    unfold C
    simp [show (472392 * k + 419717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1259152) = 708588 * k + 629576 := by
    unfold C
    simp [show (1417176 * k + 1259152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 629576) = 354294 * k + 314788 := by
    unfold C
    simp [show (708588 * k + 629576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 314788) = 177147 * k + 157394 := by
    unfold C
    simp [show (354294 * k + 314788) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 232911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 232911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_232943 : ∀ k : Nat,
    iterate (262144 * k + 232943) 29 = 177147 * k + 157415 ∧
      177147 * k + 157415 < 262144 * k + 232943 := by
  intro k
  have h1 : C (262144 * k + 232943) = 786432 * k + 698830 := by
    unfold C
    simp [show (262144 * k + 232943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 698830) = 393216 * k + 349415 := by
    unfold C
    simp [show (786432 * k + 698830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349415) = 1179648 * k + 1048246 := by
    unfold C
    simp [show (393216 * k + 349415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1048246) = 589824 * k + 524123 := by
    unfold C
    simp [show (1179648 * k + 1048246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 524123) = 1769472 * k + 1572370 := by
    unfold C
    simp [show (589824 * k + 524123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1572370) = 884736 * k + 786185 := by
    unfold C
    simp [show (1769472 * k + 1572370) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 786185) = 2654208 * k + 2358556 := by
    unfold C
    simp [show (884736 * k + 786185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2358556) = 1327104 * k + 1179278 := by
    unfold C
    simp [show (2654208 * k + 2358556) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1179278) = 663552 * k + 589639 := by
    unfold C
    simp [show (1327104 * k + 1179278) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 589639) = 1990656 * k + 1768918 := by
    unfold C
    simp [show (663552 * k + 589639) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1768918) = 995328 * k + 884459 := by
    unfold C
    simp [show (1990656 * k + 1768918) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 884459) = 2985984 * k + 2653378 := by
    unfold C
    simp [show (995328 * k + 884459) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2653378) = 1492992 * k + 1326689 := by
    unfold C
    simp [show (2985984 * k + 2653378) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1326689) = 4478976 * k + 3980068 := by
    unfold C
    simp [show (1492992 * k + 1326689) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3980068) = 2239488 * k + 1990034 := by
    unfold C
    simp [show (4478976 * k + 3980068) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1990034) = 1119744 * k + 995017 := by
    unfold C
    simp [show (2239488 * k + 1990034) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 995017) = 3359232 * k + 2985052 := by
    unfold C
    simp [show (1119744 * k + 995017) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2985052) = 1679616 * k + 1492526 := by
    unfold C
    simp [show (3359232 * k + 2985052) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1492526) = 839808 * k + 746263 := by
    unfold C
    simp [show (1679616 * k + 1492526) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 746263) = 2519424 * k + 2238790 := by
    unfold C
    simp [show (839808 * k + 746263) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2238790) = 1259712 * k + 1119395 := by
    unfold C
    simp [show (2519424 * k + 2238790) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1119395) = 3779136 * k + 3358186 := by
    unfold C
    simp [show (1259712 * k + 1119395) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3358186) = 1889568 * k + 1679093 := by
    unfold C
    simp [show (3779136 * k + 3358186) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1679093) = 5668704 * k + 5037280 := by
    unfold C
    simp [show (1889568 * k + 1679093) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5037280) = 2834352 * k + 2518640 := by
    unfold C
    simp [show (5668704 * k + 5037280) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2518640) = 1417176 * k + 1259320 := by
    unfold C
    simp [show (2834352 * k + 2518640) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1259320) = 708588 * k + 629660 := by
    unfold C
    simp [show (1417176 * k + 1259320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 629660) = 354294 * k + 314830 := by
    unfold C
    simp [show (708588 * k + 629660) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 314830) = 177147 * k + 157415 := by
    unfold C
    simp [show (354294 * k + 314830) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 232943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 232943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_233071 : ∀ k : Nat,
    iterate (262144 * k + 233071) 29 = 177147 * k + 157502 ∧
      177147 * k + 157502 < 262144 * k + 233071 := by
  intro k
  have h1 : C (262144 * k + 233071) = 786432 * k + 699214 := by
    unfold C
    simp [show (262144 * k + 233071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 699214) = 393216 * k + 349607 := by
    unfold C
    simp [show (786432 * k + 699214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349607) = 1179648 * k + 1048822 := by
    unfold C
    simp [show (393216 * k + 349607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1048822) = 589824 * k + 524411 := by
    unfold C
    simp [show (1179648 * k + 1048822) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 524411) = 1769472 * k + 1573234 := by
    unfold C
    simp [show (589824 * k + 524411) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1573234) = 884736 * k + 786617 := by
    unfold C
    simp [show (1769472 * k + 1573234) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 786617) = 2654208 * k + 2359852 := by
    unfold C
    simp [show (884736 * k + 786617) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2359852) = 1327104 * k + 1179926 := by
    unfold C
    simp [show (2654208 * k + 2359852) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1179926) = 663552 * k + 589963 := by
    unfold C
    simp [show (1327104 * k + 1179926) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 589963) = 1990656 * k + 1769890 := by
    unfold C
    simp [show (663552 * k + 589963) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1769890) = 995328 * k + 884945 := by
    unfold C
    simp [show (1990656 * k + 1769890) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 884945) = 2985984 * k + 2654836 := by
    unfold C
    simp [show (995328 * k + 884945) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2654836) = 1492992 * k + 1327418 := by
    unfold C
    simp [show (2985984 * k + 2654836) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1327418) = 746496 * k + 663709 := by
    unfold C
    simp [show (1492992 * k + 1327418) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 663709) = 2239488 * k + 1991128 := by
    unfold C
    simp [show (746496 * k + 663709) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1991128) = 1119744 * k + 995564 := by
    unfold C
    simp [show (2239488 * k + 1991128) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 995564) = 559872 * k + 497782 := by
    unfold C
    simp [show (1119744 * k + 995564) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 497782) = 279936 * k + 248891 := by
    unfold C
    simp [show (559872 * k + 497782) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 248891) = 839808 * k + 746674 := by
    unfold C
    simp [show (279936 * k + 248891) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 746674) = 419904 * k + 373337 := by
    unfold C
    simp [show (839808 * k + 746674) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 373337) = 1259712 * k + 1120012 := by
    unfold C
    simp [show (419904 * k + 373337) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1120012) = 629856 * k + 560006 := by
    unfold C
    simp [show (1259712 * k + 1120012) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 560006) = 314928 * k + 280003 := by
    unfold C
    simp [show (629856 * k + 560006) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 280003) = 944784 * k + 840010 := by
    unfold C
    simp [show (314928 * k + 280003) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 840010) = 472392 * k + 420005 := by
    unfold C
    simp [show (944784 * k + 840010) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 420005) = 1417176 * k + 1260016 := by
    unfold C
    simp [show (472392 * k + 420005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1260016) = 708588 * k + 630008 := by
    unfold C
    simp [show (1417176 * k + 1260016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 630008) = 354294 * k + 315004 := by
    unfold C
    simp [show (708588 * k + 630008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 315004) = 177147 * k + 157502 := by
    unfold C
    simp [show (354294 * k + 315004) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 233071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 233071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_233191 : ∀ k : Nat,
    iterate (262144 * k + 233191) 29 = 177147 * k + 157583 ∧
      177147 * k + 157583 < 262144 * k + 233191 := by
  intro k
  have h1 : C (262144 * k + 233191) = 786432 * k + 699574 := by
    unfold C
    simp [show (262144 * k + 233191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 699574) = 393216 * k + 349787 := by
    unfold C
    simp [show (786432 * k + 699574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349787) = 1179648 * k + 1049362 := by
    unfold C
    simp [show (393216 * k + 349787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1049362) = 589824 * k + 524681 := by
    unfold C
    simp [show (1179648 * k + 1049362) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 524681) = 1769472 * k + 1574044 := by
    unfold C
    simp [show (589824 * k + 524681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1574044) = 884736 * k + 787022 := by
    unfold C
    simp [show (1769472 * k + 1574044) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 787022) = 442368 * k + 393511 := by
    unfold C
    simp [show (884736 * k + 787022) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 393511) = 1327104 * k + 1180534 := by
    unfold C
    simp [show (442368 * k + 393511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1180534) = 663552 * k + 590267 := by
    unfold C
    simp [show (1327104 * k + 1180534) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 590267) = 1990656 * k + 1770802 := by
    unfold C
    simp [show (663552 * k + 590267) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1770802) = 995328 * k + 885401 := by
    unfold C
    simp [show (1990656 * k + 1770802) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 885401) = 2985984 * k + 2656204 := by
    unfold C
    simp [show (995328 * k + 885401) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2656204) = 1492992 * k + 1328102 := by
    unfold C
    simp [show (2985984 * k + 2656204) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1328102) = 746496 * k + 664051 := by
    unfold C
    simp [show (1492992 * k + 1328102) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 664051) = 2239488 * k + 1992154 := by
    unfold C
    simp [show (746496 * k + 664051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1992154) = 1119744 * k + 996077 := by
    unfold C
    simp [show (2239488 * k + 1992154) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 996077) = 3359232 * k + 2988232 := by
    unfold C
    simp [show (1119744 * k + 996077) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2988232) = 1679616 * k + 1494116 := by
    unfold C
    simp [show (3359232 * k + 2988232) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1494116) = 839808 * k + 747058 := by
    unfold C
    simp [show (1679616 * k + 1494116) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 747058) = 419904 * k + 373529 := by
    unfold C
    simp [show (839808 * k + 747058) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 373529) = 1259712 * k + 1120588 := by
    unfold C
    simp [show (419904 * k + 373529) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1120588) = 629856 * k + 560294 := by
    unfold C
    simp [show (1259712 * k + 1120588) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 560294) = 314928 * k + 280147 := by
    unfold C
    simp [show (629856 * k + 560294) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 280147) = 944784 * k + 840442 := by
    unfold C
    simp [show (314928 * k + 280147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 840442) = 472392 * k + 420221 := by
    unfold C
    simp [show (944784 * k + 840442) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 420221) = 1417176 * k + 1260664 := by
    unfold C
    simp [show (472392 * k + 420221) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1260664) = 708588 * k + 630332 := by
    unfold C
    simp [show (1417176 * k + 1260664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 630332) = 354294 * k + 315166 := by
    unfold C
    simp [show (708588 * k + 630332) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 315166) = 177147 * k + 157583 := by
    unfold C
    simp [show (354294 * k + 315166) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 233191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 233191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_233199 : ∀ k : Nat,
    iterate (262144 * k + 233199) 29 = 177147 * k + 157588 ∧
      177147 * k + 157588 < 262144 * k + 233199 := by
  intro k
  have h1 : C (262144 * k + 233199) = 786432 * k + 699598 := by
    unfold C
    simp [show (262144 * k + 233199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 699598) = 393216 * k + 349799 := by
    unfold C
    simp [show (786432 * k + 699598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 349799) = 1179648 * k + 1049398 := by
    unfold C
    simp [show (393216 * k + 349799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1049398) = 589824 * k + 524699 := by
    unfold C
    simp [show (1179648 * k + 1049398) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 524699) = 1769472 * k + 1574098 := by
    unfold C
    simp [show (589824 * k + 524699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1574098) = 884736 * k + 787049 := by
    unfold C
    simp [show (1769472 * k + 1574098) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 787049) = 2654208 * k + 2361148 := by
    unfold C
    simp [show (884736 * k + 787049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2361148) = 1327104 * k + 1180574 := by
    unfold C
    simp [show (2654208 * k + 2361148) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1180574) = 663552 * k + 590287 := by
    unfold C
    simp [show (1327104 * k + 1180574) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 590287) = 1990656 * k + 1770862 := by
    unfold C
    simp [show (663552 * k + 590287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1770862) = 995328 * k + 885431 := by
    unfold C
    simp [show (1990656 * k + 1770862) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 885431) = 2985984 * k + 2656294 := by
    unfold C
    simp [show (995328 * k + 885431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2656294) = 1492992 * k + 1328147 := by
    unfold C
    simp [show (2985984 * k + 2656294) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1328147) = 4478976 * k + 3984442 := by
    unfold C
    simp [show (1492992 * k + 1328147) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3984442) = 2239488 * k + 1992221 := by
    unfold C
    simp [show (4478976 * k + 3984442) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1992221) = 6718464 * k + 5976664 := by
    unfold C
    simp [show (2239488 * k + 1992221) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5976664) = 3359232 * k + 2988332 := by
    unfold C
    simp [show (6718464 * k + 5976664) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2988332) = 1679616 * k + 1494166 := by
    unfold C
    simp [show (3359232 * k + 2988332) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1494166) = 839808 * k + 747083 := by
    unfold C
    simp [show (1679616 * k + 1494166) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 747083) = 2519424 * k + 2241250 := by
    unfold C
    simp [show (839808 * k + 747083) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2241250) = 1259712 * k + 1120625 := by
    unfold C
    simp [show (2519424 * k + 2241250) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1120625) = 3779136 * k + 3361876 := by
    unfold C
    simp [show (1259712 * k + 1120625) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3361876) = 1889568 * k + 1680938 := by
    unfold C
    simp [show (3779136 * k + 3361876) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1680938) = 944784 * k + 840469 := by
    unfold C
    simp [show (1889568 * k + 1680938) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 840469) = 2834352 * k + 2521408 := by
    unfold C
    simp [show (944784 * k + 840469) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2521408) = 1417176 * k + 1260704 := by
    unfold C
    simp [show (2834352 * k + 2521408) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1260704) = 708588 * k + 630352 := by
    unfold C
    simp [show (1417176 * k + 1260704) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 630352) = 354294 * k + 315176 := by
    unfold C
    simp [show (708588 * k + 630352) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 315176) = 177147 * k + 157588 := by
    unfold C
    simp [show (354294 * k + 315176) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 233199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 233199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_233711 : ∀ k : Nat,
    iterate (262144 * k + 233711) 29 = 177147 * k + 157934 ∧
      177147 * k + 157934 < 262144 * k + 233711 := by
  intro k
  have h1 : C (262144 * k + 233711) = 786432 * k + 701134 := by
    unfold C
    simp [show (262144 * k + 233711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 701134) = 393216 * k + 350567 := by
    unfold C
    simp [show (786432 * k + 701134) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 350567) = 1179648 * k + 1051702 := by
    unfold C
    simp [show (393216 * k + 350567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1051702) = 589824 * k + 525851 := by
    unfold C
    simp [show (1179648 * k + 1051702) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 525851) = 1769472 * k + 1577554 := by
    unfold C
    simp [show (589824 * k + 525851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1577554) = 884736 * k + 788777 := by
    unfold C
    simp [show (1769472 * k + 1577554) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 788777) = 2654208 * k + 2366332 := by
    unfold C
    simp [show (884736 * k + 788777) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2366332) = 1327104 * k + 1183166 := by
    unfold C
    simp [show (2654208 * k + 2366332) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1183166) = 663552 * k + 591583 := by
    unfold C
    simp [show (1327104 * k + 1183166) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 591583) = 1990656 * k + 1774750 := by
    unfold C
    simp [show (663552 * k + 591583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1774750) = 995328 * k + 887375 := by
    unfold C
    simp [show (1990656 * k + 1774750) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 887375) = 2985984 * k + 2662126 := by
    unfold C
    simp [show (995328 * k + 887375) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2662126) = 1492992 * k + 1331063 := by
    unfold C
    simp [show (2985984 * k + 2662126) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1331063) = 4478976 * k + 3993190 := by
    unfold C
    simp [show (1492992 * k + 1331063) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3993190) = 2239488 * k + 1996595 := by
    unfold C
    simp [show (4478976 * k + 3993190) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1996595) = 6718464 * k + 5989786 := by
    unfold C
    simp [show (2239488 * k + 1996595) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5989786) = 3359232 * k + 2994893 := by
    unfold C
    simp [show (6718464 * k + 5989786) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2994893) = 10077696 * k + 8984680 := by
    unfold C
    simp [show (3359232 * k + 2994893) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8984680) = 5038848 * k + 4492340 := by
    unfold C
    simp [show (10077696 * k + 8984680) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4492340) = 2519424 * k + 2246170 := by
    unfold C
    simp [show (5038848 * k + 4492340) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2246170) = 1259712 * k + 1123085 := by
    unfold C
    simp [show (2519424 * k + 2246170) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1123085) = 3779136 * k + 3369256 := by
    unfold C
    simp [show (1259712 * k + 1123085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3369256) = 1889568 * k + 1684628 := by
    unfold C
    simp [show (3779136 * k + 3369256) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1684628) = 944784 * k + 842314 := by
    unfold C
    simp [show (1889568 * k + 1684628) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 842314) = 472392 * k + 421157 := by
    unfold C
    simp [show (944784 * k + 842314) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 421157) = 1417176 * k + 1263472 := by
    unfold C
    simp [show (472392 * k + 421157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1263472) = 708588 * k + 631736 := by
    unfold C
    simp [show (1417176 * k + 1263472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 631736) = 354294 * k + 315868 := by
    unfold C
    simp [show (708588 * k + 631736) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 315868) = 177147 * k + 157934 := by
    unfold C
    simp [show (354294 * k + 315868) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 233711) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 233711))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_233755 : ∀ k : Nat,
    iterate (262144 * k + 233755) 29 = 177147 * k + 157964 ∧
      177147 * k + 157964 < 262144 * k + 233755 := by
  intro k
  have h1 : C (262144 * k + 233755) = 786432 * k + 701266 := by
    unfold C
    simp [show (262144 * k + 233755) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 701266) = 393216 * k + 350633 := by
    unfold C
    simp [show (786432 * k + 701266) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 350633) = 1179648 * k + 1051900 := by
    unfold C
    simp [show (393216 * k + 350633) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1051900) = 589824 * k + 525950 := by
    unfold C
    simp [show (1179648 * k + 1051900) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 525950) = 294912 * k + 262975 := by
    unfold C
    simp [show (589824 * k + 525950) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 262975) = 884736 * k + 788926 := by
    unfold C
    simp [show (294912 * k + 262975) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 788926) = 442368 * k + 394463 := by
    unfold C
    simp [show (884736 * k + 788926) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 394463) = 1327104 * k + 1183390 := by
    unfold C
    simp [show (442368 * k + 394463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1183390) = 663552 * k + 591695 := by
    unfold C
    simp [show (1327104 * k + 1183390) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 591695) = 1990656 * k + 1775086 := by
    unfold C
    simp [show (663552 * k + 591695) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1775086) = 995328 * k + 887543 := by
    unfold C
    simp [show (1990656 * k + 1775086) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 887543) = 2985984 * k + 2662630 := by
    unfold C
    simp [show (995328 * k + 887543) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2662630) = 1492992 * k + 1331315 := by
    unfold C
    simp [show (2985984 * k + 2662630) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1331315) = 4478976 * k + 3993946 := by
    unfold C
    simp [show (1492992 * k + 1331315) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3993946) = 2239488 * k + 1996973 := by
    unfold C
    simp [show (4478976 * k + 3993946) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1996973) = 6718464 * k + 5990920 := by
    unfold C
    simp [show (2239488 * k + 1996973) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5990920) = 3359232 * k + 2995460 := by
    unfold C
    simp [show (6718464 * k + 5990920) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2995460) = 1679616 * k + 1497730 := by
    unfold C
    simp [show (3359232 * k + 2995460) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1497730) = 839808 * k + 748865 := by
    unfold C
    simp [show (1679616 * k + 1497730) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 748865) = 2519424 * k + 2246596 := by
    unfold C
    simp [show (839808 * k + 748865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2246596) = 1259712 * k + 1123298 := by
    unfold C
    simp [show (2519424 * k + 2246596) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1123298) = 629856 * k + 561649 := by
    unfold C
    simp [show (1259712 * k + 1123298) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 561649) = 1889568 * k + 1684948 := by
    unfold C
    simp [show (629856 * k + 561649) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1684948) = 944784 * k + 842474 := by
    unfold C
    simp [show (1889568 * k + 1684948) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 842474) = 472392 * k + 421237 := by
    unfold C
    simp [show (944784 * k + 842474) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 421237) = 1417176 * k + 1263712 := by
    unfold C
    simp [show (472392 * k + 421237) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1263712) = 708588 * k + 631856 := by
    unfold C
    simp [show (1417176 * k + 1263712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 631856) = 354294 * k + 315928 := by
    unfold C
    simp [show (708588 * k + 631856) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 315928) = 177147 * k + 157964 := by
    unfold C
    simp [show (354294 * k + 315928) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 233755) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 233755))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_235367 : ∀ k : Nat,
    iterate (262144 * k + 235367) 29 = 177147 * k + 159053 ∧
      177147 * k + 159053 < 262144 * k + 235367 := by
  intro k
  have h1 : C (262144 * k + 235367) = 786432 * k + 706102 := by
    unfold C
    simp [show (262144 * k + 235367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 706102) = 393216 * k + 353051 := by
    unfold C
    simp [show (786432 * k + 706102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 353051) = 1179648 * k + 1059154 := by
    unfold C
    simp [show (393216 * k + 353051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1059154) = 589824 * k + 529577 := by
    unfold C
    simp [show (1179648 * k + 1059154) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 529577) = 1769472 * k + 1588732 := by
    unfold C
    simp [show (589824 * k + 529577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1588732) = 884736 * k + 794366 := by
    unfold C
    simp [show (1769472 * k + 1588732) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 794366) = 442368 * k + 397183 := by
    unfold C
    simp [show (884736 * k + 794366) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 397183) = 1327104 * k + 1191550 := by
    unfold C
    simp [show (442368 * k + 397183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1191550) = 663552 * k + 595775 := by
    unfold C
    simp [show (1327104 * k + 1191550) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 595775) = 1990656 * k + 1787326 := by
    unfold C
    simp [show (663552 * k + 595775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1787326) = 995328 * k + 893663 := by
    unfold C
    simp [show (1990656 * k + 1787326) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 893663) = 2985984 * k + 2680990 := by
    unfold C
    simp [show (995328 * k + 893663) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2680990) = 1492992 * k + 1340495 := by
    unfold C
    simp [show (2985984 * k + 2680990) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1340495) = 4478976 * k + 4021486 := by
    unfold C
    simp [show (1492992 * k + 1340495) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4021486) = 2239488 * k + 2010743 := by
    unfold C
    simp [show (4478976 * k + 4021486) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2010743) = 6718464 * k + 6032230 := by
    unfold C
    simp [show (2239488 * k + 2010743) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6032230) = 3359232 * k + 3016115 := by
    unfold C
    simp [show (6718464 * k + 6032230) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3016115) = 10077696 * k + 9048346 := by
    unfold C
    simp [show (3359232 * k + 3016115) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9048346) = 5038848 * k + 4524173 := by
    unfold C
    simp [show (10077696 * k + 9048346) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4524173) = 15116544 * k + 13572520 := by
    unfold C
    simp [show (5038848 * k + 4524173) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 13572520) = 7558272 * k + 6786260 := by
    unfold C
    simp [show (15116544 * k + 13572520) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6786260) = 3779136 * k + 3393130 := by
    unfold C
    simp [show (7558272 * k + 6786260) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3393130) = 1889568 * k + 1696565 := by
    unfold C
    simp [show (3779136 * k + 3393130) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1696565) = 5668704 * k + 5089696 := by
    unfold C
    simp [show (1889568 * k + 1696565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5089696) = 2834352 * k + 2544848 := by
    unfold C
    simp [show (5668704 * k + 5089696) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2544848) = 1417176 * k + 1272424 := by
    unfold C
    simp [show (2834352 * k + 2544848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1272424) = 708588 * k + 636212 := by
    unfold C
    simp [show (1417176 * k + 1272424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 636212) = 354294 * k + 318106 := by
    unfold C
    simp [show (708588 * k + 636212) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 318106) = 177147 * k + 159053 := by
    unfold C
    simp [show (354294 * k + 318106) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 235367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 235367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_235547 : ∀ k : Nat,
    iterate (262144 * k + 235547) 29 = 177147 * k + 159175 ∧
      177147 * k + 159175 < 262144 * k + 235547 := by
  intro k
  have h1 : C (262144 * k + 235547) = 786432 * k + 706642 := by
    unfold C
    simp [show (262144 * k + 235547) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 706642) = 393216 * k + 353321 := by
    unfold C
    simp [show (786432 * k + 706642) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 353321) = 1179648 * k + 1059964 := by
    unfold C
    simp [show (393216 * k + 353321) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1059964) = 589824 * k + 529982 := by
    unfold C
    simp [show (1179648 * k + 1059964) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 529982) = 294912 * k + 264991 := by
    unfold C
    simp [show (589824 * k + 529982) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 264991) = 884736 * k + 794974 := by
    unfold C
    simp [show (294912 * k + 264991) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 794974) = 442368 * k + 397487 := by
    unfold C
    simp [show (884736 * k + 794974) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 397487) = 1327104 * k + 1192462 := by
    unfold C
    simp [show (442368 * k + 397487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1192462) = 663552 * k + 596231 := by
    unfold C
    simp [show (1327104 * k + 1192462) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 596231) = 1990656 * k + 1788694 := by
    unfold C
    simp [show (663552 * k + 596231) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1788694) = 995328 * k + 894347 := by
    unfold C
    simp [show (1990656 * k + 1788694) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 894347) = 2985984 * k + 2683042 := by
    unfold C
    simp [show (995328 * k + 894347) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2683042) = 1492992 * k + 1341521 := by
    unfold C
    simp [show (2985984 * k + 2683042) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1341521) = 4478976 * k + 4024564 := by
    unfold C
    simp [show (1492992 * k + 1341521) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4024564) = 2239488 * k + 2012282 := by
    unfold C
    simp [show (4478976 * k + 4024564) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2012282) = 1119744 * k + 1006141 := by
    unfold C
    simp [show (2239488 * k + 2012282) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1006141) = 3359232 * k + 3018424 := by
    unfold C
    simp [show (1119744 * k + 1006141) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3018424) = 1679616 * k + 1509212 := by
    unfold C
    simp [show (3359232 * k + 3018424) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1509212) = 839808 * k + 754606 := by
    unfold C
    simp [show (1679616 * k + 1509212) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 754606) = 419904 * k + 377303 := by
    unfold C
    simp [show (839808 * k + 754606) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 377303) = 1259712 * k + 1131910 := by
    unfold C
    simp [show (419904 * k + 377303) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1131910) = 629856 * k + 565955 := by
    unfold C
    simp [show (1259712 * k + 1131910) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 565955) = 1889568 * k + 1697866 := by
    unfold C
    simp [show (629856 * k + 565955) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1697866) = 944784 * k + 848933 := by
    unfold C
    simp [show (1889568 * k + 1697866) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 848933) = 2834352 * k + 2546800 := by
    unfold C
    simp [show (944784 * k + 848933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2546800) = 1417176 * k + 1273400 := by
    unfold C
    simp [show (2834352 * k + 2546800) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1273400) = 708588 * k + 636700 := by
    unfold C
    simp [show (1417176 * k + 1273400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 636700) = 354294 * k + 318350 := by
    unfold C
    simp [show (708588 * k + 636700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 318350) = 177147 * k + 159175 := by
    unfold C
    simp [show (354294 * k + 318350) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 235547) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 235547))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_236015 : ∀ k : Nat,
    iterate (262144 * k + 236015) 29 = 177147 * k + 159491 ∧
      177147 * k + 159491 < 262144 * k + 236015 := by
  intro k
  have h1 : C (262144 * k + 236015) = 786432 * k + 708046 := by
    unfold C
    simp [show (262144 * k + 236015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 708046) = 393216 * k + 354023 := by
    unfold C
    simp [show (786432 * k + 708046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 354023) = 1179648 * k + 1062070 := by
    unfold C
    simp [show (393216 * k + 354023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1062070) = 589824 * k + 531035 := by
    unfold C
    simp [show (1179648 * k + 1062070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 531035) = 1769472 * k + 1593106 := by
    unfold C
    simp [show (589824 * k + 531035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1593106) = 884736 * k + 796553 := by
    unfold C
    simp [show (1769472 * k + 1593106) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 796553) = 2654208 * k + 2389660 := by
    unfold C
    simp [show (884736 * k + 796553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2389660) = 1327104 * k + 1194830 := by
    unfold C
    simp [show (2654208 * k + 2389660) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1194830) = 663552 * k + 597415 := by
    unfold C
    simp [show (1327104 * k + 1194830) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 597415) = 1990656 * k + 1792246 := by
    unfold C
    simp [show (663552 * k + 597415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1792246) = 995328 * k + 896123 := by
    unfold C
    simp [show (1990656 * k + 1792246) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 896123) = 2985984 * k + 2688370 := by
    unfold C
    simp [show (995328 * k + 896123) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2688370) = 1492992 * k + 1344185 := by
    unfold C
    simp [show (2985984 * k + 2688370) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1344185) = 4478976 * k + 4032556 := by
    unfold C
    simp [show (1492992 * k + 1344185) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4032556) = 2239488 * k + 2016278 := by
    unfold C
    simp [show (4478976 * k + 4032556) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2016278) = 1119744 * k + 1008139 := by
    unfold C
    simp [show (2239488 * k + 2016278) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1008139) = 3359232 * k + 3024418 := by
    unfold C
    simp [show (1119744 * k + 1008139) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3024418) = 1679616 * k + 1512209 := by
    unfold C
    simp [show (3359232 * k + 3024418) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1512209) = 5038848 * k + 4536628 := by
    unfold C
    simp [show (1679616 * k + 1512209) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4536628) = 2519424 * k + 2268314 := by
    unfold C
    simp [show (5038848 * k + 4536628) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2268314) = 1259712 * k + 1134157 := by
    unfold C
    simp [show (2519424 * k + 2268314) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1134157) = 3779136 * k + 3402472 := by
    unfold C
    simp [show (1259712 * k + 1134157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3402472) = 1889568 * k + 1701236 := by
    unfold C
    simp [show (3779136 * k + 3402472) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1701236) = 944784 * k + 850618 := by
    unfold C
    simp [show (1889568 * k + 1701236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 850618) = 472392 * k + 425309 := by
    unfold C
    simp [show (944784 * k + 850618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 425309) = 1417176 * k + 1275928 := by
    unfold C
    simp [show (472392 * k + 425309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1275928) = 708588 * k + 637964 := by
    unfold C
    simp [show (1417176 * k + 1275928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 637964) = 354294 * k + 318982 := by
    unfold C
    simp [show (708588 * k + 637964) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 318982) = 177147 * k + 159491 := by
    unfold C
    simp [show (354294 * k + 318982) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 236015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 236015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_236827 : ∀ k : Nat,
    iterate (262144 * k + 236827) 29 = 177147 * k + 160040 ∧
      177147 * k + 160040 < 262144 * k + 236827 := by
  intro k
  have h1 : C (262144 * k + 236827) = 786432 * k + 710482 := by
    unfold C
    simp [show (262144 * k + 236827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 710482) = 393216 * k + 355241 := by
    unfold C
    simp [show (786432 * k + 710482) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 355241) = 1179648 * k + 1065724 := by
    unfold C
    simp [show (393216 * k + 355241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1065724) = 589824 * k + 532862 := by
    unfold C
    simp [show (1179648 * k + 1065724) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 532862) = 294912 * k + 266431 := by
    unfold C
    simp [show (589824 * k + 532862) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 266431) = 884736 * k + 799294 := by
    unfold C
    simp [show (294912 * k + 266431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 799294) = 442368 * k + 399647 := by
    unfold C
    simp [show (884736 * k + 799294) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 399647) = 1327104 * k + 1198942 := by
    unfold C
    simp [show (442368 * k + 399647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1198942) = 663552 * k + 599471 := by
    unfold C
    simp [show (1327104 * k + 1198942) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 599471) = 1990656 * k + 1798414 := by
    unfold C
    simp [show (663552 * k + 599471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1798414) = 995328 * k + 899207 := by
    unfold C
    simp [show (1990656 * k + 1798414) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 899207) = 2985984 * k + 2697622 := by
    unfold C
    simp [show (995328 * k + 899207) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2697622) = 1492992 * k + 1348811 := by
    unfold C
    simp [show (2985984 * k + 2697622) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1348811) = 4478976 * k + 4046434 := by
    unfold C
    simp [show (1492992 * k + 1348811) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4046434) = 2239488 * k + 2023217 := by
    unfold C
    simp [show (4478976 * k + 4046434) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2023217) = 6718464 * k + 6069652 := by
    unfold C
    simp [show (2239488 * k + 2023217) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6069652) = 3359232 * k + 3034826 := by
    unfold C
    simp [show (6718464 * k + 6069652) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3034826) = 1679616 * k + 1517413 := by
    unfold C
    simp [show (3359232 * k + 3034826) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1517413) = 5038848 * k + 4552240 := by
    unfold C
    simp [show (1679616 * k + 1517413) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4552240) = 2519424 * k + 2276120 := by
    unfold C
    simp [show (5038848 * k + 4552240) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2276120) = 1259712 * k + 1138060 := by
    unfold C
    simp [show (2519424 * k + 2276120) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1138060) = 629856 * k + 569030 := by
    unfold C
    simp [show (1259712 * k + 1138060) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 569030) = 314928 * k + 284515 := by
    unfold C
    simp [show (629856 * k + 569030) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 284515) = 944784 * k + 853546 := by
    unfold C
    simp [show (314928 * k + 284515) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 853546) = 472392 * k + 426773 := by
    unfold C
    simp [show (944784 * k + 853546) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 426773) = 1417176 * k + 1280320 := by
    unfold C
    simp [show (472392 * k + 426773) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1280320) = 708588 * k + 640160 := by
    unfold C
    simp [show (1417176 * k + 1280320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 640160) = 354294 * k + 320080 := by
    unfold C
    simp [show (708588 * k + 640160) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 320080) = 177147 * k + 160040 := by
    unfold C
    simp [show (354294 * k + 320080) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 236827) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 236827))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_236903 : ∀ k : Nat,
    iterate (262144 * k + 236903) 29 = 177147 * k + 160091 ∧
      177147 * k + 160091 < 262144 * k + 236903 := by
  intro k
  have h1 : C (262144 * k + 236903) = 786432 * k + 710710 := by
    unfold C
    simp [show (262144 * k + 236903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 710710) = 393216 * k + 355355 := by
    unfold C
    simp [show (786432 * k + 710710) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 355355) = 1179648 * k + 1066066 := by
    unfold C
    simp [show (393216 * k + 355355) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1066066) = 589824 * k + 533033 := by
    unfold C
    simp [show (1179648 * k + 1066066) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 533033) = 1769472 * k + 1599100 := by
    unfold C
    simp [show (589824 * k + 533033) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1599100) = 884736 * k + 799550 := by
    unfold C
    simp [show (1769472 * k + 1599100) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 799550) = 442368 * k + 399775 := by
    unfold C
    simp [show (884736 * k + 799550) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 399775) = 1327104 * k + 1199326 := by
    unfold C
    simp [show (442368 * k + 399775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1199326) = 663552 * k + 599663 := by
    unfold C
    simp [show (1327104 * k + 1199326) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 599663) = 1990656 * k + 1798990 := by
    unfold C
    simp [show (663552 * k + 599663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1798990) = 995328 * k + 899495 := by
    unfold C
    simp [show (1990656 * k + 1798990) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 899495) = 2985984 * k + 2698486 := by
    unfold C
    simp [show (995328 * k + 899495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2698486) = 1492992 * k + 1349243 := by
    unfold C
    simp [show (2985984 * k + 2698486) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1349243) = 4478976 * k + 4047730 := by
    unfold C
    simp [show (1492992 * k + 1349243) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4047730) = 2239488 * k + 2023865 := by
    unfold C
    simp [show (4478976 * k + 4047730) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2023865) = 6718464 * k + 6071596 := by
    unfold C
    simp [show (2239488 * k + 2023865) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6071596) = 3359232 * k + 3035798 := by
    unfold C
    simp [show (6718464 * k + 6071596) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3035798) = 1679616 * k + 1517899 := by
    unfold C
    simp [show (3359232 * k + 3035798) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1517899) = 5038848 * k + 4553698 := by
    unfold C
    simp [show (1679616 * k + 1517899) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4553698) = 2519424 * k + 2276849 := by
    unfold C
    simp [show (5038848 * k + 4553698) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2276849) = 7558272 * k + 6830548 := by
    unfold C
    simp [show (2519424 * k + 2276849) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6830548) = 3779136 * k + 3415274 := by
    unfold C
    simp [show (7558272 * k + 6830548) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3415274) = 1889568 * k + 1707637 := by
    unfold C
    simp [show (3779136 * k + 3415274) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1707637) = 5668704 * k + 5122912 := by
    unfold C
    simp [show (1889568 * k + 1707637) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5122912) = 2834352 * k + 2561456 := by
    unfold C
    simp [show (5668704 * k + 5122912) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2561456) = 1417176 * k + 1280728 := by
    unfold C
    simp [show (2834352 * k + 2561456) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1280728) = 708588 * k + 640364 := by
    unfold C
    simp [show (1417176 * k + 1280728) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 640364) = 354294 * k + 320182 := by
    unfold C
    simp [show (708588 * k + 640364) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 320182) = 177147 * k + 160091 := by
    unfold C
    simp [show (354294 * k + 320182) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 236903) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 236903))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_237039 : ∀ k : Nat,
    iterate (262144 * k + 237039) 29 = 177147 * k + 160183 ∧
      177147 * k + 160183 < 262144 * k + 237039 := by
  intro k
  have h1 : C (262144 * k + 237039) = 786432 * k + 711118 := by
    unfold C
    simp [show (262144 * k + 237039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 711118) = 393216 * k + 355559 := by
    unfold C
    simp [show (786432 * k + 711118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 355559) = 1179648 * k + 1066678 := by
    unfold C
    simp [show (393216 * k + 355559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1066678) = 589824 * k + 533339 := by
    unfold C
    simp [show (1179648 * k + 1066678) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 533339) = 1769472 * k + 1600018 := by
    unfold C
    simp [show (589824 * k + 533339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1600018) = 884736 * k + 800009 := by
    unfold C
    simp [show (1769472 * k + 1600018) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 800009) = 2654208 * k + 2400028 := by
    unfold C
    simp [show (884736 * k + 800009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2400028) = 1327104 * k + 1200014 := by
    unfold C
    simp [show (2654208 * k + 2400028) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1200014) = 663552 * k + 600007 := by
    unfold C
    simp [show (1327104 * k + 1200014) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 600007) = 1990656 * k + 1800022 := by
    unfold C
    simp [show (663552 * k + 600007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1800022) = 995328 * k + 900011 := by
    unfold C
    simp [show (1990656 * k + 1800022) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 900011) = 2985984 * k + 2700034 := by
    unfold C
    simp [show (995328 * k + 900011) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2700034) = 1492992 * k + 1350017 := by
    unfold C
    simp [show (2985984 * k + 2700034) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1350017) = 4478976 * k + 4050052 := by
    unfold C
    simp [show (1492992 * k + 1350017) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4050052) = 2239488 * k + 2025026 := by
    unfold C
    simp [show (4478976 * k + 4050052) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2025026) = 1119744 * k + 1012513 := by
    unfold C
    simp [show (2239488 * k + 2025026) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1012513) = 3359232 * k + 3037540 := by
    unfold C
    simp [show (1119744 * k + 1012513) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3037540) = 1679616 * k + 1518770 := by
    unfold C
    simp [show (3359232 * k + 3037540) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1518770) = 839808 * k + 759385 := by
    unfold C
    simp [show (1679616 * k + 1518770) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 759385) = 2519424 * k + 2278156 := by
    unfold C
    simp [show (839808 * k + 759385) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2278156) = 1259712 * k + 1139078 := by
    unfold C
    simp [show (2519424 * k + 2278156) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1139078) = 629856 * k + 569539 := by
    unfold C
    simp [show (1259712 * k + 1139078) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 569539) = 1889568 * k + 1708618 := by
    unfold C
    simp [show (629856 * k + 569539) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1708618) = 944784 * k + 854309 := by
    unfold C
    simp [show (1889568 * k + 1708618) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 854309) = 2834352 * k + 2562928 := by
    unfold C
    simp [show (944784 * k + 854309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2562928) = 1417176 * k + 1281464 := by
    unfold C
    simp [show (2834352 * k + 2562928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1281464) = 708588 * k + 640732 := by
    unfold C
    simp [show (1417176 * k + 1281464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 640732) = 354294 * k + 320366 := by
    unfold C
    simp [show (708588 * k + 640732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 320366) = 177147 * k + 160183 := by
    unfold C
    simp [show (354294 * k + 320366) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 237039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 237039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_237183 : ∀ k : Nat,
    iterate (262144 * k + 237183) 29 = 177147 * k + 160280 ∧
      177147 * k + 160280 < 262144 * k + 237183 := by
  intro k
  have h1 : C (262144 * k + 237183) = 786432 * k + 711550 := by
    unfold C
    simp [show (262144 * k + 237183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 711550) = 393216 * k + 355775 := by
    unfold C
    simp [show (786432 * k + 711550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 355775) = 1179648 * k + 1067326 := by
    unfold C
    simp [show (393216 * k + 355775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1067326) = 589824 * k + 533663 := by
    unfold C
    simp [show (1179648 * k + 1067326) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 533663) = 1769472 * k + 1600990 := by
    unfold C
    simp [show (589824 * k + 533663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1600990) = 884736 * k + 800495 := by
    unfold C
    simp [show (1769472 * k + 1600990) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 800495) = 2654208 * k + 2401486 := by
    unfold C
    simp [show (884736 * k + 800495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2401486) = 1327104 * k + 1200743 := by
    unfold C
    simp [show (2654208 * k + 2401486) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1200743) = 3981312 * k + 3602230 := by
    unfold C
    simp [show (1327104 * k + 1200743) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3602230) = 1990656 * k + 1801115 := by
    unfold C
    simp [show (3981312 * k + 3602230) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1801115) = 5971968 * k + 5403346 := by
    unfold C
    simp [show (1990656 * k + 1801115) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5403346) = 2985984 * k + 2701673 := by
    unfold C
    simp [show (5971968 * k + 5403346) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2701673) = 8957952 * k + 8105020 := by
    unfold C
    simp [show (2985984 * k + 2701673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8105020) = 4478976 * k + 4052510 := by
    unfold C
    simp [show (8957952 * k + 8105020) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4052510) = 2239488 * k + 2026255 := by
    unfold C
    simp [show (4478976 * k + 4052510) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2026255) = 6718464 * k + 6078766 := by
    unfold C
    simp [show (2239488 * k + 2026255) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6078766) = 3359232 * k + 3039383 := by
    unfold C
    simp [show (6718464 * k + 6078766) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3039383) = 10077696 * k + 9118150 := by
    unfold C
    simp [show (3359232 * k + 3039383) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9118150) = 5038848 * k + 4559075 := by
    unfold C
    simp [show (10077696 * k + 9118150) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4559075) = 15116544 * k + 13677226 := by
    unfold C
    simp [show (5038848 * k + 4559075) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 13677226) = 7558272 * k + 6838613 := by
    unfold C
    simp [show (15116544 * k + 13677226) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6838613) = 22674816 * k + 20515840 := by
    unfold C
    simp [show (7558272 * k + 6838613) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 20515840) = 11337408 * k + 10257920 := by
    unfold C
    simp [show (22674816 * k + 20515840) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 10257920) = 5668704 * k + 5128960 := by
    unfold C
    simp [show (11337408 * k + 10257920) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5128960) = 2834352 * k + 2564480 := by
    unfold C
    simp [show (5668704 * k + 5128960) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2564480) = 1417176 * k + 1282240 := by
    unfold C
    simp [show (2834352 * k + 2564480) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1282240) = 708588 * k + 641120 := by
    unfold C
    simp [show (1417176 * k + 1282240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 641120) = 354294 * k + 320560 := by
    unfold C
    simp [show (708588 * k + 641120) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 320560) = 177147 * k + 160280 := by
    unfold C
    simp [show (354294 * k + 320560) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 237183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 237183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_237471 : ∀ k : Nat,
    iterate (262144 * k + 237471) 29 = 177147 * k + 160475 ∧
      177147 * k + 160475 < 262144 * k + 237471 := by
  intro k
  have h1 : C (262144 * k + 237471) = 786432 * k + 712414 := by
    unfold C
    simp [show (262144 * k + 237471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 712414) = 393216 * k + 356207 := by
    unfold C
    simp [show (786432 * k + 712414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 356207) = 1179648 * k + 1068622 := by
    unfold C
    simp [show (393216 * k + 356207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1068622) = 589824 * k + 534311 := by
    unfold C
    simp [show (1179648 * k + 1068622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 534311) = 1769472 * k + 1602934 := by
    unfold C
    simp [show (589824 * k + 534311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1602934) = 884736 * k + 801467 := by
    unfold C
    simp [show (1769472 * k + 1602934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 801467) = 2654208 * k + 2404402 := by
    unfold C
    simp [show (884736 * k + 801467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2404402) = 1327104 * k + 1202201 := by
    unfold C
    simp [show (2654208 * k + 2404402) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1202201) = 3981312 * k + 3606604 := by
    unfold C
    simp [show (1327104 * k + 1202201) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3606604) = 1990656 * k + 1803302 := by
    unfold C
    simp [show (3981312 * k + 3606604) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1803302) = 995328 * k + 901651 := by
    unfold C
    simp [show (1990656 * k + 1803302) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 901651) = 2985984 * k + 2704954 := by
    unfold C
    simp [show (995328 * k + 901651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2704954) = 1492992 * k + 1352477 := by
    unfold C
    simp [show (2985984 * k + 2704954) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1352477) = 4478976 * k + 4057432 := by
    unfold C
    simp [show (1492992 * k + 1352477) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4057432) = 2239488 * k + 2028716 := by
    unfold C
    simp [show (4478976 * k + 4057432) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2028716) = 1119744 * k + 1014358 := by
    unfold C
    simp [show (2239488 * k + 2028716) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1014358) = 559872 * k + 507179 := by
    unfold C
    simp [show (1119744 * k + 1014358) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 507179) = 1679616 * k + 1521538 := by
    unfold C
    simp [show (559872 * k + 507179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1521538) = 839808 * k + 760769 := by
    unfold C
    simp [show (1679616 * k + 1521538) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 760769) = 2519424 * k + 2282308 := by
    unfold C
    simp [show (839808 * k + 760769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2282308) = 1259712 * k + 1141154 := by
    unfold C
    simp [show (2519424 * k + 2282308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1141154) = 629856 * k + 570577 := by
    unfold C
    simp [show (1259712 * k + 1141154) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 570577) = 1889568 * k + 1711732 := by
    unfold C
    simp [show (629856 * k + 570577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1711732) = 944784 * k + 855866 := by
    unfold C
    simp [show (1889568 * k + 1711732) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 855866) = 472392 * k + 427933 := by
    unfold C
    simp [show (944784 * k + 855866) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 427933) = 1417176 * k + 1283800 := by
    unfold C
    simp [show (472392 * k + 427933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1283800) = 708588 * k + 641900 := by
    unfold C
    simp [show (1417176 * k + 1283800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 641900) = 354294 * k + 320950 := by
    unfold C
    simp [show (708588 * k + 641900) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 320950) = 177147 * k + 160475 := by
    unfold C
    simp [show (354294 * k + 320950) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 237471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 237471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_237639 : ∀ k : Nat,
    iterate (262144 * k + 237639) 29 = 177147 * k + 160589 ∧
      177147 * k + 160589 < 262144 * k + 237639 := by
  intro k
  have h1 : C (262144 * k + 237639) = 786432 * k + 712918 := by
    unfold C
    simp [show (262144 * k + 237639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 712918) = 393216 * k + 356459 := by
    unfold C
    simp [show (786432 * k + 712918) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 356459) = 1179648 * k + 1069378 := by
    unfold C
    simp [show (393216 * k + 356459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1069378) = 589824 * k + 534689 := by
    unfold C
    simp [show (1179648 * k + 1069378) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 534689) = 1769472 * k + 1604068 := by
    unfold C
    simp [show (589824 * k + 534689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1604068) = 884736 * k + 802034 := by
    unfold C
    simp [show (1769472 * k + 1604068) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 802034) = 442368 * k + 401017 := by
    unfold C
    simp [show (884736 * k + 802034) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 401017) = 1327104 * k + 1203052 := by
    unfold C
    simp [show (442368 * k + 401017) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1203052) = 663552 * k + 601526 := by
    unfold C
    simp [show (1327104 * k + 1203052) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 601526) = 331776 * k + 300763 := by
    unfold C
    simp [show (663552 * k + 601526) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 300763) = 995328 * k + 902290 := by
    unfold C
    simp [show (331776 * k + 300763) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 902290) = 497664 * k + 451145 := by
    unfold C
    simp [show (995328 * k + 902290) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 451145) = 1492992 * k + 1353436 := by
    unfold C
    simp [show (497664 * k + 451145) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1353436) = 746496 * k + 676718 := by
    unfold C
    simp [show (1492992 * k + 1353436) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 676718) = 373248 * k + 338359 := by
    unfold C
    simp [show (746496 * k + 676718) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 338359) = 1119744 * k + 1015078 := by
    unfold C
    simp [show (373248 * k + 338359) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1015078) = 559872 * k + 507539 := by
    unfold C
    simp [show (1119744 * k + 1015078) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 507539) = 1679616 * k + 1522618 := by
    unfold C
    simp [show (559872 * k + 507539) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1522618) = 839808 * k + 761309 := by
    unfold C
    simp [show (1679616 * k + 1522618) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 761309) = 2519424 * k + 2283928 := by
    unfold C
    simp [show (839808 * k + 761309) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2283928) = 1259712 * k + 1141964 := by
    unfold C
    simp [show (2519424 * k + 2283928) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1141964) = 629856 * k + 570982 := by
    unfold C
    simp [show (1259712 * k + 1141964) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 570982) = 314928 * k + 285491 := by
    unfold C
    simp [show (629856 * k + 570982) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 285491) = 944784 * k + 856474 := by
    unfold C
    simp [show (314928 * k + 285491) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 856474) = 472392 * k + 428237 := by
    unfold C
    simp [show (944784 * k + 856474) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 428237) = 1417176 * k + 1284712 := by
    unfold C
    simp [show (472392 * k + 428237) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1284712) = 708588 * k + 642356 := by
    unfold C
    simp [show (1417176 * k + 1284712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 642356) = 354294 * k + 321178 := by
    unfold C
    simp [show (708588 * k + 642356) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 321178) = 177147 * k + 160589 := by
    unfold C
    simp [show (354294 * k + 321178) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 237639) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 237639))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_238207 : ∀ k : Nat,
    iterate (262144 * k + 238207) 29 = 177147 * k + 160972 ∧
      177147 * k + 160972 < 262144 * k + 238207 := by
  intro k
  have h1 : C (262144 * k + 238207) = 786432 * k + 714622 := by
    unfold C
    simp [show (262144 * k + 238207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 714622) = 393216 * k + 357311 := by
    unfold C
    simp [show (786432 * k + 714622) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 357311) = 1179648 * k + 1071934 := by
    unfold C
    simp [show (393216 * k + 357311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1071934) = 589824 * k + 535967 := by
    unfold C
    simp [show (1179648 * k + 1071934) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 535967) = 1769472 * k + 1607902 := by
    unfold C
    simp [show (589824 * k + 535967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1607902) = 884736 * k + 803951 := by
    unfold C
    simp [show (1769472 * k + 1607902) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 803951) = 2654208 * k + 2411854 := by
    unfold C
    simp [show (884736 * k + 803951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2411854) = 1327104 * k + 1205927 := by
    unfold C
    simp [show (2654208 * k + 2411854) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1205927) = 3981312 * k + 3617782 := by
    unfold C
    simp [show (1327104 * k + 1205927) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3617782) = 1990656 * k + 1808891 := by
    unfold C
    simp [show (3981312 * k + 3617782) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1808891) = 5971968 * k + 5426674 := by
    unfold C
    simp [show (1990656 * k + 1808891) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5426674) = 2985984 * k + 2713337 := by
    unfold C
    simp [show (5971968 * k + 5426674) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2713337) = 8957952 * k + 8140012 := by
    unfold C
    simp [show (2985984 * k + 2713337) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8140012) = 4478976 * k + 4070006 := by
    unfold C
    simp [show (8957952 * k + 8140012) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4070006) = 2239488 * k + 2035003 := by
    unfold C
    simp [show (4478976 * k + 4070006) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2035003) = 6718464 * k + 6105010 := by
    unfold C
    simp [show (2239488 * k + 2035003) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6105010) = 3359232 * k + 3052505 := by
    unfold C
    simp [show (6718464 * k + 6105010) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3052505) = 10077696 * k + 9157516 := by
    unfold C
    simp [show (3359232 * k + 3052505) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9157516) = 5038848 * k + 4578758 := by
    unfold C
    simp [show (10077696 * k + 9157516) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4578758) = 2519424 * k + 2289379 := by
    unfold C
    simp [show (5038848 * k + 4578758) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2289379) = 7558272 * k + 6868138 := by
    unfold C
    simp [show (2519424 * k + 2289379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6868138) = 3779136 * k + 3434069 := by
    unfold C
    simp [show (7558272 * k + 6868138) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3434069) = 11337408 * k + 10302208 := by
    unfold C
    simp [show (3779136 * k + 3434069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 10302208) = 5668704 * k + 5151104 := by
    unfold C
    simp [show (11337408 * k + 10302208) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5151104) = 2834352 * k + 2575552 := by
    unfold C
    simp [show (5668704 * k + 5151104) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2575552) = 1417176 * k + 1287776 := by
    unfold C
    simp [show (2834352 * k + 2575552) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1287776) = 708588 * k + 643888 := by
    unfold C
    simp [show (1417176 * k + 1287776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 643888) = 354294 * k + 321944 := by
    unfold C
    simp [show (708588 * k + 643888) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 321944) = 177147 * k + 160972 := by
    unfold C
    simp [show (354294 * k + 321944) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 238207) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 238207))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_238239 : ∀ k : Nat,
    iterate (262144 * k + 238239) 29 = 177147 * k + 160994 ∧
      177147 * k + 160994 < 262144 * k + 238239 := by
  intro k
  have h1 : C (262144 * k + 238239) = 786432 * k + 714718 := by
    unfold C
    simp [show (262144 * k + 238239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 714718) = 393216 * k + 357359 := by
    unfold C
    simp [show (786432 * k + 714718) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 357359) = 1179648 * k + 1072078 := by
    unfold C
    simp [show (393216 * k + 357359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1072078) = 589824 * k + 536039 := by
    unfold C
    simp [show (1179648 * k + 1072078) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 536039) = 1769472 * k + 1608118 := by
    unfold C
    simp [show (589824 * k + 536039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1608118) = 884736 * k + 804059 := by
    unfold C
    simp [show (1769472 * k + 1608118) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 804059) = 2654208 * k + 2412178 := by
    unfold C
    simp [show (884736 * k + 804059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2412178) = 1327104 * k + 1206089 := by
    unfold C
    simp [show (2654208 * k + 2412178) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1206089) = 3981312 * k + 3618268 := by
    unfold C
    simp [show (1327104 * k + 1206089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3618268) = 1990656 * k + 1809134 := by
    unfold C
    simp [show (3981312 * k + 3618268) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1809134) = 995328 * k + 904567 := by
    unfold C
    simp [show (1990656 * k + 1809134) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 904567) = 2985984 * k + 2713702 := by
    unfold C
    simp [show (995328 * k + 904567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2713702) = 1492992 * k + 1356851 := by
    unfold C
    simp [show (2985984 * k + 2713702) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1356851) = 4478976 * k + 4070554 := by
    unfold C
    simp [show (1492992 * k + 1356851) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4070554) = 2239488 * k + 2035277 := by
    unfold C
    simp [show (4478976 * k + 4070554) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2035277) = 6718464 * k + 6105832 := by
    unfold C
    simp [show (2239488 * k + 2035277) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6105832) = 3359232 * k + 3052916 := by
    unfold C
    simp [show (6718464 * k + 6105832) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3052916) = 1679616 * k + 1526458 := by
    unfold C
    simp [show (3359232 * k + 3052916) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1526458) = 839808 * k + 763229 := by
    unfold C
    simp [show (1679616 * k + 1526458) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 763229) = 2519424 * k + 2289688 := by
    unfold C
    simp [show (839808 * k + 763229) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2289688) = 1259712 * k + 1144844 := by
    unfold C
    simp [show (2519424 * k + 2289688) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1144844) = 629856 * k + 572422 := by
    unfold C
    simp [show (1259712 * k + 1144844) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 572422) = 314928 * k + 286211 := by
    unfold C
    simp [show (629856 * k + 572422) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 286211) = 944784 * k + 858634 := by
    unfold C
    simp [show (314928 * k + 286211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 858634) = 472392 * k + 429317 := by
    unfold C
    simp [show (944784 * k + 858634) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 429317) = 1417176 * k + 1287952 := by
    unfold C
    simp [show (472392 * k + 429317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1287952) = 708588 * k + 643976 := by
    unfold C
    simp [show (1417176 * k + 1287952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 643976) = 354294 * k + 321988 := by
    unfold C
    simp [show (708588 * k + 643976) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 321988) = 177147 * k + 160994 := by
    unfold C
    simp [show (354294 * k + 321988) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 238239) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 238239))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard044
