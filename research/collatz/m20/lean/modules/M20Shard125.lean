import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard125

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_981695 : ∀ k : Nat,
    iterate (1048576 * k + 981695) 32 = 531441 * k + 497545 ∧
      531441 * k + 497545 < 1048576 * k + 981695 := by
  intro k
  have h1 : C (1048576 * k + 981695) = 3145728 * k + 2945086 := by
    unfold C
    simp [show (1048576 * k + 981695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2945086) = 1572864 * k + 1472543 := by
    unfold C
    simp [show (3145728 * k + 2945086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1472543) = 4718592 * k + 4417630 := by
    unfold C
    simp [show (1572864 * k + 1472543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4417630) = 2359296 * k + 2208815 := by
    unfold C
    simp [show (4718592 * k + 4417630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2208815) = 7077888 * k + 6626446 := by
    unfold C
    simp [show (2359296 * k + 2208815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6626446) = 3538944 * k + 3313223 := by
    unfold C
    simp [show (7077888 * k + 6626446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3313223) = 10616832 * k + 9939670 := by
    unfold C
    simp [show (3538944 * k + 3313223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9939670) = 5308416 * k + 4969835 := by
    unfold C
    simp [show (10616832 * k + 9939670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4969835) = 15925248 * k + 14909506 := by
    unfold C
    simp [show (5308416 * k + 4969835) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14909506) = 7962624 * k + 7454753 := by
    unfold C
    simp [show (15925248 * k + 14909506) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7454753) = 23887872 * k + 22364260 := by
    unfold C
    simp [show (7962624 * k + 7454753) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22364260) = 11943936 * k + 11182130 := by
    unfold C
    simp [show (23887872 * k + 22364260) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11182130) = 5971968 * k + 5591065 := by
    unfold C
    simp [show (11943936 * k + 11182130) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5591065) = 17915904 * k + 16773196 := by
    unfold C
    simp [show (5971968 * k + 5591065) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16773196) = 8957952 * k + 8386598 := by
    unfold C
    simp [show (17915904 * k + 16773196) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8386598) = 4478976 * k + 4193299 := by
    unfold C
    simp [show (8957952 * k + 8386598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4193299) = 13436928 * k + 12579898 := by
    unfold C
    simp [show (4478976 * k + 4193299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12579898) = 6718464 * k + 6289949 := by
    unfold C
    simp [show (13436928 * k + 12579898) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6289949) = 20155392 * k + 18869848 := by
    unfold C
    simp [show (6718464 * k + 6289949) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18869848) = 10077696 * k + 9434924 := by
    unfold C
    simp [show (20155392 * k + 18869848) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9434924) = 5038848 * k + 4717462 := by
    unfold C
    simp [show (10077696 * k + 9434924) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4717462) = 2519424 * k + 2358731 := by
    unfold C
    simp [show (5038848 * k + 4717462) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2358731) = 7558272 * k + 7076194 := by
    unfold C
    simp [show (2519424 * k + 2358731) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7076194) = 3779136 * k + 3538097 := by
    unfold C
    simp [show (7558272 * k + 7076194) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3538097) = 11337408 * k + 10614292 := by
    unfold C
    simp [show (3779136 * k + 3538097) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10614292) = 5668704 * k + 5307146 := by
    unfold C
    simp [show (11337408 * k + 10614292) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5307146) = 2834352 * k + 2653573 := by
    unfold C
    simp [show (5668704 * k + 5307146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2653573) = 8503056 * k + 7960720 := by
    unfold C
    simp [show (2834352 * k + 2653573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7960720) = 4251528 * k + 3980360 := by
    unfold C
    simp [show (8503056 * k + 7960720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3980360) = 2125764 * k + 1990180 := by
    unfold C
    simp [show (4251528 * k + 3980360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1990180) = 1062882 * k + 995090 := by
    unfold C
    simp [show (2125764 * k + 1990180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 995090) = 531441 * k + 497545 := by
    unfold C
    simp [show (1062882 * k + 995090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 981695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 981695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_982127 : ∀ k : Nat,
    iterate (1048576 * k + 982127) 32 = 531441 * k + 497764 ∧
      531441 * k + 497764 < 1048576 * k + 982127 := by
  intro k
  have h1 : C (1048576 * k + 982127) = 3145728 * k + 2946382 := by
    unfold C
    simp [show (1048576 * k + 982127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2946382) = 1572864 * k + 1473191 := by
    unfold C
    simp [show (3145728 * k + 2946382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1473191) = 4718592 * k + 4419574 := by
    unfold C
    simp [show (1572864 * k + 1473191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4419574) = 2359296 * k + 2209787 := by
    unfold C
    simp [show (4718592 * k + 4419574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2209787) = 7077888 * k + 6629362 := by
    unfold C
    simp [show (2359296 * k + 2209787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6629362) = 3538944 * k + 3314681 := by
    unfold C
    simp [show (7077888 * k + 6629362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3314681) = 10616832 * k + 9944044 := by
    unfold C
    simp [show (3538944 * k + 3314681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9944044) = 5308416 * k + 4972022 := by
    unfold C
    simp [show (10616832 * k + 9944044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4972022) = 2654208 * k + 2486011 := by
    unfold C
    simp [show (5308416 * k + 4972022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2486011) = 7962624 * k + 7458034 := by
    unfold C
    simp [show (2654208 * k + 2486011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7458034) = 3981312 * k + 3729017 := by
    unfold C
    simp [show (7962624 * k + 7458034) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3729017) = 11943936 * k + 11187052 := by
    unfold C
    simp [show (3981312 * k + 3729017) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11187052) = 5971968 * k + 5593526 := by
    unfold C
    simp [show (11943936 * k + 11187052) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5593526) = 2985984 * k + 2796763 := by
    unfold C
    simp [show (5971968 * k + 5593526) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2796763) = 8957952 * k + 8390290 := by
    unfold C
    simp [show (2985984 * k + 2796763) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8390290) = 4478976 * k + 4195145 := by
    unfold C
    simp [show (8957952 * k + 8390290) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4195145) = 13436928 * k + 12585436 := by
    unfold C
    simp [show (4478976 * k + 4195145) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12585436) = 6718464 * k + 6292718 := by
    unfold C
    simp [show (13436928 * k + 12585436) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6292718) = 3359232 * k + 3146359 := by
    unfold C
    simp [show (6718464 * k + 6292718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3146359) = 10077696 * k + 9439078 := by
    unfold C
    simp [show (3359232 * k + 3146359) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9439078) = 5038848 * k + 4719539 := by
    unfold C
    simp [show (10077696 * k + 9439078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4719539) = 15116544 * k + 14158618 := by
    unfold C
    simp [show (5038848 * k + 4719539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14158618) = 7558272 * k + 7079309 := by
    unfold C
    simp [show (15116544 * k + 14158618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7079309) = 22674816 * k + 21237928 := by
    unfold C
    simp [show (7558272 * k + 7079309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21237928) = 11337408 * k + 10618964 := by
    unfold C
    simp [show (22674816 * k + 21237928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10618964) = 5668704 * k + 5309482 := by
    unfold C
    simp [show (11337408 * k + 10618964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5309482) = 2834352 * k + 2654741 := by
    unfold C
    simp [show (5668704 * k + 5309482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2654741) = 8503056 * k + 7964224 := by
    unfold C
    simp [show (2834352 * k + 2654741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7964224) = 4251528 * k + 3982112 := by
    unfold C
    simp [show (8503056 * k + 7964224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3982112) = 2125764 * k + 1991056 := by
    unfold C
    simp [show (4251528 * k + 3982112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1991056) = 1062882 * k + 995528 := by
    unfold C
    simp [show (2125764 * k + 1991056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 995528) = 531441 * k + 497764 := by
    unfold C
    simp [show (1062882 * k + 995528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 982127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 982127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_983111 : ∀ k : Nat,
    iterate (1048576 * k + 983111) 32 = 531441 * k + 498263 ∧
      531441 * k + 498263 < 1048576 * k + 983111 := by
  intro k
  have h1 : C (1048576 * k + 983111) = 3145728 * k + 2949334 := by
    unfold C
    simp [show (1048576 * k + 983111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2949334) = 1572864 * k + 1474667 := by
    unfold C
    simp [show (3145728 * k + 2949334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1474667) = 4718592 * k + 4424002 := by
    unfold C
    simp [show (1572864 * k + 1474667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4424002) = 2359296 * k + 2212001 := by
    unfold C
    simp [show (4718592 * k + 4424002) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2212001) = 7077888 * k + 6636004 := by
    unfold C
    simp [show (2359296 * k + 2212001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6636004) = 3538944 * k + 3318002 := by
    unfold C
    simp [show (7077888 * k + 6636004) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3318002) = 1769472 * k + 1659001 := by
    unfold C
    simp [show (3538944 * k + 3318002) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1659001) = 5308416 * k + 4977004 := by
    unfold C
    simp [show (1769472 * k + 1659001) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4977004) = 2654208 * k + 2488502 := by
    unfold C
    simp [show (5308416 * k + 4977004) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2488502) = 1327104 * k + 1244251 := by
    unfold C
    simp [show (2654208 * k + 2488502) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1244251) = 3981312 * k + 3732754 := by
    unfold C
    simp [show (1327104 * k + 1244251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3732754) = 1990656 * k + 1866377 := by
    unfold C
    simp [show (3981312 * k + 3732754) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1866377) = 5971968 * k + 5599132 := by
    unfold C
    simp [show (1990656 * k + 1866377) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5599132) = 2985984 * k + 2799566 := by
    unfold C
    simp [show (5971968 * k + 5599132) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2799566) = 1492992 * k + 1399783 := by
    unfold C
    simp [show (2985984 * k + 2799566) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1399783) = 4478976 * k + 4199350 := by
    unfold C
    simp [show (1492992 * k + 1399783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4199350) = 2239488 * k + 2099675 := by
    unfold C
    simp [show (4478976 * k + 4199350) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2099675) = 6718464 * k + 6299026 := by
    unfold C
    simp [show (2239488 * k + 2099675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6299026) = 3359232 * k + 3149513 := by
    unfold C
    simp [show (6718464 * k + 6299026) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3149513) = 10077696 * k + 9448540 := by
    unfold C
    simp [show (3359232 * k + 3149513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9448540) = 5038848 * k + 4724270 := by
    unfold C
    simp [show (10077696 * k + 9448540) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4724270) = 2519424 * k + 2362135 := by
    unfold C
    simp [show (5038848 * k + 4724270) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2362135) = 7558272 * k + 7086406 := by
    unfold C
    simp [show (2519424 * k + 2362135) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7086406) = 3779136 * k + 3543203 := by
    unfold C
    simp [show (7558272 * k + 7086406) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3543203) = 11337408 * k + 10629610 := by
    unfold C
    simp [show (3779136 * k + 3543203) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10629610) = 5668704 * k + 5314805 := by
    unfold C
    simp [show (11337408 * k + 10629610) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5314805) = 17006112 * k + 15944416 := by
    unfold C
    simp [show (5668704 * k + 5314805) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15944416) = 8503056 * k + 7972208 := by
    unfold C
    simp [show (17006112 * k + 15944416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7972208) = 4251528 * k + 3986104 := by
    unfold C
    simp [show (8503056 * k + 7972208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3986104) = 2125764 * k + 1993052 := by
    unfold C
    simp [show (4251528 * k + 3986104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1993052) = 1062882 * k + 996526 := by
    unfold C
    simp [show (2125764 * k + 1993052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 996526) = 531441 * k + 498263 := by
    unfold C
    simp [show (1062882 * k + 996526) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 983111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 983111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_983803 : ∀ k : Nat,
    iterate (1048576 * k + 983803) 32 = 531441 * k + 498614 ∧
      531441 * k + 498614 < 1048576 * k + 983803 := by
  intro k
  have h1 : C (1048576 * k + 983803) = 3145728 * k + 2951410 := by
    unfold C
    simp [show (1048576 * k + 983803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2951410) = 1572864 * k + 1475705 := by
    unfold C
    simp [show (3145728 * k + 2951410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1475705) = 4718592 * k + 4427116 := by
    unfold C
    simp [show (1572864 * k + 1475705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4427116) = 2359296 * k + 2213558 := by
    unfold C
    simp [show (4718592 * k + 4427116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2213558) = 1179648 * k + 1106779 := by
    unfold C
    simp [show (2359296 * k + 2213558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1106779) = 3538944 * k + 3320338 := by
    unfold C
    simp [show (1179648 * k + 1106779) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3320338) = 1769472 * k + 1660169 := by
    unfold C
    simp [show (3538944 * k + 3320338) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1660169) = 5308416 * k + 4980508 := by
    unfold C
    simp [show (1769472 * k + 1660169) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4980508) = 2654208 * k + 2490254 := by
    unfold C
    simp [show (5308416 * k + 4980508) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2490254) = 1327104 * k + 1245127 := by
    unfold C
    simp [show (2654208 * k + 2490254) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1245127) = 3981312 * k + 3735382 := by
    unfold C
    simp [show (1327104 * k + 1245127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3735382) = 1990656 * k + 1867691 := by
    unfold C
    simp [show (3981312 * k + 3735382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1867691) = 5971968 * k + 5603074 := by
    unfold C
    simp [show (1990656 * k + 1867691) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5603074) = 2985984 * k + 2801537 := by
    unfold C
    simp [show (5971968 * k + 5603074) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2801537) = 8957952 * k + 8404612 := by
    unfold C
    simp [show (2985984 * k + 2801537) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8404612) = 4478976 * k + 4202306 := by
    unfold C
    simp [show (8957952 * k + 8404612) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4202306) = 2239488 * k + 2101153 := by
    unfold C
    simp [show (4478976 * k + 4202306) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2101153) = 6718464 * k + 6303460 := by
    unfold C
    simp [show (2239488 * k + 2101153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6303460) = 3359232 * k + 3151730 := by
    unfold C
    simp [show (6718464 * k + 6303460) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3151730) = 1679616 * k + 1575865 := by
    unfold C
    simp [show (3359232 * k + 3151730) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1575865) = 5038848 * k + 4727596 := by
    unfold C
    simp [show (1679616 * k + 1575865) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4727596) = 2519424 * k + 2363798 := by
    unfold C
    simp [show (5038848 * k + 4727596) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2363798) = 1259712 * k + 1181899 := by
    unfold C
    simp [show (2519424 * k + 2363798) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1181899) = 3779136 * k + 3545698 := by
    unfold C
    simp [show (1259712 * k + 1181899) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3545698) = 1889568 * k + 1772849 := by
    unfold C
    simp [show (3779136 * k + 3545698) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1772849) = 5668704 * k + 5318548 := by
    unfold C
    simp [show (1889568 * k + 1772849) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5318548) = 2834352 * k + 2659274 := by
    unfold C
    simp [show (5668704 * k + 5318548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2659274) = 1417176 * k + 1329637 := by
    unfold C
    simp [show (2834352 * k + 2659274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1329637) = 4251528 * k + 3988912 := by
    unfold C
    simp [show (1417176 * k + 1329637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3988912) = 2125764 * k + 1994456 := by
    unfold C
    simp [show (4251528 * k + 3988912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1994456) = 1062882 * k + 997228 := by
    unfold C
    simp [show (2125764 * k + 1994456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 997228) = 531441 * k + 498614 := by
    unfold C
    simp [show (1062882 * k + 997228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 983803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 983803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_984063 : ∀ k : Nat,
    iterate (1048576 * k + 984063) 32 = 531441 * k + 498745 ∧
      531441 * k + 498745 < 1048576 * k + 984063 := by
  intro k
  have h1 : C (1048576 * k + 984063) = 3145728 * k + 2952190 := by
    unfold C
    simp [show (1048576 * k + 984063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2952190) = 1572864 * k + 1476095 := by
    unfold C
    simp [show (3145728 * k + 2952190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1476095) = 4718592 * k + 4428286 := by
    unfold C
    simp [show (1572864 * k + 1476095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4428286) = 2359296 * k + 2214143 := by
    unfold C
    simp [show (4718592 * k + 4428286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2214143) = 7077888 * k + 6642430 := by
    unfold C
    simp [show (2359296 * k + 2214143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6642430) = 3538944 * k + 3321215 := by
    unfold C
    simp [show (7077888 * k + 6642430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3321215) = 10616832 * k + 9963646 := by
    unfold C
    simp [show (3538944 * k + 3321215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9963646) = 5308416 * k + 4981823 := by
    unfold C
    simp [show (10616832 * k + 9963646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4981823) = 15925248 * k + 14945470 := by
    unfold C
    simp [show (5308416 * k + 4981823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14945470) = 7962624 * k + 7472735 := by
    unfold C
    simp [show (15925248 * k + 14945470) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7472735) = 23887872 * k + 22418206 := by
    unfold C
    simp [show (7962624 * k + 7472735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22418206) = 11943936 * k + 11209103 := by
    unfold C
    simp [show (23887872 * k + 22418206) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11209103) = 35831808 * k + 33627310 := by
    unfold C
    simp [show (11943936 * k + 11209103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33627310) = 17915904 * k + 16813655 := by
    unfold C
    simp [show (35831808 * k + 33627310) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16813655) = 53747712 * k + 50440966 := by
    unfold C
    simp [show (17915904 * k + 16813655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50440966) = 26873856 * k + 25220483 := by
    unfold C
    simp [show (53747712 * k + 50440966) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25220483) = 80621568 * k + 75661450 := by
    unfold C
    simp [show (26873856 * k + 25220483) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 75661450) = 40310784 * k + 37830725 := by
    unfold C
    simp [show (80621568 * k + 75661450) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 37830725) = 120932352 * k + 113492176 := by
    unfold C
    simp [show (40310784 * k + 37830725) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 113492176) = 60466176 * k + 56746088 := by
    unfold C
    simp [show (120932352 * k + 113492176) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 56746088) = 30233088 * k + 28373044 := by
    unfold C
    simp [show (60466176 * k + 56746088) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28373044) = 15116544 * k + 14186522 := by
    unfold C
    simp [show (30233088 * k + 28373044) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14186522) = 7558272 * k + 7093261 := by
    unfold C
    simp [show (15116544 * k + 14186522) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7093261) = 22674816 * k + 21279784 := by
    unfold C
    simp [show (7558272 * k + 7093261) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21279784) = 11337408 * k + 10639892 := by
    unfold C
    simp [show (22674816 * k + 21279784) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10639892) = 5668704 * k + 5319946 := by
    unfold C
    simp [show (11337408 * k + 10639892) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5319946) = 2834352 * k + 2659973 := by
    unfold C
    simp [show (5668704 * k + 5319946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2659973) = 8503056 * k + 7979920 := by
    unfold C
    simp [show (2834352 * k + 2659973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7979920) = 4251528 * k + 3989960 := by
    unfold C
    simp [show (8503056 * k + 7979920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3989960) = 2125764 * k + 1994980 := by
    unfold C
    simp [show (4251528 * k + 3989960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1994980) = 1062882 * k + 997490 := by
    unfold C
    simp [show (2125764 * k + 1994980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 997490) = 531441 * k + 498745 := by
    unfold C
    simp [show (1062882 * k + 997490) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 984063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 984063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_984295 : ∀ k : Nat,
    iterate (1048576 * k + 984295) 32 = 531441 * k + 498863 ∧
      531441 * k + 498863 < 1048576 * k + 984295 := by
  intro k
  have h1 : C (1048576 * k + 984295) = 3145728 * k + 2952886 := by
    unfold C
    simp [show (1048576 * k + 984295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2952886) = 1572864 * k + 1476443 := by
    unfold C
    simp [show (3145728 * k + 2952886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1476443) = 4718592 * k + 4429330 := by
    unfold C
    simp [show (1572864 * k + 1476443) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4429330) = 2359296 * k + 2214665 := by
    unfold C
    simp [show (4718592 * k + 4429330) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2214665) = 7077888 * k + 6643996 := by
    unfold C
    simp [show (2359296 * k + 2214665) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6643996) = 3538944 * k + 3321998 := by
    unfold C
    simp [show (7077888 * k + 6643996) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3321998) = 1769472 * k + 1660999 := by
    unfold C
    simp [show (3538944 * k + 3321998) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1660999) = 5308416 * k + 4982998 := by
    unfold C
    simp [show (1769472 * k + 1660999) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4982998) = 2654208 * k + 2491499 := by
    unfold C
    simp [show (5308416 * k + 4982998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2491499) = 7962624 * k + 7474498 := by
    unfold C
    simp [show (2654208 * k + 2491499) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7474498) = 3981312 * k + 3737249 := by
    unfold C
    simp [show (7962624 * k + 7474498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3737249) = 11943936 * k + 11211748 := by
    unfold C
    simp [show (3981312 * k + 3737249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11211748) = 5971968 * k + 5605874 := by
    unfold C
    simp [show (11943936 * k + 11211748) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5605874) = 2985984 * k + 2802937 := by
    unfold C
    simp [show (5971968 * k + 5605874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2802937) = 8957952 * k + 8408812 := by
    unfold C
    simp [show (2985984 * k + 2802937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8408812) = 4478976 * k + 4204406 := by
    unfold C
    simp [show (8957952 * k + 8408812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4204406) = 2239488 * k + 2102203 := by
    unfold C
    simp [show (4478976 * k + 4204406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2102203) = 6718464 * k + 6306610 := by
    unfold C
    simp [show (2239488 * k + 2102203) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6306610) = 3359232 * k + 3153305 := by
    unfold C
    simp [show (6718464 * k + 6306610) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3153305) = 10077696 * k + 9459916 := by
    unfold C
    simp [show (3359232 * k + 3153305) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9459916) = 5038848 * k + 4729958 := by
    unfold C
    simp [show (10077696 * k + 9459916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4729958) = 2519424 * k + 2364979 := by
    unfold C
    simp [show (5038848 * k + 4729958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2364979) = 7558272 * k + 7094938 := by
    unfold C
    simp [show (2519424 * k + 2364979) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7094938) = 3779136 * k + 3547469 := by
    unfold C
    simp [show (7558272 * k + 7094938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3547469) = 11337408 * k + 10642408 := by
    unfold C
    simp [show (3779136 * k + 3547469) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10642408) = 5668704 * k + 5321204 := by
    unfold C
    simp [show (11337408 * k + 10642408) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5321204) = 2834352 * k + 2660602 := by
    unfold C
    simp [show (5668704 * k + 5321204) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2660602) = 1417176 * k + 1330301 := by
    unfold C
    simp [show (2834352 * k + 2660602) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1330301) = 4251528 * k + 3990904 := by
    unfold C
    simp [show (1417176 * k + 1330301) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3990904) = 2125764 * k + 1995452 := by
    unfold C
    simp [show (4251528 * k + 3990904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1995452) = 1062882 * k + 997726 := by
    unfold C
    simp [show (2125764 * k + 1995452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 997726) = 531441 * k + 498863 := by
    unfold C
    simp [show (1062882 * k + 997726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 984295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 984295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_984479 : ∀ k : Nat,
    iterate (1048576 * k + 984479) 32 = 531441 * k + 498956 ∧
      531441 * k + 498956 < 1048576 * k + 984479 := by
  intro k
  have h1 : C (1048576 * k + 984479) = 3145728 * k + 2953438 := by
    unfold C
    simp [show (1048576 * k + 984479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2953438) = 1572864 * k + 1476719 := by
    unfold C
    simp [show (3145728 * k + 2953438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1476719) = 4718592 * k + 4430158 := by
    unfold C
    simp [show (1572864 * k + 1476719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4430158) = 2359296 * k + 2215079 := by
    unfold C
    simp [show (4718592 * k + 4430158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2215079) = 7077888 * k + 6645238 := by
    unfold C
    simp [show (2359296 * k + 2215079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6645238) = 3538944 * k + 3322619 := by
    unfold C
    simp [show (7077888 * k + 6645238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3322619) = 10616832 * k + 9967858 := by
    unfold C
    simp [show (3538944 * k + 3322619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9967858) = 5308416 * k + 4983929 := by
    unfold C
    simp [show (10616832 * k + 9967858) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4983929) = 15925248 * k + 14951788 := by
    unfold C
    simp [show (5308416 * k + 4983929) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14951788) = 7962624 * k + 7475894 := by
    unfold C
    simp [show (15925248 * k + 14951788) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7475894) = 3981312 * k + 3737947 := by
    unfold C
    simp [show (7962624 * k + 7475894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3737947) = 11943936 * k + 11213842 := by
    unfold C
    simp [show (3981312 * k + 3737947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11213842) = 5971968 * k + 5606921 := by
    unfold C
    simp [show (11943936 * k + 11213842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5606921) = 17915904 * k + 16820764 := by
    unfold C
    simp [show (5971968 * k + 5606921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16820764) = 8957952 * k + 8410382 := by
    unfold C
    simp [show (17915904 * k + 16820764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8410382) = 4478976 * k + 4205191 := by
    unfold C
    simp [show (8957952 * k + 8410382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4205191) = 13436928 * k + 12615574 := by
    unfold C
    simp [show (4478976 * k + 4205191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12615574) = 6718464 * k + 6307787 := by
    unfold C
    simp [show (13436928 * k + 12615574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6307787) = 20155392 * k + 18923362 := by
    unfold C
    simp [show (6718464 * k + 6307787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18923362) = 10077696 * k + 9461681 := by
    unfold C
    simp [show (20155392 * k + 18923362) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9461681) = 30233088 * k + 28385044 := by
    unfold C
    simp [show (10077696 * k + 9461681) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28385044) = 15116544 * k + 14192522 := by
    unfold C
    simp [show (30233088 * k + 28385044) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14192522) = 7558272 * k + 7096261 := by
    unfold C
    simp [show (15116544 * k + 14192522) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7096261) = 22674816 * k + 21288784 := by
    unfold C
    simp [show (7558272 * k + 7096261) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21288784) = 11337408 * k + 10644392 := by
    unfold C
    simp [show (22674816 * k + 21288784) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10644392) = 5668704 * k + 5322196 := by
    unfold C
    simp [show (11337408 * k + 10644392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5322196) = 2834352 * k + 2661098 := by
    unfold C
    simp [show (5668704 * k + 5322196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2661098) = 1417176 * k + 1330549 := by
    unfold C
    simp [show (2834352 * k + 2661098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1330549) = 4251528 * k + 3991648 := by
    unfold C
    simp [show (1417176 * k + 1330549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3991648) = 2125764 * k + 1995824 := by
    unfold C
    simp [show (4251528 * k + 3991648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1995824) = 1062882 * k + 997912 := by
    unfold C
    simp [show (2125764 * k + 1995824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 997912) = 531441 * k + 498956 := by
    unfold C
    simp [show (1062882 * k + 997912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 984479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 984479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_984731 : ∀ k : Nat,
    iterate (1048576 * k + 984731) 32 = 531441 * k + 499084 ∧
      531441 * k + 499084 < 1048576 * k + 984731 := by
  intro k
  have h1 : C (1048576 * k + 984731) = 3145728 * k + 2954194 := by
    unfold C
    simp [show (1048576 * k + 984731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2954194) = 1572864 * k + 1477097 := by
    unfold C
    simp [show (3145728 * k + 2954194) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1477097) = 4718592 * k + 4431292 := by
    unfold C
    simp [show (1572864 * k + 1477097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4431292) = 2359296 * k + 2215646 := by
    unfold C
    simp [show (4718592 * k + 4431292) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2215646) = 1179648 * k + 1107823 := by
    unfold C
    simp [show (2359296 * k + 2215646) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1107823) = 3538944 * k + 3323470 := by
    unfold C
    simp [show (1179648 * k + 1107823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3323470) = 1769472 * k + 1661735 := by
    unfold C
    simp [show (3538944 * k + 3323470) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1661735) = 5308416 * k + 4985206 := by
    unfold C
    simp [show (1769472 * k + 1661735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4985206) = 2654208 * k + 2492603 := by
    unfold C
    simp [show (5308416 * k + 4985206) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2492603) = 7962624 * k + 7477810 := by
    unfold C
    simp [show (2654208 * k + 2492603) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7477810) = 3981312 * k + 3738905 := by
    unfold C
    simp [show (7962624 * k + 7477810) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3738905) = 11943936 * k + 11216716 := by
    unfold C
    simp [show (3981312 * k + 3738905) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11216716) = 5971968 * k + 5608358 := by
    unfold C
    simp [show (11943936 * k + 11216716) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5608358) = 2985984 * k + 2804179 := by
    unfold C
    simp [show (5971968 * k + 5608358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2804179) = 8957952 * k + 8412538 := by
    unfold C
    simp [show (2985984 * k + 2804179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8412538) = 4478976 * k + 4206269 := by
    unfold C
    simp [show (8957952 * k + 8412538) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4206269) = 13436928 * k + 12618808 := by
    unfold C
    simp [show (4478976 * k + 4206269) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12618808) = 6718464 * k + 6309404 := by
    unfold C
    simp [show (13436928 * k + 12618808) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6309404) = 3359232 * k + 3154702 := by
    unfold C
    simp [show (6718464 * k + 6309404) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3154702) = 1679616 * k + 1577351 := by
    unfold C
    simp [show (3359232 * k + 3154702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1577351) = 5038848 * k + 4732054 := by
    unfold C
    simp [show (1679616 * k + 1577351) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4732054) = 2519424 * k + 2366027 := by
    unfold C
    simp [show (5038848 * k + 4732054) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2366027) = 7558272 * k + 7098082 := by
    unfold C
    simp [show (2519424 * k + 2366027) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7098082) = 3779136 * k + 3549041 := by
    unfold C
    simp [show (7558272 * k + 7098082) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3549041) = 11337408 * k + 10647124 := by
    unfold C
    simp [show (3779136 * k + 3549041) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10647124) = 5668704 * k + 5323562 := by
    unfold C
    simp [show (11337408 * k + 10647124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5323562) = 2834352 * k + 2661781 := by
    unfold C
    simp [show (5668704 * k + 5323562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2661781) = 8503056 * k + 7985344 := by
    unfold C
    simp [show (2834352 * k + 2661781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7985344) = 4251528 * k + 3992672 := by
    unfold C
    simp [show (8503056 * k + 7985344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3992672) = 2125764 * k + 1996336 := by
    unfold C
    simp [show (4251528 * k + 3992672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1996336) = 1062882 * k + 998168 := by
    unfold C
    simp [show (2125764 * k + 1996336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 998168) = 531441 * k + 499084 := by
    unfold C
    simp [show (1062882 * k + 998168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 984731) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 984731)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_985199 : ∀ k : Nat,
    iterate (1048576 * k + 985199) 32 = 531441 * k + 499321 ∧
      531441 * k + 499321 < 1048576 * k + 985199 := by
  intro k
  have h1 : C (1048576 * k + 985199) = 3145728 * k + 2955598 := by
    unfold C
    simp [show (1048576 * k + 985199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2955598) = 1572864 * k + 1477799 := by
    unfold C
    simp [show (3145728 * k + 2955598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1477799) = 4718592 * k + 4433398 := by
    unfold C
    simp [show (1572864 * k + 1477799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4433398) = 2359296 * k + 2216699 := by
    unfold C
    simp [show (4718592 * k + 4433398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2216699) = 7077888 * k + 6650098 := by
    unfold C
    simp [show (2359296 * k + 2216699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6650098) = 3538944 * k + 3325049 := by
    unfold C
    simp [show (7077888 * k + 6650098) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3325049) = 10616832 * k + 9975148 := by
    unfold C
    simp [show (3538944 * k + 3325049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9975148) = 5308416 * k + 4987574 := by
    unfold C
    simp [show (10616832 * k + 9975148) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4987574) = 2654208 * k + 2493787 := by
    unfold C
    simp [show (5308416 * k + 4987574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2493787) = 7962624 * k + 7481362 := by
    unfold C
    simp [show (2654208 * k + 2493787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7481362) = 3981312 * k + 3740681 := by
    unfold C
    simp [show (7962624 * k + 7481362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3740681) = 11943936 * k + 11222044 := by
    unfold C
    simp [show (3981312 * k + 3740681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11222044) = 5971968 * k + 5611022 := by
    unfold C
    simp [show (11943936 * k + 11222044) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5611022) = 2985984 * k + 2805511 := by
    unfold C
    simp [show (5971968 * k + 5611022) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2805511) = 8957952 * k + 8416534 := by
    unfold C
    simp [show (2985984 * k + 2805511) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8416534) = 4478976 * k + 4208267 := by
    unfold C
    simp [show (8957952 * k + 8416534) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4208267) = 13436928 * k + 12624802 := by
    unfold C
    simp [show (4478976 * k + 4208267) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12624802) = 6718464 * k + 6312401 := by
    unfold C
    simp [show (13436928 * k + 12624802) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6312401) = 20155392 * k + 18937204 := by
    unfold C
    simp [show (6718464 * k + 6312401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18937204) = 10077696 * k + 9468602 := by
    unfold C
    simp [show (20155392 * k + 18937204) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9468602) = 5038848 * k + 4734301 := by
    unfold C
    simp [show (10077696 * k + 9468602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4734301) = 15116544 * k + 14202904 := by
    unfold C
    simp [show (5038848 * k + 4734301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14202904) = 7558272 * k + 7101452 := by
    unfold C
    simp [show (15116544 * k + 14202904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7101452) = 3779136 * k + 3550726 := by
    unfold C
    simp [show (7558272 * k + 7101452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3550726) = 1889568 * k + 1775363 := by
    unfold C
    simp [show (3779136 * k + 3550726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1775363) = 5668704 * k + 5326090 := by
    unfold C
    simp [show (1889568 * k + 1775363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5326090) = 2834352 * k + 2663045 := by
    unfold C
    simp [show (5668704 * k + 5326090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2663045) = 8503056 * k + 7989136 := by
    unfold C
    simp [show (2834352 * k + 2663045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7989136) = 4251528 * k + 3994568 := by
    unfold C
    simp [show (8503056 * k + 7989136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3994568) = 2125764 * k + 1997284 := by
    unfold C
    simp [show (4251528 * k + 3994568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1997284) = 1062882 * k + 998642 := by
    unfold C
    simp [show (2125764 * k + 1997284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 998642) = 531441 * k + 499321 := by
    unfold C
    simp [show (1062882 * k + 998642) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 985199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 985199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_985295 : ∀ k : Nat,
    iterate (1048576 * k + 985295) 32 = 531441 * k + 499370 ∧
      531441 * k + 499370 < 1048576 * k + 985295 := by
  intro k
  have h1 : C (1048576 * k + 985295) = 3145728 * k + 2955886 := by
    unfold C
    simp [show (1048576 * k + 985295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2955886) = 1572864 * k + 1477943 := by
    unfold C
    simp [show (3145728 * k + 2955886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1477943) = 4718592 * k + 4433830 := by
    unfold C
    simp [show (1572864 * k + 1477943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4433830) = 2359296 * k + 2216915 := by
    unfold C
    simp [show (4718592 * k + 4433830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2216915) = 7077888 * k + 6650746 := by
    unfold C
    simp [show (2359296 * k + 2216915) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6650746) = 3538944 * k + 3325373 := by
    unfold C
    simp [show (7077888 * k + 6650746) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3325373) = 10616832 * k + 9976120 := by
    unfold C
    simp [show (3538944 * k + 3325373) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9976120) = 5308416 * k + 4988060 := by
    unfold C
    simp [show (10616832 * k + 9976120) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4988060) = 2654208 * k + 2494030 := by
    unfold C
    simp [show (5308416 * k + 4988060) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2494030) = 1327104 * k + 1247015 := by
    unfold C
    simp [show (2654208 * k + 2494030) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1247015) = 3981312 * k + 3741046 := by
    unfold C
    simp [show (1327104 * k + 1247015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3741046) = 1990656 * k + 1870523 := by
    unfold C
    simp [show (3981312 * k + 3741046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1870523) = 5971968 * k + 5611570 := by
    unfold C
    simp [show (1990656 * k + 1870523) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5611570) = 2985984 * k + 2805785 := by
    unfold C
    simp [show (5971968 * k + 5611570) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2805785) = 8957952 * k + 8417356 := by
    unfold C
    simp [show (2985984 * k + 2805785) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8417356) = 4478976 * k + 4208678 := by
    unfold C
    simp [show (8957952 * k + 8417356) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4208678) = 2239488 * k + 2104339 := by
    unfold C
    simp [show (4478976 * k + 4208678) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2104339) = 6718464 * k + 6313018 := by
    unfold C
    simp [show (2239488 * k + 2104339) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6313018) = 3359232 * k + 3156509 := by
    unfold C
    simp [show (6718464 * k + 6313018) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3156509) = 10077696 * k + 9469528 := by
    unfold C
    simp [show (3359232 * k + 3156509) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9469528) = 5038848 * k + 4734764 := by
    unfold C
    simp [show (10077696 * k + 9469528) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4734764) = 2519424 * k + 2367382 := by
    unfold C
    simp [show (5038848 * k + 4734764) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2367382) = 1259712 * k + 1183691 := by
    unfold C
    simp [show (2519424 * k + 2367382) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1183691) = 3779136 * k + 3551074 := by
    unfold C
    simp [show (1259712 * k + 1183691) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3551074) = 1889568 * k + 1775537 := by
    unfold C
    simp [show (3779136 * k + 3551074) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1775537) = 5668704 * k + 5326612 := by
    unfold C
    simp [show (1889568 * k + 1775537) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5326612) = 2834352 * k + 2663306 := by
    unfold C
    simp [show (5668704 * k + 5326612) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2663306) = 1417176 * k + 1331653 := by
    unfold C
    simp [show (2834352 * k + 2663306) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1331653) = 4251528 * k + 3994960 := by
    unfold C
    simp [show (1417176 * k + 1331653) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3994960) = 2125764 * k + 1997480 := by
    unfold C
    simp [show (4251528 * k + 3994960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1997480) = 1062882 * k + 998740 := by
    unfold C
    simp [show (2125764 * k + 1997480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 998740) = 531441 * k + 499370 := by
    unfold C
    simp [show (1062882 * k + 998740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 985295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 985295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_986223 : ∀ k : Nat,
    iterate (1048576 * k + 986223) 32 = 531441 * k + 499840 ∧
      531441 * k + 499840 < 1048576 * k + 986223 := by
  intro k
  have h1 : C (1048576 * k + 986223) = 3145728 * k + 2958670 := by
    unfold C
    simp [show (1048576 * k + 986223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2958670) = 1572864 * k + 1479335 := by
    unfold C
    simp [show (3145728 * k + 2958670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1479335) = 4718592 * k + 4438006 := by
    unfold C
    simp [show (1572864 * k + 1479335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4438006) = 2359296 * k + 2219003 := by
    unfold C
    simp [show (4718592 * k + 4438006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2219003) = 7077888 * k + 6657010 := by
    unfold C
    simp [show (2359296 * k + 2219003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6657010) = 3538944 * k + 3328505 := by
    unfold C
    simp [show (7077888 * k + 6657010) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3328505) = 10616832 * k + 9985516 := by
    unfold C
    simp [show (3538944 * k + 3328505) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9985516) = 5308416 * k + 4992758 := by
    unfold C
    simp [show (10616832 * k + 9985516) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4992758) = 2654208 * k + 2496379 := by
    unfold C
    simp [show (5308416 * k + 4992758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2496379) = 7962624 * k + 7489138 := by
    unfold C
    simp [show (2654208 * k + 2496379) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7489138) = 3981312 * k + 3744569 := by
    unfold C
    simp [show (7962624 * k + 7489138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3744569) = 11943936 * k + 11233708 := by
    unfold C
    simp [show (3981312 * k + 3744569) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11233708) = 5971968 * k + 5616854 := by
    unfold C
    simp [show (11943936 * k + 11233708) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5616854) = 2985984 * k + 2808427 := by
    unfold C
    simp [show (5971968 * k + 5616854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2808427) = 8957952 * k + 8425282 := by
    unfold C
    simp [show (2985984 * k + 2808427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8425282) = 4478976 * k + 4212641 := by
    unfold C
    simp [show (8957952 * k + 8425282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4212641) = 13436928 * k + 12637924 := by
    unfold C
    simp [show (4478976 * k + 4212641) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12637924) = 6718464 * k + 6318962 := by
    unfold C
    simp [show (13436928 * k + 12637924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6318962) = 3359232 * k + 3159481 := by
    unfold C
    simp [show (6718464 * k + 6318962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3159481) = 10077696 * k + 9478444 := by
    unfold C
    simp [show (3359232 * k + 3159481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9478444) = 5038848 * k + 4739222 := by
    unfold C
    simp [show (10077696 * k + 9478444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4739222) = 2519424 * k + 2369611 := by
    unfold C
    simp [show (5038848 * k + 4739222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2369611) = 7558272 * k + 7108834 := by
    unfold C
    simp [show (2519424 * k + 2369611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7108834) = 3779136 * k + 3554417 := by
    unfold C
    simp [show (7558272 * k + 7108834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3554417) = 11337408 * k + 10663252 := by
    unfold C
    simp [show (3779136 * k + 3554417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10663252) = 5668704 * k + 5331626 := by
    unfold C
    simp [show (11337408 * k + 10663252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5331626) = 2834352 * k + 2665813 := by
    unfold C
    simp [show (5668704 * k + 5331626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2665813) = 8503056 * k + 7997440 := by
    unfold C
    simp [show (2834352 * k + 2665813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7997440) = 4251528 * k + 3998720 := by
    unfold C
    simp [show (8503056 * k + 7997440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3998720) = 2125764 * k + 1999360 := by
    unfold C
    simp [show (4251528 * k + 3998720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1999360) = 1062882 * k + 999680 := by
    unfold C
    simp [show (2125764 * k + 1999360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 999680) = 531441 * k + 499840 := by
    unfold C
    simp [show (1062882 * k + 999680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 986223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 986223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_986319 : ∀ k : Nat,
    iterate (1048576 * k + 986319) 32 = 531441 * k + 499889 ∧
      531441 * k + 499889 < 1048576 * k + 986319 := by
  intro k
  have h1 : C (1048576 * k + 986319) = 3145728 * k + 2958958 := by
    unfold C
    simp [show (1048576 * k + 986319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2958958) = 1572864 * k + 1479479 := by
    unfold C
    simp [show (3145728 * k + 2958958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1479479) = 4718592 * k + 4438438 := by
    unfold C
    simp [show (1572864 * k + 1479479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4438438) = 2359296 * k + 2219219 := by
    unfold C
    simp [show (4718592 * k + 4438438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2219219) = 7077888 * k + 6657658 := by
    unfold C
    simp [show (2359296 * k + 2219219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6657658) = 3538944 * k + 3328829 := by
    unfold C
    simp [show (7077888 * k + 6657658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3328829) = 10616832 * k + 9986488 := by
    unfold C
    simp [show (3538944 * k + 3328829) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9986488) = 5308416 * k + 4993244 := by
    unfold C
    simp [show (10616832 * k + 9986488) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4993244) = 2654208 * k + 2496622 := by
    unfold C
    simp [show (5308416 * k + 4993244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2496622) = 1327104 * k + 1248311 := by
    unfold C
    simp [show (2654208 * k + 2496622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1248311) = 3981312 * k + 3744934 := by
    unfold C
    simp [show (1327104 * k + 1248311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3744934) = 1990656 * k + 1872467 := by
    unfold C
    simp [show (3981312 * k + 3744934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1872467) = 5971968 * k + 5617402 := by
    unfold C
    simp [show (1990656 * k + 1872467) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5617402) = 2985984 * k + 2808701 := by
    unfold C
    simp [show (5971968 * k + 5617402) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2808701) = 8957952 * k + 8426104 := by
    unfold C
    simp [show (2985984 * k + 2808701) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8426104) = 4478976 * k + 4213052 := by
    unfold C
    simp [show (8957952 * k + 8426104) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4213052) = 2239488 * k + 2106526 := by
    unfold C
    simp [show (4478976 * k + 4213052) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2106526) = 1119744 * k + 1053263 := by
    unfold C
    simp [show (2239488 * k + 2106526) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1053263) = 3359232 * k + 3159790 := by
    unfold C
    simp [show (1119744 * k + 1053263) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3159790) = 1679616 * k + 1579895 := by
    unfold C
    simp [show (3359232 * k + 3159790) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1579895) = 5038848 * k + 4739686 := by
    unfold C
    simp [show (1679616 * k + 1579895) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4739686) = 2519424 * k + 2369843 := by
    unfold C
    simp [show (5038848 * k + 4739686) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2369843) = 7558272 * k + 7109530 := by
    unfold C
    simp [show (2519424 * k + 2369843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7109530) = 3779136 * k + 3554765 := by
    unfold C
    simp [show (7558272 * k + 7109530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3554765) = 11337408 * k + 10664296 := by
    unfold C
    simp [show (3779136 * k + 3554765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10664296) = 5668704 * k + 5332148 := by
    unfold C
    simp [show (11337408 * k + 10664296) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5332148) = 2834352 * k + 2666074 := by
    unfold C
    simp [show (5668704 * k + 5332148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2666074) = 1417176 * k + 1333037 := by
    unfold C
    simp [show (2834352 * k + 2666074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1333037) = 4251528 * k + 3999112 := by
    unfold C
    simp [show (1417176 * k + 1333037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3999112) = 2125764 * k + 1999556 := by
    unfold C
    simp [show (4251528 * k + 3999112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1999556) = 1062882 * k + 999778 := by
    unfold C
    simp [show (2125764 * k + 1999556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 999778) = 531441 * k + 499889 := by
    unfold C
    simp [show (1062882 * k + 999778) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 986319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 986319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_986655 : ∀ k : Nat,
    iterate (1048576 * k + 986655) 32 = 531441 * k + 500059 ∧
      531441 * k + 500059 < 1048576 * k + 986655 := by
  intro k
  have h1 : C (1048576 * k + 986655) = 3145728 * k + 2959966 := by
    unfold C
    simp [show (1048576 * k + 986655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2959966) = 1572864 * k + 1479983 := by
    unfold C
    simp [show (3145728 * k + 2959966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1479983) = 4718592 * k + 4439950 := by
    unfold C
    simp [show (1572864 * k + 1479983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4439950) = 2359296 * k + 2219975 := by
    unfold C
    simp [show (4718592 * k + 4439950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2219975) = 7077888 * k + 6659926 := by
    unfold C
    simp [show (2359296 * k + 2219975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6659926) = 3538944 * k + 3329963 := by
    unfold C
    simp [show (7077888 * k + 6659926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3329963) = 10616832 * k + 9989890 := by
    unfold C
    simp [show (3538944 * k + 3329963) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9989890) = 5308416 * k + 4994945 := by
    unfold C
    simp [show (10616832 * k + 9989890) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4994945) = 15925248 * k + 14984836 := by
    unfold C
    simp [show (5308416 * k + 4994945) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14984836) = 7962624 * k + 7492418 := by
    unfold C
    simp [show (15925248 * k + 14984836) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7492418) = 3981312 * k + 3746209 := by
    unfold C
    simp [show (7962624 * k + 7492418) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3746209) = 11943936 * k + 11238628 := by
    unfold C
    simp [show (3981312 * k + 3746209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11238628) = 5971968 * k + 5619314 := by
    unfold C
    simp [show (11943936 * k + 11238628) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5619314) = 2985984 * k + 2809657 := by
    unfold C
    simp [show (5971968 * k + 5619314) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2809657) = 8957952 * k + 8428972 := by
    unfold C
    simp [show (2985984 * k + 2809657) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8428972) = 4478976 * k + 4214486 := by
    unfold C
    simp [show (8957952 * k + 8428972) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4214486) = 2239488 * k + 2107243 := by
    unfold C
    simp [show (4478976 * k + 4214486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2107243) = 6718464 * k + 6321730 := by
    unfold C
    simp [show (2239488 * k + 2107243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6321730) = 3359232 * k + 3160865 := by
    unfold C
    simp [show (6718464 * k + 6321730) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3160865) = 10077696 * k + 9482596 := by
    unfold C
    simp [show (3359232 * k + 3160865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9482596) = 5038848 * k + 4741298 := by
    unfold C
    simp [show (10077696 * k + 9482596) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4741298) = 2519424 * k + 2370649 := by
    unfold C
    simp [show (5038848 * k + 4741298) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2370649) = 7558272 * k + 7111948 := by
    unfold C
    simp [show (2519424 * k + 2370649) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7111948) = 3779136 * k + 3555974 := by
    unfold C
    simp [show (7558272 * k + 7111948) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3555974) = 1889568 * k + 1777987 := by
    unfold C
    simp [show (3779136 * k + 3555974) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1777987) = 5668704 * k + 5333962 := by
    unfold C
    simp [show (1889568 * k + 1777987) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5333962) = 2834352 * k + 2666981 := by
    unfold C
    simp [show (5668704 * k + 5333962) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2666981) = 8503056 * k + 8000944 := by
    unfold C
    simp [show (2834352 * k + 2666981) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8000944) = 4251528 * k + 4000472 := by
    unfold C
    simp [show (8503056 * k + 8000944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4000472) = 2125764 * k + 2000236 := by
    unfold C
    simp [show (4251528 * k + 4000472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2000236) = 1062882 * k + 1000118 := by
    unfold C
    simp [show (2125764 * k + 2000236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1000118) = 531441 * k + 500059 := by
    unfold C
    simp [show (1062882 * k + 1000118) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 986655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 986655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_986815 : ∀ k : Nat,
    iterate (1048576 * k + 986815) 32 = 531441 * k + 500140 ∧
      531441 * k + 500140 < 1048576 * k + 986815 := by
  intro k
  have h1 : C (1048576 * k + 986815) = 3145728 * k + 2960446 := by
    unfold C
    simp [show (1048576 * k + 986815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2960446) = 1572864 * k + 1480223 := by
    unfold C
    simp [show (3145728 * k + 2960446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1480223) = 4718592 * k + 4440670 := by
    unfold C
    simp [show (1572864 * k + 1480223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4440670) = 2359296 * k + 2220335 := by
    unfold C
    simp [show (4718592 * k + 4440670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2220335) = 7077888 * k + 6661006 := by
    unfold C
    simp [show (2359296 * k + 2220335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6661006) = 3538944 * k + 3330503 := by
    unfold C
    simp [show (7077888 * k + 6661006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3330503) = 10616832 * k + 9991510 := by
    unfold C
    simp [show (3538944 * k + 3330503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9991510) = 5308416 * k + 4995755 := by
    unfold C
    simp [show (10616832 * k + 9991510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4995755) = 15925248 * k + 14987266 := by
    unfold C
    simp [show (5308416 * k + 4995755) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14987266) = 7962624 * k + 7493633 := by
    unfold C
    simp [show (15925248 * k + 14987266) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7493633) = 23887872 * k + 22480900 := by
    unfold C
    simp [show (7962624 * k + 7493633) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22480900) = 11943936 * k + 11240450 := by
    unfold C
    simp [show (23887872 * k + 22480900) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11240450) = 5971968 * k + 5620225 := by
    unfold C
    simp [show (11943936 * k + 11240450) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5620225) = 17915904 * k + 16860676 := by
    unfold C
    simp [show (5971968 * k + 5620225) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16860676) = 8957952 * k + 8430338 := by
    unfold C
    simp [show (17915904 * k + 16860676) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8430338) = 4478976 * k + 4215169 := by
    unfold C
    simp [show (8957952 * k + 8430338) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4215169) = 13436928 * k + 12645508 := by
    unfold C
    simp [show (4478976 * k + 4215169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12645508) = 6718464 * k + 6322754 := by
    unfold C
    simp [show (13436928 * k + 12645508) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6322754) = 3359232 * k + 3161377 := by
    unfold C
    simp [show (6718464 * k + 6322754) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3161377) = 10077696 * k + 9484132 := by
    unfold C
    simp [show (3359232 * k + 3161377) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9484132) = 5038848 * k + 4742066 := by
    unfold C
    simp [show (10077696 * k + 9484132) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4742066) = 2519424 * k + 2371033 := by
    unfold C
    simp [show (5038848 * k + 4742066) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2371033) = 7558272 * k + 7113100 := by
    unfold C
    simp [show (2519424 * k + 2371033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7113100) = 3779136 * k + 3556550 := by
    unfold C
    simp [show (7558272 * k + 7113100) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3556550) = 1889568 * k + 1778275 := by
    unfold C
    simp [show (3779136 * k + 3556550) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1778275) = 5668704 * k + 5334826 := by
    unfold C
    simp [show (1889568 * k + 1778275) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5334826) = 2834352 * k + 2667413 := by
    unfold C
    simp [show (5668704 * k + 5334826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2667413) = 8503056 * k + 8002240 := by
    unfold C
    simp [show (2834352 * k + 2667413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8002240) = 4251528 * k + 4001120 := by
    unfold C
    simp [show (8503056 * k + 8002240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4001120) = 2125764 * k + 2000560 := by
    unfold C
    simp [show (4251528 * k + 4001120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2000560) = 1062882 * k + 1000280 := by
    unfold C
    simp [show (2125764 * k + 2000560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1000280) = 531441 * k + 500140 := by
    unfold C
    simp [show (1062882 * k + 1000280) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 986815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 986815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_986911 : ∀ k : Nat,
    iterate (1048576 * k + 986911) 32 = 531441 * k + 500189 ∧
      531441 * k + 500189 < 1048576 * k + 986911 := by
  intro k
  have h1 : C (1048576 * k + 986911) = 3145728 * k + 2960734 := by
    unfold C
    simp [show (1048576 * k + 986911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2960734) = 1572864 * k + 1480367 := by
    unfold C
    simp [show (3145728 * k + 2960734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1480367) = 4718592 * k + 4441102 := by
    unfold C
    simp [show (1572864 * k + 1480367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4441102) = 2359296 * k + 2220551 := by
    unfold C
    simp [show (4718592 * k + 4441102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2220551) = 7077888 * k + 6661654 := by
    unfold C
    simp [show (2359296 * k + 2220551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6661654) = 3538944 * k + 3330827 := by
    unfold C
    simp [show (7077888 * k + 6661654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3330827) = 10616832 * k + 9992482 := by
    unfold C
    simp [show (3538944 * k + 3330827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9992482) = 5308416 * k + 4996241 := by
    unfold C
    simp [show (10616832 * k + 9992482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4996241) = 15925248 * k + 14988724 := by
    unfold C
    simp [show (5308416 * k + 4996241) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14988724) = 7962624 * k + 7494362 := by
    unfold C
    simp [show (15925248 * k + 14988724) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7494362) = 3981312 * k + 3747181 := by
    unfold C
    simp [show (7962624 * k + 7494362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3747181) = 11943936 * k + 11241544 := by
    unfold C
    simp [show (3981312 * k + 3747181) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11241544) = 5971968 * k + 5620772 := by
    unfold C
    simp [show (11943936 * k + 11241544) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5620772) = 2985984 * k + 2810386 := by
    unfold C
    simp [show (5971968 * k + 5620772) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2810386) = 1492992 * k + 1405193 := by
    unfold C
    simp [show (2985984 * k + 2810386) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1405193) = 4478976 * k + 4215580 := by
    unfold C
    simp [show (1492992 * k + 1405193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4215580) = 2239488 * k + 2107790 := by
    unfold C
    simp [show (4478976 * k + 4215580) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2107790) = 1119744 * k + 1053895 := by
    unfold C
    simp [show (2239488 * k + 2107790) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1053895) = 3359232 * k + 3161686 := by
    unfold C
    simp [show (1119744 * k + 1053895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3161686) = 1679616 * k + 1580843 := by
    unfold C
    simp [show (3359232 * k + 3161686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1580843) = 5038848 * k + 4742530 := by
    unfold C
    simp [show (1679616 * k + 1580843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4742530) = 2519424 * k + 2371265 := by
    unfold C
    simp [show (5038848 * k + 4742530) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2371265) = 7558272 * k + 7113796 := by
    unfold C
    simp [show (2519424 * k + 2371265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7113796) = 3779136 * k + 3556898 := by
    unfold C
    simp [show (7558272 * k + 7113796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3556898) = 1889568 * k + 1778449 := by
    unfold C
    simp [show (3779136 * k + 3556898) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1778449) = 5668704 * k + 5335348 := by
    unfold C
    simp [show (1889568 * k + 1778449) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5335348) = 2834352 * k + 2667674 := by
    unfold C
    simp [show (5668704 * k + 5335348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2667674) = 1417176 * k + 1333837 := by
    unfold C
    simp [show (2834352 * k + 2667674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1333837) = 4251528 * k + 4001512 := by
    unfold C
    simp [show (1417176 * k + 1333837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4001512) = 2125764 * k + 2000756 := by
    unfold C
    simp [show (4251528 * k + 4001512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2000756) = 1062882 * k + 1000378 := by
    unfold C
    simp [show (2125764 * k + 2000756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1000378) = 531441 * k + 500189 := by
    unfold C
    simp [show (1062882 * k + 1000378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 986911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 986911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_987207 : ∀ k : Nat,
    iterate (1048576 * k + 987207) 32 = 531441 * k + 500339 ∧
      531441 * k + 500339 < 1048576 * k + 987207 := by
  intro k
  have h1 : C (1048576 * k + 987207) = 3145728 * k + 2961622 := by
    unfold C
    simp [show (1048576 * k + 987207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2961622) = 1572864 * k + 1480811 := by
    unfold C
    simp [show (3145728 * k + 2961622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1480811) = 4718592 * k + 4442434 := by
    unfold C
    simp [show (1572864 * k + 1480811) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4442434) = 2359296 * k + 2221217 := by
    unfold C
    simp [show (4718592 * k + 4442434) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2221217) = 7077888 * k + 6663652 := by
    unfold C
    simp [show (2359296 * k + 2221217) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6663652) = 3538944 * k + 3331826 := by
    unfold C
    simp [show (7077888 * k + 6663652) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3331826) = 1769472 * k + 1665913 := by
    unfold C
    simp [show (3538944 * k + 3331826) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1665913) = 5308416 * k + 4997740 := by
    unfold C
    simp [show (1769472 * k + 1665913) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4997740) = 2654208 * k + 2498870 := by
    unfold C
    simp [show (5308416 * k + 4997740) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2498870) = 1327104 * k + 1249435 := by
    unfold C
    simp [show (2654208 * k + 2498870) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1249435) = 3981312 * k + 3748306 := by
    unfold C
    simp [show (1327104 * k + 1249435) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3748306) = 1990656 * k + 1874153 := by
    unfold C
    simp [show (3981312 * k + 3748306) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1874153) = 5971968 * k + 5622460 := by
    unfold C
    simp [show (1990656 * k + 1874153) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5622460) = 2985984 * k + 2811230 := by
    unfold C
    simp [show (5971968 * k + 5622460) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2811230) = 1492992 * k + 1405615 := by
    unfold C
    simp [show (2985984 * k + 2811230) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1405615) = 4478976 * k + 4216846 := by
    unfold C
    simp [show (1492992 * k + 1405615) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4216846) = 2239488 * k + 2108423 := by
    unfold C
    simp [show (4478976 * k + 4216846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2108423) = 6718464 * k + 6325270 := by
    unfold C
    simp [show (2239488 * k + 2108423) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6325270) = 3359232 * k + 3162635 := by
    unfold C
    simp [show (6718464 * k + 6325270) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3162635) = 10077696 * k + 9487906 := by
    unfold C
    simp [show (3359232 * k + 3162635) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9487906) = 5038848 * k + 4743953 := by
    unfold C
    simp [show (10077696 * k + 9487906) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4743953) = 15116544 * k + 14231860 := by
    unfold C
    simp [show (5038848 * k + 4743953) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14231860) = 7558272 * k + 7115930 := by
    unfold C
    simp [show (15116544 * k + 14231860) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7115930) = 3779136 * k + 3557965 := by
    unfold C
    simp [show (7558272 * k + 7115930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3557965) = 11337408 * k + 10673896 := by
    unfold C
    simp [show (3779136 * k + 3557965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10673896) = 5668704 * k + 5336948 := by
    unfold C
    simp [show (11337408 * k + 10673896) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5336948) = 2834352 * k + 2668474 := by
    unfold C
    simp [show (5668704 * k + 5336948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2668474) = 1417176 * k + 1334237 := by
    unfold C
    simp [show (2834352 * k + 2668474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1334237) = 4251528 * k + 4002712 := by
    unfold C
    simp [show (1417176 * k + 1334237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4002712) = 2125764 * k + 2001356 := by
    unfold C
    simp [show (4251528 * k + 4002712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2001356) = 1062882 * k + 1000678 := by
    unfold C
    simp [show (2125764 * k + 2001356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1000678) = 531441 * k + 500339 := by
    unfold C
    simp [show (1062882 * k + 1000678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 987207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 987207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_987391 : ∀ k : Nat,
    iterate (1048576 * k + 987391) 32 = 531441 * k + 500432 ∧
      531441 * k + 500432 < 1048576 * k + 987391 := by
  intro k
  have h1 : C (1048576 * k + 987391) = 3145728 * k + 2962174 := by
    unfold C
    simp [show (1048576 * k + 987391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2962174) = 1572864 * k + 1481087 := by
    unfold C
    simp [show (3145728 * k + 2962174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1481087) = 4718592 * k + 4443262 := by
    unfold C
    simp [show (1572864 * k + 1481087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4443262) = 2359296 * k + 2221631 := by
    unfold C
    simp [show (4718592 * k + 4443262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2221631) = 7077888 * k + 6664894 := by
    unfold C
    simp [show (2359296 * k + 2221631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6664894) = 3538944 * k + 3332447 := by
    unfold C
    simp [show (7077888 * k + 6664894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3332447) = 10616832 * k + 9997342 := by
    unfold C
    simp [show (3538944 * k + 3332447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9997342) = 5308416 * k + 4998671 := by
    unfold C
    simp [show (10616832 * k + 9997342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4998671) = 15925248 * k + 14996014 := by
    unfold C
    simp [show (5308416 * k + 4998671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14996014) = 7962624 * k + 7498007 := by
    unfold C
    simp [show (15925248 * k + 14996014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7498007) = 23887872 * k + 22494022 := by
    unfold C
    simp [show (7962624 * k + 7498007) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22494022) = 11943936 * k + 11247011 := by
    unfold C
    simp [show (23887872 * k + 22494022) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11247011) = 35831808 * k + 33741034 := by
    unfold C
    simp [show (11943936 * k + 11247011) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33741034) = 17915904 * k + 16870517 := by
    unfold C
    simp [show (35831808 * k + 33741034) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16870517) = 53747712 * k + 50611552 := by
    unfold C
    simp [show (17915904 * k + 16870517) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50611552) = 26873856 * k + 25305776 := by
    unfold C
    simp [show (53747712 * k + 50611552) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25305776) = 13436928 * k + 12652888 := by
    unfold C
    simp [show (26873856 * k + 25305776) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12652888) = 6718464 * k + 6326444 := by
    unfold C
    simp [show (13436928 * k + 12652888) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6326444) = 3359232 * k + 3163222 := by
    unfold C
    simp [show (6718464 * k + 6326444) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3163222) = 1679616 * k + 1581611 := by
    unfold C
    simp [show (3359232 * k + 3163222) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1581611) = 5038848 * k + 4744834 := by
    unfold C
    simp [show (1679616 * k + 1581611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4744834) = 2519424 * k + 2372417 := by
    unfold C
    simp [show (5038848 * k + 4744834) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2372417) = 7558272 * k + 7117252 := by
    unfold C
    simp [show (2519424 * k + 2372417) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7117252) = 3779136 * k + 3558626 := by
    unfold C
    simp [show (7558272 * k + 7117252) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3558626) = 1889568 * k + 1779313 := by
    unfold C
    simp [show (3779136 * k + 3558626) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1779313) = 5668704 * k + 5337940 := by
    unfold C
    simp [show (1889568 * k + 1779313) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5337940) = 2834352 * k + 2668970 := by
    unfold C
    simp [show (5668704 * k + 5337940) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2668970) = 1417176 * k + 1334485 := by
    unfold C
    simp [show (2834352 * k + 2668970) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1334485) = 4251528 * k + 4003456 := by
    unfold C
    simp [show (1417176 * k + 1334485) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4003456) = 2125764 * k + 2001728 := by
    unfold C
    simp [show (4251528 * k + 4003456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2001728) = 1062882 * k + 1000864 := by
    unfold C
    simp [show (2125764 * k + 2001728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1000864) = 531441 * k + 500432 := by
    unfold C
    simp [show (1062882 * k + 1000864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 987391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 987391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_987551 : ∀ k : Nat,
    iterate (1048576 * k + 987551) 32 = 531441 * k + 500513 ∧
      531441 * k + 500513 < 1048576 * k + 987551 := by
  intro k
  have h1 : C (1048576 * k + 987551) = 3145728 * k + 2962654 := by
    unfold C
    simp [show (1048576 * k + 987551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2962654) = 1572864 * k + 1481327 := by
    unfold C
    simp [show (3145728 * k + 2962654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1481327) = 4718592 * k + 4443982 := by
    unfold C
    simp [show (1572864 * k + 1481327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4443982) = 2359296 * k + 2221991 := by
    unfold C
    simp [show (4718592 * k + 4443982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2221991) = 7077888 * k + 6665974 := by
    unfold C
    simp [show (2359296 * k + 2221991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6665974) = 3538944 * k + 3332987 := by
    unfold C
    simp [show (7077888 * k + 6665974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3332987) = 10616832 * k + 9998962 := by
    unfold C
    simp [show (3538944 * k + 3332987) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9998962) = 5308416 * k + 4999481 := by
    unfold C
    simp [show (10616832 * k + 9998962) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4999481) = 15925248 * k + 14998444 := by
    unfold C
    simp [show (5308416 * k + 4999481) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14998444) = 7962624 * k + 7499222 := by
    unfold C
    simp [show (15925248 * k + 14998444) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7499222) = 3981312 * k + 3749611 := by
    unfold C
    simp [show (7962624 * k + 7499222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3749611) = 11943936 * k + 11248834 := by
    unfold C
    simp [show (3981312 * k + 3749611) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11248834) = 5971968 * k + 5624417 := by
    unfold C
    simp [show (11943936 * k + 11248834) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5624417) = 17915904 * k + 16873252 := by
    unfold C
    simp [show (5971968 * k + 5624417) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16873252) = 8957952 * k + 8436626 := by
    unfold C
    simp [show (17915904 * k + 16873252) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8436626) = 4478976 * k + 4218313 := by
    unfold C
    simp [show (8957952 * k + 8436626) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4218313) = 13436928 * k + 12654940 := by
    unfold C
    simp [show (4478976 * k + 4218313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12654940) = 6718464 * k + 6327470 := by
    unfold C
    simp [show (13436928 * k + 12654940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6327470) = 3359232 * k + 3163735 := by
    unfold C
    simp [show (6718464 * k + 6327470) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3163735) = 10077696 * k + 9491206 := by
    unfold C
    simp [show (3359232 * k + 3163735) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9491206) = 5038848 * k + 4745603 := by
    unfold C
    simp [show (10077696 * k + 9491206) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4745603) = 15116544 * k + 14236810 := by
    unfold C
    simp [show (5038848 * k + 4745603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14236810) = 7558272 * k + 7118405 := by
    unfold C
    simp [show (15116544 * k + 14236810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7118405) = 22674816 * k + 21355216 := by
    unfold C
    simp [show (7558272 * k + 7118405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21355216) = 11337408 * k + 10677608 := by
    unfold C
    simp [show (22674816 * k + 21355216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10677608) = 5668704 * k + 5338804 := by
    unfold C
    simp [show (11337408 * k + 10677608) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5338804) = 2834352 * k + 2669402 := by
    unfold C
    simp [show (5668704 * k + 5338804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2669402) = 1417176 * k + 1334701 := by
    unfold C
    simp [show (2834352 * k + 2669402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1334701) = 4251528 * k + 4004104 := by
    unfold C
    simp [show (1417176 * k + 1334701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4004104) = 2125764 * k + 2002052 := by
    unfold C
    simp [show (4251528 * k + 4004104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2002052) = 1062882 * k + 1001026 := by
    unfold C
    simp [show (2125764 * k + 2002052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1001026) = 531441 * k + 500513 := by
    unfold C
    simp [show (1062882 * k + 1001026) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 987551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 987551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_989031 : ∀ k : Nat,
    iterate (1048576 * k + 989031) 32 = 531441 * k + 501263 ∧
      531441 * k + 501263 < 1048576 * k + 989031 := by
  intro k
  have h1 : C (1048576 * k + 989031) = 3145728 * k + 2967094 := by
    unfold C
    simp [show (1048576 * k + 989031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2967094) = 1572864 * k + 1483547 := by
    unfold C
    simp [show (3145728 * k + 2967094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1483547) = 4718592 * k + 4450642 := by
    unfold C
    simp [show (1572864 * k + 1483547) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4450642) = 2359296 * k + 2225321 := by
    unfold C
    simp [show (4718592 * k + 4450642) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2225321) = 7077888 * k + 6675964 := by
    unfold C
    simp [show (2359296 * k + 2225321) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6675964) = 3538944 * k + 3337982 := by
    unfold C
    simp [show (7077888 * k + 6675964) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3337982) = 1769472 * k + 1668991 := by
    unfold C
    simp [show (3538944 * k + 3337982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1668991) = 5308416 * k + 5006974 := by
    unfold C
    simp [show (1769472 * k + 1668991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5006974) = 2654208 * k + 2503487 := by
    unfold C
    simp [show (5308416 * k + 5006974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2503487) = 7962624 * k + 7510462 := by
    unfold C
    simp [show (2654208 * k + 2503487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7510462) = 3981312 * k + 3755231 := by
    unfold C
    simp [show (7962624 * k + 7510462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3755231) = 11943936 * k + 11265694 := by
    unfold C
    simp [show (3981312 * k + 3755231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11265694) = 5971968 * k + 5632847 := by
    unfold C
    simp [show (11943936 * k + 11265694) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5632847) = 17915904 * k + 16898542 := by
    unfold C
    simp [show (5971968 * k + 5632847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16898542) = 8957952 * k + 8449271 := by
    unfold C
    simp [show (17915904 * k + 16898542) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8449271) = 26873856 * k + 25347814 := by
    unfold C
    simp [show (8957952 * k + 8449271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25347814) = 13436928 * k + 12673907 := by
    unfold C
    simp [show (26873856 * k + 25347814) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12673907) = 40310784 * k + 38021722 := by
    unfold C
    simp [show (13436928 * k + 12673907) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38021722) = 20155392 * k + 19010861 := by
    unfold C
    simp [show (40310784 * k + 38021722) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19010861) = 60466176 * k + 57032584 := by
    unfold C
    simp [show (20155392 * k + 19010861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57032584) = 30233088 * k + 28516292 := by
    unfold C
    simp [show (60466176 * k + 57032584) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28516292) = 15116544 * k + 14258146 := by
    unfold C
    simp [show (30233088 * k + 28516292) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14258146) = 7558272 * k + 7129073 := by
    unfold C
    simp [show (15116544 * k + 14258146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7129073) = 22674816 * k + 21387220 := by
    unfold C
    simp [show (7558272 * k + 7129073) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21387220) = 11337408 * k + 10693610 := by
    unfold C
    simp [show (22674816 * k + 21387220) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10693610) = 5668704 * k + 5346805 := by
    unfold C
    simp [show (11337408 * k + 10693610) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5346805) = 17006112 * k + 16040416 := by
    unfold C
    simp [show (5668704 * k + 5346805) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16040416) = 8503056 * k + 8020208 := by
    unfold C
    simp [show (17006112 * k + 16040416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8020208) = 4251528 * k + 4010104 := by
    unfold C
    simp [show (8503056 * k + 8020208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4010104) = 2125764 * k + 2005052 := by
    unfold C
    simp [show (4251528 * k + 4010104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2005052) = 1062882 * k + 1002526 := by
    unfold C
    simp [show (2125764 * k + 2005052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1002526) = 531441 * k + 501263 := by
    unfold C
    simp [show (1062882 * k + 1002526) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 989031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 989031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_989343 : ∀ k : Nat,
    iterate (1048576 * k + 989343) 32 = 531441 * k + 501421 ∧
      531441 * k + 501421 < 1048576 * k + 989343 := by
  intro k
  have h1 : C (1048576 * k + 989343) = 3145728 * k + 2968030 := by
    unfold C
    simp [show (1048576 * k + 989343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2968030) = 1572864 * k + 1484015 := by
    unfold C
    simp [show (3145728 * k + 2968030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1484015) = 4718592 * k + 4452046 := by
    unfold C
    simp [show (1572864 * k + 1484015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4452046) = 2359296 * k + 2226023 := by
    unfold C
    simp [show (4718592 * k + 4452046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2226023) = 7077888 * k + 6678070 := by
    unfold C
    simp [show (2359296 * k + 2226023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6678070) = 3538944 * k + 3339035 := by
    unfold C
    simp [show (7077888 * k + 6678070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3339035) = 10616832 * k + 10017106 := by
    unfold C
    simp [show (3538944 * k + 3339035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10017106) = 5308416 * k + 5008553 := by
    unfold C
    simp [show (10616832 * k + 10017106) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5008553) = 15925248 * k + 15025660 := by
    unfold C
    simp [show (5308416 * k + 5008553) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15025660) = 7962624 * k + 7512830 := by
    unfold C
    simp [show (15925248 * k + 15025660) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7512830) = 3981312 * k + 3756415 := by
    unfold C
    simp [show (7962624 * k + 7512830) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3756415) = 11943936 * k + 11269246 := by
    unfold C
    simp [show (3981312 * k + 3756415) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11269246) = 5971968 * k + 5634623 := by
    unfold C
    simp [show (11943936 * k + 11269246) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5634623) = 17915904 * k + 16903870 := by
    unfold C
    simp [show (5971968 * k + 5634623) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16903870) = 8957952 * k + 8451935 := by
    unfold C
    simp [show (17915904 * k + 16903870) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8451935) = 26873856 * k + 25355806 := by
    unfold C
    simp [show (8957952 * k + 8451935) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25355806) = 13436928 * k + 12677903 := by
    unfold C
    simp [show (26873856 * k + 25355806) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12677903) = 40310784 * k + 38033710 := by
    unfold C
    simp [show (13436928 * k + 12677903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38033710) = 20155392 * k + 19016855 := by
    unfold C
    simp [show (40310784 * k + 38033710) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19016855) = 60466176 * k + 57050566 := by
    unfold C
    simp [show (20155392 * k + 19016855) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57050566) = 30233088 * k + 28525283 := by
    unfold C
    simp [show (60466176 * k + 57050566) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28525283) = 90699264 * k + 85575850 := by
    unfold C
    simp [show (30233088 * k + 28525283) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 85575850) = 45349632 * k + 42787925 := by
    unfold C
    simp [show (90699264 * k + 85575850) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 42787925) = 136048896 * k + 128363776 := by
    unfold C
    simp [show (45349632 * k + 42787925) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 128363776) = 68024448 * k + 64181888 := by
    unfold C
    simp [show (136048896 * k + 128363776) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 64181888) = 34012224 * k + 32090944 := by
    unfold C
    simp [show (68024448 * k + 64181888) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 32090944) = 17006112 * k + 16045472 := by
    unfold C
    simp [show (34012224 * k + 32090944) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16045472) = 8503056 * k + 8022736 := by
    unfold C
    simp [show (17006112 * k + 16045472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8022736) = 4251528 * k + 4011368 := by
    unfold C
    simp [show (8503056 * k + 8022736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4011368) = 2125764 * k + 2005684 := by
    unfold C
    simp [show (4251528 * k + 4011368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2005684) = 1062882 * k + 1002842 := by
    unfold C
    simp [show (2125764 * k + 2005684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1002842) = 531441 * k + 501421 := by
    unfold C
    simp [show (1062882 * k + 1002842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 989343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 989343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard125
