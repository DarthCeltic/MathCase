import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard081

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_623263 : ∀ k : Nat,
    iterate (1048576 * k + 623263) 32 = 531441 * k + 315884 ∧
      531441 * k + 315884 < 1048576 * k + 623263 := by
  intro k
  have h1 : C (1048576 * k + 623263) = 3145728 * k + 1869790 := by
    unfold C
    simp [show (1048576 * k + 623263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1869790) = 1572864 * k + 934895 := by
    unfold C
    simp [show (3145728 * k + 1869790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 934895) = 4718592 * k + 2804686 := by
    unfold C
    simp [show (1572864 * k + 934895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2804686) = 2359296 * k + 1402343 := by
    unfold C
    simp [show (4718592 * k + 2804686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1402343) = 7077888 * k + 4207030 := by
    unfold C
    simp [show (2359296 * k + 1402343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4207030) = 3538944 * k + 2103515 := by
    unfold C
    simp [show (7077888 * k + 4207030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2103515) = 10616832 * k + 6310546 := by
    unfold C
    simp [show (3538944 * k + 2103515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6310546) = 5308416 * k + 3155273 := by
    unfold C
    simp [show (10616832 * k + 6310546) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3155273) = 15925248 * k + 9465820 := by
    unfold C
    simp [show (5308416 * k + 3155273) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9465820) = 7962624 * k + 4732910 := by
    unfold C
    simp [show (15925248 * k + 9465820) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4732910) = 3981312 * k + 2366455 := by
    unfold C
    simp [show (7962624 * k + 4732910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2366455) = 11943936 * k + 7099366 := by
    unfold C
    simp [show (3981312 * k + 2366455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7099366) = 5971968 * k + 3549683 := by
    unfold C
    simp [show (11943936 * k + 7099366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3549683) = 17915904 * k + 10649050 := by
    unfold C
    simp [show (5971968 * k + 3549683) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10649050) = 8957952 * k + 5324525 := by
    unfold C
    simp [show (17915904 * k + 10649050) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5324525) = 26873856 * k + 15973576 := by
    unfold C
    simp [show (8957952 * k + 5324525) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15973576) = 13436928 * k + 7986788 := by
    unfold C
    simp [show (26873856 * k + 15973576) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7986788) = 6718464 * k + 3993394 := by
    unfold C
    simp [show (13436928 * k + 7986788) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3993394) = 3359232 * k + 1996697 := by
    unfold C
    simp [show (6718464 * k + 3993394) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1996697) = 10077696 * k + 5990092 := by
    unfold C
    simp [show (3359232 * k + 1996697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5990092) = 5038848 * k + 2995046 := by
    unfold C
    simp [show (10077696 * k + 5990092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2995046) = 2519424 * k + 1497523 := by
    unfold C
    simp [show (5038848 * k + 2995046) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1497523) = 7558272 * k + 4492570 := by
    unfold C
    simp [show (2519424 * k + 1497523) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4492570) = 3779136 * k + 2246285 := by
    unfold C
    simp [show (7558272 * k + 4492570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2246285) = 11337408 * k + 6738856 := by
    unfold C
    simp [show (3779136 * k + 2246285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6738856) = 5668704 * k + 3369428 := by
    unfold C
    simp [show (11337408 * k + 6738856) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3369428) = 2834352 * k + 1684714 := by
    unfold C
    simp [show (5668704 * k + 3369428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1684714) = 1417176 * k + 842357 := by
    unfold C
    simp [show (2834352 * k + 1684714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 842357) = 4251528 * k + 2527072 := by
    unfold C
    simp [show (1417176 * k + 842357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2527072) = 2125764 * k + 1263536 := by
    unfold C
    simp [show (4251528 * k + 2527072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1263536) = 1062882 * k + 631768 := by
    unfold C
    simp [show (2125764 * k + 1263536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 631768) = 531441 * k + 315884 := by
    unfold C
    simp [show (1062882 * k + 631768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 623263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 623263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_623943 : ∀ k : Nat,
    iterate (1048576 * k + 623943) 32 = 531441 * k + 316229 ∧
      531441 * k + 316229 < 1048576 * k + 623943 := by
  intro k
  have h1 : C (1048576 * k + 623943) = 3145728 * k + 1871830 := by
    unfold C
    simp [show (1048576 * k + 623943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1871830) = 1572864 * k + 935915 := by
    unfold C
    simp [show (3145728 * k + 1871830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 935915) = 4718592 * k + 2807746 := by
    unfold C
    simp [show (1572864 * k + 935915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2807746) = 2359296 * k + 1403873 := by
    unfold C
    simp [show (4718592 * k + 2807746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1403873) = 7077888 * k + 4211620 := by
    unfold C
    simp [show (2359296 * k + 1403873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4211620) = 3538944 * k + 2105810 := by
    unfold C
    simp [show (7077888 * k + 4211620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2105810) = 1769472 * k + 1052905 := by
    unfold C
    simp [show (3538944 * k + 2105810) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1052905) = 5308416 * k + 3158716 := by
    unfold C
    simp [show (1769472 * k + 1052905) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3158716) = 2654208 * k + 1579358 := by
    unfold C
    simp [show (5308416 * k + 3158716) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1579358) = 1327104 * k + 789679 := by
    unfold C
    simp [show (2654208 * k + 1579358) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 789679) = 3981312 * k + 2369038 := by
    unfold C
    simp [show (1327104 * k + 789679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2369038) = 1990656 * k + 1184519 := by
    unfold C
    simp [show (3981312 * k + 2369038) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1184519) = 5971968 * k + 3553558 := by
    unfold C
    simp [show (1990656 * k + 1184519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3553558) = 2985984 * k + 1776779 := by
    unfold C
    simp [show (5971968 * k + 3553558) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1776779) = 8957952 * k + 5330338 := by
    unfold C
    simp [show (2985984 * k + 1776779) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5330338) = 4478976 * k + 2665169 := by
    unfold C
    simp [show (8957952 * k + 5330338) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2665169) = 13436928 * k + 7995508 := by
    unfold C
    simp [show (4478976 * k + 2665169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7995508) = 6718464 * k + 3997754 := by
    unfold C
    simp [show (13436928 * k + 7995508) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3997754) = 3359232 * k + 1998877 := by
    unfold C
    simp [show (6718464 * k + 3997754) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1998877) = 10077696 * k + 5996632 := by
    unfold C
    simp [show (3359232 * k + 1998877) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5996632) = 5038848 * k + 2998316 := by
    unfold C
    simp [show (10077696 * k + 5996632) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2998316) = 2519424 * k + 1499158 := by
    unfold C
    simp [show (5038848 * k + 2998316) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1499158) = 1259712 * k + 749579 := by
    unfold C
    simp [show (2519424 * k + 1499158) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 749579) = 3779136 * k + 2248738 := by
    unfold C
    simp [show (1259712 * k + 749579) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2248738) = 1889568 * k + 1124369 := by
    unfold C
    simp [show (3779136 * k + 2248738) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1124369) = 5668704 * k + 3373108 := by
    unfold C
    simp [show (1889568 * k + 1124369) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3373108) = 2834352 * k + 1686554 := by
    unfold C
    simp [show (5668704 * k + 3373108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1686554) = 1417176 * k + 843277 := by
    unfold C
    simp [show (2834352 * k + 1686554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 843277) = 4251528 * k + 2529832 := by
    unfold C
    simp [show (1417176 * k + 843277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2529832) = 2125764 * k + 1264916 := by
    unfold C
    simp [show (4251528 * k + 2529832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1264916) = 1062882 * k + 632458 := by
    unfold C
    simp [show (2125764 * k + 1264916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 632458) = 531441 * k + 316229 := by
    unfold C
    simp [show (1062882 * k + 632458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 623943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 623943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_624103 : ∀ k : Nat,
    iterate (1048576 * k + 624103) 32 = 531441 * k + 316310 ∧
      531441 * k + 316310 < 1048576 * k + 624103 := by
  intro k
  have h1 : C (1048576 * k + 624103) = 3145728 * k + 1872310 := by
    unfold C
    simp [show (1048576 * k + 624103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1872310) = 1572864 * k + 936155 := by
    unfold C
    simp [show (3145728 * k + 1872310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 936155) = 4718592 * k + 2808466 := by
    unfold C
    simp [show (1572864 * k + 936155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2808466) = 2359296 * k + 1404233 := by
    unfold C
    simp [show (4718592 * k + 2808466) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1404233) = 7077888 * k + 4212700 := by
    unfold C
    simp [show (2359296 * k + 1404233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4212700) = 3538944 * k + 2106350 := by
    unfold C
    simp [show (7077888 * k + 4212700) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2106350) = 1769472 * k + 1053175 := by
    unfold C
    simp [show (3538944 * k + 2106350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1053175) = 5308416 * k + 3159526 := by
    unfold C
    simp [show (1769472 * k + 1053175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3159526) = 2654208 * k + 1579763 := by
    unfold C
    simp [show (5308416 * k + 3159526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1579763) = 7962624 * k + 4739290 := by
    unfold C
    simp [show (2654208 * k + 1579763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4739290) = 3981312 * k + 2369645 := by
    unfold C
    simp [show (7962624 * k + 4739290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2369645) = 11943936 * k + 7108936 := by
    unfold C
    simp [show (3981312 * k + 2369645) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7108936) = 5971968 * k + 3554468 := by
    unfold C
    simp [show (11943936 * k + 7108936) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3554468) = 2985984 * k + 1777234 := by
    unfold C
    simp [show (5971968 * k + 3554468) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1777234) = 1492992 * k + 888617 := by
    unfold C
    simp [show (2985984 * k + 1777234) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 888617) = 4478976 * k + 2665852 := by
    unfold C
    simp [show (1492992 * k + 888617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2665852) = 2239488 * k + 1332926 := by
    unfold C
    simp [show (4478976 * k + 2665852) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1332926) = 1119744 * k + 666463 := by
    unfold C
    simp [show (2239488 * k + 1332926) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 666463) = 3359232 * k + 1999390 := by
    unfold C
    simp [show (1119744 * k + 666463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1999390) = 1679616 * k + 999695 := by
    unfold C
    simp [show (3359232 * k + 1999390) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 999695) = 5038848 * k + 2999086 := by
    unfold C
    simp [show (1679616 * k + 999695) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2999086) = 2519424 * k + 1499543 := by
    unfold C
    simp [show (5038848 * k + 2999086) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1499543) = 7558272 * k + 4498630 := by
    unfold C
    simp [show (2519424 * k + 1499543) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4498630) = 3779136 * k + 2249315 := by
    unfold C
    simp [show (7558272 * k + 4498630) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2249315) = 11337408 * k + 6747946 := by
    unfold C
    simp [show (3779136 * k + 2249315) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6747946) = 5668704 * k + 3373973 := by
    unfold C
    simp [show (11337408 * k + 6747946) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3373973) = 17006112 * k + 10121920 := by
    unfold C
    simp [show (5668704 * k + 3373973) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10121920) = 8503056 * k + 5060960 := by
    unfold C
    simp [show (17006112 * k + 10121920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5060960) = 4251528 * k + 2530480 := by
    unfold C
    simp [show (8503056 * k + 5060960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2530480) = 2125764 * k + 1265240 := by
    unfold C
    simp [show (4251528 * k + 2530480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1265240) = 1062882 * k + 632620 := by
    unfold C
    simp [show (2125764 * k + 1265240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 632620) = 531441 * k + 316310 := by
    unfold C
    simp [show (1062882 * k + 632620) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 624103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 624103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_624219 : ∀ k : Nat,
    iterate (1048576 * k + 624219) 32 = 531441 * k + 316369 ∧
      531441 * k + 316369 < 1048576 * k + 624219 := by
  intro k
  have h1 : C (1048576 * k + 624219) = 3145728 * k + 1872658 := by
    unfold C
    simp [show (1048576 * k + 624219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1872658) = 1572864 * k + 936329 := by
    unfold C
    simp [show (3145728 * k + 1872658) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 936329) = 4718592 * k + 2808988 := by
    unfold C
    simp [show (1572864 * k + 936329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2808988) = 2359296 * k + 1404494 := by
    unfold C
    simp [show (4718592 * k + 2808988) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1404494) = 1179648 * k + 702247 := by
    unfold C
    simp [show (2359296 * k + 1404494) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 702247) = 3538944 * k + 2106742 := by
    unfold C
    simp [show (1179648 * k + 702247) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2106742) = 1769472 * k + 1053371 := by
    unfold C
    simp [show (3538944 * k + 2106742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1053371) = 5308416 * k + 3160114 := by
    unfold C
    simp [show (1769472 * k + 1053371) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3160114) = 2654208 * k + 1580057 := by
    unfold C
    simp [show (5308416 * k + 3160114) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1580057) = 7962624 * k + 4740172 := by
    unfold C
    simp [show (2654208 * k + 1580057) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4740172) = 3981312 * k + 2370086 := by
    unfold C
    simp [show (7962624 * k + 4740172) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2370086) = 1990656 * k + 1185043 := by
    unfold C
    simp [show (3981312 * k + 2370086) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1185043) = 5971968 * k + 3555130 := by
    unfold C
    simp [show (1990656 * k + 1185043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3555130) = 2985984 * k + 1777565 := by
    unfold C
    simp [show (5971968 * k + 3555130) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1777565) = 8957952 * k + 5332696 := by
    unfold C
    simp [show (2985984 * k + 1777565) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5332696) = 4478976 * k + 2666348 := by
    unfold C
    simp [show (8957952 * k + 5332696) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2666348) = 2239488 * k + 1333174 := by
    unfold C
    simp [show (4478976 * k + 2666348) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1333174) = 1119744 * k + 666587 := by
    unfold C
    simp [show (2239488 * k + 1333174) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 666587) = 3359232 * k + 1999762 := by
    unfold C
    simp [show (1119744 * k + 666587) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1999762) = 1679616 * k + 999881 := by
    unfold C
    simp [show (3359232 * k + 1999762) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 999881) = 5038848 * k + 2999644 := by
    unfold C
    simp [show (1679616 * k + 999881) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2999644) = 2519424 * k + 1499822 := by
    unfold C
    simp [show (5038848 * k + 2999644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1499822) = 1259712 * k + 749911 := by
    unfold C
    simp [show (2519424 * k + 1499822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 749911) = 3779136 * k + 2249734 := by
    unfold C
    simp [show (1259712 * k + 749911) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2249734) = 1889568 * k + 1124867 := by
    unfold C
    simp [show (3779136 * k + 2249734) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1124867) = 5668704 * k + 3374602 := by
    unfold C
    simp [show (1889568 * k + 1124867) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3374602) = 2834352 * k + 1687301 := by
    unfold C
    simp [show (5668704 * k + 3374602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1687301) = 8503056 * k + 5061904 := by
    unfold C
    simp [show (2834352 * k + 1687301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5061904) = 4251528 * k + 2530952 := by
    unfold C
    simp [show (8503056 * k + 5061904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2530952) = 2125764 * k + 1265476 := by
    unfold C
    simp [show (4251528 * k + 2530952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1265476) = 1062882 * k + 632738 := by
    unfold C
    simp [show (2125764 * k + 1265476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 632738) = 531441 * k + 316369 := by
    unfold C
    simp [show (1062882 * k + 632738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 624219) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 624219)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_624551 : ∀ k : Nat,
    iterate (1048576 * k + 624551) 32 = 531441 * k + 316537 ∧
      531441 * k + 316537 < 1048576 * k + 624551 := by
  intro k
  have h1 : C (1048576 * k + 624551) = 3145728 * k + 1873654 := by
    unfold C
    simp [show (1048576 * k + 624551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1873654) = 1572864 * k + 936827 := by
    unfold C
    simp [show (3145728 * k + 1873654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 936827) = 4718592 * k + 2810482 := by
    unfold C
    simp [show (1572864 * k + 936827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2810482) = 2359296 * k + 1405241 := by
    unfold C
    simp [show (4718592 * k + 2810482) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1405241) = 7077888 * k + 4215724 := by
    unfold C
    simp [show (2359296 * k + 1405241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4215724) = 3538944 * k + 2107862 := by
    unfold C
    simp [show (7077888 * k + 4215724) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2107862) = 1769472 * k + 1053931 := by
    unfold C
    simp [show (3538944 * k + 2107862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1053931) = 5308416 * k + 3161794 := by
    unfold C
    simp [show (1769472 * k + 1053931) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3161794) = 2654208 * k + 1580897 := by
    unfold C
    simp [show (5308416 * k + 3161794) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1580897) = 7962624 * k + 4742692 := by
    unfold C
    simp [show (2654208 * k + 1580897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4742692) = 3981312 * k + 2371346 := by
    unfold C
    simp [show (7962624 * k + 4742692) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2371346) = 1990656 * k + 1185673 := by
    unfold C
    simp [show (3981312 * k + 2371346) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1185673) = 5971968 * k + 3557020 := by
    unfold C
    simp [show (1990656 * k + 1185673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3557020) = 2985984 * k + 1778510 := by
    unfold C
    simp [show (5971968 * k + 3557020) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1778510) = 1492992 * k + 889255 := by
    unfold C
    simp [show (2985984 * k + 1778510) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 889255) = 4478976 * k + 2667766 := by
    unfold C
    simp [show (1492992 * k + 889255) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2667766) = 2239488 * k + 1333883 := by
    unfold C
    simp [show (4478976 * k + 2667766) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1333883) = 6718464 * k + 4001650 := by
    unfold C
    simp [show (2239488 * k + 1333883) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4001650) = 3359232 * k + 2000825 := by
    unfold C
    simp [show (6718464 * k + 4001650) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2000825) = 10077696 * k + 6002476 := by
    unfold C
    simp [show (3359232 * k + 2000825) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6002476) = 5038848 * k + 3001238 := by
    unfold C
    simp [show (10077696 * k + 6002476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3001238) = 2519424 * k + 1500619 := by
    unfold C
    simp [show (5038848 * k + 3001238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1500619) = 7558272 * k + 4501858 := by
    unfold C
    simp [show (2519424 * k + 1500619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4501858) = 3779136 * k + 2250929 := by
    unfold C
    simp [show (7558272 * k + 4501858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2250929) = 11337408 * k + 6752788 := by
    unfold C
    simp [show (3779136 * k + 2250929) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6752788) = 5668704 * k + 3376394 := by
    unfold C
    simp [show (11337408 * k + 6752788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3376394) = 2834352 * k + 1688197 := by
    unfold C
    simp [show (5668704 * k + 3376394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1688197) = 8503056 * k + 5064592 := by
    unfold C
    simp [show (2834352 * k + 1688197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5064592) = 4251528 * k + 2532296 := by
    unfold C
    simp [show (8503056 * k + 5064592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2532296) = 2125764 * k + 1266148 := by
    unfold C
    simp [show (4251528 * k + 2532296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1266148) = 1062882 * k + 633074 := by
    unfold C
    simp [show (2125764 * k + 1266148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 633074) = 531441 * k + 316537 := by
    unfold C
    simp [show (1062882 * k + 633074) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 624551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 624551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_625127 : ∀ k : Nat,
    iterate (1048576 * k + 625127) 32 = 531441 * k + 316829 ∧
      531441 * k + 316829 < 1048576 * k + 625127 := by
  intro k
  have h1 : C (1048576 * k + 625127) = 3145728 * k + 1875382 := by
    unfold C
    simp [show (1048576 * k + 625127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1875382) = 1572864 * k + 937691 := by
    unfold C
    simp [show (3145728 * k + 1875382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 937691) = 4718592 * k + 2813074 := by
    unfold C
    simp [show (1572864 * k + 937691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2813074) = 2359296 * k + 1406537 := by
    unfold C
    simp [show (4718592 * k + 2813074) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1406537) = 7077888 * k + 4219612 := by
    unfold C
    simp [show (2359296 * k + 1406537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4219612) = 3538944 * k + 2109806 := by
    unfold C
    simp [show (7077888 * k + 4219612) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2109806) = 1769472 * k + 1054903 := by
    unfold C
    simp [show (3538944 * k + 2109806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1054903) = 5308416 * k + 3164710 := by
    unfold C
    simp [show (1769472 * k + 1054903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3164710) = 2654208 * k + 1582355 := by
    unfold C
    simp [show (5308416 * k + 3164710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1582355) = 7962624 * k + 4747066 := by
    unfold C
    simp [show (2654208 * k + 1582355) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4747066) = 3981312 * k + 2373533 := by
    unfold C
    simp [show (7962624 * k + 4747066) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2373533) = 11943936 * k + 7120600 := by
    unfold C
    simp [show (3981312 * k + 2373533) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7120600) = 5971968 * k + 3560300 := by
    unfold C
    simp [show (11943936 * k + 7120600) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3560300) = 2985984 * k + 1780150 := by
    unfold C
    simp [show (5971968 * k + 3560300) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1780150) = 1492992 * k + 890075 := by
    unfold C
    simp [show (2985984 * k + 1780150) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 890075) = 4478976 * k + 2670226 := by
    unfold C
    simp [show (1492992 * k + 890075) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2670226) = 2239488 * k + 1335113 := by
    unfold C
    simp [show (4478976 * k + 2670226) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1335113) = 6718464 * k + 4005340 := by
    unfold C
    simp [show (2239488 * k + 1335113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4005340) = 3359232 * k + 2002670 := by
    unfold C
    simp [show (6718464 * k + 4005340) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2002670) = 1679616 * k + 1001335 := by
    unfold C
    simp [show (3359232 * k + 2002670) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1001335) = 5038848 * k + 3004006 := by
    unfold C
    simp [show (1679616 * k + 1001335) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3004006) = 2519424 * k + 1502003 := by
    unfold C
    simp [show (5038848 * k + 3004006) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1502003) = 7558272 * k + 4506010 := by
    unfold C
    simp [show (2519424 * k + 1502003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4506010) = 3779136 * k + 2253005 := by
    unfold C
    simp [show (7558272 * k + 4506010) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2253005) = 11337408 * k + 6759016 := by
    unfold C
    simp [show (3779136 * k + 2253005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6759016) = 5668704 * k + 3379508 := by
    unfold C
    simp [show (11337408 * k + 6759016) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3379508) = 2834352 * k + 1689754 := by
    unfold C
    simp [show (5668704 * k + 3379508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1689754) = 1417176 * k + 844877 := by
    unfold C
    simp [show (2834352 * k + 1689754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 844877) = 4251528 * k + 2534632 := by
    unfold C
    simp [show (1417176 * k + 844877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2534632) = 2125764 * k + 1267316 := by
    unfold C
    simp [show (4251528 * k + 2534632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1267316) = 1062882 * k + 633658 := by
    unfold C
    simp [show (2125764 * k + 1267316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 633658) = 531441 * k + 316829 := by
    unfold C
    simp [show (1062882 * k + 633658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 625127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 625127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_625471 : ∀ k : Nat,
    iterate (1048576 * k + 625471) 32 = 531441 * k + 317003 ∧
      531441 * k + 317003 < 1048576 * k + 625471 := by
  intro k
  have h1 : C (1048576 * k + 625471) = 3145728 * k + 1876414 := by
    unfold C
    simp [show (1048576 * k + 625471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1876414) = 1572864 * k + 938207 := by
    unfold C
    simp [show (3145728 * k + 1876414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 938207) = 4718592 * k + 2814622 := by
    unfold C
    simp [show (1572864 * k + 938207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2814622) = 2359296 * k + 1407311 := by
    unfold C
    simp [show (4718592 * k + 2814622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1407311) = 7077888 * k + 4221934 := by
    unfold C
    simp [show (2359296 * k + 1407311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4221934) = 3538944 * k + 2110967 := by
    unfold C
    simp [show (7077888 * k + 4221934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2110967) = 10616832 * k + 6332902 := by
    unfold C
    simp [show (3538944 * k + 2110967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6332902) = 5308416 * k + 3166451 := by
    unfold C
    simp [show (10616832 * k + 6332902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3166451) = 15925248 * k + 9499354 := by
    unfold C
    simp [show (5308416 * k + 3166451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9499354) = 7962624 * k + 4749677 := by
    unfold C
    simp [show (15925248 * k + 9499354) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4749677) = 23887872 * k + 14249032 := by
    unfold C
    simp [show (7962624 * k + 4749677) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14249032) = 11943936 * k + 7124516 := by
    unfold C
    simp [show (23887872 * k + 14249032) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7124516) = 5971968 * k + 3562258 := by
    unfold C
    simp [show (11943936 * k + 7124516) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3562258) = 2985984 * k + 1781129 := by
    unfold C
    simp [show (5971968 * k + 3562258) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1781129) = 8957952 * k + 5343388 := by
    unfold C
    simp [show (2985984 * k + 1781129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5343388) = 4478976 * k + 2671694 := by
    unfold C
    simp [show (8957952 * k + 5343388) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2671694) = 2239488 * k + 1335847 := by
    unfold C
    simp [show (4478976 * k + 2671694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1335847) = 6718464 * k + 4007542 := by
    unfold C
    simp [show (2239488 * k + 1335847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4007542) = 3359232 * k + 2003771 := by
    unfold C
    simp [show (6718464 * k + 4007542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2003771) = 10077696 * k + 6011314 := by
    unfold C
    simp [show (3359232 * k + 2003771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6011314) = 5038848 * k + 3005657 := by
    unfold C
    simp [show (10077696 * k + 6011314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3005657) = 15116544 * k + 9016972 := by
    unfold C
    simp [show (5038848 * k + 3005657) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9016972) = 7558272 * k + 4508486 := by
    unfold C
    simp [show (15116544 * k + 9016972) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4508486) = 3779136 * k + 2254243 := by
    unfold C
    simp [show (7558272 * k + 4508486) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2254243) = 11337408 * k + 6762730 := by
    unfold C
    simp [show (3779136 * k + 2254243) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6762730) = 5668704 * k + 3381365 := by
    unfold C
    simp [show (11337408 * k + 6762730) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3381365) = 17006112 * k + 10144096 := by
    unfold C
    simp [show (5668704 * k + 3381365) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10144096) = 8503056 * k + 5072048 := by
    unfold C
    simp [show (17006112 * k + 10144096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5072048) = 4251528 * k + 2536024 := by
    unfold C
    simp [show (8503056 * k + 5072048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2536024) = 2125764 * k + 1268012 := by
    unfold C
    simp [show (4251528 * k + 2536024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1268012) = 1062882 * k + 634006 := by
    unfold C
    simp [show (2125764 * k + 1268012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 634006) = 531441 * k + 317003 := by
    unfold C
    simp [show (1062882 * k + 634006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 625471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 625471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_625791 : ∀ k : Nat,
    iterate (1048576 * k + 625791) 32 = 531441 * k + 317165 ∧
      531441 * k + 317165 < 1048576 * k + 625791 := by
  intro k
  have h1 : C (1048576 * k + 625791) = 3145728 * k + 1877374 := by
    unfold C
    simp [show (1048576 * k + 625791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1877374) = 1572864 * k + 938687 := by
    unfold C
    simp [show (3145728 * k + 1877374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 938687) = 4718592 * k + 2816062 := by
    unfold C
    simp [show (1572864 * k + 938687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2816062) = 2359296 * k + 1408031 := by
    unfold C
    simp [show (4718592 * k + 2816062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1408031) = 7077888 * k + 4224094 := by
    unfold C
    simp [show (2359296 * k + 1408031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4224094) = 3538944 * k + 2112047 := by
    unfold C
    simp [show (7077888 * k + 4224094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2112047) = 10616832 * k + 6336142 := by
    unfold C
    simp [show (3538944 * k + 2112047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6336142) = 5308416 * k + 3168071 := by
    unfold C
    simp [show (10616832 * k + 6336142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3168071) = 15925248 * k + 9504214 := by
    unfold C
    simp [show (5308416 * k + 3168071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9504214) = 7962624 * k + 4752107 := by
    unfold C
    simp [show (15925248 * k + 9504214) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4752107) = 23887872 * k + 14256322 := by
    unfold C
    simp [show (7962624 * k + 4752107) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14256322) = 11943936 * k + 7128161 := by
    unfold C
    simp [show (23887872 * k + 14256322) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7128161) = 35831808 * k + 21384484 := by
    unfold C
    simp [show (11943936 * k + 7128161) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21384484) = 17915904 * k + 10692242 := by
    unfold C
    simp [show (35831808 * k + 21384484) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10692242) = 8957952 * k + 5346121 := by
    unfold C
    simp [show (17915904 * k + 10692242) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5346121) = 26873856 * k + 16038364 := by
    unfold C
    simp [show (8957952 * k + 5346121) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16038364) = 13436928 * k + 8019182 := by
    unfold C
    simp [show (26873856 * k + 16038364) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8019182) = 6718464 * k + 4009591 := by
    unfold C
    simp [show (13436928 * k + 8019182) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4009591) = 20155392 * k + 12028774 := by
    unfold C
    simp [show (6718464 * k + 4009591) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12028774) = 10077696 * k + 6014387 := by
    unfold C
    simp [show (20155392 * k + 12028774) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6014387) = 30233088 * k + 18043162 := by
    unfold C
    simp [show (10077696 * k + 6014387) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18043162) = 15116544 * k + 9021581 := by
    unfold C
    simp [show (30233088 * k + 18043162) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9021581) = 45349632 * k + 27064744 := by
    unfold C
    simp [show (15116544 * k + 9021581) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27064744) = 22674816 * k + 13532372 := by
    unfold C
    simp [show (45349632 * k + 27064744) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13532372) = 11337408 * k + 6766186 := by
    unfold C
    simp [show (22674816 * k + 13532372) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6766186) = 5668704 * k + 3383093 := by
    unfold C
    simp [show (11337408 * k + 6766186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3383093) = 17006112 * k + 10149280 := by
    unfold C
    simp [show (5668704 * k + 3383093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10149280) = 8503056 * k + 5074640 := by
    unfold C
    simp [show (17006112 * k + 10149280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5074640) = 4251528 * k + 2537320 := by
    unfold C
    simp [show (8503056 * k + 5074640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2537320) = 2125764 * k + 1268660 := by
    unfold C
    simp [show (4251528 * k + 2537320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1268660) = 1062882 * k + 634330 := by
    unfold C
    simp [show (2125764 * k + 1268660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 634330) = 531441 * k + 317165 := by
    unfold C
    simp [show (1062882 * k + 634330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 625791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 625791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_626127 : ∀ k : Nat,
    iterate (1048576 * k + 626127) 32 = 531441 * k + 317336 ∧
      531441 * k + 317336 < 1048576 * k + 626127 := by
  intro k
  have h1 : C (1048576 * k + 626127) = 3145728 * k + 1878382 := by
    unfold C
    simp [show (1048576 * k + 626127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1878382) = 1572864 * k + 939191 := by
    unfold C
    simp [show (3145728 * k + 1878382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 939191) = 4718592 * k + 2817574 := by
    unfold C
    simp [show (1572864 * k + 939191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2817574) = 2359296 * k + 1408787 := by
    unfold C
    simp [show (4718592 * k + 2817574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1408787) = 7077888 * k + 4226362 := by
    unfold C
    simp [show (2359296 * k + 1408787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4226362) = 3538944 * k + 2113181 := by
    unfold C
    simp [show (7077888 * k + 4226362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2113181) = 10616832 * k + 6339544 := by
    unfold C
    simp [show (3538944 * k + 2113181) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6339544) = 5308416 * k + 3169772 := by
    unfold C
    simp [show (10616832 * k + 6339544) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3169772) = 2654208 * k + 1584886 := by
    unfold C
    simp [show (5308416 * k + 3169772) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1584886) = 1327104 * k + 792443 := by
    unfold C
    simp [show (2654208 * k + 1584886) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 792443) = 3981312 * k + 2377330 := by
    unfold C
    simp [show (1327104 * k + 792443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2377330) = 1990656 * k + 1188665 := by
    unfold C
    simp [show (3981312 * k + 2377330) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1188665) = 5971968 * k + 3565996 := by
    unfold C
    simp [show (1990656 * k + 1188665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3565996) = 2985984 * k + 1782998 := by
    unfold C
    simp [show (5971968 * k + 3565996) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1782998) = 1492992 * k + 891499 := by
    unfold C
    simp [show (2985984 * k + 1782998) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 891499) = 4478976 * k + 2674498 := by
    unfold C
    simp [show (1492992 * k + 891499) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2674498) = 2239488 * k + 1337249 := by
    unfold C
    simp [show (4478976 * k + 2674498) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1337249) = 6718464 * k + 4011748 := by
    unfold C
    simp [show (2239488 * k + 1337249) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4011748) = 3359232 * k + 2005874 := by
    unfold C
    simp [show (6718464 * k + 4011748) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2005874) = 1679616 * k + 1002937 := by
    unfold C
    simp [show (3359232 * k + 2005874) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1002937) = 5038848 * k + 3008812 := by
    unfold C
    simp [show (1679616 * k + 1002937) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3008812) = 2519424 * k + 1504406 := by
    unfold C
    simp [show (5038848 * k + 3008812) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1504406) = 1259712 * k + 752203 := by
    unfold C
    simp [show (2519424 * k + 1504406) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 752203) = 3779136 * k + 2256610 := by
    unfold C
    simp [show (1259712 * k + 752203) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2256610) = 1889568 * k + 1128305 := by
    unfold C
    simp [show (3779136 * k + 2256610) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1128305) = 5668704 * k + 3384916 := by
    unfold C
    simp [show (1889568 * k + 1128305) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3384916) = 2834352 * k + 1692458 := by
    unfold C
    simp [show (5668704 * k + 3384916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1692458) = 1417176 * k + 846229 := by
    unfold C
    simp [show (2834352 * k + 1692458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 846229) = 4251528 * k + 2538688 := by
    unfold C
    simp [show (1417176 * k + 846229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2538688) = 2125764 * k + 1269344 := by
    unfold C
    simp [show (4251528 * k + 2538688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1269344) = 1062882 * k + 634672 := by
    unfold C
    simp [show (2125764 * k + 1269344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 634672) = 531441 * k + 317336 := by
    unfold C
    simp [show (1062882 * k + 634672) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 626127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 626127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_626287 : ∀ k : Nat,
    iterate (1048576 * k + 626287) 32 = 531441 * k + 317417 ∧
      531441 * k + 317417 < 1048576 * k + 626287 := by
  intro k
  have h1 : C (1048576 * k + 626287) = 3145728 * k + 1878862 := by
    unfold C
    simp [show (1048576 * k + 626287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1878862) = 1572864 * k + 939431 := by
    unfold C
    simp [show (3145728 * k + 1878862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 939431) = 4718592 * k + 2818294 := by
    unfold C
    simp [show (1572864 * k + 939431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2818294) = 2359296 * k + 1409147 := by
    unfold C
    simp [show (4718592 * k + 2818294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1409147) = 7077888 * k + 4227442 := by
    unfold C
    simp [show (2359296 * k + 1409147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4227442) = 3538944 * k + 2113721 := by
    unfold C
    simp [show (7077888 * k + 4227442) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2113721) = 10616832 * k + 6341164 := by
    unfold C
    simp [show (3538944 * k + 2113721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6341164) = 5308416 * k + 3170582 := by
    unfold C
    simp [show (10616832 * k + 6341164) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3170582) = 2654208 * k + 1585291 := by
    unfold C
    simp [show (5308416 * k + 3170582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1585291) = 7962624 * k + 4755874 := by
    unfold C
    simp [show (2654208 * k + 1585291) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4755874) = 3981312 * k + 2377937 := by
    unfold C
    simp [show (7962624 * k + 4755874) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2377937) = 11943936 * k + 7133812 := by
    unfold C
    simp [show (3981312 * k + 2377937) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7133812) = 5971968 * k + 3566906 := by
    unfold C
    simp [show (11943936 * k + 7133812) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3566906) = 2985984 * k + 1783453 := by
    unfold C
    simp [show (5971968 * k + 3566906) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1783453) = 8957952 * k + 5350360 := by
    unfold C
    simp [show (2985984 * k + 1783453) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5350360) = 4478976 * k + 2675180 := by
    unfold C
    simp [show (8957952 * k + 5350360) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2675180) = 2239488 * k + 1337590 := by
    unfold C
    simp [show (4478976 * k + 2675180) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1337590) = 1119744 * k + 668795 := by
    unfold C
    simp [show (2239488 * k + 1337590) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 668795) = 3359232 * k + 2006386 := by
    unfold C
    simp [show (1119744 * k + 668795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2006386) = 1679616 * k + 1003193 := by
    unfold C
    simp [show (3359232 * k + 2006386) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1003193) = 5038848 * k + 3009580 := by
    unfold C
    simp [show (1679616 * k + 1003193) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3009580) = 2519424 * k + 1504790 := by
    unfold C
    simp [show (5038848 * k + 3009580) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1504790) = 1259712 * k + 752395 := by
    unfold C
    simp [show (2519424 * k + 1504790) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 752395) = 3779136 * k + 2257186 := by
    unfold C
    simp [show (1259712 * k + 752395) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2257186) = 1889568 * k + 1128593 := by
    unfold C
    simp [show (3779136 * k + 2257186) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1128593) = 5668704 * k + 3385780 := by
    unfold C
    simp [show (1889568 * k + 1128593) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3385780) = 2834352 * k + 1692890 := by
    unfold C
    simp [show (5668704 * k + 3385780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1692890) = 1417176 * k + 846445 := by
    unfold C
    simp [show (2834352 * k + 1692890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 846445) = 4251528 * k + 2539336 := by
    unfold C
    simp [show (1417176 * k + 846445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2539336) = 2125764 * k + 1269668 := by
    unfold C
    simp [show (4251528 * k + 2539336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1269668) = 1062882 * k + 634834 := by
    unfold C
    simp [show (2125764 * k + 1269668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 634834) = 531441 * k + 317417 := by
    unfold C
    simp [show (1062882 * k + 634834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 626287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 626287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_626895 : ∀ k : Nat,
    iterate (1048576 * k + 626895) 32 = 531441 * k + 317725 ∧
      531441 * k + 317725 < 1048576 * k + 626895 := by
  intro k
  have h1 : C (1048576 * k + 626895) = 3145728 * k + 1880686 := by
    unfold C
    simp [show (1048576 * k + 626895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1880686) = 1572864 * k + 940343 := by
    unfold C
    simp [show (3145728 * k + 1880686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 940343) = 4718592 * k + 2821030 := by
    unfold C
    simp [show (1572864 * k + 940343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2821030) = 2359296 * k + 1410515 := by
    unfold C
    simp [show (4718592 * k + 2821030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1410515) = 7077888 * k + 4231546 := by
    unfold C
    simp [show (2359296 * k + 1410515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4231546) = 3538944 * k + 2115773 := by
    unfold C
    simp [show (7077888 * k + 4231546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2115773) = 10616832 * k + 6347320 := by
    unfold C
    simp [show (3538944 * k + 2115773) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6347320) = 5308416 * k + 3173660 := by
    unfold C
    simp [show (10616832 * k + 6347320) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3173660) = 2654208 * k + 1586830 := by
    unfold C
    simp [show (5308416 * k + 3173660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1586830) = 1327104 * k + 793415 := by
    unfold C
    simp [show (2654208 * k + 1586830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 793415) = 3981312 * k + 2380246 := by
    unfold C
    simp [show (1327104 * k + 793415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2380246) = 1990656 * k + 1190123 := by
    unfold C
    simp [show (3981312 * k + 2380246) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1190123) = 5971968 * k + 3570370 := by
    unfold C
    simp [show (1990656 * k + 1190123) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3570370) = 2985984 * k + 1785185 := by
    unfold C
    simp [show (5971968 * k + 3570370) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1785185) = 8957952 * k + 5355556 := by
    unfold C
    simp [show (2985984 * k + 1785185) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5355556) = 4478976 * k + 2677778 := by
    unfold C
    simp [show (8957952 * k + 5355556) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2677778) = 2239488 * k + 1338889 := by
    unfold C
    simp [show (4478976 * k + 2677778) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1338889) = 6718464 * k + 4016668 := by
    unfold C
    simp [show (2239488 * k + 1338889) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4016668) = 3359232 * k + 2008334 := by
    unfold C
    simp [show (6718464 * k + 4016668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2008334) = 1679616 * k + 1004167 := by
    unfold C
    simp [show (3359232 * k + 2008334) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1004167) = 5038848 * k + 3012502 := by
    unfold C
    simp [show (1679616 * k + 1004167) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3012502) = 2519424 * k + 1506251 := by
    unfold C
    simp [show (5038848 * k + 3012502) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1506251) = 7558272 * k + 4518754 := by
    unfold C
    simp [show (2519424 * k + 1506251) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4518754) = 3779136 * k + 2259377 := by
    unfold C
    simp [show (7558272 * k + 4518754) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2259377) = 11337408 * k + 6778132 := by
    unfold C
    simp [show (3779136 * k + 2259377) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6778132) = 5668704 * k + 3389066 := by
    unfold C
    simp [show (11337408 * k + 6778132) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3389066) = 2834352 * k + 1694533 := by
    unfold C
    simp [show (5668704 * k + 3389066) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1694533) = 8503056 * k + 5083600 := by
    unfold C
    simp [show (2834352 * k + 1694533) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5083600) = 4251528 * k + 2541800 := by
    unfold C
    simp [show (8503056 * k + 5083600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2541800) = 2125764 * k + 1270900 := by
    unfold C
    simp [show (4251528 * k + 2541800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1270900) = 1062882 * k + 635450 := by
    unfold C
    simp [show (2125764 * k + 1270900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 635450) = 531441 * k + 317725 := by
    unfold C
    simp [show (1062882 * k + 635450) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 626895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 626895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_626927 : ∀ k : Nat,
    iterate (1048576 * k + 626927) 32 = 531441 * k + 317741 ∧
      531441 * k + 317741 < 1048576 * k + 626927 := by
  intro k
  have h1 : C (1048576 * k + 626927) = 3145728 * k + 1880782 := by
    unfold C
    simp [show (1048576 * k + 626927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1880782) = 1572864 * k + 940391 := by
    unfold C
    simp [show (3145728 * k + 1880782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 940391) = 4718592 * k + 2821174 := by
    unfold C
    simp [show (1572864 * k + 940391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2821174) = 2359296 * k + 1410587 := by
    unfold C
    simp [show (4718592 * k + 2821174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1410587) = 7077888 * k + 4231762 := by
    unfold C
    simp [show (2359296 * k + 1410587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4231762) = 3538944 * k + 2115881 := by
    unfold C
    simp [show (7077888 * k + 4231762) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2115881) = 10616832 * k + 6347644 := by
    unfold C
    simp [show (3538944 * k + 2115881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6347644) = 5308416 * k + 3173822 := by
    unfold C
    simp [show (10616832 * k + 6347644) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3173822) = 2654208 * k + 1586911 := by
    unfold C
    simp [show (5308416 * k + 3173822) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1586911) = 7962624 * k + 4760734 := by
    unfold C
    simp [show (2654208 * k + 1586911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4760734) = 3981312 * k + 2380367 := by
    unfold C
    simp [show (7962624 * k + 4760734) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2380367) = 11943936 * k + 7141102 := by
    unfold C
    simp [show (3981312 * k + 2380367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7141102) = 5971968 * k + 3570551 := by
    unfold C
    simp [show (11943936 * k + 7141102) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3570551) = 17915904 * k + 10711654 := by
    unfold C
    simp [show (5971968 * k + 3570551) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10711654) = 8957952 * k + 5355827 := by
    unfold C
    simp [show (17915904 * k + 10711654) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5355827) = 26873856 * k + 16067482 := by
    unfold C
    simp [show (8957952 * k + 5355827) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16067482) = 13436928 * k + 8033741 := by
    unfold C
    simp [show (26873856 * k + 16067482) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8033741) = 40310784 * k + 24101224 := by
    unfold C
    simp [show (13436928 * k + 8033741) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24101224) = 20155392 * k + 12050612 := by
    unfold C
    simp [show (40310784 * k + 24101224) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12050612) = 10077696 * k + 6025306 := by
    unfold C
    simp [show (20155392 * k + 12050612) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6025306) = 5038848 * k + 3012653 := by
    unfold C
    simp [show (10077696 * k + 6025306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3012653) = 15116544 * k + 9037960 := by
    unfold C
    simp [show (5038848 * k + 3012653) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9037960) = 7558272 * k + 4518980 := by
    unfold C
    simp [show (15116544 * k + 9037960) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4518980) = 3779136 * k + 2259490 := by
    unfold C
    simp [show (7558272 * k + 4518980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2259490) = 1889568 * k + 1129745 := by
    unfold C
    simp [show (3779136 * k + 2259490) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1129745) = 5668704 * k + 3389236 := by
    unfold C
    simp [show (1889568 * k + 1129745) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3389236) = 2834352 * k + 1694618 := by
    unfold C
    simp [show (5668704 * k + 3389236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1694618) = 1417176 * k + 847309 := by
    unfold C
    simp [show (2834352 * k + 1694618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 847309) = 4251528 * k + 2541928 := by
    unfold C
    simp [show (1417176 * k + 847309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2541928) = 2125764 * k + 1270964 := by
    unfold C
    simp [show (4251528 * k + 2541928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1270964) = 1062882 * k + 635482 := by
    unfold C
    simp [show (2125764 * k + 1270964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 635482) = 531441 * k + 317741 := by
    unfold C
    simp [show (1062882 * k + 635482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 626927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 626927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_627487 : ∀ k : Nat,
    iterate (1048576 * k + 627487) 32 = 531441 * k + 318025 ∧
      531441 * k + 318025 < 1048576 * k + 627487 := by
  intro k
  have h1 : C (1048576 * k + 627487) = 3145728 * k + 1882462 := by
    unfold C
    simp [show (1048576 * k + 627487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1882462) = 1572864 * k + 941231 := by
    unfold C
    simp [show (3145728 * k + 1882462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 941231) = 4718592 * k + 2823694 := by
    unfold C
    simp [show (1572864 * k + 941231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2823694) = 2359296 * k + 1411847 := by
    unfold C
    simp [show (4718592 * k + 2823694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1411847) = 7077888 * k + 4235542 := by
    unfold C
    simp [show (2359296 * k + 1411847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4235542) = 3538944 * k + 2117771 := by
    unfold C
    simp [show (7077888 * k + 4235542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2117771) = 10616832 * k + 6353314 := by
    unfold C
    simp [show (3538944 * k + 2117771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6353314) = 5308416 * k + 3176657 := by
    unfold C
    simp [show (10616832 * k + 6353314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3176657) = 15925248 * k + 9529972 := by
    unfold C
    simp [show (5308416 * k + 3176657) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9529972) = 7962624 * k + 4764986 := by
    unfold C
    simp [show (15925248 * k + 9529972) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4764986) = 3981312 * k + 2382493 := by
    unfold C
    simp [show (7962624 * k + 4764986) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2382493) = 11943936 * k + 7147480 := by
    unfold C
    simp [show (3981312 * k + 2382493) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7147480) = 5971968 * k + 3573740 := by
    unfold C
    simp [show (11943936 * k + 7147480) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3573740) = 2985984 * k + 1786870 := by
    unfold C
    simp [show (5971968 * k + 3573740) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1786870) = 1492992 * k + 893435 := by
    unfold C
    simp [show (2985984 * k + 1786870) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 893435) = 4478976 * k + 2680306 := by
    unfold C
    simp [show (1492992 * k + 893435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2680306) = 2239488 * k + 1340153 := by
    unfold C
    simp [show (4478976 * k + 2680306) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1340153) = 6718464 * k + 4020460 := by
    unfold C
    simp [show (2239488 * k + 1340153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4020460) = 3359232 * k + 2010230 := by
    unfold C
    simp [show (6718464 * k + 4020460) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2010230) = 1679616 * k + 1005115 := by
    unfold C
    simp [show (3359232 * k + 2010230) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1005115) = 5038848 * k + 3015346 := by
    unfold C
    simp [show (1679616 * k + 1005115) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3015346) = 2519424 * k + 1507673 := by
    unfold C
    simp [show (5038848 * k + 3015346) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1507673) = 7558272 * k + 4523020 := by
    unfold C
    simp [show (2519424 * k + 1507673) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4523020) = 3779136 * k + 2261510 := by
    unfold C
    simp [show (7558272 * k + 4523020) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2261510) = 1889568 * k + 1130755 := by
    unfold C
    simp [show (3779136 * k + 2261510) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1130755) = 5668704 * k + 3392266 := by
    unfold C
    simp [show (1889568 * k + 1130755) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3392266) = 2834352 * k + 1696133 := by
    unfold C
    simp [show (5668704 * k + 3392266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1696133) = 8503056 * k + 5088400 := by
    unfold C
    simp [show (2834352 * k + 1696133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5088400) = 4251528 * k + 2544200 := by
    unfold C
    simp [show (8503056 * k + 5088400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2544200) = 2125764 * k + 1272100 := by
    unfold C
    simp [show (4251528 * k + 2544200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1272100) = 1062882 * k + 636050 := by
    unfold C
    simp [show (2125764 * k + 1272100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 636050) = 531441 * k + 318025 := by
    unfold C
    simp [show (1062882 * k + 636050) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 627487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 627487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_627815 : ∀ k : Nat,
    iterate (1048576 * k + 627815) 32 = 531441 * k + 318191 ∧
      531441 * k + 318191 < 1048576 * k + 627815 := by
  intro k
  have h1 : C (1048576 * k + 627815) = 3145728 * k + 1883446 := by
    unfold C
    simp [show (1048576 * k + 627815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1883446) = 1572864 * k + 941723 := by
    unfold C
    simp [show (3145728 * k + 1883446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 941723) = 4718592 * k + 2825170 := by
    unfold C
    simp [show (1572864 * k + 941723) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2825170) = 2359296 * k + 1412585 := by
    unfold C
    simp [show (4718592 * k + 2825170) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1412585) = 7077888 * k + 4237756 := by
    unfold C
    simp [show (2359296 * k + 1412585) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4237756) = 3538944 * k + 2118878 := by
    unfold C
    simp [show (7077888 * k + 4237756) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2118878) = 1769472 * k + 1059439 := by
    unfold C
    simp [show (3538944 * k + 2118878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1059439) = 5308416 * k + 3178318 := by
    unfold C
    simp [show (1769472 * k + 1059439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3178318) = 2654208 * k + 1589159 := by
    unfold C
    simp [show (5308416 * k + 3178318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1589159) = 7962624 * k + 4767478 := by
    unfold C
    simp [show (2654208 * k + 1589159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4767478) = 3981312 * k + 2383739 := by
    unfold C
    simp [show (7962624 * k + 4767478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2383739) = 11943936 * k + 7151218 := by
    unfold C
    simp [show (3981312 * k + 2383739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7151218) = 5971968 * k + 3575609 := by
    unfold C
    simp [show (11943936 * k + 7151218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3575609) = 17915904 * k + 10726828 := by
    unfold C
    simp [show (5971968 * k + 3575609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10726828) = 8957952 * k + 5363414 := by
    unfold C
    simp [show (17915904 * k + 10726828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5363414) = 4478976 * k + 2681707 := by
    unfold C
    simp [show (8957952 * k + 5363414) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2681707) = 13436928 * k + 8045122 := by
    unfold C
    simp [show (4478976 * k + 2681707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8045122) = 6718464 * k + 4022561 := by
    unfold C
    simp [show (13436928 * k + 8045122) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4022561) = 20155392 * k + 12067684 := by
    unfold C
    simp [show (6718464 * k + 4022561) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12067684) = 10077696 * k + 6033842 := by
    unfold C
    simp [show (20155392 * k + 12067684) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6033842) = 5038848 * k + 3016921 := by
    unfold C
    simp [show (10077696 * k + 6033842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3016921) = 15116544 * k + 9050764 := by
    unfold C
    simp [show (5038848 * k + 3016921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9050764) = 7558272 * k + 4525382 := by
    unfold C
    simp [show (15116544 * k + 9050764) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4525382) = 3779136 * k + 2262691 := by
    unfold C
    simp [show (7558272 * k + 4525382) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2262691) = 11337408 * k + 6788074 := by
    unfold C
    simp [show (3779136 * k + 2262691) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6788074) = 5668704 * k + 3394037 := by
    unfold C
    simp [show (11337408 * k + 6788074) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3394037) = 17006112 * k + 10182112 := by
    unfold C
    simp [show (5668704 * k + 3394037) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10182112) = 8503056 * k + 5091056 := by
    unfold C
    simp [show (17006112 * k + 10182112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5091056) = 4251528 * k + 2545528 := by
    unfold C
    simp [show (8503056 * k + 5091056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2545528) = 2125764 * k + 1272764 := by
    unfold C
    simp [show (4251528 * k + 2545528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1272764) = 1062882 * k + 636382 := by
    unfold C
    simp [show (2125764 * k + 1272764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 636382) = 531441 * k + 318191 := by
    unfold C
    simp [show (1062882 * k + 636382) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 627815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 627815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_627839 : ∀ k : Nat,
    iterate (1048576 * k + 627839) 32 = 531441 * k + 318203 ∧
      531441 * k + 318203 < 1048576 * k + 627839 := by
  intro k
  have h1 : C (1048576 * k + 627839) = 3145728 * k + 1883518 := by
    unfold C
    simp [show (1048576 * k + 627839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1883518) = 1572864 * k + 941759 := by
    unfold C
    simp [show (3145728 * k + 1883518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 941759) = 4718592 * k + 2825278 := by
    unfold C
    simp [show (1572864 * k + 941759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2825278) = 2359296 * k + 1412639 := by
    unfold C
    simp [show (4718592 * k + 2825278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1412639) = 7077888 * k + 4237918 := by
    unfold C
    simp [show (2359296 * k + 1412639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4237918) = 3538944 * k + 2118959 := by
    unfold C
    simp [show (7077888 * k + 4237918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2118959) = 10616832 * k + 6356878 := by
    unfold C
    simp [show (3538944 * k + 2118959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6356878) = 5308416 * k + 3178439 := by
    unfold C
    simp [show (10616832 * k + 6356878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3178439) = 15925248 * k + 9535318 := by
    unfold C
    simp [show (5308416 * k + 3178439) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9535318) = 7962624 * k + 4767659 := by
    unfold C
    simp [show (15925248 * k + 9535318) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4767659) = 23887872 * k + 14302978 := by
    unfold C
    simp [show (7962624 * k + 4767659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14302978) = 11943936 * k + 7151489 := by
    unfold C
    simp [show (23887872 * k + 14302978) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7151489) = 35831808 * k + 21454468 := by
    unfold C
    simp [show (11943936 * k + 7151489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21454468) = 17915904 * k + 10727234 := by
    unfold C
    simp [show (35831808 * k + 21454468) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10727234) = 8957952 * k + 5363617 := by
    unfold C
    simp [show (17915904 * k + 10727234) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5363617) = 26873856 * k + 16090852 := by
    unfold C
    simp [show (8957952 * k + 5363617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16090852) = 13436928 * k + 8045426 := by
    unfold C
    simp [show (26873856 * k + 16090852) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8045426) = 6718464 * k + 4022713 := by
    unfold C
    simp [show (13436928 * k + 8045426) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4022713) = 20155392 * k + 12068140 := by
    unfold C
    simp [show (6718464 * k + 4022713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12068140) = 10077696 * k + 6034070 := by
    unfold C
    simp [show (20155392 * k + 12068140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6034070) = 5038848 * k + 3017035 := by
    unfold C
    simp [show (10077696 * k + 6034070) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3017035) = 15116544 * k + 9051106 := by
    unfold C
    simp [show (5038848 * k + 3017035) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9051106) = 7558272 * k + 4525553 := by
    unfold C
    simp [show (15116544 * k + 9051106) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4525553) = 22674816 * k + 13576660 := by
    unfold C
    simp [show (7558272 * k + 4525553) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13576660) = 11337408 * k + 6788330 := by
    unfold C
    simp [show (22674816 * k + 13576660) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6788330) = 5668704 * k + 3394165 := by
    unfold C
    simp [show (11337408 * k + 6788330) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3394165) = 17006112 * k + 10182496 := by
    unfold C
    simp [show (5668704 * k + 3394165) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10182496) = 8503056 * k + 5091248 := by
    unfold C
    simp [show (17006112 * k + 10182496) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5091248) = 4251528 * k + 2545624 := by
    unfold C
    simp [show (8503056 * k + 5091248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2545624) = 2125764 * k + 1272812 := by
    unfold C
    simp [show (4251528 * k + 2545624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1272812) = 1062882 * k + 636406 := by
    unfold C
    simp [show (2125764 * k + 1272812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 636406) = 531441 * k + 318203 := by
    unfold C
    simp [show (1062882 * k + 636406) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 627839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 627839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_627943 : ∀ k : Nat,
    iterate (1048576 * k + 627943) 32 = 531441 * k + 318256 ∧
      531441 * k + 318256 < 1048576 * k + 627943 := by
  intro k
  have h1 : C (1048576 * k + 627943) = 3145728 * k + 1883830 := by
    unfold C
    simp [show (1048576 * k + 627943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1883830) = 1572864 * k + 941915 := by
    unfold C
    simp [show (3145728 * k + 1883830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 941915) = 4718592 * k + 2825746 := by
    unfold C
    simp [show (1572864 * k + 941915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2825746) = 2359296 * k + 1412873 := by
    unfold C
    simp [show (4718592 * k + 2825746) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1412873) = 7077888 * k + 4238620 := by
    unfold C
    simp [show (2359296 * k + 1412873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4238620) = 3538944 * k + 2119310 := by
    unfold C
    simp [show (7077888 * k + 4238620) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2119310) = 1769472 * k + 1059655 := by
    unfold C
    simp [show (3538944 * k + 2119310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1059655) = 5308416 * k + 3178966 := by
    unfold C
    simp [show (1769472 * k + 1059655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3178966) = 2654208 * k + 1589483 := by
    unfold C
    simp [show (5308416 * k + 3178966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1589483) = 7962624 * k + 4768450 := by
    unfold C
    simp [show (2654208 * k + 1589483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4768450) = 3981312 * k + 2384225 := by
    unfold C
    simp [show (7962624 * k + 4768450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2384225) = 11943936 * k + 7152676 := by
    unfold C
    simp [show (3981312 * k + 2384225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7152676) = 5971968 * k + 3576338 := by
    unfold C
    simp [show (11943936 * k + 7152676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3576338) = 2985984 * k + 1788169 := by
    unfold C
    simp [show (5971968 * k + 3576338) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1788169) = 8957952 * k + 5364508 := by
    unfold C
    simp [show (2985984 * k + 1788169) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5364508) = 4478976 * k + 2682254 := by
    unfold C
    simp [show (8957952 * k + 5364508) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2682254) = 2239488 * k + 1341127 := by
    unfold C
    simp [show (4478976 * k + 2682254) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1341127) = 6718464 * k + 4023382 := by
    unfold C
    simp [show (2239488 * k + 1341127) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4023382) = 3359232 * k + 2011691 := by
    unfold C
    simp [show (6718464 * k + 4023382) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2011691) = 10077696 * k + 6035074 := by
    unfold C
    simp [show (3359232 * k + 2011691) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6035074) = 5038848 * k + 3017537 := by
    unfold C
    simp [show (10077696 * k + 6035074) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3017537) = 15116544 * k + 9052612 := by
    unfold C
    simp [show (5038848 * k + 3017537) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9052612) = 7558272 * k + 4526306 := by
    unfold C
    simp [show (15116544 * k + 9052612) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4526306) = 3779136 * k + 2263153 := by
    unfold C
    simp [show (7558272 * k + 4526306) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2263153) = 11337408 * k + 6789460 := by
    unfold C
    simp [show (3779136 * k + 2263153) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6789460) = 5668704 * k + 3394730 := by
    unfold C
    simp [show (11337408 * k + 6789460) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3394730) = 2834352 * k + 1697365 := by
    unfold C
    simp [show (5668704 * k + 3394730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1697365) = 8503056 * k + 5092096 := by
    unfold C
    simp [show (2834352 * k + 1697365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5092096) = 4251528 * k + 2546048 := by
    unfold C
    simp [show (8503056 * k + 5092096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2546048) = 2125764 * k + 1273024 := by
    unfold C
    simp [show (4251528 * k + 2546048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1273024) = 1062882 * k + 636512 := by
    unfold C
    simp [show (2125764 * k + 1273024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 636512) = 531441 * k + 318256 := by
    unfold C
    simp [show (1062882 * k + 636512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 627943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 627943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_627967 : ∀ k : Nat,
    iterate (1048576 * k + 627967) 32 = 531441 * k + 318268 ∧
      531441 * k + 318268 < 1048576 * k + 627967 := by
  intro k
  have h1 : C (1048576 * k + 627967) = 3145728 * k + 1883902 := by
    unfold C
    simp [show (1048576 * k + 627967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1883902) = 1572864 * k + 941951 := by
    unfold C
    simp [show (3145728 * k + 1883902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 941951) = 4718592 * k + 2825854 := by
    unfold C
    simp [show (1572864 * k + 941951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2825854) = 2359296 * k + 1412927 := by
    unfold C
    simp [show (4718592 * k + 2825854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1412927) = 7077888 * k + 4238782 := by
    unfold C
    simp [show (2359296 * k + 1412927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4238782) = 3538944 * k + 2119391 := by
    unfold C
    simp [show (7077888 * k + 4238782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2119391) = 10616832 * k + 6358174 := by
    unfold C
    simp [show (3538944 * k + 2119391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6358174) = 5308416 * k + 3179087 := by
    unfold C
    simp [show (10616832 * k + 6358174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3179087) = 15925248 * k + 9537262 := by
    unfold C
    simp [show (5308416 * k + 3179087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9537262) = 7962624 * k + 4768631 := by
    unfold C
    simp [show (15925248 * k + 9537262) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4768631) = 23887872 * k + 14305894 := by
    unfold C
    simp [show (7962624 * k + 4768631) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14305894) = 11943936 * k + 7152947 := by
    unfold C
    simp [show (23887872 * k + 14305894) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7152947) = 35831808 * k + 21458842 := by
    unfold C
    simp [show (11943936 * k + 7152947) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21458842) = 17915904 * k + 10729421 := by
    unfold C
    simp [show (35831808 * k + 21458842) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10729421) = 53747712 * k + 32188264 := by
    unfold C
    simp [show (17915904 * k + 10729421) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 32188264) = 26873856 * k + 16094132 := by
    unfold C
    simp [show (53747712 * k + 32188264) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 16094132) = 13436928 * k + 8047066 := by
    unfold C
    simp [show (26873856 * k + 16094132) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8047066) = 6718464 * k + 4023533 := by
    unfold C
    simp [show (13436928 * k + 8047066) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4023533) = 20155392 * k + 12070600 := by
    unfold C
    simp [show (6718464 * k + 4023533) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12070600) = 10077696 * k + 6035300 := by
    unfold C
    simp [show (20155392 * k + 12070600) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6035300) = 5038848 * k + 3017650 := by
    unfold C
    simp [show (10077696 * k + 6035300) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3017650) = 2519424 * k + 1508825 := by
    unfold C
    simp [show (5038848 * k + 3017650) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1508825) = 7558272 * k + 4526476 := by
    unfold C
    simp [show (2519424 * k + 1508825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4526476) = 3779136 * k + 2263238 := by
    unfold C
    simp [show (7558272 * k + 4526476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2263238) = 1889568 * k + 1131619 := by
    unfold C
    simp [show (3779136 * k + 2263238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1131619) = 5668704 * k + 3394858 := by
    unfold C
    simp [show (1889568 * k + 1131619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3394858) = 2834352 * k + 1697429 := by
    unfold C
    simp [show (5668704 * k + 3394858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1697429) = 8503056 * k + 5092288 := by
    unfold C
    simp [show (2834352 * k + 1697429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5092288) = 4251528 * k + 2546144 := by
    unfold C
    simp [show (8503056 * k + 5092288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2546144) = 2125764 * k + 1273072 := by
    unfold C
    simp [show (4251528 * k + 2546144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1273072) = 1062882 * k + 636536 := by
    unfold C
    simp [show (2125764 * k + 1273072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 636536) = 531441 * k + 318268 := by
    unfold C
    simp [show (1062882 * k + 636536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 627967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 627967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_628827 : ∀ k : Nat,
    iterate (1048576 * k + 628827) 32 = 531441 * k + 318704 ∧
      531441 * k + 318704 < 1048576 * k + 628827 := by
  intro k
  have h1 : C (1048576 * k + 628827) = 3145728 * k + 1886482 := by
    unfold C
    simp [show (1048576 * k + 628827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1886482) = 1572864 * k + 943241 := by
    unfold C
    simp [show (3145728 * k + 1886482) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 943241) = 4718592 * k + 2829724 := by
    unfold C
    simp [show (1572864 * k + 943241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2829724) = 2359296 * k + 1414862 := by
    unfold C
    simp [show (4718592 * k + 2829724) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1414862) = 1179648 * k + 707431 := by
    unfold C
    simp [show (2359296 * k + 1414862) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 707431) = 3538944 * k + 2122294 := by
    unfold C
    simp [show (1179648 * k + 707431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2122294) = 1769472 * k + 1061147 := by
    unfold C
    simp [show (3538944 * k + 2122294) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1061147) = 5308416 * k + 3183442 := by
    unfold C
    simp [show (1769472 * k + 1061147) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3183442) = 2654208 * k + 1591721 := by
    unfold C
    simp [show (5308416 * k + 3183442) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1591721) = 7962624 * k + 4775164 := by
    unfold C
    simp [show (2654208 * k + 1591721) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4775164) = 3981312 * k + 2387582 := by
    unfold C
    simp [show (7962624 * k + 4775164) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2387582) = 1990656 * k + 1193791 := by
    unfold C
    simp [show (3981312 * k + 2387582) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1193791) = 5971968 * k + 3581374 := by
    unfold C
    simp [show (1990656 * k + 1193791) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3581374) = 2985984 * k + 1790687 := by
    unfold C
    simp [show (5971968 * k + 3581374) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1790687) = 8957952 * k + 5372062 := by
    unfold C
    simp [show (2985984 * k + 1790687) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5372062) = 4478976 * k + 2686031 := by
    unfold C
    simp [show (8957952 * k + 5372062) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2686031) = 13436928 * k + 8058094 := by
    unfold C
    simp [show (4478976 * k + 2686031) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8058094) = 6718464 * k + 4029047 := by
    unfold C
    simp [show (13436928 * k + 8058094) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4029047) = 20155392 * k + 12087142 := by
    unfold C
    simp [show (6718464 * k + 4029047) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12087142) = 10077696 * k + 6043571 := by
    unfold C
    simp [show (20155392 * k + 12087142) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6043571) = 30233088 * k + 18130714 := by
    unfold C
    simp [show (10077696 * k + 6043571) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18130714) = 15116544 * k + 9065357 := by
    unfold C
    simp [show (30233088 * k + 18130714) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9065357) = 45349632 * k + 27196072 := by
    unfold C
    simp [show (15116544 * k + 9065357) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27196072) = 22674816 * k + 13598036 := by
    unfold C
    simp [show (45349632 * k + 27196072) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13598036) = 11337408 * k + 6799018 := by
    unfold C
    simp [show (22674816 * k + 13598036) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6799018) = 5668704 * k + 3399509 := by
    unfold C
    simp [show (11337408 * k + 6799018) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3399509) = 17006112 * k + 10198528 := by
    unfold C
    simp [show (5668704 * k + 3399509) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10198528) = 8503056 * k + 5099264 := by
    unfold C
    simp [show (17006112 * k + 10198528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5099264) = 4251528 * k + 2549632 := by
    unfold C
    simp [show (8503056 * k + 5099264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2549632) = 2125764 * k + 1274816 := by
    unfold C
    simp [show (4251528 * k + 2549632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1274816) = 1062882 * k + 637408 := by
    unfold C
    simp [show (2125764 * k + 1274816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 637408) = 531441 * k + 318704 := by
    unfold C
    simp [show (1062882 * k + 637408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 628827) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 628827)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_630523 : ∀ k : Nat,
    iterate (1048576 * k + 630523) 32 = 531441 * k + 319564 ∧
      531441 * k + 319564 < 1048576 * k + 630523 := by
  intro k
  have h1 : C (1048576 * k + 630523) = 3145728 * k + 1891570 := by
    unfold C
    simp [show (1048576 * k + 630523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1891570) = 1572864 * k + 945785 := by
    unfold C
    simp [show (3145728 * k + 1891570) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 945785) = 4718592 * k + 2837356 := by
    unfold C
    simp [show (1572864 * k + 945785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2837356) = 2359296 * k + 1418678 := by
    unfold C
    simp [show (4718592 * k + 2837356) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1418678) = 1179648 * k + 709339 := by
    unfold C
    simp [show (2359296 * k + 1418678) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 709339) = 3538944 * k + 2128018 := by
    unfold C
    simp [show (1179648 * k + 709339) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2128018) = 1769472 * k + 1064009 := by
    unfold C
    simp [show (3538944 * k + 2128018) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1064009) = 5308416 * k + 3192028 := by
    unfold C
    simp [show (1769472 * k + 1064009) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3192028) = 2654208 * k + 1596014 := by
    unfold C
    simp [show (5308416 * k + 3192028) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1596014) = 1327104 * k + 798007 := by
    unfold C
    simp [show (2654208 * k + 1596014) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 798007) = 3981312 * k + 2394022 := by
    unfold C
    simp [show (1327104 * k + 798007) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2394022) = 1990656 * k + 1197011 := by
    unfold C
    simp [show (3981312 * k + 2394022) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1197011) = 5971968 * k + 3591034 := by
    unfold C
    simp [show (1990656 * k + 1197011) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3591034) = 2985984 * k + 1795517 := by
    unfold C
    simp [show (5971968 * k + 3591034) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1795517) = 8957952 * k + 5386552 := by
    unfold C
    simp [show (2985984 * k + 1795517) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5386552) = 4478976 * k + 2693276 := by
    unfold C
    simp [show (8957952 * k + 5386552) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2693276) = 2239488 * k + 1346638 := by
    unfold C
    simp [show (4478976 * k + 2693276) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1346638) = 1119744 * k + 673319 := by
    unfold C
    simp [show (2239488 * k + 1346638) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 673319) = 3359232 * k + 2019958 := by
    unfold C
    simp [show (1119744 * k + 673319) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2019958) = 1679616 * k + 1009979 := by
    unfold C
    simp [show (3359232 * k + 2019958) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1009979) = 5038848 * k + 3029938 := by
    unfold C
    simp [show (1679616 * k + 1009979) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3029938) = 2519424 * k + 1514969 := by
    unfold C
    simp [show (5038848 * k + 3029938) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1514969) = 7558272 * k + 4544908 := by
    unfold C
    simp [show (2519424 * k + 1514969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4544908) = 3779136 * k + 2272454 := by
    unfold C
    simp [show (7558272 * k + 4544908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2272454) = 1889568 * k + 1136227 := by
    unfold C
    simp [show (3779136 * k + 2272454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1136227) = 5668704 * k + 3408682 := by
    unfold C
    simp [show (1889568 * k + 1136227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3408682) = 2834352 * k + 1704341 := by
    unfold C
    simp [show (5668704 * k + 3408682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1704341) = 8503056 * k + 5113024 := by
    unfold C
    simp [show (2834352 * k + 1704341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5113024) = 4251528 * k + 2556512 := by
    unfold C
    simp [show (8503056 * k + 5113024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2556512) = 2125764 * k + 1278256 := by
    unfold C
    simp [show (4251528 * k + 2556512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1278256) = 1062882 * k + 639128 := by
    unfold C
    simp [show (2125764 * k + 1278256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 639128) = 531441 * k + 319564 := by
    unfold C
    simp [show (1062882 * k + 639128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 630523) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 630523)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_630875 : ∀ k : Nat,
    iterate (1048576 * k + 630875) 32 = 531441 * k + 319742 ∧
      531441 * k + 319742 < 1048576 * k + 630875 := by
  intro k
  have h1 : C (1048576 * k + 630875) = 3145728 * k + 1892626 := by
    unfold C
    simp [show (1048576 * k + 630875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1892626) = 1572864 * k + 946313 := by
    unfold C
    simp [show (3145728 * k + 1892626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 946313) = 4718592 * k + 2838940 := by
    unfold C
    simp [show (1572864 * k + 946313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2838940) = 2359296 * k + 1419470 := by
    unfold C
    simp [show (4718592 * k + 2838940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1419470) = 1179648 * k + 709735 := by
    unfold C
    simp [show (2359296 * k + 1419470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 709735) = 3538944 * k + 2129206 := by
    unfold C
    simp [show (1179648 * k + 709735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2129206) = 1769472 * k + 1064603 := by
    unfold C
    simp [show (3538944 * k + 2129206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1064603) = 5308416 * k + 3193810 := by
    unfold C
    simp [show (1769472 * k + 1064603) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3193810) = 2654208 * k + 1596905 := by
    unfold C
    simp [show (5308416 * k + 3193810) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1596905) = 7962624 * k + 4790716 := by
    unfold C
    simp [show (2654208 * k + 1596905) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4790716) = 3981312 * k + 2395358 := by
    unfold C
    simp [show (7962624 * k + 4790716) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2395358) = 1990656 * k + 1197679 := by
    unfold C
    simp [show (3981312 * k + 2395358) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1197679) = 5971968 * k + 3593038 := by
    unfold C
    simp [show (1990656 * k + 1197679) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3593038) = 2985984 * k + 1796519 := by
    unfold C
    simp [show (5971968 * k + 3593038) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1796519) = 8957952 * k + 5389558 := by
    unfold C
    simp [show (2985984 * k + 1796519) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5389558) = 4478976 * k + 2694779 := by
    unfold C
    simp [show (8957952 * k + 5389558) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2694779) = 13436928 * k + 8084338 := by
    unfold C
    simp [show (4478976 * k + 2694779) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8084338) = 6718464 * k + 4042169 := by
    unfold C
    simp [show (13436928 * k + 8084338) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4042169) = 20155392 * k + 12126508 := by
    unfold C
    simp [show (6718464 * k + 4042169) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12126508) = 10077696 * k + 6063254 := by
    unfold C
    simp [show (20155392 * k + 12126508) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6063254) = 5038848 * k + 3031627 := by
    unfold C
    simp [show (10077696 * k + 6063254) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3031627) = 15116544 * k + 9094882 := by
    unfold C
    simp [show (5038848 * k + 3031627) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9094882) = 7558272 * k + 4547441 := by
    unfold C
    simp [show (15116544 * k + 9094882) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4547441) = 22674816 * k + 13642324 := by
    unfold C
    simp [show (7558272 * k + 4547441) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13642324) = 11337408 * k + 6821162 := by
    unfold C
    simp [show (22674816 * k + 13642324) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6821162) = 5668704 * k + 3410581 := by
    unfold C
    simp [show (11337408 * k + 6821162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3410581) = 17006112 * k + 10231744 := by
    unfold C
    simp [show (5668704 * k + 3410581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10231744) = 8503056 * k + 5115872 := by
    unfold C
    simp [show (17006112 * k + 10231744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5115872) = 4251528 * k + 2557936 := by
    unfold C
    simp [show (8503056 * k + 5115872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2557936) = 2125764 * k + 1278968 := by
    unfold C
    simp [show (4251528 * k + 2557936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1278968) = 1062882 * k + 639484 := by
    unfold C
    simp [show (2125764 * k + 1278968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 639484) = 531441 * k + 319742 := by
    unfold C
    simp [show (1062882 * k + 639484) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 630875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 630875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard081
