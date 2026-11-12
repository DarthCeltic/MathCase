import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard019

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_96923 : ∀ k : Nat,
    iterate (262144 * k + 96923) 29 = 177147 * k + 65498 ∧
      177147 * k + 65498 < 262144 * k + 96923 := by
  intro k
  have h1 : C (262144 * k + 96923) = 786432 * k + 290770 := by
    unfold C
    simp [show (262144 * k + 96923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 290770) = 393216 * k + 145385 := by
    unfold C
    simp [show (786432 * k + 290770) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 145385) = 1179648 * k + 436156 := by
    unfold C
    simp [show (393216 * k + 145385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 436156) = 589824 * k + 218078 := by
    unfold C
    simp [show (1179648 * k + 436156) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 218078) = 294912 * k + 109039 := by
    unfold C
    simp [show (589824 * k + 218078) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 109039) = 884736 * k + 327118 := by
    unfold C
    simp [show (294912 * k + 109039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 327118) = 442368 * k + 163559 := by
    unfold C
    simp [show (884736 * k + 327118) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 163559) = 1327104 * k + 490678 := by
    unfold C
    simp [show (442368 * k + 163559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 490678) = 663552 * k + 245339 := by
    unfold C
    simp [show (1327104 * k + 490678) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 245339) = 1990656 * k + 736018 := by
    unfold C
    simp [show (663552 * k + 245339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 736018) = 995328 * k + 368009 := by
    unfold C
    simp [show (1990656 * k + 736018) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 368009) = 2985984 * k + 1104028 := by
    unfold C
    simp [show (995328 * k + 368009) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1104028) = 1492992 * k + 552014 := by
    unfold C
    simp [show (2985984 * k + 1104028) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 552014) = 746496 * k + 276007 := by
    unfold C
    simp [show (1492992 * k + 552014) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 276007) = 2239488 * k + 828022 := by
    unfold C
    simp [show (746496 * k + 276007) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 828022) = 1119744 * k + 414011 := by
    unfold C
    simp [show (2239488 * k + 828022) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 414011) = 3359232 * k + 1242034 := by
    unfold C
    simp [show (1119744 * k + 414011) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1242034) = 1679616 * k + 621017 := by
    unfold C
    simp [show (3359232 * k + 1242034) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 621017) = 5038848 * k + 1863052 := by
    unfold C
    simp [show (1679616 * k + 621017) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1863052) = 2519424 * k + 931526 := by
    unfold C
    simp [show (5038848 * k + 1863052) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 931526) = 1259712 * k + 465763 := by
    unfold C
    simp [show (2519424 * k + 931526) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 465763) = 3779136 * k + 1397290 := by
    unfold C
    simp [show (1259712 * k + 465763) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1397290) = 1889568 * k + 698645 := by
    unfold C
    simp [show (3779136 * k + 1397290) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 698645) = 5668704 * k + 2095936 := by
    unfold C
    simp [show (1889568 * k + 698645) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2095936) = 2834352 * k + 1047968 := by
    unfold C
    simp [show (5668704 * k + 2095936) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1047968) = 1417176 * k + 523984 := by
    unfold C
    simp [show (2834352 * k + 1047968) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 523984) = 708588 * k + 261992 := by
    unfold C
    simp [show (1417176 * k + 523984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 261992) = 354294 * k + 130996 := by
    unfold C
    simp [show (708588 * k + 261992) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 130996) = 177147 * k + 65498 := by
    unfold C
    simp [show (354294 * k + 130996) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 96923) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 96923))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_97343 : ∀ k : Nat,
    iterate (262144 * k + 97343) 29 = 177147 * k + 65782 ∧
      177147 * k + 65782 < 262144 * k + 97343 := by
  intro k
  have h1 : C (262144 * k + 97343) = 786432 * k + 292030 := by
    unfold C
    simp [show (262144 * k + 97343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 292030) = 393216 * k + 146015 := by
    unfold C
    simp [show (786432 * k + 292030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 146015) = 1179648 * k + 438046 := by
    unfold C
    simp [show (393216 * k + 146015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 438046) = 589824 * k + 219023 := by
    unfold C
    simp [show (1179648 * k + 438046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 219023) = 1769472 * k + 657070 := by
    unfold C
    simp [show (589824 * k + 219023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 657070) = 884736 * k + 328535 := by
    unfold C
    simp [show (1769472 * k + 657070) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 328535) = 2654208 * k + 985606 := by
    unfold C
    simp [show (884736 * k + 328535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 985606) = 1327104 * k + 492803 := by
    unfold C
    simp [show (2654208 * k + 985606) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 492803) = 3981312 * k + 1478410 := by
    unfold C
    simp [show (1327104 * k + 492803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1478410) = 1990656 * k + 739205 := by
    unfold C
    simp [show (3981312 * k + 1478410) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 739205) = 5971968 * k + 2217616 := by
    unfold C
    simp [show (1990656 * k + 739205) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2217616) = 2985984 * k + 1108808 := by
    unfold C
    simp [show (5971968 * k + 2217616) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1108808) = 1492992 * k + 554404 := by
    unfold C
    simp [show (2985984 * k + 1108808) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 554404) = 746496 * k + 277202 := by
    unfold C
    simp [show (1492992 * k + 554404) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 277202) = 373248 * k + 138601 := by
    unfold C
    simp [show (746496 * k + 277202) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 138601) = 1119744 * k + 415804 := by
    unfold C
    simp [show (373248 * k + 138601) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 415804) = 559872 * k + 207902 := by
    unfold C
    simp [show (1119744 * k + 415804) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 207902) = 279936 * k + 103951 := by
    unfold C
    simp [show (559872 * k + 207902) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 103951) = 839808 * k + 311854 := by
    unfold C
    simp [show (279936 * k + 103951) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 311854) = 419904 * k + 155927 := by
    unfold C
    simp [show (839808 * k + 311854) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 155927) = 1259712 * k + 467782 := by
    unfold C
    simp [show (419904 * k + 155927) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 467782) = 629856 * k + 233891 := by
    unfold C
    simp [show (1259712 * k + 467782) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 233891) = 1889568 * k + 701674 := by
    unfold C
    simp [show (629856 * k + 233891) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 701674) = 944784 * k + 350837 := by
    unfold C
    simp [show (1889568 * k + 701674) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 350837) = 2834352 * k + 1052512 := by
    unfold C
    simp [show (944784 * k + 350837) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1052512) = 1417176 * k + 526256 := by
    unfold C
    simp [show (2834352 * k + 1052512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 526256) = 708588 * k + 263128 := by
    unfold C
    simp [show (1417176 * k + 526256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 263128) = 354294 * k + 131564 := by
    unfold C
    simp [show (708588 * k + 263128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 131564) = 177147 * k + 65782 := by
    unfold C
    simp [show (354294 * k + 131564) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 97343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 97343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_97663 : ∀ k : Nat,
    iterate (262144 * k + 97663) 29 = 177147 * k + 65998 ∧
      177147 * k + 65998 < 262144 * k + 97663 := by
  intro k
  have h1 : C (262144 * k + 97663) = 786432 * k + 292990 := by
    unfold C
    simp [show (262144 * k + 97663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 292990) = 393216 * k + 146495 := by
    unfold C
    simp [show (786432 * k + 292990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 146495) = 1179648 * k + 439486 := by
    unfold C
    simp [show (393216 * k + 146495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 439486) = 589824 * k + 219743 := by
    unfold C
    simp [show (1179648 * k + 439486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 219743) = 1769472 * k + 659230 := by
    unfold C
    simp [show (589824 * k + 219743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 659230) = 884736 * k + 329615 := by
    unfold C
    simp [show (1769472 * k + 659230) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 329615) = 2654208 * k + 988846 := by
    unfold C
    simp [show (884736 * k + 329615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 988846) = 1327104 * k + 494423 := by
    unfold C
    simp [show (2654208 * k + 988846) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 494423) = 3981312 * k + 1483270 := by
    unfold C
    simp [show (1327104 * k + 494423) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1483270) = 1990656 * k + 741635 := by
    unfold C
    simp [show (3981312 * k + 1483270) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 741635) = 5971968 * k + 2224906 := by
    unfold C
    simp [show (1990656 * k + 741635) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2224906) = 2985984 * k + 1112453 := by
    unfold C
    simp [show (5971968 * k + 2224906) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1112453) = 8957952 * k + 3337360 := by
    unfold C
    simp [show (2985984 * k + 1112453) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3337360) = 4478976 * k + 1668680 := by
    unfold C
    simp [show (8957952 * k + 3337360) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1668680) = 2239488 * k + 834340 := by
    unfold C
    simp [show (4478976 * k + 1668680) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 834340) = 1119744 * k + 417170 := by
    unfold C
    simp [show (2239488 * k + 834340) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 417170) = 559872 * k + 208585 := by
    unfold C
    simp [show (1119744 * k + 417170) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 208585) = 1679616 * k + 625756 := by
    unfold C
    simp [show (559872 * k + 208585) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 625756) = 839808 * k + 312878 := by
    unfold C
    simp [show (1679616 * k + 625756) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 312878) = 419904 * k + 156439 := by
    unfold C
    simp [show (839808 * k + 312878) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 156439) = 1259712 * k + 469318 := by
    unfold C
    simp [show (419904 * k + 156439) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 469318) = 629856 * k + 234659 := by
    unfold C
    simp [show (1259712 * k + 469318) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 234659) = 1889568 * k + 703978 := by
    unfold C
    simp [show (629856 * k + 234659) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 703978) = 944784 * k + 351989 := by
    unfold C
    simp [show (1889568 * k + 703978) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 351989) = 2834352 * k + 1055968 := by
    unfold C
    simp [show (944784 * k + 351989) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1055968) = 1417176 * k + 527984 := by
    unfold C
    simp [show (2834352 * k + 1055968) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 527984) = 708588 * k + 263992 := by
    unfold C
    simp [show (1417176 * k + 527984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 263992) = 354294 * k + 131996 := by
    unfold C
    simp [show (708588 * k + 263992) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 131996) = 177147 * k + 65998 := by
    unfold C
    simp [show (354294 * k + 131996) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 97663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 97663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_97895 : ∀ k : Nat,
    iterate (262144 * k + 97895) 29 = 177147 * k + 66155 ∧
      177147 * k + 66155 < 262144 * k + 97895 := by
  intro k
  have h1 : C (262144 * k + 97895) = 786432 * k + 293686 := by
    unfold C
    simp [show (262144 * k + 97895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 293686) = 393216 * k + 146843 := by
    unfold C
    simp [show (786432 * k + 293686) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 146843) = 1179648 * k + 440530 := by
    unfold C
    simp [show (393216 * k + 146843) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 440530) = 589824 * k + 220265 := by
    unfold C
    simp [show (1179648 * k + 440530) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 220265) = 1769472 * k + 660796 := by
    unfold C
    simp [show (589824 * k + 220265) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 660796) = 884736 * k + 330398 := by
    unfold C
    simp [show (1769472 * k + 660796) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 330398) = 442368 * k + 165199 := by
    unfold C
    simp [show (884736 * k + 330398) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 165199) = 1327104 * k + 495598 := by
    unfold C
    simp [show (442368 * k + 165199) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 495598) = 663552 * k + 247799 := by
    unfold C
    simp [show (1327104 * k + 495598) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 247799) = 1990656 * k + 743398 := by
    unfold C
    simp [show (663552 * k + 247799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 743398) = 995328 * k + 371699 := by
    unfold C
    simp [show (1990656 * k + 743398) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 371699) = 2985984 * k + 1115098 := by
    unfold C
    simp [show (995328 * k + 371699) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1115098) = 1492992 * k + 557549 := by
    unfold C
    simp [show (2985984 * k + 1115098) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 557549) = 4478976 * k + 1672648 := by
    unfold C
    simp [show (1492992 * k + 557549) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1672648) = 2239488 * k + 836324 := by
    unfold C
    simp [show (4478976 * k + 1672648) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 836324) = 1119744 * k + 418162 := by
    unfold C
    simp [show (2239488 * k + 836324) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 418162) = 559872 * k + 209081 := by
    unfold C
    simp [show (1119744 * k + 418162) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 209081) = 1679616 * k + 627244 := by
    unfold C
    simp [show (559872 * k + 209081) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 627244) = 839808 * k + 313622 := by
    unfold C
    simp [show (1679616 * k + 627244) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 313622) = 419904 * k + 156811 := by
    unfold C
    simp [show (839808 * k + 313622) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 156811) = 1259712 * k + 470434 := by
    unfold C
    simp [show (419904 * k + 156811) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 470434) = 629856 * k + 235217 := by
    unfold C
    simp [show (1259712 * k + 470434) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 235217) = 1889568 * k + 705652 := by
    unfold C
    simp [show (629856 * k + 235217) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 705652) = 944784 * k + 352826 := by
    unfold C
    simp [show (1889568 * k + 705652) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 352826) = 472392 * k + 176413 := by
    unfold C
    simp [show (944784 * k + 352826) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 176413) = 1417176 * k + 529240 := by
    unfold C
    simp [show (472392 * k + 176413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 529240) = 708588 * k + 264620 := by
    unfold C
    simp [show (1417176 * k + 529240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 264620) = 354294 * k + 132310 := by
    unfold C
    simp [show (708588 * k + 264620) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 132310) = 177147 * k + 66155 := by
    unfold C
    simp [show (354294 * k + 132310) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 97895) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 97895))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98175 : ∀ k : Nat,
    iterate (262144 * k + 98175) 29 = 177147 * k + 66344 ∧
      177147 * k + 66344 < 262144 * k + 98175 := by
  intro k
  have h1 : C (262144 * k + 98175) = 786432 * k + 294526 := by
    unfold C
    simp [show (262144 * k + 98175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 294526) = 393216 * k + 147263 := by
    unfold C
    simp [show (786432 * k + 294526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147263) = 1179648 * k + 441790 := by
    unfold C
    simp [show (393216 * k + 147263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 441790) = 589824 * k + 220895 := by
    unfold C
    simp [show (1179648 * k + 441790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 220895) = 1769472 * k + 662686 := by
    unfold C
    simp [show (589824 * k + 220895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 662686) = 884736 * k + 331343 := by
    unfold C
    simp [show (1769472 * k + 662686) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 331343) = 2654208 * k + 994030 := by
    unfold C
    simp [show (884736 * k + 331343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 994030) = 1327104 * k + 497015 := by
    unfold C
    simp [show (2654208 * k + 994030) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 497015) = 3981312 * k + 1491046 := by
    unfold C
    simp [show (1327104 * k + 497015) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1491046) = 1990656 * k + 745523 := by
    unfold C
    simp [show (3981312 * k + 1491046) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 745523) = 5971968 * k + 2236570 := by
    unfold C
    simp [show (1990656 * k + 745523) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2236570) = 2985984 * k + 1118285 := by
    unfold C
    simp [show (5971968 * k + 2236570) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1118285) = 8957952 * k + 3354856 := by
    unfold C
    simp [show (2985984 * k + 1118285) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3354856) = 4478976 * k + 1677428 := by
    unfold C
    simp [show (8957952 * k + 3354856) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1677428) = 2239488 * k + 838714 := by
    unfold C
    simp [show (4478976 * k + 1677428) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 838714) = 1119744 * k + 419357 := by
    unfold C
    simp [show (2239488 * k + 838714) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 419357) = 3359232 * k + 1258072 := by
    unfold C
    simp [show (1119744 * k + 419357) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1258072) = 1679616 * k + 629036 := by
    unfold C
    simp [show (3359232 * k + 1258072) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 629036) = 839808 * k + 314518 := by
    unfold C
    simp [show (1679616 * k + 629036) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 314518) = 419904 * k + 157259 := by
    unfold C
    simp [show (839808 * k + 314518) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 157259) = 1259712 * k + 471778 := by
    unfold C
    simp [show (419904 * k + 157259) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 471778) = 629856 * k + 235889 := by
    unfold C
    simp [show (1259712 * k + 471778) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 235889) = 1889568 * k + 707668 := by
    unfold C
    simp [show (629856 * k + 235889) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 707668) = 944784 * k + 353834 := by
    unfold C
    simp [show (1889568 * k + 707668) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 353834) = 472392 * k + 176917 := by
    unfold C
    simp [show (944784 * k + 353834) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 176917) = 1417176 * k + 530752 := by
    unfold C
    simp [show (472392 * k + 176917) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 530752) = 708588 * k + 265376 := by
    unfold C
    simp [show (1417176 * k + 530752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 265376) = 354294 * k + 132688 := by
    unfold C
    simp [show (708588 * k + 265376) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 132688) = 177147 * k + 66344 := by
    unfold C
    simp [show (354294 * k + 132688) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98335 : ∀ k : Nat,
    iterate (262144 * k + 98335) 29 = 177147 * k + 66452 ∧
      177147 * k + 66452 < 262144 * k + 98335 := by
  intro k
  have h1 : C (262144 * k + 98335) = 786432 * k + 295006 := by
    unfold C
    simp [show (262144 * k + 98335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 295006) = 393216 * k + 147503 := by
    unfold C
    simp [show (786432 * k + 295006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147503) = 1179648 * k + 442510 := by
    unfold C
    simp [show (393216 * k + 147503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 442510) = 589824 * k + 221255 := by
    unfold C
    simp [show (1179648 * k + 442510) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 221255) = 1769472 * k + 663766 := by
    unfold C
    simp [show (589824 * k + 221255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 663766) = 884736 * k + 331883 := by
    unfold C
    simp [show (1769472 * k + 663766) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 331883) = 2654208 * k + 995650 := by
    unfold C
    simp [show (884736 * k + 331883) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 995650) = 1327104 * k + 497825 := by
    unfold C
    simp [show (2654208 * k + 995650) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 497825) = 3981312 * k + 1493476 := by
    unfold C
    simp [show (1327104 * k + 497825) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1493476) = 1990656 * k + 746738 := by
    unfold C
    simp [show (3981312 * k + 1493476) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 746738) = 995328 * k + 373369 := by
    unfold C
    simp [show (1990656 * k + 746738) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 373369) = 2985984 * k + 1120108 := by
    unfold C
    simp [show (995328 * k + 373369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1120108) = 1492992 * k + 560054 := by
    unfold C
    simp [show (2985984 * k + 1120108) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 560054) = 746496 * k + 280027 := by
    unfold C
    simp [show (1492992 * k + 560054) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 280027) = 2239488 * k + 840082 := by
    unfold C
    simp [show (746496 * k + 280027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 840082) = 1119744 * k + 420041 := by
    unfold C
    simp [show (2239488 * k + 840082) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 420041) = 3359232 * k + 1260124 := by
    unfold C
    simp [show (1119744 * k + 420041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1260124) = 1679616 * k + 630062 := by
    unfold C
    simp [show (3359232 * k + 1260124) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 630062) = 839808 * k + 315031 := by
    unfold C
    simp [show (1679616 * k + 630062) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 315031) = 2519424 * k + 945094 := by
    unfold C
    simp [show (839808 * k + 315031) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 945094) = 1259712 * k + 472547 := by
    unfold C
    simp [show (2519424 * k + 945094) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 472547) = 3779136 * k + 1417642 := by
    unfold C
    simp [show (1259712 * k + 472547) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1417642) = 1889568 * k + 708821 := by
    unfold C
    simp [show (3779136 * k + 1417642) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 708821) = 5668704 * k + 2126464 := by
    unfold C
    simp [show (1889568 * k + 708821) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2126464) = 2834352 * k + 1063232 := by
    unfold C
    simp [show (5668704 * k + 2126464) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1063232) = 1417176 * k + 531616 := by
    unfold C
    simp [show (2834352 * k + 1063232) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 531616) = 708588 * k + 265808 := by
    unfold C
    simp [show (1417176 * k + 531616) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 265808) = 354294 * k + 132904 := by
    unfold C
    simp [show (708588 * k + 265808) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 132904) = 177147 * k + 66452 := by
    unfold C
    simp [show (354294 * k + 132904) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98351 : ∀ k : Nat,
    iterate (262144 * k + 98351) 29 = 177147 * k + 66463 ∧
      177147 * k + 66463 < 262144 * k + 98351 := by
  intro k
  have h1 : C (262144 * k + 98351) = 786432 * k + 295054 := by
    unfold C
    simp [show (262144 * k + 98351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 295054) = 393216 * k + 147527 := by
    unfold C
    simp [show (786432 * k + 295054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147527) = 1179648 * k + 442582 := by
    unfold C
    simp [show (393216 * k + 147527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 442582) = 589824 * k + 221291 := by
    unfold C
    simp [show (1179648 * k + 442582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 221291) = 1769472 * k + 663874 := by
    unfold C
    simp [show (589824 * k + 221291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 663874) = 884736 * k + 331937 := by
    unfold C
    simp [show (1769472 * k + 663874) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 331937) = 2654208 * k + 995812 := by
    unfold C
    simp [show (884736 * k + 331937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 995812) = 1327104 * k + 497906 := by
    unfold C
    simp [show (2654208 * k + 995812) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 497906) = 663552 * k + 248953 := by
    unfold C
    simp [show (1327104 * k + 497906) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 248953) = 1990656 * k + 746860 := by
    unfold C
    simp [show (663552 * k + 248953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 746860) = 995328 * k + 373430 := by
    unfold C
    simp [show (1990656 * k + 746860) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 373430) = 497664 * k + 186715 := by
    unfold C
    simp [show (995328 * k + 373430) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 186715) = 1492992 * k + 560146 := by
    unfold C
    simp [show (497664 * k + 186715) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 560146) = 746496 * k + 280073 := by
    unfold C
    simp [show (1492992 * k + 560146) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 280073) = 2239488 * k + 840220 := by
    unfold C
    simp [show (746496 * k + 280073) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 840220) = 1119744 * k + 420110 := by
    unfold C
    simp [show (2239488 * k + 840220) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 420110) = 559872 * k + 210055 := by
    unfold C
    simp [show (1119744 * k + 420110) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 210055) = 1679616 * k + 630166 := by
    unfold C
    simp [show (559872 * k + 210055) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 630166) = 839808 * k + 315083 := by
    unfold C
    simp [show (1679616 * k + 630166) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 315083) = 2519424 * k + 945250 := by
    unfold C
    simp [show (839808 * k + 315083) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 945250) = 1259712 * k + 472625 := by
    unfold C
    simp [show (2519424 * k + 945250) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 472625) = 3779136 * k + 1417876 := by
    unfold C
    simp [show (1259712 * k + 472625) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1417876) = 1889568 * k + 708938 := by
    unfold C
    simp [show (3779136 * k + 1417876) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 708938) = 944784 * k + 354469 := by
    unfold C
    simp [show (1889568 * k + 708938) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 354469) = 2834352 * k + 1063408 := by
    unfold C
    simp [show (944784 * k + 354469) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1063408) = 1417176 * k + 531704 := by
    unfold C
    simp [show (2834352 * k + 1063408) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 531704) = 708588 * k + 265852 := by
    unfold C
    simp [show (1417176 * k + 531704) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 265852) = 354294 * k + 132926 := by
    unfold C
    simp [show (708588 * k + 265852) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 132926) = 177147 * k + 66463 := by
    unfold C
    simp [show (354294 * k + 132926) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98471 : ∀ k : Nat,
    iterate (262144 * k + 98471) 29 = 177147 * k + 66544 ∧
      177147 * k + 66544 < 262144 * k + 98471 := by
  intro k
  have h1 : C (262144 * k + 98471) = 786432 * k + 295414 := by
    unfold C
    simp [show (262144 * k + 98471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 295414) = 393216 * k + 147707 := by
    unfold C
    simp [show (786432 * k + 295414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147707) = 1179648 * k + 443122 := by
    unfold C
    simp [show (393216 * k + 147707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 443122) = 589824 * k + 221561 := by
    unfold C
    simp [show (1179648 * k + 443122) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 221561) = 1769472 * k + 664684 := by
    unfold C
    simp [show (589824 * k + 221561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 664684) = 884736 * k + 332342 := by
    unfold C
    simp [show (1769472 * k + 664684) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 332342) = 442368 * k + 166171 := by
    unfold C
    simp [show (884736 * k + 332342) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 166171) = 1327104 * k + 498514 := by
    unfold C
    simp [show (442368 * k + 166171) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 498514) = 663552 * k + 249257 := by
    unfold C
    simp [show (1327104 * k + 498514) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 249257) = 1990656 * k + 747772 := by
    unfold C
    simp [show (663552 * k + 249257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 747772) = 995328 * k + 373886 := by
    unfold C
    simp [show (1990656 * k + 747772) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 373886) = 497664 * k + 186943 := by
    unfold C
    simp [show (995328 * k + 373886) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 186943) = 1492992 * k + 560830 := by
    unfold C
    simp [show (497664 * k + 186943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 560830) = 746496 * k + 280415 := by
    unfold C
    simp [show (1492992 * k + 560830) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 280415) = 2239488 * k + 841246 := by
    unfold C
    simp [show (746496 * k + 280415) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 841246) = 1119744 * k + 420623 := by
    unfold C
    simp [show (2239488 * k + 841246) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 420623) = 3359232 * k + 1261870 := by
    unfold C
    simp [show (1119744 * k + 420623) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1261870) = 1679616 * k + 630935 := by
    unfold C
    simp [show (3359232 * k + 1261870) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 630935) = 5038848 * k + 1892806 := by
    unfold C
    simp [show (1679616 * k + 630935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1892806) = 2519424 * k + 946403 := by
    unfold C
    simp [show (5038848 * k + 1892806) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 946403) = 7558272 * k + 2839210 := by
    unfold C
    simp [show (2519424 * k + 946403) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2839210) = 3779136 * k + 1419605 := by
    unfold C
    simp [show (7558272 * k + 2839210) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1419605) = 11337408 * k + 4258816 := by
    unfold C
    simp [show (3779136 * k + 1419605) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 4258816) = 5668704 * k + 2129408 := by
    unfold C
    simp [show (11337408 * k + 4258816) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2129408) = 2834352 * k + 1064704 := by
    unfold C
    simp [show (5668704 * k + 2129408) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1064704) = 1417176 * k + 532352 := by
    unfold C
    simp [show (2834352 * k + 1064704) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 532352) = 708588 * k + 266176 := by
    unfold C
    simp [show (1417176 * k + 532352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 266176) = 354294 * k + 133088 := by
    unfold C
    simp [show (708588 * k + 266176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133088) = 177147 * k + 66544 := by
    unfold C
    simp [show (354294 * k + 133088) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98555 : ∀ k : Nat,
    iterate (262144 * k + 98555) 29 = 177147 * k + 66601 ∧
      177147 * k + 66601 < 262144 * k + 98555 := by
  intro k
  have h1 : C (262144 * k + 98555) = 786432 * k + 295666 := by
    unfold C
    simp [show (262144 * k + 98555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 295666) = 393216 * k + 147833 := by
    unfold C
    simp [show (786432 * k + 295666) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147833) = 1179648 * k + 443500 := by
    unfold C
    simp [show (393216 * k + 147833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 443500) = 589824 * k + 221750 := by
    unfold C
    simp [show (1179648 * k + 443500) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 221750) = 294912 * k + 110875 := by
    unfold C
    simp [show (589824 * k + 221750) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 110875) = 884736 * k + 332626 := by
    unfold C
    simp [show (294912 * k + 110875) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 332626) = 442368 * k + 166313 := by
    unfold C
    simp [show (884736 * k + 332626) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 166313) = 1327104 * k + 498940 := by
    unfold C
    simp [show (442368 * k + 166313) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 498940) = 663552 * k + 249470 := by
    unfold C
    simp [show (1327104 * k + 498940) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 249470) = 331776 * k + 124735 := by
    unfold C
    simp [show (663552 * k + 249470) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 124735) = 995328 * k + 374206 := by
    unfold C
    simp [show (331776 * k + 124735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 374206) = 497664 * k + 187103 := by
    unfold C
    simp [show (995328 * k + 374206) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 187103) = 1492992 * k + 561310 := by
    unfold C
    simp [show (497664 * k + 187103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 561310) = 746496 * k + 280655 := by
    unfold C
    simp [show (1492992 * k + 561310) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 280655) = 2239488 * k + 841966 := by
    unfold C
    simp [show (746496 * k + 280655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 841966) = 1119744 * k + 420983 := by
    unfold C
    simp [show (2239488 * k + 841966) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 420983) = 3359232 * k + 1262950 := by
    unfold C
    simp [show (1119744 * k + 420983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1262950) = 1679616 * k + 631475 := by
    unfold C
    simp [show (3359232 * k + 1262950) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 631475) = 5038848 * k + 1894426 := by
    unfold C
    simp [show (1679616 * k + 631475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1894426) = 2519424 * k + 947213 := by
    unfold C
    simp [show (5038848 * k + 1894426) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 947213) = 7558272 * k + 2841640 := by
    unfold C
    simp [show (2519424 * k + 947213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2841640) = 3779136 * k + 1420820 := by
    unfold C
    simp [show (7558272 * k + 2841640) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1420820) = 1889568 * k + 710410 := by
    unfold C
    simp [show (3779136 * k + 1420820) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 710410) = 944784 * k + 355205 := by
    unfold C
    simp [show (1889568 * k + 710410) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 355205) = 2834352 * k + 1065616 := by
    unfold C
    simp [show (944784 * k + 355205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1065616) = 1417176 * k + 532808 := by
    unfold C
    simp [show (2834352 * k + 1065616) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 532808) = 708588 * k + 266404 := by
    unfold C
    simp [show (1417176 * k + 532808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 266404) = 354294 * k + 133202 := by
    unfold C
    simp [show (708588 * k + 266404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133202) = 177147 * k + 66601 := by
    unfold C
    simp [show (354294 * k + 133202) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98555) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98555))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98663 : ∀ k : Nat,
    iterate (262144 * k + 98663) 29 = 177147 * k + 66674 ∧
      177147 * k + 66674 < 262144 * k + 98663 := by
  intro k
  have h1 : C (262144 * k + 98663) = 786432 * k + 295990 := by
    unfold C
    simp [show (262144 * k + 98663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 295990) = 393216 * k + 147995 := by
    unfold C
    simp [show (786432 * k + 295990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 147995) = 1179648 * k + 443986 := by
    unfold C
    simp [show (393216 * k + 147995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 443986) = 589824 * k + 221993 := by
    unfold C
    simp [show (1179648 * k + 443986) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 221993) = 1769472 * k + 665980 := by
    unfold C
    simp [show (589824 * k + 221993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 665980) = 884736 * k + 332990 := by
    unfold C
    simp [show (1769472 * k + 665980) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 332990) = 442368 * k + 166495 := by
    unfold C
    simp [show (884736 * k + 332990) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 166495) = 1327104 * k + 499486 := by
    unfold C
    simp [show (442368 * k + 166495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 499486) = 663552 * k + 249743 := by
    unfold C
    simp [show (1327104 * k + 499486) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 249743) = 1990656 * k + 749230 := by
    unfold C
    simp [show (663552 * k + 249743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 749230) = 995328 * k + 374615 := by
    unfold C
    simp [show (1990656 * k + 749230) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 374615) = 2985984 * k + 1123846 := by
    unfold C
    simp [show (995328 * k + 374615) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1123846) = 1492992 * k + 561923 := by
    unfold C
    simp [show (2985984 * k + 1123846) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 561923) = 4478976 * k + 1685770 := by
    unfold C
    simp [show (1492992 * k + 561923) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1685770) = 2239488 * k + 842885 := by
    unfold C
    simp [show (4478976 * k + 1685770) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 842885) = 6718464 * k + 2528656 := by
    unfold C
    simp [show (2239488 * k + 842885) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2528656) = 3359232 * k + 1264328 := by
    unfold C
    simp [show (6718464 * k + 2528656) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1264328) = 1679616 * k + 632164 := by
    unfold C
    simp [show (3359232 * k + 1264328) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 632164) = 839808 * k + 316082 := by
    unfold C
    simp [show (1679616 * k + 632164) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 316082) = 419904 * k + 158041 := by
    unfold C
    simp [show (839808 * k + 316082) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 158041) = 1259712 * k + 474124 := by
    unfold C
    simp [show (419904 * k + 158041) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 474124) = 629856 * k + 237062 := by
    unfold C
    simp [show (1259712 * k + 474124) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 237062) = 314928 * k + 118531 := by
    unfold C
    simp [show (629856 * k + 237062) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 118531) = 944784 * k + 355594 := by
    unfold C
    simp [show (314928 * k + 118531) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 355594) = 472392 * k + 177797 := by
    unfold C
    simp [show (944784 * k + 355594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 177797) = 1417176 * k + 533392 := by
    unfold C
    simp [show (472392 * k + 177797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 533392) = 708588 * k + 266696 := by
    unfold C
    simp [show (1417176 * k + 533392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 266696) = 354294 * k + 133348 := by
    unfold C
    simp [show (708588 * k + 266696) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133348) = 177147 * k + 66674 := by
    unfold C
    simp [show (354294 * k + 133348) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98751 : ∀ k : Nat,
    iterate (262144 * k + 98751) 29 = 177147 * k + 66733 ∧
      177147 * k + 66733 < 262144 * k + 98751 := by
  intro k
  have h1 : C (262144 * k + 98751) = 786432 * k + 296254 := by
    unfold C
    simp [show (262144 * k + 98751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 296254) = 393216 * k + 148127 := by
    unfold C
    simp [show (786432 * k + 296254) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 148127) = 1179648 * k + 444382 := by
    unfold C
    simp [show (393216 * k + 148127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 444382) = 589824 * k + 222191 := by
    unfold C
    simp [show (1179648 * k + 444382) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 222191) = 1769472 * k + 666574 := by
    unfold C
    simp [show (589824 * k + 222191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 666574) = 884736 * k + 333287 := by
    unfold C
    simp [show (1769472 * k + 666574) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 333287) = 2654208 * k + 999862 := by
    unfold C
    simp [show (884736 * k + 333287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 999862) = 1327104 * k + 499931 := by
    unfold C
    simp [show (2654208 * k + 999862) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 499931) = 3981312 * k + 1499794 := by
    unfold C
    simp [show (1327104 * k + 499931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1499794) = 1990656 * k + 749897 := by
    unfold C
    simp [show (3981312 * k + 1499794) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 749897) = 5971968 * k + 2249692 := by
    unfold C
    simp [show (1990656 * k + 749897) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2249692) = 2985984 * k + 1124846 := by
    unfold C
    simp [show (5971968 * k + 2249692) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1124846) = 1492992 * k + 562423 := by
    unfold C
    simp [show (2985984 * k + 1124846) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 562423) = 4478976 * k + 1687270 := by
    unfold C
    simp [show (1492992 * k + 562423) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1687270) = 2239488 * k + 843635 := by
    unfold C
    simp [show (4478976 * k + 1687270) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 843635) = 6718464 * k + 2530906 := by
    unfold C
    simp [show (2239488 * k + 843635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2530906) = 3359232 * k + 1265453 := by
    unfold C
    simp [show (6718464 * k + 2530906) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1265453) = 10077696 * k + 3796360 := by
    unfold C
    simp [show (3359232 * k + 1265453) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3796360) = 5038848 * k + 1898180 := by
    unfold C
    simp [show (10077696 * k + 3796360) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1898180) = 2519424 * k + 949090 := by
    unfold C
    simp [show (5038848 * k + 1898180) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 949090) = 1259712 * k + 474545 := by
    unfold C
    simp [show (2519424 * k + 949090) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 474545) = 3779136 * k + 1423636 := by
    unfold C
    simp [show (1259712 * k + 474545) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1423636) = 1889568 * k + 711818 := by
    unfold C
    simp [show (3779136 * k + 1423636) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 711818) = 944784 * k + 355909 := by
    unfold C
    simp [show (1889568 * k + 711818) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 355909) = 2834352 * k + 1067728 := by
    unfold C
    simp [show (944784 * k + 355909) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1067728) = 1417176 * k + 533864 := by
    unfold C
    simp [show (2834352 * k + 1067728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 533864) = 708588 * k + 266932 := by
    unfold C
    simp [show (1417176 * k + 533864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 266932) = 354294 * k + 133466 := by
    unfold C
    simp [show (708588 * k + 266932) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133466) = 177147 * k + 66733 := by
    unfold C
    simp [show (354294 * k + 133466) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98751) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98751))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98783 : ∀ k : Nat,
    iterate (262144 * k + 98783) 29 = 177147 * k + 66755 ∧
      177147 * k + 66755 < 262144 * k + 98783 := by
  intro k
  have h1 : C (262144 * k + 98783) = 786432 * k + 296350 := by
    unfold C
    simp [show (262144 * k + 98783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 296350) = 393216 * k + 148175 := by
    unfold C
    simp [show (786432 * k + 296350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 148175) = 1179648 * k + 444526 := by
    unfold C
    simp [show (393216 * k + 148175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 444526) = 589824 * k + 222263 := by
    unfold C
    simp [show (1179648 * k + 444526) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 222263) = 1769472 * k + 666790 := by
    unfold C
    simp [show (589824 * k + 222263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 666790) = 884736 * k + 333395 := by
    unfold C
    simp [show (1769472 * k + 666790) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 333395) = 2654208 * k + 1000186 := by
    unfold C
    simp [show (884736 * k + 333395) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1000186) = 1327104 * k + 500093 := by
    unfold C
    simp [show (2654208 * k + 1000186) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 500093) = 3981312 * k + 1500280 := by
    unfold C
    simp [show (1327104 * k + 500093) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1500280) = 1990656 * k + 750140 := by
    unfold C
    simp [show (3981312 * k + 1500280) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 750140) = 995328 * k + 375070 := by
    unfold C
    simp [show (1990656 * k + 750140) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 375070) = 497664 * k + 187535 := by
    unfold C
    simp [show (995328 * k + 375070) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 187535) = 1492992 * k + 562606 := by
    unfold C
    simp [show (497664 * k + 187535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 562606) = 746496 * k + 281303 := by
    unfold C
    simp [show (1492992 * k + 562606) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 281303) = 2239488 * k + 843910 := by
    unfold C
    simp [show (746496 * k + 281303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 843910) = 1119744 * k + 421955 := by
    unfold C
    simp [show (2239488 * k + 843910) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 421955) = 3359232 * k + 1265866 := by
    unfold C
    simp [show (1119744 * k + 421955) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1265866) = 1679616 * k + 632933 := by
    unfold C
    simp [show (3359232 * k + 1265866) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 632933) = 5038848 * k + 1898800 := by
    unfold C
    simp [show (1679616 * k + 632933) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1898800) = 2519424 * k + 949400 := by
    unfold C
    simp [show (5038848 * k + 1898800) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 949400) = 1259712 * k + 474700 := by
    unfold C
    simp [show (2519424 * k + 949400) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 474700) = 629856 * k + 237350 := by
    unfold C
    simp [show (1259712 * k + 474700) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 237350) = 314928 * k + 118675 := by
    unfold C
    simp [show (629856 * k + 237350) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 118675) = 944784 * k + 356026 := by
    unfold C
    simp [show (314928 * k + 118675) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 356026) = 472392 * k + 178013 := by
    unfold C
    simp [show (944784 * k + 356026) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 178013) = 1417176 * k + 534040 := by
    unfold C
    simp [show (472392 * k + 178013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 534040) = 708588 * k + 267020 := by
    unfold C
    simp [show (1417176 * k + 534040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 267020) = 354294 * k + 133510 := by
    unfold C
    simp [show (708588 * k + 267020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133510) = 177147 * k + 66755 := by
    unfold C
    simp [show (354294 * k + 133510) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98863 : ∀ k : Nat,
    iterate (262144 * k + 98863) 29 = 177147 * k + 66809 ∧
      177147 * k + 66809 < 262144 * k + 98863 := by
  intro k
  have h1 : C (262144 * k + 98863) = 786432 * k + 296590 := by
    unfold C
    simp [show (262144 * k + 98863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 296590) = 393216 * k + 148295 := by
    unfold C
    simp [show (786432 * k + 296590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 148295) = 1179648 * k + 444886 := by
    unfold C
    simp [show (393216 * k + 148295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 444886) = 589824 * k + 222443 := by
    unfold C
    simp [show (1179648 * k + 444886) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 222443) = 1769472 * k + 667330 := by
    unfold C
    simp [show (589824 * k + 222443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 667330) = 884736 * k + 333665 := by
    unfold C
    simp [show (1769472 * k + 667330) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 333665) = 2654208 * k + 1000996 := by
    unfold C
    simp [show (884736 * k + 333665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1000996) = 1327104 * k + 500498 := by
    unfold C
    simp [show (2654208 * k + 1000996) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 500498) = 663552 * k + 250249 := by
    unfold C
    simp [show (1327104 * k + 500498) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 250249) = 1990656 * k + 750748 := by
    unfold C
    simp [show (663552 * k + 250249) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 750748) = 995328 * k + 375374 := by
    unfold C
    simp [show (1990656 * k + 750748) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 375374) = 497664 * k + 187687 := by
    unfold C
    simp [show (995328 * k + 375374) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 187687) = 1492992 * k + 563062 := by
    unfold C
    simp [show (497664 * k + 187687) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 563062) = 746496 * k + 281531 := by
    unfold C
    simp [show (1492992 * k + 563062) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 281531) = 2239488 * k + 844594 := by
    unfold C
    simp [show (746496 * k + 281531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 844594) = 1119744 * k + 422297 := by
    unfold C
    simp [show (2239488 * k + 844594) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 422297) = 3359232 * k + 1266892 := by
    unfold C
    simp [show (1119744 * k + 422297) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1266892) = 1679616 * k + 633446 := by
    unfold C
    simp [show (3359232 * k + 1266892) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 633446) = 839808 * k + 316723 := by
    unfold C
    simp [show (1679616 * k + 633446) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 316723) = 2519424 * k + 950170 := by
    unfold C
    simp [show (839808 * k + 316723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 950170) = 1259712 * k + 475085 := by
    unfold C
    simp [show (2519424 * k + 950170) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 475085) = 3779136 * k + 1425256 := by
    unfold C
    simp [show (1259712 * k + 475085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1425256) = 1889568 * k + 712628 := by
    unfold C
    simp [show (3779136 * k + 1425256) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 712628) = 944784 * k + 356314 := by
    unfold C
    simp [show (1889568 * k + 712628) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 356314) = 472392 * k + 178157 := by
    unfold C
    simp [show (944784 * k + 356314) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 178157) = 1417176 * k + 534472 := by
    unfold C
    simp [show (472392 * k + 178157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 534472) = 708588 * k + 267236 := by
    unfold C
    simp [show (1417176 * k + 534472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 267236) = 354294 * k + 133618 := by
    unfold C
    simp [show (708588 * k + 267236) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133618) = 177147 * k + 66809 := by
    unfold C
    simp [show (354294 * k + 133618) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_98907 : ∀ k : Nat,
    iterate (262144 * k + 98907) 29 = 177147 * k + 66839 ∧
      177147 * k + 66839 < 262144 * k + 98907 := by
  intro k
  have h1 : C (262144 * k + 98907) = 786432 * k + 296722 := by
    unfold C
    simp [show (262144 * k + 98907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 296722) = 393216 * k + 148361 := by
    unfold C
    simp [show (786432 * k + 296722) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 148361) = 1179648 * k + 445084 := by
    unfold C
    simp [show (393216 * k + 148361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 445084) = 589824 * k + 222542 := by
    unfold C
    simp [show (1179648 * k + 445084) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 222542) = 294912 * k + 111271 := by
    unfold C
    simp [show (589824 * k + 222542) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 111271) = 884736 * k + 333814 := by
    unfold C
    simp [show (294912 * k + 111271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 333814) = 442368 * k + 166907 := by
    unfold C
    simp [show (884736 * k + 333814) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 166907) = 1327104 * k + 500722 := by
    unfold C
    simp [show (442368 * k + 166907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 500722) = 663552 * k + 250361 := by
    unfold C
    simp [show (1327104 * k + 500722) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 250361) = 1990656 * k + 751084 := by
    unfold C
    simp [show (663552 * k + 250361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 751084) = 995328 * k + 375542 := by
    unfold C
    simp [show (1990656 * k + 751084) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 375542) = 497664 * k + 187771 := by
    unfold C
    simp [show (995328 * k + 375542) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 187771) = 1492992 * k + 563314 := by
    unfold C
    simp [show (497664 * k + 187771) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 563314) = 746496 * k + 281657 := by
    unfold C
    simp [show (1492992 * k + 563314) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 281657) = 2239488 * k + 844972 := by
    unfold C
    simp [show (746496 * k + 281657) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 844972) = 1119744 * k + 422486 := by
    unfold C
    simp [show (2239488 * k + 844972) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 422486) = 559872 * k + 211243 := by
    unfold C
    simp [show (1119744 * k + 422486) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 211243) = 1679616 * k + 633730 := by
    unfold C
    simp [show (559872 * k + 211243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 633730) = 839808 * k + 316865 := by
    unfold C
    simp [show (1679616 * k + 633730) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 316865) = 2519424 * k + 950596 := by
    unfold C
    simp [show (839808 * k + 316865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 950596) = 1259712 * k + 475298 := by
    unfold C
    simp [show (2519424 * k + 950596) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 475298) = 629856 * k + 237649 := by
    unfold C
    simp [show (1259712 * k + 475298) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 237649) = 1889568 * k + 712948 := by
    unfold C
    simp [show (629856 * k + 237649) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 712948) = 944784 * k + 356474 := by
    unfold C
    simp [show (1889568 * k + 712948) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 356474) = 472392 * k + 178237 := by
    unfold C
    simp [show (944784 * k + 356474) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 178237) = 1417176 * k + 534712 := by
    unfold C
    simp [show (472392 * k + 178237) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 534712) = 708588 * k + 267356 := by
    unfold C
    simp [show (1417176 * k + 534712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 267356) = 354294 * k + 133678 := by
    unfold C
    simp [show (708588 * k + 267356) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 133678) = 177147 * k + 66839 := by
    unfold C
    simp [show (354294 * k + 133678) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 98907) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 98907))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_100519 : ∀ k : Nat,
    iterate (262144 * k + 100519) 29 = 177147 * k + 67928 ∧
      177147 * k + 67928 < 262144 * k + 100519 := by
  intro k
  have h1 : C (262144 * k + 100519) = 786432 * k + 301558 := by
    unfold C
    simp [show (262144 * k + 100519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 301558) = 393216 * k + 150779 := by
    unfold C
    simp [show (786432 * k + 301558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 150779) = 1179648 * k + 452338 := by
    unfold C
    simp [show (393216 * k + 150779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 452338) = 589824 * k + 226169 := by
    unfold C
    simp [show (1179648 * k + 452338) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 226169) = 1769472 * k + 678508 := by
    unfold C
    simp [show (589824 * k + 226169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 678508) = 884736 * k + 339254 := by
    unfold C
    simp [show (1769472 * k + 678508) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 339254) = 442368 * k + 169627 := by
    unfold C
    simp [show (884736 * k + 339254) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 169627) = 1327104 * k + 508882 := by
    unfold C
    simp [show (442368 * k + 169627) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 508882) = 663552 * k + 254441 := by
    unfold C
    simp [show (1327104 * k + 508882) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 254441) = 1990656 * k + 763324 := by
    unfold C
    simp [show (663552 * k + 254441) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 763324) = 995328 * k + 381662 := by
    unfold C
    simp [show (1990656 * k + 763324) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 381662) = 497664 * k + 190831 := by
    unfold C
    simp [show (995328 * k + 381662) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 190831) = 1492992 * k + 572494 := by
    unfold C
    simp [show (497664 * k + 190831) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 572494) = 746496 * k + 286247 := by
    unfold C
    simp [show (1492992 * k + 572494) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 286247) = 2239488 * k + 858742 := by
    unfold C
    simp [show (746496 * k + 286247) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 858742) = 1119744 * k + 429371 := by
    unfold C
    simp [show (2239488 * k + 858742) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 429371) = 3359232 * k + 1288114 := by
    unfold C
    simp [show (1119744 * k + 429371) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1288114) = 1679616 * k + 644057 := by
    unfold C
    simp [show (3359232 * k + 1288114) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 644057) = 5038848 * k + 1932172 := by
    unfold C
    simp [show (1679616 * k + 644057) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1932172) = 2519424 * k + 966086 := by
    unfold C
    simp [show (5038848 * k + 1932172) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 966086) = 1259712 * k + 483043 := by
    unfold C
    simp [show (2519424 * k + 966086) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 483043) = 3779136 * k + 1449130 := by
    unfold C
    simp [show (1259712 * k + 483043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1449130) = 1889568 * k + 724565 := by
    unfold C
    simp [show (3779136 * k + 1449130) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 724565) = 5668704 * k + 2173696 := by
    unfold C
    simp [show (1889568 * k + 724565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2173696) = 2834352 * k + 1086848 := by
    unfold C
    simp [show (5668704 * k + 2173696) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1086848) = 1417176 * k + 543424 := by
    unfold C
    simp [show (2834352 * k + 1086848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 543424) = 708588 * k + 271712 := by
    unfold C
    simp [show (1417176 * k + 543424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 271712) = 354294 * k + 135856 := by
    unfold C
    simp [show (708588 * k + 271712) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 135856) = 177147 * k + 67928 := by
    unfold C
    simp [show (354294 * k + 135856) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 100519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 100519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_100799 : ∀ k : Nat,
    iterate (262144 * k + 100799) 29 = 177147 * k + 68117 ∧
      177147 * k + 68117 < 262144 * k + 100799 := by
  intro k
  have h1 : C (262144 * k + 100799) = 786432 * k + 302398 := by
    unfold C
    simp [show (262144 * k + 100799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 302398) = 393216 * k + 151199 := by
    unfold C
    simp [show (786432 * k + 302398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 151199) = 1179648 * k + 453598 := by
    unfold C
    simp [show (393216 * k + 151199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 453598) = 589824 * k + 226799 := by
    unfold C
    simp [show (1179648 * k + 453598) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 226799) = 1769472 * k + 680398 := by
    unfold C
    simp [show (589824 * k + 226799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 680398) = 884736 * k + 340199 := by
    unfold C
    simp [show (1769472 * k + 680398) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 340199) = 2654208 * k + 1020598 := by
    unfold C
    simp [show (884736 * k + 340199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1020598) = 1327104 * k + 510299 := by
    unfold C
    simp [show (2654208 * k + 1020598) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 510299) = 3981312 * k + 1530898 := by
    unfold C
    simp [show (1327104 * k + 510299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1530898) = 1990656 * k + 765449 := by
    unfold C
    simp [show (3981312 * k + 1530898) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 765449) = 5971968 * k + 2296348 := by
    unfold C
    simp [show (1990656 * k + 765449) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2296348) = 2985984 * k + 1148174 := by
    unfold C
    simp [show (5971968 * k + 2296348) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1148174) = 1492992 * k + 574087 := by
    unfold C
    simp [show (2985984 * k + 1148174) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 574087) = 4478976 * k + 1722262 := by
    unfold C
    simp [show (1492992 * k + 574087) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1722262) = 2239488 * k + 861131 := by
    unfold C
    simp [show (4478976 * k + 1722262) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 861131) = 6718464 * k + 2583394 := by
    unfold C
    simp [show (2239488 * k + 861131) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2583394) = 3359232 * k + 1291697 := by
    unfold C
    simp [show (6718464 * k + 2583394) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1291697) = 10077696 * k + 3875092 := by
    unfold C
    simp [show (3359232 * k + 1291697) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3875092) = 5038848 * k + 1937546 := by
    unfold C
    simp [show (10077696 * k + 3875092) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1937546) = 2519424 * k + 968773 := by
    unfold C
    simp [show (5038848 * k + 1937546) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 968773) = 7558272 * k + 2906320 := by
    unfold C
    simp [show (2519424 * k + 968773) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2906320) = 3779136 * k + 1453160 := by
    unfold C
    simp [show (7558272 * k + 2906320) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1453160) = 1889568 * k + 726580 := by
    unfold C
    simp [show (3779136 * k + 1453160) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 726580) = 944784 * k + 363290 := by
    unfold C
    simp [show (1889568 * k + 726580) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 363290) = 472392 * k + 181645 := by
    unfold C
    simp [show (944784 * k + 363290) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 181645) = 1417176 * k + 544936 := by
    unfold C
    simp [show (472392 * k + 181645) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 544936) = 708588 * k + 272468 := by
    unfold C
    simp [show (1417176 * k + 544936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 272468) = 354294 * k + 136234 := by
    unfold C
    simp [show (708588 * k + 272468) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 136234) = 177147 * k + 68117 := by
    unfold C
    simp [show (354294 * k + 136234) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 100799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 100799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_101019 : ∀ k : Nat,
    iterate (262144 * k + 101019) 29 = 177147 * k + 68266 ∧
      177147 * k + 68266 < 262144 * k + 101019 := by
  intro k
  have h1 : C (262144 * k + 101019) = 786432 * k + 303058 := by
    unfold C
    simp [show (262144 * k + 101019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 303058) = 393216 * k + 151529 := by
    unfold C
    simp [show (786432 * k + 303058) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 151529) = 1179648 * k + 454588 := by
    unfold C
    simp [show (393216 * k + 151529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 454588) = 589824 * k + 227294 := by
    unfold C
    simp [show (1179648 * k + 454588) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 227294) = 294912 * k + 113647 := by
    unfold C
    simp [show (589824 * k + 227294) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 113647) = 884736 * k + 340942 := by
    unfold C
    simp [show (294912 * k + 113647) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 340942) = 442368 * k + 170471 := by
    unfold C
    simp [show (884736 * k + 340942) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 170471) = 1327104 * k + 511414 := by
    unfold C
    simp [show (442368 * k + 170471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 511414) = 663552 * k + 255707 := by
    unfold C
    simp [show (1327104 * k + 511414) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 255707) = 1990656 * k + 767122 := by
    unfold C
    simp [show (663552 * k + 255707) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 767122) = 995328 * k + 383561 := by
    unfold C
    simp [show (1990656 * k + 767122) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 383561) = 2985984 * k + 1150684 := by
    unfold C
    simp [show (995328 * k + 383561) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1150684) = 1492992 * k + 575342 := by
    unfold C
    simp [show (2985984 * k + 1150684) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 575342) = 746496 * k + 287671 := by
    unfold C
    simp [show (1492992 * k + 575342) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 287671) = 2239488 * k + 863014 := by
    unfold C
    simp [show (746496 * k + 287671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 863014) = 1119744 * k + 431507 := by
    unfold C
    simp [show (2239488 * k + 863014) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 431507) = 3359232 * k + 1294522 := by
    unfold C
    simp [show (1119744 * k + 431507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1294522) = 1679616 * k + 647261 := by
    unfold C
    simp [show (3359232 * k + 1294522) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 647261) = 5038848 * k + 1941784 := by
    unfold C
    simp [show (1679616 * k + 647261) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1941784) = 2519424 * k + 970892 := by
    unfold C
    simp [show (5038848 * k + 1941784) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 970892) = 1259712 * k + 485446 := by
    unfold C
    simp [show (2519424 * k + 970892) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 485446) = 629856 * k + 242723 := by
    unfold C
    simp [show (1259712 * k + 485446) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 242723) = 1889568 * k + 728170 := by
    unfold C
    simp [show (629856 * k + 242723) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 728170) = 944784 * k + 364085 := by
    unfold C
    simp [show (1889568 * k + 728170) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 364085) = 2834352 * k + 1092256 := by
    unfold C
    simp [show (944784 * k + 364085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1092256) = 1417176 * k + 546128 := by
    unfold C
    simp [show (2834352 * k + 1092256) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 546128) = 708588 * k + 273064 := by
    unfold C
    simp [show (1417176 * k + 546128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 273064) = 354294 * k + 136532 := by
    unfold C
    simp [show (708588 * k + 273064) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 136532) = 177147 * k + 68266 := by
    unfold C
    simp [show (354294 * k + 136532) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 101019) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 101019))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_101055 : ∀ k : Nat,
    iterate (262144 * k + 101055) 29 = 177147 * k + 68290 ∧
      177147 * k + 68290 < 262144 * k + 101055 := by
  intro k
  have h1 : C (262144 * k + 101055) = 786432 * k + 303166 := by
    unfold C
    simp [show (262144 * k + 101055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 303166) = 393216 * k + 151583 := by
    unfold C
    simp [show (786432 * k + 303166) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 151583) = 1179648 * k + 454750 := by
    unfold C
    simp [show (393216 * k + 151583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 454750) = 589824 * k + 227375 := by
    unfold C
    simp [show (1179648 * k + 454750) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 227375) = 1769472 * k + 682126 := by
    unfold C
    simp [show (589824 * k + 227375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 682126) = 884736 * k + 341063 := by
    unfold C
    simp [show (1769472 * k + 682126) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 341063) = 2654208 * k + 1023190 := by
    unfold C
    simp [show (884736 * k + 341063) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1023190) = 1327104 * k + 511595 := by
    unfold C
    simp [show (2654208 * k + 1023190) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 511595) = 3981312 * k + 1534786 := by
    unfold C
    simp [show (1327104 * k + 511595) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1534786) = 1990656 * k + 767393 := by
    unfold C
    simp [show (3981312 * k + 1534786) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 767393) = 5971968 * k + 2302180 := by
    unfold C
    simp [show (1990656 * k + 767393) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2302180) = 2985984 * k + 1151090 := by
    unfold C
    simp [show (5971968 * k + 2302180) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1151090) = 1492992 * k + 575545 := by
    unfold C
    simp [show (2985984 * k + 1151090) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 575545) = 4478976 * k + 1726636 := by
    unfold C
    simp [show (1492992 * k + 575545) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1726636) = 2239488 * k + 863318 := by
    unfold C
    simp [show (4478976 * k + 1726636) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 863318) = 1119744 * k + 431659 := by
    unfold C
    simp [show (2239488 * k + 863318) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 431659) = 3359232 * k + 1294978 := by
    unfold C
    simp [show (1119744 * k + 431659) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1294978) = 1679616 * k + 647489 := by
    unfold C
    simp [show (3359232 * k + 1294978) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 647489) = 5038848 * k + 1942468 := by
    unfold C
    simp [show (1679616 * k + 647489) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1942468) = 2519424 * k + 971234 := by
    unfold C
    simp [show (5038848 * k + 1942468) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 971234) = 1259712 * k + 485617 := by
    unfold C
    simp [show (2519424 * k + 971234) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 485617) = 3779136 * k + 1456852 := by
    unfold C
    simp [show (1259712 * k + 485617) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1456852) = 1889568 * k + 728426 := by
    unfold C
    simp [show (3779136 * k + 1456852) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 728426) = 944784 * k + 364213 := by
    unfold C
    simp [show (1889568 * k + 728426) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 364213) = 2834352 * k + 1092640 := by
    unfold C
    simp [show (944784 * k + 364213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1092640) = 1417176 * k + 546320 := by
    unfold C
    simp [show (2834352 * k + 1092640) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 546320) = 708588 * k + 273160 := by
    unfold C
    simp [show (1417176 * k + 546320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 273160) = 354294 * k + 136580 := by
    unfold C
    simp [show (708588 * k + 273160) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 136580) = 177147 * k + 68290 := by
    unfold C
    simp [show (354294 * k + 136580) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 101055) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 101055))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_101407 : ∀ k : Nat,
    iterate (262144 * k + 101407) 29 = 177147 * k + 68528 ∧
      177147 * k + 68528 < 262144 * k + 101407 := by
  intro k
  have h1 : C (262144 * k + 101407) = 786432 * k + 304222 := by
    unfold C
    simp [show (262144 * k + 101407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 304222) = 393216 * k + 152111 := by
    unfold C
    simp [show (786432 * k + 304222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 152111) = 1179648 * k + 456334 := by
    unfold C
    simp [show (393216 * k + 152111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 456334) = 589824 * k + 228167 := by
    unfold C
    simp [show (1179648 * k + 456334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 228167) = 1769472 * k + 684502 := by
    unfold C
    simp [show (589824 * k + 228167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 684502) = 884736 * k + 342251 := by
    unfold C
    simp [show (1769472 * k + 684502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 342251) = 2654208 * k + 1026754 := by
    unfold C
    simp [show (884736 * k + 342251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1026754) = 1327104 * k + 513377 := by
    unfold C
    simp [show (2654208 * k + 1026754) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 513377) = 3981312 * k + 1540132 := by
    unfold C
    simp [show (1327104 * k + 513377) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1540132) = 1990656 * k + 770066 := by
    unfold C
    simp [show (3981312 * k + 1540132) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 770066) = 995328 * k + 385033 := by
    unfold C
    simp [show (1990656 * k + 770066) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 385033) = 2985984 * k + 1155100 := by
    unfold C
    simp [show (995328 * k + 385033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1155100) = 1492992 * k + 577550 := by
    unfold C
    simp [show (2985984 * k + 1155100) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 577550) = 746496 * k + 288775 := by
    unfold C
    simp [show (1492992 * k + 577550) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 288775) = 2239488 * k + 866326 := by
    unfold C
    simp [show (746496 * k + 288775) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 866326) = 1119744 * k + 433163 := by
    unfold C
    simp [show (2239488 * k + 866326) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 433163) = 3359232 * k + 1299490 := by
    unfold C
    simp [show (1119744 * k + 433163) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1299490) = 1679616 * k + 649745 := by
    unfold C
    simp [show (3359232 * k + 1299490) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 649745) = 5038848 * k + 1949236 := by
    unfold C
    simp [show (1679616 * k + 649745) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1949236) = 2519424 * k + 974618 := by
    unfold C
    simp [show (5038848 * k + 1949236) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 974618) = 1259712 * k + 487309 := by
    unfold C
    simp [show (2519424 * k + 974618) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 487309) = 3779136 * k + 1461928 := by
    unfold C
    simp [show (1259712 * k + 487309) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1461928) = 1889568 * k + 730964 := by
    unfold C
    simp [show (3779136 * k + 1461928) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 730964) = 944784 * k + 365482 := by
    unfold C
    simp [show (1889568 * k + 730964) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 365482) = 472392 * k + 182741 := by
    unfold C
    simp [show (944784 * k + 365482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 182741) = 1417176 * k + 548224 := by
    unfold C
    simp [show (472392 * k + 182741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 548224) = 708588 * k + 274112 := by
    unfold C
    simp [show (1417176 * k + 548224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 274112) = 354294 * k + 137056 := by
    unfold C
    simp [show (708588 * k + 274112) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 137056) = 177147 * k + 68528 := by
    unfold C
    simp [show (354294 * k + 137056) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 101407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 101407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_101531 : ∀ k : Nat,
    iterate (262144 * k + 101531) 29 = 177147 * k + 68612 ∧
      177147 * k + 68612 < 262144 * k + 101531 := by
  intro k
  have h1 : C (262144 * k + 101531) = 786432 * k + 304594 := by
    unfold C
    simp [show (262144 * k + 101531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 304594) = 393216 * k + 152297 := by
    unfold C
    simp [show (786432 * k + 304594) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 152297) = 1179648 * k + 456892 := by
    unfold C
    simp [show (393216 * k + 152297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 456892) = 589824 * k + 228446 := by
    unfold C
    simp [show (1179648 * k + 456892) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 228446) = 294912 * k + 114223 := by
    unfold C
    simp [show (589824 * k + 228446) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 114223) = 884736 * k + 342670 := by
    unfold C
    simp [show (294912 * k + 114223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 342670) = 442368 * k + 171335 := by
    unfold C
    simp [show (884736 * k + 342670) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 171335) = 1327104 * k + 514006 := by
    unfold C
    simp [show (442368 * k + 171335) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 514006) = 663552 * k + 257003 := by
    unfold C
    simp [show (1327104 * k + 514006) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 257003) = 1990656 * k + 771010 := by
    unfold C
    simp [show (663552 * k + 257003) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 771010) = 995328 * k + 385505 := by
    unfold C
    simp [show (1990656 * k + 771010) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 385505) = 2985984 * k + 1156516 := by
    unfold C
    simp [show (995328 * k + 385505) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1156516) = 1492992 * k + 578258 := by
    unfold C
    simp [show (2985984 * k + 1156516) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 578258) = 746496 * k + 289129 := by
    unfold C
    simp [show (1492992 * k + 578258) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 289129) = 2239488 * k + 867388 := by
    unfold C
    simp [show (746496 * k + 289129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 867388) = 1119744 * k + 433694 := by
    unfold C
    simp [show (2239488 * k + 867388) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 433694) = 559872 * k + 216847 := by
    unfold C
    simp [show (1119744 * k + 433694) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 216847) = 1679616 * k + 650542 := by
    unfold C
    simp [show (559872 * k + 216847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 650542) = 839808 * k + 325271 := by
    unfold C
    simp [show (1679616 * k + 650542) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 325271) = 2519424 * k + 975814 := by
    unfold C
    simp [show (839808 * k + 325271) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 975814) = 1259712 * k + 487907 := by
    unfold C
    simp [show (2519424 * k + 975814) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 487907) = 3779136 * k + 1463722 := by
    unfold C
    simp [show (1259712 * k + 487907) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1463722) = 1889568 * k + 731861 := by
    unfold C
    simp [show (3779136 * k + 1463722) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 731861) = 5668704 * k + 2195584 := by
    unfold C
    simp [show (1889568 * k + 731861) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2195584) = 2834352 * k + 1097792 := by
    unfold C
    simp [show (5668704 * k + 2195584) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1097792) = 1417176 * k + 548896 := by
    unfold C
    simp [show (2834352 * k + 1097792) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 548896) = 708588 * k + 274448 := by
    unfold C
    simp [show (1417176 * k + 548896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 274448) = 354294 * k + 137224 := by
    unfold C
    simp [show (708588 * k + 274448) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 137224) = 177147 * k + 68612 := by
    unfold C
    simp [show (354294 * k + 137224) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 101531) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 101531))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard019
