import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard028

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_143451 : ∀ k : Nat,
    iterate (262144 * k + 143451) 29 = 177147 * k + 96940 ∧
      177147 * k + 96940 < 262144 * k + 143451 := by
  intro k
  have h1 : C (262144 * k + 143451) = 786432 * k + 430354 := by
    unfold C
    simp [show (262144 * k + 143451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 430354) = 393216 * k + 215177 := by
    unfold C
    simp [show (786432 * k + 430354) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 215177) = 1179648 * k + 645532 := by
    unfold C
    simp [show (393216 * k + 215177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 645532) = 589824 * k + 322766 := by
    unfold C
    simp [show (1179648 * k + 645532) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 322766) = 294912 * k + 161383 := by
    unfold C
    simp [show (589824 * k + 322766) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 161383) = 884736 * k + 484150 := by
    unfold C
    simp [show (294912 * k + 161383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 484150) = 442368 * k + 242075 := by
    unfold C
    simp [show (884736 * k + 484150) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 242075) = 1327104 * k + 726226 := by
    unfold C
    simp [show (442368 * k + 242075) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 726226) = 663552 * k + 363113 := by
    unfold C
    simp [show (1327104 * k + 726226) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 363113) = 1990656 * k + 1089340 := by
    unfold C
    simp [show (663552 * k + 363113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1089340) = 995328 * k + 544670 := by
    unfold C
    simp [show (1990656 * k + 1089340) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 544670) = 497664 * k + 272335 := by
    unfold C
    simp [show (995328 * k + 544670) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 272335) = 1492992 * k + 817006 := by
    unfold C
    simp [show (497664 * k + 272335) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 817006) = 746496 * k + 408503 := by
    unfold C
    simp [show (1492992 * k + 817006) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 408503) = 2239488 * k + 1225510 := by
    unfold C
    simp [show (746496 * k + 408503) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1225510) = 1119744 * k + 612755 := by
    unfold C
    simp [show (2239488 * k + 1225510) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 612755) = 3359232 * k + 1838266 := by
    unfold C
    simp [show (1119744 * k + 612755) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1838266) = 1679616 * k + 919133 := by
    unfold C
    simp [show (3359232 * k + 1838266) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 919133) = 5038848 * k + 2757400 := by
    unfold C
    simp [show (1679616 * k + 919133) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2757400) = 2519424 * k + 1378700 := by
    unfold C
    simp [show (5038848 * k + 2757400) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1378700) = 1259712 * k + 689350 := by
    unfold C
    simp [show (2519424 * k + 1378700) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 689350) = 629856 * k + 344675 := by
    unfold C
    simp [show (1259712 * k + 689350) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 344675) = 1889568 * k + 1034026 := by
    unfold C
    simp [show (629856 * k + 344675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1034026) = 944784 * k + 517013 := by
    unfold C
    simp [show (1889568 * k + 1034026) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 517013) = 2834352 * k + 1551040 := by
    unfold C
    simp [show (944784 * k + 517013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1551040) = 1417176 * k + 775520 := by
    unfold C
    simp [show (2834352 * k + 1551040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 775520) = 708588 * k + 387760 := by
    unfold C
    simp [show (1417176 * k + 775520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 387760) = 354294 * k + 193880 := by
    unfold C
    simp [show (708588 * k + 387760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 193880) = 177147 * k + 96940 := by
    unfold C
    simp [show (354294 * k + 193880) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 143451) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 143451))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_143839 : ∀ k : Nat,
    iterate (262144 * k + 143839) 29 = 177147 * k + 97202 ∧
      177147 * k + 97202 < 262144 * k + 143839 := by
  intro k
  have h1 : C (262144 * k + 143839) = 786432 * k + 431518 := by
    unfold C
    simp [show (262144 * k + 143839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 431518) = 393216 * k + 215759 := by
    unfold C
    simp [show (786432 * k + 431518) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 215759) = 1179648 * k + 647278 := by
    unfold C
    simp [show (393216 * k + 215759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 647278) = 589824 * k + 323639 := by
    unfold C
    simp [show (1179648 * k + 647278) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 323639) = 1769472 * k + 970918 := by
    unfold C
    simp [show (589824 * k + 323639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 970918) = 884736 * k + 485459 := by
    unfold C
    simp [show (1769472 * k + 970918) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 485459) = 2654208 * k + 1456378 := by
    unfold C
    simp [show (884736 * k + 485459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1456378) = 1327104 * k + 728189 := by
    unfold C
    simp [show (2654208 * k + 1456378) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 728189) = 3981312 * k + 2184568 := by
    unfold C
    simp [show (1327104 * k + 728189) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2184568) = 1990656 * k + 1092284 := by
    unfold C
    simp [show (3981312 * k + 2184568) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1092284) = 995328 * k + 546142 := by
    unfold C
    simp [show (1990656 * k + 1092284) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 546142) = 497664 * k + 273071 := by
    unfold C
    simp [show (995328 * k + 546142) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 273071) = 1492992 * k + 819214 := by
    unfold C
    simp [show (497664 * k + 273071) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 819214) = 746496 * k + 409607 := by
    unfold C
    simp [show (1492992 * k + 819214) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 409607) = 2239488 * k + 1228822 := by
    unfold C
    simp [show (746496 * k + 409607) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1228822) = 1119744 * k + 614411 := by
    unfold C
    simp [show (2239488 * k + 1228822) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 614411) = 3359232 * k + 1843234 := by
    unfold C
    simp [show (1119744 * k + 614411) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1843234) = 1679616 * k + 921617 := by
    unfold C
    simp [show (3359232 * k + 1843234) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 921617) = 5038848 * k + 2764852 := by
    unfold C
    simp [show (1679616 * k + 921617) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2764852) = 2519424 * k + 1382426 := by
    unfold C
    simp [show (5038848 * k + 2764852) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1382426) = 1259712 * k + 691213 := by
    unfold C
    simp [show (2519424 * k + 1382426) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 691213) = 3779136 * k + 2073640 := by
    unfold C
    simp [show (1259712 * k + 691213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2073640) = 1889568 * k + 1036820 := by
    unfold C
    simp [show (3779136 * k + 2073640) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1036820) = 944784 * k + 518410 := by
    unfold C
    simp [show (1889568 * k + 1036820) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 518410) = 472392 * k + 259205 := by
    unfold C
    simp [show (944784 * k + 518410) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 259205) = 1417176 * k + 777616 := by
    unfold C
    simp [show (472392 * k + 259205) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 777616) = 708588 * k + 388808 := by
    unfold C
    simp [show (1417176 * k + 777616) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 388808) = 354294 * k + 194404 := by
    unfold C
    simp [show (708588 * k + 388808) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 194404) = 177147 * k + 97202 := by
    unfold C
    simp [show (354294 * k + 194404) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 143839) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 143839))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_143963 : ∀ k : Nat,
    iterate (262144 * k + 143963) 29 = 177147 * k + 97286 ∧
      177147 * k + 97286 < 262144 * k + 143963 := by
  intro k
  have h1 : C (262144 * k + 143963) = 786432 * k + 431890 := by
    unfold C
    simp [show (262144 * k + 143963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 431890) = 393216 * k + 215945 := by
    unfold C
    simp [show (786432 * k + 431890) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 215945) = 1179648 * k + 647836 := by
    unfold C
    simp [show (393216 * k + 215945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 647836) = 589824 * k + 323918 := by
    unfold C
    simp [show (1179648 * k + 647836) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 323918) = 294912 * k + 161959 := by
    unfold C
    simp [show (589824 * k + 323918) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 161959) = 884736 * k + 485878 := by
    unfold C
    simp [show (294912 * k + 161959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 485878) = 442368 * k + 242939 := by
    unfold C
    simp [show (884736 * k + 485878) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 242939) = 1327104 * k + 728818 := by
    unfold C
    simp [show (442368 * k + 242939) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 728818) = 663552 * k + 364409 := by
    unfold C
    simp [show (1327104 * k + 728818) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 364409) = 1990656 * k + 1093228 := by
    unfold C
    simp [show (663552 * k + 364409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1093228) = 995328 * k + 546614 := by
    unfold C
    simp [show (1990656 * k + 1093228) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 546614) = 497664 * k + 273307 := by
    unfold C
    simp [show (995328 * k + 546614) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 273307) = 1492992 * k + 819922 := by
    unfold C
    simp [show (497664 * k + 273307) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 819922) = 746496 * k + 409961 := by
    unfold C
    simp [show (1492992 * k + 819922) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 409961) = 2239488 * k + 1229884 := by
    unfold C
    simp [show (746496 * k + 409961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1229884) = 1119744 * k + 614942 := by
    unfold C
    simp [show (2239488 * k + 1229884) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 614942) = 559872 * k + 307471 := by
    unfold C
    simp [show (1119744 * k + 614942) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 307471) = 1679616 * k + 922414 := by
    unfold C
    simp [show (559872 * k + 307471) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 922414) = 839808 * k + 461207 := by
    unfold C
    simp [show (1679616 * k + 922414) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 461207) = 2519424 * k + 1383622 := by
    unfold C
    simp [show (839808 * k + 461207) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1383622) = 1259712 * k + 691811 := by
    unfold C
    simp [show (2519424 * k + 1383622) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 691811) = 3779136 * k + 2075434 := by
    unfold C
    simp [show (1259712 * k + 691811) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2075434) = 1889568 * k + 1037717 := by
    unfold C
    simp [show (3779136 * k + 2075434) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1037717) = 5668704 * k + 3113152 := by
    unfold C
    simp [show (1889568 * k + 1037717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3113152) = 2834352 * k + 1556576 := by
    unfold C
    simp [show (5668704 * k + 3113152) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1556576) = 1417176 * k + 778288 := by
    unfold C
    simp [show (2834352 * k + 1556576) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 778288) = 708588 * k + 389144 := by
    unfold C
    simp [show (1417176 * k + 778288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 389144) = 354294 * k + 194572 := by
    unfold C
    simp [show (708588 * k + 389144) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 194572) = 177147 * k + 97286 := by
    unfold C
    simp [show (354294 * k + 194572) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 143963) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 143963))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_144863 : ∀ k : Nat,
    iterate (262144 * k + 144863) 29 = 177147 * k + 97894 ∧
      177147 * k + 97894 < 262144 * k + 144863 := by
  intro k
  have h1 : C (262144 * k + 144863) = 786432 * k + 434590 := by
    unfold C
    simp [show (262144 * k + 144863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 434590) = 393216 * k + 217295 := by
    unfold C
    simp [show (786432 * k + 434590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 217295) = 1179648 * k + 651886 := by
    unfold C
    simp [show (393216 * k + 217295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 651886) = 589824 * k + 325943 := by
    unfold C
    simp [show (1179648 * k + 651886) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 325943) = 1769472 * k + 977830 := by
    unfold C
    simp [show (589824 * k + 325943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 977830) = 884736 * k + 488915 := by
    unfold C
    simp [show (1769472 * k + 977830) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 488915) = 2654208 * k + 1466746 := by
    unfold C
    simp [show (884736 * k + 488915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1466746) = 1327104 * k + 733373 := by
    unfold C
    simp [show (2654208 * k + 1466746) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 733373) = 3981312 * k + 2200120 := by
    unfold C
    simp [show (1327104 * k + 733373) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2200120) = 1990656 * k + 1100060 := by
    unfold C
    simp [show (3981312 * k + 2200120) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1100060) = 995328 * k + 550030 := by
    unfold C
    simp [show (1990656 * k + 1100060) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 550030) = 497664 * k + 275015 := by
    unfold C
    simp [show (995328 * k + 550030) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 275015) = 1492992 * k + 825046 := by
    unfold C
    simp [show (497664 * k + 275015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 825046) = 746496 * k + 412523 := by
    unfold C
    simp [show (1492992 * k + 825046) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 412523) = 2239488 * k + 1237570 := by
    unfold C
    simp [show (746496 * k + 412523) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1237570) = 1119744 * k + 618785 := by
    unfold C
    simp [show (2239488 * k + 1237570) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 618785) = 3359232 * k + 1856356 := by
    unfold C
    simp [show (1119744 * k + 618785) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1856356) = 1679616 * k + 928178 := by
    unfold C
    simp [show (3359232 * k + 1856356) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 928178) = 839808 * k + 464089 := by
    unfold C
    simp [show (1679616 * k + 928178) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 464089) = 2519424 * k + 1392268 := by
    unfold C
    simp [show (839808 * k + 464089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1392268) = 1259712 * k + 696134 := by
    unfold C
    simp [show (2519424 * k + 1392268) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 696134) = 629856 * k + 348067 := by
    unfold C
    simp [show (1259712 * k + 696134) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 348067) = 1889568 * k + 1044202 := by
    unfold C
    simp [show (629856 * k + 348067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1044202) = 944784 * k + 522101 := by
    unfold C
    simp [show (1889568 * k + 1044202) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 522101) = 2834352 * k + 1566304 := by
    unfold C
    simp [show (944784 * k + 522101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1566304) = 1417176 * k + 783152 := by
    unfold C
    simp [show (2834352 * k + 1566304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 783152) = 708588 * k + 391576 := by
    unfold C
    simp [show (1417176 * k + 783152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 391576) = 354294 * k + 195788 := by
    unfold C
    simp [show (708588 * k + 391576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 195788) = 177147 * k + 97894 := by
    unfold C
    simp [show (354294 * k + 195788) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 144863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 144863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_144943 : ∀ k : Nat,
    iterate (262144 * k + 144943) 29 = 177147 * k + 97948 ∧
      177147 * k + 97948 < 262144 * k + 144943 := by
  intro k
  have h1 : C (262144 * k + 144943) = 786432 * k + 434830 := by
    unfold C
    simp [show (262144 * k + 144943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 434830) = 393216 * k + 217415 := by
    unfold C
    simp [show (786432 * k + 434830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 217415) = 1179648 * k + 652246 := by
    unfold C
    simp [show (393216 * k + 217415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 652246) = 589824 * k + 326123 := by
    unfold C
    simp [show (1179648 * k + 652246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 326123) = 1769472 * k + 978370 := by
    unfold C
    simp [show (589824 * k + 326123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 978370) = 884736 * k + 489185 := by
    unfold C
    simp [show (1769472 * k + 978370) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 489185) = 2654208 * k + 1467556 := by
    unfold C
    simp [show (884736 * k + 489185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1467556) = 1327104 * k + 733778 := by
    unfold C
    simp [show (2654208 * k + 1467556) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 733778) = 663552 * k + 366889 := by
    unfold C
    simp [show (1327104 * k + 733778) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 366889) = 1990656 * k + 1100668 := by
    unfold C
    simp [show (663552 * k + 366889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1100668) = 995328 * k + 550334 := by
    unfold C
    simp [show (1990656 * k + 1100668) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 550334) = 497664 * k + 275167 := by
    unfold C
    simp [show (995328 * k + 550334) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 275167) = 1492992 * k + 825502 := by
    unfold C
    simp [show (497664 * k + 275167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 825502) = 746496 * k + 412751 := by
    unfold C
    simp [show (1492992 * k + 825502) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 412751) = 2239488 * k + 1238254 := by
    unfold C
    simp [show (746496 * k + 412751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1238254) = 1119744 * k + 619127 := by
    unfold C
    simp [show (2239488 * k + 1238254) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 619127) = 3359232 * k + 1857382 := by
    unfold C
    simp [show (1119744 * k + 619127) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1857382) = 1679616 * k + 928691 := by
    unfold C
    simp [show (3359232 * k + 1857382) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 928691) = 5038848 * k + 2786074 := by
    unfold C
    simp [show (1679616 * k + 928691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2786074) = 2519424 * k + 1393037 := by
    unfold C
    simp [show (5038848 * k + 2786074) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1393037) = 7558272 * k + 4179112 := by
    unfold C
    simp [show (2519424 * k + 1393037) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4179112) = 3779136 * k + 2089556 := by
    unfold C
    simp [show (7558272 * k + 4179112) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2089556) = 1889568 * k + 1044778 := by
    unfold C
    simp [show (3779136 * k + 2089556) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1044778) = 944784 * k + 522389 := by
    unfold C
    simp [show (1889568 * k + 1044778) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 522389) = 2834352 * k + 1567168 := by
    unfold C
    simp [show (944784 * k + 522389) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1567168) = 1417176 * k + 783584 := by
    unfold C
    simp [show (2834352 * k + 1567168) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 783584) = 708588 * k + 391792 := by
    unfold C
    simp [show (1417176 * k + 783584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 391792) = 354294 * k + 195896 := by
    unfold C
    simp [show (708588 * k + 391792) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 195896) = 177147 * k + 97948 := by
    unfold C
    simp [show (354294 * k + 195896) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 144943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 144943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_145535 : ∀ k : Nat,
    iterate (262144 * k + 145535) 29 = 177147 * k + 98348 ∧
      177147 * k + 98348 < 262144 * k + 145535 := by
  intro k
  have h1 : C (262144 * k + 145535) = 786432 * k + 436606 := by
    unfold C
    simp [show (262144 * k + 145535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 436606) = 393216 * k + 218303 := by
    unfold C
    simp [show (786432 * k + 436606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 218303) = 1179648 * k + 654910 := by
    unfold C
    simp [show (393216 * k + 218303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 654910) = 589824 * k + 327455 := by
    unfold C
    simp [show (1179648 * k + 654910) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 327455) = 1769472 * k + 982366 := by
    unfold C
    simp [show (589824 * k + 327455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 982366) = 884736 * k + 491183 := by
    unfold C
    simp [show (1769472 * k + 982366) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 491183) = 2654208 * k + 1473550 := by
    unfold C
    simp [show (884736 * k + 491183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1473550) = 1327104 * k + 736775 := by
    unfold C
    simp [show (2654208 * k + 1473550) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 736775) = 3981312 * k + 2210326 := by
    unfold C
    simp [show (1327104 * k + 736775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2210326) = 1990656 * k + 1105163 := by
    unfold C
    simp [show (3981312 * k + 2210326) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1105163) = 5971968 * k + 3315490 := by
    unfold C
    simp [show (1990656 * k + 1105163) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3315490) = 2985984 * k + 1657745 := by
    unfold C
    simp [show (5971968 * k + 3315490) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1657745) = 8957952 * k + 4973236 := by
    unfold C
    simp [show (2985984 * k + 1657745) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4973236) = 4478976 * k + 2486618 := by
    unfold C
    simp [show (8957952 * k + 4973236) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2486618) = 2239488 * k + 1243309 := by
    unfold C
    simp [show (4478976 * k + 2486618) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1243309) = 6718464 * k + 3729928 := by
    unfold C
    simp [show (2239488 * k + 1243309) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3729928) = 3359232 * k + 1864964 := by
    unfold C
    simp [show (6718464 * k + 3729928) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1864964) = 1679616 * k + 932482 := by
    unfold C
    simp [show (3359232 * k + 1864964) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 932482) = 839808 * k + 466241 := by
    unfold C
    simp [show (1679616 * k + 932482) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 466241) = 2519424 * k + 1398724 := by
    unfold C
    simp [show (839808 * k + 466241) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1398724) = 1259712 * k + 699362 := by
    unfold C
    simp [show (2519424 * k + 1398724) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 699362) = 629856 * k + 349681 := by
    unfold C
    simp [show (1259712 * k + 699362) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 349681) = 1889568 * k + 1049044 := by
    unfold C
    simp [show (629856 * k + 349681) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1049044) = 944784 * k + 524522 := by
    unfold C
    simp [show (1889568 * k + 1049044) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 524522) = 472392 * k + 262261 := by
    unfold C
    simp [show (944784 * k + 524522) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 262261) = 1417176 * k + 786784 := by
    unfold C
    simp [show (472392 * k + 262261) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 786784) = 708588 * k + 393392 := by
    unfold C
    simp [show (1417176 * k + 786784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 393392) = 354294 * k + 196696 := by
    unfold C
    simp [show (708588 * k + 393392) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 196696) = 177147 * k + 98348 := by
    unfold C
    simp [show (354294 * k + 196696) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 145535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 145535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_146879 : ∀ k : Nat,
    iterate (262144 * k + 146879) 29 = 177147 * k + 99256 ∧
      177147 * k + 99256 < 262144 * k + 146879 := by
  intro k
  have h1 : C (262144 * k + 146879) = 786432 * k + 440638 := by
    unfold C
    simp [show (262144 * k + 146879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 440638) = 393216 * k + 220319 := by
    unfold C
    simp [show (786432 * k + 440638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 220319) = 1179648 * k + 660958 := by
    unfold C
    simp [show (393216 * k + 220319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 660958) = 589824 * k + 330479 := by
    unfold C
    simp [show (1179648 * k + 660958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 330479) = 1769472 * k + 991438 := by
    unfold C
    simp [show (589824 * k + 330479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 991438) = 884736 * k + 495719 := by
    unfold C
    simp [show (1769472 * k + 991438) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 495719) = 2654208 * k + 1487158 := by
    unfold C
    simp [show (884736 * k + 495719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1487158) = 1327104 * k + 743579 := by
    unfold C
    simp [show (2654208 * k + 1487158) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 743579) = 3981312 * k + 2230738 := by
    unfold C
    simp [show (1327104 * k + 743579) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2230738) = 1990656 * k + 1115369 := by
    unfold C
    simp [show (3981312 * k + 2230738) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1115369) = 5971968 * k + 3346108 := by
    unfold C
    simp [show (1990656 * k + 1115369) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3346108) = 2985984 * k + 1673054 := by
    unfold C
    simp [show (5971968 * k + 3346108) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1673054) = 1492992 * k + 836527 := by
    unfold C
    simp [show (2985984 * k + 1673054) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 836527) = 4478976 * k + 2509582 := by
    unfold C
    simp [show (1492992 * k + 836527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2509582) = 2239488 * k + 1254791 := by
    unfold C
    simp [show (4478976 * k + 2509582) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1254791) = 6718464 * k + 3764374 := by
    unfold C
    simp [show (2239488 * k + 1254791) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3764374) = 3359232 * k + 1882187 := by
    unfold C
    simp [show (6718464 * k + 3764374) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1882187) = 10077696 * k + 5646562 := by
    unfold C
    simp [show (3359232 * k + 1882187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5646562) = 5038848 * k + 2823281 := by
    unfold C
    simp [show (10077696 * k + 5646562) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2823281) = 15116544 * k + 8469844 := by
    unfold C
    simp [show (5038848 * k + 2823281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 8469844) = 7558272 * k + 4234922 := by
    unfold C
    simp [show (15116544 * k + 8469844) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 4234922) = 3779136 * k + 2117461 := by
    unfold C
    simp [show (7558272 * k + 4234922) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2117461) = 11337408 * k + 6352384 := by
    unfold C
    simp [show (3779136 * k + 2117461) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 6352384) = 5668704 * k + 3176192 := by
    unfold C
    simp [show (11337408 * k + 6352384) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3176192) = 2834352 * k + 1588096 := by
    unfold C
    simp [show (5668704 * k + 3176192) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1588096) = 1417176 * k + 794048 := by
    unfold C
    simp [show (2834352 * k + 1588096) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 794048) = 708588 * k + 397024 := by
    unfold C
    simp [show (1417176 * k + 794048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 397024) = 354294 * k + 198512 := by
    unfold C
    simp [show (708588 * k + 397024) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 198512) = 177147 * k + 99256 := by
    unfold C
    simp [show (354294 * k + 198512) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 146879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 146879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147047 : ∀ k : Nat,
    iterate (262144 * k + 147047) 29 = 177147 * k + 99370 ∧
      177147 * k + 99370 < 262144 * k + 147047 := by
  intro k
  have h1 : C (262144 * k + 147047) = 786432 * k + 441142 := by
    unfold C
    simp [show (262144 * k + 147047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 441142) = 393216 * k + 220571 := by
    unfold C
    simp [show (786432 * k + 441142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 220571) = 1179648 * k + 661714 := by
    unfold C
    simp [show (393216 * k + 220571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 661714) = 589824 * k + 330857 := by
    unfold C
    simp [show (1179648 * k + 661714) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 330857) = 1769472 * k + 992572 := by
    unfold C
    simp [show (589824 * k + 330857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 992572) = 884736 * k + 496286 := by
    unfold C
    simp [show (1769472 * k + 992572) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 496286) = 442368 * k + 248143 := by
    unfold C
    simp [show (884736 * k + 496286) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 248143) = 1327104 * k + 744430 := by
    unfold C
    simp [show (442368 * k + 248143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 744430) = 663552 * k + 372215 := by
    unfold C
    simp [show (1327104 * k + 744430) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 372215) = 1990656 * k + 1116646 := by
    unfold C
    simp [show (663552 * k + 372215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1116646) = 995328 * k + 558323 := by
    unfold C
    simp [show (1990656 * k + 1116646) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 558323) = 2985984 * k + 1674970 := by
    unfold C
    simp [show (995328 * k + 558323) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1674970) = 1492992 * k + 837485 := by
    unfold C
    simp [show (2985984 * k + 1674970) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 837485) = 4478976 * k + 2512456 := by
    unfold C
    simp [show (1492992 * k + 837485) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2512456) = 2239488 * k + 1256228 := by
    unfold C
    simp [show (4478976 * k + 2512456) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1256228) = 1119744 * k + 628114 := by
    unfold C
    simp [show (2239488 * k + 1256228) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 628114) = 559872 * k + 314057 := by
    unfold C
    simp [show (1119744 * k + 628114) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 314057) = 1679616 * k + 942172 := by
    unfold C
    simp [show (559872 * k + 314057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 942172) = 839808 * k + 471086 := by
    unfold C
    simp [show (1679616 * k + 942172) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 471086) = 419904 * k + 235543 := by
    unfold C
    simp [show (839808 * k + 471086) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 235543) = 1259712 * k + 706630 := by
    unfold C
    simp [show (419904 * k + 235543) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 706630) = 629856 * k + 353315 := by
    unfold C
    simp [show (1259712 * k + 706630) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 353315) = 1889568 * k + 1059946 := by
    unfold C
    simp [show (629856 * k + 353315) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1059946) = 944784 * k + 529973 := by
    unfold C
    simp [show (1889568 * k + 1059946) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 529973) = 2834352 * k + 1589920 := by
    unfold C
    simp [show (944784 * k + 529973) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1589920) = 1417176 * k + 794960 := by
    unfold C
    simp [show (2834352 * k + 1589920) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 794960) = 708588 * k + 397480 := by
    unfold C
    simp [show (1417176 * k + 794960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 397480) = 354294 * k + 198740 := by
    unfold C
    simp [show (708588 * k + 397480) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 198740) = 177147 * k + 99370 := by
    unfold C
    simp [show (354294 * k + 198740) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147327 : ∀ k : Nat,
    iterate (262144 * k + 147327) 29 = 177147 * k + 99559 ∧
      177147 * k + 99559 < 262144 * k + 147327 := by
  intro k
  have h1 : C (262144 * k + 147327) = 786432 * k + 441982 := by
    unfold C
    simp [show (262144 * k + 147327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 441982) = 393216 * k + 220991 := by
    unfold C
    simp [show (786432 * k + 441982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 220991) = 1179648 * k + 662974 := by
    unfold C
    simp [show (393216 * k + 220991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 662974) = 589824 * k + 331487 := by
    unfold C
    simp [show (1179648 * k + 662974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 331487) = 1769472 * k + 994462 := by
    unfold C
    simp [show (589824 * k + 331487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 994462) = 884736 * k + 497231 := by
    unfold C
    simp [show (1769472 * k + 994462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 497231) = 2654208 * k + 1491694 := by
    unfold C
    simp [show (884736 * k + 497231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1491694) = 1327104 * k + 745847 := by
    unfold C
    simp [show (2654208 * k + 1491694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 745847) = 3981312 * k + 2237542 := by
    unfold C
    simp [show (1327104 * k + 745847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2237542) = 1990656 * k + 1118771 := by
    unfold C
    simp [show (3981312 * k + 2237542) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1118771) = 5971968 * k + 3356314 := by
    unfold C
    simp [show (1990656 * k + 1118771) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3356314) = 2985984 * k + 1678157 := by
    unfold C
    simp [show (5971968 * k + 3356314) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1678157) = 8957952 * k + 5034472 := by
    unfold C
    simp [show (2985984 * k + 1678157) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5034472) = 4478976 * k + 2517236 := by
    unfold C
    simp [show (8957952 * k + 5034472) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2517236) = 2239488 * k + 1258618 := by
    unfold C
    simp [show (4478976 * k + 2517236) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1258618) = 1119744 * k + 629309 := by
    unfold C
    simp [show (2239488 * k + 1258618) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 629309) = 3359232 * k + 1887928 := by
    unfold C
    simp [show (1119744 * k + 629309) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1887928) = 1679616 * k + 943964 := by
    unfold C
    simp [show (3359232 * k + 1887928) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 943964) = 839808 * k + 471982 := by
    unfold C
    simp [show (1679616 * k + 943964) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 471982) = 419904 * k + 235991 := by
    unfold C
    simp [show (839808 * k + 471982) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 235991) = 1259712 * k + 707974 := by
    unfold C
    simp [show (419904 * k + 235991) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 707974) = 629856 * k + 353987 := by
    unfold C
    simp [show (1259712 * k + 707974) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 353987) = 1889568 * k + 1061962 := by
    unfold C
    simp [show (629856 * k + 353987) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1061962) = 944784 * k + 530981 := by
    unfold C
    simp [show (1889568 * k + 1061962) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 530981) = 2834352 * k + 1592944 := by
    unfold C
    simp [show (944784 * k + 530981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1592944) = 1417176 * k + 796472 := by
    unfold C
    simp [show (2834352 * k + 1592944) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 796472) = 708588 * k + 398236 := by
    unfold C
    simp [show (1417176 * k + 796472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 398236) = 354294 * k + 199118 := by
    unfold C
    simp [show (708588 * k + 398236) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 199118) = 177147 * k + 99559 := by
    unfold C
    simp [show (354294 * k + 199118) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147439 : ∀ k : Nat,
    iterate (262144 * k + 147439) 29 = 177147 * k + 99635 ∧
      177147 * k + 99635 < 262144 * k + 147439 := by
  intro k
  have h1 : C (262144 * k + 147439) = 786432 * k + 442318 := by
    unfold C
    simp [show (262144 * k + 147439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 442318) = 393216 * k + 221159 := by
    unfold C
    simp [show (786432 * k + 442318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 221159) = 1179648 * k + 663478 := by
    unfold C
    simp [show (393216 * k + 221159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 663478) = 589824 * k + 331739 := by
    unfold C
    simp [show (1179648 * k + 663478) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 331739) = 1769472 * k + 995218 := by
    unfold C
    simp [show (589824 * k + 331739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 995218) = 884736 * k + 497609 := by
    unfold C
    simp [show (1769472 * k + 995218) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 497609) = 2654208 * k + 1492828 := by
    unfold C
    simp [show (884736 * k + 497609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1492828) = 1327104 * k + 746414 := by
    unfold C
    simp [show (2654208 * k + 1492828) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 746414) = 663552 * k + 373207 := by
    unfold C
    simp [show (1327104 * k + 746414) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 373207) = 1990656 * k + 1119622 := by
    unfold C
    simp [show (663552 * k + 373207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1119622) = 995328 * k + 559811 := by
    unfold C
    simp [show (1990656 * k + 1119622) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 559811) = 2985984 * k + 1679434 := by
    unfold C
    simp [show (995328 * k + 559811) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1679434) = 1492992 * k + 839717 := by
    unfold C
    simp [show (2985984 * k + 1679434) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 839717) = 4478976 * k + 2519152 := by
    unfold C
    simp [show (1492992 * k + 839717) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2519152) = 2239488 * k + 1259576 := by
    unfold C
    simp [show (4478976 * k + 2519152) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1259576) = 1119744 * k + 629788 := by
    unfold C
    simp [show (2239488 * k + 1259576) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 629788) = 559872 * k + 314894 := by
    unfold C
    simp [show (1119744 * k + 629788) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 314894) = 279936 * k + 157447 := by
    unfold C
    simp [show (559872 * k + 314894) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 157447) = 839808 * k + 472342 := by
    unfold C
    simp [show (279936 * k + 157447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 472342) = 419904 * k + 236171 := by
    unfold C
    simp [show (839808 * k + 472342) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 236171) = 1259712 * k + 708514 := by
    unfold C
    simp [show (419904 * k + 236171) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 708514) = 629856 * k + 354257 := by
    unfold C
    simp [show (1259712 * k + 708514) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 354257) = 1889568 * k + 1062772 := by
    unfold C
    simp [show (629856 * k + 354257) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1062772) = 944784 * k + 531386 := by
    unfold C
    simp [show (1889568 * k + 1062772) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 531386) = 472392 * k + 265693 := by
    unfold C
    simp [show (944784 * k + 531386) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 265693) = 1417176 * k + 797080 := by
    unfold C
    simp [show (472392 * k + 265693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 797080) = 708588 * k + 398540 := by
    unfold C
    simp [show (1417176 * k + 797080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 398540) = 354294 * k + 199270 := by
    unfold C
    simp [show (708588 * k + 398540) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 199270) = 177147 * k + 99635 := by
    unfold C
    simp [show (354294 * k + 199270) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147519 : ∀ k : Nat,
    iterate (262144 * k + 147519) 29 = 177147 * k + 99689 ∧
      177147 * k + 99689 < 262144 * k + 147519 := by
  intro k
  have h1 : C (262144 * k + 147519) = 786432 * k + 442558 := by
    unfold C
    simp [show (262144 * k + 147519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 442558) = 393216 * k + 221279 := by
    unfold C
    simp [show (786432 * k + 442558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 221279) = 1179648 * k + 663838 := by
    unfold C
    simp [show (393216 * k + 221279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 663838) = 589824 * k + 331919 := by
    unfold C
    simp [show (1179648 * k + 663838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 331919) = 1769472 * k + 995758 := by
    unfold C
    simp [show (589824 * k + 331919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 995758) = 884736 * k + 497879 := by
    unfold C
    simp [show (1769472 * k + 995758) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 497879) = 2654208 * k + 1493638 := by
    unfold C
    simp [show (884736 * k + 497879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1493638) = 1327104 * k + 746819 := by
    unfold C
    simp [show (2654208 * k + 1493638) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 746819) = 3981312 * k + 2240458 := by
    unfold C
    simp [show (1327104 * k + 746819) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2240458) = 1990656 * k + 1120229 := by
    unfold C
    simp [show (3981312 * k + 2240458) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1120229) = 5971968 * k + 3360688 := by
    unfold C
    simp [show (1990656 * k + 1120229) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3360688) = 2985984 * k + 1680344 := by
    unfold C
    simp [show (5971968 * k + 3360688) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1680344) = 1492992 * k + 840172 := by
    unfold C
    simp [show (2985984 * k + 1680344) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 840172) = 746496 * k + 420086 := by
    unfold C
    simp [show (1492992 * k + 840172) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 420086) = 373248 * k + 210043 := by
    unfold C
    simp [show (746496 * k + 420086) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 210043) = 1119744 * k + 630130 := by
    unfold C
    simp [show (373248 * k + 210043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 630130) = 559872 * k + 315065 := by
    unfold C
    simp [show (1119744 * k + 630130) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 315065) = 1679616 * k + 945196 := by
    unfold C
    simp [show (559872 * k + 315065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 945196) = 839808 * k + 472598 := by
    unfold C
    simp [show (1679616 * k + 945196) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 472598) = 419904 * k + 236299 := by
    unfold C
    simp [show (839808 * k + 472598) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 236299) = 1259712 * k + 708898 := by
    unfold C
    simp [show (419904 * k + 236299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 708898) = 629856 * k + 354449 := by
    unfold C
    simp [show (1259712 * k + 708898) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 354449) = 1889568 * k + 1063348 := by
    unfold C
    simp [show (629856 * k + 354449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1063348) = 944784 * k + 531674 := by
    unfold C
    simp [show (1889568 * k + 1063348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 531674) = 472392 * k + 265837 := by
    unfold C
    simp [show (944784 * k + 531674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 265837) = 1417176 * k + 797512 := by
    unfold C
    simp [show (472392 * k + 265837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 797512) = 708588 * k + 398756 := by
    unfold C
    simp [show (1417176 * k + 797512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 398756) = 354294 * k + 199378 := by
    unfold C
    simp [show (708588 * k + 398756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 199378) = 177147 * k + 99689 := by
    unfold C
    simp [show (354294 * k + 199378) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147559 : ∀ k : Nat,
    iterate (262144 * k + 147559) 29 = 177147 * k + 99716 ∧
      177147 * k + 99716 < 262144 * k + 147559 := by
  intro k
  have h1 : C (262144 * k + 147559) = 786432 * k + 442678 := by
    unfold C
    simp [show (262144 * k + 147559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 442678) = 393216 * k + 221339 := by
    unfold C
    simp [show (786432 * k + 442678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 221339) = 1179648 * k + 664018 := by
    unfold C
    simp [show (393216 * k + 221339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 664018) = 589824 * k + 332009 := by
    unfold C
    simp [show (1179648 * k + 664018) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 332009) = 1769472 * k + 996028 := by
    unfold C
    simp [show (589824 * k + 332009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 996028) = 884736 * k + 498014 := by
    unfold C
    simp [show (1769472 * k + 996028) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 498014) = 442368 * k + 249007 := by
    unfold C
    simp [show (884736 * k + 498014) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 249007) = 1327104 * k + 747022 := by
    unfold C
    simp [show (442368 * k + 249007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 747022) = 663552 * k + 373511 := by
    unfold C
    simp [show (1327104 * k + 747022) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 373511) = 1990656 * k + 1120534 := by
    unfold C
    simp [show (663552 * k + 373511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1120534) = 995328 * k + 560267 := by
    unfold C
    simp [show (1990656 * k + 1120534) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 560267) = 2985984 * k + 1680802 := by
    unfold C
    simp [show (995328 * k + 560267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1680802) = 1492992 * k + 840401 := by
    unfold C
    simp [show (2985984 * k + 1680802) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 840401) = 4478976 * k + 2521204 := by
    unfold C
    simp [show (1492992 * k + 840401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2521204) = 2239488 * k + 1260602 := by
    unfold C
    simp [show (4478976 * k + 2521204) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1260602) = 1119744 * k + 630301 := by
    unfold C
    simp [show (2239488 * k + 1260602) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 630301) = 3359232 * k + 1890904 := by
    unfold C
    simp [show (1119744 * k + 630301) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1890904) = 1679616 * k + 945452 := by
    unfold C
    simp [show (3359232 * k + 1890904) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 945452) = 839808 * k + 472726 := by
    unfold C
    simp [show (1679616 * k + 945452) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 472726) = 419904 * k + 236363 := by
    unfold C
    simp [show (839808 * k + 472726) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 236363) = 1259712 * k + 709090 := by
    unfold C
    simp [show (419904 * k + 236363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 709090) = 629856 * k + 354545 := by
    unfold C
    simp [show (1259712 * k + 709090) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 354545) = 1889568 * k + 1063636 := by
    unfold C
    simp [show (629856 * k + 354545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1063636) = 944784 * k + 531818 := by
    unfold C
    simp [show (1889568 * k + 1063636) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 531818) = 472392 * k + 265909 := by
    unfold C
    simp [show (944784 * k + 531818) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 265909) = 1417176 * k + 797728 := by
    unfold C
    simp [show (472392 * k + 265909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 797728) = 708588 * k + 398864 := by
    unfold C
    simp [show (1417176 * k + 797728) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 398864) = 354294 * k + 199432 := by
    unfold C
    simp [show (708588 * k + 398864) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 199432) = 177147 * k + 99716 := by
    unfold C
    simp [show (354294 * k + 199432) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_147679 : ∀ k : Nat,
    iterate (262144 * k + 147679) 29 = 177147 * k + 99797 ∧
      177147 * k + 99797 < 262144 * k + 147679 := by
  intro k
  have h1 : C (262144 * k + 147679) = 786432 * k + 443038 := by
    unfold C
    simp [show (262144 * k + 147679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 443038) = 393216 * k + 221519 := by
    unfold C
    simp [show (786432 * k + 443038) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 221519) = 1179648 * k + 664558 := by
    unfold C
    simp [show (393216 * k + 221519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 664558) = 589824 * k + 332279 := by
    unfold C
    simp [show (1179648 * k + 664558) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 332279) = 1769472 * k + 996838 := by
    unfold C
    simp [show (589824 * k + 332279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 996838) = 884736 * k + 498419 := by
    unfold C
    simp [show (1769472 * k + 996838) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 498419) = 2654208 * k + 1495258 := by
    unfold C
    simp [show (884736 * k + 498419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1495258) = 1327104 * k + 747629 := by
    unfold C
    simp [show (2654208 * k + 1495258) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 747629) = 3981312 * k + 2242888 := by
    unfold C
    simp [show (1327104 * k + 747629) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2242888) = 1990656 * k + 1121444 := by
    unfold C
    simp [show (3981312 * k + 2242888) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1121444) = 995328 * k + 560722 := by
    unfold C
    simp [show (1990656 * k + 1121444) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 560722) = 497664 * k + 280361 := by
    unfold C
    simp [show (995328 * k + 560722) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 280361) = 1492992 * k + 841084 := by
    unfold C
    simp [show (497664 * k + 280361) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 841084) = 746496 * k + 420542 := by
    unfold C
    simp [show (1492992 * k + 841084) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 420542) = 373248 * k + 210271 := by
    unfold C
    simp [show (746496 * k + 420542) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 210271) = 1119744 * k + 630814 := by
    unfold C
    simp [show (373248 * k + 210271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 630814) = 559872 * k + 315407 := by
    unfold C
    simp [show (1119744 * k + 630814) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 315407) = 1679616 * k + 946222 := by
    unfold C
    simp [show (559872 * k + 315407) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 946222) = 839808 * k + 473111 := by
    unfold C
    simp [show (1679616 * k + 946222) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 473111) = 2519424 * k + 1419334 := by
    unfold C
    simp [show (839808 * k + 473111) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1419334) = 1259712 * k + 709667 := by
    unfold C
    simp [show (2519424 * k + 1419334) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 709667) = 3779136 * k + 2129002 := by
    unfold C
    simp [show (1259712 * k + 709667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2129002) = 1889568 * k + 1064501 := by
    unfold C
    simp [show (3779136 * k + 2129002) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1064501) = 5668704 * k + 3193504 := by
    unfold C
    simp [show (1889568 * k + 1064501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3193504) = 2834352 * k + 1596752 := by
    unfold C
    simp [show (5668704 * k + 3193504) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1596752) = 1417176 * k + 798376 := by
    unfold C
    simp [show (2834352 * k + 1596752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 798376) = 708588 * k + 399188 := by
    unfold C
    simp [show (1417176 * k + 798376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 399188) = 354294 * k + 199594 := by
    unfold C
    simp [show (708588 * k + 399188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 199594) = 177147 * k + 99797 := by
    unfold C
    simp [show (354294 * k + 199594) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 147679) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 147679))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148015 : ∀ k : Nat,
    iterate (262144 * k + 148015) 29 = 177147 * k + 100024 ∧
      177147 * k + 100024 < 262144 * k + 148015 := by
  intro k
  have h1 : C (262144 * k + 148015) = 786432 * k + 444046 := by
    unfold C
    simp [show (262144 * k + 148015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 444046) = 393216 * k + 222023 := by
    unfold C
    simp [show (786432 * k + 444046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222023) = 1179648 * k + 666070 := by
    unfold C
    simp [show (393216 * k + 222023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 666070) = 589824 * k + 333035 := by
    unfold C
    simp [show (1179648 * k + 666070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 333035) = 1769472 * k + 999106 := by
    unfold C
    simp [show (589824 * k + 333035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 999106) = 884736 * k + 499553 := by
    unfold C
    simp [show (1769472 * k + 999106) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 499553) = 2654208 * k + 1498660 := by
    unfold C
    simp [show (884736 * k + 499553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1498660) = 1327104 * k + 749330 := by
    unfold C
    simp [show (2654208 * k + 1498660) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 749330) = 663552 * k + 374665 := by
    unfold C
    simp [show (1327104 * k + 749330) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 374665) = 1990656 * k + 1123996 := by
    unfold C
    simp [show (663552 * k + 374665) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1123996) = 995328 * k + 561998 := by
    unfold C
    simp [show (1990656 * k + 1123996) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 561998) = 497664 * k + 280999 := by
    unfold C
    simp [show (995328 * k + 561998) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 280999) = 1492992 * k + 842998 := by
    unfold C
    simp [show (497664 * k + 280999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 842998) = 746496 * k + 421499 := by
    unfold C
    simp [show (1492992 * k + 842998) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 421499) = 2239488 * k + 1264498 := by
    unfold C
    simp [show (746496 * k + 421499) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1264498) = 1119744 * k + 632249 := by
    unfold C
    simp [show (2239488 * k + 1264498) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 632249) = 3359232 * k + 1896748 := by
    unfold C
    simp [show (1119744 * k + 632249) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1896748) = 1679616 * k + 948374 := by
    unfold C
    simp [show (3359232 * k + 1896748) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 948374) = 839808 * k + 474187 := by
    unfold C
    simp [show (1679616 * k + 948374) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 474187) = 2519424 * k + 1422562 := by
    unfold C
    simp [show (839808 * k + 474187) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1422562) = 1259712 * k + 711281 := by
    unfold C
    simp [show (2519424 * k + 1422562) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 711281) = 3779136 * k + 2133844 := by
    unfold C
    simp [show (1259712 * k + 711281) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2133844) = 1889568 * k + 1066922 := by
    unfold C
    simp [show (3779136 * k + 2133844) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1066922) = 944784 * k + 533461 := by
    unfold C
    simp [show (1889568 * k + 1066922) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 533461) = 2834352 * k + 1600384 := by
    unfold C
    simp [show (944784 * k + 533461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1600384) = 1417176 * k + 800192 := by
    unfold C
    simp [show (2834352 * k + 1600384) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 800192) = 708588 * k + 400096 := by
    unfold C
    simp [show (1417176 * k + 800192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 400096) = 354294 * k + 200048 := by
    unfold C
    simp [show (708588 * k + 400096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200048) = 177147 * k + 100024 := by
    unfold C
    simp [show (354294 * k + 200048) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148059 : ∀ k : Nat,
    iterate (262144 * k + 148059) 29 = 177147 * k + 100054 ∧
      177147 * k + 100054 < 262144 * k + 148059 := by
  intro k
  have h1 : C (262144 * k + 148059) = 786432 * k + 444178 := by
    unfold C
    simp [show (262144 * k + 148059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 444178) = 393216 * k + 222089 := by
    unfold C
    simp [show (786432 * k + 444178) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222089) = 1179648 * k + 666268 := by
    unfold C
    simp [show (393216 * k + 222089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 666268) = 589824 * k + 333134 := by
    unfold C
    simp [show (1179648 * k + 666268) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 333134) = 294912 * k + 166567 := by
    unfold C
    simp [show (589824 * k + 333134) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 166567) = 884736 * k + 499702 := by
    unfold C
    simp [show (294912 * k + 166567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 499702) = 442368 * k + 249851 := by
    unfold C
    simp [show (884736 * k + 499702) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 249851) = 1327104 * k + 749554 := by
    unfold C
    simp [show (442368 * k + 249851) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 749554) = 663552 * k + 374777 := by
    unfold C
    simp [show (1327104 * k + 749554) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 374777) = 1990656 * k + 1124332 := by
    unfold C
    simp [show (663552 * k + 374777) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1124332) = 995328 * k + 562166 := by
    unfold C
    simp [show (1990656 * k + 1124332) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 562166) = 497664 * k + 281083 := by
    unfold C
    simp [show (995328 * k + 562166) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 281083) = 1492992 * k + 843250 := by
    unfold C
    simp [show (497664 * k + 281083) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 843250) = 746496 * k + 421625 := by
    unfold C
    simp [show (1492992 * k + 843250) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 421625) = 2239488 * k + 1264876 := by
    unfold C
    simp [show (746496 * k + 421625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1264876) = 1119744 * k + 632438 := by
    unfold C
    simp [show (2239488 * k + 1264876) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 632438) = 559872 * k + 316219 := by
    unfold C
    simp [show (1119744 * k + 632438) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 316219) = 1679616 * k + 948658 := by
    unfold C
    simp [show (559872 * k + 316219) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 948658) = 839808 * k + 474329 := by
    unfold C
    simp [show (1679616 * k + 948658) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 474329) = 2519424 * k + 1422988 := by
    unfold C
    simp [show (839808 * k + 474329) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1422988) = 1259712 * k + 711494 := by
    unfold C
    simp [show (2519424 * k + 1422988) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 711494) = 629856 * k + 355747 := by
    unfold C
    simp [show (1259712 * k + 711494) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 355747) = 1889568 * k + 1067242 := by
    unfold C
    simp [show (629856 * k + 355747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1067242) = 944784 * k + 533621 := by
    unfold C
    simp [show (1889568 * k + 1067242) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 533621) = 2834352 * k + 1600864 := by
    unfold C
    simp [show (944784 * k + 533621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1600864) = 1417176 * k + 800432 := by
    unfold C
    simp [show (2834352 * k + 1600864) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 800432) = 708588 * k + 400216 := by
    unfold C
    simp [show (1417176 * k + 800432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 400216) = 354294 * k + 200108 := by
    unfold C
    simp [show (708588 * k + 400216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200108) = 177147 * k + 100054 := by
    unfold C
    simp [show (354294 * k + 200108) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148059) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148059))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148123 : ∀ k : Nat,
    iterate (262144 * k + 148123) 29 = 177147 * k + 100097 ∧
      177147 * k + 100097 < 262144 * k + 148123 := by
  intro k
  have h1 : C (262144 * k + 148123) = 786432 * k + 444370 := by
    unfold C
    simp [show (262144 * k + 148123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 444370) = 393216 * k + 222185 := by
    unfold C
    simp [show (786432 * k + 444370) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222185) = 1179648 * k + 666556 := by
    unfold C
    simp [show (393216 * k + 222185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 666556) = 589824 * k + 333278 := by
    unfold C
    simp [show (1179648 * k + 666556) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 333278) = 294912 * k + 166639 := by
    unfold C
    simp [show (589824 * k + 333278) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 166639) = 884736 * k + 499918 := by
    unfold C
    simp [show (294912 * k + 166639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 499918) = 442368 * k + 249959 := by
    unfold C
    simp [show (884736 * k + 499918) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 249959) = 1327104 * k + 749878 := by
    unfold C
    simp [show (442368 * k + 249959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 749878) = 663552 * k + 374939 := by
    unfold C
    simp [show (1327104 * k + 749878) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 374939) = 1990656 * k + 1124818 := by
    unfold C
    simp [show (663552 * k + 374939) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1124818) = 995328 * k + 562409 := by
    unfold C
    simp [show (1990656 * k + 1124818) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 562409) = 2985984 * k + 1687228 := by
    unfold C
    simp [show (995328 * k + 562409) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1687228) = 1492992 * k + 843614 := by
    unfold C
    simp [show (2985984 * k + 1687228) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 843614) = 746496 * k + 421807 := by
    unfold C
    simp [show (1492992 * k + 843614) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 421807) = 2239488 * k + 1265422 := by
    unfold C
    simp [show (746496 * k + 421807) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1265422) = 1119744 * k + 632711 := by
    unfold C
    simp [show (2239488 * k + 1265422) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 632711) = 3359232 * k + 1898134 := by
    unfold C
    simp [show (1119744 * k + 632711) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1898134) = 1679616 * k + 949067 := by
    unfold C
    simp [show (3359232 * k + 1898134) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 949067) = 5038848 * k + 2847202 := by
    unfold C
    simp [show (1679616 * k + 949067) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2847202) = 2519424 * k + 1423601 := by
    unfold C
    simp [show (5038848 * k + 2847202) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1423601) = 7558272 * k + 4270804 := by
    unfold C
    simp [show (2519424 * k + 1423601) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4270804) = 3779136 * k + 2135402 := by
    unfold C
    simp [show (7558272 * k + 4270804) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2135402) = 1889568 * k + 1067701 := by
    unfold C
    simp [show (3779136 * k + 2135402) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1067701) = 5668704 * k + 3203104 := by
    unfold C
    simp [show (1889568 * k + 1067701) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3203104) = 2834352 * k + 1601552 := by
    unfold C
    simp [show (5668704 * k + 3203104) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1601552) = 1417176 * k + 800776 := by
    unfold C
    simp [show (2834352 * k + 1601552) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 800776) = 708588 * k + 400388 := by
    unfold C
    simp [show (1417176 * k + 800776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 400388) = 354294 * k + 200194 := by
    unfold C
    simp [show (708588 * k + 400388) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200194) = 177147 * k + 100097 := by
    unfold C
    simp [show (354294 * k + 200194) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148123) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148123))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148287 : ∀ k : Nat,
    iterate (262144 * k + 148287) 29 = 177147 * k + 100208 ∧
      177147 * k + 100208 < 262144 * k + 148287 := by
  intro k
  have h1 : C (262144 * k + 148287) = 786432 * k + 444862 := by
    unfold C
    simp [show (262144 * k + 148287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 444862) = 393216 * k + 222431 := by
    unfold C
    simp [show (786432 * k + 444862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222431) = 1179648 * k + 667294 := by
    unfold C
    simp [show (393216 * k + 222431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 667294) = 589824 * k + 333647 := by
    unfold C
    simp [show (1179648 * k + 667294) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 333647) = 1769472 * k + 1000942 := by
    unfold C
    simp [show (589824 * k + 333647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1000942) = 884736 * k + 500471 := by
    unfold C
    simp [show (1769472 * k + 1000942) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 500471) = 2654208 * k + 1501414 := by
    unfold C
    simp [show (884736 * k + 500471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1501414) = 1327104 * k + 750707 := by
    unfold C
    simp [show (2654208 * k + 1501414) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 750707) = 3981312 * k + 2252122 := by
    unfold C
    simp [show (1327104 * k + 750707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2252122) = 1990656 * k + 1126061 := by
    unfold C
    simp [show (3981312 * k + 2252122) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1126061) = 5971968 * k + 3378184 := by
    unfold C
    simp [show (1990656 * k + 1126061) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3378184) = 2985984 * k + 1689092 := by
    unfold C
    simp [show (5971968 * k + 3378184) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1689092) = 1492992 * k + 844546 := by
    unfold C
    simp [show (2985984 * k + 1689092) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 844546) = 746496 * k + 422273 := by
    unfold C
    simp [show (1492992 * k + 844546) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 422273) = 2239488 * k + 1266820 := by
    unfold C
    simp [show (746496 * k + 422273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1266820) = 1119744 * k + 633410 := by
    unfold C
    simp [show (2239488 * k + 1266820) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 633410) = 559872 * k + 316705 := by
    unfold C
    simp [show (1119744 * k + 633410) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 316705) = 1679616 * k + 950116 := by
    unfold C
    simp [show (559872 * k + 316705) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 950116) = 839808 * k + 475058 := by
    unfold C
    simp [show (1679616 * k + 950116) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 475058) = 419904 * k + 237529 := by
    unfold C
    simp [show (839808 * k + 475058) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 237529) = 1259712 * k + 712588 := by
    unfold C
    simp [show (419904 * k + 237529) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 712588) = 629856 * k + 356294 := by
    unfold C
    simp [show (1259712 * k + 712588) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 356294) = 314928 * k + 178147 := by
    unfold C
    simp [show (629856 * k + 356294) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 178147) = 944784 * k + 534442 := by
    unfold C
    simp [show (314928 * k + 178147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 534442) = 472392 * k + 267221 := by
    unfold C
    simp [show (944784 * k + 534442) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 267221) = 1417176 * k + 801664 := by
    unfold C
    simp [show (472392 * k + 267221) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 801664) = 708588 * k + 400832 := by
    unfold C
    simp [show (1417176 * k + 801664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 400832) = 354294 * k + 200416 := by
    unfold C
    simp [show (708588 * k + 400832) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200416) = 177147 * k + 100208 := by
    unfold C
    simp [show (354294 * k + 200416) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148415 : ∀ k : Nat,
    iterate (262144 * k + 148415) 29 = 177147 * k + 100294 ∧
      177147 * k + 100294 < 262144 * k + 148415 := by
  intro k
  have h1 : C (262144 * k + 148415) = 786432 * k + 445246 := by
    unfold C
    simp [show (262144 * k + 148415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 445246) = 393216 * k + 222623 := by
    unfold C
    simp [show (786432 * k + 445246) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222623) = 1179648 * k + 667870 := by
    unfold C
    simp [show (393216 * k + 222623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 667870) = 589824 * k + 333935 := by
    unfold C
    simp [show (1179648 * k + 667870) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 333935) = 1769472 * k + 1001806 := by
    unfold C
    simp [show (589824 * k + 333935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1001806) = 884736 * k + 500903 := by
    unfold C
    simp [show (1769472 * k + 1001806) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 500903) = 2654208 * k + 1502710 := by
    unfold C
    simp [show (884736 * k + 500903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1502710) = 1327104 * k + 751355 := by
    unfold C
    simp [show (2654208 * k + 1502710) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 751355) = 3981312 * k + 2254066 := by
    unfold C
    simp [show (1327104 * k + 751355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2254066) = 1990656 * k + 1127033 := by
    unfold C
    simp [show (3981312 * k + 2254066) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1127033) = 5971968 * k + 3381100 := by
    unfold C
    simp [show (1990656 * k + 1127033) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3381100) = 2985984 * k + 1690550 := by
    unfold C
    simp [show (5971968 * k + 3381100) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1690550) = 1492992 * k + 845275 := by
    unfold C
    simp [show (2985984 * k + 1690550) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 845275) = 4478976 * k + 2535826 := by
    unfold C
    simp [show (1492992 * k + 845275) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2535826) = 2239488 * k + 1267913 := by
    unfold C
    simp [show (4478976 * k + 2535826) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1267913) = 6718464 * k + 3803740 := by
    unfold C
    simp [show (2239488 * k + 1267913) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3803740) = 3359232 * k + 1901870 := by
    unfold C
    simp [show (6718464 * k + 3803740) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1901870) = 1679616 * k + 950935 := by
    unfold C
    simp [show (3359232 * k + 1901870) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 950935) = 5038848 * k + 2852806 := by
    unfold C
    simp [show (1679616 * k + 950935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2852806) = 2519424 * k + 1426403 := by
    unfold C
    simp [show (5038848 * k + 2852806) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1426403) = 7558272 * k + 4279210 := by
    unfold C
    simp [show (2519424 * k + 1426403) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4279210) = 3779136 * k + 2139605 := by
    unfold C
    simp [show (7558272 * k + 4279210) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2139605) = 11337408 * k + 6418816 := by
    unfold C
    simp [show (3779136 * k + 2139605) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 6418816) = 5668704 * k + 3209408 := by
    unfold C
    simp [show (11337408 * k + 6418816) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3209408) = 2834352 * k + 1604704 := by
    unfold C
    simp [show (5668704 * k + 3209408) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1604704) = 1417176 * k + 802352 := by
    unfold C
    simp [show (2834352 * k + 1604704) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 802352) = 708588 * k + 401176 := by
    unfold C
    simp [show (1417176 * k + 802352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 401176) = 354294 * k + 200588 := by
    unfold C
    simp [show (708588 * k + 401176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200588) = 177147 * k + 100294 := by
    unfold C
    simp [show (354294 * k + 200588) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148415) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148415))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148447 : ∀ k : Nat,
    iterate (262144 * k + 148447) 29 = 177147 * k + 100316 ∧
      177147 * k + 100316 < 262144 * k + 148447 := by
  intro k
  have h1 : C (262144 * k + 148447) = 786432 * k + 445342 := by
    unfold C
    simp [show (262144 * k + 148447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 445342) = 393216 * k + 222671 := by
    unfold C
    simp [show (786432 * k + 445342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222671) = 1179648 * k + 668014 := by
    unfold C
    simp [show (393216 * k + 222671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 668014) = 589824 * k + 334007 := by
    unfold C
    simp [show (1179648 * k + 668014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 334007) = 1769472 * k + 1002022 := by
    unfold C
    simp [show (589824 * k + 334007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1002022) = 884736 * k + 501011 := by
    unfold C
    simp [show (1769472 * k + 1002022) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 501011) = 2654208 * k + 1503034 := by
    unfold C
    simp [show (884736 * k + 501011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1503034) = 1327104 * k + 751517 := by
    unfold C
    simp [show (2654208 * k + 1503034) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 751517) = 3981312 * k + 2254552 := by
    unfold C
    simp [show (1327104 * k + 751517) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2254552) = 1990656 * k + 1127276 := by
    unfold C
    simp [show (3981312 * k + 2254552) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1127276) = 995328 * k + 563638 := by
    unfold C
    simp [show (1990656 * k + 1127276) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 563638) = 497664 * k + 281819 := by
    unfold C
    simp [show (995328 * k + 563638) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 281819) = 1492992 * k + 845458 := by
    unfold C
    simp [show (497664 * k + 281819) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 845458) = 746496 * k + 422729 := by
    unfold C
    simp [show (1492992 * k + 845458) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 422729) = 2239488 * k + 1268188 := by
    unfold C
    simp [show (746496 * k + 422729) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1268188) = 1119744 * k + 634094 := by
    unfold C
    simp [show (2239488 * k + 1268188) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 634094) = 559872 * k + 317047 := by
    unfold C
    simp [show (1119744 * k + 634094) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 317047) = 1679616 * k + 951142 := by
    unfold C
    simp [show (559872 * k + 317047) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 951142) = 839808 * k + 475571 := by
    unfold C
    simp [show (1679616 * k + 951142) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 475571) = 2519424 * k + 1426714 := by
    unfold C
    simp [show (839808 * k + 475571) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1426714) = 1259712 * k + 713357 := by
    unfold C
    simp [show (2519424 * k + 1426714) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 713357) = 3779136 * k + 2140072 := by
    unfold C
    simp [show (1259712 * k + 713357) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2140072) = 1889568 * k + 1070036 := by
    unfold C
    simp [show (3779136 * k + 2140072) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1070036) = 944784 * k + 535018 := by
    unfold C
    simp [show (1889568 * k + 1070036) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 535018) = 472392 * k + 267509 := by
    unfold C
    simp [show (944784 * k + 535018) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 267509) = 1417176 * k + 802528 := by
    unfold C
    simp [show (472392 * k + 267509) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 802528) = 708588 * k + 401264 := by
    unfold C
    simp [show (1417176 * k + 802528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 401264) = 354294 * k + 200632 := by
    unfold C
    simp [show (708588 * k + 401264) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200632) = 177147 * k + 100316 := by
    unfold C
    simp [show (354294 * k + 200632) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_148571 : ∀ k : Nat,
    iterate (262144 * k + 148571) 29 = 177147 * k + 100400 ∧
      177147 * k + 100400 < 262144 * k + 148571 := by
  intro k
  have h1 : C (262144 * k + 148571) = 786432 * k + 445714 := by
    unfold C
    simp [show (262144 * k + 148571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 445714) = 393216 * k + 222857 := by
    unfold C
    simp [show (786432 * k + 445714) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222857) = 1179648 * k + 668572 := by
    unfold C
    simp [show (393216 * k + 222857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 668572) = 589824 * k + 334286 := by
    unfold C
    simp [show (1179648 * k + 668572) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 334286) = 294912 * k + 167143 := by
    unfold C
    simp [show (589824 * k + 334286) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 167143) = 884736 * k + 501430 := by
    unfold C
    simp [show (294912 * k + 167143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 501430) = 442368 * k + 250715 := by
    unfold C
    simp [show (884736 * k + 501430) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 250715) = 1327104 * k + 752146 := by
    unfold C
    simp [show (442368 * k + 250715) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 752146) = 663552 * k + 376073 := by
    unfold C
    simp [show (1327104 * k + 752146) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 376073) = 1990656 * k + 1128220 := by
    unfold C
    simp [show (663552 * k + 376073) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1128220) = 995328 * k + 564110 := by
    unfold C
    simp [show (1990656 * k + 1128220) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 564110) = 497664 * k + 282055 := by
    unfold C
    simp [show (995328 * k + 564110) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 282055) = 1492992 * k + 846166 := by
    unfold C
    simp [show (497664 * k + 282055) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 846166) = 746496 * k + 423083 := by
    unfold C
    simp [show (1492992 * k + 846166) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 423083) = 2239488 * k + 1269250 := by
    unfold C
    simp [show (746496 * k + 423083) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1269250) = 1119744 * k + 634625 := by
    unfold C
    simp [show (2239488 * k + 1269250) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 634625) = 3359232 * k + 1903876 := by
    unfold C
    simp [show (1119744 * k + 634625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1903876) = 1679616 * k + 951938 := by
    unfold C
    simp [show (3359232 * k + 1903876) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 951938) = 839808 * k + 475969 := by
    unfold C
    simp [show (1679616 * k + 951938) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 475969) = 2519424 * k + 1427908 := by
    unfold C
    simp [show (839808 * k + 475969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1427908) = 1259712 * k + 713954 := by
    unfold C
    simp [show (2519424 * k + 1427908) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 713954) = 629856 * k + 356977 := by
    unfold C
    simp [show (1259712 * k + 713954) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 356977) = 1889568 * k + 1070932 := by
    unfold C
    simp [show (629856 * k + 356977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1070932) = 944784 * k + 535466 := by
    unfold C
    simp [show (1889568 * k + 1070932) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 535466) = 472392 * k + 267733 := by
    unfold C
    simp [show (944784 * k + 535466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 267733) = 1417176 * k + 803200 := by
    unfold C
    simp [show (472392 * k + 267733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 803200) = 708588 * k + 401600 := by
    unfold C
    simp [show (1417176 * k + 803200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 401600) = 354294 * k + 200800 := by
    unfold C
    simp [show (708588 * k + 401600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200800) = 177147 * k + 100400 := by
    unfold C
    simp [show (354294 * k + 200800) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148571) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148571))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard028
