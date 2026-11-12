import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard066

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_509695 : ∀ k : Nat,
    iterate (1048576 * k + 509695) 32 = 531441 * k + 258325 ∧
      531441 * k + 258325 < 1048576 * k + 509695 := by
  intro k
  have h1 : C (1048576 * k + 509695) = 3145728 * k + 1529086 := by
    unfold C
    simp [show (1048576 * k + 509695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1529086) = 1572864 * k + 764543 := by
    unfold C
    simp [show (3145728 * k + 1529086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 764543) = 4718592 * k + 2293630 := by
    unfold C
    simp [show (1572864 * k + 764543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2293630) = 2359296 * k + 1146815 := by
    unfold C
    simp [show (4718592 * k + 2293630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1146815) = 7077888 * k + 3440446 := by
    unfold C
    simp [show (2359296 * k + 1146815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3440446) = 3538944 * k + 1720223 := by
    unfold C
    simp [show (7077888 * k + 3440446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1720223) = 10616832 * k + 5160670 := by
    unfold C
    simp [show (3538944 * k + 1720223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5160670) = 5308416 * k + 2580335 := by
    unfold C
    simp [show (10616832 * k + 5160670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2580335) = 15925248 * k + 7741006 := by
    unfold C
    simp [show (5308416 * k + 2580335) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7741006) = 7962624 * k + 3870503 := by
    unfold C
    simp [show (15925248 * k + 7741006) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3870503) = 23887872 * k + 11611510 := by
    unfold C
    simp [show (7962624 * k + 3870503) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11611510) = 11943936 * k + 5805755 := by
    unfold C
    simp [show (23887872 * k + 11611510) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5805755) = 35831808 * k + 17417266 := by
    unfold C
    simp [show (11943936 * k + 5805755) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17417266) = 17915904 * k + 8708633 := by
    unfold C
    simp [show (35831808 * k + 17417266) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8708633) = 53747712 * k + 26125900 := by
    unfold C
    simp [show (17915904 * k + 8708633) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26125900) = 26873856 * k + 13062950 := by
    unfold C
    simp [show (53747712 * k + 26125900) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13062950) = 13436928 * k + 6531475 := by
    unfold C
    simp [show (26873856 * k + 13062950) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6531475) = 40310784 * k + 19594426 := by
    unfold C
    simp [show (13436928 * k + 6531475) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19594426) = 20155392 * k + 9797213 := by
    unfold C
    simp [show (40310784 * k + 19594426) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9797213) = 60466176 * k + 29391640 := by
    unfold C
    simp [show (20155392 * k + 9797213) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29391640) = 30233088 * k + 14695820 := by
    unfold C
    simp [show (60466176 * k + 29391640) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14695820) = 15116544 * k + 7347910 := by
    unfold C
    simp [show (30233088 * k + 14695820) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7347910) = 7558272 * k + 3673955 := by
    unfold C
    simp [show (15116544 * k + 7347910) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3673955) = 22674816 * k + 11021866 := by
    unfold C
    simp [show (7558272 * k + 3673955) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11021866) = 11337408 * k + 5510933 := by
    unfold C
    simp [show (22674816 * k + 11021866) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5510933) = 34012224 * k + 16532800 := by
    unfold C
    simp [show (11337408 * k + 5510933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16532800) = 17006112 * k + 8266400 := by
    unfold C
    simp [show (34012224 * k + 16532800) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8266400) = 8503056 * k + 4133200 := by
    unfold C
    simp [show (17006112 * k + 8266400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4133200) = 4251528 * k + 2066600 := by
    unfold C
    simp [show (8503056 * k + 4133200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2066600) = 2125764 * k + 1033300 := by
    unfold C
    simp [show (4251528 * k + 2066600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1033300) = 1062882 * k + 516650 := by
    unfold C
    simp [show (2125764 * k + 1033300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 516650) = 531441 * k + 258325 := by
    unfold C
    simp [show (1062882 * k + 516650) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 509695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 509695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_510631 : ∀ k : Nat,
    iterate (1048576 * k + 510631) 32 = 531441 * k + 258800 ∧
      531441 * k + 258800 < 1048576 * k + 510631 := by
  intro k
  have h1 : C (1048576 * k + 510631) = 3145728 * k + 1531894 := by
    unfold C
    simp [show (1048576 * k + 510631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1531894) = 1572864 * k + 765947 := by
    unfold C
    simp [show (3145728 * k + 1531894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 765947) = 4718592 * k + 2297842 := by
    unfold C
    simp [show (1572864 * k + 765947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2297842) = 2359296 * k + 1148921 := by
    unfold C
    simp [show (4718592 * k + 2297842) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1148921) = 7077888 * k + 3446764 := by
    unfold C
    simp [show (2359296 * k + 1148921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3446764) = 3538944 * k + 1723382 := by
    unfold C
    simp [show (7077888 * k + 3446764) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1723382) = 1769472 * k + 861691 := by
    unfold C
    simp [show (3538944 * k + 1723382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 861691) = 5308416 * k + 2585074 := by
    unfold C
    simp [show (1769472 * k + 861691) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2585074) = 2654208 * k + 1292537 := by
    unfold C
    simp [show (5308416 * k + 2585074) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1292537) = 7962624 * k + 3877612 := by
    unfold C
    simp [show (2654208 * k + 1292537) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3877612) = 3981312 * k + 1938806 := by
    unfold C
    simp [show (7962624 * k + 3877612) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1938806) = 1990656 * k + 969403 := by
    unfold C
    simp [show (3981312 * k + 1938806) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 969403) = 5971968 * k + 2908210 := by
    unfold C
    simp [show (1990656 * k + 969403) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2908210) = 2985984 * k + 1454105 := by
    unfold C
    simp [show (5971968 * k + 2908210) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1454105) = 8957952 * k + 4362316 := by
    unfold C
    simp [show (2985984 * k + 1454105) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4362316) = 4478976 * k + 2181158 := by
    unfold C
    simp [show (8957952 * k + 4362316) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2181158) = 2239488 * k + 1090579 := by
    unfold C
    simp [show (4478976 * k + 2181158) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1090579) = 6718464 * k + 3271738 := by
    unfold C
    simp [show (2239488 * k + 1090579) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3271738) = 3359232 * k + 1635869 := by
    unfold C
    simp [show (6718464 * k + 3271738) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1635869) = 10077696 * k + 4907608 := by
    unfold C
    simp [show (3359232 * k + 1635869) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4907608) = 5038848 * k + 2453804 := by
    unfold C
    simp [show (10077696 * k + 4907608) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2453804) = 2519424 * k + 1226902 := by
    unfold C
    simp [show (5038848 * k + 2453804) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1226902) = 1259712 * k + 613451 := by
    unfold C
    simp [show (2519424 * k + 1226902) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 613451) = 3779136 * k + 1840354 := by
    unfold C
    simp [show (1259712 * k + 613451) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1840354) = 1889568 * k + 920177 := by
    unfold C
    simp [show (3779136 * k + 1840354) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 920177) = 5668704 * k + 2760532 := by
    unfold C
    simp [show (1889568 * k + 920177) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2760532) = 2834352 * k + 1380266 := by
    unfold C
    simp [show (5668704 * k + 2760532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1380266) = 1417176 * k + 690133 := by
    unfold C
    simp [show (2834352 * k + 1380266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 690133) = 4251528 * k + 2070400 := by
    unfold C
    simp [show (1417176 * k + 690133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2070400) = 2125764 * k + 1035200 := by
    unfold C
    simp [show (4251528 * k + 2070400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1035200) = 1062882 * k + 517600 := by
    unfold C
    simp [show (2125764 * k + 1035200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 517600) = 531441 * k + 258800 := by
    unfold C
    simp [show (1062882 * k + 517600) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 510631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 510631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_510791 : ∀ k : Nat,
    iterate (1048576 * k + 510791) 32 = 531441 * k + 258881 ∧
      531441 * k + 258881 < 1048576 * k + 510791 := by
  intro k
  have h1 : C (1048576 * k + 510791) = 3145728 * k + 1532374 := by
    unfold C
    simp [show (1048576 * k + 510791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1532374) = 1572864 * k + 766187 := by
    unfold C
    simp [show (3145728 * k + 1532374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 766187) = 4718592 * k + 2298562 := by
    unfold C
    simp [show (1572864 * k + 766187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2298562) = 2359296 * k + 1149281 := by
    unfold C
    simp [show (4718592 * k + 2298562) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1149281) = 7077888 * k + 3447844 := by
    unfold C
    simp [show (2359296 * k + 1149281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3447844) = 3538944 * k + 1723922 := by
    unfold C
    simp [show (7077888 * k + 3447844) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1723922) = 1769472 * k + 861961 := by
    unfold C
    simp [show (3538944 * k + 1723922) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 861961) = 5308416 * k + 2585884 := by
    unfold C
    simp [show (1769472 * k + 861961) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2585884) = 2654208 * k + 1292942 := by
    unfold C
    simp [show (5308416 * k + 2585884) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1292942) = 1327104 * k + 646471 := by
    unfold C
    simp [show (2654208 * k + 1292942) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 646471) = 3981312 * k + 1939414 := by
    unfold C
    simp [show (1327104 * k + 646471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1939414) = 1990656 * k + 969707 := by
    unfold C
    simp [show (3981312 * k + 1939414) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 969707) = 5971968 * k + 2909122 := by
    unfold C
    simp [show (1990656 * k + 969707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2909122) = 2985984 * k + 1454561 := by
    unfold C
    simp [show (5971968 * k + 2909122) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1454561) = 8957952 * k + 4363684 := by
    unfold C
    simp [show (2985984 * k + 1454561) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4363684) = 4478976 * k + 2181842 := by
    unfold C
    simp [show (8957952 * k + 4363684) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2181842) = 2239488 * k + 1090921 := by
    unfold C
    simp [show (4478976 * k + 2181842) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1090921) = 6718464 * k + 3272764 := by
    unfold C
    simp [show (2239488 * k + 1090921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3272764) = 3359232 * k + 1636382 := by
    unfold C
    simp [show (6718464 * k + 3272764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1636382) = 1679616 * k + 818191 := by
    unfold C
    simp [show (3359232 * k + 1636382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 818191) = 5038848 * k + 2454574 := by
    unfold C
    simp [show (1679616 * k + 818191) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2454574) = 2519424 * k + 1227287 := by
    unfold C
    simp [show (5038848 * k + 2454574) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1227287) = 7558272 * k + 3681862 := by
    unfold C
    simp [show (2519424 * k + 1227287) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3681862) = 3779136 * k + 1840931 := by
    unfold C
    simp [show (7558272 * k + 3681862) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1840931) = 11337408 * k + 5522794 := by
    unfold C
    simp [show (3779136 * k + 1840931) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5522794) = 5668704 * k + 2761397 := by
    unfold C
    simp [show (11337408 * k + 5522794) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2761397) = 17006112 * k + 8284192 := by
    unfold C
    simp [show (5668704 * k + 2761397) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8284192) = 8503056 * k + 4142096 := by
    unfold C
    simp [show (17006112 * k + 8284192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4142096) = 4251528 * k + 2071048 := by
    unfold C
    simp [show (8503056 * k + 4142096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2071048) = 2125764 * k + 1035524 := by
    unfold C
    simp [show (4251528 * k + 2071048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1035524) = 1062882 * k + 517762 := by
    unfold C
    simp [show (2125764 * k + 1035524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 517762) = 531441 * k + 258881 := by
    unfold C
    simp [show (1062882 * k + 517762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 510791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 510791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_511067 : ∀ k : Nat,
    iterate (1048576 * k + 511067) 32 = 531441 * k + 259021 ∧
      531441 * k + 259021 < 1048576 * k + 511067 := by
  intro k
  have h1 : C (1048576 * k + 511067) = 3145728 * k + 1533202 := by
    unfold C
    simp [show (1048576 * k + 511067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1533202) = 1572864 * k + 766601 := by
    unfold C
    simp [show (3145728 * k + 1533202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 766601) = 4718592 * k + 2299804 := by
    unfold C
    simp [show (1572864 * k + 766601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2299804) = 2359296 * k + 1149902 := by
    unfold C
    simp [show (4718592 * k + 2299804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1149902) = 1179648 * k + 574951 := by
    unfold C
    simp [show (2359296 * k + 1149902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 574951) = 3538944 * k + 1724854 := by
    unfold C
    simp [show (1179648 * k + 574951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1724854) = 1769472 * k + 862427 := by
    unfold C
    simp [show (3538944 * k + 1724854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 862427) = 5308416 * k + 2587282 := by
    unfold C
    simp [show (1769472 * k + 862427) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2587282) = 2654208 * k + 1293641 := by
    unfold C
    simp [show (5308416 * k + 2587282) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1293641) = 7962624 * k + 3880924 := by
    unfold C
    simp [show (2654208 * k + 1293641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3880924) = 3981312 * k + 1940462 := by
    unfold C
    simp [show (7962624 * k + 3880924) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1940462) = 1990656 * k + 970231 := by
    unfold C
    simp [show (3981312 * k + 1940462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 970231) = 5971968 * k + 2910694 := by
    unfold C
    simp [show (1990656 * k + 970231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2910694) = 2985984 * k + 1455347 := by
    unfold C
    simp [show (5971968 * k + 2910694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1455347) = 8957952 * k + 4366042 := by
    unfold C
    simp [show (2985984 * k + 1455347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4366042) = 4478976 * k + 2183021 := by
    unfold C
    simp [show (8957952 * k + 4366042) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2183021) = 13436928 * k + 6549064 := by
    unfold C
    simp [show (4478976 * k + 2183021) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6549064) = 6718464 * k + 3274532 := by
    unfold C
    simp [show (13436928 * k + 6549064) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3274532) = 3359232 * k + 1637266 := by
    unfold C
    simp [show (6718464 * k + 3274532) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1637266) = 1679616 * k + 818633 := by
    unfold C
    simp [show (3359232 * k + 1637266) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 818633) = 5038848 * k + 2455900 := by
    unfold C
    simp [show (1679616 * k + 818633) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2455900) = 2519424 * k + 1227950 := by
    unfold C
    simp [show (5038848 * k + 2455900) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1227950) = 1259712 * k + 613975 := by
    unfold C
    simp [show (2519424 * k + 1227950) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 613975) = 3779136 * k + 1841926 := by
    unfold C
    simp [show (1259712 * k + 613975) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1841926) = 1889568 * k + 920963 := by
    unfold C
    simp [show (3779136 * k + 1841926) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 920963) = 5668704 * k + 2762890 := by
    unfold C
    simp [show (1889568 * k + 920963) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2762890) = 2834352 * k + 1381445 := by
    unfold C
    simp [show (5668704 * k + 2762890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1381445) = 8503056 * k + 4144336 := by
    unfold C
    simp [show (2834352 * k + 1381445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4144336) = 4251528 * k + 2072168 := by
    unfold C
    simp [show (8503056 * k + 4144336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2072168) = 2125764 * k + 1036084 := by
    unfold C
    simp [show (4251528 * k + 2072168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1036084) = 1062882 * k + 518042 := by
    unfold C
    simp [show (2125764 * k + 1036084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 518042) = 531441 * k + 259021 := by
    unfold C
    simp [show (1062882 * k + 518042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 511067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 511067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_511227 : ∀ k : Nat,
    iterate (1048576 * k + 511227) 32 = 531441 * k + 259102 ∧
      531441 * k + 259102 < 1048576 * k + 511227 := by
  intro k
  have h1 : C (1048576 * k + 511227) = 3145728 * k + 1533682 := by
    unfold C
    simp [show (1048576 * k + 511227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1533682) = 1572864 * k + 766841 := by
    unfold C
    simp [show (3145728 * k + 1533682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 766841) = 4718592 * k + 2300524 := by
    unfold C
    simp [show (1572864 * k + 766841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2300524) = 2359296 * k + 1150262 := by
    unfold C
    simp [show (4718592 * k + 2300524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1150262) = 1179648 * k + 575131 := by
    unfold C
    simp [show (2359296 * k + 1150262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 575131) = 3538944 * k + 1725394 := by
    unfold C
    simp [show (1179648 * k + 575131) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1725394) = 1769472 * k + 862697 := by
    unfold C
    simp [show (3538944 * k + 1725394) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 862697) = 5308416 * k + 2588092 := by
    unfold C
    simp [show (1769472 * k + 862697) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2588092) = 2654208 * k + 1294046 := by
    unfold C
    simp [show (5308416 * k + 2588092) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1294046) = 1327104 * k + 647023 := by
    unfold C
    simp [show (2654208 * k + 1294046) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 647023) = 3981312 * k + 1941070 := by
    unfold C
    simp [show (1327104 * k + 647023) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1941070) = 1990656 * k + 970535 := by
    unfold C
    simp [show (3981312 * k + 1941070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 970535) = 5971968 * k + 2911606 := by
    unfold C
    simp [show (1990656 * k + 970535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2911606) = 2985984 * k + 1455803 := by
    unfold C
    simp [show (5971968 * k + 2911606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1455803) = 8957952 * k + 4367410 := by
    unfold C
    simp [show (2985984 * k + 1455803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4367410) = 4478976 * k + 2183705 := by
    unfold C
    simp [show (8957952 * k + 4367410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2183705) = 13436928 * k + 6551116 := by
    unfold C
    simp [show (4478976 * k + 2183705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6551116) = 6718464 * k + 3275558 := by
    unfold C
    simp [show (13436928 * k + 6551116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3275558) = 3359232 * k + 1637779 := by
    unfold C
    simp [show (6718464 * k + 3275558) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1637779) = 10077696 * k + 4913338 := by
    unfold C
    simp [show (3359232 * k + 1637779) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4913338) = 5038848 * k + 2456669 := by
    unfold C
    simp [show (10077696 * k + 4913338) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2456669) = 15116544 * k + 7370008 := by
    unfold C
    simp [show (5038848 * k + 2456669) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7370008) = 7558272 * k + 3685004 := by
    unfold C
    simp [show (15116544 * k + 7370008) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3685004) = 3779136 * k + 1842502 := by
    unfold C
    simp [show (7558272 * k + 3685004) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1842502) = 1889568 * k + 921251 := by
    unfold C
    simp [show (3779136 * k + 1842502) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 921251) = 5668704 * k + 2763754 := by
    unfold C
    simp [show (1889568 * k + 921251) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2763754) = 2834352 * k + 1381877 := by
    unfold C
    simp [show (5668704 * k + 2763754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1381877) = 8503056 * k + 4145632 := by
    unfold C
    simp [show (2834352 * k + 1381877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4145632) = 4251528 * k + 2072816 := by
    unfold C
    simp [show (8503056 * k + 4145632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2072816) = 2125764 * k + 1036408 := by
    unfold C
    simp [show (4251528 * k + 2072816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1036408) = 1062882 * k + 518204 := by
    unfold C
    simp [show (2125764 * k + 1036408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 518204) = 531441 * k + 259102 := by
    unfold C
    simp [show (1062882 * k + 518204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 511227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 511227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_511655 : ∀ k : Nat,
    iterate (1048576 * k + 511655) 32 = 531441 * k + 259319 ∧
      531441 * k + 259319 < 1048576 * k + 511655 := by
  intro k
  have h1 : C (1048576 * k + 511655) = 3145728 * k + 1534966 := by
    unfold C
    simp [show (1048576 * k + 511655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1534966) = 1572864 * k + 767483 := by
    unfold C
    simp [show (3145728 * k + 1534966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 767483) = 4718592 * k + 2302450 := by
    unfold C
    simp [show (1572864 * k + 767483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2302450) = 2359296 * k + 1151225 := by
    unfold C
    simp [show (4718592 * k + 2302450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1151225) = 7077888 * k + 3453676 := by
    unfold C
    simp [show (2359296 * k + 1151225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3453676) = 3538944 * k + 1726838 := by
    unfold C
    simp [show (7077888 * k + 3453676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1726838) = 1769472 * k + 863419 := by
    unfold C
    simp [show (3538944 * k + 1726838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 863419) = 5308416 * k + 2590258 := by
    unfold C
    simp [show (1769472 * k + 863419) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2590258) = 2654208 * k + 1295129 := by
    unfold C
    simp [show (5308416 * k + 2590258) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1295129) = 7962624 * k + 3885388 := by
    unfold C
    simp [show (2654208 * k + 1295129) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3885388) = 3981312 * k + 1942694 := by
    unfold C
    simp [show (7962624 * k + 3885388) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1942694) = 1990656 * k + 971347 := by
    unfold C
    simp [show (3981312 * k + 1942694) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 971347) = 5971968 * k + 2914042 := by
    unfold C
    simp [show (1990656 * k + 971347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2914042) = 2985984 * k + 1457021 := by
    unfold C
    simp [show (5971968 * k + 2914042) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1457021) = 8957952 * k + 4371064 := by
    unfold C
    simp [show (2985984 * k + 1457021) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4371064) = 4478976 * k + 2185532 := by
    unfold C
    simp [show (8957952 * k + 4371064) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2185532) = 2239488 * k + 1092766 := by
    unfold C
    simp [show (4478976 * k + 2185532) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1092766) = 1119744 * k + 546383 := by
    unfold C
    simp [show (2239488 * k + 1092766) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 546383) = 3359232 * k + 1639150 := by
    unfold C
    simp [show (1119744 * k + 546383) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1639150) = 1679616 * k + 819575 := by
    unfold C
    simp [show (3359232 * k + 1639150) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 819575) = 5038848 * k + 2458726 := by
    unfold C
    simp [show (1679616 * k + 819575) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2458726) = 2519424 * k + 1229363 := by
    unfold C
    simp [show (5038848 * k + 2458726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1229363) = 7558272 * k + 3688090 := by
    unfold C
    simp [show (2519424 * k + 1229363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3688090) = 3779136 * k + 1844045 := by
    unfold C
    simp [show (7558272 * k + 3688090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1844045) = 11337408 * k + 5532136 := by
    unfold C
    simp [show (3779136 * k + 1844045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5532136) = 5668704 * k + 2766068 := by
    unfold C
    simp [show (11337408 * k + 5532136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2766068) = 2834352 * k + 1383034 := by
    unfold C
    simp [show (5668704 * k + 2766068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1383034) = 1417176 * k + 691517 := by
    unfold C
    simp [show (2834352 * k + 1383034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 691517) = 4251528 * k + 2074552 := by
    unfold C
    simp [show (1417176 * k + 691517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2074552) = 2125764 * k + 1037276 := by
    unfold C
    simp [show (4251528 * k + 2074552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1037276) = 1062882 * k + 518638 := by
    unfold C
    simp [show (2125764 * k + 1037276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 518638) = 531441 * k + 259319 := by
    unfold C
    simp [show (1062882 * k + 518638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 511655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 511655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_511743 : ∀ k : Nat,
    iterate (1048576 * k + 511743) 32 = 531441 * k + 259363 ∧
      531441 * k + 259363 < 1048576 * k + 511743 := by
  intro k
  have h1 : C (1048576 * k + 511743) = 3145728 * k + 1535230 := by
    unfold C
    simp [show (1048576 * k + 511743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1535230) = 1572864 * k + 767615 := by
    unfold C
    simp [show (3145728 * k + 1535230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 767615) = 4718592 * k + 2302846 := by
    unfold C
    simp [show (1572864 * k + 767615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2302846) = 2359296 * k + 1151423 := by
    unfold C
    simp [show (4718592 * k + 2302846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1151423) = 7077888 * k + 3454270 := by
    unfold C
    simp [show (2359296 * k + 1151423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3454270) = 3538944 * k + 1727135 := by
    unfold C
    simp [show (7077888 * k + 3454270) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1727135) = 10616832 * k + 5181406 := by
    unfold C
    simp [show (3538944 * k + 1727135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5181406) = 5308416 * k + 2590703 := by
    unfold C
    simp [show (10616832 * k + 5181406) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2590703) = 15925248 * k + 7772110 := by
    unfold C
    simp [show (5308416 * k + 2590703) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7772110) = 7962624 * k + 3886055 := by
    unfold C
    simp [show (15925248 * k + 7772110) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3886055) = 23887872 * k + 11658166 := by
    unfold C
    simp [show (7962624 * k + 3886055) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11658166) = 11943936 * k + 5829083 := by
    unfold C
    simp [show (23887872 * k + 11658166) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5829083) = 35831808 * k + 17487250 := by
    unfold C
    simp [show (11943936 * k + 5829083) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17487250) = 17915904 * k + 8743625 := by
    unfold C
    simp [show (35831808 * k + 17487250) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8743625) = 53747712 * k + 26230876 := by
    unfold C
    simp [show (17915904 * k + 8743625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26230876) = 26873856 * k + 13115438 := by
    unfold C
    simp [show (53747712 * k + 26230876) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13115438) = 13436928 * k + 6557719 := by
    unfold C
    simp [show (26873856 * k + 13115438) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6557719) = 40310784 * k + 19673158 := by
    unfold C
    simp [show (13436928 * k + 6557719) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19673158) = 20155392 * k + 9836579 := by
    unfold C
    simp [show (40310784 * k + 19673158) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9836579) = 60466176 * k + 29509738 := by
    unfold C
    simp [show (20155392 * k + 9836579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29509738) = 30233088 * k + 14754869 := by
    unfold C
    simp [show (60466176 * k + 29509738) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14754869) = 90699264 * k + 44264608 := by
    unfold C
    simp [show (30233088 * k + 14754869) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 44264608) = 45349632 * k + 22132304 := by
    unfold C
    simp [show (90699264 * k + 44264608) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 22132304) = 22674816 * k + 11066152 := by
    unfold C
    simp [show (45349632 * k + 22132304) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11066152) = 11337408 * k + 5533076 := by
    unfold C
    simp [show (22674816 * k + 11066152) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5533076) = 5668704 * k + 2766538 := by
    unfold C
    simp [show (11337408 * k + 5533076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2766538) = 2834352 * k + 1383269 := by
    unfold C
    simp [show (5668704 * k + 2766538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1383269) = 8503056 * k + 4149808 := by
    unfold C
    simp [show (2834352 * k + 1383269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4149808) = 4251528 * k + 2074904 := by
    unfold C
    simp [show (8503056 * k + 4149808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2074904) = 2125764 * k + 1037452 := by
    unfold C
    simp [show (4251528 * k + 2074904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1037452) = 1062882 * k + 518726 := by
    unfold C
    simp [show (2125764 * k + 1037452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 518726) = 531441 * k + 259363 := by
    unfold C
    simp [show (1062882 * k + 518726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 511743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 511743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_512283 : ∀ k : Nat,
    iterate (1048576 * k + 512283) 32 = 531441 * k + 259637 ∧
      531441 * k + 259637 < 1048576 * k + 512283 := by
  intro k
  have h1 : C (1048576 * k + 512283) = 3145728 * k + 1536850 := by
    unfold C
    simp [show (1048576 * k + 512283) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1536850) = 1572864 * k + 768425 := by
    unfold C
    simp [show (3145728 * k + 1536850) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 768425) = 4718592 * k + 2305276 := by
    unfold C
    simp [show (1572864 * k + 768425) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2305276) = 2359296 * k + 1152638 := by
    unfold C
    simp [show (4718592 * k + 2305276) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1152638) = 1179648 * k + 576319 := by
    unfold C
    simp [show (2359296 * k + 1152638) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 576319) = 3538944 * k + 1728958 := by
    unfold C
    simp [show (1179648 * k + 576319) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1728958) = 1769472 * k + 864479 := by
    unfold C
    simp [show (3538944 * k + 1728958) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 864479) = 5308416 * k + 2593438 := by
    unfold C
    simp [show (1769472 * k + 864479) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2593438) = 2654208 * k + 1296719 := by
    unfold C
    simp [show (5308416 * k + 2593438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1296719) = 7962624 * k + 3890158 := by
    unfold C
    simp [show (2654208 * k + 1296719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3890158) = 3981312 * k + 1945079 := by
    unfold C
    simp [show (7962624 * k + 3890158) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1945079) = 11943936 * k + 5835238 := by
    unfold C
    simp [show (3981312 * k + 1945079) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5835238) = 5971968 * k + 2917619 := by
    unfold C
    simp [show (11943936 * k + 5835238) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2917619) = 17915904 * k + 8752858 := by
    unfold C
    simp [show (5971968 * k + 2917619) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8752858) = 8957952 * k + 4376429 := by
    unfold C
    simp [show (17915904 * k + 8752858) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4376429) = 26873856 * k + 13129288 := by
    unfold C
    simp [show (8957952 * k + 4376429) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13129288) = 13436928 * k + 6564644 := by
    unfold C
    simp [show (26873856 * k + 13129288) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6564644) = 6718464 * k + 3282322 := by
    unfold C
    simp [show (13436928 * k + 6564644) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3282322) = 3359232 * k + 1641161 := by
    unfold C
    simp [show (6718464 * k + 3282322) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1641161) = 10077696 * k + 4923484 := by
    unfold C
    simp [show (3359232 * k + 1641161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4923484) = 5038848 * k + 2461742 := by
    unfold C
    simp [show (10077696 * k + 4923484) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2461742) = 2519424 * k + 1230871 := by
    unfold C
    simp [show (5038848 * k + 2461742) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1230871) = 7558272 * k + 3692614 := by
    unfold C
    simp [show (2519424 * k + 1230871) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3692614) = 3779136 * k + 1846307 := by
    unfold C
    simp [show (7558272 * k + 3692614) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1846307) = 11337408 * k + 5538922 := by
    unfold C
    simp [show (3779136 * k + 1846307) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5538922) = 5668704 * k + 2769461 := by
    unfold C
    simp [show (11337408 * k + 5538922) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2769461) = 17006112 * k + 8308384 := by
    unfold C
    simp [show (5668704 * k + 2769461) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8308384) = 8503056 * k + 4154192 := by
    unfold C
    simp [show (17006112 * k + 8308384) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4154192) = 4251528 * k + 2077096 := by
    unfold C
    simp [show (8503056 * k + 4154192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2077096) = 2125764 * k + 1038548 := by
    unfold C
    simp [show (4251528 * k + 2077096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1038548) = 1062882 * k + 519274 := by
    unfold C
    simp [show (2125764 * k + 1038548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 519274) = 531441 * k + 259637 := by
    unfold C
    simp [show (1062882 * k + 519274) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 512283) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 512283)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_512319 : ∀ k : Nat,
    iterate (1048576 * k + 512319) 32 = 531441 * k + 259655 ∧
      531441 * k + 259655 < 1048576 * k + 512319 := by
  intro k
  have h1 : C (1048576 * k + 512319) = 3145728 * k + 1536958 := by
    unfold C
    simp [show (1048576 * k + 512319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1536958) = 1572864 * k + 768479 := by
    unfold C
    simp [show (3145728 * k + 1536958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 768479) = 4718592 * k + 2305438 := by
    unfold C
    simp [show (1572864 * k + 768479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2305438) = 2359296 * k + 1152719 := by
    unfold C
    simp [show (4718592 * k + 2305438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1152719) = 7077888 * k + 3458158 := by
    unfold C
    simp [show (2359296 * k + 1152719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3458158) = 3538944 * k + 1729079 := by
    unfold C
    simp [show (7077888 * k + 3458158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1729079) = 10616832 * k + 5187238 := by
    unfold C
    simp [show (3538944 * k + 1729079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5187238) = 5308416 * k + 2593619 := by
    unfold C
    simp [show (10616832 * k + 5187238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2593619) = 15925248 * k + 7780858 := by
    unfold C
    simp [show (5308416 * k + 2593619) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7780858) = 7962624 * k + 3890429 := by
    unfold C
    simp [show (15925248 * k + 7780858) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3890429) = 23887872 * k + 11671288 := by
    unfold C
    simp [show (7962624 * k + 3890429) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11671288) = 11943936 * k + 5835644 := by
    unfold C
    simp [show (23887872 * k + 11671288) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5835644) = 5971968 * k + 2917822 := by
    unfold C
    simp [show (11943936 * k + 5835644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2917822) = 2985984 * k + 1458911 := by
    unfold C
    simp [show (5971968 * k + 2917822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1458911) = 8957952 * k + 4376734 := by
    unfold C
    simp [show (2985984 * k + 1458911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4376734) = 4478976 * k + 2188367 := by
    unfold C
    simp [show (8957952 * k + 4376734) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2188367) = 13436928 * k + 6565102 := by
    unfold C
    simp [show (4478976 * k + 2188367) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6565102) = 6718464 * k + 3282551 := by
    unfold C
    simp [show (13436928 * k + 6565102) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3282551) = 20155392 * k + 9847654 := by
    unfold C
    simp [show (6718464 * k + 3282551) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9847654) = 10077696 * k + 4923827 := by
    unfold C
    simp [show (20155392 * k + 9847654) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4923827) = 30233088 * k + 14771482 := by
    unfold C
    simp [show (10077696 * k + 4923827) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14771482) = 15116544 * k + 7385741 := by
    unfold C
    simp [show (30233088 * k + 14771482) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7385741) = 45349632 * k + 22157224 := by
    unfold C
    simp [show (15116544 * k + 7385741) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22157224) = 22674816 * k + 11078612 := by
    unfold C
    simp [show (45349632 * k + 22157224) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11078612) = 11337408 * k + 5539306 := by
    unfold C
    simp [show (22674816 * k + 11078612) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5539306) = 5668704 * k + 2769653 := by
    unfold C
    simp [show (11337408 * k + 5539306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2769653) = 17006112 * k + 8308960 := by
    unfold C
    simp [show (5668704 * k + 2769653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8308960) = 8503056 * k + 4154480 := by
    unfold C
    simp [show (17006112 * k + 8308960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4154480) = 4251528 * k + 2077240 := by
    unfold C
    simp [show (8503056 * k + 4154480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2077240) = 2125764 * k + 1038620 := by
    unfold C
    simp [show (4251528 * k + 2077240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1038620) = 1062882 * k + 519310 := by
    unfold C
    simp [show (2125764 * k + 1038620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 519310) = 531441 * k + 259655 := by
    unfold C
    simp [show (1062882 * k + 519310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 512319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 512319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_512559 : ∀ k : Nat,
    iterate (1048576 * k + 512559) 32 = 531441 * k + 259777 ∧
      531441 * k + 259777 < 1048576 * k + 512559 := by
  intro k
  have h1 : C (1048576 * k + 512559) = 3145728 * k + 1537678 := by
    unfold C
    simp [show (1048576 * k + 512559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1537678) = 1572864 * k + 768839 := by
    unfold C
    simp [show (3145728 * k + 1537678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 768839) = 4718592 * k + 2306518 := by
    unfold C
    simp [show (1572864 * k + 768839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2306518) = 2359296 * k + 1153259 := by
    unfold C
    simp [show (4718592 * k + 2306518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1153259) = 7077888 * k + 3459778 := by
    unfold C
    simp [show (2359296 * k + 1153259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3459778) = 3538944 * k + 1729889 := by
    unfold C
    simp [show (7077888 * k + 3459778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1729889) = 10616832 * k + 5189668 := by
    unfold C
    simp [show (3538944 * k + 1729889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5189668) = 5308416 * k + 2594834 := by
    unfold C
    simp [show (10616832 * k + 5189668) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2594834) = 2654208 * k + 1297417 := by
    unfold C
    simp [show (5308416 * k + 2594834) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1297417) = 7962624 * k + 3892252 := by
    unfold C
    simp [show (2654208 * k + 1297417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3892252) = 3981312 * k + 1946126 := by
    unfold C
    simp [show (7962624 * k + 3892252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1946126) = 1990656 * k + 973063 := by
    unfold C
    simp [show (3981312 * k + 1946126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 973063) = 5971968 * k + 2919190 := by
    unfold C
    simp [show (1990656 * k + 973063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2919190) = 2985984 * k + 1459595 := by
    unfold C
    simp [show (5971968 * k + 2919190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1459595) = 8957952 * k + 4378786 := by
    unfold C
    simp [show (2985984 * k + 1459595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4378786) = 4478976 * k + 2189393 := by
    unfold C
    simp [show (8957952 * k + 4378786) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2189393) = 13436928 * k + 6568180 := by
    unfold C
    simp [show (4478976 * k + 2189393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6568180) = 6718464 * k + 3284090 := by
    unfold C
    simp [show (13436928 * k + 6568180) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3284090) = 3359232 * k + 1642045 := by
    unfold C
    simp [show (6718464 * k + 3284090) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1642045) = 10077696 * k + 4926136 := by
    unfold C
    simp [show (3359232 * k + 1642045) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4926136) = 5038848 * k + 2463068 := by
    unfold C
    simp [show (10077696 * k + 4926136) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2463068) = 2519424 * k + 1231534 := by
    unfold C
    simp [show (5038848 * k + 2463068) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1231534) = 1259712 * k + 615767 := by
    unfold C
    simp [show (2519424 * k + 1231534) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 615767) = 3779136 * k + 1847302 := by
    unfold C
    simp [show (1259712 * k + 615767) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1847302) = 1889568 * k + 923651 := by
    unfold C
    simp [show (3779136 * k + 1847302) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 923651) = 5668704 * k + 2770954 := by
    unfold C
    simp [show (1889568 * k + 923651) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2770954) = 2834352 * k + 1385477 := by
    unfold C
    simp [show (5668704 * k + 2770954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1385477) = 8503056 * k + 4156432 := by
    unfold C
    simp [show (2834352 * k + 1385477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4156432) = 4251528 * k + 2078216 := by
    unfold C
    simp [show (8503056 * k + 4156432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2078216) = 2125764 * k + 1039108 := by
    unfold C
    simp [show (4251528 * k + 2078216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1039108) = 1062882 * k + 519554 := by
    unfold C
    simp [show (2125764 * k + 1039108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 519554) = 531441 * k + 259777 := by
    unfold C
    simp [show (1062882 * k + 519554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 512559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 512559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_512767 : ∀ k : Nat,
    iterate (1048576 * k + 512767) 32 = 531441 * k + 259882 ∧
      531441 * k + 259882 < 1048576 * k + 512767 := by
  intro k
  have h1 : C (1048576 * k + 512767) = 3145728 * k + 1538302 := by
    unfold C
    simp [show (1048576 * k + 512767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1538302) = 1572864 * k + 769151 := by
    unfold C
    simp [show (3145728 * k + 1538302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 769151) = 4718592 * k + 2307454 := by
    unfold C
    simp [show (1572864 * k + 769151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2307454) = 2359296 * k + 1153727 := by
    unfold C
    simp [show (4718592 * k + 2307454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1153727) = 7077888 * k + 3461182 := by
    unfold C
    simp [show (2359296 * k + 1153727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3461182) = 3538944 * k + 1730591 := by
    unfold C
    simp [show (7077888 * k + 3461182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1730591) = 10616832 * k + 5191774 := by
    unfold C
    simp [show (3538944 * k + 1730591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5191774) = 5308416 * k + 2595887 := by
    unfold C
    simp [show (10616832 * k + 5191774) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2595887) = 15925248 * k + 7787662 := by
    unfold C
    simp [show (5308416 * k + 2595887) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7787662) = 7962624 * k + 3893831 := by
    unfold C
    simp [show (15925248 * k + 7787662) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3893831) = 23887872 * k + 11681494 := by
    unfold C
    simp [show (7962624 * k + 3893831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11681494) = 11943936 * k + 5840747 := by
    unfold C
    simp [show (23887872 * k + 11681494) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5840747) = 35831808 * k + 17522242 := by
    unfold C
    simp [show (11943936 * k + 5840747) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17522242) = 17915904 * k + 8761121 := by
    unfold C
    simp [show (35831808 * k + 17522242) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8761121) = 53747712 * k + 26283364 := by
    unfold C
    simp [show (17915904 * k + 8761121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26283364) = 26873856 * k + 13141682 := by
    unfold C
    simp [show (53747712 * k + 26283364) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13141682) = 13436928 * k + 6570841 := by
    unfold C
    simp [show (26873856 * k + 13141682) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6570841) = 40310784 * k + 19712524 := by
    unfold C
    simp [show (13436928 * k + 6570841) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19712524) = 20155392 * k + 9856262 := by
    unfold C
    simp [show (40310784 * k + 19712524) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9856262) = 10077696 * k + 4928131 := by
    unfold C
    simp [show (20155392 * k + 9856262) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4928131) = 30233088 * k + 14784394 := by
    unfold C
    simp [show (10077696 * k + 4928131) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14784394) = 15116544 * k + 7392197 := by
    unfold C
    simp [show (30233088 * k + 14784394) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7392197) = 45349632 * k + 22176592 := by
    unfold C
    simp [show (15116544 * k + 7392197) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22176592) = 22674816 * k + 11088296 := by
    unfold C
    simp [show (45349632 * k + 22176592) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11088296) = 11337408 * k + 5544148 := by
    unfold C
    simp [show (22674816 * k + 11088296) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5544148) = 5668704 * k + 2772074 := by
    unfold C
    simp [show (11337408 * k + 5544148) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2772074) = 2834352 * k + 1386037 := by
    unfold C
    simp [show (5668704 * k + 2772074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1386037) = 8503056 * k + 4158112 := by
    unfold C
    simp [show (2834352 * k + 1386037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4158112) = 4251528 * k + 2079056 := by
    unfold C
    simp [show (8503056 * k + 4158112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2079056) = 2125764 * k + 1039528 := by
    unfold C
    simp [show (4251528 * k + 2079056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1039528) = 1062882 * k + 519764 := by
    unfold C
    simp [show (2125764 * k + 1039528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 519764) = 531441 * k + 259882 := by
    unfold C
    simp [show (1062882 * k + 519764) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 512767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 512767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_513135 : ∀ k : Nat,
    iterate (1048576 * k + 513135) 32 = 531441 * k + 260069 ∧
      531441 * k + 260069 < 1048576 * k + 513135 := by
  intro k
  have h1 : C (1048576 * k + 513135) = 3145728 * k + 1539406 := by
    unfold C
    simp [show (1048576 * k + 513135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1539406) = 1572864 * k + 769703 := by
    unfold C
    simp [show (3145728 * k + 1539406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 769703) = 4718592 * k + 2309110 := by
    unfold C
    simp [show (1572864 * k + 769703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2309110) = 2359296 * k + 1154555 := by
    unfold C
    simp [show (4718592 * k + 2309110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1154555) = 7077888 * k + 3463666 := by
    unfold C
    simp [show (2359296 * k + 1154555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3463666) = 3538944 * k + 1731833 := by
    unfold C
    simp [show (7077888 * k + 3463666) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1731833) = 10616832 * k + 5195500 := by
    unfold C
    simp [show (3538944 * k + 1731833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5195500) = 5308416 * k + 2597750 := by
    unfold C
    simp [show (10616832 * k + 5195500) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2597750) = 2654208 * k + 1298875 := by
    unfold C
    simp [show (5308416 * k + 2597750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1298875) = 7962624 * k + 3896626 := by
    unfold C
    simp [show (2654208 * k + 1298875) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3896626) = 3981312 * k + 1948313 := by
    unfold C
    simp [show (7962624 * k + 3896626) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1948313) = 11943936 * k + 5844940 := by
    unfold C
    simp [show (3981312 * k + 1948313) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5844940) = 5971968 * k + 2922470 := by
    unfold C
    simp [show (11943936 * k + 5844940) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2922470) = 2985984 * k + 1461235 := by
    unfold C
    simp [show (5971968 * k + 2922470) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1461235) = 8957952 * k + 4383706 := by
    unfold C
    simp [show (2985984 * k + 1461235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4383706) = 4478976 * k + 2191853 := by
    unfold C
    simp [show (8957952 * k + 4383706) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2191853) = 13436928 * k + 6575560 := by
    unfold C
    simp [show (4478976 * k + 2191853) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6575560) = 6718464 * k + 3287780 := by
    unfold C
    simp [show (13436928 * k + 6575560) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3287780) = 3359232 * k + 1643890 := by
    unfold C
    simp [show (6718464 * k + 3287780) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1643890) = 1679616 * k + 821945 := by
    unfold C
    simp [show (3359232 * k + 1643890) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 821945) = 5038848 * k + 2465836 := by
    unfold C
    simp [show (1679616 * k + 821945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2465836) = 2519424 * k + 1232918 := by
    unfold C
    simp [show (5038848 * k + 2465836) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1232918) = 1259712 * k + 616459 := by
    unfold C
    simp [show (2519424 * k + 1232918) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 616459) = 3779136 * k + 1849378 := by
    unfold C
    simp [show (1259712 * k + 616459) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1849378) = 1889568 * k + 924689 := by
    unfold C
    simp [show (3779136 * k + 1849378) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 924689) = 5668704 * k + 2774068 := by
    unfold C
    simp [show (1889568 * k + 924689) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2774068) = 2834352 * k + 1387034 := by
    unfold C
    simp [show (5668704 * k + 2774068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1387034) = 1417176 * k + 693517 := by
    unfold C
    simp [show (2834352 * k + 1387034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 693517) = 4251528 * k + 2080552 := by
    unfold C
    simp [show (1417176 * k + 693517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2080552) = 2125764 * k + 1040276 := by
    unfold C
    simp [show (4251528 * k + 2080552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1040276) = 1062882 * k + 520138 := by
    unfold C
    simp [show (2125764 * k + 1040276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 520138) = 531441 * k + 260069 := by
    unfold C
    simp [show (1062882 * k + 520138) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 513135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 513135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_513183 : ∀ k : Nat,
    iterate (1048576 * k + 513183) 32 = 531441 * k + 260093 ∧
      531441 * k + 260093 < 1048576 * k + 513183 := by
  intro k
  have h1 : C (1048576 * k + 513183) = 3145728 * k + 1539550 := by
    unfold C
    simp [show (1048576 * k + 513183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1539550) = 1572864 * k + 769775 := by
    unfold C
    simp [show (3145728 * k + 1539550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 769775) = 4718592 * k + 2309326 := by
    unfold C
    simp [show (1572864 * k + 769775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2309326) = 2359296 * k + 1154663 := by
    unfold C
    simp [show (4718592 * k + 2309326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1154663) = 7077888 * k + 3463990 := by
    unfold C
    simp [show (2359296 * k + 1154663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3463990) = 3538944 * k + 1731995 := by
    unfold C
    simp [show (7077888 * k + 3463990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1731995) = 10616832 * k + 5195986 := by
    unfold C
    simp [show (3538944 * k + 1731995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5195986) = 5308416 * k + 2597993 := by
    unfold C
    simp [show (10616832 * k + 5195986) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2597993) = 15925248 * k + 7793980 := by
    unfold C
    simp [show (5308416 * k + 2597993) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7793980) = 7962624 * k + 3896990 := by
    unfold C
    simp [show (15925248 * k + 7793980) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3896990) = 3981312 * k + 1948495 := by
    unfold C
    simp [show (7962624 * k + 3896990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1948495) = 11943936 * k + 5845486 := by
    unfold C
    simp [show (3981312 * k + 1948495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5845486) = 5971968 * k + 2922743 := by
    unfold C
    simp [show (11943936 * k + 5845486) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2922743) = 17915904 * k + 8768230 := by
    unfold C
    simp [show (5971968 * k + 2922743) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8768230) = 8957952 * k + 4384115 := by
    unfold C
    simp [show (17915904 * k + 8768230) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4384115) = 26873856 * k + 13152346 := by
    unfold C
    simp [show (8957952 * k + 4384115) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13152346) = 13436928 * k + 6576173 := by
    unfold C
    simp [show (26873856 * k + 13152346) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6576173) = 40310784 * k + 19728520 := by
    unfold C
    simp [show (13436928 * k + 6576173) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19728520) = 20155392 * k + 9864260 := by
    unfold C
    simp [show (40310784 * k + 19728520) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9864260) = 10077696 * k + 4932130 := by
    unfold C
    simp [show (20155392 * k + 9864260) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4932130) = 5038848 * k + 2466065 := by
    unfold C
    simp [show (10077696 * k + 4932130) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2466065) = 15116544 * k + 7398196 := by
    unfold C
    simp [show (5038848 * k + 2466065) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7398196) = 7558272 * k + 3699098 := by
    unfold C
    simp [show (15116544 * k + 7398196) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3699098) = 3779136 * k + 1849549 := by
    unfold C
    simp [show (7558272 * k + 3699098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1849549) = 11337408 * k + 5548648 := by
    unfold C
    simp [show (3779136 * k + 1849549) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5548648) = 5668704 * k + 2774324 := by
    unfold C
    simp [show (11337408 * k + 5548648) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2774324) = 2834352 * k + 1387162 := by
    unfold C
    simp [show (5668704 * k + 2774324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1387162) = 1417176 * k + 693581 := by
    unfold C
    simp [show (2834352 * k + 1387162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 693581) = 4251528 * k + 2080744 := by
    unfold C
    simp [show (1417176 * k + 693581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2080744) = 2125764 * k + 1040372 := by
    unfold C
    simp [show (4251528 * k + 2080744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1040372) = 1062882 * k + 520186 := by
    unfold C
    simp [show (2125764 * k + 1040372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 520186) = 531441 * k + 260093 := by
    unfold C
    simp [show (1062882 * k + 520186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 513183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 513183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_513307 : ∀ k : Nat,
    iterate (1048576 * k + 513307) 32 = 531441 * k + 260156 ∧
      531441 * k + 260156 < 1048576 * k + 513307 := by
  intro k
  have h1 : C (1048576 * k + 513307) = 3145728 * k + 1539922 := by
    unfold C
    simp [show (1048576 * k + 513307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1539922) = 1572864 * k + 769961 := by
    unfold C
    simp [show (3145728 * k + 1539922) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 769961) = 4718592 * k + 2309884 := by
    unfold C
    simp [show (1572864 * k + 769961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2309884) = 2359296 * k + 1154942 := by
    unfold C
    simp [show (4718592 * k + 2309884) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1154942) = 1179648 * k + 577471 := by
    unfold C
    simp [show (2359296 * k + 1154942) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 577471) = 3538944 * k + 1732414 := by
    unfold C
    simp [show (1179648 * k + 577471) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1732414) = 1769472 * k + 866207 := by
    unfold C
    simp [show (3538944 * k + 1732414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 866207) = 5308416 * k + 2598622 := by
    unfold C
    simp [show (1769472 * k + 866207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2598622) = 2654208 * k + 1299311 := by
    unfold C
    simp [show (5308416 * k + 2598622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1299311) = 7962624 * k + 3897934 := by
    unfold C
    simp [show (2654208 * k + 1299311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3897934) = 3981312 * k + 1948967 := by
    unfold C
    simp [show (7962624 * k + 3897934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1948967) = 11943936 * k + 5846902 := by
    unfold C
    simp [show (3981312 * k + 1948967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5846902) = 5971968 * k + 2923451 := by
    unfold C
    simp [show (11943936 * k + 5846902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2923451) = 17915904 * k + 8770354 := by
    unfold C
    simp [show (5971968 * k + 2923451) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8770354) = 8957952 * k + 4385177 := by
    unfold C
    simp [show (17915904 * k + 8770354) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4385177) = 26873856 * k + 13155532 := by
    unfold C
    simp [show (8957952 * k + 4385177) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13155532) = 13436928 * k + 6577766 := by
    unfold C
    simp [show (26873856 * k + 13155532) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6577766) = 6718464 * k + 3288883 := by
    unfold C
    simp [show (13436928 * k + 6577766) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3288883) = 20155392 * k + 9866650 := by
    unfold C
    simp [show (6718464 * k + 3288883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9866650) = 10077696 * k + 4933325 := by
    unfold C
    simp [show (20155392 * k + 9866650) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4933325) = 30233088 * k + 14799976 := by
    unfold C
    simp [show (10077696 * k + 4933325) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14799976) = 15116544 * k + 7399988 := by
    unfold C
    simp [show (30233088 * k + 14799976) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7399988) = 7558272 * k + 3699994 := by
    unfold C
    simp [show (15116544 * k + 7399988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3699994) = 3779136 * k + 1849997 := by
    unfold C
    simp [show (7558272 * k + 3699994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1849997) = 11337408 * k + 5549992 := by
    unfold C
    simp [show (3779136 * k + 1849997) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5549992) = 5668704 * k + 2774996 := by
    unfold C
    simp [show (11337408 * k + 5549992) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2774996) = 2834352 * k + 1387498 := by
    unfold C
    simp [show (5668704 * k + 2774996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1387498) = 1417176 * k + 693749 := by
    unfold C
    simp [show (2834352 * k + 1387498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 693749) = 4251528 * k + 2081248 := by
    unfold C
    simp [show (1417176 * k + 693749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2081248) = 2125764 * k + 1040624 := by
    unfold C
    simp [show (4251528 * k + 2081248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1040624) = 1062882 * k + 520312 := by
    unfold C
    simp [show (2125764 * k + 1040624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 520312) = 531441 * k + 260156 := by
    unfold C
    simp [show (1062882 * k + 520312) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 513307) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 513307)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_513743 : ∀ k : Nat,
    iterate (1048576 * k + 513743) 32 = 531441 * k + 260377 ∧
      531441 * k + 260377 < 1048576 * k + 513743 := by
  intro k
  have h1 : C (1048576 * k + 513743) = 3145728 * k + 1541230 := by
    unfold C
    simp [show (1048576 * k + 513743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1541230) = 1572864 * k + 770615 := by
    unfold C
    simp [show (3145728 * k + 1541230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 770615) = 4718592 * k + 2311846 := by
    unfold C
    simp [show (1572864 * k + 770615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2311846) = 2359296 * k + 1155923 := by
    unfold C
    simp [show (4718592 * k + 2311846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1155923) = 7077888 * k + 3467770 := by
    unfold C
    simp [show (2359296 * k + 1155923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3467770) = 3538944 * k + 1733885 := by
    unfold C
    simp [show (7077888 * k + 3467770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1733885) = 10616832 * k + 5201656 := by
    unfold C
    simp [show (3538944 * k + 1733885) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5201656) = 5308416 * k + 2600828 := by
    unfold C
    simp [show (10616832 * k + 5201656) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2600828) = 2654208 * k + 1300414 := by
    unfold C
    simp [show (5308416 * k + 2600828) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1300414) = 1327104 * k + 650207 := by
    unfold C
    simp [show (2654208 * k + 1300414) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 650207) = 3981312 * k + 1950622 := by
    unfold C
    simp [show (1327104 * k + 650207) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1950622) = 1990656 * k + 975311 := by
    unfold C
    simp [show (3981312 * k + 1950622) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 975311) = 5971968 * k + 2925934 := by
    unfold C
    simp [show (1990656 * k + 975311) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2925934) = 2985984 * k + 1462967 := by
    unfold C
    simp [show (5971968 * k + 2925934) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1462967) = 8957952 * k + 4388902 := by
    unfold C
    simp [show (2985984 * k + 1462967) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4388902) = 4478976 * k + 2194451 := by
    unfold C
    simp [show (8957952 * k + 4388902) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2194451) = 13436928 * k + 6583354 := by
    unfold C
    simp [show (4478976 * k + 2194451) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6583354) = 6718464 * k + 3291677 := by
    unfold C
    simp [show (13436928 * k + 6583354) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3291677) = 20155392 * k + 9875032 := by
    unfold C
    simp [show (6718464 * k + 3291677) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9875032) = 10077696 * k + 4937516 := by
    unfold C
    simp [show (20155392 * k + 9875032) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4937516) = 5038848 * k + 2468758 := by
    unfold C
    simp [show (10077696 * k + 4937516) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2468758) = 2519424 * k + 1234379 := by
    unfold C
    simp [show (5038848 * k + 2468758) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1234379) = 7558272 * k + 3703138 := by
    unfold C
    simp [show (2519424 * k + 1234379) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3703138) = 3779136 * k + 1851569 := by
    unfold C
    simp [show (7558272 * k + 3703138) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1851569) = 11337408 * k + 5554708 := by
    unfold C
    simp [show (3779136 * k + 1851569) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5554708) = 5668704 * k + 2777354 := by
    unfold C
    simp [show (11337408 * k + 5554708) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2777354) = 2834352 * k + 1388677 := by
    unfold C
    simp [show (5668704 * k + 2777354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1388677) = 8503056 * k + 4166032 := by
    unfold C
    simp [show (2834352 * k + 1388677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4166032) = 4251528 * k + 2083016 := by
    unfold C
    simp [show (8503056 * k + 4166032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2083016) = 2125764 * k + 1041508 := by
    unfold C
    simp [show (4251528 * k + 2083016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1041508) = 1062882 * k + 520754 := by
    unfold C
    simp [show (2125764 * k + 1041508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 520754) = 531441 * k + 260377 := by
    unfold C
    simp [show (1062882 * k + 520754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 513743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 513743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_513903 : ∀ k : Nat,
    iterate (1048576 * k + 513903) 32 = 531441 * k + 260458 ∧
      531441 * k + 260458 < 1048576 * k + 513903 := by
  intro k
  have h1 : C (1048576 * k + 513903) = 3145728 * k + 1541710 := by
    unfold C
    simp [show (1048576 * k + 513903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1541710) = 1572864 * k + 770855 := by
    unfold C
    simp [show (3145728 * k + 1541710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 770855) = 4718592 * k + 2312566 := by
    unfold C
    simp [show (1572864 * k + 770855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2312566) = 2359296 * k + 1156283 := by
    unfold C
    simp [show (4718592 * k + 2312566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1156283) = 7077888 * k + 3468850 := by
    unfold C
    simp [show (2359296 * k + 1156283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3468850) = 3538944 * k + 1734425 := by
    unfold C
    simp [show (7077888 * k + 3468850) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1734425) = 10616832 * k + 5203276 := by
    unfold C
    simp [show (3538944 * k + 1734425) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5203276) = 5308416 * k + 2601638 := by
    unfold C
    simp [show (10616832 * k + 5203276) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2601638) = 2654208 * k + 1300819 := by
    unfold C
    simp [show (5308416 * k + 2601638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1300819) = 7962624 * k + 3902458 := by
    unfold C
    simp [show (2654208 * k + 1300819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3902458) = 3981312 * k + 1951229 := by
    unfold C
    simp [show (7962624 * k + 3902458) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1951229) = 11943936 * k + 5853688 := by
    unfold C
    simp [show (3981312 * k + 1951229) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5853688) = 5971968 * k + 2926844 := by
    unfold C
    simp [show (11943936 * k + 5853688) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2926844) = 2985984 * k + 1463422 := by
    unfold C
    simp [show (5971968 * k + 2926844) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1463422) = 1492992 * k + 731711 := by
    unfold C
    simp [show (2985984 * k + 1463422) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 731711) = 4478976 * k + 2195134 := by
    unfold C
    simp [show (1492992 * k + 731711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2195134) = 2239488 * k + 1097567 := by
    unfold C
    simp [show (4478976 * k + 2195134) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1097567) = 6718464 * k + 3292702 := by
    unfold C
    simp [show (2239488 * k + 1097567) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3292702) = 3359232 * k + 1646351 := by
    unfold C
    simp [show (6718464 * k + 3292702) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1646351) = 10077696 * k + 4939054 := by
    unfold C
    simp [show (3359232 * k + 1646351) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4939054) = 5038848 * k + 2469527 := by
    unfold C
    simp [show (10077696 * k + 4939054) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2469527) = 15116544 * k + 7408582 := by
    unfold C
    simp [show (5038848 * k + 2469527) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7408582) = 7558272 * k + 3704291 := by
    unfold C
    simp [show (15116544 * k + 7408582) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3704291) = 22674816 * k + 11112874 := by
    unfold C
    simp [show (7558272 * k + 3704291) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11112874) = 11337408 * k + 5556437 := by
    unfold C
    simp [show (22674816 * k + 11112874) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5556437) = 34012224 * k + 16669312 := by
    unfold C
    simp [show (11337408 * k + 5556437) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16669312) = 17006112 * k + 8334656 := by
    unfold C
    simp [show (34012224 * k + 16669312) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8334656) = 8503056 * k + 4167328 := by
    unfold C
    simp [show (17006112 * k + 8334656) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4167328) = 4251528 * k + 2083664 := by
    unfold C
    simp [show (8503056 * k + 4167328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2083664) = 2125764 * k + 1041832 := by
    unfold C
    simp [show (4251528 * k + 2083664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1041832) = 1062882 * k + 520916 := by
    unfold C
    simp [show (2125764 * k + 1041832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 520916) = 531441 * k + 260458 := by
    unfold C
    simp [show (1062882 * k + 520916) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 513903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 513903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_514015 : ∀ k : Nat,
    iterate (1048576 * k + 514015) 32 = 531441 * k + 260515 ∧
      531441 * k + 260515 < 1048576 * k + 514015 := by
  intro k
  have h1 : C (1048576 * k + 514015) = 3145728 * k + 1542046 := by
    unfold C
    simp [show (1048576 * k + 514015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1542046) = 1572864 * k + 771023 := by
    unfold C
    simp [show (3145728 * k + 1542046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 771023) = 4718592 * k + 2313070 := by
    unfold C
    simp [show (1572864 * k + 771023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2313070) = 2359296 * k + 1156535 := by
    unfold C
    simp [show (4718592 * k + 2313070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1156535) = 7077888 * k + 3469606 := by
    unfold C
    simp [show (2359296 * k + 1156535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3469606) = 3538944 * k + 1734803 := by
    unfold C
    simp [show (7077888 * k + 3469606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1734803) = 10616832 * k + 5204410 := by
    unfold C
    simp [show (3538944 * k + 1734803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5204410) = 5308416 * k + 2602205 := by
    unfold C
    simp [show (10616832 * k + 5204410) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2602205) = 15925248 * k + 7806616 := by
    unfold C
    simp [show (5308416 * k + 2602205) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7806616) = 7962624 * k + 3903308 := by
    unfold C
    simp [show (15925248 * k + 7806616) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3903308) = 3981312 * k + 1951654 := by
    unfold C
    simp [show (7962624 * k + 3903308) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1951654) = 1990656 * k + 975827 := by
    unfold C
    simp [show (3981312 * k + 1951654) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 975827) = 5971968 * k + 2927482 := by
    unfold C
    simp [show (1990656 * k + 975827) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2927482) = 2985984 * k + 1463741 := by
    unfold C
    simp [show (5971968 * k + 2927482) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1463741) = 8957952 * k + 4391224 := by
    unfold C
    simp [show (2985984 * k + 1463741) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4391224) = 4478976 * k + 2195612 := by
    unfold C
    simp [show (8957952 * k + 4391224) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2195612) = 2239488 * k + 1097806 := by
    unfold C
    simp [show (4478976 * k + 2195612) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1097806) = 1119744 * k + 548903 := by
    unfold C
    simp [show (2239488 * k + 1097806) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 548903) = 3359232 * k + 1646710 := by
    unfold C
    simp [show (1119744 * k + 548903) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1646710) = 1679616 * k + 823355 := by
    unfold C
    simp [show (3359232 * k + 1646710) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 823355) = 5038848 * k + 2470066 := by
    unfold C
    simp [show (1679616 * k + 823355) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2470066) = 2519424 * k + 1235033 := by
    unfold C
    simp [show (5038848 * k + 2470066) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1235033) = 7558272 * k + 3705100 := by
    unfold C
    simp [show (2519424 * k + 1235033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3705100) = 3779136 * k + 1852550 := by
    unfold C
    simp [show (7558272 * k + 3705100) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1852550) = 1889568 * k + 926275 := by
    unfold C
    simp [show (3779136 * k + 1852550) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 926275) = 5668704 * k + 2778826 := by
    unfold C
    simp [show (1889568 * k + 926275) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2778826) = 2834352 * k + 1389413 := by
    unfold C
    simp [show (5668704 * k + 2778826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1389413) = 8503056 * k + 4168240 := by
    unfold C
    simp [show (2834352 * k + 1389413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4168240) = 4251528 * k + 2084120 := by
    unfold C
    simp [show (8503056 * k + 4168240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2084120) = 2125764 * k + 1042060 := by
    unfold C
    simp [show (4251528 * k + 2084120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1042060) = 1062882 * k + 521030 := by
    unfold C
    simp [show (2125764 * k + 1042060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 521030) = 531441 * k + 260515 := by
    unfold C
    simp [show (1062882 * k + 521030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 514015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 514015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_514367 : ∀ k : Nat,
    iterate (1048576 * k + 514367) 32 = 531441 * k + 260693 ∧
      531441 * k + 260693 < 1048576 * k + 514367 := by
  intro k
  have h1 : C (1048576 * k + 514367) = 3145728 * k + 1543102 := by
    unfold C
    simp [show (1048576 * k + 514367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1543102) = 1572864 * k + 771551 := by
    unfold C
    simp [show (3145728 * k + 1543102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 771551) = 4718592 * k + 2314654 := by
    unfold C
    simp [show (1572864 * k + 771551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2314654) = 2359296 * k + 1157327 := by
    unfold C
    simp [show (4718592 * k + 2314654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1157327) = 7077888 * k + 3471982 := by
    unfold C
    simp [show (2359296 * k + 1157327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3471982) = 3538944 * k + 1735991 := by
    unfold C
    simp [show (7077888 * k + 3471982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1735991) = 10616832 * k + 5207974 := by
    unfold C
    simp [show (3538944 * k + 1735991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5207974) = 5308416 * k + 2603987 := by
    unfold C
    simp [show (10616832 * k + 5207974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2603987) = 15925248 * k + 7811962 := by
    unfold C
    simp [show (5308416 * k + 2603987) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7811962) = 7962624 * k + 3905981 := by
    unfold C
    simp [show (15925248 * k + 7811962) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3905981) = 23887872 * k + 11717944 := by
    unfold C
    simp [show (7962624 * k + 3905981) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11717944) = 11943936 * k + 5858972 := by
    unfold C
    simp [show (23887872 * k + 11717944) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5858972) = 5971968 * k + 2929486 := by
    unfold C
    simp [show (11943936 * k + 5858972) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2929486) = 2985984 * k + 1464743 := by
    unfold C
    simp [show (5971968 * k + 2929486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1464743) = 8957952 * k + 4394230 := by
    unfold C
    simp [show (2985984 * k + 1464743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4394230) = 4478976 * k + 2197115 := by
    unfold C
    simp [show (8957952 * k + 4394230) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2197115) = 13436928 * k + 6591346 := by
    unfold C
    simp [show (4478976 * k + 2197115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6591346) = 6718464 * k + 3295673 := by
    unfold C
    simp [show (13436928 * k + 6591346) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3295673) = 20155392 * k + 9887020 := by
    unfold C
    simp [show (6718464 * k + 3295673) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9887020) = 10077696 * k + 4943510 := by
    unfold C
    simp [show (20155392 * k + 9887020) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4943510) = 5038848 * k + 2471755 := by
    unfold C
    simp [show (10077696 * k + 4943510) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2471755) = 15116544 * k + 7415266 := by
    unfold C
    simp [show (5038848 * k + 2471755) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7415266) = 7558272 * k + 3707633 := by
    unfold C
    simp [show (15116544 * k + 7415266) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3707633) = 22674816 * k + 11122900 := by
    unfold C
    simp [show (7558272 * k + 3707633) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11122900) = 11337408 * k + 5561450 := by
    unfold C
    simp [show (22674816 * k + 11122900) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5561450) = 5668704 * k + 2780725 := by
    unfold C
    simp [show (11337408 * k + 5561450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2780725) = 17006112 * k + 8342176 := by
    unfold C
    simp [show (5668704 * k + 2780725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8342176) = 8503056 * k + 4171088 := by
    unfold C
    simp [show (17006112 * k + 8342176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4171088) = 4251528 * k + 2085544 := by
    unfold C
    simp [show (8503056 * k + 4171088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2085544) = 2125764 * k + 1042772 := by
    unfold C
    simp [show (4251528 * k + 2085544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1042772) = 1062882 * k + 521386 := by
    unfold C
    simp [show (2125764 * k + 1042772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 521386) = 531441 * k + 260693 := by
    unfold C
    simp [show (1062882 * k + 521386) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 514367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 514367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_514791 : ∀ k : Nat,
    iterate (1048576 * k + 514791) 32 = 531441 * k + 260908 ∧
      531441 * k + 260908 < 1048576 * k + 514791 := by
  intro k
  have h1 : C (1048576 * k + 514791) = 3145728 * k + 1544374 := by
    unfold C
    simp [show (1048576 * k + 514791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1544374) = 1572864 * k + 772187 := by
    unfold C
    simp [show (3145728 * k + 1544374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 772187) = 4718592 * k + 2316562 := by
    unfold C
    simp [show (1572864 * k + 772187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2316562) = 2359296 * k + 1158281 := by
    unfold C
    simp [show (4718592 * k + 2316562) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1158281) = 7077888 * k + 3474844 := by
    unfold C
    simp [show (2359296 * k + 1158281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3474844) = 3538944 * k + 1737422 := by
    unfold C
    simp [show (7077888 * k + 3474844) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1737422) = 1769472 * k + 868711 := by
    unfold C
    simp [show (3538944 * k + 1737422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 868711) = 5308416 * k + 2606134 := by
    unfold C
    simp [show (1769472 * k + 868711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2606134) = 2654208 * k + 1303067 := by
    unfold C
    simp [show (5308416 * k + 2606134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1303067) = 7962624 * k + 3909202 := by
    unfold C
    simp [show (2654208 * k + 1303067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3909202) = 3981312 * k + 1954601 := by
    unfold C
    simp [show (7962624 * k + 3909202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1954601) = 11943936 * k + 5863804 := by
    unfold C
    simp [show (3981312 * k + 1954601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5863804) = 5971968 * k + 2931902 := by
    unfold C
    simp [show (11943936 * k + 5863804) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2931902) = 2985984 * k + 1465951 := by
    unfold C
    simp [show (5971968 * k + 2931902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1465951) = 8957952 * k + 4397854 := by
    unfold C
    simp [show (2985984 * k + 1465951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4397854) = 4478976 * k + 2198927 := by
    unfold C
    simp [show (8957952 * k + 4397854) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2198927) = 13436928 * k + 6596782 := by
    unfold C
    simp [show (4478976 * k + 2198927) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6596782) = 6718464 * k + 3298391 := by
    unfold C
    simp [show (13436928 * k + 6596782) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3298391) = 20155392 * k + 9895174 := by
    unfold C
    simp [show (6718464 * k + 3298391) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9895174) = 10077696 * k + 4947587 := by
    unfold C
    simp [show (20155392 * k + 9895174) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4947587) = 30233088 * k + 14842762 := by
    unfold C
    simp [show (10077696 * k + 4947587) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14842762) = 15116544 * k + 7421381 := by
    unfold C
    simp [show (30233088 * k + 14842762) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7421381) = 45349632 * k + 22264144 := by
    unfold C
    simp [show (15116544 * k + 7421381) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22264144) = 22674816 * k + 11132072 := by
    unfold C
    simp [show (45349632 * k + 22264144) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11132072) = 11337408 * k + 5566036 := by
    unfold C
    simp [show (22674816 * k + 11132072) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5566036) = 5668704 * k + 2783018 := by
    unfold C
    simp [show (11337408 * k + 5566036) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2783018) = 2834352 * k + 1391509 := by
    unfold C
    simp [show (5668704 * k + 2783018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1391509) = 8503056 * k + 4174528 := by
    unfold C
    simp [show (2834352 * k + 1391509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4174528) = 4251528 * k + 2087264 := by
    unfold C
    simp [show (8503056 * k + 4174528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2087264) = 2125764 * k + 1043632 := by
    unfold C
    simp [show (4251528 * k + 2087264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1043632) = 1062882 * k + 521816 := by
    unfold C
    simp [show (2125764 * k + 1043632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 521816) = 531441 * k + 260908 := by
    unfold C
    simp [show (1062882 * k + 521816) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 514791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 514791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_514815 : ∀ k : Nat,
    iterate (1048576 * k + 514815) 32 = 531441 * k + 260920 ∧
      531441 * k + 260920 < 1048576 * k + 514815 := by
  intro k
  have h1 : C (1048576 * k + 514815) = 3145728 * k + 1544446 := by
    unfold C
    simp [show (1048576 * k + 514815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1544446) = 1572864 * k + 772223 := by
    unfold C
    simp [show (3145728 * k + 1544446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 772223) = 4718592 * k + 2316670 := by
    unfold C
    simp [show (1572864 * k + 772223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2316670) = 2359296 * k + 1158335 := by
    unfold C
    simp [show (4718592 * k + 2316670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1158335) = 7077888 * k + 3475006 := by
    unfold C
    simp [show (2359296 * k + 1158335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3475006) = 3538944 * k + 1737503 := by
    unfold C
    simp [show (7077888 * k + 3475006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1737503) = 10616832 * k + 5212510 := by
    unfold C
    simp [show (3538944 * k + 1737503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5212510) = 5308416 * k + 2606255 := by
    unfold C
    simp [show (10616832 * k + 5212510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2606255) = 15925248 * k + 7818766 := by
    unfold C
    simp [show (5308416 * k + 2606255) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7818766) = 7962624 * k + 3909383 := by
    unfold C
    simp [show (15925248 * k + 7818766) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3909383) = 23887872 * k + 11728150 := by
    unfold C
    simp [show (7962624 * k + 3909383) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11728150) = 11943936 * k + 5864075 := by
    unfold C
    simp [show (23887872 * k + 11728150) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5864075) = 35831808 * k + 17592226 := by
    unfold C
    simp [show (11943936 * k + 5864075) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17592226) = 17915904 * k + 8796113 := by
    unfold C
    simp [show (35831808 * k + 17592226) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8796113) = 53747712 * k + 26388340 := by
    unfold C
    simp [show (17915904 * k + 8796113) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26388340) = 26873856 * k + 13194170 := by
    unfold C
    simp [show (53747712 * k + 26388340) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13194170) = 13436928 * k + 6597085 := by
    unfold C
    simp [show (26873856 * k + 13194170) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6597085) = 40310784 * k + 19791256 := by
    unfold C
    simp [show (13436928 * k + 6597085) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19791256) = 20155392 * k + 9895628 := by
    unfold C
    simp [show (40310784 * k + 19791256) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9895628) = 10077696 * k + 4947814 := by
    unfold C
    simp [show (20155392 * k + 9895628) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4947814) = 5038848 * k + 2473907 := by
    unfold C
    simp [show (10077696 * k + 4947814) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2473907) = 15116544 * k + 7421722 := by
    unfold C
    simp [show (5038848 * k + 2473907) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7421722) = 7558272 * k + 3710861 := by
    unfold C
    simp [show (15116544 * k + 7421722) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3710861) = 22674816 * k + 11132584 := by
    unfold C
    simp [show (7558272 * k + 3710861) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11132584) = 11337408 * k + 5566292 := by
    unfold C
    simp [show (22674816 * k + 11132584) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5566292) = 5668704 * k + 2783146 := by
    unfold C
    simp [show (11337408 * k + 5566292) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2783146) = 2834352 * k + 1391573 := by
    unfold C
    simp [show (5668704 * k + 2783146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1391573) = 8503056 * k + 4174720 := by
    unfold C
    simp [show (2834352 * k + 1391573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4174720) = 4251528 * k + 2087360 := by
    unfold C
    simp [show (8503056 * k + 4174720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2087360) = 2125764 * k + 1043680 := by
    unfold C
    simp [show (4251528 * k + 2087360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1043680) = 1062882 * k + 521840 := by
    unfold C
    simp [show (2125764 * k + 1043680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 521840) = 531441 * k + 260920 := by
    unfold C
    simp [show (1062882 * k + 521840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 514815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 514815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard066
