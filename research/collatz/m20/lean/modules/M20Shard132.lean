import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard132

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1037503 : ∀ k : Nat,
    iterate (1048576 * k + 1037503) 32 = 531441 * k + 525830 ∧
      531441 * k + 525830 < 1048576 * k + 1037503 := by
  intro k
  have h1 : C (1048576 * k + 1037503) = 3145728 * k + 3112510 := by
    unfold C
    simp [show (1048576 * k + 1037503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3112510) = 1572864 * k + 1556255 := by
    unfold C
    simp [show (3145728 * k + 3112510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1556255) = 4718592 * k + 4668766 := by
    unfold C
    simp [show (1572864 * k + 1556255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4668766) = 2359296 * k + 2334383 := by
    unfold C
    simp [show (4718592 * k + 4668766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2334383) = 7077888 * k + 7003150 := by
    unfold C
    simp [show (2359296 * k + 2334383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7003150) = 3538944 * k + 3501575 := by
    unfold C
    simp [show (7077888 * k + 7003150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3501575) = 10616832 * k + 10504726 := by
    unfold C
    simp [show (3538944 * k + 3501575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10504726) = 5308416 * k + 5252363 := by
    unfold C
    simp [show (10616832 * k + 10504726) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5252363) = 15925248 * k + 15757090 := by
    unfold C
    simp [show (5308416 * k + 5252363) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15757090) = 7962624 * k + 7878545 := by
    unfold C
    simp [show (15925248 * k + 15757090) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7878545) = 23887872 * k + 23635636 := by
    unfold C
    simp [show (7962624 * k + 7878545) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23635636) = 11943936 * k + 11817818 := by
    unfold C
    simp [show (23887872 * k + 23635636) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11817818) = 5971968 * k + 5908909 := by
    unfold C
    simp [show (11943936 * k + 11817818) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5908909) = 17915904 * k + 17726728 := by
    unfold C
    simp [show (5971968 * k + 5908909) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17726728) = 8957952 * k + 8863364 := by
    unfold C
    simp [show (17915904 * k + 17726728) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8863364) = 4478976 * k + 4431682 := by
    unfold C
    simp [show (8957952 * k + 8863364) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4431682) = 2239488 * k + 2215841 := by
    unfold C
    simp [show (4478976 * k + 4431682) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2215841) = 6718464 * k + 6647524 := by
    unfold C
    simp [show (2239488 * k + 2215841) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6647524) = 3359232 * k + 3323762 := by
    unfold C
    simp [show (6718464 * k + 6647524) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3323762) = 1679616 * k + 1661881 := by
    unfold C
    simp [show (3359232 * k + 3323762) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1661881) = 5038848 * k + 4985644 := by
    unfold C
    simp [show (1679616 * k + 1661881) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4985644) = 2519424 * k + 2492822 := by
    unfold C
    simp [show (5038848 * k + 4985644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2492822) = 1259712 * k + 1246411 := by
    unfold C
    simp [show (2519424 * k + 2492822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1246411) = 3779136 * k + 3739234 := by
    unfold C
    simp [show (1259712 * k + 1246411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3739234) = 1889568 * k + 1869617 := by
    unfold C
    simp [show (3779136 * k + 3739234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1869617) = 5668704 * k + 5608852 := by
    unfold C
    simp [show (1889568 * k + 1869617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5608852) = 2834352 * k + 2804426 := by
    unfold C
    simp [show (5668704 * k + 5608852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2804426) = 1417176 * k + 1402213 := by
    unfold C
    simp [show (2834352 * k + 2804426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1402213) = 4251528 * k + 4206640 := by
    unfold C
    simp [show (1417176 * k + 1402213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4206640) = 2125764 * k + 2103320 := by
    unfold C
    simp [show (4251528 * k + 4206640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2103320) = 1062882 * k + 1051660 := by
    unfold C
    simp [show (2125764 * k + 2103320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1051660) = 531441 * k + 525830 := by
    unfold C
    simp [show (1062882 * k + 1051660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1037503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1037503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1037823 : ∀ k : Nat,
    iterate (1048576 * k + 1037823) 32 = 531441 * k + 525992 ∧
      531441 * k + 525992 < 1048576 * k + 1037823 := by
  intro k
  have h1 : C (1048576 * k + 1037823) = 3145728 * k + 3113470 := by
    unfold C
    simp [show (1048576 * k + 1037823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3113470) = 1572864 * k + 1556735 := by
    unfold C
    simp [show (3145728 * k + 3113470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1556735) = 4718592 * k + 4670206 := by
    unfold C
    simp [show (1572864 * k + 1556735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4670206) = 2359296 * k + 2335103 := by
    unfold C
    simp [show (4718592 * k + 4670206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2335103) = 7077888 * k + 7005310 := by
    unfold C
    simp [show (2359296 * k + 2335103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7005310) = 3538944 * k + 3502655 := by
    unfold C
    simp [show (7077888 * k + 7005310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3502655) = 10616832 * k + 10507966 := by
    unfold C
    simp [show (3538944 * k + 3502655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10507966) = 5308416 * k + 5253983 := by
    unfold C
    simp [show (10616832 * k + 10507966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5253983) = 15925248 * k + 15761950 := by
    unfold C
    simp [show (5308416 * k + 5253983) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15761950) = 7962624 * k + 7880975 := by
    unfold C
    simp [show (15925248 * k + 15761950) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7880975) = 23887872 * k + 23642926 := by
    unfold C
    simp [show (7962624 * k + 7880975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23642926) = 11943936 * k + 11821463 := by
    unfold C
    simp [show (23887872 * k + 23642926) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11821463) = 35831808 * k + 35464390 := by
    unfold C
    simp [show (11943936 * k + 11821463) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35464390) = 17915904 * k + 17732195 := by
    unfold C
    simp [show (35831808 * k + 35464390) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17732195) = 53747712 * k + 53196586 := by
    unfold C
    simp [show (17915904 * k + 17732195) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53196586) = 26873856 * k + 26598293 := by
    unfold C
    simp [show (53747712 * k + 53196586) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26598293) = 80621568 * k + 79794880 := by
    unfold C
    simp [show (26873856 * k + 26598293) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 79794880) = 40310784 * k + 39897440 := by
    unfold C
    simp [show (80621568 * k + 79794880) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 39897440) = 20155392 * k + 19948720 := by
    unfold C
    simp [show (40310784 * k + 39897440) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19948720) = 10077696 * k + 9974360 := by
    unfold C
    simp [show (20155392 * k + 19948720) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9974360) = 5038848 * k + 4987180 := by
    unfold C
    simp [show (10077696 * k + 9974360) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4987180) = 2519424 * k + 2493590 := by
    unfold C
    simp [show (5038848 * k + 4987180) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2493590) = 1259712 * k + 1246795 := by
    unfold C
    simp [show (2519424 * k + 2493590) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1246795) = 3779136 * k + 3740386 := by
    unfold C
    simp [show (1259712 * k + 1246795) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3740386) = 1889568 * k + 1870193 := by
    unfold C
    simp [show (3779136 * k + 3740386) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1870193) = 5668704 * k + 5610580 := by
    unfold C
    simp [show (1889568 * k + 1870193) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5610580) = 2834352 * k + 2805290 := by
    unfold C
    simp [show (5668704 * k + 5610580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2805290) = 1417176 * k + 1402645 := by
    unfold C
    simp [show (2834352 * k + 2805290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1402645) = 4251528 * k + 4207936 := by
    unfold C
    simp [show (1417176 * k + 1402645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4207936) = 2125764 * k + 2103968 := by
    unfold C
    simp [show (4251528 * k + 4207936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2103968) = 1062882 * k + 1051984 := by
    unfold C
    simp [show (2125764 * k + 2103968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1051984) = 531441 * k + 525992 := by
    unfold C
    simp [show (1062882 * k + 1051984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1037823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1037823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1038271 : ∀ k : Nat,
    iterate (1048576 * k + 1038271) 32 = 531441 * k + 526219 ∧
      531441 * k + 526219 < 1048576 * k + 1038271 := by
  intro k
  have h1 : C (1048576 * k + 1038271) = 3145728 * k + 3114814 := by
    unfold C
    simp [show (1048576 * k + 1038271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3114814) = 1572864 * k + 1557407 := by
    unfold C
    simp [show (3145728 * k + 3114814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1557407) = 4718592 * k + 4672222 := by
    unfold C
    simp [show (1572864 * k + 1557407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4672222) = 2359296 * k + 2336111 := by
    unfold C
    simp [show (4718592 * k + 4672222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2336111) = 7077888 * k + 7008334 := by
    unfold C
    simp [show (2359296 * k + 2336111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7008334) = 3538944 * k + 3504167 := by
    unfold C
    simp [show (7077888 * k + 7008334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3504167) = 10616832 * k + 10512502 := by
    unfold C
    simp [show (3538944 * k + 3504167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10512502) = 5308416 * k + 5256251 := by
    unfold C
    simp [show (10616832 * k + 10512502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5256251) = 15925248 * k + 15768754 := by
    unfold C
    simp [show (5308416 * k + 5256251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15768754) = 7962624 * k + 7884377 := by
    unfold C
    simp [show (15925248 * k + 15768754) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7884377) = 23887872 * k + 23653132 := by
    unfold C
    simp [show (7962624 * k + 7884377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23653132) = 11943936 * k + 11826566 := by
    unfold C
    simp [show (23887872 * k + 23653132) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11826566) = 5971968 * k + 5913283 := by
    unfold C
    simp [show (11943936 * k + 11826566) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5913283) = 17915904 * k + 17739850 := by
    unfold C
    simp [show (5971968 * k + 5913283) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17739850) = 8957952 * k + 8869925 := by
    unfold C
    simp [show (17915904 * k + 17739850) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8869925) = 26873856 * k + 26609776 := by
    unfold C
    simp [show (8957952 * k + 8869925) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26609776) = 13436928 * k + 13304888 := by
    unfold C
    simp [show (26873856 * k + 26609776) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13304888) = 6718464 * k + 6652444 := by
    unfold C
    simp [show (13436928 * k + 13304888) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6652444) = 3359232 * k + 3326222 := by
    unfold C
    simp [show (6718464 * k + 6652444) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3326222) = 1679616 * k + 1663111 := by
    unfold C
    simp [show (3359232 * k + 3326222) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1663111) = 5038848 * k + 4989334 := by
    unfold C
    simp [show (1679616 * k + 1663111) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4989334) = 2519424 * k + 2494667 := by
    unfold C
    simp [show (5038848 * k + 4989334) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2494667) = 7558272 * k + 7484002 := by
    unfold C
    simp [show (2519424 * k + 2494667) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7484002) = 3779136 * k + 3742001 := by
    unfold C
    simp [show (7558272 * k + 7484002) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3742001) = 11337408 * k + 11226004 := by
    unfold C
    simp [show (3779136 * k + 3742001) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11226004) = 5668704 * k + 5613002 := by
    unfold C
    simp [show (11337408 * k + 11226004) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5613002) = 2834352 * k + 2806501 := by
    unfold C
    simp [show (5668704 * k + 5613002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2806501) = 8503056 * k + 8419504 := by
    unfold C
    simp [show (2834352 * k + 2806501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8419504) = 4251528 * k + 4209752 := by
    unfold C
    simp [show (8503056 * k + 8419504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4209752) = 2125764 * k + 2104876 := by
    unfold C
    simp [show (4251528 * k + 4209752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2104876) = 1062882 * k + 1052438 := by
    unfold C
    simp [show (2125764 * k + 2104876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1052438) = 531441 * k + 526219 := by
    unfold C
    simp [show (1062882 * k + 1052438) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1038271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1038271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1038383 : ∀ k : Nat,
    iterate (1048576 * k + 1038383) 32 = 531441 * k + 526276 ∧
      531441 * k + 526276 < 1048576 * k + 1038383 := by
  intro k
  have h1 : C (1048576 * k + 1038383) = 3145728 * k + 3115150 := by
    unfold C
    simp [show (1048576 * k + 1038383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3115150) = 1572864 * k + 1557575 := by
    unfold C
    simp [show (3145728 * k + 3115150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1557575) = 4718592 * k + 4672726 := by
    unfold C
    simp [show (1572864 * k + 1557575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4672726) = 2359296 * k + 2336363 := by
    unfold C
    simp [show (4718592 * k + 4672726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2336363) = 7077888 * k + 7009090 := by
    unfold C
    simp [show (2359296 * k + 2336363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7009090) = 3538944 * k + 3504545 := by
    unfold C
    simp [show (7077888 * k + 7009090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3504545) = 10616832 * k + 10513636 := by
    unfold C
    simp [show (3538944 * k + 3504545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10513636) = 5308416 * k + 5256818 := by
    unfold C
    simp [show (10616832 * k + 10513636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5256818) = 2654208 * k + 2628409 := by
    unfold C
    simp [show (5308416 * k + 5256818) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2628409) = 7962624 * k + 7885228 := by
    unfold C
    simp [show (2654208 * k + 2628409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7885228) = 3981312 * k + 3942614 := by
    unfold C
    simp [show (7962624 * k + 7885228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3942614) = 1990656 * k + 1971307 := by
    unfold C
    simp [show (3981312 * k + 3942614) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1971307) = 5971968 * k + 5913922 := by
    unfold C
    simp [show (1990656 * k + 1971307) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5913922) = 2985984 * k + 2956961 := by
    unfold C
    simp [show (5971968 * k + 5913922) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2956961) = 8957952 * k + 8870884 := by
    unfold C
    simp [show (2985984 * k + 2956961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8870884) = 4478976 * k + 4435442 := by
    unfold C
    simp [show (8957952 * k + 8870884) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4435442) = 2239488 * k + 2217721 := by
    unfold C
    simp [show (4478976 * k + 4435442) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2217721) = 6718464 * k + 6653164 := by
    unfold C
    simp [show (2239488 * k + 2217721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6653164) = 3359232 * k + 3326582 := by
    unfold C
    simp [show (6718464 * k + 6653164) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3326582) = 1679616 * k + 1663291 := by
    unfold C
    simp [show (3359232 * k + 3326582) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1663291) = 5038848 * k + 4989874 := by
    unfold C
    simp [show (1679616 * k + 1663291) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4989874) = 2519424 * k + 2494937 := by
    unfold C
    simp [show (5038848 * k + 4989874) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2494937) = 7558272 * k + 7484812 := by
    unfold C
    simp [show (2519424 * k + 2494937) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7484812) = 3779136 * k + 3742406 := by
    unfold C
    simp [show (7558272 * k + 7484812) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3742406) = 1889568 * k + 1871203 := by
    unfold C
    simp [show (3779136 * k + 3742406) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1871203) = 5668704 * k + 5613610 := by
    unfold C
    simp [show (1889568 * k + 1871203) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5613610) = 2834352 * k + 2806805 := by
    unfold C
    simp [show (5668704 * k + 5613610) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2806805) = 8503056 * k + 8420416 := by
    unfold C
    simp [show (2834352 * k + 2806805) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8420416) = 4251528 * k + 4210208 := by
    unfold C
    simp [show (8503056 * k + 8420416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4210208) = 2125764 * k + 2105104 := by
    unfold C
    simp [show (4251528 * k + 4210208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2105104) = 1062882 * k + 1052552 := by
    unfold C
    simp [show (2125764 * k + 2105104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1052552) = 531441 * k + 526276 := by
    unfold C
    simp [show (1062882 * k + 1052552) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1038383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1038383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1038543 : ∀ k : Nat,
    iterate (1048576 * k + 1038543) 32 = 531441 * k + 526357 ∧
      531441 * k + 526357 < 1048576 * k + 1038543 := by
  intro k
  have h1 : C (1048576 * k + 1038543) = 3145728 * k + 3115630 := by
    unfold C
    simp [show (1048576 * k + 1038543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3115630) = 1572864 * k + 1557815 := by
    unfold C
    simp [show (3145728 * k + 3115630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1557815) = 4718592 * k + 4673446 := by
    unfold C
    simp [show (1572864 * k + 1557815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4673446) = 2359296 * k + 2336723 := by
    unfold C
    simp [show (4718592 * k + 4673446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2336723) = 7077888 * k + 7010170 := by
    unfold C
    simp [show (2359296 * k + 2336723) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7010170) = 3538944 * k + 3505085 := by
    unfold C
    simp [show (7077888 * k + 7010170) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3505085) = 10616832 * k + 10515256 := by
    unfold C
    simp [show (3538944 * k + 3505085) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10515256) = 5308416 * k + 5257628 := by
    unfold C
    simp [show (10616832 * k + 10515256) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5257628) = 2654208 * k + 2628814 := by
    unfold C
    simp [show (5308416 * k + 5257628) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2628814) = 1327104 * k + 1314407 := by
    unfold C
    simp [show (2654208 * k + 2628814) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1314407) = 3981312 * k + 3943222 := by
    unfold C
    simp [show (1327104 * k + 1314407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3943222) = 1990656 * k + 1971611 := by
    unfold C
    simp [show (3981312 * k + 3943222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1971611) = 5971968 * k + 5914834 := by
    unfold C
    simp [show (1990656 * k + 1971611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5914834) = 2985984 * k + 2957417 := by
    unfold C
    simp [show (5971968 * k + 5914834) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2957417) = 8957952 * k + 8872252 := by
    unfold C
    simp [show (2985984 * k + 2957417) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8872252) = 4478976 * k + 4436126 := by
    unfold C
    simp [show (8957952 * k + 8872252) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4436126) = 2239488 * k + 2218063 := by
    unfold C
    simp [show (4478976 * k + 4436126) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2218063) = 6718464 * k + 6654190 := by
    unfold C
    simp [show (2239488 * k + 2218063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6654190) = 3359232 * k + 3327095 := by
    unfold C
    simp [show (6718464 * k + 6654190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3327095) = 10077696 * k + 9981286 := by
    unfold C
    simp [show (3359232 * k + 3327095) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9981286) = 5038848 * k + 4990643 := by
    unfold C
    simp [show (10077696 * k + 9981286) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4990643) = 15116544 * k + 14971930 := by
    unfold C
    simp [show (5038848 * k + 4990643) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14971930) = 7558272 * k + 7485965 := by
    unfold C
    simp [show (15116544 * k + 14971930) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7485965) = 22674816 * k + 22457896 := by
    unfold C
    simp [show (7558272 * k + 7485965) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22457896) = 11337408 * k + 11228948 := by
    unfold C
    simp [show (22674816 * k + 22457896) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11228948) = 5668704 * k + 5614474 := by
    unfold C
    simp [show (11337408 * k + 11228948) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5614474) = 2834352 * k + 2807237 := by
    unfold C
    simp [show (5668704 * k + 5614474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2807237) = 8503056 * k + 8421712 := by
    unfold C
    simp [show (2834352 * k + 2807237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8421712) = 4251528 * k + 4210856 := by
    unfold C
    simp [show (8503056 * k + 8421712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4210856) = 2125764 * k + 2105428 := by
    unfold C
    simp [show (4251528 * k + 4210856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2105428) = 1062882 * k + 1052714 := by
    unfold C
    simp [show (2125764 * k + 2105428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1052714) = 531441 * k + 526357 := by
    unfold C
    simp [show (1062882 * k + 1052714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1038543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1038543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1038591 : ∀ k : Nat,
    iterate (1048576 * k + 1038591) 32 = 531441 * k + 526381 ∧
      531441 * k + 526381 < 1048576 * k + 1038591 := by
  intro k
  have h1 : C (1048576 * k + 1038591) = 3145728 * k + 3115774 := by
    unfold C
    simp [show (1048576 * k + 1038591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3115774) = 1572864 * k + 1557887 := by
    unfold C
    simp [show (3145728 * k + 3115774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1557887) = 4718592 * k + 4673662 := by
    unfold C
    simp [show (1572864 * k + 1557887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4673662) = 2359296 * k + 2336831 := by
    unfold C
    simp [show (4718592 * k + 4673662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2336831) = 7077888 * k + 7010494 := by
    unfold C
    simp [show (2359296 * k + 2336831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7010494) = 3538944 * k + 3505247 := by
    unfold C
    simp [show (7077888 * k + 7010494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3505247) = 10616832 * k + 10515742 := by
    unfold C
    simp [show (3538944 * k + 3505247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10515742) = 5308416 * k + 5257871 := by
    unfold C
    simp [show (10616832 * k + 10515742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5257871) = 15925248 * k + 15773614 := by
    unfold C
    simp [show (5308416 * k + 5257871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15773614) = 7962624 * k + 7886807 := by
    unfold C
    simp [show (15925248 * k + 15773614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7886807) = 23887872 * k + 23660422 := by
    unfold C
    simp [show (7962624 * k + 7886807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23660422) = 11943936 * k + 11830211 := by
    unfold C
    simp [show (23887872 * k + 23660422) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11830211) = 35831808 * k + 35490634 := by
    unfold C
    simp [show (11943936 * k + 11830211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35490634) = 17915904 * k + 17745317 := by
    unfold C
    simp [show (35831808 * k + 35490634) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17745317) = 53747712 * k + 53235952 := by
    unfold C
    simp [show (17915904 * k + 17745317) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53235952) = 26873856 * k + 26617976 := by
    unfold C
    simp [show (53747712 * k + 53235952) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26617976) = 13436928 * k + 13308988 := by
    unfold C
    simp [show (26873856 * k + 26617976) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13308988) = 6718464 * k + 6654494 := by
    unfold C
    simp [show (13436928 * k + 13308988) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6654494) = 3359232 * k + 3327247 := by
    unfold C
    simp [show (6718464 * k + 6654494) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3327247) = 10077696 * k + 9981742 := by
    unfold C
    simp [show (3359232 * k + 3327247) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9981742) = 5038848 * k + 4990871 := by
    unfold C
    simp [show (10077696 * k + 9981742) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4990871) = 15116544 * k + 14972614 := by
    unfold C
    simp [show (5038848 * k + 4990871) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14972614) = 7558272 * k + 7486307 := by
    unfold C
    simp [show (15116544 * k + 14972614) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7486307) = 22674816 * k + 22458922 := by
    unfold C
    simp [show (7558272 * k + 7486307) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22458922) = 11337408 * k + 11229461 := by
    unfold C
    simp [show (22674816 * k + 22458922) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11229461) = 34012224 * k + 33688384 := by
    unfold C
    simp [show (11337408 * k + 11229461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 33688384) = 17006112 * k + 16844192 := by
    unfold C
    simp [show (34012224 * k + 33688384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16844192) = 8503056 * k + 8422096 := by
    unfold C
    simp [show (17006112 * k + 16844192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8422096) = 4251528 * k + 4211048 := by
    unfold C
    simp [show (8503056 * k + 8422096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4211048) = 2125764 * k + 2105524 := by
    unfold C
    simp [show (4251528 * k + 4211048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2105524) = 1062882 * k + 1052762 := by
    unfold C
    simp [show (2125764 * k + 2105524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1052762) = 531441 * k + 526381 := by
    unfold C
    simp [show (1062882 * k + 1052762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1038591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1038591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1038951 : ∀ k : Nat,
    iterate (1048576 * k + 1038951) 32 = 531441 * k + 526564 ∧
      531441 * k + 526564 < 1048576 * k + 1038951 := by
  intro k
  have h1 : C (1048576 * k + 1038951) = 3145728 * k + 3116854 := by
    unfold C
    simp [show (1048576 * k + 1038951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3116854) = 1572864 * k + 1558427 := by
    unfold C
    simp [show (3145728 * k + 3116854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1558427) = 4718592 * k + 4675282 := by
    unfold C
    simp [show (1572864 * k + 1558427) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4675282) = 2359296 * k + 2337641 := by
    unfold C
    simp [show (4718592 * k + 4675282) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2337641) = 7077888 * k + 7012924 := by
    unfold C
    simp [show (2359296 * k + 2337641) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7012924) = 3538944 * k + 3506462 := by
    unfold C
    simp [show (7077888 * k + 7012924) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3506462) = 1769472 * k + 1753231 := by
    unfold C
    simp [show (3538944 * k + 3506462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1753231) = 5308416 * k + 5259694 := by
    unfold C
    simp [show (1769472 * k + 1753231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5259694) = 2654208 * k + 2629847 := by
    unfold C
    simp [show (5308416 * k + 5259694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2629847) = 7962624 * k + 7889542 := by
    unfold C
    simp [show (2654208 * k + 2629847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7889542) = 3981312 * k + 3944771 := by
    unfold C
    simp [show (7962624 * k + 7889542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3944771) = 11943936 * k + 11834314 := by
    unfold C
    simp [show (3981312 * k + 3944771) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11834314) = 5971968 * k + 5917157 := by
    unfold C
    simp [show (11943936 * k + 11834314) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5917157) = 17915904 * k + 17751472 := by
    unfold C
    simp [show (5971968 * k + 5917157) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17751472) = 8957952 * k + 8875736 := by
    unfold C
    simp [show (17915904 * k + 17751472) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8875736) = 4478976 * k + 4437868 := by
    unfold C
    simp [show (8957952 * k + 8875736) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4437868) = 2239488 * k + 2218934 := by
    unfold C
    simp [show (4478976 * k + 4437868) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2218934) = 1119744 * k + 1109467 := by
    unfold C
    simp [show (2239488 * k + 2218934) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1109467) = 3359232 * k + 3328402 := by
    unfold C
    simp [show (1119744 * k + 1109467) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3328402) = 1679616 * k + 1664201 := by
    unfold C
    simp [show (3359232 * k + 3328402) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1664201) = 5038848 * k + 4992604 := by
    unfold C
    simp [show (1679616 * k + 1664201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4992604) = 2519424 * k + 2496302 := by
    unfold C
    simp [show (5038848 * k + 4992604) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2496302) = 1259712 * k + 1248151 := by
    unfold C
    simp [show (2519424 * k + 2496302) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1248151) = 3779136 * k + 3744454 := by
    unfold C
    simp [show (1259712 * k + 1248151) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3744454) = 1889568 * k + 1872227 := by
    unfold C
    simp [show (3779136 * k + 3744454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1872227) = 5668704 * k + 5616682 := by
    unfold C
    simp [show (1889568 * k + 1872227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5616682) = 2834352 * k + 2808341 := by
    unfold C
    simp [show (5668704 * k + 5616682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2808341) = 8503056 * k + 8425024 := by
    unfold C
    simp [show (2834352 * k + 2808341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8425024) = 4251528 * k + 4212512 := by
    unfold C
    simp [show (8503056 * k + 8425024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4212512) = 2125764 * k + 2106256 := by
    unfold C
    simp [show (4251528 * k + 4212512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2106256) = 1062882 * k + 1053128 := by
    unfold C
    simp [show (2125764 * k + 2106256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1053128) = 531441 * k + 526564 := by
    unfold C
    simp [show (1062882 * k + 1053128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1038951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1038951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1039599 : ∀ k : Nat,
    iterate (1048576 * k + 1039599) 32 = 531441 * k + 526892 ∧
      531441 * k + 526892 < 1048576 * k + 1039599 := by
  intro k
  have h1 : C (1048576 * k + 1039599) = 3145728 * k + 3118798 := by
    unfold C
    simp [show (1048576 * k + 1039599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3118798) = 1572864 * k + 1559399 := by
    unfold C
    simp [show (3145728 * k + 3118798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1559399) = 4718592 * k + 4678198 := by
    unfold C
    simp [show (1572864 * k + 1559399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4678198) = 2359296 * k + 2339099 := by
    unfold C
    simp [show (4718592 * k + 4678198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2339099) = 7077888 * k + 7017298 := by
    unfold C
    simp [show (2359296 * k + 2339099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7017298) = 3538944 * k + 3508649 := by
    unfold C
    simp [show (7077888 * k + 7017298) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3508649) = 10616832 * k + 10525948 := by
    unfold C
    simp [show (3538944 * k + 3508649) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10525948) = 5308416 * k + 5262974 := by
    unfold C
    simp [show (10616832 * k + 10525948) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5262974) = 2654208 * k + 2631487 := by
    unfold C
    simp [show (5308416 * k + 5262974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2631487) = 7962624 * k + 7894462 := by
    unfold C
    simp [show (2654208 * k + 2631487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7894462) = 3981312 * k + 3947231 := by
    unfold C
    simp [show (7962624 * k + 7894462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3947231) = 11943936 * k + 11841694 := by
    unfold C
    simp [show (3981312 * k + 3947231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11841694) = 5971968 * k + 5920847 := by
    unfold C
    simp [show (11943936 * k + 11841694) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5920847) = 17915904 * k + 17762542 := by
    unfold C
    simp [show (5971968 * k + 5920847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17762542) = 8957952 * k + 8881271 := by
    unfold C
    simp [show (17915904 * k + 17762542) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8881271) = 26873856 * k + 26643814 := by
    unfold C
    simp [show (8957952 * k + 8881271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26643814) = 13436928 * k + 13321907 := by
    unfold C
    simp [show (26873856 * k + 26643814) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13321907) = 40310784 * k + 39965722 := by
    unfold C
    simp [show (13436928 * k + 13321907) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 39965722) = 20155392 * k + 19982861 := by
    unfold C
    simp [show (40310784 * k + 39965722) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19982861) = 60466176 * k + 59948584 := by
    unfold C
    simp [show (20155392 * k + 19982861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 59948584) = 30233088 * k + 29974292 := by
    unfold C
    simp [show (60466176 * k + 59948584) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29974292) = 15116544 * k + 14987146 := by
    unfold C
    simp [show (30233088 * k + 29974292) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14987146) = 7558272 * k + 7493573 := by
    unfold C
    simp [show (15116544 * k + 14987146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7493573) = 22674816 * k + 22480720 := by
    unfold C
    simp [show (7558272 * k + 7493573) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22480720) = 11337408 * k + 11240360 := by
    unfold C
    simp [show (22674816 * k + 22480720) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11240360) = 5668704 * k + 5620180 := by
    unfold C
    simp [show (11337408 * k + 11240360) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5620180) = 2834352 * k + 2810090 := by
    unfold C
    simp [show (5668704 * k + 5620180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2810090) = 1417176 * k + 1405045 := by
    unfold C
    simp [show (2834352 * k + 2810090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1405045) = 4251528 * k + 4215136 := by
    unfold C
    simp [show (1417176 * k + 1405045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4215136) = 2125764 * k + 2107568 := by
    unfold C
    simp [show (4251528 * k + 4215136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2107568) = 1062882 * k + 1053784 := by
    unfold C
    simp [show (2125764 * k + 2107568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1053784) = 531441 * k + 526892 := by
    unfold C
    simp [show (1062882 * k + 1053784) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1039599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1039599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1040379 : ∀ k : Nat,
    iterate (1048576 * k + 1040379) 32 = 531441 * k + 527288 ∧
      531441 * k + 527288 < 1048576 * k + 1040379 := by
  intro k
  have h1 : C (1048576 * k + 1040379) = 3145728 * k + 3121138 := by
    unfold C
    simp [show (1048576 * k + 1040379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3121138) = 1572864 * k + 1560569 := by
    unfold C
    simp [show (3145728 * k + 3121138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1560569) = 4718592 * k + 4681708 := by
    unfold C
    simp [show (1572864 * k + 1560569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4681708) = 2359296 * k + 2340854 := by
    unfold C
    simp [show (4718592 * k + 4681708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2340854) = 1179648 * k + 1170427 := by
    unfold C
    simp [show (2359296 * k + 2340854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1170427) = 3538944 * k + 3511282 := by
    unfold C
    simp [show (1179648 * k + 1170427) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3511282) = 1769472 * k + 1755641 := by
    unfold C
    simp [show (3538944 * k + 3511282) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1755641) = 5308416 * k + 5266924 := by
    unfold C
    simp [show (1769472 * k + 1755641) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5266924) = 2654208 * k + 2633462 := by
    unfold C
    simp [show (5308416 * k + 5266924) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2633462) = 1327104 * k + 1316731 := by
    unfold C
    simp [show (2654208 * k + 2633462) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1316731) = 3981312 * k + 3950194 := by
    unfold C
    simp [show (1327104 * k + 1316731) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3950194) = 1990656 * k + 1975097 := by
    unfold C
    simp [show (3981312 * k + 3950194) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1975097) = 5971968 * k + 5925292 := by
    unfold C
    simp [show (1990656 * k + 1975097) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5925292) = 2985984 * k + 2962646 := by
    unfold C
    simp [show (5971968 * k + 5925292) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2962646) = 1492992 * k + 1481323 := by
    unfold C
    simp [show (2985984 * k + 2962646) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1481323) = 4478976 * k + 4443970 := by
    unfold C
    simp [show (1492992 * k + 1481323) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4443970) = 2239488 * k + 2221985 := by
    unfold C
    simp [show (4478976 * k + 4443970) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2221985) = 6718464 * k + 6665956 := by
    unfold C
    simp [show (2239488 * k + 2221985) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6665956) = 3359232 * k + 3332978 := by
    unfold C
    simp [show (6718464 * k + 6665956) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3332978) = 1679616 * k + 1666489 := by
    unfold C
    simp [show (3359232 * k + 3332978) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1666489) = 5038848 * k + 4999468 := by
    unfold C
    simp [show (1679616 * k + 1666489) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4999468) = 2519424 * k + 2499734 := by
    unfold C
    simp [show (5038848 * k + 4999468) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2499734) = 1259712 * k + 1249867 := by
    unfold C
    simp [show (2519424 * k + 2499734) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1249867) = 3779136 * k + 3749602 := by
    unfold C
    simp [show (1259712 * k + 1249867) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3749602) = 1889568 * k + 1874801 := by
    unfold C
    simp [show (3779136 * k + 3749602) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1874801) = 5668704 * k + 5624404 := by
    unfold C
    simp [show (1889568 * k + 1874801) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5624404) = 2834352 * k + 2812202 := by
    unfold C
    simp [show (5668704 * k + 5624404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2812202) = 1417176 * k + 1406101 := by
    unfold C
    simp [show (2834352 * k + 2812202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1406101) = 4251528 * k + 4218304 := by
    unfold C
    simp [show (1417176 * k + 1406101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4218304) = 2125764 * k + 2109152 := by
    unfold C
    simp [show (4251528 * k + 4218304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2109152) = 1062882 * k + 1054576 := by
    unfold C
    simp [show (2125764 * k + 2109152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1054576) = 531441 * k + 527288 := by
    unfold C
    simp [show (1062882 * k + 1054576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1040379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1040379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1040539 : ∀ k : Nat,
    iterate (1048576 * k + 1040539) 32 = 531441 * k + 527369 ∧
      531441 * k + 527369 < 1048576 * k + 1040539 := by
  intro k
  have h1 : C (1048576 * k + 1040539) = 3145728 * k + 3121618 := by
    unfold C
    simp [show (1048576 * k + 1040539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3121618) = 1572864 * k + 1560809 := by
    unfold C
    simp [show (3145728 * k + 3121618) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1560809) = 4718592 * k + 4682428 := by
    unfold C
    simp [show (1572864 * k + 1560809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4682428) = 2359296 * k + 2341214 := by
    unfold C
    simp [show (4718592 * k + 4682428) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2341214) = 1179648 * k + 1170607 := by
    unfold C
    simp [show (2359296 * k + 2341214) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1170607) = 3538944 * k + 3511822 := by
    unfold C
    simp [show (1179648 * k + 1170607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3511822) = 1769472 * k + 1755911 := by
    unfold C
    simp [show (3538944 * k + 3511822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1755911) = 5308416 * k + 5267734 := by
    unfold C
    simp [show (1769472 * k + 1755911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5267734) = 2654208 * k + 2633867 := by
    unfold C
    simp [show (5308416 * k + 5267734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2633867) = 7962624 * k + 7901602 := by
    unfold C
    simp [show (2654208 * k + 2633867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7901602) = 3981312 * k + 3950801 := by
    unfold C
    simp [show (7962624 * k + 7901602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3950801) = 11943936 * k + 11852404 := by
    unfold C
    simp [show (3981312 * k + 3950801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11852404) = 5971968 * k + 5926202 := by
    unfold C
    simp [show (11943936 * k + 11852404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5926202) = 2985984 * k + 2963101 := by
    unfold C
    simp [show (5971968 * k + 5926202) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2963101) = 8957952 * k + 8889304 := by
    unfold C
    simp [show (2985984 * k + 2963101) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8889304) = 4478976 * k + 4444652 := by
    unfold C
    simp [show (8957952 * k + 8889304) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4444652) = 2239488 * k + 2222326 := by
    unfold C
    simp [show (4478976 * k + 4444652) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2222326) = 1119744 * k + 1111163 := by
    unfold C
    simp [show (2239488 * k + 2222326) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1111163) = 3359232 * k + 3333490 := by
    unfold C
    simp [show (1119744 * k + 1111163) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3333490) = 1679616 * k + 1666745 := by
    unfold C
    simp [show (3359232 * k + 3333490) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1666745) = 5038848 * k + 5000236 := by
    unfold C
    simp [show (1679616 * k + 1666745) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 5000236) = 2519424 * k + 2500118 := by
    unfold C
    simp [show (5038848 * k + 5000236) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2500118) = 1259712 * k + 1250059 := by
    unfold C
    simp [show (2519424 * k + 2500118) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1250059) = 3779136 * k + 3750178 := by
    unfold C
    simp [show (1259712 * k + 1250059) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3750178) = 1889568 * k + 1875089 := by
    unfold C
    simp [show (3779136 * k + 3750178) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1875089) = 5668704 * k + 5625268 := by
    unfold C
    simp [show (1889568 * k + 1875089) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5625268) = 2834352 * k + 2812634 := by
    unfold C
    simp [show (5668704 * k + 5625268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2812634) = 1417176 * k + 1406317 := by
    unfold C
    simp [show (2834352 * k + 2812634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1406317) = 4251528 * k + 4218952 := by
    unfold C
    simp [show (1417176 * k + 1406317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4218952) = 2125764 * k + 2109476 := by
    unfold C
    simp [show (4251528 * k + 4218952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2109476) = 1062882 * k + 1054738 := by
    unfold C
    simp [show (2125764 * k + 2109476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1054738) = 531441 * k + 527369 := by
    unfold C
    simp [show (1062882 * k + 1054738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1040539) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1040539)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1040871 : ∀ k : Nat,
    iterate (1048576 * k + 1040871) 32 = 531441 * k + 527537 ∧
      531441 * k + 527537 < 1048576 * k + 1040871 := by
  intro k
  have h1 : C (1048576 * k + 1040871) = 3145728 * k + 3122614 := by
    unfold C
    simp [show (1048576 * k + 1040871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3122614) = 1572864 * k + 1561307 := by
    unfold C
    simp [show (3145728 * k + 3122614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1561307) = 4718592 * k + 4683922 := by
    unfold C
    simp [show (1572864 * k + 1561307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4683922) = 2359296 * k + 2341961 := by
    unfold C
    simp [show (4718592 * k + 4683922) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2341961) = 7077888 * k + 7025884 := by
    unfold C
    simp [show (2359296 * k + 2341961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7025884) = 3538944 * k + 3512942 := by
    unfold C
    simp [show (7077888 * k + 7025884) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3512942) = 1769472 * k + 1756471 := by
    unfold C
    simp [show (3538944 * k + 3512942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1756471) = 5308416 * k + 5269414 := by
    unfold C
    simp [show (1769472 * k + 1756471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5269414) = 2654208 * k + 2634707 := by
    unfold C
    simp [show (5308416 * k + 5269414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2634707) = 7962624 * k + 7904122 := by
    unfold C
    simp [show (2654208 * k + 2634707) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7904122) = 3981312 * k + 3952061 := by
    unfold C
    simp [show (7962624 * k + 7904122) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3952061) = 11943936 * k + 11856184 := by
    unfold C
    simp [show (3981312 * k + 3952061) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11856184) = 5971968 * k + 5928092 := by
    unfold C
    simp [show (11943936 * k + 11856184) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5928092) = 2985984 * k + 2964046 := by
    unfold C
    simp [show (5971968 * k + 5928092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2964046) = 1492992 * k + 1482023 := by
    unfold C
    simp [show (2985984 * k + 2964046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1482023) = 4478976 * k + 4446070 := by
    unfold C
    simp [show (1492992 * k + 1482023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4446070) = 2239488 * k + 2223035 := by
    unfold C
    simp [show (4478976 * k + 4446070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2223035) = 6718464 * k + 6669106 := by
    unfold C
    simp [show (2239488 * k + 2223035) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6669106) = 3359232 * k + 3334553 := by
    unfold C
    simp [show (6718464 * k + 6669106) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3334553) = 10077696 * k + 10003660 := by
    unfold C
    simp [show (3359232 * k + 3334553) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10003660) = 5038848 * k + 5001830 := by
    unfold C
    simp [show (10077696 * k + 10003660) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5001830) = 2519424 * k + 2500915 := by
    unfold C
    simp [show (5038848 * k + 5001830) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2500915) = 7558272 * k + 7502746 := by
    unfold C
    simp [show (2519424 * k + 2500915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7502746) = 3779136 * k + 3751373 := by
    unfold C
    simp [show (7558272 * k + 7502746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3751373) = 11337408 * k + 11254120 := by
    unfold C
    simp [show (3779136 * k + 3751373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11254120) = 5668704 * k + 5627060 := by
    unfold C
    simp [show (11337408 * k + 11254120) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5627060) = 2834352 * k + 2813530 := by
    unfold C
    simp [show (5668704 * k + 5627060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2813530) = 1417176 * k + 1406765 := by
    unfold C
    simp [show (2834352 * k + 2813530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1406765) = 4251528 * k + 4220296 := by
    unfold C
    simp [show (1417176 * k + 1406765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4220296) = 2125764 * k + 2110148 := by
    unfold C
    simp [show (4251528 * k + 4220296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2110148) = 1062882 * k + 1055074 := by
    unfold C
    simp [show (2125764 * k + 2110148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1055074) = 531441 * k + 527537 := by
    unfold C
    simp [show (1062882 * k + 1055074) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1040871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1040871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1041147 : ∀ k : Nat,
    iterate (1048576 * k + 1041147) 32 = 531441 * k + 527677 ∧
      531441 * k + 527677 < 1048576 * k + 1041147 := by
  intro k
  have h1 : C (1048576 * k + 1041147) = 3145728 * k + 3123442 := by
    unfold C
    simp [show (1048576 * k + 1041147) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3123442) = 1572864 * k + 1561721 := by
    unfold C
    simp [show (3145728 * k + 3123442) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1561721) = 4718592 * k + 4685164 := by
    unfold C
    simp [show (1572864 * k + 1561721) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4685164) = 2359296 * k + 2342582 := by
    unfold C
    simp [show (4718592 * k + 4685164) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2342582) = 1179648 * k + 1171291 := by
    unfold C
    simp [show (2359296 * k + 2342582) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1171291) = 3538944 * k + 3513874 := by
    unfold C
    simp [show (1179648 * k + 1171291) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3513874) = 1769472 * k + 1756937 := by
    unfold C
    simp [show (3538944 * k + 3513874) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1756937) = 5308416 * k + 5270812 := by
    unfold C
    simp [show (1769472 * k + 1756937) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5270812) = 2654208 * k + 2635406 := by
    unfold C
    simp [show (5308416 * k + 5270812) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2635406) = 1327104 * k + 1317703 := by
    unfold C
    simp [show (2654208 * k + 2635406) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1317703) = 3981312 * k + 3953110 := by
    unfold C
    simp [show (1327104 * k + 1317703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3953110) = 1990656 * k + 1976555 := by
    unfold C
    simp [show (3981312 * k + 3953110) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1976555) = 5971968 * k + 5929666 := by
    unfold C
    simp [show (1990656 * k + 1976555) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5929666) = 2985984 * k + 2964833 := by
    unfold C
    simp [show (5971968 * k + 5929666) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2964833) = 8957952 * k + 8894500 := by
    unfold C
    simp [show (2985984 * k + 2964833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8894500) = 4478976 * k + 4447250 := by
    unfold C
    simp [show (8957952 * k + 8894500) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4447250) = 2239488 * k + 2223625 := by
    unfold C
    simp [show (4478976 * k + 4447250) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2223625) = 6718464 * k + 6670876 := by
    unfold C
    simp [show (2239488 * k + 2223625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6670876) = 3359232 * k + 3335438 := by
    unfold C
    simp [show (6718464 * k + 6670876) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3335438) = 1679616 * k + 1667719 := by
    unfold C
    simp [show (3359232 * k + 3335438) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1667719) = 5038848 * k + 5003158 := by
    unfold C
    simp [show (1679616 * k + 1667719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 5003158) = 2519424 * k + 2501579 := by
    unfold C
    simp [show (5038848 * k + 5003158) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2501579) = 7558272 * k + 7504738 := by
    unfold C
    simp [show (2519424 * k + 2501579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7504738) = 3779136 * k + 3752369 := by
    unfold C
    simp [show (7558272 * k + 7504738) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3752369) = 11337408 * k + 11257108 := by
    unfold C
    simp [show (3779136 * k + 3752369) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11257108) = 5668704 * k + 5628554 := by
    unfold C
    simp [show (11337408 * k + 11257108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5628554) = 2834352 * k + 2814277 := by
    unfold C
    simp [show (5668704 * k + 5628554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2814277) = 8503056 * k + 8442832 := by
    unfold C
    simp [show (2834352 * k + 2814277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8442832) = 4251528 * k + 4221416 := by
    unfold C
    simp [show (8503056 * k + 8442832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4221416) = 2125764 * k + 2110708 := by
    unfold C
    simp [show (4251528 * k + 4221416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2110708) = 1062882 * k + 1055354 := by
    unfold C
    simp [show (2125764 * k + 2110708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1055354) = 531441 * k + 527677 := by
    unfold C
    simp [show (1062882 * k + 1055354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1041147) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1041147)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1041179 : ∀ k : Nat,
    iterate (1048576 * k + 1041179) 32 = 531441 * k + 527693 ∧
      531441 * k + 527693 < 1048576 * k + 1041179 := by
  intro k
  have h1 : C (1048576 * k + 1041179) = 3145728 * k + 3123538 := by
    unfold C
    simp [show (1048576 * k + 1041179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3123538) = 1572864 * k + 1561769 := by
    unfold C
    simp [show (3145728 * k + 3123538) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1561769) = 4718592 * k + 4685308 := by
    unfold C
    simp [show (1572864 * k + 1561769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4685308) = 2359296 * k + 2342654 := by
    unfold C
    simp [show (4718592 * k + 4685308) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2342654) = 1179648 * k + 1171327 := by
    unfold C
    simp [show (2359296 * k + 2342654) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1171327) = 3538944 * k + 3513982 := by
    unfold C
    simp [show (1179648 * k + 1171327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3513982) = 1769472 * k + 1756991 := by
    unfold C
    simp [show (3538944 * k + 3513982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1756991) = 5308416 * k + 5270974 := by
    unfold C
    simp [show (1769472 * k + 1756991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5270974) = 2654208 * k + 2635487 := by
    unfold C
    simp [show (5308416 * k + 5270974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2635487) = 7962624 * k + 7906462 := by
    unfold C
    simp [show (2654208 * k + 2635487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7906462) = 3981312 * k + 3953231 := by
    unfold C
    simp [show (7962624 * k + 7906462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3953231) = 11943936 * k + 11859694 := by
    unfold C
    simp [show (3981312 * k + 3953231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11859694) = 5971968 * k + 5929847 := by
    unfold C
    simp [show (11943936 * k + 11859694) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5929847) = 17915904 * k + 17789542 := by
    unfold C
    simp [show (5971968 * k + 5929847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17789542) = 8957952 * k + 8894771 := by
    unfold C
    simp [show (17915904 * k + 17789542) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8894771) = 26873856 * k + 26684314 := by
    unfold C
    simp [show (8957952 * k + 8894771) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26684314) = 13436928 * k + 13342157 := by
    unfold C
    simp [show (26873856 * k + 26684314) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13342157) = 40310784 * k + 40026472 := by
    unfold C
    simp [show (13436928 * k + 13342157) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 40026472) = 20155392 * k + 20013236 := by
    unfold C
    simp [show (40310784 * k + 40026472) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 20013236) = 10077696 * k + 10006618 := by
    unfold C
    simp [show (20155392 * k + 20013236) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10006618) = 5038848 * k + 5003309 := by
    unfold C
    simp [show (10077696 * k + 10006618) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5003309) = 15116544 * k + 15009928 := by
    unfold C
    simp [show (5038848 * k + 5003309) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15009928) = 7558272 * k + 7504964 := by
    unfold C
    simp [show (15116544 * k + 15009928) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7504964) = 3779136 * k + 3752482 := by
    unfold C
    simp [show (7558272 * k + 7504964) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3752482) = 1889568 * k + 1876241 := by
    unfold C
    simp [show (3779136 * k + 3752482) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1876241) = 5668704 * k + 5628724 := by
    unfold C
    simp [show (1889568 * k + 1876241) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5628724) = 2834352 * k + 2814362 := by
    unfold C
    simp [show (5668704 * k + 5628724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2814362) = 1417176 * k + 1407181 := by
    unfold C
    simp [show (2834352 * k + 2814362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1407181) = 4251528 * k + 4221544 := by
    unfold C
    simp [show (1417176 * k + 1407181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4221544) = 2125764 * k + 2110772 := by
    unfold C
    simp [show (4251528 * k + 4221544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2110772) = 1062882 * k + 1055386 := by
    unfold C
    simp [show (2125764 * k + 2110772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1055386) = 531441 * k + 527693 := by
    unfold C
    simp [show (1062882 * k + 1055386) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1041179) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1041179)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1041663 : ∀ k : Nat,
    iterate (1048576 * k + 1041663) 32 = 531441 * k + 527938 ∧
      531441 * k + 527938 < 1048576 * k + 1041663 := by
  intro k
  have h1 : C (1048576 * k + 1041663) = 3145728 * k + 3124990 := by
    unfold C
    simp [show (1048576 * k + 1041663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3124990) = 1572864 * k + 1562495 := by
    unfold C
    simp [show (3145728 * k + 3124990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1562495) = 4718592 * k + 4687486 := by
    unfold C
    simp [show (1572864 * k + 1562495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4687486) = 2359296 * k + 2343743 := by
    unfold C
    simp [show (4718592 * k + 4687486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2343743) = 7077888 * k + 7031230 := by
    unfold C
    simp [show (2359296 * k + 2343743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7031230) = 3538944 * k + 3515615 := by
    unfold C
    simp [show (7077888 * k + 7031230) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3515615) = 10616832 * k + 10546846 := by
    unfold C
    simp [show (3538944 * k + 3515615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10546846) = 5308416 * k + 5273423 := by
    unfold C
    simp [show (10616832 * k + 10546846) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5273423) = 15925248 * k + 15820270 := by
    unfold C
    simp [show (5308416 * k + 5273423) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15820270) = 7962624 * k + 7910135 := by
    unfold C
    simp [show (15925248 * k + 15820270) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7910135) = 23887872 * k + 23730406 := by
    unfold C
    simp [show (7962624 * k + 7910135) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23730406) = 11943936 * k + 11865203 := by
    unfold C
    simp [show (23887872 * k + 23730406) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11865203) = 35831808 * k + 35595610 := by
    unfold C
    simp [show (11943936 * k + 11865203) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35595610) = 17915904 * k + 17797805 := by
    unfold C
    simp [show (35831808 * k + 35595610) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17797805) = 53747712 * k + 53393416 := by
    unfold C
    simp [show (17915904 * k + 17797805) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53393416) = 26873856 * k + 26696708 := by
    unfold C
    simp [show (53747712 * k + 53393416) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26696708) = 13436928 * k + 13348354 := by
    unfold C
    simp [show (26873856 * k + 26696708) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13348354) = 6718464 * k + 6674177 := by
    unfold C
    simp [show (13436928 * k + 13348354) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6674177) = 20155392 * k + 20022532 := by
    unfold C
    simp [show (6718464 * k + 6674177) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20022532) = 10077696 * k + 10011266 := by
    unfold C
    simp [show (20155392 * k + 20022532) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10011266) = 5038848 * k + 5005633 := by
    unfold C
    simp [show (10077696 * k + 10011266) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5005633) = 15116544 * k + 15016900 := by
    unfold C
    simp [show (5038848 * k + 5005633) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15016900) = 7558272 * k + 7508450 := by
    unfold C
    simp [show (15116544 * k + 15016900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7508450) = 3779136 * k + 3754225 := by
    unfold C
    simp [show (7558272 * k + 7508450) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3754225) = 11337408 * k + 11262676 := by
    unfold C
    simp [show (3779136 * k + 3754225) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11262676) = 5668704 * k + 5631338 := by
    unfold C
    simp [show (11337408 * k + 11262676) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5631338) = 2834352 * k + 2815669 := by
    unfold C
    simp [show (5668704 * k + 5631338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2815669) = 8503056 * k + 8447008 := by
    unfold C
    simp [show (2834352 * k + 2815669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8447008) = 4251528 * k + 4223504 := by
    unfold C
    simp [show (8503056 * k + 8447008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4223504) = 2125764 * k + 2111752 := by
    unfold C
    simp [show (4251528 * k + 4223504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2111752) = 1062882 * k + 1055876 := by
    unfold C
    simp [show (2125764 * k + 2111752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1055876) = 531441 * k + 527938 := by
    unfold C
    simp [show (1062882 * k + 1055876) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1041663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1041663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1041871 : ∀ k : Nat,
    iterate (1048576 * k + 1041871) 32 = 531441 * k + 528044 ∧
      531441 * k + 528044 < 1048576 * k + 1041871 := by
  intro k
  have h1 : C (1048576 * k + 1041871) = 3145728 * k + 3125614 := by
    unfold C
    simp [show (1048576 * k + 1041871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3125614) = 1572864 * k + 1562807 := by
    unfold C
    simp [show (3145728 * k + 3125614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1562807) = 4718592 * k + 4688422 := by
    unfold C
    simp [show (1572864 * k + 1562807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4688422) = 2359296 * k + 2344211 := by
    unfold C
    simp [show (4718592 * k + 4688422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2344211) = 7077888 * k + 7032634 := by
    unfold C
    simp [show (2359296 * k + 2344211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7032634) = 3538944 * k + 3516317 := by
    unfold C
    simp [show (7077888 * k + 7032634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3516317) = 10616832 * k + 10548952 := by
    unfold C
    simp [show (3538944 * k + 3516317) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10548952) = 5308416 * k + 5274476 := by
    unfold C
    simp [show (10616832 * k + 10548952) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5274476) = 2654208 * k + 2637238 := by
    unfold C
    simp [show (5308416 * k + 5274476) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2637238) = 1327104 * k + 1318619 := by
    unfold C
    simp [show (2654208 * k + 2637238) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1318619) = 3981312 * k + 3955858 := by
    unfold C
    simp [show (1327104 * k + 1318619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3955858) = 1990656 * k + 1977929 := by
    unfold C
    simp [show (3981312 * k + 3955858) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1977929) = 5971968 * k + 5933788 := by
    unfold C
    simp [show (1990656 * k + 1977929) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5933788) = 2985984 * k + 2966894 := by
    unfold C
    simp [show (5971968 * k + 5933788) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2966894) = 1492992 * k + 1483447 := by
    unfold C
    simp [show (2985984 * k + 2966894) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1483447) = 4478976 * k + 4450342 := by
    unfold C
    simp [show (1492992 * k + 1483447) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4450342) = 2239488 * k + 2225171 := by
    unfold C
    simp [show (4478976 * k + 4450342) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2225171) = 6718464 * k + 6675514 := by
    unfold C
    simp [show (2239488 * k + 2225171) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6675514) = 3359232 * k + 3337757 := by
    unfold C
    simp [show (6718464 * k + 6675514) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3337757) = 10077696 * k + 10013272 := by
    unfold C
    simp [show (3359232 * k + 3337757) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10013272) = 5038848 * k + 5006636 := by
    unfold C
    simp [show (10077696 * k + 10013272) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5006636) = 2519424 * k + 2503318 := by
    unfold C
    simp [show (5038848 * k + 5006636) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2503318) = 1259712 * k + 1251659 := by
    unfold C
    simp [show (2519424 * k + 2503318) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1251659) = 3779136 * k + 3754978 := by
    unfold C
    simp [show (1259712 * k + 1251659) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3754978) = 1889568 * k + 1877489 := by
    unfold C
    simp [show (3779136 * k + 3754978) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1877489) = 5668704 * k + 5632468 := by
    unfold C
    simp [show (1889568 * k + 1877489) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5632468) = 2834352 * k + 2816234 := by
    unfold C
    simp [show (5668704 * k + 5632468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2816234) = 1417176 * k + 1408117 := by
    unfold C
    simp [show (2834352 * k + 2816234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1408117) = 4251528 * k + 4224352 := by
    unfold C
    simp [show (1417176 * k + 1408117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4224352) = 2125764 * k + 2112176 := by
    unfold C
    simp [show (4251528 * k + 4224352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2112176) = 1062882 * k + 1056088 := by
    unfold C
    simp [show (2125764 * k + 2112176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1056088) = 531441 * k + 528044 := by
    unfold C
    simp [show (1062882 * k + 1056088) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1041871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1041871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1042639 : ∀ k : Nat,
    iterate (1048576 * k + 1042639) 32 = 531441 * k + 528433 ∧
      531441 * k + 528433 < 1048576 * k + 1042639 := by
  intro k
  have h1 : C (1048576 * k + 1042639) = 3145728 * k + 3127918 := by
    unfold C
    simp [show (1048576 * k + 1042639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3127918) = 1572864 * k + 1563959 := by
    unfold C
    simp [show (3145728 * k + 3127918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1563959) = 4718592 * k + 4691878 := by
    unfold C
    simp [show (1572864 * k + 1563959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4691878) = 2359296 * k + 2345939 := by
    unfold C
    simp [show (4718592 * k + 4691878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2345939) = 7077888 * k + 7037818 := by
    unfold C
    simp [show (2359296 * k + 2345939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7037818) = 3538944 * k + 3518909 := by
    unfold C
    simp [show (7077888 * k + 7037818) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3518909) = 10616832 * k + 10556728 := by
    unfold C
    simp [show (3538944 * k + 3518909) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10556728) = 5308416 * k + 5278364 := by
    unfold C
    simp [show (10616832 * k + 10556728) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5278364) = 2654208 * k + 2639182 := by
    unfold C
    simp [show (5308416 * k + 5278364) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2639182) = 1327104 * k + 1319591 := by
    unfold C
    simp [show (2654208 * k + 2639182) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1319591) = 3981312 * k + 3958774 := by
    unfold C
    simp [show (1327104 * k + 1319591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3958774) = 1990656 * k + 1979387 := by
    unfold C
    simp [show (3981312 * k + 3958774) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1979387) = 5971968 * k + 5938162 := by
    unfold C
    simp [show (1990656 * k + 1979387) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5938162) = 2985984 * k + 2969081 := by
    unfold C
    simp [show (5971968 * k + 5938162) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2969081) = 8957952 * k + 8907244 := by
    unfold C
    simp [show (2985984 * k + 2969081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8907244) = 4478976 * k + 4453622 := by
    unfold C
    simp [show (8957952 * k + 8907244) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4453622) = 2239488 * k + 2226811 := by
    unfold C
    simp [show (4478976 * k + 4453622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2226811) = 6718464 * k + 6680434 := by
    unfold C
    simp [show (2239488 * k + 2226811) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6680434) = 3359232 * k + 3340217 := by
    unfold C
    simp [show (6718464 * k + 6680434) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3340217) = 10077696 * k + 10020652 := by
    unfold C
    simp [show (3359232 * k + 3340217) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10020652) = 5038848 * k + 5010326 := by
    unfold C
    simp [show (10077696 * k + 10020652) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5010326) = 2519424 * k + 2505163 := by
    unfold C
    simp [show (5038848 * k + 5010326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2505163) = 7558272 * k + 7515490 := by
    unfold C
    simp [show (2519424 * k + 2505163) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7515490) = 3779136 * k + 3757745 := by
    unfold C
    simp [show (7558272 * k + 7515490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3757745) = 11337408 * k + 11273236 := by
    unfold C
    simp [show (3779136 * k + 3757745) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11273236) = 5668704 * k + 5636618 := by
    unfold C
    simp [show (11337408 * k + 11273236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5636618) = 2834352 * k + 2818309 := by
    unfold C
    simp [show (5668704 * k + 5636618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2818309) = 8503056 * k + 8454928 := by
    unfold C
    simp [show (2834352 * k + 2818309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8454928) = 4251528 * k + 4227464 := by
    unfold C
    simp [show (8503056 * k + 8454928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4227464) = 2125764 * k + 2113732 := by
    unfold C
    simp [show (4251528 * k + 4227464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2113732) = 1062882 * k + 1056866 := by
    unfold C
    simp [show (2125764 * k + 2113732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1056866) = 531441 * k + 528433 := by
    unfold C
    simp [show (1062882 * k + 1056866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1042639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1042639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1042895 : ∀ k : Nat,
    iterate (1048576 * k + 1042895) 32 = 531441 * k + 528563 ∧
      531441 * k + 528563 < 1048576 * k + 1042895 := by
  intro k
  have h1 : C (1048576 * k + 1042895) = 3145728 * k + 3128686 := by
    unfold C
    simp [show (1048576 * k + 1042895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3128686) = 1572864 * k + 1564343 := by
    unfold C
    simp [show (3145728 * k + 3128686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1564343) = 4718592 * k + 4693030 := by
    unfold C
    simp [show (1572864 * k + 1564343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4693030) = 2359296 * k + 2346515 := by
    unfold C
    simp [show (4718592 * k + 4693030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2346515) = 7077888 * k + 7039546 := by
    unfold C
    simp [show (2359296 * k + 2346515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7039546) = 3538944 * k + 3519773 := by
    unfold C
    simp [show (7077888 * k + 7039546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3519773) = 10616832 * k + 10559320 := by
    unfold C
    simp [show (3538944 * k + 3519773) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10559320) = 5308416 * k + 5279660 := by
    unfold C
    simp [show (10616832 * k + 10559320) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5279660) = 2654208 * k + 2639830 := by
    unfold C
    simp [show (5308416 * k + 5279660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2639830) = 1327104 * k + 1319915 := by
    unfold C
    simp [show (2654208 * k + 2639830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1319915) = 3981312 * k + 3959746 := by
    unfold C
    simp [show (1327104 * k + 1319915) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3959746) = 1990656 * k + 1979873 := by
    unfold C
    simp [show (3981312 * k + 3959746) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1979873) = 5971968 * k + 5939620 := by
    unfold C
    simp [show (1990656 * k + 1979873) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5939620) = 2985984 * k + 2969810 := by
    unfold C
    simp [show (5971968 * k + 5939620) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2969810) = 1492992 * k + 1484905 := by
    unfold C
    simp [show (2985984 * k + 2969810) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1484905) = 4478976 * k + 4454716 := by
    unfold C
    simp [show (1492992 * k + 1484905) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4454716) = 2239488 * k + 2227358 := by
    unfold C
    simp [show (4478976 * k + 4454716) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2227358) = 1119744 * k + 1113679 := by
    unfold C
    simp [show (2239488 * k + 2227358) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1113679) = 3359232 * k + 3341038 := by
    unfold C
    simp [show (1119744 * k + 1113679) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3341038) = 1679616 * k + 1670519 := by
    unfold C
    simp [show (3359232 * k + 3341038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1670519) = 5038848 * k + 5011558 := by
    unfold C
    simp [show (1679616 * k + 1670519) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 5011558) = 2519424 * k + 2505779 := by
    unfold C
    simp [show (5038848 * k + 5011558) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2505779) = 7558272 * k + 7517338 := by
    unfold C
    simp [show (2519424 * k + 2505779) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7517338) = 3779136 * k + 3758669 := by
    unfold C
    simp [show (7558272 * k + 7517338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3758669) = 11337408 * k + 11276008 := by
    unfold C
    simp [show (3779136 * k + 3758669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11276008) = 5668704 * k + 5638004 := by
    unfold C
    simp [show (11337408 * k + 11276008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5638004) = 2834352 * k + 2819002 := by
    unfold C
    simp [show (5668704 * k + 5638004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2819002) = 1417176 * k + 1409501 := by
    unfold C
    simp [show (2834352 * k + 2819002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1409501) = 4251528 * k + 4228504 := by
    unfold C
    simp [show (1417176 * k + 1409501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4228504) = 2125764 * k + 2114252 := by
    unfold C
    simp [show (4251528 * k + 4228504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2114252) = 1062882 * k + 1057126 := by
    unfold C
    simp [show (2125764 * k + 2114252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057126) = 531441 * k + 528563 := by
    unfold C
    simp [show (1062882 * k + 1057126) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1042895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1042895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1043231 : ∀ k : Nat,
    iterate (1048576 * k + 1043231) 32 = 531441 * k + 528733 ∧
      531441 * k + 528733 < 1048576 * k + 1043231 := by
  intro k
  have h1 : C (1048576 * k + 1043231) = 3145728 * k + 3129694 := by
    unfold C
    simp [show (1048576 * k + 1043231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3129694) = 1572864 * k + 1564847 := by
    unfold C
    simp [show (3145728 * k + 3129694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1564847) = 4718592 * k + 4694542 := by
    unfold C
    simp [show (1572864 * k + 1564847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4694542) = 2359296 * k + 2347271 := by
    unfold C
    simp [show (4718592 * k + 4694542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2347271) = 7077888 * k + 7041814 := by
    unfold C
    simp [show (2359296 * k + 2347271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7041814) = 3538944 * k + 3520907 := by
    unfold C
    simp [show (7077888 * k + 7041814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3520907) = 10616832 * k + 10562722 := by
    unfold C
    simp [show (3538944 * k + 3520907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10562722) = 5308416 * k + 5281361 := by
    unfold C
    simp [show (10616832 * k + 10562722) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5281361) = 15925248 * k + 15844084 := by
    unfold C
    simp [show (5308416 * k + 5281361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15844084) = 7962624 * k + 7922042 := by
    unfold C
    simp [show (15925248 * k + 15844084) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7922042) = 3981312 * k + 3961021 := by
    unfold C
    simp [show (7962624 * k + 7922042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3961021) = 11943936 * k + 11883064 := by
    unfold C
    simp [show (3981312 * k + 3961021) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11883064) = 5971968 * k + 5941532 := by
    unfold C
    simp [show (11943936 * k + 11883064) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5941532) = 2985984 * k + 2970766 := by
    unfold C
    simp [show (5971968 * k + 5941532) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2970766) = 1492992 * k + 1485383 := by
    unfold C
    simp [show (2985984 * k + 2970766) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1485383) = 4478976 * k + 4456150 := by
    unfold C
    simp [show (1492992 * k + 1485383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4456150) = 2239488 * k + 2228075 := by
    unfold C
    simp [show (4478976 * k + 4456150) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2228075) = 6718464 * k + 6684226 := by
    unfold C
    simp [show (2239488 * k + 2228075) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6684226) = 3359232 * k + 3342113 := by
    unfold C
    simp [show (6718464 * k + 6684226) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3342113) = 10077696 * k + 10026340 := by
    unfold C
    simp [show (3359232 * k + 3342113) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10026340) = 5038848 * k + 5013170 := by
    unfold C
    simp [show (10077696 * k + 10026340) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5013170) = 2519424 * k + 2506585 := by
    unfold C
    simp [show (5038848 * k + 5013170) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2506585) = 7558272 * k + 7519756 := by
    unfold C
    simp [show (2519424 * k + 2506585) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7519756) = 3779136 * k + 3759878 := by
    unfold C
    simp [show (7558272 * k + 7519756) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3759878) = 1889568 * k + 1879939 := by
    unfold C
    simp [show (3779136 * k + 3759878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1879939) = 5668704 * k + 5639818 := by
    unfold C
    simp [show (1889568 * k + 1879939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5639818) = 2834352 * k + 2819909 := by
    unfold C
    simp [show (5668704 * k + 5639818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2819909) = 8503056 * k + 8459728 := by
    unfold C
    simp [show (2834352 * k + 2819909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8459728) = 4251528 * k + 4229864 := by
    unfold C
    simp [show (8503056 * k + 8459728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4229864) = 2125764 * k + 2114932 := by
    unfold C
    simp [show (4251528 * k + 4229864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2114932) = 1062882 * k + 1057466 := by
    unfold C
    simp [show (2125764 * k + 2114932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057466) = 531441 * k + 528733 := by
    unfold C
    simp [show (1062882 * k + 1057466) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1043231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1043231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1043263 : ∀ k : Nat,
    iterate (1048576 * k + 1043263) 32 = 531441 * k + 528749 ∧
      531441 * k + 528749 < 1048576 * k + 1043263 := by
  intro k
  have h1 : C (1048576 * k + 1043263) = 3145728 * k + 3129790 := by
    unfold C
    simp [show (1048576 * k + 1043263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3129790) = 1572864 * k + 1564895 := by
    unfold C
    simp [show (3145728 * k + 3129790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1564895) = 4718592 * k + 4694686 := by
    unfold C
    simp [show (1572864 * k + 1564895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4694686) = 2359296 * k + 2347343 := by
    unfold C
    simp [show (4718592 * k + 4694686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2347343) = 7077888 * k + 7042030 := by
    unfold C
    simp [show (2359296 * k + 2347343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7042030) = 3538944 * k + 3521015 := by
    unfold C
    simp [show (7077888 * k + 7042030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3521015) = 10616832 * k + 10563046 := by
    unfold C
    simp [show (3538944 * k + 3521015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10563046) = 5308416 * k + 5281523 := by
    unfold C
    simp [show (10616832 * k + 10563046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5281523) = 15925248 * k + 15844570 := by
    unfold C
    simp [show (5308416 * k + 5281523) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15844570) = 7962624 * k + 7922285 := by
    unfold C
    simp [show (15925248 * k + 15844570) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7922285) = 23887872 * k + 23766856 := by
    unfold C
    simp [show (7962624 * k + 7922285) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23766856) = 11943936 * k + 11883428 := by
    unfold C
    simp [show (23887872 * k + 23766856) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11883428) = 5971968 * k + 5941714 := by
    unfold C
    simp [show (11943936 * k + 11883428) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5941714) = 2985984 * k + 2970857 := by
    unfold C
    simp [show (5971968 * k + 5941714) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2970857) = 8957952 * k + 8912572 := by
    unfold C
    simp [show (2985984 * k + 2970857) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8912572) = 4478976 * k + 4456286 := by
    unfold C
    simp [show (8957952 * k + 8912572) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4456286) = 2239488 * k + 2228143 := by
    unfold C
    simp [show (4478976 * k + 4456286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2228143) = 6718464 * k + 6684430 := by
    unfold C
    simp [show (2239488 * k + 2228143) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6684430) = 3359232 * k + 3342215 := by
    unfold C
    simp [show (6718464 * k + 6684430) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3342215) = 10077696 * k + 10026646 := by
    unfold C
    simp [show (3359232 * k + 3342215) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10026646) = 5038848 * k + 5013323 := by
    unfold C
    simp [show (10077696 * k + 10026646) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5013323) = 15116544 * k + 15039970 := by
    unfold C
    simp [show (5038848 * k + 5013323) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15039970) = 7558272 * k + 7519985 := by
    unfold C
    simp [show (15116544 * k + 15039970) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7519985) = 22674816 * k + 22559956 := by
    unfold C
    simp [show (7558272 * k + 7519985) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22559956) = 11337408 * k + 11279978 := by
    unfold C
    simp [show (22674816 * k + 22559956) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11279978) = 5668704 * k + 5639989 := by
    unfold C
    simp [show (11337408 * k + 11279978) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5639989) = 17006112 * k + 16919968 := by
    unfold C
    simp [show (5668704 * k + 5639989) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16919968) = 8503056 * k + 8459984 := by
    unfold C
    simp [show (17006112 * k + 16919968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8459984) = 4251528 * k + 4229992 := by
    unfold C
    simp [show (8503056 * k + 8459984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4229992) = 2125764 * k + 2114996 := by
    unfold C
    simp [show (4251528 * k + 4229992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2114996) = 1062882 * k + 1057498 := by
    unfold C
    simp [show (2125764 * k + 2114996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057498) = 531441 * k + 528749 := by
    unfold C
    simp [show (1062882 * k + 1057498) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1043263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1043263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1043559 : ∀ k : Nat,
    iterate (1048576 * k + 1043559) 32 = 531441 * k + 528899 ∧
      531441 * k + 528899 < 1048576 * k + 1043559 := by
  intro k
  have h1 : C (1048576 * k + 1043559) = 3145728 * k + 3130678 := by
    unfold C
    simp [show (1048576 * k + 1043559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3130678) = 1572864 * k + 1565339 := by
    unfold C
    simp [show (3145728 * k + 3130678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1565339) = 4718592 * k + 4696018 := by
    unfold C
    simp [show (1572864 * k + 1565339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4696018) = 2359296 * k + 2348009 := by
    unfold C
    simp [show (4718592 * k + 4696018) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2348009) = 7077888 * k + 7044028 := by
    unfold C
    simp [show (2359296 * k + 2348009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7044028) = 3538944 * k + 3522014 := by
    unfold C
    simp [show (7077888 * k + 7044028) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3522014) = 1769472 * k + 1761007 := by
    unfold C
    simp [show (3538944 * k + 3522014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1761007) = 5308416 * k + 5283022 := by
    unfold C
    simp [show (1769472 * k + 1761007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5283022) = 2654208 * k + 2641511 := by
    unfold C
    simp [show (5308416 * k + 5283022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2641511) = 7962624 * k + 7924534 := by
    unfold C
    simp [show (2654208 * k + 2641511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7924534) = 3981312 * k + 3962267 := by
    unfold C
    simp [show (7962624 * k + 7924534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3962267) = 11943936 * k + 11886802 := by
    unfold C
    simp [show (3981312 * k + 3962267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11886802) = 5971968 * k + 5943401 := by
    unfold C
    simp [show (11943936 * k + 11886802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5943401) = 17915904 * k + 17830204 := by
    unfold C
    simp [show (5971968 * k + 5943401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17830204) = 8957952 * k + 8915102 := by
    unfold C
    simp [show (17915904 * k + 17830204) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8915102) = 4478976 * k + 4457551 := by
    unfold C
    simp [show (8957952 * k + 8915102) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4457551) = 13436928 * k + 13372654 := by
    unfold C
    simp [show (4478976 * k + 4457551) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13372654) = 6718464 * k + 6686327 := by
    unfold C
    simp [show (13436928 * k + 13372654) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6686327) = 20155392 * k + 20058982 := by
    unfold C
    simp [show (6718464 * k + 6686327) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20058982) = 10077696 * k + 10029491 := by
    unfold C
    simp [show (20155392 * k + 20058982) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10029491) = 30233088 * k + 30088474 := by
    unfold C
    simp [show (10077696 * k + 10029491) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30088474) = 15116544 * k + 15044237 := by
    unfold C
    simp [show (30233088 * k + 30088474) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15044237) = 45349632 * k + 45132712 := by
    unfold C
    simp [show (15116544 * k + 15044237) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 45132712) = 22674816 * k + 22566356 := by
    unfold C
    simp [show (45349632 * k + 45132712) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22566356) = 11337408 * k + 11283178 := by
    unfold C
    simp [show (22674816 * k + 22566356) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11283178) = 5668704 * k + 5641589 := by
    unfold C
    simp [show (11337408 * k + 11283178) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5641589) = 17006112 * k + 16924768 := by
    unfold C
    simp [show (5668704 * k + 5641589) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16924768) = 8503056 * k + 8462384 := by
    unfold C
    simp [show (17006112 * k + 16924768) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8462384) = 4251528 * k + 4231192 := by
    unfold C
    simp [show (8503056 * k + 8462384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4231192) = 2125764 * k + 2115596 := by
    unfold C
    simp [show (4251528 * k + 4231192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2115596) = 1062882 * k + 1057798 := by
    unfold C
    simp [show (2125764 * k + 2115596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057798) = 531441 * k + 528899 := by
    unfold C
    simp [show (1062882 * k + 1057798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1043559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1043559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard132
