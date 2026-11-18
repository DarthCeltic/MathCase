import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard033

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_239311 : ∀ k : Nat,
    iterate (1048576 * k + 239311) 32 = 531441 * k + 121289 ∧
      531441 * k + 121289 < 1048576 * k + 239311 := by
  intro k
  have h1 : C (1048576 * k + 239311) = 3145728 * k + 717934 := by
    unfold C
    simp [show (1048576 * k + 239311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 717934) = 1572864 * k + 358967 := by
    unfold C
    simp [show (3145728 * k + 717934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 358967) = 4718592 * k + 1076902 := by
    unfold C
    simp [show (1572864 * k + 358967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1076902) = 2359296 * k + 538451 := by
    unfold C
    simp [show (4718592 * k + 1076902) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 538451) = 7077888 * k + 1615354 := by
    unfold C
    simp [show (2359296 * k + 538451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1615354) = 3538944 * k + 807677 := by
    unfold C
    simp [show (7077888 * k + 1615354) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 807677) = 10616832 * k + 2423032 := by
    unfold C
    simp [show (3538944 * k + 807677) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2423032) = 5308416 * k + 1211516 := by
    unfold C
    simp [show (10616832 * k + 2423032) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1211516) = 2654208 * k + 605758 := by
    unfold C
    simp [show (5308416 * k + 1211516) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 605758) = 1327104 * k + 302879 := by
    unfold C
    simp [show (2654208 * k + 605758) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 302879) = 3981312 * k + 908638 := by
    unfold C
    simp [show (1327104 * k + 302879) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 908638) = 1990656 * k + 454319 := by
    unfold C
    simp [show (3981312 * k + 908638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 454319) = 5971968 * k + 1362958 := by
    unfold C
    simp [show (1990656 * k + 454319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1362958) = 2985984 * k + 681479 := by
    unfold C
    simp [show (5971968 * k + 1362958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 681479) = 8957952 * k + 2044438 := by
    unfold C
    simp [show (2985984 * k + 681479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2044438) = 4478976 * k + 1022219 := by
    unfold C
    simp [show (8957952 * k + 2044438) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1022219) = 13436928 * k + 3066658 := by
    unfold C
    simp [show (4478976 * k + 1022219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3066658) = 6718464 * k + 1533329 := by
    unfold C
    simp [show (13436928 * k + 3066658) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1533329) = 20155392 * k + 4599988 := by
    unfold C
    simp [show (6718464 * k + 1533329) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4599988) = 10077696 * k + 2299994 := by
    unfold C
    simp [show (20155392 * k + 4599988) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2299994) = 5038848 * k + 1149997 := by
    unfold C
    simp [show (10077696 * k + 2299994) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1149997) = 15116544 * k + 3449992 := by
    unfold C
    simp [show (5038848 * k + 1149997) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3449992) = 7558272 * k + 1724996 := by
    unfold C
    simp [show (15116544 * k + 3449992) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1724996) = 3779136 * k + 862498 := by
    unfold C
    simp [show (7558272 * k + 1724996) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 862498) = 1889568 * k + 431249 := by
    unfold C
    simp [show (3779136 * k + 862498) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 431249) = 5668704 * k + 1293748 := by
    unfold C
    simp [show (1889568 * k + 431249) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1293748) = 2834352 * k + 646874 := by
    unfold C
    simp [show (5668704 * k + 1293748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 646874) = 1417176 * k + 323437 := by
    unfold C
    simp [show (2834352 * k + 646874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 323437) = 4251528 * k + 970312 := by
    unfold C
    simp [show (1417176 * k + 323437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 970312) = 2125764 * k + 485156 := by
    unfold C
    simp [show (4251528 * k + 970312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 485156) = 1062882 * k + 242578 := by
    unfold C
    simp [show (2125764 * k + 485156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 242578) = 531441 * k + 121289 := by
    unfold C
    simp [show (1062882 * k + 242578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 239311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 239311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_239359 : ∀ k : Nat,
    iterate (1048576 * k + 239359) 32 = 531441 * k + 121313 ∧
      531441 * k + 121313 < 1048576 * k + 239359 := by
  intro k
  have h1 : C (1048576 * k + 239359) = 3145728 * k + 718078 := by
    unfold C
    simp [show (1048576 * k + 239359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 718078) = 1572864 * k + 359039 := by
    unfold C
    simp [show (3145728 * k + 718078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 359039) = 4718592 * k + 1077118 := by
    unfold C
    simp [show (1572864 * k + 359039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1077118) = 2359296 * k + 538559 := by
    unfold C
    simp [show (4718592 * k + 1077118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 538559) = 7077888 * k + 1615678 := by
    unfold C
    simp [show (2359296 * k + 538559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1615678) = 3538944 * k + 807839 := by
    unfold C
    simp [show (7077888 * k + 1615678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 807839) = 10616832 * k + 2423518 := by
    unfold C
    simp [show (3538944 * k + 807839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2423518) = 5308416 * k + 1211759 := by
    unfold C
    simp [show (10616832 * k + 2423518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1211759) = 15925248 * k + 3635278 := by
    unfold C
    simp [show (5308416 * k + 1211759) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3635278) = 7962624 * k + 1817639 := by
    unfold C
    simp [show (15925248 * k + 3635278) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1817639) = 23887872 * k + 5452918 := by
    unfold C
    simp [show (7962624 * k + 1817639) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5452918) = 11943936 * k + 2726459 := by
    unfold C
    simp [show (23887872 * k + 5452918) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2726459) = 35831808 * k + 8179378 := by
    unfold C
    simp [show (11943936 * k + 2726459) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8179378) = 17915904 * k + 4089689 := by
    unfold C
    simp [show (35831808 * k + 8179378) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4089689) = 53747712 * k + 12269068 := by
    unfold C
    simp [show (17915904 * k + 4089689) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 12269068) = 26873856 * k + 6134534 := by
    unfold C
    simp [show (53747712 * k + 12269068) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6134534) = 13436928 * k + 3067267 := by
    unfold C
    simp [show (26873856 * k + 6134534) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3067267) = 40310784 * k + 9201802 := by
    unfold C
    simp [show (13436928 * k + 3067267) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9201802) = 20155392 * k + 4600901 := by
    unfold C
    simp [show (40310784 * k + 9201802) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4600901) = 60466176 * k + 13802704 := by
    unfold C
    simp [show (20155392 * k + 4600901) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 13802704) = 30233088 * k + 6901352 := by
    unfold C
    simp [show (60466176 * k + 13802704) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6901352) = 15116544 * k + 3450676 := by
    unfold C
    simp [show (30233088 * k + 6901352) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3450676) = 7558272 * k + 1725338 := by
    unfold C
    simp [show (15116544 * k + 3450676) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1725338) = 3779136 * k + 862669 := by
    unfold C
    simp [show (7558272 * k + 1725338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 862669) = 11337408 * k + 2588008 := by
    unfold C
    simp [show (3779136 * k + 862669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2588008) = 5668704 * k + 1294004 := by
    unfold C
    simp [show (11337408 * k + 2588008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1294004) = 2834352 * k + 647002 := by
    unfold C
    simp [show (5668704 * k + 1294004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 647002) = 1417176 * k + 323501 := by
    unfold C
    simp [show (2834352 * k + 647002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 323501) = 4251528 * k + 970504 := by
    unfold C
    simp [show (1417176 * k + 323501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 970504) = 2125764 * k + 485252 := by
    unfold C
    simp [show (4251528 * k + 970504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 485252) = 1062882 * k + 242626 := by
    unfold C
    simp [show (2125764 * k + 485252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 242626) = 531441 * k + 121313 := by
    unfold C
    simp [show (1062882 * k + 242626) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 239359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 239359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_239471 : ∀ k : Nat,
    iterate (1048576 * k + 239471) 32 = 531441 * k + 121370 ∧
      531441 * k + 121370 < 1048576 * k + 239471 := by
  intro k
  have h1 : C (1048576 * k + 239471) = 3145728 * k + 718414 := by
    unfold C
    simp [show (1048576 * k + 239471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 718414) = 1572864 * k + 359207 := by
    unfold C
    simp [show (3145728 * k + 718414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 359207) = 4718592 * k + 1077622 := by
    unfold C
    simp [show (1572864 * k + 359207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1077622) = 2359296 * k + 538811 := by
    unfold C
    simp [show (4718592 * k + 1077622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 538811) = 7077888 * k + 1616434 := by
    unfold C
    simp [show (2359296 * k + 538811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1616434) = 3538944 * k + 808217 := by
    unfold C
    simp [show (7077888 * k + 1616434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 808217) = 10616832 * k + 2424652 := by
    unfold C
    simp [show (3538944 * k + 808217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2424652) = 5308416 * k + 1212326 := by
    unfold C
    simp [show (10616832 * k + 2424652) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1212326) = 2654208 * k + 606163 := by
    unfold C
    simp [show (5308416 * k + 1212326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 606163) = 7962624 * k + 1818490 := by
    unfold C
    simp [show (2654208 * k + 606163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1818490) = 3981312 * k + 909245 := by
    unfold C
    simp [show (7962624 * k + 1818490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 909245) = 11943936 * k + 2727736 := by
    unfold C
    simp [show (3981312 * k + 909245) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2727736) = 5971968 * k + 1363868 := by
    unfold C
    simp [show (11943936 * k + 2727736) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1363868) = 2985984 * k + 681934 := by
    unfold C
    simp [show (5971968 * k + 1363868) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 681934) = 1492992 * k + 340967 := by
    unfold C
    simp [show (2985984 * k + 681934) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 340967) = 4478976 * k + 1022902 := by
    unfold C
    simp [show (1492992 * k + 340967) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1022902) = 2239488 * k + 511451 := by
    unfold C
    simp [show (4478976 * k + 1022902) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 511451) = 6718464 * k + 1534354 := by
    unfold C
    simp [show (2239488 * k + 511451) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1534354) = 3359232 * k + 767177 := by
    unfold C
    simp [show (6718464 * k + 1534354) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 767177) = 10077696 * k + 2301532 := by
    unfold C
    simp [show (3359232 * k + 767177) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2301532) = 5038848 * k + 1150766 := by
    unfold C
    simp [show (10077696 * k + 2301532) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1150766) = 2519424 * k + 575383 := by
    unfold C
    simp [show (5038848 * k + 1150766) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 575383) = 7558272 * k + 1726150 := by
    unfold C
    simp [show (2519424 * k + 575383) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1726150) = 3779136 * k + 863075 := by
    unfold C
    simp [show (7558272 * k + 1726150) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 863075) = 11337408 * k + 2589226 := by
    unfold C
    simp [show (3779136 * k + 863075) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2589226) = 5668704 * k + 1294613 := by
    unfold C
    simp [show (11337408 * k + 2589226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1294613) = 17006112 * k + 3883840 := by
    unfold C
    simp [show (5668704 * k + 1294613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3883840) = 8503056 * k + 1941920 := by
    unfold C
    simp [show (17006112 * k + 3883840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1941920) = 4251528 * k + 970960 := by
    unfold C
    simp [show (8503056 * k + 1941920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 970960) = 2125764 * k + 485480 := by
    unfold C
    simp [show (4251528 * k + 970960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 485480) = 1062882 * k + 242740 := by
    unfold C
    simp [show (2125764 * k + 485480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 242740) = 531441 * k + 121370 := by
    unfold C
    simp [show (1062882 * k + 242740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 239471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 239471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_240335 : ∀ k : Nat,
    iterate (1048576 * k + 240335) 32 = 531441 * k + 121808 ∧
      531441 * k + 121808 < 1048576 * k + 240335 := by
  intro k
  have h1 : C (1048576 * k + 240335) = 3145728 * k + 721006 := by
    unfold C
    simp [show (1048576 * k + 240335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 721006) = 1572864 * k + 360503 := by
    unfold C
    simp [show (3145728 * k + 721006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 360503) = 4718592 * k + 1081510 := by
    unfold C
    simp [show (1572864 * k + 360503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1081510) = 2359296 * k + 540755 := by
    unfold C
    simp [show (4718592 * k + 1081510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 540755) = 7077888 * k + 1622266 := by
    unfold C
    simp [show (2359296 * k + 540755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1622266) = 3538944 * k + 811133 := by
    unfold C
    simp [show (7077888 * k + 1622266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 811133) = 10616832 * k + 2433400 := by
    unfold C
    simp [show (3538944 * k + 811133) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2433400) = 5308416 * k + 1216700 := by
    unfold C
    simp [show (10616832 * k + 2433400) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1216700) = 2654208 * k + 608350 := by
    unfold C
    simp [show (5308416 * k + 1216700) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 608350) = 1327104 * k + 304175 := by
    unfold C
    simp [show (2654208 * k + 608350) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 304175) = 3981312 * k + 912526 := by
    unfold C
    simp [show (1327104 * k + 304175) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 912526) = 1990656 * k + 456263 := by
    unfold C
    simp [show (3981312 * k + 912526) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 456263) = 5971968 * k + 1368790 := by
    unfold C
    simp [show (1990656 * k + 456263) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1368790) = 2985984 * k + 684395 := by
    unfold C
    simp [show (5971968 * k + 1368790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 684395) = 8957952 * k + 2053186 := by
    unfold C
    simp [show (2985984 * k + 684395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2053186) = 4478976 * k + 1026593 := by
    unfold C
    simp [show (8957952 * k + 2053186) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1026593) = 13436928 * k + 3079780 := by
    unfold C
    simp [show (4478976 * k + 1026593) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3079780) = 6718464 * k + 1539890 := by
    unfold C
    simp [show (13436928 * k + 3079780) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1539890) = 3359232 * k + 769945 := by
    unfold C
    simp [show (6718464 * k + 1539890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 769945) = 10077696 * k + 2309836 := by
    unfold C
    simp [show (3359232 * k + 769945) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2309836) = 5038848 * k + 1154918 := by
    unfold C
    simp [show (10077696 * k + 2309836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1154918) = 2519424 * k + 577459 := by
    unfold C
    simp [show (5038848 * k + 1154918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 577459) = 7558272 * k + 1732378 := by
    unfold C
    simp [show (2519424 * k + 577459) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1732378) = 3779136 * k + 866189 := by
    unfold C
    simp [show (7558272 * k + 1732378) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 866189) = 11337408 * k + 2598568 := by
    unfold C
    simp [show (3779136 * k + 866189) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2598568) = 5668704 * k + 1299284 := by
    unfold C
    simp [show (11337408 * k + 2598568) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1299284) = 2834352 * k + 649642 := by
    unfold C
    simp [show (5668704 * k + 1299284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 649642) = 1417176 * k + 324821 := by
    unfold C
    simp [show (2834352 * k + 649642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 324821) = 4251528 * k + 974464 := by
    unfold C
    simp [show (1417176 * k + 324821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 974464) = 2125764 * k + 487232 := by
    unfold C
    simp [show (4251528 * k + 974464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 487232) = 1062882 * k + 243616 := by
    unfold C
    simp [show (2125764 * k + 487232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 243616) = 531441 * k + 121808 := by
    unfold C
    simp [show (1062882 * k + 243616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 240335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 240335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_240359 : ∀ k : Nat,
    iterate (1048576 * k + 240359) 32 = 531441 * k + 121820 ∧
      531441 * k + 121820 < 1048576 * k + 240359 := by
  intro k
  have h1 : C (1048576 * k + 240359) = 3145728 * k + 721078 := by
    unfold C
    simp [show (1048576 * k + 240359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 721078) = 1572864 * k + 360539 := by
    unfold C
    simp [show (3145728 * k + 721078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 360539) = 4718592 * k + 1081618 := by
    unfold C
    simp [show (1572864 * k + 360539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1081618) = 2359296 * k + 540809 := by
    unfold C
    simp [show (4718592 * k + 1081618) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 540809) = 7077888 * k + 1622428 := by
    unfold C
    simp [show (2359296 * k + 540809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1622428) = 3538944 * k + 811214 := by
    unfold C
    simp [show (7077888 * k + 1622428) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 811214) = 1769472 * k + 405607 := by
    unfold C
    simp [show (3538944 * k + 811214) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 405607) = 5308416 * k + 1216822 := by
    unfold C
    simp [show (1769472 * k + 405607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1216822) = 2654208 * k + 608411 := by
    unfold C
    simp [show (5308416 * k + 1216822) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 608411) = 7962624 * k + 1825234 := by
    unfold C
    simp [show (2654208 * k + 608411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1825234) = 3981312 * k + 912617 := by
    unfold C
    simp [show (7962624 * k + 1825234) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 912617) = 11943936 * k + 2737852 := by
    unfold C
    simp [show (3981312 * k + 912617) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2737852) = 5971968 * k + 1368926 := by
    unfold C
    simp [show (11943936 * k + 2737852) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1368926) = 2985984 * k + 684463 := by
    unfold C
    simp [show (5971968 * k + 1368926) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 684463) = 8957952 * k + 2053390 := by
    unfold C
    simp [show (2985984 * k + 684463) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2053390) = 4478976 * k + 1026695 := by
    unfold C
    simp [show (8957952 * k + 2053390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1026695) = 13436928 * k + 3080086 := by
    unfold C
    simp [show (4478976 * k + 1026695) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3080086) = 6718464 * k + 1540043 := by
    unfold C
    simp [show (13436928 * k + 3080086) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1540043) = 20155392 * k + 4620130 := by
    unfold C
    simp [show (6718464 * k + 1540043) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4620130) = 10077696 * k + 2310065 := by
    unfold C
    simp [show (20155392 * k + 4620130) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2310065) = 30233088 * k + 6930196 := by
    unfold C
    simp [show (10077696 * k + 2310065) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6930196) = 15116544 * k + 3465098 := by
    unfold C
    simp [show (30233088 * k + 6930196) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3465098) = 7558272 * k + 1732549 := by
    unfold C
    simp [show (15116544 * k + 3465098) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1732549) = 22674816 * k + 5197648 := by
    unfold C
    simp [show (7558272 * k + 1732549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5197648) = 11337408 * k + 2598824 := by
    unfold C
    simp [show (22674816 * k + 5197648) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2598824) = 5668704 * k + 1299412 := by
    unfold C
    simp [show (11337408 * k + 2598824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1299412) = 2834352 * k + 649706 := by
    unfold C
    simp [show (5668704 * k + 1299412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 649706) = 1417176 * k + 324853 := by
    unfold C
    simp [show (2834352 * k + 649706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 324853) = 4251528 * k + 974560 := by
    unfold C
    simp [show (1417176 * k + 324853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 974560) = 2125764 * k + 487280 := by
    unfold C
    simp [show (4251528 * k + 974560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 487280) = 1062882 * k + 243640 := by
    unfold C
    simp [show (2125764 * k + 487280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 243640) = 531441 * k + 121820 := by
    unfold C
    simp [show (1062882 * k + 243640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 240359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 240359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_240671 : ∀ k : Nat,
    iterate (1048576 * k + 240671) 32 = 531441 * k + 121978 ∧
      531441 * k + 121978 < 1048576 * k + 240671 := by
  intro k
  have h1 : C (1048576 * k + 240671) = 3145728 * k + 722014 := by
    unfold C
    simp [show (1048576 * k + 240671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 722014) = 1572864 * k + 361007 := by
    unfold C
    simp [show (3145728 * k + 722014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 361007) = 4718592 * k + 1083022 := by
    unfold C
    simp [show (1572864 * k + 361007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1083022) = 2359296 * k + 541511 := by
    unfold C
    simp [show (4718592 * k + 1083022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 541511) = 7077888 * k + 1624534 := by
    unfold C
    simp [show (2359296 * k + 541511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1624534) = 3538944 * k + 812267 := by
    unfold C
    simp [show (7077888 * k + 1624534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 812267) = 10616832 * k + 2436802 := by
    unfold C
    simp [show (3538944 * k + 812267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2436802) = 5308416 * k + 1218401 := by
    unfold C
    simp [show (10616832 * k + 2436802) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1218401) = 15925248 * k + 3655204 := by
    unfold C
    simp [show (5308416 * k + 1218401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3655204) = 7962624 * k + 1827602 := by
    unfold C
    simp [show (15925248 * k + 3655204) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1827602) = 3981312 * k + 913801 := by
    unfold C
    simp [show (7962624 * k + 1827602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 913801) = 11943936 * k + 2741404 := by
    unfold C
    simp [show (3981312 * k + 913801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2741404) = 5971968 * k + 1370702 := by
    unfold C
    simp [show (11943936 * k + 2741404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1370702) = 2985984 * k + 685351 := by
    unfold C
    simp [show (5971968 * k + 1370702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 685351) = 8957952 * k + 2056054 := by
    unfold C
    simp [show (2985984 * k + 685351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2056054) = 4478976 * k + 1028027 := by
    unfold C
    simp [show (8957952 * k + 2056054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1028027) = 13436928 * k + 3084082 := by
    unfold C
    simp [show (4478976 * k + 1028027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3084082) = 6718464 * k + 1542041 := by
    unfold C
    simp [show (13436928 * k + 3084082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1542041) = 20155392 * k + 4626124 := by
    unfold C
    simp [show (6718464 * k + 1542041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4626124) = 10077696 * k + 2313062 := by
    unfold C
    simp [show (20155392 * k + 4626124) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2313062) = 5038848 * k + 1156531 := by
    unfold C
    simp [show (10077696 * k + 2313062) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1156531) = 15116544 * k + 3469594 := by
    unfold C
    simp [show (5038848 * k + 1156531) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3469594) = 7558272 * k + 1734797 := by
    unfold C
    simp [show (15116544 * k + 3469594) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1734797) = 22674816 * k + 5204392 := by
    unfold C
    simp [show (7558272 * k + 1734797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5204392) = 11337408 * k + 2602196 := by
    unfold C
    simp [show (22674816 * k + 5204392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2602196) = 5668704 * k + 1301098 := by
    unfold C
    simp [show (11337408 * k + 2602196) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1301098) = 2834352 * k + 650549 := by
    unfold C
    simp [show (5668704 * k + 1301098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 650549) = 8503056 * k + 1951648 := by
    unfold C
    simp [show (2834352 * k + 650549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1951648) = 4251528 * k + 975824 := by
    unfold C
    simp [show (8503056 * k + 1951648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 975824) = 2125764 * k + 487912 := by
    unfold C
    simp [show (4251528 * k + 975824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 487912) = 1062882 * k + 243956 := by
    unfold C
    simp [show (2125764 * k + 487912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 243956) = 531441 * k + 121978 := by
    unfold C
    simp [show (1062882 * k + 243956) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 240671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 240671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_241499 : ∀ k : Nat,
    iterate (1048576 * k + 241499) 32 = 531441 * k + 122398 ∧
      531441 * k + 122398 < 1048576 * k + 241499 := by
  intro k
  have h1 : C (1048576 * k + 241499) = 3145728 * k + 724498 := by
    unfold C
    simp [show (1048576 * k + 241499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 724498) = 1572864 * k + 362249 := by
    unfold C
    simp [show (3145728 * k + 724498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 362249) = 4718592 * k + 1086748 := by
    unfold C
    simp [show (1572864 * k + 362249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1086748) = 2359296 * k + 543374 := by
    unfold C
    simp [show (4718592 * k + 1086748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 543374) = 1179648 * k + 271687 := by
    unfold C
    simp [show (2359296 * k + 543374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 271687) = 3538944 * k + 815062 := by
    unfold C
    simp [show (1179648 * k + 271687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 815062) = 1769472 * k + 407531 := by
    unfold C
    simp [show (3538944 * k + 815062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 407531) = 5308416 * k + 1222594 := by
    unfold C
    simp [show (1769472 * k + 407531) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1222594) = 2654208 * k + 611297 := by
    unfold C
    simp [show (5308416 * k + 1222594) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 611297) = 7962624 * k + 1833892 := by
    unfold C
    simp [show (2654208 * k + 611297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1833892) = 3981312 * k + 916946 := by
    unfold C
    simp [show (7962624 * k + 1833892) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 916946) = 1990656 * k + 458473 := by
    unfold C
    simp [show (3981312 * k + 916946) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 458473) = 5971968 * k + 1375420 := by
    unfold C
    simp [show (1990656 * k + 458473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1375420) = 2985984 * k + 687710 := by
    unfold C
    simp [show (5971968 * k + 1375420) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 687710) = 1492992 * k + 343855 := by
    unfold C
    simp [show (2985984 * k + 687710) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 343855) = 4478976 * k + 1031566 := by
    unfold C
    simp [show (1492992 * k + 343855) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1031566) = 2239488 * k + 515783 := by
    unfold C
    simp [show (4478976 * k + 1031566) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 515783) = 6718464 * k + 1547350 := by
    unfold C
    simp [show (2239488 * k + 515783) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1547350) = 3359232 * k + 773675 := by
    unfold C
    simp [show (6718464 * k + 1547350) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 773675) = 10077696 * k + 2321026 := by
    unfold C
    simp [show (3359232 * k + 773675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2321026) = 5038848 * k + 1160513 := by
    unfold C
    simp [show (10077696 * k + 2321026) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1160513) = 15116544 * k + 3481540 := by
    unfold C
    simp [show (5038848 * k + 1160513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3481540) = 7558272 * k + 1740770 := by
    unfold C
    simp [show (15116544 * k + 3481540) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1740770) = 3779136 * k + 870385 := by
    unfold C
    simp [show (7558272 * k + 1740770) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 870385) = 11337408 * k + 2611156 := by
    unfold C
    simp [show (3779136 * k + 870385) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2611156) = 5668704 * k + 1305578 := by
    unfold C
    simp [show (11337408 * k + 2611156) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1305578) = 2834352 * k + 652789 := by
    unfold C
    simp [show (5668704 * k + 1305578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 652789) = 8503056 * k + 1958368 := by
    unfold C
    simp [show (2834352 * k + 652789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1958368) = 4251528 * k + 979184 := by
    unfold C
    simp [show (8503056 * k + 1958368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 979184) = 2125764 * k + 489592 := by
    unfold C
    simp [show (4251528 * k + 979184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 489592) = 1062882 * k + 244796 := by
    unfold C
    simp [show (2125764 * k + 489592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 244796) = 531441 * k + 122398 := by
    unfold C
    simp [show (1062882 * k + 244796) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 241499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 241499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_243431 : ∀ k : Nat,
    iterate (1048576 * k + 243431) 32 = 531441 * k + 123377 ∧
      531441 * k + 123377 < 1048576 * k + 243431 := by
  intro k
  have h1 : C (1048576 * k + 243431) = 3145728 * k + 730294 := by
    unfold C
    simp [show (1048576 * k + 243431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 730294) = 1572864 * k + 365147 := by
    unfold C
    simp [show (3145728 * k + 730294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 365147) = 4718592 * k + 1095442 := by
    unfold C
    simp [show (1572864 * k + 365147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1095442) = 2359296 * k + 547721 := by
    unfold C
    simp [show (4718592 * k + 1095442) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 547721) = 7077888 * k + 1643164 := by
    unfold C
    simp [show (2359296 * k + 547721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1643164) = 3538944 * k + 821582 := by
    unfold C
    simp [show (7077888 * k + 1643164) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 821582) = 1769472 * k + 410791 := by
    unfold C
    simp [show (3538944 * k + 821582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 410791) = 5308416 * k + 1232374 := by
    unfold C
    simp [show (1769472 * k + 410791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1232374) = 2654208 * k + 616187 := by
    unfold C
    simp [show (5308416 * k + 1232374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 616187) = 7962624 * k + 1848562 := by
    unfold C
    simp [show (2654208 * k + 616187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1848562) = 3981312 * k + 924281 := by
    unfold C
    simp [show (7962624 * k + 1848562) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 924281) = 11943936 * k + 2772844 := by
    unfold C
    simp [show (3981312 * k + 924281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2772844) = 5971968 * k + 1386422 := by
    unfold C
    simp [show (11943936 * k + 2772844) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1386422) = 2985984 * k + 693211 := by
    unfold C
    simp [show (5971968 * k + 1386422) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 693211) = 8957952 * k + 2079634 := by
    unfold C
    simp [show (2985984 * k + 693211) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2079634) = 4478976 * k + 1039817 := by
    unfold C
    simp [show (8957952 * k + 2079634) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1039817) = 13436928 * k + 3119452 := by
    unfold C
    simp [show (4478976 * k + 1039817) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3119452) = 6718464 * k + 1559726 := by
    unfold C
    simp [show (13436928 * k + 3119452) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1559726) = 3359232 * k + 779863 := by
    unfold C
    simp [show (6718464 * k + 1559726) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 779863) = 10077696 * k + 2339590 := by
    unfold C
    simp [show (3359232 * k + 779863) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2339590) = 5038848 * k + 1169795 := by
    unfold C
    simp [show (10077696 * k + 2339590) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1169795) = 15116544 * k + 3509386 := by
    unfold C
    simp [show (5038848 * k + 1169795) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3509386) = 7558272 * k + 1754693 := by
    unfold C
    simp [show (15116544 * k + 3509386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1754693) = 22674816 * k + 5264080 := by
    unfold C
    simp [show (7558272 * k + 1754693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5264080) = 11337408 * k + 2632040 := by
    unfold C
    simp [show (22674816 * k + 5264080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2632040) = 5668704 * k + 1316020 := by
    unfold C
    simp [show (11337408 * k + 2632040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1316020) = 2834352 * k + 658010 := by
    unfold C
    simp [show (5668704 * k + 1316020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 658010) = 1417176 * k + 329005 := by
    unfold C
    simp [show (2834352 * k + 658010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 329005) = 4251528 * k + 987016 := by
    unfold C
    simp [show (1417176 * k + 329005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 987016) = 2125764 * k + 493508 := by
    unfold C
    simp [show (4251528 * k + 987016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 493508) = 1062882 * k + 246754 := by
    unfold C
    simp [show (2125764 * k + 493508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 246754) = 531441 * k + 123377 := by
    unfold C
    simp [show (1062882 * k + 246754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 243431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 243431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_243567 : ∀ k : Nat,
    iterate (1048576 * k + 243567) 32 = 531441 * k + 123446 ∧
      531441 * k + 123446 < 1048576 * k + 243567 := by
  intro k
  have h1 : C (1048576 * k + 243567) = 3145728 * k + 730702 := by
    unfold C
    simp [show (1048576 * k + 243567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 730702) = 1572864 * k + 365351 := by
    unfold C
    simp [show (3145728 * k + 730702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 365351) = 4718592 * k + 1096054 := by
    unfold C
    simp [show (1572864 * k + 365351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1096054) = 2359296 * k + 548027 := by
    unfold C
    simp [show (4718592 * k + 1096054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 548027) = 7077888 * k + 1644082 := by
    unfold C
    simp [show (2359296 * k + 548027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1644082) = 3538944 * k + 822041 := by
    unfold C
    simp [show (7077888 * k + 1644082) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 822041) = 10616832 * k + 2466124 := by
    unfold C
    simp [show (3538944 * k + 822041) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2466124) = 5308416 * k + 1233062 := by
    unfold C
    simp [show (10616832 * k + 2466124) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1233062) = 2654208 * k + 616531 := by
    unfold C
    simp [show (5308416 * k + 1233062) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 616531) = 7962624 * k + 1849594 := by
    unfold C
    simp [show (2654208 * k + 616531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1849594) = 3981312 * k + 924797 := by
    unfold C
    simp [show (7962624 * k + 1849594) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 924797) = 11943936 * k + 2774392 := by
    unfold C
    simp [show (3981312 * k + 924797) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2774392) = 5971968 * k + 1387196 := by
    unfold C
    simp [show (11943936 * k + 2774392) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1387196) = 2985984 * k + 693598 := by
    unfold C
    simp [show (5971968 * k + 1387196) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 693598) = 1492992 * k + 346799 := by
    unfold C
    simp [show (2985984 * k + 693598) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 346799) = 4478976 * k + 1040398 := by
    unfold C
    simp [show (1492992 * k + 346799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1040398) = 2239488 * k + 520199 := by
    unfold C
    simp [show (4478976 * k + 1040398) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 520199) = 6718464 * k + 1560598 := by
    unfold C
    simp [show (2239488 * k + 520199) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1560598) = 3359232 * k + 780299 := by
    unfold C
    simp [show (6718464 * k + 1560598) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 780299) = 10077696 * k + 2340898 := by
    unfold C
    simp [show (3359232 * k + 780299) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2340898) = 5038848 * k + 1170449 := by
    unfold C
    simp [show (10077696 * k + 2340898) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1170449) = 15116544 * k + 3511348 := by
    unfold C
    simp [show (5038848 * k + 1170449) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3511348) = 7558272 * k + 1755674 := by
    unfold C
    simp [show (15116544 * k + 3511348) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1755674) = 3779136 * k + 877837 := by
    unfold C
    simp [show (7558272 * k + 1755674) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 877837) = 11337408 * k + 2633512 := by
    unfold C
    simp [show (3779136 * k + 877837) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2633512) = 5668704 * k + 1316756 := by
    unfold C
    simp [show (11337408 * k + 2633512) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1316756) = 2834352 * k + 658378 := by
    unfold C
    simp [show (5668704 * k + 1316756) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 658378) = 1417176 * k + 329189 := by
    unfold C
    simp [show (2834352 * k + 658378) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 329189) = 4251528 * k + 987568 := by
    unfold C
    simp [show (1417176 * k + 329189) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 987568) = 2125764 * k + 493784 := by
    unfold C
    simp [show (4251528 * k + 987568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 493784) = 1062882 * k + 246892 := by
    unfold C
    simp [show (2125764 * k + 493784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 246892) = 531441 * k + 123446 := by
    unfold C
    simp [show (1062882 * k + 246892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 243567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 243567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_243583 : ∀ k : Nat,
    iterate (1048576 * k + 243583) 32 = 531441 * k + 123454 ∧
      531441 * k + 123454 < 1048576 * k + 243583 := by
  intro k
  have h1 : C (1048576 * k + 243583) = 3145728 * k + 730750 := by
    unfold C
    simp [show (1048576 * k + 243583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 730750) = 1572864 * k + 365375 := by
    unfold C
    simp [show (3145728 * k + 730750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 365375) = 4718592 * k + 1096126 := by
    unfold C
    simp [show (1572864 * k + 365375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1096126) = 2359296 * k + 548063 := by
    unfold C
    simp [show (4718592 * k + 1096126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 548063) = 7077888 * k + 1644190 := by
    unfold C
    simp [show (2359296 * k + 548063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1644190) = 3538944 * k + 822095 := by
    unfold C
    simp [show (7077888 * k + 1644190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 822095) = 10616832 * k + 2466286 := by
    unfold C
    simp [show (3538944 * k + 822095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2466286) = 5308416 * k + 1233143 := by
    unfold C
    simp [show (10616832 * k + 2466286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1233143) = 15925248 * k + 3699430 := by
    unfold C
    simp [show (5308416 * k + 1233143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3699430) = 7962624 * k + 1849715 := by
    unfold C
    simp [show (15925248 * k + 3699430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1849715) = 23887872 * k + 5549146 := by
    unfold C
    simp [show (7962624 * k + 1849715) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5549146) = 11943936 * k + 2774573 := by
    unfold C
    simp [show (23887872 * k + 5549146) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2774573) = 35831808 * k + 8323720 := by
    unfold C
    simp [show (11943936 * k + 2774573) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8323720) = 17915904 * k + 4161860 := by
    unfold C
    simp [show (35831808 * k + 8323720) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4161860) = 8957952 * k + 2080930 := by
    unfold C
    simp [show (17915904 * k + 4161860) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2080930) = 4478976 * k + 1040465 := by
    unfold C
    simp [show (8957952 * k + 2080930) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1040465) = 13436928 * k + 3121396 := by
    unfold C
    simp [show (4478976 * k + 1040465) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3121396) = 6718464 * k + 1560698 := by
    unfold C
    simp [show (13436928 * k + 3121396) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1560698) = 3359232 * k + 780349 := by
    unfold C
    simp [show (6718464 * k + 1560698) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 780349) = 10077696 * k + 2341048 := by
    unfold C
    simp [show (3359232 * k + 780349) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2341048) = 5038848 * k + 1170524 := by
    unfold C
    simp [show (10077696 * k + 2341048) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1170524) = 2519424 * k + 585262 := by
    unfold C
    simp [show (5038848 * k + 1170524) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 585262) = 1259712 * k + 292631 := by
    unfold C
    simp [show (2519424 * k + 585262) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 292631) = 3779136 * k + 877894 := by
    unfold C
    simp [show (1259712 * k + 292631) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 877894) = 1889568 * k + 438947 := by
    unfold C
    simp [show (3779136 * k + 877894) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 438947) = 5668704 * k + 1316842 := by
    unfold C
    simp [show (1889568 * k + 438947) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1316842) = 2834352 * k + 658421 := by
    unfold C
    simp [show (5668704 * k + 1316842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 658421) = 8503056 * k + 1975264 := by
    unfold C
    simp [show (2834352 * k + 658421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1975264) = 4251528 * k + 987632 := by
    unfold C
    simp [show (8503056 * k + 1975264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 987632) = 2125764 * k + 493816 := by
    unfold C
    simp [show (4251528 * k + 987632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 493816) = 1062882 * k + 246908 := by
    unfold C
    simp [show (2125764 * k + 493816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 246908) = 531441 * k + 123454 := by
    unfold C
    simp [show (1062882 * k + 246908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 243583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 243583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_243679 : ∀ k : Nat,
    iterate (1048576 * k + 243679) 32 = 531441 * k + 123503 ∧
      531441 * k + 123503 < 1048576 * k + 243679 := by
  intro k
  have h1 : C (1048576 * k + 243679) = 3145728 * k + 731038 := by
    unfold C
    simp [show (1048576 * k + 243679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 731038) = 1572864 * k + 365519 := by
    unfold C
    simp [show (3145728 * k + 731038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 365519) = 4718592 * k + 1096558 := by
    unfold C
    simp [show (1572864 * k + 365519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1096558) = 2359296 * k + 548279 := by
    unfold C
    simp [show (4718592 * k + 1096558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 548279) = 7077888 * k + 1644838 := by
    unfold C
    simp [show (2359296 * k + 548279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1644838) = 3538944 * k + 822419 := by
    unfold C
    simp [show (7077888 * k + 1644838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 822419) = 10616832 * k + 2467258 := by
    unfold C
    simp [show (3538944 * k + 822419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2467258) = 5308416 * k + 1233629 := by
    unfold C
    simp [show (10616832 * k + 2467258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1233629) = 15925248 * k + 3700888 := by
    unfold C
    simp [show (5308416 * k + 1233629) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3700888) = 7962624 * k + 1850444 := by
    unfold C
    simp [show (15925248 * k + 3700888) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1850444) = 3981312 * k + 925222 := by
    unfold C
    simp [show (7962624 * k + 1850444) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 925222) = 1990656 * k + 462611 := by
    unfold C
    simp [show (3981312 * k + 925222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 462611) = 5971968 * k + 1387834 := by
    unfold C
    simp [show (1990656 * k + 462611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1387834) = 2985984 * k + 693917 := by
    unfold C
    simp [show (5971968 * k + 1387834) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 693917) = 8957952 * k + 2081752 := by
    unfold C
    simp [show (2985984 * k + 693917) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2081752) = 4478976 * k + 1040876 := by
    unfold C
    simp [show (8957952 * k + 2081752) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1040876) = 2239488 * k + 520438 := by
    unfold C
    simp [show (4478976 * k + 1040876) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 520438) = 1119744 * k + 260219 := by
    unfold C
    simp [show (2239488 * k + 520438) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 260219) = 3359232 * k + 780658 := by
    unfold C
    simp [show (1119744 * k + 260219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 780658) = 1679616 * k + 390329 := by
    unfold C
    simp [show (3359232 * k + 780658) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 390329) = 5038848 * k + 1170988 := by
    unfold C
    simp [show (1679616 * k + 390329) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1170988) = 2519424 * k + 585494 := by
    unfold C
    simp [show (5038848 * k + 1170988) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 585494) = 1259712 * k + 292747 := by
    unfold C
    simp [show (2519424 * k + 585494) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 292747) = 3779136 * k + 878242 := by
    unfold C
    simp [show (1259712 * k + 292747) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 878242) = 1889568 * k + 439121 := by
    unfold C
    simp [show (3779136 * k + 878242) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 439121) = 5668704 * k + 1317364 := by
    unfold C
    simp [show (1889568 * k + 439121) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1317364) = 2834352 * k + 658682 := by
    unfold C
    simp [show (5668704 * k + 1317364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 658682) = 1417176 * k + 329341 := by
    unfold C
    simp [show (2834352 * k + 658682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 329341) = 4251528 * k + 988024 := by
    unfold C
    simp [show (1417176 * k + 329341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 988024) = 2125764 * k + 494012 := by
    unfold C
    simp [show (4251528 * k + 988024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 494012) = 1062882 * k + 247006 := by
    unfold C
    simp [show (2125764 * k + 494012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 247006) = 531441 * k + 123503 := by
    unfold C
    simp [show (1062882 * k + 247006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 243679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 243679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_244123 : ∀ k : Nat,
    iterate (1048576 * k + 244123) 32 = 531441 * k + 123728 ∧
      531441 * k + 123728 < 1048576 * k + 244123 := by
  intro k
  have h1 : C (1048576 * k + 244123) = 3145728 * k + 732370 := by
    unfold C
    simp [show (1048576 * k + 244123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 732370) = 1572864 * k + 366185 := by
    unfold C
    simp [show (3145728 * k + 732370) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 366185) = 4718592 * k + 1098556 := by
    unfold C
    simp [show (1572864 * k + 366185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1098556) = 2359296 * k + 549278 := by
    unfold C
    simp [show (4718592 * k + 1098556) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 549278) = 1179648 * k + 274639 := by
    unfold C
    simp [show (2359296 * k + 549278) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 274639) = 3538944 * k + 823918 := by
    unfold C
    simp [show (1179648 * k + 274639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 823918) = 1769472 * k + 411959 := by
    unfold C
    simp [show (3538944 * k + 823918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 411959) = 5308416 * k + 1235878 := by
    unfold C
    simp [show (1769472 * k + 411959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1235878) = 2654208 * k + 617939 := by
    unfold C
    simp [show (5308416 * k + 1235878) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 617939) = 7962624 * k + 1853818 := by
    unfold C
    simp [show (2654208 * k + 617939) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1853818) = 3981312 * k + 926909 := by
    unfold C
    simp [show (7962624 * k + 1853818) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 926909) = 11943936 * k + 2780728 := by
    unfold C
    simp [show (3981312 * k + 926909) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2780728) = 5971968 * k + 1390364 := by
    unfold C
    simp [show (11943936 * k + 2780728) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1390364) = 2985984 * k + 695182 := by
    unfold C
    simp [show (5971968 * k + 1390364) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 695182) = 1492992 * k + 347591 := by
    unfold C
    simp [show (2985984 * k + 695182) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 347591) = 4478976 * k + 1042774 := by
    unfold C
    simp [show (1492992 * k + 347591) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1042774) = 2239488 * k + 521387 := by
    unfold C
    simp [show (4478976 * k + 1042774) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 521387) = 6718464 * k + 1564162 := by
    unfold C
    simp [show (2239488 * k + 521387) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1564162) = 3359232 * k + 782081 := by
    unfold C
    simp [show (6718464 * k + 1564162) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 782081) = 10077696 * k + 2346244 := by
    unfold C
    simp [show (3359232 * k + 782081) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2346244) = 5038848 * k + 1173122 := by
    unfold C
    simp [show (10077696 * k + 2346244) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1173122) = 2519424 * k + 586561 := by
    unfold C
    simp [show (5038848 * k + 1173122) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 586561) = 7558272 * k + 1759684 := by
    unfold C
    simp [show (2519424 * k + 586561) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1759684) = 3779136 * k + 879842 := by
    unfold C
    simp [show (7558272 * k + 1759684) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 879842) = 1889568 * k + 439921 := by
    unfold C
    simp [show (3779136 * k + 879842) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 439921) = 5668704 * k + 1319764 := by
    unfold C
    simp [show (1889568 * k + 439921) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1319764) = 2834352 * k + 659882 := by
    unfold C
    simp [show (5668704 * k + 1319764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 659882) = 1417176 * k + 329941 := by
    unfold C
    simp [show (2834352 * k + 659882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 329941) = 4251528 * k + 989824 := by
    unfold C
    simp [show (1417176 * k + 329941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 989824) = 2125764 * k + 494912 := by
    unfold C
    simp [show (4251528 * k + 989824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 494912) = 1062882 * k + 247456 := by
    unfold C
    simp [show (2125764 * k + 494912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 247456) = 531441 * k + 123728 := by
    unfold C
    simp [show (1062882 * k + 247456) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 244123) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 244123)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_244479 : ∀ k : Nat,
    iterate (1048576 * k + 244479) 32 = 531441 * k + 123908 ∧
      531441 * k + 123908 < 1048576 * k + 244479 := by
  intro k
  have h1 : C (1048576 * k + 244479) = 3145728 * k + 733438 := by
    unfold C
    simp [show (1048576 * k + 244479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 733438) = 1572864 * k + 366719 := by
    unfold C
    simp [show (3145728 * k + 733438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 366719) = 4718592 * k + 1100158 := by
    unfold C
    simp [show (1572864 * k + 366719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1100158) = 2359296 * k + 550079 := by
    unfold C
    simp [show (4718592 * k + 1100158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 550079) = 7077888 * k + 1650238 := by
    unfold C
    simp [show (2359296 * k + 550079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1650238) = 3538944 * k + 825119 := by
    unfold C
    simp [show (7077888 * k + 1650238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 825119) = 10616832 * k + 2475358 := by
    unfold C
    simp [show (3538944 * k + 825119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2475358) = 5308416 * k + 1237679 := by
    unfold C
    simp [show (10616832 * k + 2475358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1237679) = 15925248 * k + 3713038 := by
    unfold C
    simp [show (5308416 * k + 1237679) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3713038) = 7962624 * k + 1856519 := by
    unfold C
    simp [show (15925248 * k + 3713038) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1856519) = 23887872 * k + 5569558 := by
    unfold C
    simp [show (7962624 * k + 1856519) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5569558) = 11943936 * k + 2784779 := by
    unfold C
    simp [show (23887872 * k + 5569558) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2784779) = 35831808 * k + 8354338 := by
    unfold C
    simp [show (11943936 * k + 2784779) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8354338) = 17915904 * k + 4177169 := by
    unfold C
    simp [show (35831808 * k + 8354338) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4177169) = 53747712 * k + 12531508 := by
    unfold C
    simp [show (17915904 * k + 4177169) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 12531508) = 26873856 * k + 6265754 := by
    unfold C
    simp [show (53747712 * k + 12531508) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6265754) = 13436928 * k + 3132877 := by
    unfold C
    simp [show (26873856 * k + 6265754) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3132877) = 40310784 * k + 9398632 := by
    unfold C
    simp [show (13436928 * k + 3132877) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9398632) = 20155392 * k + 4699316 := by
    unfold C
    simp [show (40310784 * k + 9398632) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4699316) = 10077696 * k + 2349658 := by
    unfold C
    simp [show (20155392 * k + 4699316) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2349658) = 5038848 * k + 1174829 := by
    unfold C
    simp [show (10077696 * k + 2349658) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1174829) = 15116544 * k + 3524488 := by
    unfold C
    simp [show (5038848 * k + 1174829) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3524488) = 7558272 * k + 1762244 := by
    unfold C
    simp [show (15116544 * k + 3524488) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1762244) = 3779136 * k + 881122 := by
    unfold C
    simp [show (7558272 * k + 1762244) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 881122) = 1889568 * k + 440561 := by
    unfold C
    simp [show (3779136 * k + 881122) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 440561) = 5668704 * k + 1321684 := by
    unfold C
    simp [show (1889568 * k + 440561) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1321684) = 2834352 * k + 660842 := by
    unfold C
    simp [show (5668704 * k + 1321684) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 660842) = 1417176 * k + 330421 := by
    unfold C
    simp [show (2834352 * k + 660842) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 330421) = 4251528 * k + 991264 := by
    unfold C
    simp [show (1417176 * k + 330421) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 991264) = 2125764 * k + 495632 := by
    unfold C
    simp [show (4251528 * k + 991264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 495632) = 1062882 * k + 247816 := by
    unfold C
    simp [show (2125764 * k + 495632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 247816) = 531441 * k + 123908 := by
    unfold C
    simp [show (1062882 * k + 247816) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 244479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 244479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_244767 : ∀ k : Nat,
    iterate (1048576 * k + 244767) 32 = 531441 * k + 124054 ∧
      531441 * k + 124054 < 1048576 * k + 244767 := by
  intro k
  have h1 : C (1048576 * k + 244767) = 3145728 * k + 734302 := by
    unfold C
    simp [show (1048576 * k + 244767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 734302) = 1572864 * k + 367151 := by
    unfold C
    simp [show (3145728 * k + 734302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 367151) = 4718592 * k + 1101454 := by
    unfold C
    simp [show (1572864 * k + 367151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1101454) = 2359296 * k + 550727 := by
    unfold C
    simp [show (4718592 * k + 1101454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 550727) = 7077888 * k + 1652182 := by
    unfold C
    simp [show (2359296 * k + 550727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1652182) = 3538944 * k + 826091 := by
    unfold C
    simp [show (7077888 * k + 1652182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 826091) = 10616832 * k + 2478274 := by
    unfold C
    simp [show (3538944 * k + 826091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2478274) = 5308416 * k + 1239137 := by
    unfold C
    simp [show (10616832 * k + 2478274) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1239137) = 15925248 * k + 3717412 := by
    unfold C
    simp [show (5308416 * k + 1239137) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3717412) = 7962624 * k + 1858706 := by
    unfold C
    simp [show (15925248 * k + 3717412) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1858706) = 3981312 * k + 929353 := by
    unfold C
    simp [show (7962624 * k + 1858706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 929353) = 11943936 * k + 2788060 := by
    unfold C
    simp [show (3981312 * k + 929353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2788060) = 5971968 * k + 1394030 := by
    unfold C
    simp [show (11943936 * k + 2788060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1394030) = 2985984 * k + 697015 := by
    unfold C
    simp [show (5971968 * k + 1394030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 697015) = 8957952 * k + 2091046 := by
    unfold C
    simp [show (2985984 * k + 697015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2091046) = 4478976 * k + 1045523 := by
    unfold C
    simp [show (8957952 * k + 2091046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1045523) = 13436928 * k + 3136570 := by
    unfold C
    simp [show (4478976 * k + 1045523) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3136570) = 6718464 * k + 1568285 := by
    unfold C
    simp [show (13436928 * k + 3136570) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1568285) = 20155392 * k + 4704856 := by
    unfold C
    simp [show (6718464 * k + 1568285) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4704856) = 10077696 * k + 2352428 := by
    unfold C
    simp [show (20155392 * k + 4704856) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2352428) = 5038848 * k + 1176214 := by
    unfold C
    simp [show (10077696 * k + 2352428) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1176214) = 2519424 * k + 588107 := by
    unfold C
    simp [show (5038848 * k + 1176214) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 588107) = 7558272 * k + 1764322 := by
    unfold C
    simp [show (2519424 * k + 588107) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1764322) = 3779136 * k + 882161 := by
    unfold C
    simp [show (7558272 * k + 1764322) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 882161) = 11337408 * k + 2646484 := by
    unfold C
    simp [show (3779136 * k + 882161) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2646484) = 5668704 * k + 1323242 := by
    unfold C
    simp [show (11337408 * k + 2646484) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1323242) = 2834352 * k + 661621 := by
    unfold C
    simp [show (5668704 * k + 1323242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 661621) = 8503056 * k + 1984864 := by
    unfold C
    simp [show (2834352 * k + 661621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1984864) = 4251528 * k + 992432 := by
    unfold C
    simp [show (8503056 * k + 1984864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 992432) = 2125764 * k + 496216 := by
    unfold C
    simp [show (4251528 * k + 992432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 496216) = 1062882 * k + 248108 := by
    unfold C
    simp [show (2125764 * k + 496216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 248108) = 531441 * k + 124054 := by
    unfold C
    simp [show (1062882 * k + 248108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 244767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 244767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_244927 : ∀ k : Nat,
    iterate (1048576 * k + 244927) 32 = 531441 * k + 124135 ∧
      531441 * k + 124135 < 1048576 * k + 244927 := by
  intro k
  have h1 : C (1048576 * k + 244927) = 3145728 * k + 734782 := by
    unfold C
    simp [show (1048576 * k + 244927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 734782) = 1572864 * k + 367391 := by
    unfold C
    simp [show (3145728 * k + 734782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 367391) = 4718592 * k + 1102174 := by
    unfold C
    simp [show (1572864 * k + 367391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1102174) = 2359296 * k + 551087 := by
    unfold C
    simp [show (4718592 * k + 1102174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 551087) = 7077888 * k + 1653262 := by
    unfold C
    simp [show (2359296 * k + 551087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1653262) = 3538944 * k + 826631 := by
    unfold C
    simp [show (7077888 * k + 1653262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 826631) = 10616832 * k + 2479894 := by
    unfold C
    simp [show (3538944 * k + 826631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2479894) = 5308416 * k + 1239947 := by
    unfold C
    simp [show (10616832 * k + 2479894) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1239947) = 15925248 * k + 3719842 := by
    unfold C
    simp [show (5308416 * k + 1239947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3719842) = 7962624 * k + 1859921 := by
    unfold C
    simp [show (15925248 * k + 3719842) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1859921) = 23887872 * k + 5579764 := by
    unfold C
    simp [show (7962624 * k + 1859921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5579764) = 11943936 * k + 2789882 := by
    unfold C
    simp [show (23887872 * k + 5579764) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2789882) = 5971968 * k + 1394941 := by
    unfold C
    simp [show (11943936 * k + 2789882) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1394941) = 17915904 * k + 4184824 := by
    unfold C
    simp [show (5971968 * k + 1394941) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4184824) = 8957952 * k + 2092412 := by
    unfold C
    simp [show (17915904 * k + 4184824) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2092412) = 4478976 * k + 1046206 := by
    unfold C
    simp [show (8957952 * k + 2092412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1046206) = 2239488 * k + 523103 := by
    unfold C
    simp [show (4478976 * k + 1046206) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 523103) = 6718464 * k + 1569310 := by
    unfold C
    simp [show (2239488 * k + 523103) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1569310) = 3359232 * k + 784655 := by
    unfold C
    simp [show (6718464 * k + 1569310) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 784655) = 10077696 * k + 2353966 := by
    unfold C
    simp [show (3359232 * k + 784655) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2353966) = 5038848 * k + 1176983 := by
    unfold C
    simp [show (10077696 * k + 2353966) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1176983) = 15116544 * k + 3530950 := by
    unfold C
    simp [show (5038848 * k + 1176983) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3530950) = 7558272 * k + 1765475 := by
    unfold C
    simp [show (15116544 * k + 3530950) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1765475) = 22674816 * k + 5296426 := by
    unfold C
    simp [show (7558272 * k + 1765475) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5296426) = 11337408 * k + 2648213 := by
    unfold C
    simp [show (22674816 * k + 5296426) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2648213) = 34012224 * k + 7944640 := by
    unfold C
    simp [show (11337408 * k + 2648213) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 7944640) = 17006112 * k + 3972320 := by
    unfold C
    simp [show (34012224 * k + 7944640) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3972320) = 8503056 * k + 1986160 := by
    unfold C
    simp [show (17006112 * k + 3972320) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1986160) = 4251528 * k + 993080 := by
    unfold C
    simp [show (8503056 * k + 1986160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 993080) = 2125764 * k + 496540 := by
    unfold C
    simp [show (4251528 * k + 993080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 496540) = 1062882 * k + 248270 := by
    unfold C
    simp [show (2125764 * k + 496540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 248270) = 531441 * k + 124135 := by
    unfold C
    simp [show (1062882 * k + 248270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 244927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 244927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_245039 : ∀ k : Nat,
    iterate (1048576 * k + 245039) 32 = 531441 * k + 124192 ∧
      531441 * k + 124192 < 1048576 * k + 245039 := by
  intro k
  have h1 : C (1048576 * k + 245039) = 3145728 * k + 735118 := by
    unfold C
    simp [show (1048576 * k + 245039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 735118) = 1572864 * k + 367559 := by
    unfold C
    simp [show (3145728 * k + 735118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 367559) = 4718592 * k + 1102678 := by
    unfold C
    simp [show (1572864 * k + 367559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1102678) = 2359296 * k + 551339 := by
    unfold C
    simp [show (4718592 * k + 1102678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 551339) = 7077888 * k + 1654018 := by
    unfold C
    simp [show (2359296 * k + 551339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1654018) = 3538944 * k + 827009 := by
    unfold C
    simp [show (7077888 * k + 1654018) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 827009) = 10616832 * k + 2481028 := by
    unfold C
    simp [show (3538944 * k + 827009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2481028) = 5308416 * k + 1240514 := by
    unfold C
    simp [show (10616832 * k + 2481028) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1240514) = 2654208 * k + 620257 := by
    unfold C
    simp [show (5308416 * k + 1240514) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 620257) = 7962624 * k + 1860772 := by
    unfold C
    simp [show (2654208 * k + 620257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1860772) = 3981312 * k + 930386 := by
    unfold C
    simp [show (7962624 * k + 1860772) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 930386) = 1990656 * k + 465193 := by
    unfold C
    simp [show (3981312 * k + 930386) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 465193) = 5971968 * k + 1395580 := by
    unfold C
    simp [show (1990656 * k + 465193) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1395580) = 2985984 * k + 697790 := by
    unfold C
    simp [show (5971968 * k + 1395580) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 697790) = 1492992 * k + 348895 := by
    unfold C
    simp [show (2985984 * k + 697790) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 348895) = 4478976 * k + 1046686 := by
    unfold C
    simp [show (1492992 * k + 348895) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1046686) = 2239488 * k + 523343 := by
    unfold C
    simp [show (4478976 * k + 1046686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 523343) = 6718464 * k + 1570030 := by
    unfold C
    simp [show (2239488 * k + 523343) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1570030) = 3359232 * k + 785015 := by
    unfold C
    simp [show (6718464 * k + 1570030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 785015) = 10077696 * k + 2355046 := by
    unfold C
    simp [show (3359232 * k + 785015) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2355046) = 5038848 * k + 1177523 := by
    unfold C
    simp [show (10077696 * k + 2355046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1177523) = 15116544 * k + 3532570 := by
    unfold C
    simp [show (5038848 * k + 1177523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3532570) = 7558272 * k + 1766285 := by
    unfold C
    simp [show (15116544 * k + 3532570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1766285) = 22674816 * k + 5298856 := by
    unfold C
    simp [show (7558272 * k + 1766285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5298856) = 11337408 * k + 2649428 := by
    unfold C
    simp [show (22674816 * k + 5298856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2649428) = 5668704 * k + 1324714 := by
    unfold C
    simp [show (11337408 * k + 2649428) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1324714) = 2834352 * k + 662357 := by
    unfold C
    simp [show (5668704 * k + 1324714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 662357) = 8503056 * k + 1987072 := by
    unfold C
    simp [show (2834352 * k + 662357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1987072) = 4251528 * k + 993536 := by
    unfold C
    simp [show (8503056 * k + 1987072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 993536) = 2125764 * k + 496768 := by
    unfold C
    simp [show (4251528 * k + 993536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 496768) = 1062882 * k + 248384 := by
    unfold C
    simp [show (2125764 * k + 496768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 248384) = 531441 * k + 124192 := by
    unfold C
    simp [show (1062882 * k + 248384) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 245039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 245039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_246271 : ∀ k : Nat,
    iterate (1048576 * k + 246271) 32 = 531441 * k + 124816 ∧
      531441 * k + 124816 < 1048576 * k + 246271 := by
  intro k
  have h1 : C (1048576 * k + 246271) = 3145728 * k + 738814 := by
    unfold C
    simp [show (1048576 * k + 246271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 738814) = 1572864 * k + 369407 := by
    unfold C
    simp [show (3145728 * k + 738814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 369407) = 4718592 * k + 1108222 := by
    unfold C
    simp [show (1572864 * k + 369407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1108222) = 2359296 * k + 554111 := by
    unfold C
    simp [show (4718592 * k + 1108222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 554111) = 7077888 * k + 1662334 := by
    unfold C
    simp [show (2359296 * k + 554111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1662334) = 3538944 * k + 831167 := by
    unfold C
    simp [show (7077888 * k + 1662334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 831167) = 10616832 * k + 2493502 := by
    unfold C
    simp [show (3538944 * k + 831167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2493502) = 5308416 * k + 1246751 := by
    unfold C
    simp [show (10616832 * k + 2493502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1246751) = 15925248 * k + 3740254 := by
    unfold C
    simp [show (5308416 * k + 1246751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3740254) = 7962624 * k + 1870127 := by
    unfold C
    simp [show (15925248 * k + 3740254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1870127) = 23887872 * k + 5610382 := by
    unfold C
    simp [show (7962624 * k + 1870127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5610382) = 11943936 * k + 2805191 := by
    unfold C
    simp [show (23887872 * k + 5610382) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2805191) = 35831808 * k + 8415574 := by
    unfold C
    simp [show (11943936 * k + 2805191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8415574) = 17915904 * k + 4207787 := by
    unfold C
    simp [show (35831808 * k + 8415574) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4207787) = 53747712 * k + 12623362 := by
    unfold C
    simp [show (17915904 * k + 4207787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 12623362) = 26873856 * k + 6311681 := by
    unfold C
    simp [show (53747712 * k + 12623362) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6311681) = 80621568 * k + 18935044 := by
    unfold C
    simp [show (26873856 * k + 6311681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 18935044) = 40310784 * k + 9467522 := by
    unfold C
    simp [show (80621568 * k + 18935044) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 9467522) = 20155392 * k + 4733761 := by
    unfold C
    simp [show (40310784 * k + 9467522) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4733761) = 60466176 * k + 14201284 := by
    unfold C
    simp [show (20155392 * k + 4733761) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 14201284) = 30233088 * k + 7100642 := by
    unfold C
    simp [show (60466176 * k + 14201284) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7100642) = 15116544 * k + 3550321 := by
    unfold C
    simp [show (30233088 * k + 7100642) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3550321) = 45349632 * k + 10650964 := by
    unfold C
    simp [show (15116544 * k + 3550321) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 10650964) = 22674816 * k + 5325482 := by
    unfold C
    simp [show (45349632 * k + 10650964) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5325482) = 11337408 * k + 2662741 := by
    unfold C
    simp [show (22674816 * k + 5325482) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2662741) = 34012224 * k + 7988224 := by
    unfold C
    simp [show (11337408 * k + 2662741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 7988224) = 17006112 * k + 3994112 := by
    unfold C
    simp [show (34012224 * k + 7988224) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3994112) = 8503056 * k + 1997056 := by
    unfold C
    simp [show (17006112 * k + 3994112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1997056) = 4251528 * k + 998528 := by
    unfold C
    simp [show (8503056 * k + 1997056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 998528) = 2125764 * k + 499264 := by
    unfold C
    simp [show (4251528 * k + 998528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 499264) = 1062882 * k + 249632 := by
    unfold C
    simp [show (2125764 * k + 499264) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 249632) = 531441 * k + 124816 := by
    unfold C
    simp [show (1062882 * k + 249632) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 246271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 246271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_246503 : ∀ k : Nat,
    iterate (1048576 * k + 246503) 32 = 531441 * k + 124934 ∧
      531441 * k + 124934 < 1048576 * k + 246503 := by
  intro k
  have h1 : C (1048576 * k + 246503) = 3145728 * k + 739510 := by
    unfold C
    simp [show (1048576 * k + 246503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 739510) = 1572864 * k + 369755 := by
    unfold C
    simp [show (3145728 * k + 739510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 369755) = 4718592 * k + 1109266 := by
    unfold C
    simp [show (1572864 * k + 369755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1109266) = 2359296 * k + 554633 := by
    unfold C
    simp [show (4718592 * k + 1109266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 554633) = 7077888 * k + 1663900 := by
    unfold C
    simp [show (2359296 * k + 554633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1663900) = 3538944 * k + 831950 := by
    unfold C
    simp [show (7077888 * k + 1663900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 831950) = 1769472 * k + 415975 := by
    unfold C
    simp [show (3538944 * k + 831950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 415975) = 5308416 * k + 1247926 := by
    unfold C
    simp [show (1769472 * k + 415975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1247926) = 2654208 * k + 623963 := by
    unfold C
    simp [show (5308416 * k + 1247926) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 623963) = 7962624 * k + 1871890 := by
    unfold C
    simp [show (2654208 * k + 623963) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1871890) = 3981312 * k + 935945 := by
    unfold C
    simp [show (7962624 * k + 1871890) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 935945) = 11943936 * k + 2807836 := by
    unfold C
    simp [show (3981312 * k + 935945) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2807836) = 5971968 * k + 1403918 := by
    unfold C
    simp [show (11943936 * k + 2807836) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1403918) = 2985984 * k + 701959 := by
    unfold C
    simp [show (5971968 * k + 1403918) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 701959) = 8957952 * k + 2105878 := by
    unfold C
    simp [show (2985984 * k + 701959) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2105878) = 4478976 * k + 1052939 := by
    unfold C
    simp [show (8957952 * k + 2105878) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1052939) = 13436928 * k + 3158818 := by
    unfold C
    simp [show (4478976 * k + 1052939) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3158818) = 6718464 * k + 1579409 := by
    unfold C
    simp [show (13436928 * k + 3158818) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1579409) = 20155392 * k + 4738228 := by
    unfold C
    simp [show (6718464 * k + 1579409) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4738228) = 10077696 * k + 2369114 := by
    unfold C
    simp [show (20155392 * k + 4738228) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2369114) = 5038848 * k + 1184557 := by
    unfold C
    simp [show (10077696 * k + 2369114) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1184557) = 15116544 * k + 3553672 := by
    unfold C
    simp [show (5038848 * k + 1184557) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3553672) = 7558272 * k + 1776836 := by
    unfold C
    simp [show (15116544 * k + 3553672) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1776836) = 3779136 * k + 888418 := by
    unfold C
    simp [show (7558272 * k + 1776836) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 888418) = 1889568 * k + 444209 := by
    unfold C
    simp [show (3779136 * k + 888418) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 444209) = 5668704 * k + 1332628 := by
    unfold C
    simp [show (1889568 * k + 444209) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1332628) = 2834352 * k + 666314 := by
    unfold C
    simp [show (5668704 * k + 1332628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 666314) = 1417176 * k + 333157 := by
    unfold C
    simp [show (2834352 * k + 666314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 333157) = 4251528 * k + 999472 := by
    unfold C
    simp [show (1417176 * k + 333157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 999472) = 2125764 * k + 499736 := by
    unfold C
    simp [show (4251528 * k + 999472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 499736) = 1062882 * k + 249868 := by
    unfold C
    simp [show (2125764 * k + 499736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 249868) = 531441 * k + 124934 := by
    unfold C
    simp [show (1062882 * k + 249868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 246503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 246503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_247035 : ∀ k : Nat,
    iterate (1048576 * k + 247035) 32 = 531441 * k + 125204 ∧
      531441 * k + 125204 < 1048576 * k + 247035 := by
  intro k
  have h1 : C (1048576 * k + 247035) = 3145728 * k + 741106 := by
    unfold C
    simp [show (1048576 * k + 247035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 741106) = 1572864 * k + 370553 := by
    unfold C
    simp [show (3145728 * k + 741106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 370553) = 4718592 * k + 1111660 := by
    unfold C
    simp [show (1572864 * k + 370553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1111660) = 2359296 * k + 555830 := by
    unfold C
    simp [show (4718592 * k + 1111660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 555830) = 1179648 * k + 277915 := by
    unfold C
    simp [show (2359296 * k + 555830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 277915) = 3538944 * k + 833746 := by
    unfold C
    simp [show (1179648 * k + 277915) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 833746) = 1769472 * k + 416873 := by
    unfold C
    simp [show (3538944 * k + 833746) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 416873) = 5308416 * k + 1250620 := by
    unfold C
    simp [show (1769472 * k + 416873) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1250620) = 2654208 * k + 625310 := by
    unfold C
    simp [show (5308416 * k + 1250620) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 625310) = 1327104 * k + 312655 := by
    unfold C
    simp [show (2654208 * k + 625310) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 312655) = 3981312 * k + 937966 := by
    unfold C
    simp [show (1327104 * k + 312655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 937966) = 1990656 * k + 468983 := by
    unfold C
    simp [show (3981312 * k + 937966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 468983) = 5971968 * k + 1406950 := by
    unfold C
    simp [show (1990656 * k + 468983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1406950) = 2985984 * k + 703475 := by
    unfold C
    simp [show (5971968 * k + 1406950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 703475) = 8957952 * k + 2110426 := by
    unfold C
    simp [show (2985984 * k + 703475) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2110426) = 4478976 * k + 1055213 := by
    unfold C
    simp [show (8957952 * k + 2110426) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1055213) = 13436928 * k + 3165640 := by
    unfold C
    simp [show (4478976 * k + 1055213) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3165640) = 6718464 * k + 1582820 := by
    unfold C
    simp [show (13436928 * k + 3165640) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1582820) = 3359232 * k + 791410 := by
    unfold C
    simp [show (6718464 * k + 1582820) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 791410) = 1679616 * k + 395705 := by
    unfold C
    simp [show (3359232 * k + 791410) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 395705) = 5038848 * k + 1187116 := by
    unfold C
    simp [show (1679616 * k + 395705) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1187116) = 2519424 * k + 593558 := by
    unfold C
    simp [show (5038848 * k + 1187116) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 593558) = 1259712 * k + 296779 := by
    unfold C
    simp [show (2519424 * k + 593558) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 296779) = 3779136 * k + 890338 := by
    unfold C
    simp [show (1259712 * k + 296779) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 890338) = 1889568 * k + 445169 := by
    unfold C
    simp [show (3779136 * k + 890338) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 445169) = 5668704 * k + 1335508 := by
    unfold C
    simp [show (1889568 * k + 445169) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1335508) = 2834352 * k + 667754 := by
    unfold C
    simp [show (5668704 * k + 1335508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 667754) = 1417176 * k + 333877 := by
    unfold C
    simp [show (2834352 * k + 667754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 333877) = 4251528 * k + 1001632 := by
    unfold C
    simp [show (1417176 * k + 333877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1001632) = 2125764 * k + 500816 := by
    unfold C
    simp [show (4251528 * k + 1001632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 500816) = 1062882 * k + 250408 := by
    unfold C
    simp [show (2125764 * k + 500816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 250408) = 531441 * k + 125204 := by
    unfold C
    simp [show (1062882 * k + 250408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 247035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 247035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_247527 : ∀ k : Nat,
    iterate (1048576 * k + 247527) 32 = 531441 * k + 125453 ∧
      531441 * k + 125453 < 1048576 * k + 247527 := by
  intro k
  have h1 : C (1048576 * k + 247527) = 3145728 * k + 742582 := by
    unfold C
    simp [show (1048576 * k + 247527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 742582) = 1572864 * k + 371291 := by
    unfold C
    simp [show (3145728 * k + 742582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 371291) = 4718592 * k + 1113874 := by
    unfold C
    simp [show (1572864 * k + 371291) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1113874) = 2359296 * k + 556937 := by
    unfold C
    simp [show (4718592 * k + 1113874) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 556937) = 7077888 * k + 1670812 := by
    unfold C
    simp [show (2359296 * k + 556937) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1670812) = 3538944 * k + 835406 := by
    unfold C
    simp [show (7077888 * k + 1670812) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 835406) = 1769472 * k + 417703 := by
    unfold C
    simp [show (3538944 * k + 835406) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 417703) = 5308416 * k + 1253110 := by
    unfold C
    simp [show (1769472 * k + 417703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1253110) = 2654208 * k + 626555 := by
    unfold C
    simp [show (5308416 * k + 1253110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 626555) = 7962624 * k + 1879666 := by
    unfold C
    simp [show (2654208 * k + 626555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1879666) = 3981312 * k + 939833 := by
    unfold C
    simp [show (7962624 * k + 1879666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 939833) = 11943936 * k + 2819500 := by
    unfold C
    simp [show (3981312 * k + 939833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2819500) = 5971968 * k + 1409750 := by
    unfold C
    simp [show (11943936 * k + 2819500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1409750) = 2985984 * k + 704875 := by
    unfold C
    simp [show (5971968 * k + 1409750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 704875) = 8957952 * k + 2114626 := by
    unfold C
    simp [show (2985984 * k + 704875) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2114626) = 4478976 * k + 1057313 := by
    unfold C
    simp [show (8957952 * k + 2114626) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1057313) = 13436928 * k + 3171940 := by
    unfold C
    simp [show (4478976 * k + 1057313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3171940) = 6718464 * k + 1585970 := by
    unfold C
    simp [show (13436928 * k + 3171940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1585970) = 3359232 * k + 792985 := by
    unfold C
    simp [show (6718464 * k + 1585970) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 792985) = 10077696 * k + 2378956 := by
    unfold C
    simp [show (3359232 * k + 792985) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2378956) = 5038848 * k + 1189478 := by
    unfold C
    simp [show (10077696 * k + 2378956) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1189478) = 2519424 * k + 594739 := by
    unfold C
    simp [show (5038848 * k + 1189478) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 594739) = 7558272 * k + 1784218 := by
    unfold C
    simp [show (2519424 * k + 594739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1784218) = 3779136 * k + 892109 := by
    unfold C
    simp [show (7558272 * k + 1784218) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 892109) = 11337408 * k + 2676328 := by
    unfold C
    simp [show (3779136 * k + 892109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2676328) = 5668704 * k + 1338164 := by
    unfold C
    simp [show (11337408 * k + 2676328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1338164) = 2834352 * k + 669082 := by
    unfold C
    simp [show (5668704 * k + 1338164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 669082) = 1417176 * k + 334541 := by
    unfold C
    simp [show (2834352 * k + 669082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 334541) = 4251528 * k + 1003624 := by
    unfold C
    simp [show (1417176 * k + 334541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1003624) = 2125764 * k + 501812 := by
    unfold C
    simp [show (4251528 * k + 1003624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 501812) = 1062882 * k + 250906 := by
    unfold C
    simp [show (2125764 * k + 501812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 250906) = 531441 * k + 125453 := by
    unfold C
    simp [show (1062882 * k + 250906) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 247527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 247527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard033
