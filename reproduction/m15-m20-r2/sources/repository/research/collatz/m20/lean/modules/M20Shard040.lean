import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard040

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_298703 : ∀ k : Nat,
    iterate (1048576 * k + 298703) 32 = 531441 * k + 151390 ∧
      531441 * k + 151390 < 1048576 * k + 298703 := by
  intro k
  have h1 : C (1048576 * k + 298703) = 3145728 * k + 896110 := by
    unfold C
    simp [show (1048576 * k + 298703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 896110) = 1572864 * k + 448055 := by
    unfold C
    simp [show (3145728 * k + 896110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 448055) = 4718592 * k + 1344166 := by
    unfold C
    simp [show (1572864 * k + 448055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1344166) = 2359296 * k + 672083 := by
    unfold C
    simp [show (4718592 * k + 1344166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 672083) = 7077888 * k + 2016250 := by
    unfold C
    simp [show (2359296 * k + 672083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2016250) = 3538944 * k + 1008125 := by
    unfold C
    simp [show (7077888 * k + 2016250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1008125) = 10616832 * k + 3024376 := by
    unfold C
    simp [show (3538944 * k + 1008125) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3024376) = 5308416 * k + 1512188 := by
    unfold C
    simp [show (10616832 * k + 3024376) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1512188) = 2654208 * k + 756094 := by
    unfold C
    simp [show (5308416 * k + 1512188) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 756094) = 1327104 * k + 378047 := by
    unfold C
    simp [show (2654208 * k + 756094) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 378047) = 3981312 * k + 1134142 := by
    unfold C
    simp [show (1327104 * k + 378047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1134142) = 1990656 * k + 567071 := by
    unfold C
    simp [show (3981312 * k + 1134142) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 567071) = 5971968 * k + 1701214 := by
    unfold C
    simp [show (1990656 * k + 567071) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1701214) = 2985984 * k + 850607 := by
    unfold C
    simp [show (5971968 * k + 1701214) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 850607) = 8957952 * k + 2551822 := by
    unfold C
    simp [show (2985984 * k + 850607) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2551822) = 4478976 * k + 1275911 := by
    unfold C
    simp [show (8957952 * k + 2551822) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1275911) = 13436928 * k + 3827734 := by
    unfold C
    simp [show (4478976 * k + 1275911) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3827734) = 6718464 * k + 1913867 := by
    unfold C
    simp [show (13436928 * k + 3827734) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1913867) = 20155392 * k + 5741602 := by
    unfold C
    simp [show (6718464 * k + 1913867) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5741602) = 10077696 * k + 2870801 := by
    unfold C
    simp [show (20155392 * k + 5741602) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2870801) = 30233088 * k + 8612404 := by
    unfold C
    simp [show (10077696 * k + 2870801) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8612404) = 15116544 * k + 4306202 := by
    unfold C
    simp [show (30233088 * k + 8612404) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4306202) = 7558272 * k + 2153101 := by
    unfold C
    simp [show (15116544 * k + 4306202) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2153101) = 22674816 * k + 6459304 := by
    unfold C
    simp [show (7558272 * k + 2153101) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6459304) = 11337408 * k + 3229652 := by
    unfold C
    simp [show (22674816 * k + 6459304) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3229652) = 5668704 * k + 1614826 := by
    unfold C
    simp [show (11337408 * k + 3229652) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1614826) = 2834352 * k + 807413 := by
    unfold C
    simp [show (5668704 * k + 1614826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 807413) = 8503056 * k + 2422240 := by
    unfold C
    simp [show (2834352 * k + 807413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2422240) = 4251528 * k + 1211120 := by
    unfold C
    simp [show (8503056 * k + 2422240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1211120) = 2125764 * k + 605560 := by
    unfold C
    simp [show (4251528 * k + 1211120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 605560) = 1062882 * k + 302780 := by
    unfold C
    simp [show (2125764 * k + 605560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 302780) = 531441 * k + 151390 := by
    unfold C
    simp [show (1062882 * k + 302780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 298703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 298703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_298751 : ∀ k : Nat,
    iterate (1048576 * k + 298751) 32 = 531441 * k + 151414 ∧
      531441 * k + 151414 < 1048576 * k + 298751 := by
  intro k
  have h1 : C (1048576 * k + 298751) = 3145728 * k + 896254 := by
    unfold C
    simp [show (1048576 * k + 298751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 896254) = 1572864 * k + 448127 := by
    unfold C
    simp [show (3145728 * k + 896254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 448127) = 4718592 * k + 1344382 := by
    unfold C
    simp [show (1572864 * k + 448127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1344382) = 2359296 * k + 672191 := by
    unfold C
    simp [show (4718592 * k + 1344382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 672191) = 7077888 * k + 2016574 := by
    unfold C
    simp [show (2359296 * k + 672191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2016574) = 3538944 * k + 1008287 := by
    unfold C
    simp [show (7077888 * k + 2016574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1008287) = 10616832 * k + 3024862 := by
    unfold C
    simp [show (3538944 * k + 1008287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3024862) = 5308416 * k + 1512431 := by
    unfold C
    simp [show (10616832 * k + 3024862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1512431) = 15925248 * k + 4537294 := by
    unfold C
    simp [show (5308416 * k + 1512431) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4537294) = 7962624 * k + 2268647 := by
    unfold C
    simp [show (15925248 * k + 4537294) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2268647) = 23887872 * k + 6805942 := by
    unfold C
    simp [show (7962624 * k + 2268647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6805942) = 11943936 * k + 3402971 := by
    unfold C
    simp [show (23887872 * k + 6805942) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3402971) = 35831808 * k + 10208914 := by
    unfold C
    simp [show (11943936 * k + 3402971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10208914) = 17915904 * k + 5104457 := by
    unfold C
    simp [show (35831808 * k + 10208914) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5104457) = 53747712 * k + 15313372 := by
    unfold C
    simp [show (17915904 * k + 5104457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15313372) = 26873856 * k + 7656686 := by
    unfold C
    simp [show (53747712 * k + 15313372) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7656686) = 13436928 * k + 3828343 := by
    unfold C
    simp [show (26873856 * k + 7656686) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3828343) = 40310784 * k + 11485030 := by
    unfold C
    simp [show (13436928 * k + 3828343) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11485030) = 20155392 * k + 5742515 := by
    unfold C
    simp [show (40310784 * k + 11485030) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5742515) = 60466176 * k + 17227546 := by
    unfold C
    simp [show (20155392 * k + 5742515) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 17227546) = 30233088 * k + 8613773 := by
    unfold C
    simp [show (60466176 * k + 17227546) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8613773) = 90699264 * k + 25841320 := by
    unfold C
    simp [show (30233088 * k + 8613773) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 25841320) = 45349632 * k + 12920660 := by
    unfold C
    simp [show (90699264 * k + 25841320) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 12920660) = 22674816 * k + 6460330 := by
    unfold C
    simp [show (45349632 * k + 12920660) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6460330) = 11337408 * k + 3230165 := by
    unfold C
    simp [show (22674816 * k + 6460330) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3230165) = 34012224 * k + 9690496 := by
    unfold C
    simp [show (11337408 * k + 3230165) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9690496) = 17006112 * k + 4845248 := by
    unfold C
    simp [show (34012224 * k + 9690496) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4845248) = 8503056 * k + 2422624 := by
    unfold C
    simp [show (17006112 * k + 4845248) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2422624) = 4251528 * k + 1211312 := by
    unfold C
    simp [show (8503056 * k + 2422624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1211312) = 2125764 * k + 605656 := by
    unfold C
    simp [show (4251528 * k + 1211312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 605656) = 1062882 * k + 302828 := by
    unfold C
    simp [show (2125764 * k + 605656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 302828) = 531441 * k + 151414 := by
    unfold C
    simp [show (1062882 * k + 302828) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 298751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 298751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299167 : ∀ k : Nat,
    iterate (1048576 * k + 299167) 32 = 531441 * k + 151625 ∧
      531441 * k + 151625 < 1048576 * k + 299167 := by
  intro k
  have h1 : C (1048576 * k + 299167) = 3145728 * k + 897502 := by
    unfold C
    simp [show (1048576 * k + 299167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 897502) = 1572864 * k + 448751 := by
    unfold C
    simp [show (3145728 * k + 897502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 448751) = 4718592 * k + 1346254 := by
    unfold C
    simp [show (1572864 * k + 448751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1346254) = 2359296 * k + 673127 := by
    unfold C
    simp [show (4718592 * k + 1346254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 673127) = 7077888 * k + 2019382 := by
    unfold C
    simp [show (2359296 * k + 673127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2019382) = 3538944 * k + 1009691 := by
    unfold C
    simp [show (7077888 * k + 2019382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1009691) = 10616832 * k + 3029074 := by
    unfold C
    simp [show (3538944 * k + 1009691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3029074) = 5308416 * k + 1514537 := by
    unfold C
    simp [show (10616832 * k + 3029074) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1514537) = 15925248 * k + 4543612 := by
    unfold C
    simp [show (5308416 * k + 1514537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4543612) = 7962624 * k + 2271806 := by
    unfold C
    simp [show (15925248 * k + 4543612) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2271806) = 3981312 * k + 1135903 := by
    unfold C
    simp [show (7962624 * k + 2271806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1135903) = 11943936 * k + 3407710 := by
    unfold C
    simp [show (3981312 * k + 1135903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3407710) = 5971968 * k + 1703855 := by
    unfold C
    simp [show (11943936 * k + 3407710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1703855) = 17915904 * k + 5111566 := by
    unfold C
    simp [show (5971968 * k + 1703855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5111566) = 8957952 * k + 2555783 := by
    unfold C
    simp [show (17915904 * k + 5111566) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2555783) = 26873856 * k + 7667350 := by
    unfold C
    simp [show (8957952 * k + 2555783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7667350) = 13436928 * k + 3833675 := by
    unfold C
    simp [show (26873856 * k + 7667350) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3833675) = 40310784 * k + 11501026 := by
    unfold C
    simp [show (13436928 * k + 3833675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11501026) = 20155392 * k + 5750513 := by
    unfold C
    simp [show (40310784 * k + 11501026) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5750513) = 60466176 * k + 17251540 := by
    unfold C
    simp [show (20155392 * k + 5750513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 17251540) = 30233088 * k + 8625770 := by
    unfold C
    simp [show (60466176 * k + 17251540) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8625770) = 15116544 * k + 4312885 := by
    unfold C
    simp [show (30233088 * k + 8625770) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4312885) = 45349632 * k + 12938656 := by
    unfold C
    simp [show (15116544 * k + 4312885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 12938656) = 22674816 * k + 6469328 := by
    unfold C
    simp [show (45349632 * k + 12938656) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6469328) = 11337408 * k + 3234664 := by
    unfold C
    simp [show (22674816 * k + 6469328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3234664) = 5668704 * k + 1617332 := by
    unfold C
    simp [show (11337408 * k + 3234664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1617332) = 2834352 * k + 808666 := by
    unfold C
    simp [show (5668704 * k + 1617332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 808666) = 1417176 * k + 404333 := by
    unfold C
    simp [show (2834352 * k + 808666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 404333) = 4251528 * k + 1213000 := by
    unfold C
    simp [show (1417176 * k + 404333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1213000) = 2125764 * k + 606500 := by
    unfold C
    simp [show (4251528 * k + 1213000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 606500) = 1062882 * k + 303250 := by
    unfold C
    simp [show (2125764 * k + 606500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 303250) = 531441 * k + 151625 := by
    unfold C
    simp [show (1062882 * k + 303250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299687 : ∀ k : Nat,
    iterate (1048576 * k + 299687) 32 = 531441 * k + 151889 ∧
      531441 * k + 151889 < 1048576 * k + 299687 := by
  intro k
  have h1 : C (1048576 * k + 299687) = 3145728 * k + 899062 := by
    unfold C
    simp [show (1048576 * k + 299687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 899062) = 1572864 * k + 449531 := by
    unfold C
    simp [show (3145728 * k + 899062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 449531) = 4718592 * k + 1348594 := by
    unfold C
    simp [show (1572864 * k + 449531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1348594) = 2359296 * k + 674297 := by
    unfold C
    simp [show (4718592 * k + 1348594) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 674297) = 7077888 * k + 2022892 := by
    unfold C
    simp [show (2359296 * k + 674297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2022892) = 3538944 * k + 1011446 := by
    unfold C
    simp [show (7077888 * k + 2022892) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1011446) = 1769472 * k + 505723 := by
    unfold C
    simp [show (3538944 * k + 1011446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 505723) = 5308416 * k + 1517170 := by
    unfold C
    simp [show (1769472 * k + 505723) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1517170) = 2654208 * k + 758585 := by
    unfold C
    simp [show (5308416 * k + 1517170) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 758585) = 7962624 * k + 2275756 := by
    unfold C
    simp [show (2654208 * k + 758585) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2275756) = 3981312 * k + 1137878 := by
    unfold C
    simp [show (7962624 * k + 2275756) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1137878) = 1990656 * k + 568939 := by
    unfold C
    simp [show (3981312 * k + 1137878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 568939) = 5971968 * k + 1706818 := by
    unfold C
    simp [show (1990656 * k + 568939) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1706818) = 2985984 * k + 853409 := by
    unfold C
    simp [show (5971968 * k + 1706818) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 853409) = 8957952 * k + 2560228 := by
    unfold C
    simp [show (2985984 * k + 853409) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2560228) = 4478976 * k + 1280114 := by
    unfold C
    simp [show (8957952 * k + 2560228) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1280114) = 2239488 * k + 640057 := by
    unfold C
    simp [show (4478976 * k + 1280114) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 640057) = 6718464 * k + 1920172 := by
    unfold C
    simp [show (2239488 * k + 640057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1920172) = 3359232 * k + 960086 := by
    unfold C
    simp [show (6718464 * k + 1920172) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 960086) = 1679616 * k + 480043 := by
    unfold C
    simp [show (3359232 * k + 960086) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 480043) = 5038848 * k + 1440130 := by
    unfold C
    simp [show (1679616 * k + 480043) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1440130) = 2519424 * k + 720065 := by
    unfold C
    simp [show (5038848 * k + 1440130) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 720065) = 7558272 * k + 2160196 := by
    unfold C
    simp [show (2519424 * k + 720065) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2160196) = 3779136 * k + 1080098 := by
    unfold C
    simp [show (7558272 * k + 2160196) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1080098) = 1889568 * k + 540049 := by
    unfold C
    simp [show (3779136 * k + 1080098) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 540049) = 5668704 * k + 1620148 := by
    unfold C
    simp [show (1889568 * k + 540049) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1620148) = 2834352 * k + 810074 := by
    unfold C
    simp [show (5668704 * k + 1620148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 810074) = 1417176 * k + 405037 := by
    unfold C
    simp [show (2834352 * k + 810074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 405037) = 4251528 * k + 1215112 := by
    unfold C
    simp [show (1417176 * k + 405037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1215112) = 2125764 * k + 607556 := by
    unfold C
    simp [show (4251528 * k + 1215112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 607556) = 1062882 * k + 303778 := by
    unfold C
    simp [show (2125764 * k + 607556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 303778) = 531441 * k + 151889 := by
    unfold C
    simp [show (1062882 * k + 303778) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299759 : ∀ k : Nat,
    iterate (1048576 * k + 299759) 32 = 531441 * k + 151925 ∧
      531441 * k + 151925 < 1048576 * k + 299759 := by
  intro k
  have h1 : C (1048576 * k + 299759) = 3145728 * k + 899278 := by
    unfold C
    simp [show (1048576 * k + 299759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 899278) = 1572864 * k + 449639 := by
    unfold C
    simp [show (3145728 * k + 899278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 449639) = 4718592 * k + 1348918 := by
    unfold C
    simp [show (1572864 * k + 449639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1348918) = 2359296 * k + 674459 := by
    unfold C
    simp [show (4718592 * k + 1348918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 674459) = 7077888 * k + 2023378 := by
    unfold C
    simp [show (2359296 * k + 674459) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2023378) = 3538944 * k + 1011689 := by
    unfold C
    simp [show (7077888 * k + 2023378) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1011689) = 10616832 * k + 3035068 := by
    unfold C
    simp [show (3538944 * k + 1011689) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3035068) = 5308416 * k + 1517534 := by
    unfold C
    simp [show (10616832 * k + 3035068) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1517534) = 2654208 * k + 758767 := by
    unfold C
    simp [show (5308416 * k + 1517534) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 758767) = 7962624 * k + 2276302 := by
    unfold C
    simp [show (2654208 * k + 758767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2276302) = 3981312 * k + 1138151 := by
    unfold C
    simp [show (7962624 * k + 2276302) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1138151) = 11943936 * k + 3414454 := by
    unfold C
    simp [show (3981312 * k + 1138151) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3414454) = 5971968 * k + 1707227 := by
    unfold C
    simp [show (11943936 * k + 3414454) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1707227) = 17915904 * k + 5121682 := by
    unfold C
    simp [show (5971968 * k + 1707227) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5121682) = 8957952 * k + 2560841 := by
    unfold C
    simp [show (17915904 * k + 5121682) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2560841) = 26873856 * k + 7682524 := by
    unfold C
    simp [show (8957952 * k + 2560841) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7682524) = 13436928 * k + 3841262 := by
    unfold C
    simp [show (26873856 * k + 7682524) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3841262) = 6718464 * k + 1920631 := by
    unfold C
    simp [show (13436928 * k + 3841262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1920631) = 20155392 * k + 5761894 := by
    unfold C
    simp [show (6718464 * k + 1920631) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5761894) = 10077696 * k + 2880947 := by
    unfold C
    simp [show (20155392 * k + 5761894) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2880947) = 30233088 * k + 8642842 := by
    unfold C
    simp [show (10077696 * k + 2880947) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8642842) = 15116544 * k + 4321421 := by
    unfold C
    simp [show (30233088 * k + 8642842) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4321421) = 45349632 * k + 12964264 := by
    unfold C
    simp [show (15116544 * k + 4321421) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 12964264) = 22674816 * k + 6482132 := by
    unfold C
    simp [show (45349632 * k + 12964264) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6482132) = 11337408 * k + 3241066 := by
    unfold C
    simp [show (22674816 * k + 6482132) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3241066) = 5668704 * k + 1620533 := by
    unfold C
    simp [show (11337408 * k + 3241066) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1620533) = 17006112 * k + 4861600 := by
    unfold C
    simp [show (5668704 * k + 1620533) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4861600) = 8503056 * k + 2430800 := by
    unfold C
    simp [show (17006112 * k + 4861600) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2430800) = 4251528 * k + 1215400 := by
    unfold C
    simp [show (8503056 * k + 2430800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1215400) = 2125764 * k + 607700 := by
    unfold C
    simp [show (4251528 * k + 1215400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 607700) = 1062882 * k + 303850 := by
    unfold C
    simp [show (2125764 * k + 607700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 303850) = 531441 * k + 151925 := by
    unfold C
    simp [show (1062882 * k + 303850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299775 : ∀ k : Nat,
    iterate (1048576 * k + 299775) 32 = 531441 * k + 151933 ∧
      531441 * k + 151933 < 1048576 * k + 299775 := by
  intro k
  have h1 : C (1048576 * k + 299775) = 3145728 * k + 899326 := by
    unfold C
    simp [show (1048576 * k + 299775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 899326) = 1572864 * k + 449663 := by
    unfold C
    simp [show (3145728 * k + 899326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 449663) = 4718592 * k + 1348990 := by
    unfold C
    simp [show (1572864 * k + 449663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1348990) = 2359296 * k + 674495 := by
    unfold C
    simp [show (4718592 * k + 1348990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 674495) = 7077888 * k + 2023486 := by
    unfold C
    simp [show (2359296 * k + 674495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2023486) = 3538944 * k + 1011743 := by
    unfold C
    simp [show (7077888 * k + 2023486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1011743) = 10616832 * k + 3035230 := by
    unfold C
    simp [show (3538944 * k + 1011743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3035230) = 5308416 * k + 1517615 := by
    unfold C
    simp [show (10616832 * k + 3035230) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1517615) = 15925248 * k + 4552846 := by
    unfold C
    simp [show (5308416 * k + 1517615) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4552846) = 7962624 * k + 2276423 := by
    unfold C
    simp [show (15925248 * k + 4552846) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2276423) = 23887872 * k + 6829270 := by
    unfold C
    simp [show (7962624 * k + 2276423) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6829270) = 11943936 * k + 3414635 := by
    unfold C
    simp [show (23887872 * k + 6829270) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3414635) = 35831808 * k + 10243906 := by
    unfold C
    simp [show (11943936 * k + 3414635) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10243906) = 17915904 * k + 5121953 := by
    unfold C
    simp [show (35831808 * k + 10243906) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5121953) = 53747712 * k + 15365860 := by
    unfold C
    simp [show (17915904 * k + 5121953) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15365860) = 26873856 * k + 7682930 := by
    unfold C
    simp [show (53747712 * k + 15365860) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7682930) = 13436928 * k + 3841465 := by
    unfold C
    simp [show (26873856 * k + 7682930) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3841465) = 40310784 * k + 11524396 := by
    unfold C
    simp [show (13436928 * k + 3841465) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11524396) = 20155392 * k + 5762198 := by
    unfold C
    simp [show (40310784 * k + 11524396) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5762198) = 10077696 * k + 2881099 := by
    unfold C
    simp [show (20155392 * k + 5762198) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2881099) = 30233088 * k + 8643298 := by
    unfold C
    simp [show (10077696 * k + 2881099) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8643298) = 15116544 * k + 4321649 := by
    unfold C
    simp [show (30233088 * k + 8643298) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4321649) = 45349632 * k + 12964948 := by
    unfold C
    simp [show (15116544 * k + 4321649) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 12964948) = 22674816 * k + 6482474 := by
    unfold C
    simp [show (45349632 * k + 12964948) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6482474) = 11337408 * k + 3241237 := by
    unfold C
    simp [show (22674816 * k + 6482474) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3241237) = 34012224 * k + 9723712 := by
    unfold C
    simp [show (11337408 * k + 3241237) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9723712) = 17006112 * k + 4861856 := by
    unfold C
    simp [show (34012224 * k + 9723712) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4861856) = 8503056 * k + 2430928 := by
    unfold C
    simp [show (17006112 * k + 4861856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2430928) = 4251528 * k + 1215464 := by
    unfold C
    simp [show (8503056 * k + 2430928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1215464) = 2125764 * k + 607732 := by
    unfold C
    simp [show (4251528 * k + 1215464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 607732) = 1062882 * k + 303866 := by
    unfold C
    simp [show (2125764 * k + 607732) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 303866) = 531441 * k + 151933 := by
    unfold C
    simp [show (1062882 * k + 303866) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299847 : ∀ k : Nat,
    iterate (1048576 * k + 299847) 32 = 531441 * k + 151970 ∧
      531441 * k + 151970 < 1048576 * k + 299847 := by
  intro k
  have h1 : C (1048576 * k + 299847) = 3145728 * k + 899542 := by
    unfold C
    simp [show (1048576 * k + 299847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 899542) = 1572864 * k + 449771 := by
    unfold C
    simp [show (3145728 * k + 899542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 449771) = 4718592 * k + 1349314 := by
    unfold C
    simp [show (1572864 * k + 449771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1349314) = 2359296 * k + 674657 := by
    unfold C
    simp [show (4718592 * k + 1349314) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 674657) = 7077888 * k + 2023972 := by
    unfold C
    simp [show (2359296 * k + 674657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2023972) = 3538944 * k + 1011986 := by
    unfold C
    simp [show (7077888 * k + 2023972) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1011986) = 1769472 * k + 505993 := by
    unfold C
    simp [show (3538944 * k + 1011986) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 505993) = 5308416 * k + 1517980 := by
    unfold C
    simp [show (1769472 * k + 505993) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1517980) = 2654208 * k + 758990 := by
    unfold C
    simp [show (5308416 * k + 1517980) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 758990) = 1327104 * k + 379495 := by
    unfold C
    simp [show (2654208 * k + 758990) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 379495) = 3981312 * k + 1138486 := by
    unfold C
    simp [show (1327104 * k + 379495) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1138486) = 1990656 * k + 569243 := by
    unfold C
    simp [show (3981312 * k + 1138486) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 569243) = 5971968 * k + 1707730 := by
    unfold C
    simp [show (1990656 * k + 569243) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1707730) = 2985984 * k + 853865 := by
    unfold C
    simp [show (5971968 * k + 1707730) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 853865) = 8957952 * k + 2561596 := by
    unfold C
    simp [show (2985984 * k + 853865) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2561596) = 4478976 * k + 1280798 := by
    unfold C
    simp [show (8957952 * k + 2561596) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1280798) = 2239488 * k + 640399 := by
    unfold C
    simp [show (4478976 * k + 1280798) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 640399) = 6718464 * k + 1921198 := by
    unfold C
    simp [show (2239488 * k + 640399) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1921198) = 3359232 * k + 960599 := by
    unfold C
    simp [show (6718464 * k + 1921198) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 960599) = 10077696 * k + 2881798 := by
    unfold C
    simp [show (3359232 * k + 960599) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2881798) = 5038848 * k + 1440899 := by
    unfold C
    simp [show (10077696 * k + 2881798) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1440899) = 15116544 * k + 4322698 := by
    unfold C
    simp [show (5038848 * k + 1440899) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4322698) = 7558272 * k + 2161349 := by
    unfold C
    simp [show (15116544 * k + 4322698) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2161349) = 22674816 * k + 6484048 := by
    unfold C
    simp [show (7558272 * k + 2161349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6484048) = 11337408 * k + 3242024 := by
    unfold C
    simp [show (22674816 * k + 6484048) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3242024) = 5668704 * k + 1621012 := by
    unfold C
    simp [show (11337408 * k + 3242024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1621012) = 2834352 * k + 810506 := by
    unfold C
    simp [show (5668704 * k + 1621012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 810506) = 1417176 * k + 405253 := by
    unfold C
    simp [show (2834352 * k + 810506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 405253) = 4251528 * k + 1215760 := by
    unfold C
    simp [show (1417176 * k + 405253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1215760) = 2125764 * k + 607880 := by
    unfold C
    simp [show (4251528 * k + 1215760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 607880) = 1062882 * k + 303940 := by
    unfold C
    simp [show (2125764 * k + 607880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 303940) = 531441 * k + 151970 := by
    unfold C
    simp [show (1062882 * k + 303940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_299999 : ∀ k : Nat,
    iterate (1048576 * k + 299999) 32 = 531441 * k + 152047 ∧
      531441 * k + 152047 < 1048576 * k + 299999 := by
  intro k
  have h1 : C (1048576 * k + 299999) = 3145728 * k + 899998 := by
    unfold C
    simp [show (1048576 * k + 299999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 899998) = 1572864 * k + 449999 := by
    unfold C
    simp [show (3145728 * k + 899998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 449999) = 4718592 * k + 1349998 := by
    unfold C
    simp [show (1572864 * k + 449999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1349998) = 2359296 * k + 674999 := by
    unfold C
    simp [show (4718592 * k + 1349998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 674999) = 7077888 * k + 2024998 := by
    unfold C
    simp [show (2359296 * k + 674999) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2024998) = 3538944 * k + 1012499 := by
    unfold C
    simp [show (7077888 * k + 2024998) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1012499) = 10616832 * k + 3037498 := by
    unfold C
    simp [show (3538944 * k + 1012499) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3037498) = 5308416 * k + 1518749 := by
    unfold C
    simp [show (10616832 * k + 3037498) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1518749) = 15925248 * k + 4556248 := by
    unfold C
    simp [show (5308416 * k + 1518749) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4556248) = 7962624 * k + 2278124 := by
    unfold C
    simp [show (15925248 * k + 4556248) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2278124) = 3981312 * k + 1139062 := by
    unfold C
    simp [show (7962624 * k + 2278124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1139062) = 1990656 * k + 569531 := by
    unfold C
    simp [show (3981312 * k + 1139062) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 569531) = 5971968 * k + 1708594 := by
    unfold C
    simp [show (1990656 * k + 569531) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1708594) = 2985984 * k + 854297 := by
    unfold C
    simp [show (5971968 * k + 1708594) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 854297) = 8957952 * k + 2562892 := by
    unfold C
    simp [show (2985984 * k + 854297) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2562892) = 4478976 * k + 1281446 := by
    unfold C
    simp [show (8957952 * k + 2562892) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1281446) = 2239488 * k + 640723 := by
    unfold C
    simp [show (4478976 * k + 1281446) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 640723) = 6718464 * k + 1922170 := by
    unfold C
    simp [show (2239488 * k + 640723) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1922170) = 3359232 * k + 961085 := by
    unfold C
    simp [show (6718464 * k + 1922170) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 961085) = 10077696 * k + 2883256 := by
    unfold C
    simp [show (3359232 * k + 961085) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2883256) = 5038848 * k + 1441628 := by
    unfold C
    simp [show (10077696 * k + 2883256) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1441628) = 2519424 * k + 720814 := by
    unfold C
    simp [show (5038848 * k + 1441628) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 720814) = 1259712 * k + 360407 := by
    unfold C
    simp [show (2519424 * k + 720814) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 360407) = 3779136 * k + 1081222 := by
    unfold C
    simp [show (1259712 * k + 360407) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1081222) = 1889568 * k + 540611 := by
    unfold C
    simp [show (3779136 * k + 1081222) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 540611) = 5668704 * k + 1621834 := by
    unfold C
    simp [show (1889568 * k + 540611) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1621834) = 2834352 * k + 810917 := by
    unfold C
    simp [show (5668704 * k + 1621834) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 810917) = 8503056 * k + 2432752 := by
    unfold C
    simp [show (2834352 * k + 810917) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2432752) = 4251528 * k + 1216376 := by
    unfold C
    simp [show (8503056 * k + 2432752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1216376) = 2125764 * k + 608188 := by
    unfold C
    simp [show (4251528 * k + 1216376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 608188) = 1062882 * k + 304094 := by
    unfold C
    simp [show (2125764 * k + 608188) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 304094) = 531441 * k + 152047 := by
    unfold C
    simp [show (1062882 * k + 304094) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 299999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 299999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_300255 : ∀ k : Nat,
    iterate (1048576 * k + 300255) 32 = 531441 * k + 152177 ∧
      531441 * k + 152177 < 1048576 * k + 300255 := by
  intro k
  have h1 : C (1048576 * k + 300255) = 3145728 * k + 900766 := by
    unfold C
    simp [show (1048576 * k + 300255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 900766) = 1572864 * k + 450383 := by
    unfold C
    simp [show (3145728 * k + 900766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 450383) = 4718592 * k + 1351150 := by
    unfold C
    simp [show (1572864 * k + 450383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1351150) = 2359296 * k + 675575 := by
    unfold C
    simp [show (4718592 * k + 1351150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 675575) = 7077888 * k + 2026726 := by
    unfold C
    simp [show (2359296 * k + 675575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2026726) = 3538944 * k + 1013363 := by
    unfold C
    simp [show (7077888 * k + 2026726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1013363) = 10616832 * k + 3040090 := by
    unfold C
    simp [show (3538944 * k + 1013363) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3040090) = 5308416 * k + 1520045 := by
    unfold C
    simp [show (10616832 * k + 3040090) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1520045) = 15925248 * k + 4560136 := by
    unfold C
    simp [show (5308416 * k + 1520045) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4560136) = 7962624 * k + 2280068 := by
    unfold C
    simp [show (15925248 * k + 4560136) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2280068) = 3981312 * k + 1140034 := by
    unfold C
    simp [show (7962624 * k + 2280068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1140034) = 1990656 * k + 570017 := by
    unfold C
    simp [show (3981312 * k + 1140034) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 570017) = 5971968 * k + 1710052 := by
    unfold C
    simp [show (1990656 * k + 570017) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1710052) = 2985984 * k + 855026 := by
    unfold C
    simp [show (5971968 * k + 1710052) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 855026) = 1492992 * k + 427513 := by
    unfold C
    simp [show (2985984 * k + 855026) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 427513) = 4478976 * k + 1282540 := by
    unfold C
    simp [show (1492992 * k + 427513) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1282540) = 2239488 * k + 641270 := by
    unfold C
    simp [show (4478976 * k + 1282540) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 641270) = 1119744 * k + 320635 := by
    unfold C
    simp [show (2239488 * k + 641270) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 320635) = 3359232 * k + 961906 := by
    unfold C
    simp [show (1119744 * k + 320635) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 961906) = 1679616 * k + 480953 := by
    unfold C
    simp [show (3359232 * k + 961906) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 480953) = 5038848 * k + 1442860 := by
    unfold C
    simp [show (1679616 * k + 480953) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1442860) = 2519424 * k + 721430 := by
    unfold C
    simp [show (5038848 * k + 1442860) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 721430) = 1259712 * k + 360715 := by
    unfold C
    simp [show (2519424 * k + 721430) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 360715) = 3779136 * k + 1082146 := by
    unfold C
    simp [show (1259712 * k + 360715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1082146) = 1889568 * k + 541073 := by
    unfold C
    simp [show (3779136 * k + 1082146) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 541073) = 5668704 * k + 1623220 := by
    unfold C
    simp [show (1889568 * k + 541073) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1623220) = 2834352 * k + 811610 := by
    unfold C
    simp [show (5668704 * k + 1623220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 811610) = 1417176 * k + 405805 := by
    unfold C
    simp [show (2834352 * k + 811610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 405805) = 4251528 * k + 1217416 := by
    unfold C
    simp [show (1417176 * k + 405805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1217416) = 2125764 * k + 608708 := by
    unfold C
    simp [show (4251528 * k + 1217416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 608708) = 1062882 * k + 304354 := by
    unfold C
    simp [show (2125764 * k + 608708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 304354) = 531441 * k + 152177 := by
    unfold C
    simp [show (1062882 * k + 304354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 300255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 300255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_300575 : ∀ k : Nat,
    iterate (1048576 * k + 300575) 32 = 531441 * k + 152339 ∧
      531441 * k + 152339 < 1048576 * k + 300575 := by
  intro k
  have h1 : C (1048576 * k + 300575) = 3145728 * k + 901726 := by
    unfold C
    simp [show (1048576 * k + 300575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 901726) = 1572864 * k + 450863 := by
    unfold C
    simp [show (3145728 * k + 901726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 450863) = 4718592 * k + 1352590 := by
    unfold C
    simp [show (1572864 * k + 450863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1352590) = 2359296 * k + 676295 := by
    unfold C
    simp [show (4718592 * k + 1352590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 676295) = 7077888 * k + 2028886 := by
    unfold C
    simp [show (2359296 * k + 676295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2028886) = 3538944 * k + 1014443 := by
    unfold C
    simp [show (7077888 * k + 2028886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1014443) = 10616832 * k + 3043330 := by
    unfold C
    simp [show (3538944 * k + 1014443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3043330) = 5308416 * k + 1521665 := by
    unfold C
    simp [show (10616832 * k + 3043330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1521665) = 15925248 * k + 4564996 := by
    unfold C
    simp [show (5308416 * k + 1521665) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4564996) = 7962624 * k + 2282498 := by
    unfold C
    simp [show (15925248 * k + 4564996) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2282498) = 3981312 * k + 1141249 := by
    unfold C
    simp [show (7962624 * k + 2282498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1141249) = 11943936 * k + 3423748 := by
    unfold C
    simp [show (3981312 * k + 1141249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3423748) = 5971968 * k + 1711874 := by
    unfold C
    simp [show (11943936 * k + 3423748) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1711874) = 2985984 * k + 855937 := by
    unfold C
    simp [show (5971968 * k + 1711874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 855937) = 8957952 * k + 2567812 := by
    unfold C
    simp [show (2985984 * k + 855937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2567812) = 4478976 * k + 1283906 := by
    unfold C
    simp [show (8957952 * k + 2567812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1283906) = 2239488 * k + 641953 := by
    unfold C
    simp [show (4478976 * k + 1283906) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 641953) = 6718464 * k + 1925860 := by
    unfold C
    simp [show (2239488 * k + 641953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1925860) = 3359232 * k + 962930 := by
    unfold C
    simp [show (6718464 * k + 1925860) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 962930) = 1679616 * k + 481465 := by
    unfold C
    simp [show (3359232 * k + 962930) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 481465) = 5038848 * k + 1444396 := by
    unfold C
    simp [show (1679616 * k + 481465) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1444396) = 2519424 * k + 722198 := by
    unfold C
    simp [show (5038848 * k + 1444396) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 722198) = 1259712 * k + 361099 := by
    unfold C
    simp [show (2519424 * k + 722198) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 361099) = 3779136 * k + 1083298 := by
    unfold C
    simp [show (1259712 * k + 361099) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1083298) = 1889568 * k + 541649 := by
    unfold C
    simp [show (3779136 * k + 1083298) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 541649) = 5668704 * k + 1624948 := by
    unfold C
    simp [show (1889568 * k + 541649) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1624948) = 2834352 * k + 812474 := by
    unfold C
    simp [show (5668704 * k + 1624948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 812474) = 1417176 * k + 406237 := by
    unfold C
    simp [show (2834352 * k + 812474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 406237) = 4251528 * k + 1218712 := by
    unfold C
    simp [show (1417176 * k + 406237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1218712) = 2125764 * k + 609356 := by
    unfold C
    simp [show (4251528 * k + 1218712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 609356) = 1062882 * k + 304678 := by
    unfold C
    simp [show (2125764 * k + 609356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 304678) = 531441 * k + 152339 := by
    unfold C
    simp [show (1062882 * k + 304678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 300575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 300575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_300735 : ∀ k : Nat,
    iterate (1048576 * k + 300735) 32 = 531441 * k + 152420 ∧
      531441 * k + 152420 < 1048576 * k + 300735 := by
  intro k
  have h1 : C (1048576 * k + 300735) = 3145728 * k + 902206 := by
    unfold C
    simp [show (1048576 * k + 300735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 902206) = 1572864 * k + 451103 := by
    unfold C
    simp [show (3145728 * k + 902206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 451103) = 4718592 * k + 1353310 := by
    unfold C
    simp [show (1572864 * k + 451103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1353310) = 2359296 * k + 676655 := by
    unfold C
    simp [show (4718592 * k + 1353310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 676655) = 7077888 * k + 2029966 := by
    unfold C
    simp [show (2359296 * k + 676655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2029966) = 3538944 * k + 1014983 := by
    unfold C
    simp [show (7077888 * k + 2029966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1014983) = 10616832 * k + 3044950 := by
    unfold C
    simp [show (3538944 * k + 1014983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3044950) = 5308416 * k + 1522475 := by
    unfold C
    simp [show (10616832 * k + 3044950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1522475) = 15925248 * k + 4567426 := by
    unfold C
    simp [show (5308416 * k + 1522475) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4567426) = 7962624 * k + 2283713 := by
    unfold C
    simp [show (15925248 * k + 4567426) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2283713) = 23887872 * k + 6851140 := by
    unfold C
    simp [show (7962624 * k + 2283713) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6851140) = 11943936 * k + 3425570 := by
    unfold C
    simp [show (23887872 * k + 6851140) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3425570) = 5971968 * k + 1712785 := by
    unfold C
    simp [show (11943936 * k + 3425570) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1712785) = 17915904 * k + 5138356 := by
    unfold C
    simp [show (5971968 * k + 1712785) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5138356) = 8957952 * k + 2569178 := by
    unfold C
    simp [show (17915904 * k + 5138356) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2569178) = 4478976 * k + 1284589 := by
    unfold C
    simp [show (8957952 * k + 2569178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1284589) = 13436928 * k + 3853768 := by
    unfold C
    simp [show (4478976 * k + 1284589) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3853768) = 6718464 * k + 1926884 := by
    unfold C
    simp [show (13436928 * k + 3853768) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1926884) = 3359232 * k + 963442 := by
    unfold C
    simp [show (6718464 * k + 1926884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 963442) = 1679616 * k + 481721 := by
    unfold C
    simp [show (3359232 * k + 963442) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 481721) = 5038848 * k + 1445164 := by
    unfold C
    simp [show (1679616 * k + 481721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1445164) = 2519424 * k + 722582 := by
    unfold C
    simp [show (5038848 * k + 1445164) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 722582) = 1259712 * k + 361291 := by
    unfold C
    simp [show (2519424 * k + 722582) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 361291) = 3779136 * k + 1083874 := by
    unfold C
    simp [show (1259712 * k + 361291) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1083874) = 1889568 * k + 541937 := by
    unfold C
    simp [show (3779136 * k + 1083874) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 541937) = 5668704 * k + 1625812 := by
    unfold C
    simp [show (1889568 * k + 541937) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1625812) = 2834352 * k + 812906 := by
    unfold C
    simp [show (5668704 * k + 1625812) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 812906) = 1417176 * k + 406453 := by
    unfold C
    simp [show (2834352 * k + 812906) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 406453) = 4251528 * k + 1219360 := by
    unfold C
    simp [show (1417176 * k + 406453) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1219360) = 2125764 * k + 609680 := by
    unfold C
    simp [show (4251528 * k + 1219360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 609680) = 1062882 * k + 304840 := by
    unfold C
    simp [show (2125764 * k + 609680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 304840) = 531441 * k + 152420 := by
    unfold C
    simp [show (1062882 * k + 304840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 300735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 300735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301023 : ∀ k : Nat,
    iterate (1048576 * k + 301023) 32 = 531441 * k + 152566 ∧
      531441 * k + 152566 < 1048576 * k + 301023 := by
  intro k
  have h1 : C (1048576 * k + 301023) = 3145728 * k + 903070 := by
    unfold C
    simp [show (1048576 * k + 301023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 903070) = 1572864 * k + 451535 := by
    unfold C
    simp [show (3145728 * k + 903070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 451535) = 4718592 * k + 1354606 := by
    unfold C
    simp [show (1572864 * k + 451535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1354606) = 2359296 * k + 677303 := by
    unfold C
    simp [show (4718592 * k + 1354606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 677303) = 7077888 * k + 2031910 := by
    unfold C
    simp [show (2359296 * k + 677303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2031910) = 3538944 * k + 1015955 := by
    unfold C
    simp [show (7077888 * k + 2031910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1015955) = 10616832 * k + 3047866 := by
    unfold C
    simp [show (3538944 * k + 1015955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3047866) = 5308416 * k + 1523933 := by
    unfold C
    simp [show (10616832 * k + 3047866) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1523933) = 15925248 * k + 4571800 := by
    unfold C
    simp [show (5308416 * k + 1523933) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4571800) = 7962624 * k + 2285900 := by
    unfold C
    simp [show (15925248 * k + 4571800) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2285900) = 3981312 * k + 1142950 := by
    unfold C
    simp [show (7962624 * k + 2285900) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1142950) = 1990656 * k + 571475 := by
    unfold C
    simp [show (3981312 * k + 1142950) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 571475) = 5971968 * k + 1714426 := by
    unfold C
    simp [show (1990656 * k + 571475) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1714426) = 2985984 * k + 857213 := by
    unfold C
    simp [show (5971968 * k + 1714426) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 857213) = 8957952 * k + 2571640 := by
    unfold C
    simp [show (2985984 * k + 857213) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2571640) = 4478976 * k + 1285820 := by
    unfold C
    simp [show (8957952 * k + 2571640) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1285820) = 2239488 * k + 642910 := by
    unfold C
    simp [show (4478976 * k + 1285820) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 642910) = 1119744 * k + 321455 := by
    unfold C
    simp [show (2239488 * k + 642910) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 321455) = 3359232 * k + 964366 := by
    unfold C
    simp [show (1119744 * k + 321455) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 964366) = 1679616 * k + 482183 := by
    unfold C
    simp [show (3359232 * k + 964366) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 482183) = 5038848 * k + 1446550 := by
    unfold C
    simp [show (1679616 * k + 482183) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1446550) = 2519424 * k + 723275 := by
    unfold C
    simp [show (5038848 * k + 1446550) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 723275) = 7558272 * k + 2169826 := by
    unfold C
    simp [show (2519424 * k + 723275) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2169826) = 3779136 * k + 1084913 := by
    unfold C
    simp [show (7558272 * k + 2169826) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1084913) = 11337408 * k + 3254740 := by
    unfold C
    simp [show (3779136 * k + 1084913) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3254740) = 5668704 * k + 1627370 := by
    unfold C
    simp [show (11337408 * k + 3254740) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1627370) = 2834352 * k + 813685 := by
    unfold C
    simp [show (5668704 * k + 1627370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 813685) = 8503056 * k + 2441056 := by
    unfold C
    simp [show (2834352 * k + 813685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2441056) = 4251528 * k + 1220528 := by
    unfold C
    simp [show (8503056 * k + 2441056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1220528) = 2125764 * k + 610264 := by
    unfold C
    simp [show (4251528 * k + 1220528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 610264) = 1062882 * k + 305132 := by
    unfold C
    simp [show (2125764 * k + 610264) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305132) = 531441 * k + 152566 := by
    unfold C
    simp [show (1062882 * k + 305132) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301615 : ∀ k : Nat,
    iterate (1048576 * k + 301615) 32 = 531441 * k + 152866 ∧
      531441 * k + 152866 < 1048576 * k + 301615 := by
  intro k
  have h1 : C (1048576 * k + 301615) = 3145728 * k + 904846 := by
    unfold C
    simp [show (1048576 * k + 301615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 904846) = 1572864 * k + 452423 := by
    unfold C
    simp [show (3145728 * k + 904846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 452423) = 4718592 * k + 1357270 := by
    unfold C
    simp [show (1572864 * k + 452423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1357270) = 2359296 * k + 678635 := by
    unfold C
    simp [show (4718592 * k + 1357270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 678635) = 7077888 * k + 2035906 := by
    unfold C
    simp [show (2359296 * k + 678635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2035906) = 3538944 * k + 1017953 := by
    unfold C
    simp [show (7077888 * k + 2035906) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1017953) = 10616832 * k + 3053860 := by
    unfold C
    simp [show (3538944 * k + 1017953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3053860) = 5308416 * k + 1526930 := by
    unfold C
    simp [show (10616832 * k + 3053860) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1526930) = 2654208 * k + 763465 := by
    unfold C
    simp [show (5308416 * k + 1526930) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 763465) = 7962624 * k + 2290396 := by
    unfold C
    simp [show (2654208 * k + 763465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2290396) = 3981312 * k + 1145198 := by
    unfold C
    simp [show (7962624 * k + 2290396) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1145198) = 1990656 * k + 572599 := by
    unfold C
    simp [show (3981312 * k + 1145198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 572599) = 5971968 * k + 1717798 := by
    unfold C
    simp [show (1990656 * k + 572599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1717798) = 2985984 * k + 858899 := by
    unfold C
    simp [show (5971968 * k + 1717798) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 858899) = 8957952 * k + 2576698 := by
    unfold C
    simp [show (2985984 * k + 858899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2576698) = 4478976 * k + 1288349 := by
    unfold C
    simp [show (8957952 * k + 2576698) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1288349) = 13436928 * k + 3865048 := by
    unfold C
    simp [show (4478976 * k + 1288349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3865048) = 6718464 * k + 1932524 := by
    unfold C
    simp [show (13436928 * k + 3865048) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1932524) = 3359232 * k + 966262 := by
    unfold C
    simp [show (6718464 * k + 1932524) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 966262) = 1679616 * k + 483131 := by
    unfold C
    simp [show (3359232 * k + 966262) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 483131) = 5038848 * k + 1449394 := by
    unfold C
    simp [show (1679616 * k + 483131) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1449394) = 2519424 * k + 724697 := by
    unfold C
    simp [show (5038848 * k + 1449394) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 724697) = 7558272 * k + 2174092 := by
    unfold C
    simp [show (2519424 * k + 724697) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2174092) = 3779136 * k + 1087046 := by
    unfold C
    simp [show (7558272 * k + 2174092) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1087046) = 1889568 * k + 543523 := by
    unfold C
    simp [show (3779136 * k + 1087046) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 543523) = 5668704 * k + 1630570 := by
    unfold C
    simp [show (1889568 * k + 543523) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1630570) = 2834352 * k + 815285 := by
    unfold C
    simp [show (5668704 * k + 1630570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 815285) = 8503056 * k + 2445856 := by
    unfold C
    simp [show (2834352 * k + 815285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2445856) = 4251528 * k + 1222928 := by
    unfold C
    simp [show (8503056 * k + 2445856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1222928) = 2125764 * k + 611464 := by
    unfold C
    simp [show (4251528 * k + 1222928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 611464) = 1062882 * k + 305732 := by
    unfold C
    simp [show (2125764 * k + 611464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305732) = 531441 * k + 152866 := by
    unfold C
    simp [show (1062882 * k + 305732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301775 : ∀ k : Nat,
    iterate (1048576 * k + 301775) 32 = 531441 * k + 152947 ∧
      531441 * k + 152947 < 1048576 * k + 301775 := by
  intro k
  have h1 : C (1048576 * k + 301775) = 3145728 * k + 905326 := by
    unfold C
    simp [show (1048576 * k + 301775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 905326) = 1572864 * k + 452663 := by
    unfold C
    simp [show (3145728 * k + 905326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 452663) = 4718592 * k + 1357990 := by
    unfold C
    simp [show (1572864 * k + 452663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1357990) = 2359296 * k + 678995 := by
    unfold C
    simp [show (4718592 * k + 1357990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 678995) = 7077888 * k + 2036986 := by
    unfold C
    simp [show (2359296 * k + 678995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2036986) = 3538944 * k + 1018493 := by
    unfold C
    simp [show (7077888 * k + 2036986) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1018493) = 10616832 * k + 3055480 := by
    unfold C
    simp [show (3538944 * k + 1018493) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3055480) = 5308416 * k + 1527740 := by
    unfold C
    simp [show (10616832 * k + 3055480) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1527740) = 2654208 * k + 763870 := by
    unfold C
    simp [show (5308416 * k + 1527740) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 763870) = 1327104 * k + 381935 := by
    unfold C
    simp [show (2654208 * k + 763870) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 381935) = 3981312 * k + 1145806 := by
    unfold C
    simp [show (1327104 * k + 381935) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1145806) = 1990656 * k + 572903 := by
    unfold C
    simp [show (3981312 * k + 1145806) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 572903) = 5971968 * k + 1718710 := by
    unfold C
    simp [show (1990656 * k + 572903) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1718710) = 2985984 * k + 859355 := by
    unfold C
    simp [show (5971968 * k + 1718710) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 859355) = 8957952 * k + 2578066 := by
    unfold C
    simp [show (2985984 * k + 859355) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2578066) = 4478976 * k + 1289033 := by
    unfold C
    simp [show (8957952 * k + 2578066) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1289033) = 13436928 * k + 3867100 := by
    unfold C
    simp [show (4478976 * k + 1289033) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3867100) = 6718464 * k + 1933550 := by
    unfold C
    simp [show (13436928 * k + 3867100) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1933550) = 3359232 * k + 966775 := by
    unfold C
    simp [show (6718464 * k + 1933550) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 966775) = 10077696 * k + 2900326 := by
    unfold C
    simp [show (3359232 * k + 966775) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2900326) = 5038848 * k + 1450163 := by
    unfold C
    simp [show (10077696 * k + 2900326) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1450163) = 15116544 * k + 4350490 := by
    unfold C
    simp [show (5038848 * k + 1450163) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4350490) = 7558272 * k + 2175245 := by
    unfold C
    simp [show (15116544 * k + 4350490) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2175245) = 22674816 * k + 6525736 := by
    unfold C
    simp [show (7558272 * k + 2175245) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6525736) = 11337408 * k + 3262868 := by
    unfold C
    simp [show (22674816 * k + 6525736) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3262868) = 5668704 * k + 1631434 := by
    unfold C
    simp [show (11337408 * k + 3262868) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1631434) = 2834352 * k + 815717 := by
    unfold C
    simp [show (5668704 * k + 1631434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 815717) = 8503056 * k + 2447152 := by
    unfold C
    simp [show (2834352 * k + 815717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2447152) = 4251528 * k + 1223576 := by
    unfold C
    simp [show (8503056 * k + 2447152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1223576) = 2125764 * k + 611788 := by
    unfold C
    simp [show (4251528 * k + 1223576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 611788) = 1062882 * k + 305894 := by
    unfold C
    simp [show (2125764 * k + 611788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305894) = 531441 * k + 152947 := by
    unfold C
    simp [show (1062882 * k + 305894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301799 : ∀ k : Nat,
    iterate (1048576 * k + 301799) 32 = 531441 * k + 152959 ∧
      531441 * k + 152959 < 1048576 * k + 301799 := by
  intro k
  have h1 : C (1048576 * k + 301799) = 3145728 * k + 905398 := by
    unfold C
    simp [show (1048576 * k + 301799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 905398) = 1572864 * k + 452699 := by
    unfold C
    simp [show (3145728 * k + 905398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 452699) = 4718592 * k + 1358098 := by
    unfold C
    simp [show (1572864 * k + 452699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1358098) = 2359296 * k + 679049 := by
    unfold C
    simp [show (4718592 * k + 1358098) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 679049) = 7077888 * k + 2037148 := by
    unfold C
    simp [show (2359296 * k + 679049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2037148) = 3538944 * k + 1018574 := by
    unfold C
    simp [show (7077888 * k + 2037148) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1018574) = 1769472 * k + 509287 := by
    unfold C
    simp [show (3538944 * k + 1018574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 509287) = 5308416 * k + 1527862 := by
    unfold C
    simp [show (1769472 * k + 509287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1527862) = 2654208 * k + 763931 := by
    unfold C
    simp [show (5308416 * k + 1527862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 763931) = 7962624 * k + 2291794 := by
    unfold C
    simp [show (2654208 * k + 763931) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2291794) = 3981312 * k + 1145897 := by
    unfold C
    simp [show (7962624 * k + 2291794) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1145897) = 11943936 * k + 3437692 := by
    unfold C
    simp [show (3981312 * k + 1145897) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3437692) = 5971968 * k + 1718846 := by
    unfold C
    simp [show (11943936 * k + 3437692) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1718846) = 2985984 * k + 859423 := by
    unfold C
    simp [show (5971968 * k + 1718846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 859423) = 8957952 * k + 2578270 := by
    unfold C
    simp [show (2985984 * k + 859423) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2578270) = 4478976 * k + 1289135 := by
    unfold C
    simp [show (8957952 * k + 2578270) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1289135) = 13436928 * k + 3867406 := by
    unfold C
    simp [show (4478976 * k + 1289135) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3867406) = 6718464 * k + 1933703 := by
    unfold C
    simp [show (13436928 * k + 3867406) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1933703) = 20155392 * k + 5801110 := by
    unfold C
    simp [show (6718464 * k + 1933703) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5801110) = 10077696 * k + 2900555 := by
    unfold C
    simp [show (20155392 * k + 5801110) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2900555) = 30233088 * k + 8701666 := by
    unfold C
    simp [show (10077696 * k + 2900555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8701666) = 15116544 * k + 4350833 := by
    unfold C
    simp [show (30233088 * k + 8701666) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4350833) = 45349632 * k + 13052500 := by
    unfold C
    simp [show (15116544 * k + 4350833) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 13052500) = 22674816 * k + 6526250 := by
    unfold C
    simp [show (45349632 * k + 13052500) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6526250) = 11337408 * k + 3263125 := by
    unfold C
    simp [show (22674816 * k + 6526250) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3263125) = 34012224 * k + 9789376 := by
    unfold C
    simp [show (11337408 * k + 3263125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9789376) = 17006112 * k + 4894688 := by
    unfold C
    simp [show (34012224 * k + 9789376) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4894688) = 8503056 * k + 2447344 := by
    unfold C
    simp [show (17006112 * k + 4894688) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2447344) = 4251528 * k + 1223672 := by
    unfold C
    simp [show (8503056 * k + 2447344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1223672) = 2125764 * k + 611836 := by
    unfold C
    simp [show (4251528 * k + 1223672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 611836) = 1062882 * k + 305918 := by
    unfold C
    simp [show (2125764 * k + 611836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305918) = 531441 * k + 152959 := by
    unfold C
    simp [show (1062882 * k + 305918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301807 : ∀ k : Nat,
    iterate (1048576 * k + 301807) 32 = 531441 * k + 152963 ∧
      531441 * k + 152963 < 1048576 * k + 301807 := by
  intro k
  have h1 : C (1048576 * k + 301807) = 3145728 * k + 905422 := by
    unfold C
    simp [show (1048576 * k + 301807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 905422) = 1572864 * k + 452711 := by
    unfold C
    simp [show (3145728 * k + 905422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 452711) = 4718592 * k + 1358134 := by
    unfold C
    simp [show (1572864 * k + 452711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1358134) = 2359296 * k + 679067 := by
    unfold C
    simp [show (4718592 * k + 1358134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 679067) = 7077888 * k + 2037202 := by
    unfold C
    simp [show (2359296 * k + 679067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2037202) = 3538944 * k + 1018601 := by
    unfold C
    simp [show (7077888 * k + 2037202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1018601) = 10616832 * k + 3055804 := by
    unfold C
    simp [show (3538944 * k + 1018601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3055804) = 5308416 * k + 1527902 := by
    unfold C
    simp [show (10616832 * k + 3055804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1527902) = 2654208 * k + 763951 := by
    unfold C
    simp [show (5308416 * k + 1527902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 763951) = 7962624 * k + 2291854 := by
    unfold C
    simp [show (2654208 * k + 763951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2291854) = 3981312 * k + 1145927 := by
    unfold C
    simp [show (7962624 * k + 2291854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1145927) = 11943936 * k + 3437782 := by
    unfold C
    simp [show (3981312 * k + 1145927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3437782) = 5971968 * k + 1718891 := by
    unfold C
    simp [show (11943936 * k + 3437782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1718891) = 17915904 * k + 5156674 := by
    unfold C
    simp [show (5971968 * k + 1718891) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5156674) = 8957952 * k + 2578337 := by
    unfold C
    simp [show (17915904 * k + 5156674) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2578337) = 26873856 * k + 7735012 := by
    unfold C
    simp [show (8957952 * k + 2578337) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7735012) = 13436928 * k + 3867506 := by
    unfold C
    simp [show (26873856 * k + 7735012) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3867506) = 6718464 * k + 1933753 := by
    unfold C
    simp [show (13436928 * k + 3867506) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1933753) = 20155392 * k + 5801260 := by
    unfold C
    simp [show (6718464 * k + 1933753) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5801260) = 10077696 * k + 2900630 := by
    unfold C
    simp [show (20155392 * k + 5801260) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2900630) = 5038848 * k + 1450315 := by
    unfold C
    simp [show (10077696 * k + 2900630) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1450315) = 15116544 * k + 4350946 := by
    unfold C
    simp [show (5038848 * k + 1450315) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4350946) = 7558272 * k + 2175473 := by
    unfold C
    simp [show (15116544 * k + 4350946) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2175473) = 22674816 * k + 6526420 := by
    unfold C
    simp [show (7558272 * k + 2175473) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6526420) = 11337408 * k + 3263210 := by
    unfold C
    simp [show (22674816 * k + 6526420) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3263210) = 5668704 * k + 1631605 := by
    unfold C
    simp [show (11337408 * k + 3263210) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1631605) = 17006112 * k + 4894816 := by
    unfold C
    simp [show (5668704 * k + 1631605) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4894816) = 8503056 * k + 2447408 := by
    unfold C
    simp [show (17006112 * k + 4894816) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2447408) = 4251528 * k + 1223704 := by
    unfold C
    simp [show (8503056 * k + 2447408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1223704) = 2125764 * k + 611852 := by
    unfold C
    simp [show (4251528 * k + 1223704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 611852) = 1062882 * k + 305926 := by
    unfold C
    simp [show (2125764 * k + 611852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305926) = 531441 * k + 152963 := by
    unfold C
    simp [show (1062882 * k + 305926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_301823 : ∀ k : Nat,
    iterate (1048576 * k + 301823) 32 = 531441 * k + 152971 ∧
      531441 * k + 152971 < 1048576 * k + 301823 := by
  intro k
  have h1 : C (1048576 * k + 301823) = 3145728 * k + 905470 := by
    unfold C
    simp [show (1048576 * k + 301823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 905470) = 1572864 * k + 452735 := by
    unfold C
    simp [show (3145728 * k + 905470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 452735) = 4718592 * k + 1358206 := by
    unfold C
    simp [show (1572864 * k + 452735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1358206) = 2359296 * k + 679103 := by
    unfold C
    simp [show (4718592 * k + 1358206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 679103) = 7077888 * k + 2037310 := by
    unfold C
    simp [show (2359296 * k + 679103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2037310) = 3538944 * k + 1018655 := by
    unfold C
    simp [show (7077888 * k + 2037310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1018655) = 10616832 * k + 3055966 := by
    unfold C
    simp [show (3538944 * k + 1018655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3055966) = 5308416 * k + 1527983 := by
    unfold C
    simp [show (10616832 * k + 3055966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1527983) = 15925248 * k + 4583950 := by
    unfold C
    simp [show (5308416 * k + 1527983) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4583950) = 7962624 * k + 2291975 := by
    unfold C
    simp [show (15925248 * k + 4583950) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2291975) = 23887872 * k + 6875926 := by
    unfold C
    simp [show (7962624 * k + 2291975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6875926) = 11943936 * k + 3437963 := by
    unfold C
    simp [show (23887872 * k + 6875926) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3437963) = 35831808 * k + 10313890 := by
    unfold C
    simp [show (11943936 * k + 3437963) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 10313890) = 17915904 * k + 5156945 := by
    unfold C
    simp [show (35831808 * k + 10313890) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5156945) = 53747712 * k + 15470836 := by
    unfold C
    simp [show (17915904 * k + 5156945) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 15470836) = 26873856 * k + 7735418 := by
    unfold C
    simp [show (53747712 * k + 15470836) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7735418) = 13436928 * k + 3867709 := by
    unfold C
    simp [show (26873856 * k + 7735418) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3867709) = 40310784 * k + 11603128 := by
    unfold C
    simp [show (13436928 * k + 3867709) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11603128) = 20155392 * k + 5801564 := by
    unfold C
    simp [show (40310784 * k + 11603128) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5801564) = 10077696 * k + 2900782 := by
    unfold C
    simp [show (20155392 * k + 5801564) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2900782) = 5038848 * k + 1450391 := by
    unfold C
    simp [show (10077696 * k + 2900782) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1450391) = 15116544 * k + 4351174 := by
    unfold C
    simp [show (5038848 * k + 1450391) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4351174) = 7558272 * k + 2175587 := by
    unfold C
    simp [show (15116544 * k + 4351174) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2175587) = 22674816 * k + 6526762 := by
    unfold C
    simp [show (7558272 * k + 2175587) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6526762) = 11337408 * k + 3263381 := by
    unfold C
    simp [show (22674816 * k + 6526762) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3263381) = 34012224 * k + 9790144 := by
    unfold C
    simp [show (11337408 * k + 3263381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9790144) = 17006112 * k + 4895072 := by
    unfold C
    simp [show (34012224 * k + 9790144) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4895072) = 8503056 * k + 2447536 := by
    unfold C
    simp [show (17006112 * k + 4895072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2447536) = 4251528 * k + 1223768 := by
    unfold C
    simp [show (8503056 * k + 2447536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1223768) = 2125764 * k + 611884 := by
    unfold C
    simp [show (4251528 * k + 1223768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 611884) = 1062882 * k + 305942 := by
    unfold C
    simp [show (2125764 * k + 611884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 305942) = 531441 * k + 152971 := by
    unfold C
    simp [show (1062882 * k + 305942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 301823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 301823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_302239 : ∀ k : Nat,
    iterate (1048576 * k + 302239) 32 = 531441 * k + 153182 ∧
      531441 * k + 153182 < 1048576 * k + 302239 := by
  intro k
  have h1 : C (1048576 * k + 302239) = 3145728 * k + 906718 := by
    unfold C
    simp [show (1048576 * k + 302239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 906718) = 1572864 * k + 453359 := by
    unfold C
    simp [show (3145728 * k + 906718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 453359) = 4718592 * k + 1360078 := by
    unfold C
    simp [show (1572864 * k + 453359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1360078) = 2359296 * k + 680039 := by
    unfold C
    simp [show (4718592 * k + 1360078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 680039) = 7077888 * k + 2040118 := by
    unfold C
    simp [show (2359296 * k + 680039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2040118) = 3538944 * k + 1020059 := by
    unfold C
    simp [show (7077888 * k + 2040118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1020059) = 10616832 * k + 3060178 := by
    unfold C
    simp [show (3538944 * k + 1020059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3060178) = 5308416 * k + 1530089 := by
    unfold C
    simp [show (10616832 * k + 3060178) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1530089) = 15925248 * k + 4590268 := by
    unfold C
    simp [show (5308416 * k + 1530089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4590268) = 7962624 * k + 2295134 := by
    unfold C
    simp [show (15925248 * k + 4590268) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2295134) = 3981312 * k + 1147567 := by
    unfold C
    simp [show (7962624 * k + 2295134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1147567) = 11943936 * k + 3442702 := by
    unfold C
    simp [show (3981312 * k + 1147567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3442702) = 5971968 * k + 1721351 := by
    unfold C
    simp [show (11943936 * k + 3442702) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1721351) = 17915904 * k + 5164054 := by
    unfold C
    simp [show (5971968 * k + 1721351) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5164054) = 8957952 * k + 2582027 := by
    unfold C
    simp [show (17915904 * k + 5164054) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2582027) = 26873856 * k + 7746082 := by
    unfold C
    simp [show (8957952 * k + 2582027) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7746082) = 13436928 * k + 3873041 := by
    unfold C
    simp [show (26873856 * k + 7746082) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3873041) = 40310784 * k + 11619124 := by
    unfold C
    simp [show (13436928 * k + 3873041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11619124) = 20155392 * k + 5809562 := by
    unfold C
    simp [show (40310784 * k + 11619124) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5809562) = 10077696 * k + 2904781 := by
    unfold C
    simp [show (20155392 * k + 5809562) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2904781) = 30233088 * k + 8714344 := by
    unfold C
    simp [show (10077696 * k + 2904781) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8714344) = 15116544 * k + 4357172 := by
    unfold C
    simp [show (30233088 * k + 8714344) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4357172) = 7558272 * k + 2178586 := by
    unfold C
    simp [show (15116544 * k + 4357172) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2178586) = 3779136 * k + 1089293 := by
    unfold C
    simp [show (7558272 * k + 2178586) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1089293) = 11337408 * k + 3267880 := by
    unfold C
    simp [show (3779136 * k + 1089293) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3267880) = 5668704 * k + 1633940 := by
    unfold C
    simp [show (11337408 * k + 3267880) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1633940) = 2834352 * k + 816970 := by
    unfold C
    simp [show (5668704 * k + 1633940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 816970) = 1417176 * k + 408485 := by
    unfold C
    simp [show (2834352 * k + 816970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 408485) = 4251528 * k + 1225456 := by
    unfold C
    simp [show (1417176 * k + 408485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1225456) = 2125764 * k + 612728 := by
    unfold C
    simp [show (4251528 * k + 1225456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 612728) = 1062882 * k + 306364 := by
    unfold C
    simp [show (2125764 * k + 612728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 306364) = 531441 * k + 153182 := by
    unfold C
    simp [show (1062882 * k + 306364) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 302239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 302239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_303423 : ∀ k : Nat,
    iterate (1048576 * k + 303423) 32 = 531441 * k + 153782 ∧
      531441 * k + 153782 < 1048576 * k + 303423 := by
  intro k
  have h1 : C (1048576 * k + 303423) = 3145728 * k + 910270 := by
    unfold C
    simp [show (1048576 * k + 303423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 910270) = 1572864 * k + 455135 := by
    unfold C
    simp [show (3145728 * k + 910270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 455135) = 4718592 * k + 1365406 := by
    unfold C
    simp [show (1572864 * k + 455135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1365406) = 2359296 * k + 682703 := by
    unfold C
    simp [show (4718592 * k + 1365406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 682703) = 7077888 * k + 2048110 := by
    unfold C
    simp [show (2359296 * k + 682703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2048110) = 3538944 * k + 1024055 := by
    unfold C
    simp [show (7077888 * k + 2048110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1024055) = 10616832 * k + 3072166 := by
    unfold C
    simp [show (3538944 * k + 1024055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3072166) = 5308416 * k + 1536083 := by
    unfold C
    simp [show (10616832 * k + 3072166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1536083) = 15925248 * k + 4608250 := by
    unfold C
    simp [show (5308416 * k + 1536083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4608250) = 7962624 * k + 2304125 := by
    unfold C
    simp [show (15925248 * k + 4608250) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2304125) = 23887872 * k + 6912376 := by
    unfold C
    simp [show (7962624 * k + 2304125) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6912376) = 11943936 * k + 3456188 := by
    unfold C
    simp [show (23887872 * k + 6912376) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3456188) = 5971968 * k + 1728094 := by
    unfold C
    simp [show (11943936 * k + 3456188) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1728094) = 2985984 * k + 864047 := by
    unfold C
    simp [show (5971968 * k + 1728094) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 864047) = 8957952 * k + 2592142 := by
    unfold C
    simp [show (2985984 * k + 864047) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2592142) = 4478976 * k + 1296071 := by
    unfold C
    simp [show (8957952 * k + 2592142) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1296071) = 13436928 * k + 3888214 := by
    unfold C
    simp [show (4478976 * k + 1296071) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3888214) = 6718464 * k + 1944107 := by
    unfold C
    simp [show (13436928 * k + 3888214) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1944107) = 20155392 * k + 5832322 := by
    unfold C
    simp [show (6718464 * k + 1944107) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5832322) = 10077696 * k + 2916161 := by
    unfold C
    simp [show (20155392 * k + 5832322) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2916161) = 30233088 * k + 8748484 := by
    unfold C
    simp [show (10077696 * k + 2916161) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8748484) = 15116544 * k + 4374242 := by
    unfold C
    simp [show (30233088 * k + 8748484) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4374242) = 7558272 * k + 2187121 := by
    unfold C
    simp [show (15116544 * k + 4374242) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2187121) = 22674816 * k + 6561364 := by
    unfold C
    simp [show (7558272 * k + 2187121) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6561364) = 11337408 * k + 3280682 := by
    unfold C
    simp [show (22674816 * k + 6561364) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3280682) = 5668704 * k + 1640341 := by
    unfold C
    simp [show (11337408 * k + 3280682) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1640341) = 17006112 * k + 4921024 := by
    unfold C
    simp [show (5668704 * k + 1640341) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4921024) = 8503056 * k + 2460512 := by
    unfold C
    simp [show (17006112 * k + 4921024) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2460512) = 4251528 * k + 1230256 := by
    unfold C
    simp [show (8503056 * k + 2460512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1230256) = 2125764 * k + 615128 := by
    unfold C
    simp [show (4251528 * k + 1230256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 615128) = 1062882 * k + 307564 := by
    unfold C
    simp [show (2125764 * k + 615128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 307564) = 531441 * k + 153782 := by
    unfold C
    simp [show (1062882 * k + 307564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 303423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 303423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_303847 : ∀ k : Nat,
    iterate (1048576 * k + 303847) 32 = 531441 * k + 153997 ∧
      531441 * k + 153997 < 1048576 * k + 303847 := by
  intro k
  have h1 : C (1048576 * k + 303847) = 3145728 * k + 911542 := by
    unfold C
    simp [show (1048576 * k + 303847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 911542) = 1572864 * k + 455771 := by
    unfold C
    simp [show (3145728 * k + 911542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 455771) = 4718592 * k + 1367314 := by
    unfold C
    simp [show (1572864 * k + 455771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1367314) = 2359296 * k + 683657 := by
    unfold C
    simp [show (4718592 * k + 1367314) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 683657) = 7077888 * k + 2050972 := by
    unfold C
    simp [show (2359296 * k + 683657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2050972) = 3538944 * k + 1025486 := by
    unfold C
    simp [show (7077888 * k + 2050972) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1025486) = 1769472 * k + 512743 := by
    unfold C
    simp [show (3538944 * k + 1025486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 512743) = 5308416 * k + 1538230 := by
    unfold C
    simp [show (1769472 * k + 512743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1538230) = 2654208 * k + 769115 := by
    unfold C
    simp [show (5308416 * k + 1538230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 769115) = 7962624 * k + 2307346 := by
    unfold C
    simp [show (2654208 * k + 769115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2307346) = 3981312 * k + 1153673 := by
    unfold C
    simp [show (7962624 * k + 2307346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1153673) = 11943936 * k + 3461020 := by
    unfold C
    simp [show (3981312 * k + 1153673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3461020) = 5971968 * k + 1730510 := by
    unfold C
    simp [show (11943936 * k + 3461020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1730510) = 2985984 * k + 865255 := by
    unfold C
    simp [show (5971968 * k + 1730510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 865255) = 8957952 * k + 2595766 := by
    unfold C
    simp [show (2985984 * k + 865255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2595766) = 4478976 * k + 1297883 := by
    unfold C
    simp [show (8957952 * k + 2595766) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1297883) = 13436928 * k + 3893650 := by
    unfold C
    simp [show (4478976 * k + 1297883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3893650) = 6718464 * k + 1946825 := by
    unfold C
    simp [show (13436928 * k + 3893650) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1946825) = 20155392 * k + 5840476 := by
    unfold C
    simp [show (6718464 * k + 1946825) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5840476) = 10077696 * k + 2920238 := by
    unfold C
    simp [show (20155392 * k + 5840476) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2920238) = 5038848 * k + 1460119 := by
    unfold C
    simp [show (10077696 * k + 2920238) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1460119) = 15116544 * k + 4380358 := by
    unfold C
    simp [show (5038848 * k + 1460119) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4380358) = 7558272 * k + 2190179 := by
    unfold C
    simp [show (15116544 * k + 4380358) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2190179) = 22674816 * k + 6570538 := by
    unfold C
    simp [show (7558272 * k + 2190179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6570538) = 11337408 * k + 3285269 := by
    unfold C
    simp [show (22674816 * k + 6570538) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3285269) = 34012224 * k + 9855808 := by
    unfold C
    simp [show (11337408 * k + 3285269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9855808) = 17006112 * k + 4927904 := by
    unfold C
    simp [show (34012224 * k + 9855808) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4927904) = 8503056 * k + 2463952 := by
    unfold C
    simp [show (17006112 * k + 4927904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2463952) = 4251528 * k + 1231976 := by
    unfold C
    simp [show (8503056 * k + 2463952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1231976) = 2125764 * k + 615988 := by
    unfold C
    simp [show (4251528 * k + 1231976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 615988) = 1062882 * k + 307994 := by
    unfold C
    simp [show (2125764 * k + 615988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 307994) = 531441 * k + 153997 := by
    unfold C
    simp [show (1062882 * k + 307994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 303847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 303847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard040
