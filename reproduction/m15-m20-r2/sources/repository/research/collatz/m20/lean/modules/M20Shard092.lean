import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard092

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_709723 : ∀ k : Nat,
    iterate (1048576 * k + 709723) 32 = 531441 * k + 359704 ∧
      531441 * k + 359704 < 1048576 * k + 709723 := by
  intro k
  have h1 : C (1048576 * k + 709723) = 3145728 * k + 2129170 := by
    unfold C
    simp [show (1048576 * k + 709723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2129170) = 1572864 * k + 1064585 := by
    unfold C
    simp [show (3145728 * k + 2129170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1064585) = 4718592 * k + 3193756 := by
    unfold C
    simp [show (1572864 * k + 1064585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3193756) = 2359296 * k + 1596878 := by
    unfold C
    simp [show (4718592 * k + 3193756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1596878) = 1179648 * k + 798439 := by
    unfold C
    simp [show (2359296 * k + 1596878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 798439) = 3538944 * k + 2395318 := by
    unfold C
    simp [show (1179648 * k + 798439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2395318) = 1769472 * k + 1197659 := by
    unfold C
    simp [show (3538944 * k + 2395318) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1197659) = 5308416 * k + 3592978 := by
    unfold C
    simp [show (1769472 * k + 1197659) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3592978) = 2654208 * k + 1796489 := by
    unfold C
    simp [show (5308416 * k + 3592978) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1796489) = 7962624 * k + 5389468 := by
    unfold C
    simp [show (2654208 * k + 1796489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5389468) = 3981312 * k + 2694734 := by
    unfold C
    simp [show (7962624 * k + 5389468) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2694734) = 1990656 * k + 1347367 := by
    unfold C
    simp [show (3981312 * k + 2694734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1347367) = 5971968 * k + 4042102 := by
    unfold C
    simp [show (1990656 * k + 1347367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4042102) = 2985984 * k + 2021051 := by
    unfold C
    simp [show (5971968 * k + 4042102) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2021051) = 8957952 * k + 6063154 := by
    unfold C
    simp [show (2985984 * k + 2021051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6063154) = 4478976 * k + 3031577 := by
    unfold C
    simp [show (8957952 * k + 6063154) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3031577) = 13436928 * k + 9094732 := by
    unfold C
    simp [show (4478976 * k + 3031577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9094732) = 6718464 * k + 4547366 := by
    unfold C
    simp [show (13436928 * k + 9094732) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4547366) = 3359232 * k + 2273683 := by
    unfold C
    simp [show (6718464 * k + 4547366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2273683) = 10077696 * k + 6821050 := by
    unfold C
    simp [show (3359232 * k + 2273683) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6821050) = 5038848 * k + 3410525 := by
    unfold C
    simp [show (10077696 * k + 6821050) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3410525) = 15116544 * k + 10231576 := by
    unfold C
    simp [show (5038848 * k + 3410525) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10231576) = 7558272 * k + 5115788 := by
    unfold C
    simp [show (15116544 * k + 10231576) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5115788) = 3779136 * k + 2557894 := by
    unfold C
    simp [show (7558272 * k + 5115788) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2557894) = 1889568 * k + 1278947 := by
    unfold C
    simp [show (3779136 * k + 2557894) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1278947) = 5668704 * k + 3836842 := by
    unfold C
    simp [show (1889568 * k + 1278947) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3836842) = 2834352 * k + 1918421 := by
    unfold C
    simp [show (5668704 * k + 3836842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1918421) = 8503056 * k + 5755264 := by
    unfold C
    simp [show (2834352 * k + 1918421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5755264) = 4251528 * k + 2877632 := by
    unfold C
    simp [show (8503056 * k + 5755264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2877632) = 2125764 * k + 1438816 := by
    unfold C
    simp [show (4251528 * k + 2877632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1438816) = 1062882 * k + 719408 := by
    unfold C
    simp [show (2125764 * k + 1438816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 719408) = 531441 * k + 359704 := by
    unfold C
    simp [show (1062882 * k + 719408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 709723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 709723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_710079 : ∀ k : Nat,
    iterate (1048576 * k + 710079) 32 = 531441 * k + 359884 ∧
      531441 * k + 359884 < 1048576 * k + 710079 := by
  intro k
  have h1 : C (1048576 * k + 710079) = 3145728 * k + 2130238 := by
    unfold C
    simp [show (1048576 * k + 710079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2130238) = 1572864 * k + 1065119 := by
    unfold C
    simp [show (3145728 * k + 2130238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1065119) = 4718592 * k + 3195358 := by
    unfold C
    simp [show (1572864 * k + 1065119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3195358) = 2359296 * k + 1597679 := by
    unfold C
    simp [show (4718592 * k + 3195358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1597679) = 7077888 * k + 4793038 := by
    unfold C
    simp [show (2359296 * k + 1597679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4793038) = 3538944 * k + 2396519 := by
    unfold C
    simp [show (7077888 * k + 4793038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2396519) = 10616832 * k + 7189558 := by
    unfold C
    simp [show (3538944 * k + 2396519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7189558) = 5308416 * k + 3594779 := by
    unfold C
    simp [show (10616832 * k + 7189558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3594779) = 15925248 * k + 10784338 := by
    unfold C
    simp [show (5308416 * k + 3594779) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10784338) = 7962624 * k + 5392169 := by
    unfold C
    simp [show (15925248 * k + 10784338) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5392169) = 23887872 * k + 16176508 := by
    unfold C
    simp [show (7962624 * k + 5392169) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16176508) = 11943936 * k + 8088254 := by
    unfold C
    simp [show (23887872 * k + 16176508) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8088254) = 5971968 * k + 4044127 := by
    unfold C
    simp [show (11943936 * k + 8088254) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4044127) = 17915904 * k + 12132382 := by
    unfold C
    simp [show (5971968 * k + 4044127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12132382) = 8957952 * k + 6066191 := by
    unfold C
    simp [show (17915904 * k + 12132382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6066191) = 26873856 * k + 18198574 := by
    unfold C
    simp [show (8957952 * k + 6066191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18198574) = 13436928 * k + 9099287 := by
    unfold C
    simp [show (26873856 * k + 18198574) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9099287) = 40310784 * k + 27297862 := by
    unfold C
    simp [show (13436928 * k + 9099287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27297862) = 20155392 * k + 13648931 := by
    unfold C
    simp [show (40310784 * k + 27297862) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13648931) = 60466176 * k + 40946794 := by
    unfold C
    simp [show (20155392 * k + 13648931) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 40946794) = 30233088 * k + 20473397 := by
    unfold C
    simp [show (60466176 * k + 40946794) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20473397) = 90699264 * k + 61420192 := by
    unfold C
    simp [show (30233088 * k + 20473397) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 61420192) = 45349632 * k + 30710096 := by
    unfold C
    simp [show (90699264 * k + 61420192) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 30710096) = 22674816 * k + 15355048 := by
    unfold C
    simp [show (45349632 * k + 30710096) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15355048) = 11337408 * k + 7677524 := by
    unfold C
    simp [show (22674816 * k + 15355048) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7677524) = 5668704 * k + 3838762 := by
    unfold C
    simp [show (11337408 * k + 7677524) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3838762) = 2834352 * k + 1919381 := by
    unfold C
    simp [show (5668704 * k + 3838762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1919381) = 8503056 * k + 5758144 := by
    unfold C
    simp [show (2834352 * k + 1919381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5758144) = 4251528 * k + 2879072 := by
    unfold C
    simp [show (8503056 * k + 5758144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2879072) = 2125764 * k + 1439536 := by
    unfold C
    simp [show (4251528 * k + 2879072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1439536) = 1062882 * k + 719768 := by
    unfold C
    simp [show (2125764 * k + 1439536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 719768) = 531441 * k + 359884 := by
    unfold C
    simp [show (1062882 * k + 719768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 710079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 710079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_710907 : ∀ k : Nat,
    iterate (1048576 * k + 710907) 32 = 531441 * k + 360304 ∧
      531441 * k + 360304 < 1048576 * k + 710907 := by
  intro k
  have h1 : C (1048576 * k + 710907) = 3145728 * k + 2132722 := by
    unfold C
    simp [show (1048576 * k + 710907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2132722) = 1572864 * k + 1066361 := by
    unfold C
    simp [show (3145728 * k + 2132722) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1066361) = 4718592 * k + 3199084 := by
    unfold C
    simp [show (1572864 * k + 1066361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3199084) = 2359296 * k + 1599542 := by
    unfold C
    simp [show (4718592 * k + 3199084) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1599542) = 1179648 * k + 799771 := by
    unfold C
    simp [show (2359296 * k + 1599542) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 799771) = 3538944 * k + 2399314 := by
    unfold C
    simp [show (1179648 * k + 799771) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2399314) = 1769472 * k + 1199657 := by
    unfold C
    simp [show (3538944 * k + 2399314) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1199657) = 5308416 * k + 3598972 := by
    unfold C
    simp [show (1769472 * k + 1199657) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3598972) = 2654208 * k + 1799486 := by
    unfold C
    simp [show (5308416 * k + 3598972) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1799486) = 1327104 * k + 899743 := by
    unfold C
    simp [show (2654208 * k + 1799486) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 899743) = 3981312 * k + 2699230 := by
    unfold C
    simp [show (1327104 * k + 899743) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2699230) = 1990656 * k + 1349615 := by
    unfold C
    simp [show (3981312 * k + 2699230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1349615) = 5971968 * k + 4048846 := by
    unfold C
    simp [show (1990656 * k + 1349615) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4048846) = 2985984 * k + 2024423 := by
    unfold C
    simp [show (5971968 * k + 4048846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2024423) = 8957952 * k + 6073270 := by
    unfold C
    simp [show (2985984 * k + 2024423) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6073270) = 4478976 * k + 3036635 := by
    unfold C
    simp [show (8957952 * k + 6073270) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3036635) = 13436928 * k + 9109906 := by
    unfold C
    simp [show (4478976 * k + 3036635) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9109906) = 6718464 * k + 4554953 := by
    unfold C
    simp [show (13436928 * k + 9109906) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4554953) = 20155392 * k + 13664860 := by
    unfold C
    simp [show (6718464 * k + 4554953) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13664860) = 10077696 * k + 6832430 := by
    unfold C
    simp [show (20155392 * k + 13664860) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6832430) = 5038848 * k + 3416215 := by
    unfold C
    simp [show (10077696 * k + 6832430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3416215) = 15116544 * k + 10248646 := by
    unfold C
    simp [show (5038848 * k + 3416215) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10248646) = 7558272 * k + 5124323 := by
    unfold C
    simp [show (15116544 * k + 10248646) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5124323) = 22674816 * k + 15372970 := by
    unfold C
    simp [show (7558272 * k + 5124323) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15372970) = 11337408 * k + 7686485 := by
    unfold C
    simp [show (22674816 * k + 15372970) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7686485) = 34012224 * k + 23059456 := by
    unfold C
    simp [show (11337408 * k + 7686485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 23059456) = 17006112 * k + 11529728 := by
    unfold C
    simp [show (34012224 * k + 23059456) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11529728) = 8503056 * k + 5764864 := by
    unfold C
    simp [show (17006112 * k + 11529728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5764864) = 4251528 * k + 2882432 := by
    unfold C
    simp [show (8503056 * k + 5764864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2882432) = 2125764 * k + 1441216 := by
    unfold C
    simp [show (4251528 * k + 2882432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1441216) = 1062882 * k + 720608 := by
    unfold C
    simp [show (2125764 * k + 1441216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 720608) = 531441 * k + 360304 := by
    unfold C
    simp [show (1062882 * k + 720608) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 710907) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 710907)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_711103 : ∀ k : Nat,
    iterate (1048576 * k + 711103) 32 = 531441 * k + 360403 ∧
      531441 * k + 360403 < 1048576 * k + 711103 := by
  intro k
  have h1 : C (1048576 * k + 711103) = 3145728 * k + 2133310 := by
    unfold C
    simp [show (1048576 * k + 711103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2133310) = 1572864 * k + 1066655 := by
    unfold C
    simp [show (3145728 * k + 2133310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1066655) = 4718592 * k + 3199966 := by
    unfold C
    simp [show (1572864 * k + 1066655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3199966) = 2359296 * k + 1599983 := by
    unfold C
    simp [show (4718592 * k + 3199966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1599983) = 7077888 * k + 4799950 := by
    unfold C
    simp [show (2359296 * k + 1599983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4799950) = 3538944 * k + 2399975 := by
    unfold C
    simp [show (7077888 * k + 4799950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2399975) = 10616832 * k + 7199926 := by
    unfold C
    simp [show (3538944 * k + 2399975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7199926) = 5308416 * k + 3599963 := by
    unfold C
    simp [show (10616832 * k + 7199926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3599963) = 15925248 * k + 10799890 := by
    unfold C
    simp [show (5308416 * k + 3599963) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10799890) = 7962624 * k + 5399945 := by
    unfold C
    simp [show (15925248 * k + 10799890) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5399945) = 23887872 * k + 16199836 := by
    unfold C
    simp [show (7962624 * k + 5399945) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16199836) = 11943936 * k + 8099918 := by
    unfold C
    simp [show (23887872 * k + 16199836) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8099918) = 5971968 * k + 4049959 := by
    unfold C
    simp [show (11943936 * k + 8099918) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4049959) = 17915904 * k + 12149878 := by
    unfold C
    simp [show (5971968 * k + 4049959) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12149878) = 8957952 * k + 6074939 := by
    unfold C
    simp [show (17915904 * k + 12149878) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6074939) = 26873856 * k + 18224818 := by
    unfold C
    simp [show (8957952 * k + 6074939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18224818) = 13436928 * k + 9112409 := by
    unfold C
    simp [show (26873856 * k + 18224818) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9112409) = 40310784 * k + 27337228 := by
    unfold C
    simp [show (13436928 * k + 9112409) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27337228) = 20155392 * k + 13668614 := by
    unfold C
    simp [show (40310784 * k + 27337228) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13668614) = 10077696 * k + 6834307 := by
    unfold C
    simp [show (20155392 * k + 13668614) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6834307) = 30233088 * k + 20502922 := by
    unfold C
    simp [show (10077696 * k + 6834307) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20502922) = 15116544 * k + 10251461 := by
    unfold C
    simp [show (30233088 * k + 20502922) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10251461) = 45349632 * k + 30754384 := by
    unfold C
    simp [show (15116544 * k + 10251461) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30754384) = 22674816 * k + 15377192 := by
    unfold C
    simp [show (45349632 * k + 30754384) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15377192) = 11337408 * k + 7688596 := by
    unfold C
    simp [show (22674816 * k + 15377192) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7688596) = 5668704 * k + 3844298 := by
    unfold C
    simp [show (11337408 * k + 7688596) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3844298) = 2834352 * k + 1922149 := by
    unfold C
    simp [show (5668704 * k + 3844298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1922149) = 8503056 * k + 5766448 := by
    unfold C
    simp [show (2834352 * k + 1922149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5766448) = 4251528 * k + 2883224 := by
    unfold C
    simp [show (8503056 * k + 5766448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2883224) = 2125764 * k + 1441612 := by
    unfold C
    simp [show (4251528 * k + 2883224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1441612) = 1062882 * k + 720806 := by
    unfold C
    simp [show (2125764 * k + 1441612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 720806) = 531441 * k + 360403 := by
    unfold C
    simp [show (1062882 * k + 720806) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 711103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 711103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_711791 : ∀ k : Nat,
    iterate (1048576 * k + 711791) 32 = 531441 * k + 360752 ∧
      531441 * k + 360752 < 1048576 * k + 711791 := by
  intro k
  have h1 : C (1048576 * k + 711791) = 3145728 * k + 2135374 := by
    unfold C
    simp [show (1048576 * k + 711791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2135374) = 1572864 * k + 1067687 := by
    unfold C
    simp [show (3145728 * k + 2135374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1067687) = 4718592 * k + 3203062 := by
    unfold C
    simp [show (1572864 * k + 1067687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3203062) = 2359296 * k + 1601531 := by
    unfold C
    simp [show (4718592 * k + 3203062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1601531) = 7077888 * k + 4804594 := by
    unfold C
    simp [show (2359296 * k + 1601531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4804594) = 3538944 * k + 2402297 := by
    unfold C
    simp [show (7077888 * k + 4804594) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2402297) = 10616832 * k + 7206892 := by
    unfold C
    simp [show (3538944 * k + 2402297) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7206892) = 5308416 * k + 3603446 := by
    unfold C
    simp [show (10616832 * k + 7206892) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3603446) = 2654208 * k + 1801723 := by
    unfold C
    simp [show (5308416 * k + 3603446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1801723) = 7962624 * k + 5405170 := by
    unfold C
    simp [show (2654208 * k + 1801723) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5405170) = 3981312 * k + 2702585 := by
    unfold C
    simp [show (7962624 * k + 5405170) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2702585) = 11943936 * k + 8107756 := by
    unfold C
    simp [show (3981312 * k + 2702585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8107756) = 5971968 * k + 4053878 := by
    unfold C
    simp [show (11943936 * k + 8107756) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4053878) = 2985984 * k + 2026939 := by
    unfold C
    simp [show (5971968 * k + 4053878) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2026939) = 8957952 * k + 6080818 := by
    unfold C
    simp [show (2985984 * k + 2026939) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6080818) = 4478976 * k + 3040409 := by
    unfold C
    simp [show (8957952 * k + 6080818) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3040409) = 13436928 * k + 9121228 := by
    unfold C
    simp [show (4478976 * k + 3040409) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9121228) = 6718464 * k + 4560614 := by
    unfold C
    simp [show (13436928 * k + 9121228) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4560614) = 3359232 * k + 2280307 := by
    unfold C
    simp [show (6718464 * k + 4560614) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2280307) = 10077696 * k + 6840922 := by
    unfold C
    simp [show (3359232 * k + 2280307) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6840922) = 5038848 * k + 3420461 := by
    unfold C
    simp [show (10077696 * k + 6840922) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3420461) = 15116544 * k + 10261384 := by
    unfold C
    simp [show (5038848 * k + 3420461) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10261384) = 7558272 * k + 5130692 := by
    unfold C
    simp [show (15116544 * k + 10261384) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5130692) = 3779136 * k + 2565346 := by
    unfold C
    simp [show (7558272 * k + 5130692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2565346) = 1889568 * k + 1282673 := by
    unfold C
    simp [show (3779136 * k + 2565346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1282673) = 5668704 * k + 3848020 := by
    unfold C
    simp [show (1889568 * k + 1282673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3848020) = 2834352 * k + 1924010 := by
    unfold C
    simp [show (5668704 * k + 3848020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1924010) = 1417176 * k + 962005 := by
    unfold C
    simp [show (2834352 * k + 1924010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 962005) = 4251528 * k + 2886016 := by
    unfold C
    simp [show (1417176 * k + 962005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2886016) = 2125764 * k + 1443008 := by
    unfold C
    simp [show (4251528 * k + 2886016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1443008) = 1062882 * k + 721504 := by
    unfold C
    simp [show (2125764 * k + 1443008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 721504) = 531441 * k + 360752 := by
    unfold C
    simp [show (1062882 * k + 721504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 711791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 711791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_712239 : ∀ k : Nat,
    iterate (1048576 * k + 712239) 32 = 531441 * k + 360979 ∧
      531441 * k + 360979 < 1048576 * k + 712239 := by
  intro k
  have h1 : C (1048576 * k + 712239) = 3145728 * k + 2136718 := by
    unfold C
    simp [show (1048576 * k + 712239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2136718) = 1572864 * k + 1068359 := by
    unfold C
    simp [show (3145728 * k + 2136718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1068359) = 4718592 * k + 3205078 := by
    unfold C
    simp [show (1572864 * k + 1068359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3205078) = 2359296 * k + 1602539 := by
    unfold C
    simp [show (4718592 * k + 3205078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1602539) = 7077888 * k + 4807618 := by
    unfold C
    simp [show (2359296 * k + 1602539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4807618) = 3538944 * k + 2403809 := by
    unfold C
    simp [show (7077888 * k + 4807618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2403809) = 10616832 * k + 7211428 := by
    unfold C
    simp [show (3538944 * k + 2403809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7211428) = 5308416 * k + 3605714 := by
    unfold C
    simp [show (10616832 * k + 7211428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3605714) = 2654208 * k + 1802857 := by
    unfold C
    simp [show (5308416 * k + 3605714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1802857) = 7962624 * k + 5408572 := by
    unfold C
    simp [show (2654208 * k + 1802857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5408572) = 3981312 * k + 2704286 := by
    unfold C
    simp [show (7962624 * k + 5408572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2704286) = 1990656 * k + 1352143 := by
    unfold C
    simp [show (3981312 * k + 2704286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1352143) = 5971968 * k + 4056430 := by
    unfold C
    simp [show (1990656 * k + 1352143) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4056430) = 2985984 * k + 2028215 := by
    unfold C
    simp [show (5971968 * k + 4056430) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2028215) = 8957952 * k + 6084646 := by
    unfold C
    simp [show (2985984 * k + 2028215) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6084646) = 4478976 * k + 3042323 := by
    unfold C
    simp [show (8957952 * k + 6084646) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3042323) = 13436928 * k + 9126970 := by
    unfold C
    simp [show (4478976 * k + 3042323) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9126970) = 6718464 * k + 4563485 := by
    unfold C
    simp [show (13436928 * k + 9126970) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4563485) = 20155392 * k + 13690456 := by
    unfold C
    simp [show (6718464 * k + 4563485) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13690456) = 10077696 * k + 6845228 := by
    unfold C
    simp [show (20155392 * k + 13690456) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6845228) = 5038848 * k + 3422614 := by
    unfold C
    simp [show (10077696 * k + 6845228) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3422614) = 2519424 * k + 1711307 := by
    unfold C
    simp [show (5038848 * k + 3422614) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1711307) = 7558272 * k + 5133922 := by
    unfold C
    simp [show (2519424 * k + 1711307) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5133922) = 3779136 * k + 2566961 := by
    unfold C
    simp [show (7558272 * k + 5133922) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2566961) = 11337408 * k + 7700884 := by
    unfold C
    simp [show (3779136 * k + 2566961) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7700884) = 5668704 * k + 3850442 := by
    unfold C
    simp [show (11337408 * k + 7700884) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3850442) = 2834352 * k + 1925221 := by
    unfold C
    simp [show (5668704 * k + 3850442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1925221) = 8503056 * k + 5775664 := by
    unfold C
    simp [show (2834352 * k + 1925221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5775664) = 4251528 * k + 2887832 := by
    unfold C
    simp [show (8503056 * k + 5775664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2887832) = 2125764 * k + 1443916 := by
    unfold C
    simp [show (4251528 * k + 2887832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1443916) = 1062882 * k + 721958 := by
    unfold C
    simp [show (2125764 * k + 1443916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 721958) = 531441 * k + 360979 := by
    unfold C
    simp [show (1062882 * k + 721958) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 712239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 712239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_712511 : ∀ k : Nat,
    iterate (1048576 * k + 712511) 32 = 531441 * k + 361117 ∧
      531441 * k + 361117 < 1048576 * k + 712511 := by
  intro k
  have h1 : C (1048576 * k + 712511) = 3145728 * k + 2137534 := by
    unfold C
    simp [show (1048576 * k + 712511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2137534) = 1572864 * k + 1068767 := by
    unfold C
    simp [show (3145728 * k + 2137534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1068767) = 4718592 * k + 3206302 := by
    unfold C
    simp [show (1572864 * k + 1068767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3206302) = 2359296 * k + 1603151 := by
    unfold C
    simp [show (4718592 * k + 3206302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1603151) = 7077888 * k + 4809454 := by
    unfold C
    simp [show (2359296 * k + 1603151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4809454) = 3538944 * k + 2404727 := by
    unfold C
    simp [show (7077888 * k + 4809454) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2404727) = 10616832 * k + 7214182 := by
    unfold C
    simp [show (3538944 * k + 2404727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7214182) = 5308416 * k + 3607091 := by
    unfold C
    simp [show (10616832 * k + 7214182) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3607091) = 15925248 * k + 10821274 := by
    unfold C
    simp [show (5308416 * k + 3607091) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10821274) = 7962624 * k + 5410637 := by
    unfold C
    simp [show (15925248 * k + 10821274) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5410637) = 23887872 * k + 16231912 := by
    unfold C
    simp [show (7962624 * k + 5410637) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16231912) = 11943936 * k + 8115956 := by
    unfold C
    simp [show (23887872 * k + 16231912) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8115956) = 5971968 * k + 4057978 := by
    unfold C
    simp [show (11943936 * k + 8115956) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4057978) = 2985984 * k + 2028989 := by
    unfold C
    simp [show (5971968 * k + 4057978) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2028989) = 8957952 * k + 6086968 := by
    unfold C
    simp [show (2985984 * k + 2028989) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6086968) = 4478976 * k + 3043484 := by
    unfold C
    simp [show (8957952 * k + 6086968) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3043484) = 2239488 * k + 1521742 := by
    unfold C
    simp [show (4478976 * k + 3043484) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1521742) = 1119744 * k + 760871 := by
    unfold C
    simp [show (2239488 * k + 1521742) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 760871) = 3359232 * k + 2282614 := by
    unfold C
    simp [show (1119744 * k + 760871) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2282614) = 1679616 * k + 1141307 := by
    unfold C
    simp [show (3359232 * k + 2282614) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1141307) = 5038848 * k + 3423922 := by
    unfold C
    simp [show (1679616 * k + 1141307) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3423922) = 2519424 * k + 1711961 := by
    unfold C
    simp [show (5038848 * k + 3423922) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1711961) = 7558272 * k + 5135884 := by
    unfold C
    simp [show (2519424 * k + 1711961) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5135884) = 3779136 * k + 2567942 := by
    unfold C
    simp [show (7558272 * k + 5135884) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2567942) = 1889568 * k + 1283971 := by
    unfold C
    simp [show (3779136 * k + 2567942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1283971) = 5668704 * k + 3851914 := by
    unfold C
    simp [show (1889568 * k + 1283971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3851914) = 2834352 * k + 1925957 := by
    unfold C
    simp [show (5668704 * k + 3851914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1925957) = 8503056 * k + 5777872 := by
    unfold C
    simp [show (2834352 * k + 1925957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5777872) = 4251528 * k + 2888936 := by
    unfold C
    simp [show (8503056 * k + 5777872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2888936) = 2125764 * k + 1444468 := by
    unfold C
    simp [show (4251528 * k + 2888936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1444468) = 1062882 * k + 722234 := by
    unfold C
    simp [show (2125764 * k + 1444468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 722234) = 531441 * k + 361117 := by
    unfold C
    simp [show (1062882 * k + 722234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 712511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 712511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_712831 : ∀ k : Nat,
    iterate (1048576 * k + 712831) 32 = 531441 * k + 361279 ∧
      531441 * k + 361279 < 1048576 * k + 712831 := by
  intro k
  have h1 : C (1048576 * k + 712831) = 3145728 * k + 2138494 := by
    unfold C
    simp [show (1048576 * k + 712831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2138494) = 1572864 * k + 1069247 := by
    unfold C
    simp [show (3145728 * k + 2138494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1069247) = 4718592 * k + 3207742 := by
    unfold C
    simp [show (1572864 * k + 1069247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3207742) = 2359296 * k + 1603871 := by
    unfold C
    simp [show (4718592 * k + 3207742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1603871) = 7077888 * k + 4811614 := by
    unfold C
    simp [show (2359296 * k + 1603871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4811614) = 3538944 * k + 2405807 := by
    unfold C
    simp [show (7077888 * k + 4811614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2405807) = 10616832 * k + 7217422 := by
    unfold C
    simp [show (3538944 * k + 2405807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7217422) = 5308416 * k + 3608711 := by
    unfold C
    simp [show (10616832 * k + 7217422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3608711) = 15925248 * k + 10826134 := by
    unfold C
    simp [show (5308416 * k + 3608711) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10826134) = 7962624 * k + 5413067 := by
    unfold C
    simp [show (15925248 * k + 10826134) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5413067) = 23887872 * k + 16239202 := by
    unfold C
    simp [show (7962624 * k + 5413067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16239202) = 11943936 * k + 8119601 := by
    unfold C
    simp [show (23887872 * k + 16239202) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8119601) = 35831808 * k + 24358804 := by
    unfold C
    simp [show (11943936 * k + 8119601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24358804) = 17915904 * k + 12179402 := by
    unfold C
    simp [show (35831808 * k + 24358804) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12179402) = 8957952 * k + 6089701 := by
    unfold C
    simp [show (17915904 * k + 12179402) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6089701) = 26873856 * k + 18269104 := by
    unfold C
    simp [show (8957952 * k + 6089701) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18269104) = 13436928 * k + 9134552 := by
    unfold C
    simp [show (26873856 * k + 18269104) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9134552) = 6718464 * k + 4567276 := by
    unfold C
    simp [show (13436928 * k + 9134552) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4567276) = 3359232 * k + 2283638 := by
    unfold C
    simp [show (6718464 * k + 4567276) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2283638) = 1679616 * k + 1141819 := by
    unfold C
    simp [show (3359232 * k + 2283638) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1141819) = 5038848 * k + 3425458 := by
    unfold C
    simp [show (1679616 * k + 1141819) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3425458) = 2519424 * k + 1712729 := by
    unfold C
    simp [show (5038848 * k + 3425458) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1712729) = 7558272 * k + 5138188 := by
    unfold C
    simp [show (2519424 * k + 1712729) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5138188) = 3779136 * k + 2569094 := by
    unfold C
    simp [show (7558272 * k + 5138188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2569094) = 1889568 * k + 1284547 := by
    unfold C
    simp [show (3779136 * k + 2569094) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1284547) = 5668704 * k + 3853642 := by
    unfold C
    simp [show (1889568 * k + 1284547) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3853642) = 2834352 * k + 1926821 := by
    unfold C
    simp [show (5668704 * k + 3853642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1926821) = 8503056 * k + 5780464 := by
    unfold C
    simp [show (2834352 * k + 1926821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5780464) = 4251528 * k + 2890232 := by
    unfold C
    simp [show (8503056 * k + 5780464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2890232) = 2125764 * k + 1445116 := by
    unfold C
    simp [show (4251528 * k + 2890232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1445116) = 1062882 * k + 722558 := by
    unfold C
    simp [show (2125764 * k + 1445116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 722558) = 531441 * k + 361279 := by
    unfold C
    simp [show (1062882 * k + 722558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 712831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 712831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_712863 : ∀ k : Nat,
    iterate (1048576 * k + 712863) 32 = 531441 * k + 361295 ∧
      531441 * k + 361295 < 1048576 * k + 712863 := by
  intro k
  have h1 : C (1048576 * k + 712863) = 3145728 * k + 2138590 := by
    unfold C
    simp [show (1048576 * k + 712863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2138590) = 1572864 * k + 1069295 := by
    unfold C
    simp [show (3145728 * k + 2138590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1069295) = 4718592 * k + 3207886 := by
    unfold C
    simp [show (1572864 * k + 1069295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3207886) = 2359296 * k + 1603943 := by
    unfold C
    simp [show (4718592 * k + 3207886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1603943) = 7077888 * k + 4811830 := by
    unfold C
    simp [show (2359296 * k + 1603943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4811830) = 3538944 * k + 2405915 := by
    unfold C
    simp [show (7077888 * k + 4811830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2405915) = 10616832 * k + 7217746 := by
    unfold C
    simp [show (3538944 * k + 2405915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7217746) = 5308416 * k + 3608873 := by
    unfold C
    simp [show (10616832 * k + 7217746) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3608873) = 15925248 * k + 10826620 := by
    unfold C
    simp [show (5308416 * k + 3608873) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10826620) = 7962624 * k + 5413310 := by
    unfold C
    simp [show (15925248 * k + 10826620) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5413310) = 3981312 * k + 2706655 := by
    unfold C
    simp [show (7962624 * k + 5413310) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2706655) = 11943936 * k + 8119966 := by
    unfold C
    simp [show (3981312 * k + 2706655) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8119966) = 5971968 * k + 4059983 := by
    unfold C
    simp [show (11943936 * k + 8119966) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4059983) = 17915904 * k + 12179950 := by
    unfold C
    simp [show (5971968 * k + 4059983) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12179950) = 8957952 * k + 6089975 := by
    unfold C
    simp [show (17915904 * k + 12179950) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6089975) = 26873856 * k + 18269926 := by
    unfold C
    simp [show (8957952 * k + 6089975) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18269926) = 13436928 * k + 9134963 := by
    unfold C
    simp [show (26873856 * k + 18269926) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9134963) = 40310784 * k + 27404890 := by
    unfold C
    simp [show (13436928 * k + 9134963) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27404890) = 20155392 * k + 13702445 := by
    unfold C
    simp [show (40310784 * k + 27404890) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13702445) = 60466176 * k + 41107336 := by
    unfold C
    simp [show (20155392 * k + 13702445) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 41107336) = 30233088 * k + 20553668 := by
    unfold C
    simp [show (60466176 * k + 41107336) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20553668) = 15116544 * k + 10276834 := by
    unfold C
    simp [show (30233088 * k + 20553668) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10276834) = 7558272 * k + 5138417 := by
    unfold C
    simp [show (15116544 * k + 10276834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5138417) = 22674816 * k + 15415252 := by
    unfold C
    simp [show (7558272 * k + 5138417) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15415252) = 11337408 * k + 7707626 := by
    unfold C
    simp [show (22674816 * k + 15415252) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7707626) = 5668704 * k + 3853813 := by
    unfold C
    simp [show (11337408 * k + 7707626) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3853813) = 17006112 * k + 11561440 := by
    unfold C
    simp [show (5668704 * k + 3853813) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11561440) = 8503056 * k + 5780720 := by
    unfold C
    simp [show (17006112 * k + 11561440) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5780720) = 4251528 * k + 2890360 := by
    unfold C
    simp [show (8503056 * k + 5780720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2890360) = 2125764 * k + 1445180 := by
    unfold C
    simp [show (4251528 * k + 2890360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1445180) = 1062882 * k + 722590 := by
    unfold C
    simp [show (2125764 * k + 1445180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 722590) = 531441 * k + 361295 := by
    unfold C
    simp [show (1062882 * k + 722590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 712863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 712863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_712955 : ∀ k : Nat,
    iterate (1048576 * k + 712955) 32 = 531441 * k + 361342 ∧
      531441 * k + 361342 < 1048576 * k + 712955 := by
  intro k
  have h1 : C (1048576 * k + 712955) = 3145728 * k + 2138866 := by
    unfold C
    simp [show (1048576 * k + 712955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2138866) = 1572864 * k + 1069433 := by
    unfold C
    simp [show (3145728 * k + 2138866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1069433) = 4718592 * k + 3208300 := by
    unfold C
    simp [show (1572864 * k + 1069433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3208300) = 2359296 * k + 1604150 := by
    unfold C
    simp [show (4718592 * k + 3208300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1604150) = 1179648 * k + 802075 := by
    unfold C
    simp [show (2359296 * k + 1604150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 802075) = 3538944 * k + 2406226 := by
    unfold C
    simp [show (1179648 * k + 802075) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2406226) = 1769472 * k + 1203113 := by
    unfold C
    simp [show (3538944 * k + 2406226) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1203113) = 5308416 * k + 3609340 := by
    unfold C
    simp [show (1769472 * k + 1203113) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3609340) = 2654208 * k + 1804670 := by
    unfold C
    simp [show (5308416 * k + 3609340) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1804670) = 1327104 * k + 902335 := by
    unfold C
    simp [show (2654208 * k + 1804670) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 902335) = 3981312 * k + 2707006 := by
    unfold C
    simp [show (1327104 * k + 902335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2707006) = 1990656 * k + 1353503 := by
    unfold C
    simp [show (3981312 * k + 2707006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1353503) = 5971968 * k + 4060510 := by
    unfold C
    simp [show (1990656 * k + 1353503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4060510) = 2985984 * k + 2030255 := by
    unfold C
    simp [show (5971968 * k + 4060510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2030255) = 8957952 * k + 6090766 := by
    unfold C
    simp [show (2985984 * k + 2030255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6090766) = 4478976 * k + 3045383 := by
    unfold C
    simp [show (8957952 * k + 6090766) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3045383) = 13436928 * k + 9136150 := by
    unfold C
    simp [show (4478976 * k + 3045383) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9136150) = 6718464 * k + 4568075 := by
    unfold C
    simp [show (13436928 * k + 9136150) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4568075) = 20155392 * k + 13704226 := by
    unfold C
    simp [show (6718464 * k + 4568075) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13704226) = 10077696 * k + 6852113 := by
    unfold C
    simp [show (20155392 * k + 13704226) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6852113) = 30233088 * k + 20556340 := by
    unfold C
    simp [show (10077696 * k + 6852113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20556340) = 15116544 * k + 10278170 := by
    unfold C
    simp [show (30233088 * k + 20556340) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10278170) = 7558272 * k + 5139085 := by
    unfold C
    simp [show (15116544 * k + 10278170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5139085) = 22674816 * k + 15417256 := by
    unfold C
    simp [show (7558272 * k + 5139085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15417256) = 11337408 * k + 7708628 := by
    unfold C
    simp [show (22674816 * k + 15417256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7708628) = 5668704 * k + 3854314 := by
    unfold C
    simp [show (11337408 * k + 7708628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3854314) = 2834352 * k + 1927157 := by
    unfold C
    simp [show (5668704 * k + 3854314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1927157) = 8503056 * k + 5781472 := by
    unfold C
    simp [show (2834352 * k + 1927157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5781472) = 4251528 * k + 2890736 := by
    unfold C
    simp [show (8503056 * k + 5781472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2890736) = 2125764 * k + 1445368 := by
    unfold C
    simp [show (4251528 * k + 2890736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1445368) = 1062882 * k + 722684 := by
    unfold C
    simp [show (2125764 * k + 1445368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 722684) = 531441 * k + 361342 := by
    unfold C
    simp [show (1062882 * k + 722684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 712955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 712955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_713151 : ∀ k : Nat,
    iterate (1048576 * k + 713151) 32 = 531441 * k + 361441 ∧
      531441 * k + 361441 < 1048576 * k + 713151 := by
  intro k
  have h1 : C (1048576 * k + 713151) = 3145728 * k + 2139454 := by
    unfold C
    simp [show (1048576 * k + 713151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2139454) = 1572864 * k + 1069727 := by
    unfold C
    simp [show (3145728 * k + 2139454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1069727) = 4718592 * k + 3209182 := by
    unfold C
    simp [show (1572864 * k + 1069727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3209182) = 2359296 * k + 1604591 := by
    unfold C
    simp [show (4718592 * k + 3209182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1604591) = 7077888 * k + 4813774 := by
    unfold C
    simp [show (2359296 * k + 1604591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4813774) = 3538944 * k + 2406887 := by
    unfold C
    simp [show (7077888 * k + 4813774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2406887) = 10616832 * k + 7220662 := by
    unfold C
    simp [show (3538944 * k + 2406887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7220662) = 5308416 * k + 3610331 := by
    unfold C
    simp [show (10616832 * k + 7220662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3610331) = 15925248 * k + 10830994 := by
    unfold C
    simp [show (5308416 * k + 3610331) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10830994) = 7962624 * k + 5415497 := by
    unfold C
    simp [show (15925248 * k + 10830994) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5415497) = 23887872 * k + 16246492 := by
    unfold C
    simp [show (7962624 * k + 5415497) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16246492) = 11943936 * k + 8123246 := by
    unfold C
    simp [show (23887872 * k + 16246492) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8123246) = 5971968 * k + 4061623 := by
    unfold C
    simp [show (11943936 * k + 8123246) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4061623) = 17915904 * k + 12184870 := by
    unfold C
    simp [show (5971968 * k + 4061623) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12184870) = 8957952 * k + 6092435 := by
    unfold C
    simp [show (17915904 * k + 12184870) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6092435) = 26873856 * k + 18277306 := by
    unfold C
    simp [show (8957952 * k + 6092435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18277306) = 13436928 * k + 9138653 := by
    unfold C
    simp [show (26873856 * k + 18277306) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9138653) = 40310784 * k + 27415960 := by
    unfold C
    simp [show (13436928 * k + 9138653) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27415960) = 20155392 * k + 13707980 := by
    unfold C
    simp [show (40310784 * k + 27415960) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13707980) = 10077696 * k + 6853990 := by
    unfold C
    simp [show (20155392 * k + 13707980) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6853990) = 5038848 * k + 3426995 := by
    unfold C
    simp [show (10077696 * k + 6853990) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3426995) = 15116544 * k + 10280986 := by
    unfold C
    simp [show (5038848 * k + 3426995) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10280986) = 7558272 * k + 5140493 := by
    unfold C
    simp [show (15116544 * k + 10280986) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5140493) = 22674816 * k + 15421480 := by
    unfold C
    simp [show (7558272 * k + 5140493) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15421480) = 11337408 * k + 7710740 := by
    unfold C
    simp [show (22674816 * k + 15421480) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7710740) = 5668704 * k + 3855370 := by
    unfold C
    simp [show (11337408 * k + 7710740) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3855370) = 2834352 * k + 1927685 := by
    unfold C
    simp [show (5668704 * k + 3855370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1927685) = 8503056 * k + 5783056 := by
    unfold C
    simp [show (2834352 * k + 1927685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5783056) = 4251528 * k + 2891528 := by
    unfold C
    simp [show (8503056 * k + 5783056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2891528) = 2125764 * k + 1445764 := by
    unfold C
    simp [show (4251528 * k + 2891528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1445764) = 1062882 * k + 722882 := by
    unfold C
    simp [show (2125764 * k + 1445764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 722882) = 531441 * k + 361441 := by
    unfold C
    simp [show (1062882 * k + 722882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 713151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 713151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_713727 : ∀ k : Nat,
    iterate (1048576 * k + 713727) 32 = 531441 * k + 361733 ∧
      531441 * k + 361733 < 1048576 * k + 713727 := by
  intro k
  have h1 : C (1048576 * k + 713727) = 3145728 * k + 2141182 := by
    unfold C
    simp [show (1048576 * k + 713727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2141182) = 1572864 * k + 1070591 := by
    unfold C
    simp [show (3145728 * k + 2141182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1070591) = 4718592 * k + 3211774 := by
    unfold C
    simp [show (1572864 * k + 1070591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3211774) = 2359296 * k + 1605887 := by
    unfold C
    simp [show (4718592 * k + 3211774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1605887) = 7077888 * k + 4817662 := by
    unfold C
    simp [show (2359296 * k + 1605887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4817662) = 3538944 * k + 2408831 := by
    unfold C
    simp [show (7077888 * k + 4817662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2408831) = 10616832 * k + 7226494 := by
    unfold C
    simp [show (3538944 * k + 2408831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7226494) = 5308416 * k + 3613247 := by
    unfold C
    simp [show (10616832 * k + 7226494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3613247) = 15925248 * k + 10839742 := by
    unfold C
    simp [show (5308416 * k + 3613247) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10839742) = 7962624 * k + 5419871 := by
    unfold C
    simp [show (15925248 * k + 10839742) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5419871) = 23887872 * k + 16259614 := by
    unfold C
    simp [show (7962624 * k + 5419871) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16259614) = 11943936 * k + 8129807 := by
    unfold C
    simp [show (23887872 * k + 16259614) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8129807) = 35831808 * k + 24389422 := by
    unfold C
    simp [show (11943936 * k + 8129807) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24389422) = 17915904 * k + 12194711 := by
    unfold C
    simp [show (35831808 * k + 24389422) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12194711) = 53747712 * k + 36584134 := by
    unfold C
    simp [show (17915904 * k + 12194711) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 36584134) = 26873856 * k + 18292067 := by
    unfold C
    simp [show (53747712 * k + 36584134) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 18292067) = 80621568 * k + 54876202 := by
    unfold C
    simp [show (26873856 * k + 18292067) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 54876202) = 40310784 * k + 27438101 := by
    unfold C
    simp [show (80621568 * k + 54876202) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 27438101) = 120932352 * k + 82314304 := by
    unfold C
    simp [show (40310784 * k + 27438101) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 82314304) = 60466176 * k + 41157152 := by
    unfold C
    simp [show (120932352 * k + 82314304) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 41157152) = 30233088 * k + 20578576 := by
    unfold C
    simp [show (60466176 * k + 41157152) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20578576) = 15116544 * k + 10289288 := by
    unfold C
    simp [show (30233088 * k + 20578576) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10289288) = 7558272 * k + 5144644 := by
    unfold C
    simp [show (15116544 * k + 10289288) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5144644) = 3779136 * k + 2572322 := by
    unfold C
    simp [show (7558272 * k + 5144644) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2572322) = 1889568 * k + 1286161 := by
    unfold C
    simp [show (3779136 * k + 2572322) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1286161) = 5668704 * k + 3858484 := by
    unfold C
    simp [show (1889568 * k + 1286161) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3858484) = 2834352 * k + 1929242 := by
    unfold C
    simp [show (5668704 * k + 3858484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1929242) = 1417176 * k + 964621 := by
    unfold C
    simp [show (2834352 * k + 1929242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 964621) = 4251528 * k + 2893864 := by
    unfold C
    simp [show (1417176 * k + 964621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2893864) = 2125764 * k + 1446932 := by
    unfold C
    simp [show (4251528 * k + 2893864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1446932) = 1062882 * k + 723466 := by
    unfold C
    simp [show (2125764 * k + 1446932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 723466) = 531441 * k + 361733 := by
    unfold C
    simp [show (1062882 * k + 723466) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 713727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 713727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_714011 : ∀ k : Nat,
    iterate (1048576 * k + 714011) 32 = 531441 * k + 361877 ∧
      531441 * k + 361877 < 1048576 * k + 714011 := by
  intro k
  have h1 : C (1048576 * k + 714011) = 3145728 * k + 2142034 := by
    unfold C
    simp [show (1048576 * k + 714011) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2142034) = 1572864 * k + 1071017 := by
    unfold C
    simp [show (3145728 * k + 2142034) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1071017) = 4718592 * k + 3213052 := by
    unfold C
    simp [show (1572864 * k + 1071017) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3213052) = 2359296 * k + 1606526 := by
    unfold C
    simp [show (4718592 * k + 3213052) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1606526) = 1179648 * k + 803263 := by
    unfold C
    simp [show (2359296 * k + 1606526) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 803263) = 3538944 * k + 2409790 := by
    unfold C
    simp [show (1179648 * k + 803263) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2409790) = 1769472 * k + 1204895 := by
    unfold C
    simp [show (3538944 * k + 2409790) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1204895) = 5308416 * k + 3614686 := by
    unfold C
    simp [show (1769472 * k + 1204895) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3614686) = 2654208 * k + 1807343 := by
    unfold C
    simp [show (5308416 * k + 3614686) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1807343) = 7962624 * k + 5422030 := by
    unfold C
    simp [show (2654208 * k + 1807343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5422030) = 3981312 * k + 2711015 := by
    unfold C
    simp [show (7962624 * k + 5422030) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2711015) = 11943936 * k + 8133046 := by
    unfold C
    simp [show (3981312 * k + 2711015) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8133046) = 5971968 * k + 4066523 := by
    unfold C
    simp [show (11943936 * k + 8133046) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4066523) = 17915904 * k + 12199570 := by
    unfold C
    simp [show (5971968 * k + 4066523) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12199570) = 8957952 * k + 6099785 := by
    unfold C
    simp [show (17915904 * k + 12199570) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6099785) = 26873856 * k + 18299356 := by
    unfold C
    simp [show (8957952 * k + 6099785) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18299356) = 13436928 * k + 9149678 := by
    unfold C
    simp [show (26873856 * k + 18299356) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9149678) = 6718464 * k + 4574839 := by
    unfold C
    simp [show (13436928 * k + 9149678) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4574839) = 20155392 * k + 13724518 := by
    unfold C
    simp [show (6718464 * k + 4574839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13724518) = 10077696 * k + 6862259 := by
    unfold C
    simp [show (20155392 * k + 13724518) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6862259) = 30233088 * k + 20586778 := by
    unfold C
    simp [show (10077696 * k + 6862259) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20586778) = 15116544 * k + 10293389 := by
    unfold C
    simp [show (30233088 * k + 20586778) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10293389) = 45349632 * k + 30880168 := by
    unfold C
    simp [show (15116544 * k + 10293389) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30880168) = 22674816 * k + 15440084 := by
    unfold C
    simp [show (45349632 * k + 30880168) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15440084) = 11337408 * k + 7720042 := by
    unfold C
    simp [show (22674816 * k + 15440084) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7720042) = 5668704 * k + 3860021 := by
    unfold C
    simp [show (11337408 * k + 7720042) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3860021) = 17006112 * k + 11580064 := by
    unfold C
    simp [show (5668704 * k + 3860021) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11580064) = 8503056 * k + 5790032 := by
    unfold C
    simp [show (17006112 * k + 11580064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5790032) = 4251528 * k + 2895016 := by
    unfold C
    simp [show (8503056 * k + 5790032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2895016) = 2125764 * k + 1447508 := by
    unfold C
    simp [show (4251528 * k + 2895016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1447508) = 1062882 * k + 723754 := by
    unfold C
    simp [show (2125764 * k + 1447508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 723754) = 531441 * k + 361877 := by
    unfold C
    simp [show (1062882 * k + 723754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 714011) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 714011)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_715431 : ∀ k : Nat,
    iterate (1048576 * k + 715431) 32 = 531441 * k + 362597 ∧
      531441 * k + 362597 < 1048576 * k + 715431 := by
  intro k
  have h1 : C (1048576 * k + 715431) = 3145728 * k + 2146294 := by
    unfold C
    simp [show (1048576 * k + 715431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2146294) = 1572864 * k + 1073147 := by
    unfold C
    simp [show (3145728 * k + 2146294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1073147) = 4718592 * k + 3219442 := by
    unfold C
    simp [show (1572864 * k + 1073147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3219442) = 2359296 * k + 1609721 := by
    unfold C
    simp [show (4718592 * k + 3219442) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1609721) = 7077888 * k + 4829164 := by
    unfold C
    simp [show (2359296 * k + 1609721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4829164) = 3538944 * k + 2414582 := by
    unfold C
    simp [show (7077888 * k + 4829164) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2414582) = 1769472 * k + 1207291 := by
    unfold C
    simp [show (3538944 * k + 2414582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1207291) = 5308416 * k + 3621874 := by
    unfold C
    simp [show (1769472 * k + 1207291) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3621874) = 2654208 * k + 1810937 := by
    unfold C
    simp [show (5308416 * k + 3621874) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1810937) = 7962624 * k + 5432812 := by
    unfold C
    simp [show (2654208 * k + 1810937) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5432812) = 3981312 * k + 2716406 := by
    unfold C
    simp [show (7962624 * k + 5432812) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2716406) = 1990656 * k + 1358203 := by
    unfold C
    simp [show (3981312 * k + 2716406) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1358203) = 5971968 * k + 4074610 := by
    unfold C
    simp [show (1990656 * k + 1358203) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4074610) = 2985984 * k + 2037305 := by
    unfold C
    simp [show (5971968 * k + 4074610) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2037305) = 8957952 * k + 6111916 := by
    unfold C
    simp [show (2985984 * k + 2037305) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6111916) = 4478976 * k + 3055958 := by
    unfold C
    simp [show (8957952 * k + 6111916) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3055958) = 2239488 * k + 1527979 := by
    unfold C
    simp [show (4478976 * k + 3055958) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1527979) = 6718464 * k + 4583938 := by
    unfold C
    simp [show (2239488 * k + 1527979) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4583938) = 3359232 * k + 2291969 := by
    unfold C
    simp [show (6718464 * k + 4583938) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2291969) = 10077696 * k + 6875908 := by
    unfold C
    simp [show (3359232 * k + 2291969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6875908) = 5038848 * k + 3437954 := by
    unfold C
    simp [show (10077696 * k + 6875908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3437954) = 2519424 * k + 1718977 := by
    unfold C
    simp [show (5038848 * k + 3437954) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1718977) = 7558272 * k + 5156932 := by
    unfold C
    simp [show (2519424 * k + 1718977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5156932) = 3779136 * k + 2578466 := by
    unfold C
    simp [show (7558272 * k + 5156932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2578466) = 1889568 * k + 1289233 := by
    unfold C
    simp [show (3779136 * k + 2578466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1289233) = 5668704 * k + 3867700 := by
    unfold C
    simp [show (1889568 * k + 1289233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3867700) = 2834352 * k + 1933850 := by
    unfold C
    simp [show (5668704 * k + 3867700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1933850) = 1417176 * k + 966925 := by
    unfold C
    simp [show (2834352 * k + 1933850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 966925) = 4251528 * k + 2900776 := by
    unfold C
    simp [show (1417176 * k + 966925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2900776) = 2125764 * k + 1450388 := by
    unfold C
    simp [show (4251528 * k + 2900776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1450388) = 1062882 * k + 725194 := by
    unfold C
    simp [show (2125764 * k + 1450388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 725194) = 531441 * k + 362597 := by
    unfold C
    simp [show (1062882 * k + 725194) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 715431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 715431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_715867 : ∀ k : Nat,
    iterate (1048576 * k + 715867) 32 = 531441 * k + 362818 ∧
      531441 * k + 362818 < 1048576 * k + 715867 := by
  intro k
  have h1 : C (1048576 * k + 715867) = 3145728 * k + 2147602 := by
    unfold C
    simp [show (1048576 * k + 715867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2147602) = 1572864 * k + 1073801 := by
    unfold C
    simp [show (3145728 * k + 2147602) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1073801) = 4718592 * k + 3221404 := by
    unfold C
    simp [show (1572864 * k + 1073801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3221404) = 2359296 * k + 1610702 := by
    unfold C
    simp [show (4718592 * k + 3221404) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1610702) = 1179648 * k + 805351 := by
    unfold C
    simp [show (2359296 * k + 1610702) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 805351) = 3538944 * k + 2416054 := by
    unfold C
    simp [show (1179648 * k + 805351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2416054) = 1769472 * k + 1208027 := by
    unfold C
    simp [show (3538944 * k + 2416054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1208027) = 5308416 * k + 3624082 := by
    unfold C
    simp [show (1769472 * k + 1208027) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3624082) = 2654208 * k + 1812041 := by
    unfold C
    simp [show (5308416 * k + 3624082) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1812041) = 7962624 * k + 5436124 := by
    unfold C
    simp [show (2654208 * k + 1812041) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5436124) = 3981312 * k + 2718062 := by
    unfold C
    simp [show (7962624 * k + 5436124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2718062) = 1990656 * k + 1359031 := by
    unfold C
    simp [show (3981312 * k + 2718062) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1359031) = 5971968 * k + 4077094 := by
    unfold C
    simp [show (1990656 * k + 1359031) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4077094) = 2985984 * k + 2038547 := by
    unfold C
    simp [show (5971968 * k + 4077094) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2038547) = 8957952 * k + 6115642 := by
    unfold C
    simp [show (2985984 * k + 2038547) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6115642) = 4478976 * k + 3057821 := by
    unfold C
    simp [show (8957952 * k + 6115642) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3057821) = 13436928 * k + 9173464 := by
    unfold C
    simp [show (4478976 * k + 3057821) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9173464) = 6718464 * k + 4586732 := by
    unfold C
    simp [show (13436928 * k + 9173464) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4586732) = 3359232 * k + 2293366 := by
    unfold C
    simp [show (6718464 * k + 4586732) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2293366) = 1679616 * k + 1146683 := by
    unfold C
    simp [show (3359232 * k + 2293366) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1146683) = 5038848 * k + 3440050 := by
    unfold C
    simp [show (1679616 * k + 1146683) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3440050) = 2519424 * k + 1720025 := by
    unfold C
    simp [show (5038848 * k + 3440050) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1720025) = 7558272 * k + 5160076 := by
    unfold C
    simp [show (2519424 * k + 1720025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5160076) = 3779136 * k + 2580038 := by
    unfold C
    simp [show (7558272 * k + 5160076) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2580038) = 1889568 * k + 1290019 := by
    unfold C
    simp [show (3779136 * k + 2580038) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1290019) = 5668704 * k + 3870058 := by
    unfold C
    simp [show (1889568 * k + 1290019) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3870058) = 2834352 * k + 1935029 := by
    unfold C
    simp [show (5668704 * k + 3870058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1935029) = 8503056 * k + 5805088 := by
    unfold C
    simp [show (2834352 * k + 1935029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5805088) = 4251528 * k + 2902544 := by
    unfold C
    simp [show (8503056 * k + 5805088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2902544) = 2125764 * k + 1451272 := by
    unfold C
    simp [show (4251528 * k + 2902544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1451272) = 1062882 * k + 725636 := by
    unfold C
    simp [show (2125764 * k + 1451272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 725636) = 531441 * k + 362818 := by
    unfold C
    simp [show (1062882 * k + 725636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 715867) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 715867)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_716027 : ∀ k : Nat,
    iterate (1048576 * k + 716027) 32 = 531441 * k + 362899 ∧
      531441 * k + 362899 < 1048576 * k + 716027 := by
  intro k
  have h1 : C (1048576 * k + 716027) = 3145728 * k + 2148082 := by
    unfold C
    simp [show (1048576 * k + 716027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2148082) = 1572864 * k + 1074041 := by
    unfold C
    simp [show (3145728 * k + 2148082) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1074041) = 4718592 * k + 3222124 := by
    unfold C
    simp [show (1572864 * k + 1074041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3222124) = 2359296 * k + 1611062 := by
    unfold C
    simp [show (4718592 * k + 3222124) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1611062) = 1179648 * k + 805531 := by
    unfold C
    simp [show (2359296 * k + 1611062) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 805531) = 3538944 * k + 2416594 := by
    unfold C
    simp [show (1179648 * k + 805531) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2416594) = 1769472 * k + 1208297 := by
    unfold C
    simp [show (3538944 * k + 2416594) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1208297) = 5308416 * k + 3624892 := by
    unfold C
    simp [show (1769472 * k + 1208297) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3624892) = 2654208 * k + 1812446 := by
    unfold C
    simp [show (5308416 * k + 3624892) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1812446) = 1327104 * k + 906223 := by
    unfold C
    simp [show (2654208 * k + 1812446) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 906223) = 3981312 * k + 2718670 := by
    unfold C
    simp [show (1327104 * k + 906223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2718670) = 1990656 * k + 1359335 := by
    unfold C
    simp [show (3981312 * k + 2718670) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1359335) = 5971968 * k + 4078006 := by
    unfold C
    simp [show (1990656 * k + 1359335) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4078006) = 2985984 * k + 2039003 := by
    unfold C
    simp [show (5971968 * k + 4078006) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2039003) = 8957952 * k + 6117010 := by
    unfold C
    simp [show (2985984 * k + 2039003) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6117010) = 4478976 * k + 3058505 := by
    unfold C
    simp [show (8957952 * k + 6117010) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3058505) = 13436928 * k + 9175516 := by
    unfold C
    simp [show (4478976 * k + 3058505) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9175516) = 6718464 * k + 4587758 := by
    unfold C
    simp [show (13436928 * k + 9175516) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4587758) = 3359232 * k + 2293879 := by
    unfold C
    simp [show (6718464 * k + 4587758) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2293879) = 10077696 * k + 6881638 := by
    unfold C
    simp [show (3359232 * k + 2293879) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6881638) = 5038848 * k + 3440819 := by
    unfold C
    simp [show (10077696 * k + 6881638) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3440819) = 15116544 * k + 10322458 := by
    unfold C
    simp [show (5038848 * k + 3440819) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10322458) = 7558272 * k + 5161229 := by
    unfold C
    simp [show (15116544 * k + 10322458) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5161229) = 22674816 * k + 15483688 := by
    unfold C
    simp [show (7558272 * k + 5161229) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15483688) = 11337408 * k + 7741844 := by
    unfold C
    simp [show (22674816 * k + 15483688) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7741844) = 5668704 * k + 3870922 := by
    unfold C
    simp [show (11337408 * k + 7741844) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3870922) = 2834352 * k + 1935461 := by
    unfold C
    simp [show (5668704 * k + 3870922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1935461) = 8503056 * k + 5806384 := by
    unfold C
    simp [show (2834352 * k + 1935461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5806384) = 4251528 * k + 2903192 := by
    unfold C
    simp [show (8503056 * k + 5806384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2903192) = 2125764 * k + 1451596 := by
    unfold C
    simp [show (4251528 * k + 2903192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1451596) = 1062882 * k + 725798 := by
    unfold C
    simp [show (2125764 * k + 1451596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 725798) = 531441 * k + 362899 := by
    unfold C
    simp [show (1062882 * k + 725798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 716027) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 716027)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_716059 : ∀ k : Nat,
    iterate (1048576 * k + 716059) 32 = 531441 * k + 362915 ∧
      531441 * k + 362915 < 1048576 * k + 716059 := by
  intro k
  have h1 : C (1048576 * k + 716059) = 3145728 * k + 2148178 := by
    unfold C
    simp [show (1048576 * k + 716059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2148178) = 1572864 * k + 1074089 := by
    unfold C
    simp [show (3145728 * k + 2148178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1074089) = 4718592 * k + 3222268 := by
    unfold C
    simp [show (1572864 * k + 1074089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3222268) = 2359296 * k + 1611134 := by
    unfold C
    simp [show (4718592 * k + 3222268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1611134) = 1179648 * k + 805567 := by
    unfold C
    simp [show (2359296 * k + 1611134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 805567) = 3538944 * k + 2416702 := by
    unfold C
    simp [show (1179648 * k + 805567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2416702) = 1769472 * k + 1208351 := by
    unfold C
    simp [show (3538944 * k + 2416702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1208351) = 5308416 * k + 3625054 := by
    unfold C
    simp [show (1769472 * k + 1208351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3625054) = 2654208 * k + 1812527 := by
    unfold C
    simp [show (5308416 * k + 3625054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1812527) = 7962624 * k + 5437582 := by
    unfold C
    simp [show (2654208 * k + 1812527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5437582) = 3981312 * k + 2718791 := by
    unfold C
    simp [show (7962624 * k + 5437582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2718791) = 11943936 * k + 8156374 := by
    unfold C
    simp [show (3981312 * k + 2718791) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8156374) = 5971968 * k + 4078187 := by
    unfold C
    simp [show (11943936 * k + 8156374) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4078187) = 17915904 * k + 12234562 := by
    unfold C
    simp [show (5971968 * k + 4078187) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12234562) = 8957952 * k + 6117281 := by
    unfold C
    simp [show (17915904 * k + 12234562) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6117281) = 26873856 * k + 18351844 := by
    unfold C
    simp [show (8957952 * k + 6117281) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18351844) = 13436928 * k + 9175922 := by
    unfold C
    simp [show (26873856 * k + 18351844) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9175922) = 6718464 * k + 4587961 := by
    unfold C
    simp [show (13436928 * k + 9175922) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4587961) = 20155392 * k + 13763884 := by
    unfold C
    simp [show (6718464 * k + 4587961) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13763884) = 10077696 * k + 6881942 := by
    unfold C
    simp [show (20155392 * k + 13763884) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6881942) = 5038848 * k + 3440971 := by
    unfold C
    simp [show (10077696 * k + 6881942) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3440971) = 15116544 * k + 10322914 := by
    unfold C
    simp [show (5038848 * k + 3440971) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10322914) = 7558272 * k + 5161457 := by
    unfold C
    simp [show (15116544 * k + 10322914) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5161457) = 22674816 * k + 15484372 := by
    unfold C
    simp [show (7558272 * k + 5161457) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15484372) = 11337408 * k + 7742186 := by
    unfold C
    simp [show (22674816 * k + 15484372) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7742186) = 5668704 * k + 3871093 := by
    unfold C
    simp [show (11337408 * k + 7742186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3871093) = 17006112 * k + 11613280 := by
    unfold C
    simp [show (5668704 * k + 3871093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11613280) = 8503056 * k + 5806640 := by
    unfold C
    simp [show (17006112 * k + 11613280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5806640) = 4251528 * k + 2903320 := by
    unfold C
    simp [show (8503056 * k + 5806640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2903320) = 2125764 * k + 1451660 := by
    unfold C
    simp [show (4251528 * k + 2903320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1451660) = 1062882 * k + 725830 := by
    unfold C
    simp [show (2125764 * k + 1451660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 725830) = 531441 * k + 362915 := by
    unfold C
    simp [show (1062882 * k + 725830) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 716059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 716059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_716223 : ∀ k : Nat,
    iterate (1048576 * k + 716223) 32 = 531441 * k + 362998 ∧
      531441 * k + 362998 < 1048576 * k + 716223 := by
  intro k
  have h1 : C (1048576 * k + 716223) = 3145728 * k + 2148670 := by
    unfold C
    simp [show (1048576 * k + 716223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2148670) = 1572864 * k + 1074335 := by
    unfold C
    simp [show (3145728 * k + 2148670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1074335) = 4718592 * k + 3223006 := by
    unfold C
    simp [show (1572864 * k + 1074335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3223006) = 2359296 * k + 1611503 := by
    unfold C
    simp [show (4718592 * k + 3223006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1611503) = 7077888 * k + 4834510 := by
    unfold C
    simp [show (2359296 * k + 1611503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4834510) = 3538944 * k + 2417255 := by
    unfold C
    simp [show (7077888 * k + 4834510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2417255) = 10616832 * k + 7251766 := by
    unfold C
    simp [show (3538944 * k + 2417255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7251766) = 5308416 * k + 3625883 := by
    unfold C
    simp [show (10616832 * k + 7251766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3625883) = 15925248 * k + 10877650 := by
    unfold C
    simp [show (5308416 * k + 3625883) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10877650) = 7962624 * k + 5438825 := by
    unfold C
    simp [show (15925248 * k + 10877650) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5438825) = 23887872 * k + 16316476 := by
    unfold C
    simp [show (7962624 * k + 5438825) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16316476) = 11943936 * k + 8158238 := by
    unfold C
    simp [show (23887872 * k + 16316476) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8158238) = 5971968 * k + 4079119 := by
    unfold C
    simp [show (11943936 * k + 8158238) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4079119) = 17915904 * k + 12237358 := by
    unfold C
    simp [show (5971968 * k + 4079119) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12237358) = 8957952 * k + 6118679 := by
    unfold C
    simp [show (17915904 * k + 12237358) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6118679) = 26873856 * k + 18356038 := by
    unfold C
    simp [show (8957952 * k + 6118679) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18356038) = 13436928 * k + 9178019 := by
    unfold C
    simp [show (26873856 * k + 18356038) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9178019) = 40310784 * k + 27534058 := by
    unfold C
    simp [show (13436928 * k + 9178019) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27534058) = 20155392 * k + 13767029 := by
    unfold C
    simp [show (40310784 * k + 27534058) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13767029) = 60466176 * k + 41301088 := by
    unfold C
    simp [show (20155392 * k + 13767029) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 41301088) = 30233088 * k + 20650544 := by
    unfold C
    simp [show (60466176 * k + 41301088) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20650544) = 15116544 * k + 10325272 := by
    unfold C
    simp [show (30233088 * k + 20650544) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10325272) = 7558272 * k + 5162636 := by
    unfold C
    simp [show (15116544 * k + 10325272) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5162636) = 3779136 * k + 2581318 := by
    unfold C
    simp [show (7558272 * k + 5162636) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2581318) = 1889568 * k + 1290659 := by
    unfold C
    simp [show (3779136 * k + 2581318) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1290659) = 5668704 * k + 3871978 := by
    unfold C
    simp [show (1889568 * k + 1290659) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3871978) = 2834352 * k + 1935989 := by
    unfold C
    simp [show (5668704 * k + 3871978) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1935989) = 8503056 * k + 5807968 := by
    unfold C
    simp [show (2834352 * k + 1935989) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5807968) = 4251528 * k + 2903984 := by
    unfold C
    simp [show (8503056 * k + 5807968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2903984) = 2125764 * k + 1451992 := by
    unfold C
    simp [show (4251528 * k + 2903984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1451992) = 1062882 * k + 725996 := by
    unfold C
    simp [show (2125764 * k + 1451992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 725996) = 531441 * k + 362998 := by
    unfold C
    simp [show (1062882 * k + 725996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 716223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 716223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_716319 : ∀ k : Nat,
    iterate (1048576 * k + 716319) 32 = 531441 * k + 363047 ∧
      531441 * k + 363047 < 1048576 * k + 716319 := by
  intro k
  have h1 : C (1048576 * k + 716319) = 3145728 * k + 2148958 := by
    unfold C
    simp [show (1048576 * k + 716319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2148958) = 1572864 * k + 1074479 := by
    unfold C
    simp [show (3145728 * k + 2148958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1074479) = 4718592 * k + 3223438 := by
    unfold C
    simp [show (1572864 * k + 1074479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3223438) = 2359296 * k + 1611719 := by
    unfold C
    simp [show (4718592 * k + 3223438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1611719) = 7077888 * k + 4835158 := by
    unfold C
    simp [show (2359296 * k + 1611719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4835158) = 3538944 * k + 2417579 := by
    unfold C
    simp [show (7077888 * k + 4835158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2417579) = 10616832 * k + 7252738 := by
    unfold C
    simp [show (3538944 * k + 2417579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7252738) = 5308416 * k + 3626369 := by
    unfold C
    simp [show (10616832 * k + 7252738) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3626369) = 15925248 * k + 10879108 := by
    unfold C
    simp [show (5308416 * k + 3626369) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10879108) = 7962624 * k + 5439554 := by
    unfold C
    simp [show (15925248 * k + 10879108) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5439554) = 3981312 * k + 2719777 := by
    unfold C
    simp [show (7962624 * k + 5439554) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2719777) = 11943936 * k + 8159332 := by
    unfold C
    simp [show (3981312 * k + 2719777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8159332) = 5971968 * k + 4079666 := by
    unfold C
    simp [show (11943936 * k + 8159332) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4079666) = 2985984 * k + 2039833 := by
    unfold C
    simp [show (5971968 * k + 4079666) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2039833) = 8957952 * k + 6119500 := by
    unfold C
    simp [show (2985984 * k + 2039833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6119500) = 4478976 * k + 3059750 := by
    unfold C
    simp [show (8957952 * k + 6119500) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3059750) = 2239488 * k + 1529875 := by
    unfold C
    simp [show (4478976 * k + 3059750) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1529875) = 6718464 * k + 4589626 := by
    unfold C
    simp [show (2239488 * k + 1529875) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4589626) = 3359232 * k + 2294813 := by
    unfold C
    simp [show (6718464 * k + 4589626) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2294813) = 10077696 * k + 6884440 := by
    unfold C
    simp [show (3359232 * k + 2294813) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6884440) = 5038848 * k + 3442220 := by
    unfold C
    simp [show (10077696 * k + 6884440) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3442220) = 2519424 * k + 1721110 := by
    unfold C
    simp [show (5038848 * k + 3442220) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1721110) = 1259712 * k + 860555 := by
    unfold C
    simp [show (2519424 * k + 1721110) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 860555) = 3779136 * k + 2581666 := by
    unfold C
    simp [show (1259712 * k + 860555) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2581666) = 1889568 * k + 1290833 := by
    unfold C
    simp [show (3779136 * k + 2581666) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1290833) = 5668704 * k + 3872500 := by
    unfold C
    simp [show (1889568 * k + 1290833) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3872500) = 2834352 * k + 1936250 := by
    unfold C
    simp [show (5668704 * k + 3872500) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1936250) = 1417176 * k + 968125 := by
    unfold C
    simp [show (2834352 * k + 1936250) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 968125) = 4251528 * k + 2904376 := by
    unfold C
    simp [show (1417176 * k + 968125) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2904376) = 2125764 * k + 1452188 := by
    unfold C
    simp [show (4251528 * k + 2904376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1452188) = 1062882 * k + 726094 := by
    unfold C
    simp [show (2125764 * k + 1452188) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 726094) = 531441 * k + 363047 := by
    unfold C
    simp [show (1062882 * k + 726094) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 716319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 716319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_716479 : ∀ k : Nat,
    iterate (1048576 * k + 716479) 32 = 531441 * k + 363128 ∧
      531441 * k + 363128 < 1048576 * k + 716479 := by
  intro k
  have h1 : C (1048576 * k + 716479) = 3145728 * k + 2149438 := by
    unfold C
    simp [show (1048576 * k + 716479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2149438) = 1572864 * k + 1074719 := by
    unfold C
    simp [show (3145728 * k + 2149438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1074719) = 4718592 * k + 3224158 := by
    unfold C
    simp [show (1572864 * k + 1074719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3224158) = 2359296 * k + 1612079 := by
    unfold C
    simp [show (4718592 * k + 3224158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1612079) = 7077888 * k + 4836238 := by
    unfold C
    simp [show (2359296 * k + 1612079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4836238) = 3538944 * k + 2418119 := by
    unfold C
    simp [show (7077888 * k + 4836238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2418119) = 10616832 * k + 7254358 := by
    unfold C
    simp [show (3538944 * k + 2418119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7254358) = 5308416 * k + 3627179 := by
    unfold C
    simp [show (10616832 * k + 7254358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3627179) = 15925248 * k + 10881538 := by
    unfold C
    simp [show (5308416 * k + 3627179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10881538) = 7962624 * k + 5440769 := by
    unfold C
    simp [show (15925248 * k + 10881538) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5440769) = 23887872 * k + 16322308 := by
    unfold C
    simp [show (7962624 * k + 5440769) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16322308) = 11943936 * k + 8161154 := by
    unfold C
    simp [show (23887872 * k + 16322308) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8161154) = 5971968 * k + 4080577 := by
    unfold C
    simp [show (11943936 * k + 8161154) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4080577) = 17915904 * k + 12241732 := by
    unfold C
    simp [show (5971968 * k + 4080577) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12241732) = 8957952 * k + 6120866 := by
    unfold C
    simp [show (17915904 * k + 12241732) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6120866) = 4478976 * k + 3060433 := by
    unfold C
    simp [show (8957952 * k + 6120866) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3060433) = 13436928 * k + 9181300 := by
    unfold C
    simp [show (4478976 * k + 3060433) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9181300) = 6718464 * k + 4590650 := by
    unfold C
    simp [show (13436928 * k + 9181300) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4590650) = 3359232 * k + 2295325 := by
    unfold C
    simp [show (6718464 * k + 4590650) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2295325) = 10077696 * k + 6885976 := by
    unfold C
    simp [show (3359232 * k + 2295325) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6885976) = 5038848 * k + 3442988 := by
    unfold C
    simp [show (10077696 * k + 6885976) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3442988) = 2519424 * k + 1721494 := by
    unfold C
    simp [show (5038848 * k + 3442988) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1721494) = 1259712 * k + 860747 := by
    unfold C
    simp [show (2519424 * k + 1721494) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 860747) = 3779136 * k + 2582242 := by
    unfold C
    simp [show (1259712 * k + 860747) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2582242) = 1889568 * k + 1291121 := by
    unfold C
    simp [show (3779136 * k + 2582242) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1291121) = 5668704 * k + 3873364 := by
    unfold C
    simp [show (1889568 * k + 1291121) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3873364) = 2834352 * k + 1936682 := by
    unfold C
    simp [show (5668704 * k + 3873364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1936682) = 1417176 * k + 968341 := by
    unfold C
    simp [show (2834352 * k + 1936682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 968341) = 4251528 * k + 2905024 := by
    unfold C
    simp [show (1417176 * k + 968341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2905024) = 2125764 * k + 1452512 := by
    unfold C
    simp [show (4251528 * k + 2905024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1452512) = 1062882 * k + 726256 := by
    unfold C
    simp [show (2125764 * k + 1452512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 726256) = 531441 * k + 363128 := by
    unfold C
    simp [show (1062882 * k + 726256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 716479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 716479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard092
