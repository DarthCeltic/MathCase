import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard110

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_859103 : ∀ k : Nat,
    iterate (1048576 * k + 859103) 32 = 531441 * k + 435413 ∧
      531441 * k + 435413 < 1048576 * k + 859103 := by
  intro k
  have h1 : C (1048576 * k + 859103) = 3145728 * k + 2577310 := by
    unfold C
    simp [show (1048576 * k + 859103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2577310) = 1572864 * k + 1288655 := by
    unfold C
    simp [show (3145728 * k + 2577310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1288655) = 4718592 * k + 3865966 := by
    unfold C
    simp [show (1572864 * k + 1288655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3865966) = 2359296 * k + 1932983 := by
    unfold C
    simp [show (4718592 * k + 3865966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1932983) = 7077888 * k + 5798950 := by
    unfold C
    simp [show (2359296 * k + 1932983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5798950) = 3538944 * k + 2899475 := by
    unfold C
    simp [show (7077888 * k + 5798950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2899475) = 10616832 * k + 8698426 := by
    unfold C
    simp [show (3538944 * k + 2899475) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8698426) = 5308416 * k + 4349213 := by
    unfold C
    simp [show (10616832 * k + 8698426) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4349213) = 15925248 * k + 13047640 := by
    unfold C
    simp [show (5308416 * k + 4349213) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13047640) = 7962624 * k + 6523820 := by
    unfold C
    simp [show (15925248 * k + 13047640) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6523820) = 3981312 * k + 3261910 := by
    unfold C
    simp [show (7962624 * k + 6523820) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3261910) = 1990656 * k + 1630955 := by
    unfold C
    simp [show (3981312 * k + 3261910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1630955) = 5971968 * k + 4892866 := by
    unfold C
    simp [show (1990656 * k + 1630955) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4892866) = 2985984 * k + 2446433 := by
    unfold C
    simp [show (5971968 * k + 4892866) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2446433) = 8957952 * k + 7339300 := by
    unfold C
    simp [show (2985984 * k + 2446433) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7339300) = 4478976 * k + 3669650 := by
    unfold C
    simp [show (8957952 * k + 7339300) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3669650) = 2239488 * k + 1834825 := by
    unfold C
    simp [show (4478976 * k + 3669650) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1834825) = 6718464 * k + 5504476 := by
    unfold C
    simp [show (2239488 * k + 1834825) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5504476) = 3359232 * k + 2752238 := by
    unfold C
    simp [show (6718464 * k + 5504476) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2752238) = 1679616 * k + 1376119 := by
    unfold C
    simp [show (3359232 * k + 2752238) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1376119) = 5038848 * k + 4128358 := by
    unfold C
    simp [show (1679616 * k + 1376119) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4128358) = 2519424 * k + 2064179 := by
    unfold C
    simp [show (5038848 * k + 4128358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2064179) = 7558272 * k + 6192538 := by
    unfold C
    simp [show (2519424 * k + 2064179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6192538) = 3779136 * k + 3096269 := by
    unfold C
    simp [show (7558272 * k + 6192538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3096269) = 11337408 * k + 9288808 := by
    unfold C
    simp [show (3779136 * k + 3096269) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9288808) = 5668704 * k + 4644404 := by
    unfold C
    simp [show (11337408 * k + 9288808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4644404) = 2834352 * k + 2322202 := by
    unfold C
    simp [show (5668704 * k + 4644404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2322202) = 1417176 * k + 1161101 := by
    unfold C
    simp [show (2834352 * k + 2322202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1161101) = 4251528 * k + 3483304 := by
    unfold C
    simp [show (1417176 * k + 1161101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3483304) = 2125764 * k + 1741652 := by
    unfold C
    simp [show (4251528 * k + 3483304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1741652) = 1062882 * k + 870826 := by
    unfold C
    simp [show (2125764 * k + 1741652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 870826) = 531441 * k + 435413 := by
    unfold C
    simp [show (1062882 * k + 870826) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 859103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 859103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_859119 : ∀ k : Nat,
    iterate (1048576 * k + 859119) 32 = 531441 * k + 435421 ∧
      531441 * k + 435421 < 1048576 * k + 859119 := by
  intro k
  have h1 : C (1048576 * k + 859119) = 3145728 * k + 2577358 := by
    unfold C
    simp [show (1048576 * k + 859119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2577358) = 1572864 * k + 1288679 := by
    unfold C
    simp [show (3145728 * k + 2577358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1288679) = 4718592 * k + 3866038 := by
    unfold C
    simp [show (1572864 * k + 1288679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3866038) = 2359296 * k + 1933019 := by
    unfold C
    simp [show (4718592 * k + 3866038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1933019) = 7077888 * k + 5799058 := by
    unfold C
    simp [show (2359296 * k + 1933019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5799058) = 3538944 * k + 2899529 := by
    unfold C
    simp [show (7077888 * k + 5799058) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2899529) = 10616832 * k + 8698588 := by
    unfold C
    simp [show (3538944 * k + 2899529) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8698588) = 5308416 * k + 4349294 := by
    unfold C
    simp [show (10616832 * k + 8698588) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4349294) = 2654208 * k + 2174647 := by
    unfold C
    simp [show (5308416 * k + 4349294) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2174647) = 7962624 * k + 6523942 := by
    unfold C
    simp [show (2654208 * k + 2174647) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6523942) = 3981312 * k + 3261971 := by
    unfold C
    simp [show (7962624 * k + 6523942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3261971) = 11943936 * k + 9785914 := by
    unfold C
    simp [show (3981312 * k + 3261971) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9785914) = 5971968 * k + 4892957 := by
    unfold C
    simp [show (11943936 * k + 9785914) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4892957) = 17915904 * k + 14678872 := by
    unfold C
    simp [show (5971968 * k + 4892957) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14678872) = 8957952 * k + 7339436 := by
    unfold C
    simp [show (17915904 * k + 14678872) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7339436) = 4478976 * k + 3669718 := by
    unfold C
    simp [show (8957952 * k + 7339436) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3669718) = 2239488 * k + 1834859 := by
    unfold C
    simp [show (4478976 * k + 3669718) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1834859) = 6718464 * k + 5504578 := by
    unfold C
    simp [show (2239488 * k + 1834859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5504578) = 3359232 * k + 2752289 := by
    unfold C
    simp [show (6718464 * k + 5504578) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2752289) = 10077696 * k + 8256868 := by
    unfold C
    simp [show (3359232 * k + 2752289) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8256868) = 5038848 * k + 4128434 := by
    unfold C
    simp [show (10077696 * k + 8256868) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4128434) = 2519424 * k + 2064217 := by
    unfold C
    simp [show (5038848 * k + 4128434) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2064217) = 7558272 * k + 6192652 := by
    unfold C
    simp [show (2519424 * k + 2064217) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6192652) = 3779136 * k + 3096326 := by
    unfold C
    simp [show (7558272 * k + 6192652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3096326) = 1889568 * k + 1548163 := by
    unfold C
    simp [show (3779136 * k + 3096326) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1548163) = 5668704 * k + 4644490 := by
    unfold C
    simp [show (1889568 * k + 1548163) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4644490) = 2834352 * k + 2322245 := by
    unfold C
    simp [show (5668704 * k + 4644490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2322245) = 8503056 * k + 6966736 := by
    unfold C
    simp [show (2834352 * k + 2322245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6966736) = 4251528 * k + 3483368 := by
    unfold C
    simp [show (8503056 * k + 6966736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3483368) = 2125764 * k + 1741684 := by
    unfold C
    simp [show (4251528 * k + 3483368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1741684) = 1062882 * k + 870842 := by
    unfold C
    simp [show (2125764 * k + 1741684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 870842) = 531441 * k + 435421 := by
    unfold C
    simp [show (1062882 * k + 870842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 859119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 859119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_859695 : ∀ k : Nat,
    iterate (1048576 * k + 859695) 32 = 531441 * k + 435713 ∧
      531441 * k + 435713 < 1048576 * k + 859695 := by
  intro k
  have h1 : C (1048576 * k + 859695) = 3145728 * k + 2579086 := by
    unfold C
    simp [show (1048576 * k + 859695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2579086) = 1572864 * k + 1289543 := by
    unfold C
    simp [show (3145728 * k + 2579086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1289543) = 4718592 * k + 3868630 := by
    unfold C
    simp [show (1572864 * k + 1289543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3868630) = 2359296 * k + 1934315 := by
    unfold C
    simp [show (4718592 * k + 3868630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1934315) = 7077888 * k + 5802946 := by
    unfold C
    simp [show (2359296 * k + 1934315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5802946) = 3538944 * k + 2901473 := by
    unfold C
    simp [show (7077888 * k + 5802946) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2901473) = 10616832 * k + 8704420 := by
    unfold C
    simp [show (3538944 * k + 2901473) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8704420) = 5308416 * k + 4352210 := by
    unfold C
    simp [show (10616832 * k + 8704420) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4352210) = 2654208 * k + 2176105 := by
    unfold C
    simp [show (5308416 * k + 4352210) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2176105) = 7962624 * k + 6528316 := by
    unfold C
    simp [show (2654208 * k + 2176105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6528316) = 3981312 * k + 3264158 := by
    unfold C
    simp [show (7962624 * k + 6528316) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3264158) = 1990656 * k + 1632079 := by
    unfold C
    simp [show (3981312 * k + 3264158) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1632079) = 5971968 * k + 4896238 := by
    unfold C
    simp [show (1990656 * k + 1632079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4896238) = 2985984 * k + 2448119 := by
    unfold C
    simp [show (5971968 * k + 4896238) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2448119) = 8957952 * k + 7344358 := by
    unfold C
    simp [show (2985984 * k + 2448119) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7344358) = 4478976 * k + 3672179 := by
    unfold C
    simp [show (8957952 * k + 7344358) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3672179) = 13436928 * k + 11016538 := by
    unfold C
    simp [show (4478976 * k + 3672179) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11016538) = 6718464 * k + 5508269 := by
    unfold C
    simp [show (13436928 * k + 11016538) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5508269) = 20155392 * k + 16524808 := by
    unfold C
    simp [show (6718464 * k + 5508269) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16524808) = 10077696 * k + 8262404 := by
    unfold C
    simp [show (20155392 * k + 16524808) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8262404) = 5038848 * k + 4131202 := by
    unfold C
    simp [show (10077696 * k + 8262404) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4131202) = 2519424 * k + 2065601 := by
    unfold C
    simp [show (5038848 * k + 4131202) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2065601) = 7558272 * k + 6196804 := by
    unfold C
    simp [show (2519424 * k + 2065601) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6196804) = 3779136 * k + 3098402 := by
    unfold C
    simp [show (7558272 * k + 6196804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3098402) = 1889568 * k + 1549201 := by
    unfold C
    simp [show (3779136 * k + 3098402) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1549201) = 5668704 * k + 4647604 := by
    unfold C
    simp [show (1889568 * k + 1549201) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4647604) = 2834352 * k + 2323802 := by
    unfold C
    simp [show (5668704 * k + 4647604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2323802) = 1417176 * k + 1161901 := by
    unfold C
    simp [show (2834352 * k + 2323802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1161901) = 4251528 * k + 3485704 := by
    unfold C
    simp [show (1417176 * k + 1161901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3485704) = 2125764 * k + 1742852 := by
    unfold C
    simp [show (4251528 * k + 3485704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1742852) = 1062882 * k + 871426 := by
    unfold C
    simp [show (2125764 * k + 1742852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 871426) = 531441 * k + 435713 := by
    unfold C
    simp [show (1062882 * k + 871426) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 859695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 859695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_860263 : ∀ k : Nat,
    iterate (1048576 * k + 860263) 32 = 531441 * k + 436001 ∧
      531441 * k + 436001 < 1048576 * k + 860263 := by
  intro k
  have h1 : C (1048576 * k + 860263) = 3145728 * k + 2580790 := by
    unfold C
    simp [show (1048576 * k + 860263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2580790) = 1572864 * k + 1290395 := by
    unfold C
    simp [show (3145728 * k + 2580790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1290395) = 4718592 * k + 3871186 := by
    unfold C
    simp [show (1572864 * k + 1290395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3871186) = 2359296 * k + 1935593 := by
    unfold C
    simp [show (4718592 * k + 3871186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1935593) = 7077888 * k + 5806780 := by
    unfold C
    simp [show (2359296 * k + 1935593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5806780) = 3538944 * k + 2903390 := by
    unfold C
    simp [show (7077888 * k + 5806780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2903390) = 1769472 * k + 1451695 := by
    unfold C
    simp [show (3538944 * k + 2903390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1451695) = 5308416 * k + 4355086 := by
    unfold C
    simp [show (1769472 * k + 1451695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4355086) = 2654208 * k + 2177543 := by
    unfold C
    simp [show (5308416 * k + 4355086) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2177543) = 7962624 * k + 6532630 := by
    unfold C
    simp [show (2654208 * k + 2177543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6532630) = 3981312 * k + 3266315 := by
    unfold C
    simp [show (7962624 * k + 6532630) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3266315) = 11943936 * k + 9798946 := by
    unfold C
    simp [show (3981312 * k + 3266315) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9798946) = 5971968 * k + 4899473 := by
    unfold C
    simp [show (11943936 * k + 9798946) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4899473) = 17915904 * k + 14698420 := by
    unfold C
    simp [show (5971968 * k + 4899473) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14698420) = 8957952 * k + 7349210 := by
    unfold C
    simp [show (17915904 * k + 14698420) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7349210) = 4478976 * k + 3674605 := by
    unfold C
    simp [show (8957952 * k + 7349210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3674605) = 13436928 * k + 11023816 := by
    unfold C
    simp [show (4478976 * k + 3674605) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11023816) = 6718464 * k + 5511908 := by
    unfold C
    simp [show (13436928 * k + 11023816) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5511908) = 3359232 * k + 2755954 := by
    unfold C
    simp [show (6718464 * k + 5511908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2755954) = 1679616 * k + 1377977 := by
    unfold C
    simp [show (3359232 * k + 2755954) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1377977) = 5038848 * k + 4133932 := by
    unfold C
    simp [show (1679616 * k + 1377977) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4133932) = 2519424 * k + 2066966 := by
    unfold C
    simp [show (5038848 * k + 4133932) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2066966) = 1259712 * k + 1033483 := by
    unfold C
    simp [show (2519424 * k + 2066966) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1033483) = 3779136 * k + 3100450 := by
    unfold C
    simp [show (1259712 * k + 1033483) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3100450) = 1889568 * k + 1550225 := by
    unfold C
    simp [show (3779136 * k + 3100450) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1550225) = 5668704 * k + 4650676 := by
    unfold C
    simp [show (1889568 * k + 1550225) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4650676) = 2834352 * k + 2325338 := by
    unfold C
    simp [show (5668704 * k + 4650676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2325338) = 1417176 * k + 1162669 := by
    unfold C
    simp [show (2834352 * k + 2325338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1162669) = 4251528 * k + 3488008 := by
    unfold C
    simp [show (1417176 * k + 1162669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3488008) = 2125764 * k + 1744004 := by
    unfold C
    simp [show (4251528 * k + 3488008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1744004) = 1062882 * k + 872002 := by
    unfold C
    simp [show (2125764 * k + 1744004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 872002) = 531441 * k + 436001 := by
    unfold C
    simp [show (1062882 * k + 872002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 860263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 860263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_860927 : ∀ k : Nat,
    iterate (1048576 * k + 860927) 32 = 531441 * k + 436337 ∧
      531441 * k + 436337 < 1048576 * k + 860927 := by
  intro k
  have h1 : C (1048576 * k + 860927) = 3145728 * k + 2582782 := by
    unfold C
    simp [show (1048576 * k + 860927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2582782) = 1572864 * k + 1291391 := by
    unfold C
    simp [show (3145728 * k + 2582782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1291391) = 4718592 * k + 3874174 := by
    unfold C
    simp [show (1572864 * k + 1291391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3874174) = 2359296 * k + 1937087 := by
    unfold C
    simp [show (4718592 * k + 3874174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1937087) = 7077888 * k + 5811262 := by
    unfold C
    simp [show (2359296 * k + 1937087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5811262) = 3538944 * k + 2905631 := by
    unfold C
    simp [show (7077888 * k + 5811262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2905631) = 10616832 * k + 8716894 := by
    unfold C
    simp [show (3538944 * k + 2905631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8716894) = 5308416 * k + 4358447 := by
    unfold C
    simp [show (10616832 * k + 8716894) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4358447) = 15925248 * k + 13075342 := by
    unfold C
    simp [show (5308416 * k + 4358447) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13075342) = 7962624 * k + 6537671 := by
    unfold C
    simp [show (15925248 * k + 13075342) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6537671) = 23887872 * k + 19613014 := by
    unfold C
    simp [show (7962624 * k + 6537671) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19613014) = 11943936 * k + 9806507 := by
    unfold C
    simp [show (23887872 * k + 19613014) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9806507) = 35831808 * k + 29419522 := by
    unfold C
    simp [show (11943936 * k + 9806507) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29419522) = 17915904 * k + 14709761 := by
    unfold C
    simp [show (35831808 * k + 29419522) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14709761) = 53747712 * k + 44129284 := by
    unfold C
    simp [show (17915904 * k + 14709761) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44129284) = 26873856 * k + 22064642 := by
    unfold C
    simp [show (53747712 * k + 44129284) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22064642) = 13436928 * k + 11032321 := by
    unfold C
    simp [show (26873856 * k + 22064642) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11032321) = 40310784 * k + 33096964 := by
    unfold C
    simp [show (13436928 * k + 11032321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 33096964) = 20155392 * k + 16548482 := by
    unfold C
    simp [show (40310784 * k + 33096964) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16548482) = 10077696 * k + 8274241 := by
    unfold C
    simp [show (20155392 * k + 16548482) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8274241) = 30233088 * k + 24822724 := by
    unfold C
    simp [show (10077696 * k + 8274241) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24822724) = 15116544 * k + 12411362 := by
    unfold C
    simp [show (30233088 * k + 24822724) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12411362) = 7558272 * k + 6205681 := by
    unfold C
    simp [show (15116544 * k + 12411362) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6205681) = 22674816 * k + 18617044 := by
    unfold C
    simp [show (7558272 * k + 6205681) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18617044) = 11337408 * k + 9308522 := by
    unfold C
    simp [show (22674816 * k + 18617044) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9308522) = 5668704 * k + 4654261 := by
    unfold C
    simp [show (11337408 * k + 9308522) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4654261) = 17006112 * k + 13962784 := by
    unfold C
    simp [show (5668704 * k + 4654261) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13962784) = 8503056 * k + 6981392 := by
    unfold C
    simp [show (17006112 * k + 13962784) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6981392) = 4251528 * k + 3490696 := by
    unfold C
    simp [show (8503056 * k + 6981392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3490696) = 2125764 * k + 1745348 := by
    unfold C
    simp [show (4251528 * k + 3490696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1745348) = 1062882 * k + 872674 := by
    unfold C
    simp [show (2125764 * k + 1745348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 872674) = 531441 * k + 436337 := by
    unfold C
    simp [show (1062882 * k + 872674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 860927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 860927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_861275 : ∀ k : Nat,
    iterate (1048576 * k + 861275) 32 = 531441 * k + 436514 ∧
      531441 * k + 436514 < 1048576 * k + 861275 := by
  intro k
  have h1 : C (1048576 * k + 861275) = 3145728 * k + 2583826 := by
    unfold C
    simp [show (1048576 * k + 861275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2583826) = 1572864 * k + 1291913 := by
    unfold C
    simp [show (3145728 * k + 2583826) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1291913) = 4718592 * k + 3875740 := by
    unfold C
    simp [show (1572864 * k + 1291913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3875740) = 2359296 * k + 1937870 := by
    unfold C
    simp [show (4718592 * k + 3875740) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1937870) = 1179648 * k + 968935 := by
    unfold C
    simp [show (2359296 * k + 1937870) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 968935) = 3538944 * k + 2906806 := by
    unfold C
    simp [show (1179648 * k + 968935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2906806) = 1769472 * k + 1453403 := by
    unfold C
    simp [show (3538944 * k + 2906806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1453403) = 5308416 * k + 4360210 := by
    unfold C
    simp [show (1769472 * k + 1453403) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4360210) = 2654208 * k + 2180105 := by
    unfold C
    simp [show (5308416 * k + 4360210) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2180105) = 7962624 * k + 6540316 := by
    unfold C
    simp [show (2654208 * k + 2180105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6540316) = 3981312 * k + 3270158 := by
    unfold C
    simp [show (7962624 * k + 6540316) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3270158) = 1990656 * k + 1635079 := by
    unfold C
    simp [show (3981312 * k + 3270158) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1635079) = 5971968 * k + 4905238 := by
    unfold C
    simp [show (1990656 * k + 1635079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4905238) = 2985984 * k + 2452619 := by
    unfold C
    simp [show (5971968 * k + 4905238) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2452619) = 8957952 * k + 7357858 := by
    unfold C
    simp [show (2985984 * k + 2452619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7357858) = 4478976 * k + 3678929 := by
    unfold C
    simp [show (8957952 * k + 7357858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3678929) = 13436928 * k + 11036788 := by
    unfold C
    simp [show (4478976 * k + 3678929) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11036788) = 6718464 * k + 5518394 := by
    unfold C
    simp [show (13436928 * k + 11036788) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5518394) = 3359232 * k + 2759197 := by
    unfold C
    simp [show (6718464 * k + 5518394) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2759197) = 10077696 * k + 8277592 := by
    unfold C
    simp [show (3359232 * k + 2759197) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8277592) = 5038848 * k + 4138796 := by
    unfold C
    simp [show (10077696 * k + 8277592) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4138796) = 2519424 * k + 2069398 := by
    unfold C
    simp [show (5038848 * k + 4138796) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2069398) = 1259712 * k + 1034699 := by
    unfold C
    simp [show (2519424 * k + 2069398) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1034699) = 3779136 * k + 3104098 := by
    unfold C
    simp [show (1259712 * k + 1034699) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3104098) = 1889568 * k + 1552049 := by
    unfold C
    simp [show (3779136 * k + 3104098) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1552049) = 5668704 * k + 4656148 := by
    unfold C
    simp [show (1889568 * k + 1552049) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4656148) = 2834352 * k + 2328074 := by
    unfold C
    simp [show (5668704 * k + 4656148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2328074) = 1417176 * k + 1164037 := by
    unfold C
    simp [show (2834352 * k + 2328074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1164037) = 4251528 * k + 3492112 := by
    unfold C
    simp [show (1417176 * k + 1164037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3492112) = 2125764 * k + 1746056 := by
    unfold C
    simp [show (4251528 * k + 3492112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1746056) = 1062882 * k + 873028 := by
    unfold C
    simp [show (2125764 * k + 1746056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 873028) = 531441 * k + 436514 := by
    unfold C
    simp [show (1062882 * k + 873028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 861275) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 861275)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_861435 : ∀ k : Nat,
    iterate (1048576 * k + 861435) 32 = 531441 * k + 436595 ∧
      531441 * k + 436595 < 1048576 * k + 861435 := by
  intro k
  have h1 : C (1048576 * k + 861435) = 3145728 * k + 2584306 := by
    unfold C
    simp [show (1048576 * k + 861435) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2584306) = 1572864 * k + 1292153 := by
    unfold C
    simp [show (3145728 * k + 2584306) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1292153) = 4718592 * k + 3876460 := by
    unfold C
    simp [show (1572864 * k + 1292153) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3876460) = 2359296 * k + 1938230 := by
    unfold C
    simp [show (4718592 * k + 3876460) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1938230) = 1179648 * k + 969115 := by
    unfold C
    simp [show (2359296 * k + 1938230) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 969115) = 3538944 * k + 2907346 := by
    unfold C
    simp [show (1179648 * k + 969115) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2907346) = 1769472 * k + 1453673 := by
    unfold C
    simp [show (3538944 * k + 2907346) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1453673) = 5308416 * k + 4361020 := by
    unfold C
    simp [show (1769472 * k + 1453673) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4361020) = 2654208 * k + 2180510 := by
    unfold C
    simp [show (5308416 * k + 4361020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2180510) = 1327104 * k + 1090255 := by
    unfold C
    simp [show (2654208 * k + 2180510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1090255) = 3981312 * k + 3270766 := by
    unfold C
    simp [show (1327104 * k + 1090255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3270766) = 1990656 * k + 1635383 := by
    unfold C
    simp [show (3981312 * k + 3270766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1635383) = 5971968 * k + 4906150 := by
    unfold C
    simp [show (1990656 * k + 1635383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4906150) = 2985984 * k + 2453075 := by
    unfold C
    simp [show (5971968 * k + 4906150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2453075) = 8957952 * k + 7359226 := by
    unfold C
    simp [show (2985984 * k + 2453075) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7359226) = 4478976 * k + 3679613 := by
    unfold C
    simp [show (8957952 * k + 7359226) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3679613) = 13436928 * k + 11038840 := by
    unfold C
    simp [show (4478976 * k + 3679613) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11038840) = 6718464 * k + 5519420 := by
    unfold C
    simp [show (13436928 * k + 11038840) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5519420) = 3359232 * k + 2759710 := by
    unfold C
    simp [show (6718464 * k + 5519420) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2759710) = 1679616 * k + 1379855 := by
    unfold C
    simp [show (3359232 * k + 2759710) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1379855) = 5038848 * k + 4139566 := by
    unfold C
    simp [show (1679616 * k + 1379855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4139566) = 2519424 * k + 2069783 := by
    unfold C
    simp [show (5038848 * k + 4139566) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2069783) = 7558272 * k + 6209350 := by
    unfold C
    simp [show (2519424 * k + 2069783) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6209350) = 3779136 * k + 3104675 := by
    unfold C
    simp [show (7558272 * k + 6209350) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3104675) = 11337408 * k + 9314026 := by
    unfold C
    simp [show (3779136 * k + 3104675) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9314026) = 5668704 * k + 4657013 := by
    unfold C
    simp [show (11337408 * k + 9314026) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4657013) = 17006112 * k + 13971040 := by
    unfold C
    simp [show (5668704 * k + 4657013) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13971040) = 8503056 * k + 6985520 := by
    unfold C
    simp [show (17006112 * k + 13971040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6985520) = 4251528 * k + 3492760 := by
    unfold C
    simp [show (8503056 * k + 6985520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3492760) = 2125764 * k + 1746380 := by
    unfold C
    simp [show (4251528 * k + 3492760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1746380) = 1062882 * k + 873190 := by
    unfold C
    simp [show (2125764 * k + 1746380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 873190) = 531441 * k + 436595 := by
    unfold C
    simp [show (1062882 * k + 873190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 861435) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 861435)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_861951 : ∀ k : Nat,
    iterate (1048576 * k + 861951) 32 = 531441 * k + 436856 ∧
      531441 * k + 436856 < 1048576 * k + 861951 := by
  intro k
  have h1 : C (1048576 * k + 861951) = 3145728 * k + 2585854 := by
    unfold C
    simp [show (1048576 * k + 861951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2585854) = 1572864 * k + 1292927 := by
    unfold C
    simp [show (3145728 * k + 2585854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1292927) = 4718592 * k + 3878782 := by
    unfold C
    simp [show (1572864 * k + 1292927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3878782) = 2359296 * k + 1939391 := by
    unfold C
    simp [show (4718592 * k + 3878782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1939391) = 7077888 * k + 5818174 := by
    unfold C
    simp [show (2359296 * k + 1939391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5818174) = 3538944 * k + 2909087 := by
    unfold C
    simp [show (7077888 * k + 5818174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2909087) = 10616832 * k + 8727262 := by
    unfold C
    simp [show (3538944 * k + 2909087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8727262) = 5308416 * k + 4363631 := by
    unfold C
    simp [show (10616832 * k + 8727262) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4363631) = 15925248 * k + 13090894 := by
    unfold C
    simp [show (5308416 * k + 4363631) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13090894) = 7962624 * k + 6545447 := by
    unfold C
    simp [show (15925248 * k + 13090894) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6545447) = 23887872 * k + 19636342 := by
    unfold C
    simp [show (7962624 * k + 6545447) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19636342) = 11943936 * k + 9818171 := by
    unfold C
    simp [show (23887872 * k + 19636342) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9818171) = 35831808 * k + 29454514 := by
    unfold C
    simp [show (11943936 * k + 9818171) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29454514) = 17915904 * k + 14727257 := by
    unfold C
    simp [show (35831808 * k + 29454514) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14727257) = 53747712 * k + 44181772 := by
    unfold C
    simp [show (17915904 * k + 14727257) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44181772) = 26873856 * k + 22090886 := by
    unfold C
    simp [show (53747712 * k + 44181772) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22090886) = 13436928 * k + 11045443 := by
    unfold C
    simp [show (26873856 * k + 22090886) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11045443) = 40310784 * k + 33136330 := by
    unfold C
    simp [show (13436928 * k + 11045443) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 33136330) = 20155392 * k + 16568165 := by
    unfold C
    simp [show (40310784 * k + 33136330) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16568165) = 60466176 * k + 49704496 := by
    unfold C
    simp [show (20155392 * k + 16568165) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 49704496) = 30233088 * k + 24852248 := by
    unfold C
    simp [show (60466176 * k + 49704496) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 24852248) = 15116544 * k + 12426124 := by
    unfold C
    simp [show (30233088 * k + 24852248) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12426124) = 7558272 * k + 6213062 := by
    unfold C
    simp [show (15116544 * k + 12426124) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6213062) = 3779136 * k + 3106531 := by
    unfold C
    simp [show (7558272 * k + 6213062) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3106531) = 11337408 * k + 9319594 := by
    unfold C
    simp [show (3779136 * k + 3106531) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9319594) = 5668704 * k + 4659797 := by
    unfold C
    simp [show (11337408 * k + 9319594) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4659797) = 17006112 * k + 13979392 := by
    unfold C
    simp [show (5668704 * k + 4659797) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13979392) = 8503056 * k + 6989696 := by
    unfold C
    simp [show (17006112 * k + 13979392) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6989696) = 4251528 * k + 3494848 := by
    unfold C
    simp [show (8503056 * k + 6989696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3494848) = 2125764 * k + 1747424 := by
    unfold C
    simp [show (4251528 * k + 3494848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1747424) = 1062882 * k + 873712 := by
    unfold C
    simp [show (2125764 * k + 1747424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 873712) = 531441 * k + 436856 := by
    unfold C
    simp [show (1062882 * k + 873712) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 861951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 861951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_862079 : ∀ k : Nat,
    iterate (1048576 * k + 862079) 32 = 531441 * k + 436921 ∧
      531441 * k + 436921 < 1048576 * k + 862079 := by
  intro k
  have h1 : C (1048576 * k + 862079) = 3145728 * k + 2586238 := by
    unfold C
    simp [show (1048576 * k + 862079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2586238) = 1572864 * k + 1293119 := by
    unfold C
    simp [show (3145728 * k + 2586238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1293119) = 4718592 * k + 3879358 := by
    unfold C
    simp [show (1572864 * k + 1293119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3879358) = 2359296 * k + 1939679 := by
    unfold C
    simp [show (4718592 * k + 3879358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1939679) = 7077888 * k + 5819038 := by
    unfold C
    simp [show (2359296 * k + 1939679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5819038) = 3538944 * k + 2909519 := by
    unfold C
    simp [show (7077888 * k + 5819038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2909519) = 10616832 * k + 8728558 := by
    unfold C
    simp [show (3538944 * k + 2909519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8728558) = 5308416 * k + 4364279 := by
    unfold C
    simp [show (10616832 * k + 8728558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4364279) = 15925248 * k + 13092838 := by
    unfold C
    simp [show (5308416 * k + 4364279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13092838) = 7962624 * k + 6546419 := by
    unfold C
    simp [show (15925248 * k + 13092838) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6546419) = 23887872 * k + 19639258 := by
    unfold C
    simp [show (7962624 * k + 6546419) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19639258) = 11943936 * k + 9819629 := by
    unfold C
    simp [show (23887872 * k + 19639258) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9819629) = 35831808 * k + 29458888 := by
    unfold C
    simp [show (11943936 * k + 9819629) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29458888) = 17915904 * k + 14729444 := by
    unfold C
    simp [show (35831808 * k + 29458888) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14729444) = 8957952 * k + 7364722 := by
    unfold C
    simp [show (17915904 * k + 14729444) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7364722) = 4478976 * k + 3682361 := by
    unfold C
    simp [show (8957952 * k + 7364722) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3682361) = 13436928 * k + 11047084 := by
    unfold C
    simp [show (4478976 * k + 3682361) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11047084) = 6718464 * k + 5523542 := by
    unfold C
    simp [show (13436928 * k + 11047084) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5523542) = 3359232 * k + 2761771 := by
    unfold C
    simp [show (6718464 * k + 5523542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2761771) = 10077696 * k + 8285314 := by
    unfold C
    simp [show (3359232 * k + 2761771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8285314) = 5038848 * k + 4142657 := by
    unfold C
    simp [show (10077696 * k + 8285314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4142657) = 15116544 * k + 12427972 := by
    unfold C
    simp [show (5038848 * k + 4142657) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12427972) = 7558272 * k + 6213986 := by
    unfold C
    simp [show (15116544 * k + 12427972) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6213986) = 3779136 * k + 3106993 := by
    unfold C
    simp [show (7558272 * k + 6213986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3106993) = 11337408 * k + 9320980 := by
    unfold C
    simp [show (3779136 * k + 3106993) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9320980) = 5668704 * k + 4660490 := by
    unfold C
    simp [show (11337408 * k + 9320980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4660490) = 2834352 * k + 2330245 := by
    unfold C
    simp [show (5668704 * k + 4660490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2330245) = 8503056 * k + 6990736 := by
    unfold C
    simp [show (2834352 * k + 2330245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6990736) = 4251528 * k + 3495368 := by
    unfold C
    simp [show (8503056 * k + 6990736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3495368) = 2125764 * k + 1747684 := by
    unfold C
    simp [show (4251528 * k + 3495368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1747684) = 1062882 * k + 873842 := by
    unfold C
    simp [show (2125764 * k + 1747684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 873842) = 531441 * k + 436921 := by
    unfold C
    simp [show (1062882 * k + 873842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 862079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 862079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_862459 : ∀ k : Nat,
    iterate (1048576 * k + 862459) 32 = 531441 * k + 437114 ∧
      531441 * k + 437114 < 1048576 * k + 862459 := by
  intro k
  have h1 : C (1048576 * k + 862459) = 3145728 * k + 2587378 := by
    unfold C
    simp [show (1048576 * k + 862459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2587378) = 1572864 * k + 1293689 := by
    unfold C
    simp [show (3145728 * k + 2587378) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1293689) = 4718592 * k + 3881068 := by
    unfold C
    simp [show (1572864 * k + 1293689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3881068) = 2359296 * k + 1940534 := by
    unfold C
    simp [show (4718592 * k + 3881068) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1940534) = 1179648 * k + 970267 := by
    unfold C
    simp [show (2359296 * k + 1940534) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 970267) = 3538944 * k + 2910802 := by
    unfold C
    simp [show (1179648 * k + 970267) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2910802) = 1769472 * k + 1455401 := by
    unfold C
    simp [show (3538944 * k + 2910802) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1455401) = 5308416 * k + 4366204 := by
    unfold C
    simp [show (1769472 * k + 1455401) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4366204) = 2654208 * k + 2183102 := by
    unfold C
    simp [show (5308416 * k + 4366204) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2183102) = 1327104 * k + 1091551 := by
    unfold C
    simp [show (2654208 * k + 2183102) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1091551) = 3981312 * k + 3274654 := by
    unfold C
    simp [show (1327104 * k + 1091551) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3274654) = 1990656 * k + 1637327 := by
    unfold C
    simp [show (3981312 * k + 3274654) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1637327) = 5971968 * k + 4911982 := by
    unfold C
    simp [show (1990656 * k + 1637327) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4911982) = 2985984 * k + 2455991 := by
    unfold C
    simp [show (5971968 * k + 4911982) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2455991) = 8957952 * k + 7367974 := by
    unfold C
    simp [show (2985984 * k + 2455991) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7367974) = 4478976 * k + 3683987 := by
    unfold C
    simp [show (8957952 * k + 7367974) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3683987) = 13436928 * k + 11051962 := by
    unfold C
    simp [show (4478976 * k + 3683987) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11051962) = 6718464 * k + 5525981 := by
    unfold C
    simp [show (13436928 * k + 11051962) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5525981) = 20155392 * k + 16577944 := by
    unfold C
    simp [show (6718464 * k + 5525981) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16577944) = 10077696 * k + 8288972 := by
    unfold C
    simp [show (20155392 * k + 16577944) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8288972) = 5038848 * k + 4144486 := by
    unfold C
    simp [show (10077696 * k + 8288972) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4144486) = 2519424 * k + 2072243 := by
    unfold C
    simp [show (5038848 * k + 4144486) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2072243) = 7558272 * k + 6216730 := by
    unfold C
    simp [show (2519424 * k + 2072243) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6216730) = 3779136 * k + 3108365 := by
    unfold C
    simp [show (7558272 * k + 6216730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3108365) = 11337408 * k + 9325096 := by
    unfold C
    simp [show (3779136 * k + 3108365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9325096) = 5668704 * k + 4662548 := by
    unfold C
    simp [show (11337408 * k + 9325096) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4662548) = 2834352 * k + 2331274 := by
    unfold C
    simp [show (5668704 * k + 4662548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2331274) = 1417176 * k + 1165637 := by
    unfold C
    simp [show (2834352 * k + 2331274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1165637) = 4251528 * k + 3496912 := by
    unfold C
    simp [show (1417176 * k + 1165637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3496912) = 2125764 * k + 1748456 := by
    unfold C
    simp [show (4251528 * k + 3496912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1748456) = 1062882 * k + 874228 := by
    unfold C
    simp [show (2125764 * k + 1748456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 874228) = 531441 * k + 437114 := by
    unfold C
    simp [show (1062882 * k + 874228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 862459) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 862459)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_862927 : ∀ k : Nat,
    iterate (1048576 * k + 862927) 32 = 531441 * k + 437351 ∧
      531441 * k + 437351 < 1048576 * k + 862927 := by
  intro k
  have h1 : C (1048576 * k + 862927) = 3145728 * k + 2588782 := by
    unfold C
    simp [show (1048576 * k + 862927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2588782) = 1572864 * k + 1294391 := by
    unfold C
    simp [show (3145728 * k + 2588782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1294391) = 4718592 * k + 3883174 := by
    unfold C
    simp [show (1572864 * k + 1294391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3883174) = 2359296 * k + 1941587 := by
    unfold C
    simp [show (4718592 * k + 3883174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1941587) = 7077888 * k + 5824762 := by
    unfold C
    simp [show (2359296 * k + 1941587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5824762) = 3538944 * k + 2912381 := by
    unfold C
    simp [show (7077888 * k + 5824762) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2912381) = 10616832 * k + 8737144 := by
    unfold C
    simp [show (3538944 * k + 2912381) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8737144) = 5308416 * k + 4368572 := by
    unfold C
    simp [show (10616832 * k + 8737144) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4368572) = 2654208 * k + 2184286 := by
    unfold C
    simp [show (5308416 * k + 4368572) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2184286) = 1327104 * k + 1092143 := by
    unfold C
    simp [show (2654208 * k + 2184286) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1092143) = 3981312 * k + 3276430 := by
    unfold C
    simp [show (1327104 * k + 1092143) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3276430) = 1990656 * k + 1638215 := by
    unfold C
    simp [show (3981312 * k + 3276430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1638215) = 5971968 * k + 4914646 := by
    unfold C
    simp [show (1990656 * k + 1638215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4914646) = 2985984 * k + 2457323 := by
    unfold C
    simp [show (5971968 * k + 4914646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2457323) = 8957952 * k + 7371970 := by
    unfold C
    simp [show (2985984 * k + 2457323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7371970) = 4478976 * k + 3685985 := by
    unfold C
    simp [show (8957952 * k + 7371970) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3685985) = 13436928 * k + 11057956 := by
    unfold C
    simp [show (4478976 * k + 3685985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11057956) = 6718464 * k + 5528978 := by
    unfold C
    simp [show (13436928 * k + 11057956) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5528978) = 3359232 * k + 2764489 := by
    unfold C
    simp [show (6718464 * k + 5528978) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2764489) = 10077696 * k + 8293468 := by
    unfold C
    simp [show (3359232 * k + 2764489) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8293468) = 5038848 * k + 4146734 := by
    unfold C
    simp [show (10077696 * k + 8293468) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4146734) = 2519424 * k + 2073367 := by
    unfold C
    simp [show (5038848 * k + 4146734) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2073367) = 7558272 * k + 6220102 := by
    unfold C
    simp [show (2519424 * k + 2073367) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6220102) = 3779136 * k + 3110051 := by
    unfold C
    simp [show (7558272 * k + 6220102) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3110051) = 11337408 * k + 9330154 := by
    unfold C
    simp [show (3779136 * k + 3110051) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9330154) = 5668704 * k + 4665077 := by
    unfold C
    simp [show (11337408 * k + 9330154) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4665077) = 17006112 * k + 13995232 := by
    unfold C
    simp [show (5668704 * k + 4665077) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13995232) = 8503056 * k + 6997616 := by
    unfold C
    simp [show (17006112 * k + 13995232) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6997616) = 4251528 * k + 3498808 := by
    unfold C
    simp [show (8503056 * k + 6997616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3498808) = 2125764 * k + 1749404 := by
    unfold C
    simp [show (4251528 * k + 3498808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1749404) = 1062882 * k + 874702 := by
    unfold C
    simp [show (2125764 * k + 1749404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 874702) = 531441 * k + 437351 := by
    unfold C
    simp [show (1062882 * k + 874702) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 862927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 862927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_862951 : ∀ k : Nat,
    iterate (1048576 * k + 862951) 32 = 531441 * k + 437363 ∧
      531441 * k + 437363 < 1048576 * k + 862951 := by
  intro k
  have h1 : C (1048576 * k + 862951) = 3145728 * k + 2588854 := by
    unfold C
    simp [show (1048576 * k + 862951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2588854) = 1572864 * k + 1294427 := by
    unfold C
    simp [show (3145728 * k + 2588854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1294427) = 4718592 * k + 3883282 := by
    unfold C
    simp [show (1572864 * k + 1294427) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3883282) = 2359296 * k + 1941641 := by
    unfold C
    simp [show (4718592 * k + 3883282) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1941641) = 7077888 * k + 5824924 := by
    unfold C
    simp [show (2359296 * k + 1941641) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5824924) = 3538944 * k + 2912462 := by
    unfold C
    simp [show (7077888 * k + 5824924) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2912462) = 1769472 * k + 1456231 := by
    unfold C
    simp [show (3538944 * k + 2912462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1456231) = 5308416 * k + 4368694 := by
    unfold C
    simp [show (1769472 * k + 1456231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4368694) = 2654208 * k + 2184347 := by
    unfold C
    simp [show (5308416 * k + 4368694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2184347) = 7962624 * k + 6553042 := by
    unfold C
    simp [show (2654208 * k + 2184347) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6553042) = 3981312 * k + 3276521 := by
    unfold C
    simp [show (7962624 * k + 6553042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3276521) = 11943936 * k + 9829564 := by
    unfold C
    simp [show (3981312 * k + 3276521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9829564) = 5971968 * k + 4914782 := by
    unfold C
    simp [show (11943936 * k + 9829564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4914782) = 2985984 * k + 2457391 := by
    unfold C
    simp [show (5971968 * k + 4914782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2457391) = 8957952 * k + 7372174 := by
    unfold C
    simp [show (2985984 * k + 2457391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7372174) = 4478976 * k + 3686087 := by
    unfold C
    simp [show (8957952 * k + 7372174) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3686087) = 13436928 * k + 11058262 := by
    unfold C
    simp [show (4478976 * k + 3686087) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11058262) = 6718464 * k + 5529131 := by
    unfold C
    simp [show (13436928 * k + 11058262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5529131) = 20155392 * k + 16587394 := by
    unfold C
    simp [show (6718464 * k + 5529131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16587394) = 10077696 * k + 8293697 := by
    unfold C
    simp [show (20155392 * k + 16587394) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8293697) = 30233088 * k + 24881092 := by
    unfold C
    simp [show (10077696 * k + 8293697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24881092) = 15116544 * k + 12440546 := by
    unfold C
    simp [show (30233088 * k + 24881092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12440546) = 7558272 * k + 6220273 := by
    unfold C
    simp [show (15116544 * k + 12440546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6220273) = 22674816 * k + 18660820 := by
    unfold C
    simp [show (7558272 * k + 6220273) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18660820) = 11337408 * k + 9330410 := by
    unfold C
    simp [show (22674816 * k + 18660820) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9330410) = 5668704 * k + 4665205 := by
    unfold C
    simp [show (11337408 * k + 9330410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4665205) = 17006112 * k + 13995616 := by
    unfold C
    simp [show (5668704 * k + 4665205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13995616) = 8503056 * k + 6997808 := by
    unfold C
    simp [show (17006112 * k + 13995616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6997808) = 4251528 * k + 3498904 := by
    unfold C
    simp [show (8503056 * k + 6997808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3498904) = 2125764 * k + 1749452 := by
    unfold C
    simp [show (4251528 * k + 3498904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1749452) = 1062882 * k + 874726 := by
    unfold C
    simp [show (2125764 * k + 1749452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 874726) = 531441 * k + 437363 := by
    unfold C
    simp [show (1062882 * k + 874726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 862951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 862951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_863951 : ∀ k : Nat,
    iterate (1048576 * k + 863951) 32 = 531441 * k + 437870 ∧
      531441 * k + 437870 < 1048576 * k + 863951 := by
  intro k
  have h1 : C (1048576 * k + 863951) = 3145728 * k + 2591854 := by
    unfold C
    simp [show (1048576 * k + 863951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2591854) = 1572864 * k + 1295927 := by
    unfold C
    simp [show (3145728 * k + 2591854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1295927) = 4718592 * k + 3887782 := by
    unfold C
    simp [show (1572864 * k + 1295927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3887782) = 2359296 * k + 1943891 := by
    unfold C
    simp [show (4718592 * k + 3887782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1943891) = 7077888 * k + 5831674 := by
    unfold C
    simp [show (2359296 * k + 1943891) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5831674) = 3538944 * k + 2915837 := by
    unfold C
    simp [show (7077888 * k + 5831674) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2915837) = 10616832 * k + 8747512 := by
    unfold C
    simp [show (3538944 * k + 2915837) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8747512) = 5308416 * k + 4373756 := by
    unfold C
    simp [show (10616832 * k + 8747512) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4373756) = 2654208 * k + 2186878 := by
    unfold C
    simp [show (5308416 * k + 4373756) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2186878) = 1327104 * k + 1093439 := by
    unfold C
    simp [show (2654208 * k + 2186878) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1093439) = 3981312 * k + 3280318 := by
    unfold C
    simp [show (1327104 * k + 1093439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3280318) = 1990656 * k + 1640159 := by
    unfold C
    simp [show (3981312 * k + 3280318) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1640159) = 5971968 * k + 4920478 := by
    unfold C
    simp [show (1990656 * k + 1640159) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4920478) = 2985984 * k + 2460239 := by
    unfold C
    simp [show (5971968 * k + 4920478) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2460239) = 8957952 * k + 7380718 := by
    unfold C
    simp [show (2985984 * k + 2460239) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7380718) = 4478976 * k + 3690359 := by
    unfold C
    simp [show (8957952 * k + 7380718) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3690359) = 13436928 * k + 11071078 := by
    unfold C
    simp [show (4478976 * k + 3690359) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11071078) = 6718464 * k + 5535539 := by
    unfold C
    simp [show (13436928 * k + 11071078) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5535539) = 20155392 * k + 16606618 := by
    unfold C
    simp [show (6718464 * k + 5535539) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16606618) = 10077696 * k + 8303309 := by
    unfold C
    simp [show (20155392 * k + 16606618) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8303309) = 30233088 * k + 24909928 := by
    unfold C
    simp [show (10077696 * k + 8303309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24909928) = 15116544 * k + 12454964 := by
    unfold C
    simp [show (30233088 * k + 24909928) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12454964) = 7558272 * k + 6227482 := by
    unfold C
    simp [show (15116544 * k + 12454964) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6227482) = 3779136 * k + 3113741 := by
    unfold C
    simp [show (7558272 * k + 6227482) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3113741) = 11337408 * k + 9341224 := by
    unfold C
    simp [show (3779136 * k + 3113741) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9341224) = 5668704 * k + 4670612 := by
    unfold C
    simp [show (11337408 * k + 9341224) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4670612) = 2834352 * k + 2335306 := by
    unfold C
    simp [show (5668704 * k + 4670612) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2335306) = 1417176 * k + 1167653 := by
    unfold C
    simp [show (2834352 * k + 2335306) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1167653) = 4251528 * k + 3502960 := by
    unfold C
    simp [show (1417176 * k + 1167653) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3502960) = 2125764 * k + 1751480 := by
    unfold C
    simp [show (4251528 * k + 3502960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1751480) = 1062882 * k + 875740 := by
    unfold C
    simp [show (2125764 * k + 1751480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 875740) = 531441 * k + 437870 := by
    unfold C
    simp [show (1062882 * k + 875740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 863951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 863951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_864703 : ∀ k : Nat,
    iterate (1048576 * k + 864703) 32 = 531441 * k + 438251 ∧
      531441 * k + 438251 < 1048576 * k + 864703 := by
  intro k
  have h1 : C (1048576 * k + 864703) = 3145728 * k + 2594110 := by
    unfold C
    simp [show (1048576 * k + 864703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2594110) = 1572864 * k + 1297055 := by
    unfold C
    simp [show (3145728 * k + 2594110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1297055) = 4718592 * k + 3891166 := by
    unfold C
    simp [show (1572864 * k + 1297055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3891166) = 2359296 * k + 1945583 := by
    unfold C
    simp [show (4718592 * k + 3891166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1945583) = 7077888 * k + 5836750 := by
    unfold C
    simp [show (2359296 * k + 1945583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5836750) = 3538944 * k + 2918375 := by
    unfold C
    simp [show (7077888 * k + 5836750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2918375) = 10616832 * k + 8755126 := by
    unfold C
    simp [show (3538944 * k + 2918375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8755126) = 5308416 * k + 4377563 := by
    unfold C
    simp [show (10616832 * k + 8755126) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4377563) = 15925248 * k + 13132690 := by
    unfold C
    simp [show (5308416 * k + 4377563) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13132690) = 7962624 * k + 6566345 := by
    unfold C
    simp [show (15925248 * k + 13132690) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6566345) = 23887872 * k + 19699036 := by
    unfold C
    simp [show (7962624 * k + 6566345) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19699036) = 11943936 * k + 9849518 := by
    unfold C
    simp [show (23887872 * k + 19699036) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9849518) = 5971968 * k + 4924759 := by
    unfold C
    simp [show (11943936 * k + 9849518) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4924759) = 17915904 * k + 14774278 := by
    unfold C
    simp [show (5971968 * k + 4924759) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14774278) = 8957952 * k + 7387139 := by
    unfold C
    simp [show (17915904 * k + 14774278) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7387139) = 26873856 * k + 22161418 := by
    unfold C
    simp [show (8957952 * k + 7387139) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22161418) = 13436928 * k + 11080709 := by
    unfold C
    simp [show (26873856 * k + 22161418) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11080709) = 40310784 * k + 33242128 := by
    unfold C
    simp [show (13436928 * k + 11080709) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 33242128) = 20155392 * k + 16621064 := by
    unfold C
    simp [show (40310784 * k + 33242128) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16621064) = 10077696 * k + 8310532 := by
    unfold C
    simp [show (20155392 * k + 16621064) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8310532) = 5038848 * k + 4155266 := by
    unfold C
    simp [show (10077696 * k + 8310532) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4155266) = 2519424 * k + 2077633 := by
    unfold C
    simp [show (5038848 * k + 4155266) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2077633) = 7558272 * k + 6232900 := by
    unfold C
    simp [show (2519424 * k + 2077633) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6232900) = 3779136 * k + 3116450 := by
    unfold C
    simp [show (7558272 * k + 6232900) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3116450) = 1889568 * k + 1558225 := by
    unfold C
    simp [show (3779136 * k + 3116450) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1558225) = 5668704 * k + 4674676 := by
    unfold C
    simp [show (1889568 * k + 1558225) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4674676) = 2834352 * k + 2337338 := by
    unfold C
    simp [show (5668704 * k + 4674676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2337338) = 1417176 * k + 1168669 := by
    unfold C
    simp [show (2834352 * k + 2337338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1168669) = 4251528 * k + 3506008 := by
    unfold C
    simp [show (1417176 * k + 1168669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3506008) = 2125764 * k + 1753004 := by
    unfold C
    simp [show (4251528 * k + 3506008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1753004) = 1062882 * k + 876502 := by
    unfold C
    simp [show (2125764 * k + 1753004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 876502) = 531441 * k + 438251 := by
    unfold C
    simp [show (1062882 * k + 876502) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 864703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 864703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_865311 : ∀ k : Nat,
    iterate (1048576 * k + 865311) 32 = 531441 * k + 438559 ∧
      531441 * k + 438559 < 1048576 * k + 865311 := by
  intro k
  have h1 : C (1048576 * k + 865311) = 3145728 * k + 2595934 := by
    unfold C
    simp [show (1048576 * k + 865311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2595934) = 1572864 * k + 1297967 := by
    unfold C
    simp [show (3145728 * k + 2595934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1297967) = 4718592 * k + 3893902 := by
    unfold C
    simp [show (1572864 * k + 1297967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3893902) = 2359296 * k + 1946951 := by
    unfold C
    simp [show (4718592 * k + 3893902) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1946951) = 7077888 * k + 5840854 := by
    unfold C
    simp [show (2359296 * k + 1946951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5840854) = 3538944 * k + 2920427 := by
    unfold C
    simp [show (7077888 * k + 5840854) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2920427) = 10616832 * k + 8761282 := by
    unfold C
    simp [show (3538944 * k + 2920427) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8761282) = 5308416 * k + 4380641 := by
    unfold C
    simp [show (10616832 * k + 8761282) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4380641) = 15925248 * k + 13141924 := by
    unfold C
    simp [show (5308416 * k + 4380641) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13141924) = 7962624 * k + 6570962 := by
    unfold C
    simp [show (15925248 * k + 13141924) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6570962) = 3981312 * k + 3285481 := by
    unfold C
    simp [show (7962624 * k + 6570962) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3285481) = 11943936 * k + 9856444 := by
    unfold C
    simp [show (3981312 * k + 3285481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9856444) = 5971968 * k + 4928222 := by
    unfold C
    simp [show (11943936 * k + 9856444) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4928222) = 2985984 * k + 2464111 := by
    unfold C
    simp [show (5971968 * k + 4928222) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2464111) = 8957952 * k + 7392334 := by
    unfold C
    simp [show (2985984 * k + 2464111) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7392334) = 4478976 * k + 3696167 := by
    unfold C
    simp [show (8957952 * k + 7392334) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3696167) = 13436928 * k + 11088502 := by
    unfold C
    simp [show (4478976 * k + 3696167) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11088502) = 6718464 * k + 5544251 := by
    unfold C
    simp [show (13436928 * k + 11088502) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5544251) = 20155392 * k + 16632754 := by
    unfold C
    simp [show (6718464 * k + 5544251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16632754) = 10077696 * k + 8316377 := by
    unfold C
    simp [show (20155392 * k + 16632754) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8316377) = 30233088 * k + 24949132 := by
    unfold C
    simp [show (10077696 * k + 8316377) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24949132) = 15116544 * k + 12474566 := by
    unfold C
    simp [show (30233088 * k + 24949132) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12474566) = 7558272 * k + 6237283 := by
    unfold C
    simp [show (15116544 * k + 12474566) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6237283) = 22674816 * k + 18711850 := by
    unfold C
    simp [show (7558272 * k + 6237283) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18711850) = 11337408 * k + 9355925 := by
    unfold C
    simp [show (22674816 * k + 18711850) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9355925) = 34012224 * k + 28067776 := by
    unfold C
    simp [show (11337408 * k + 9355925) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28067776) = 17006112 * k + 14033888 := by
    unfold C
    simp [show (34012224 * k + 28067776) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14033888) = 8503056 * k + 7016944 := by
    unfold C
    simp [show (17006112 * k + 14033888) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7016944) = 4251528 * k + 3508472 := by
    unfold C
    simp [show (8503056 * k + 7016944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3508472) = 2125764 * k + 1754236 := by
    unfold C
    simp [show (4251528 * k + 3508472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1754236) = 1062882 * k + 877118 := by
    unfold C
    simp [show (2125764 * k + 1754236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 877118) = 531441 * k + 438559 := by
    unfold C
    simp [show (1062882 * k + 877118) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 865311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 865311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_866023 : ∀ k : Nat,
    iterate (1048576 * k + 866023) 32 = 531441 * k + 438920 ∧
      531441 * k + 438920 < 1048576 * k + 866023 := by
  intro k
  have h1 : C (1048576 * k + 866023) = 3145728 * k + 2598070 := by
    unfold C
    simp [show (1048576 * k + 866023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2598070) = 1572864 * k + 1299035 := by
    unfold C
    simp [show (3145728 * k + 2598070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1299035) = 4718592 * k + 3897106 := by
    unfold C
    simp [show (1572864 * k + 1299035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3897106) = 2359296 * k + 1948553 := by
    unfold C
    simp [show (4718592 * k + 3897106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1948553) = 7077888 * k + 5845660 := by
    unfold C
    simp [show (2359296 * k + 1948553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5845660) = 3538944 * k + 2922830 := by
    unfold C
    simp [show (7077888 * k + 5845660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2922830) = 1769472 * k + 1461415 := by
    unfold C
    simp [show (3538944 * k + 2922830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1461415) = 5308416 * k + 4384246 := by
    unfold C
    simp [show (1769472 * k + 1461415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4384246) = 2654208 * k + 2192123 := by
    unfold C
    simp [show (5308416 * k + 4384246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2192123) = 7962624 * k + 6576370 := by
    unfold C
    simp [show (2654208 * k + 2192123) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6576370) = 3981312 * k + 3288185 := by
    unfold C
    simp [show (7962624 * k + 6576370) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3288185) = 11943936 * k + 9864556 := by
    unfold C
    simp [show (3981312 * k + 3288185) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9864556) = 5971968 * k + 4932278 := by
    unfold C
    simp [show (11943936 * k + 9864556) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4932278) = 2985984 * k + 2466139 := by
    unfold C
    simp [show (5971968 * k + 4932278) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2466139) = 8957952 * k + 7398418 := by
    unfold C
    simp [show (2985984 * k + 2466139) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7398418) = 4478976 * k + 3699209 := by
    unfold C
    simp [show (8957952 * k + 7398418) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3699209) = 13436928 * k + 11097628 := by
    unfold C
    simp [show (4478976 * k + 3699209) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11097628) = 6718464 * k + 5548814 := by
    unfold C
    simp [show (13436928 * k + 11097628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5548814) = 3359232 * k + 2774407 := by
    unfold C
    simp [show (6718464 * k + 5548814) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2774407) = 10077696 * k + 8323222 := by
    unfold C
    simp [show (3359232 * k + 2774407) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8323222) = 5038848 * k + 4161611 := by
    unfold C
    simp [show (10077696 * k + 8323222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4161611) = 15116544 * k + 12484834 := by
    unfold C
    simp [show (5038848 * k + 4161611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12484834) = 7558272 * k + 6242417 := by
    unfold C
    simp [show (15116544 * k + 12484834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6242417) = 22674816 * k + 18727252 := by
    unfold C
    simp [show (7558272 * k + 6242417) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18727252) = 11337408 * k + 9363626 := by
    unfold C
    simp [show (22674816 * k + 18727252) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9363626) = 5668704 * k + 4681813 := by
    unfold C
    simp [show (11337408 * k + 9363626) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4681813) = 17006112 * k + 14045440 := by
    unfold C
    simp [show (5668704 * k + 4681813) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14045440) = 8503056 * k + 7022720 := by
    unfold C
    simp [show (17006112 * k + 14045440) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7022720) = 4251528 * k + 3511360 := by
    unfold C
    simp [show (8503056 * k + 7022720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3511360) = 2125764 * k + 1755680 := by
    unfold C
    simp [show (4251528 * k + 3511360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1755680) = 1062882 * k + 877840 := by
    unfold C
    simp [show (2125764 * k + 1755680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 877840) = 531441 * k + 438920 := by
    unfold C
    simp [show (1062882 * k + 877840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 866023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 866023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_866047 : ∀ k : Nat,
    iterate (1048576 * k + 866047) 32 = 531441 * k + 438932 ∧
      531441 * k + 438932 < 1048576 * k + 866047 := by
  intro k
  have h1 : C (1048576 * k + 866047) = 3145728 * k + 2598142 := by
    unfold C
    simp [show (1048576 * k + 866047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2598142) = 1572864 * k + 1299071 := by
    unfold C
    simp [show (3145728 * k + 2598142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1299071) = 4718592 * k + 3897214 := by
    unfold C
    simp [show (1572864 * k + 1299071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3897214) = 2359296 * k + 1948607 := by
    unfold C
    simp [show (4718592 * k + 3897214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1948607) = 7077888 * k + 5845822 := by
    unfold C
    simp [show (2359296 * k + 1948607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5845822) = 3538944 * k + 2922911 := by
    unfold C
    simp [show (7077888 * k + 5845822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2922911) = 10616832 * k + 8768734 := by
    unfold C
    simp [show (3538944 * k + 2922911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8768734) = 5308416 * k + 4384367 := by
    unfold C
    simp [show (10616832 * k + 8768734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4384367) = 15925248 * k + 13153102 := by
    unfold C
    simp [show (5308416 * k + 4384367) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13153102) = 7962624 * k + 6576551 := by
    unfold C
    simp [show (15925248 * k + 13153102) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6576551) = 23887872 * k + 19729654 := by
    unfold C
    simp [show (7962624 * k + 6576551) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19729654) = 11943936 * k + 9864827 := by
    unfold C
    simp [show (23887872 * k + 19729654) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9864827) = 35831808 * k + 29594482 := by
    unfold C
    simp [show (11943936 * k + 9864827) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29594482) = 17915904 * k + 14797241 := by
    unfold C
    simp [show (35831808 * k + 29594482) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14797241) = 53747712 * k + 44391724 := by
    unfold C
    simp [show (17915904 * k + 14797241) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44391724) = 26873856 * k + 22195862 := by
    unfold C
    simp [show (53747712 * k + 44391724) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22195862) = 13436928 * k + 11097931 := by
    unfold C
    simp [show (26873856 * k + 22195862) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11097931) = 40310784 * k + 33293794 := by
    unfold C
    simp [show (13436928 * k + 11097931) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 33293794) = 20155392 * k + 16646897 := by
    unfold C
    simp [show (40310784 * k + 33293794) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16646897) = 60466176 * k + 49940692 := by
    unfold C
    simp [show (20155392 * k + 16646897) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 49940692) = 30233088 * k + 24970346 := by
    unfold C
    simp [show (60466176 * k + 49940692) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 24970346) = 15116544 * k + 12485173 := by
    unfold C
    simp [show (30233088 * k + 24970346) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12485173) = 45349632 * k + 37455520 := by
    unfold C
    simp [show (15116544 * k + 12485173) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 37455520) = 22674816 * k + 18727760 := by
    unfold C
    simp [show (45349632 * k + 37455520) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18727760) = 11337408 * k + 9363880 := by
    unfold C
    simp [show (22674816 * k + 18727760) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9363880) = 5668704 * k + 4681940 := by
    unfold C
    simp [show (11337408 * k + 9363880) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4681940) = 2834352 * k + 2340970 := by
    unfold C
    simp [show (5668704 * k + 4681940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2340970) = 1417176 * k + 1170485 := by
    unfold C
    simp [show (2834352 * k + 2340970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1170485) = 4251528 * k + 3511456 := by
    unfold C
    simp [show (1417176 * k + 1170485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3511456) = 2125764 * k + 1755728 := by
    unfold C
    simp [show (4251528 * k + 3511456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1755728) = 1062882 * k + 877864 := by
    unfold C
    simp [show (2125764 * k + 1755728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 877864) = 531441 * k + 438932 := by
    unfold C
    simp [show (1062882 * k + 877864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 866047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 866047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_866159 : ∀ k : Nat,
    iterate (1048576 * k + 866159) 32 = 531441 * k + 438989 ∧
      531441 * k + 438989 < 1048576 * k + 866159 := by
  intro k
  have h1 : C (1048576 * k + 866159) = 3145728 * k + 2598478 := by
    unfold C
    simp [show (1048576 * k + 866159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2598478) = 1572864 * k + 1299239 := by
    unfold C
    simp [show (3145728 * k + 2598478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1299239) = 4718592 * k + 3897718 := by
    unfold C
    simp [show (1572864 * k + 1299239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3897718) = 2359296 * k + 1948859 := by
    unfold C
    simp [show (4718592 * k + 3897718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1948859) = 7077888 * k + 5846578 := by
    unfold C
    simp [show (2359296 * k + 1948859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5846578) = 3538944 * k + 2923289 := by
    unfold C
    simp [show (7077888 * k + 5846578) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2923289) = 10616832 * k + 8769868 := by
    unfold C
    simp [show (3538944 * k + 2923289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8769868) = 5308416 * k + 4384934 := by
    unfold C
    simp [show (10616832 * k + 8769868) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4384934) = 2654208 * k + 2192467 := by
    unfold C
    simp [show (5308416 * k + 4384934) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2192467) = 7962624 * k + 6577402 := by
    unfold C
    simp [show (2654208 * k + 2192467) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6577402) = 3981312 * k + 3288701 := by
    unfold C
    simp [show (7962624 * k + 6577402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3288701) = 11943936 * k + 9866104 := by
    unfold C
    simp [show (3981312 * k + 3288701) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9866104) = 5971968 * k + 4933052 := by
    unfold C
    simp [show (11943936 * k + 9866104) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4933052) = 2985984 * k + 2466526 := by
    unfold C
    simp [show (5971968 * k + 4933052) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2466526) = 1492992 * k + 1233263 := by
    unfold C
    simp [show (2985984 * k + 2466526) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1233263) = 4478976 * k + 3699790 := by
    unfold C
    simp [show (1492992 * k + 1233263) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3699790) = 2239488 * k + 1849895 := by
    unfold C
    simp [show (4478976 * k + 3699790) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1849895) = 6718464 * k + 5549686 := by
    unfold C
    simp [show (2239488 * k + 1849895) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5549686) = 3359232 * k + 2774843 := by
    unfold C
    simp [show (6718464 * k + 5549686) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2774843) = 10077696 * k + 8324530 := by
    unfold C
    simp [show (3359232 * k + 2774843) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8324530) = 5038848 * k + 4162265 := by
    unfold C
    simp [show (10077696 * k + 8324530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4162265) = 15116544 * k + 12486796 := by
    unfold C
    simp [show (5038848 * k + 4162265) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12486796) = 7558272 * k + 6243398 := by
    unfold C
    simp [show (15116544 * k + 12486796) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6243398) = 3779136 * k + 3121699 := by
    unfold C
    simp [show (7558272 * k + 6243398) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3121699) = 11337408 * k + 9365098 := by
    unfold C
    simp [show (3779136 * k + 3121699) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9365098) = 5668704 * k + 4682549 := by
    unfold C
    simp [show (11337408 * k + 9365098) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4682549) = 17006112 * k + 14047648 := by
    unfold C
    simp [show (5668704 * k + 4682549) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14047648) = 8503056 * k + 7023824 := by
    unfold C
    simp [show (17006112 * k + 14047648) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7023824) = 4251528 * k + 3511912 := by
    unfold C
    simp [show (8503056 * k + 7023824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3511912) = 2125764 * k + 1755956 := by
    unfold C
    simp [show (4251528 * k + 3511912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1755956) = 1062882 * k + 877978 := by
    unfold C
    simp [show (2125764 * k + 1755956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 877978) = 531441 * k + 438989 := by
    unfold C
    simp [show (1062882 * k + 877978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 866159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 866159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_867023 : ∀ k : Nat,
    iterate (1048576 * k + 867023) 32 = 531441 * k + 439427 ∧
      531441 * k + 439427 < 1048576 * k + 867023 := by
  intro k
  have h1 : C (1048576 * k + 867023) = 3145728 * k + 2601070 := by
    unfold C
    simp [show (1048576 * k + 867023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2601070) = 1572864 * k + 1300535 := by
    unfold C
    simp [show (3145728 * k + 2601070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1300535) = 4718592 * k + 3901606 := by
    unfold C
    simp [show (1572864 * k + 1300535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3901606) = 2359296 * k + 1950803 := by
    unfold C
    simp [show (4718592 * k + 3901606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1950803) = 7077888 * k + 5852410 := by
    unfold C
    simp [show (2359296 * k + 1950803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5852410) = 3538944 * k + 2926205 := by
    unfold C
    simp [show (7077888 * k + 5852410) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2926205) = 10616832 * k + 8778616 := by
    unfold C
    simp [show (3538944 * k + 2926205) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8778616) = 5308416 * k + 4389308 := by
    unfold C
    simp [show (10616832 * k + 8778616) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4389308) = 2654208 * k + 2194654 := by
    unfold C
    simp [show (5308416 * k + 4389308) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2194654) = 1327104 * k + 1097327 := by
    unfold C
    simp [show (2654208 * k + 2194654) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1097327) = 3981312 * k + 3291982 := by
    unfold C
    simp [show (1327104 * k + 1097327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3291982) = 1990656 * k + 1645991 := by
    unfold C
    simp [show (3981312 * k + 3291982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1645991) = 5971968 * k + 4937974 := by
    unfold C
    simp [show (1990656 * k + 1645991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4937974) = 2985984 * k + 2468987 := by
    unfold C
    simp [show (5971968 * k + 4937974) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2468987) = 8957952 * k + 7406962 := by
    unfold C
    simp [show (2985984 * k + 2468987) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7406962) = 4478976 * k + 3703481 := by
    unfold C
    simp [show (8957952 * k + 7406962) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3703481) = 13436928 * k + 11110444 := by
    unfold C
    simp [show (4478976 * k + 3703481) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11110444) = 6718464 * k + 5555222 := by
    unfold C
    simp [show (13436928 * k + 11110444) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5555222) = 3359232 * k + 2777611 := by
    unfold C
    simp [show (6718464 * k + 5555222) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2777611) = 10077696 * k + 8332834 := by
    unfold C
    simp [show (3359232 * k + 2777611) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8332834) = 5038848 * k + 4166417 := by
    unfold C
    simp [show (10077696 * k + 8332834) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4166417) = 15116544 * k + 12499252 := by
    unfold C
    simp [show (5038848 * k + 4166417) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12499252) = 7558272 * k + 6249626 := by
    unfold C
    simp [show (15116544 * k + 12499252) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6249626) = 3779136 * k + 3124813 := by
    unfold C
    simp [show (7558272 * k + 6249626) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3124813) = 11337408 * k + 9374440 := by
    unfold C
    simp [show (3779136 * k + 3124813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9374440) = 5668704 * k + 4687220 := by
    unfold C
    simp [show (11337408 * k + 9374440) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4687220) = 2834352 * k + 2343610 := by
    unfold C
    simp [show (5668704 * k + 4687220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2343610) = 1417176 * k + 1171805 := by
    unfold C
    simp [show (2834352 * k + 2343610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1171805) = 4251528 * k + 3515416 := by
    unfold C
    simp [show (1417176 * k + 1171805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3515416) = 2125764 * k + 1757708 := by
    unfold C
    simp [show (4251528 * k + 3515416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1757708) = 1062882 * k + 878854 := by
    unfold C
    simp [show (2125764 * k + 1757708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 878854) = 531441 * k + 439427 := by
    unfold C
    simp [show (1062882 * k + 878854) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 867023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 867023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_867295 : ∀ k : Nat,
    iterate (1048576 * k + 867295) 32 = 531441 * k + 439565 ∧
      531441 * k + 439565 < 1048576 * k + 867295 := by
  intro k
  have h1 : C (1048576 * k + 867295) = 3145728 * k + 2601886 := by
    unfold C
    simp [show (1048576 * k + 867295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2601886) = 1572864 * k + 1300943 := by
    unfold C
    simp [show (3145728 * k + 2601886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1300943) = 4718592 * k + 3902830 := by
    unfold C
    simp [show (1572864 * k + 1300943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3902830) = 2359296 * k + 1951415 := by
    unfold C
    simp [show (4718592 * k + 3902830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1951415) = 7077888 * k + 5854246 := by
    unfold C
    simp [show (2359296 * k + 1951415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5854246) = 3538944 * k + 2927123 := by
    unfold C
    simp [show (7077888 * k + 5854246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2927123) = 10616832 * k + 8781370 := by
    unfold C
    simp [show (3538944 * k + 2927123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8781370) = 5308416 * k + 4390685 := by
    unfold C
    simp [show (10616832 * k + 8781370) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4390685) = 15925248 * k + 13172056 := by
    unfold C
    simp [show (5308416 * k + 4390685) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13172056) = 7962624 * k + 6586028 := by
    unfold C
    simp [show (15925248 * k + 13172056) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6586028) = 3981312 * k + 3293014 := by
    unfold C
    simp [show (7962624 * k + 6586028) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3293014) = 1990656 * k + 1646507 := by
    unfold C
    simp [show (3981312 * k + 3293014) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1646507) = 5971968 * k + 4939522 := by
    unfold C
    simp [show (1990656 * k + 1646507) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4939522) = 2985984 * k + 2469761 := by
    unfold C
    simp [show (5971968 * k + 4939522) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2469761) = 8957952 * k + 7409284 := by
    unfold C
    simp [show (2985984 * k + 2469761) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7409284) = 4478976 * k + 3704642 := by
    unfold C
    simp [show (8957952 * k + 7409284) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3704642) = 2239488 * k + 1852321 := by
    unfold C
    simp [show (4478976 * k + 3704642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1852321) = 6718464 * k + 5556964 := by
    unfold C
    simp [show (2239488 * k + 1852321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5556964) = 3359232 * k + 2778482 := by
    unfold C
    simp [show (6718464 * k + 5556964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2778482) = 1679616 * k + 1389241 := by
    unfold C
    simp [show (3359232 * k + 2778482) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1389241) = 5038848 * k + 4167724 := by
    unfold C
    simp [show (1679616 * k + 1389241) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4167724) = 2519424 * k + 2083862 := by
    unfold C
    simp [show (5038848 * k + 4167724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2083862) = 1259712 * k + 1041931 := by
    unfold C
    simp [show (2519424 * k + 2083862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1041931) = 3779136 * k + 3125794 := by
    unfold C
    simp [show (1259712 * k + 1041931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3125794) = 1889568 * k + 1562897 := by
    unfold C
    simp [show (3779136 * k + 3125794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1562897) = 5668704 * k + 4688692 := by
    unfold C
    simp [show (1889568 * k + 1562897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4688692) = 2834352 * k + 2344346 := by
    unfold C
    simp [show (5668704 * k + 4688692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2344346) = 1417176 * k + 1172173 := by
    unfold C
    simp [show (2834352 * k + 2344346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1172173) = 4251528 * k + 3516520 := by
    unfold C
    simp [show (1417176 * k + 1172173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3516520) = 2125764 * k + 1758260 := by
    unfold C
    simp [show (4251528 * k + 3516520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1758260) = 1062882 * k + 879130 := by
    unfold C
    simp [show (2125764 * k + 1758260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 879130) = 531441 * k + 439565 := by
    unfold C
    simp [show (1062882 * k + 879130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 867295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 867295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard110
