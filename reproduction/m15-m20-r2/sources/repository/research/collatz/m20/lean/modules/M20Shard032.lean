import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard032

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_231167 : ∀ k : Nat,
    iterate (1048576 * k + 231167) 32 = 531441 * k + 117161 ∧
      531441 * k + 117161 < 1048576 * k + 231167 := by
  intro k
  have h1 : C (1048576 * k + 231167) = 3145728 * k + 693502 := by
    unfold C
    simp [show (1048576 * k + 231167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 693502) = 1572864 * k + 346751 := by
    unfold C
    simp [show (3145728 * k + 693502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 346751) = 4718592 * k + 1040254 := by
    unfold C
    simp [show (1572864 * k + 346751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1040254) = 2359296 * k + 520127 := by
    unfold C
    simp [show (4718592 * k + 1040254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 520127) = 7077888 * k + 1560382 := by
    unfold C
    simp [show (2359296 * k + 520127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1560382) = 3538944 * k + 780191 := by
    unfold C
    simp [show (7077888 * k + 1560382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 780191) = 10616832 * k + 2340574 := by
    unfold C
    simp [show (3538944 * k + 780191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2340574) = 5308416 * k + 1170287 := by
    unfold C
    simp [show (10616832 * k + 2340574) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1170287) = 15925248 * k + 3510862 := by
    unfold C
    simp [show (5308416 * k + 1170287) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3510862) = 7962624 * k + 1755431 := by
    unfold C
    simp [show (15925248 * k + 3510862) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1755431) = 23887872 * k + 5266294 := by
    unfold C
    simp [show (7962624 * k + 1755431) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5266294) = 11943936 * k + 2633147 := by
    unfold C
    simp [show (23887872 * k + 5266294) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2633147) = 35831808 * k + 7899442 := by
    unfold C
    simp [show (11943936 * k + 2633147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7899442) = 17915904 * k + 3949721 := by
    unfold C
    simp [show (35831808 * k + 7899442) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3949721) = 53747712 * k + 11849164 := by
    unfold C
    simp [show (17915904 * k + 3949721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 11849164) = 26873856 * k + 5924582 := by
    unfold C
    simp [show (53747712 * k + 11849164) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5924582) = 13436928 * k + 2962291 := by
    unfold C
    simp [show (26873856 * k + 5924582) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2962291) = 40310784 * k + 8886874 := by
    unfold C
    simp [show (13436928 * k + 2962291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8886874) = 20155392 * k + 4443437 := by
    unfold C
    simp [show (40310784 * k + 8886874) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4443437) = 60466176 * k + 13330312 := by
    unfold C
    simp [show (20155392 * k + 4443437) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 13330312) = 30233088 * k + 6665156 := by
    unfold C
    simp [show (60466176 * k + 13330312) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 6665156) = 15116544 * k + 3332578 := by
    unfold C
    simp [show (30233088 * k + 6665156) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3332578) = 7558272 * k + 1666289 := by
    unfold C
    simp [show (15116544 * k + 3332578) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1666289) = 22674816 * k + 4998868 := by
    unfold C
    simp [show (7558272 * k + 1666289) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4998868) = 11337408 * k + 2499434 := by
    unfold C
    simp [show (22674816 * k + 4998868) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2499434) = 5668704 * k + 1249717 := by
    unfold C
    simp [show (11337408 * k + 2499434) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1249717) = 17006112 * k + 3749152 := by
    unfold C
    simp [show (5668704 * k + 1249717) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3749152) = 8503056 * k + 1874576 := by
    unfold C
    simp [show (17006112 * k + 3749152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1874576) = 4251528 * k + 937288 := by
    unfold C
    simp [show (8503056 * k + 1874576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 937288) = 2125764 * k + 468644 := by
    unfold C
    simp [show (4251528 * k + 937288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 468644) = 1062882 * k + 234322 := by
    unfold C
    simp [show (2125764 * k + 468644) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 234322) = 531441 * k + 117161 := by
    unfold C
    simp [show (1062882 * k + 234322) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 231167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 231167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_231295 : ∀ k : Nat,
    iterate (1048576 * k + 231295) 32 = 531441 * k + 117226 ∧
      531441 * k + 117226 < 1048576 * k + 231295 := by
  intro k
  have h1 : C (1048576 * k + 231295) = 3145728 * k + 693886 := by
    unfold C
    simp [show (1048576 * k + 231295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 693886) = 1572864 * k + 346943 := by
    unfold C
    simp [show (3145728 * k + 693886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 346943) = 4718592 * k + 1040830 := by
    unfold C
    simp [show (1572864 * k + 346943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1040830) = 2359296 * k + 520415 := by
    unfold C
    simp [show (4718592 * k + 1040830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 520415) = 7077888 * k + 1561246 := by
    unfold C
    simp [show (2359296 * k + 520415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1561246) = 3538944 * k + 780623 := by
    unfold C
    simp [show (7077888 * k + 1561246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 780623) = 10616832 * k + 2341870 := by
    unfold C
    simp [show (3538944 * k + 780623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2341870) = 5308416 * k + 1170935 := by
    unfold C
    simp [show (10616832 * k + 2341870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1170935) = 15925248 * k + 3512806 := by
    unfold C
    simp [show (5308416 * k + 1170935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3512806) = 7962624 * k + 1756403 := by
    unfold C
    simp [show (15925248 * k + 3512806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1756403) = 23887872 * k + 5269210 := by
    unfold C
    simp [show (7962624 * k + 1756403) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5269210) = 11943936 * k + 2634605 := by
    unfold C
    simp [show (23887872 * k + 5269210) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2634605) = 35831808 * k + 7903816 := by
    unfold C
    simp [show (11943936 * k + 2634605) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7903816) = 17915904 * k + 3951908 := by
    unfold C
    simp [show (35831808 * k + 7903816) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3951908) = 8957952 * k + 1975954 := by
    unfold C
    simp [show (17915904 * k + 3951908) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1975954) = 4478976 * k + 987977 := by
    unfold C
    simp [show (8957952 * k + 1975954) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 987977) = 13436928 * k + 2963932 := by
    unfold C
    simp [show (4478976 * k + 987977) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2963932) = 6718464 * k + 1481966 := by
    unfold C
    simp [show (13436928 * k + 2963932) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1481966) = 3359232 * k + 740983 := by
    unfold C
    simp [show (6718464 * k + 1481966) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 740983) = 10077696 * k + 2222950 := by
    unfold C
    simp [show (3359232 * k + 740983) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2222950) = 5038848 * k + 1111475 := by
    unfold C
    simp [show (10077696 * k + 2222950) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1111475) = 15116544 * k + 3334426 := by
    unfold C
    simp [show (5038848 * k + 1111475) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3334426) = 7558272 * k + 1667213 := by
    unfold C
    simp [show (15116544 * k + 3334426) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1667213) = 22674816 * k + 5001640 := by
    unfold C
    simp [show (7558272 * k + 1667213) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5001640) = 11337408 * k + 2500820 := by
    unfold C
    simp [show (22674816 * k + 5001640) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2500820) = 5668704 * k + 1250410 := by
    unfold C
    simp [show (11337408 * k + 2500820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1250410) = 2834352 * k + 625205 := by
    unfold C
    simp [show (5668704 * k + 1250410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 625205) = 8503056 * k + 1875616 := by
    unfold C
    simp [show (2834352 * k + 625205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1875616) = 4251528 * k + 937808 := by
    unfold C
    simp [show (8503056 * k + 1875616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 937808) = 2125764 * k + 468904 := by
    unfold C
    simp [show (4251528 * k + 937808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 468904) = 1062882 * k + 234452 := by
    unfold C
    simp [show (2125764 * k + 468904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 234452) = 531441 * k + 117226 := by
    unfold C
    simp [show (1062882 * k + 234452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 231295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 231295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_231835 : ∀ k : Nat,
    iterate (1048576 * k + 231835) 32 = 531441 * k + 117500 ∧
      531441 * k + 117500 < 1048576 * k + 231835 := by
  intro k
  have h1 : C (1048576 * k + 231835) = 3145728 * k + 695506 := by
    unfold C
    simp [show (1048576 * k + 231835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 695506) = 1572864 * k + 347753 := by
    unfold C
    simp [show (3145728 * k + 695506) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 347753) = 4718592 * k + 1043260 := by
    unfold C
    simp [show (1572864 * k + 347753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1043260) = 2359296 * k + 521630 := by
    unfold C
    simp [show (4718592 * k + 1043260) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 521630) = 1179648 * k + 260815 := by
    unfold C
    simp [show (2359296 * k + 521630) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 260815) = 3538944 * k + 782446 := by
    unfold C
    simp [show (1179648 * k + 260815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 782446) = 1769472 * k + 391223 := by
    unfold C
    simp [show (3538944 * k + 782446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 391223) = 5308416 * k + 1173670 := by
    unfold C
    simp [show (1769472 * k + 391223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1173670) = 2654208 * k + 586835 := by
    unfold C
    simp [show (5308416 * k + 1173670) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 586835) = 7962624 * k + 1760506 := by
    unfold C
    simp [show (2654208 * k + 586835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1760506) = 3981312 * k + 880253 := by
    unfold C
    simp [show (7962624 * k + 1760506) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 880253) = 11943936 * k + 2640760 := by
    unfold C
    simp [show (3981312 * k + 880253) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2640760) = 5971968 * k + 1320380 := by
    unfold C
    simp [show (11943936 * k + 2640760) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1320380) = 2985984 * k + 660190 := by
    unfold C
    simp [show (5971968 * k + 1320380) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 660190) = 1492992 * k + 330095 := by
    unfold C
    simp [show (2985984 * k + 660190) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 330095) = 4478976 * k + 990286 := by
    unfold C
    simp [show (1492992 * k + 330095) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 990286) = 2239488 * k + 495143 := by
    unfold C
    simp [show (4478976 * k + 990286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 495143) = 6718464 * k + 1485430 := by
    unfold C
    simp [show (2239488 * k + 495143) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1485430) = 3359232 * k + 742715 := by
    unfold C
    simp [show (6718464 * k + 1485430) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 742715) = 10077696 * k + 2228146 := by
    unfold C
    simp [show (3359232 * k + 742715) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2228146) = 5038848 * k + 1114073 := by
    unfold C
    simp [show (10077696 * k + 2228146) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1114073) = 15116544 * k + 3342220 := by
    unfold C
    simp [show (5038848 * k + 1114073) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3342220) = 7558272 * k + 1671110 := by
    unfold C
    simp [show (15116544 * k + 3342220) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1671110) = 3779136 * k + 835555 := by
    unfold C
    simp [show (7558272 * k + 1671110) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 835555) = 11337408 * k + 2506666 := by
    unfold C
    simp [show (3779136 * k + 835555) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2506666) = 5668704 * k + 1253333 := by
    unfold C
    simp [show (11337408 * k + 2506666) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1253333) = 17006112 * k + 3760000 := by
    unfold C
    simp [show (5668704 * k + 1253333) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3760000) = 8503056 * k + 1880000 := by
    unfold C
    simp [show (17006112 * k + 3760000) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1880000) = 4251528 * k + 940000 := by
    unfold C
    simp [show (8503056 * k + 1880000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 940000) = 2125764 * k + 470000 := by
    unfold C
    simp [show (4251528 * k + 940000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 470000) = 1062882 * k + 235000 := by
    unfold C
    simp [show (2125764 * k + 470000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 235000) = 531441 * k + 117500 := by
    unfold C
    simp [show (1062882 * k + 235000) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 231835) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 231835)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_231871 : ∀ k : Nat,
    iterate (1048576 * k + 231871) 32 = 531441 * k + 117518 ∧
      531441 * k + 117518 < 1048576 * k + 231871 := by
  intro k
  have h1 : C (1048576 * k + 231871) = 3145728 * k + 695614 := by
    unfold C
    simp [show (1048576 * k + 231871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 695614) = 1572864 * k + 347807 := by
    unfold C
    simp [show (3145728 * k + 695614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 347807) = 4718592 * k + 1043422 := by
    unfold C
    simp [show (1572864 * k + 347807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1043422) = 2359296 * k + 521711 := by
    unfold C
    simp [show (4718592 * k + 1043422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 521711) = 7077888 * k + 1565134 := by
    unfold C
    simp [show (2359296 * k + 521711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1565134) = 3538944 * k + 782567 := by
    unfold C
    simp [show (7077888 * k + 1565134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 782567) = 10616832 * k + 2347702 := by
    unfold C
    simp [show (3538944 * k + 782567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2347702) = 5308416 * k + 1173851 := by
    unfold C
    simp [show (10616832 * k + 2347702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1173851) = 15925248 * k + 3521554 := by
    unfold C
    simp [show (5308416 * k + 1173851) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3521554) = 7962624 * k + 1760777 := by
    unfold C
    simp [show (15925248 * k + 3521554) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1760777) = 23887872 * k + 5282332 := by
    unfold C
    simp [show (7962624 * k + 1760777) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5282332) = 11943936 * k + 2641166 := by
    unfold C
    simp [show (23887872 * k + 5282332) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2641166) = 5971968 * k + 1320583 := by
    unfold C
    simp [show (11943936 * k + 2641166) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1320583) = 17915904 * k + 3961750 := by
    unfold C
    simp [show (5971968 * k + 1320583) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3961750) = 8957952 * k + 1980875 := by
    unfold C
    simp [show (17915904 * k + 3961750) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1980875) = 26873856 * k + 5942626 := by
    unfold C
    simp [show (8957952 * k + 1980875) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5942626) = 13436928 * k + 2971313 := by
    unfold C
    simp [show (26873856 * k + 5942626) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2971313) = 40310784 * k + 8913940 := by
    unfold C
    simp [show (13436928 * k + 2971313) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 8913940) = 20155392 * k + 4456970 := by
    unfold C
    simp [show (40310784 * k + 8913940) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4456970) = 10077696 * k + 2228485 := by
    unfold C
    simp [show (20155392 * k + 4456970) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2228485) = 30233088 * k + 6685456 := by
    unfold C
    simp [show (10077696 * k + 2228485) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6685456) = 15116544 * k + 3342728 := by
    unfold C
    simp [show (30233088 * k + 6685456) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3342728) = 7558272 * k + 1671364 := by
    unfold C
    simp [show (15116544 * k + 3342728) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1671364) = 3779136 * k + 835682 := by
    unfold C
    simp [show (7558272 * k + 1671364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 835682) = 1889568 * k + 417841 := by
    unfold C
    simp [show (3779136 * k + 835682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 417841) = 5668704 * k + 1253524 := by
    unfold C
    simp [show (1889568 * k + 417841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1253524) = 2834352 * k + 626762 := by
    unfold C
    simp [show (5668704 * k + 1253524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 626762) = 1417176 * k + 313381 := by
    unfold C
    simp [show (2834352 * k + 626762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 313381) = 4251528 * k + 940144 := by
    unfold C
    simp [show (1417176 * k + 313381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 940144) = 2125764 * k + 470072 := by
    unfold C
    simp [show (4251528 * k + 940144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 470072) = 1062882 * k + 235036 := by
    unfold C
    simp [show (2125764 * k + 470072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 235036) = 531441 * k + 117518 := by
    unfold C
    simp [show (1062882 * k + 235036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 231871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 231871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_232699 : ∀ k : Nat,
    iterate (1048576 * k + 232699) 32 = 531441 * k + 117938 ∧
      531441 * k + 117938 < 1048576 * k + 232699 := by
  intro k
  have h1 : C (1048576 * k + 232699) = 3145728 * k + 698098 := by
    unfold C
    simp [show (1048576 * k + 232699) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 698098) = 1572864 * k + 349049 := by
    unfold C
    simp [show (3145728 * k + 698098) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 349049) = 4718592 * k + 1047148 := by
    unfold C
    simp [show (1572864 * k + 349049) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1047148) = 2359296 * k + 523574 := by
    unfold C
    simp [show (4718592 * k + 1047148) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 523574) = 1179648 * k + 261787 := by
    unfold C
    simp [show (2359296 * k + 523574) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 261787) = 3538944 * k + 785362 := by
    unfold C
    simp [show (1179648 * k + 261787) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 785362) = 1769472 * k + 392681 := by
    unfold C
    simp [show (3538944 * k + 785362) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 392681) = 5308416 * k + 1178044 := by
    unfold C
    simp [show (1769472 * k + 392681) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1178044) = 2654208 * k + 589022 := by
    unfold C
    simp [show (5308416 * k + 1178044) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 589022) = 1327104 * k + 294511 := by
    unfold C
    simp [show (2654208 * k + 589022) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 294511) = 3981312 * k + 883534 := by
    unfold C
    simp [show (1327104 * k + 294511) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 883534) = 1990656 * k + 441767 := by
    unfold C
    simp [show (3981312 * k + 883534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 441767) = 5971968 * k + 1325302 := by
    unfold C
    simp [show (1990656 * k + 441767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1325302) = 2985984 * k + 662651 := by
    unfold C
    simp [show (5971968 * k + 1325302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 662651) = 8957952 * k + 1987954 := by
    unfold C
    simp [show (2985984 * k + 662651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1987954) = 4478976 * k + 993977 := by
    unfold C
    simp [show (8957952 * k + 1987954) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 993977) = 13436928 * k + 2981932 := by
    unfold C
    simp [show (4478976 * k + 993977) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2981932) = 6718464 * k + 1490966 := by
    unfold C
    simp [show (13436928 * k + 2981932) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1490966) = 3359232 * k + 745483 := by
    unfold C
    simp [show (6718464 * k + 1490966) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 745483) = 10077696 * k + 2236450 := by
    unfold C
    simp [show (3359232 * k + 745483) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2236450) = 5038848 * k + 1118225 := by
    unfold C
    simp [show (10077696 * k + 2236450) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1118225) = 15116544 * k + 3354676 := by
    unfold C
    simp [show (5038848 * k + 1118225) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3354676) = 7558272 * k + 1677338 := by
    unfold C
    simp [show (15116544 * k + 3354676) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1677338) = 3779136 * k + 838669 := by
    unfold C
    simp [show (7558272 * k + 1677338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 838669) = 11337408 * k + 2516008 := by
    unfold C
    simp [show (3779136 * k + 838669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2516008) = 5668704 * k + 1258004 := by
    unfold C
    simp [show (11337408 * k + 2516008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1258004) = 2834352 * k + 629002 := by
    unfold C
    simp [show (5668704 * k + 1258004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 629002) = 1417176 * k + 314501 := by
    unfold C
    simp [show (2834352 * k + 629002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 314501) = 4251528 * k + 943504 := by
    unfold C
    simp [show (1417176 * k + 314501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 943504) = 2125764 * k + 471752 := by
    unfold C
    simp [show (4251528 * k + 943504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 471752) = 1062882 * k + 235876 := by
    unfold C
    simp [show (2125764 * k + 471752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 235876) = 531441 * k + 117938 := by
    unfold C
    simp [show (1062882 * k + 235876) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 232699) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 232699)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_233167 : ∀ k : Nat,
    iterate (1048576 * k + 233167) 32 = 531441 * k + 118175 ∧
      531441 * k + 118175 < 1048576 * k + 233167 := by
  intro k
  have h1 : C (1048576 * k + 233167) = 3145728 * k + 699502 := by
    unfold C
    simp [show (1048576 * k + 233167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 699502) = 1572864 * k + 349751 := by
    unfold C
    simp [show (3145728 * k + 699502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 349751) = 4718592 * k + 1049254 := by
    unfold C
    simp [show (1572864 * k + 349751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1049254) = 2359296 * k + 524627 := by
    unfold C
    simp [show (4718592 * k + 1049254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 524627) = 7077888 * k + 1573882 := by
    unfold C
    simp [show (2359296 * k + 524627) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1573882) = 3538944 * k + 786941 := by
    unfold C
    simp [show (7077888 * k + 1573882) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 786941) = 10616832 * k + 2360824 := by
    unfold C
    simp [show (3538944 * k + 786941) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2360824) = 5308416 * k + 1180412 := by
    unfold C
    simp [show (10616832 * k + 2360824) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1180412) = 2654208 * k + 590206 := by
    unfold C
    simp [show (5308416 * k + 1180412) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 590206) = 1327104 * k + 295103 := by
    unfold C
    simp [show (2654208 * k + 590206) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 295103) = 3981312 * k + 885310 := by
    unfold C
    simp [show (1327104 * k + 295103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 885310) = 1990656 * k + 442655 := by
    unfold C
    simp [show (3981312 * k + 885310) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 442655) = 5971968 * k + 1327966 := by
    unfold C
    simp [show (1990656 * k + 442655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1327966) = 2985984 * k + 663983 := by
    unfold C
    simp [show (5971968 * k + 1327966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 663983) = 8957952 * k + 1991950 := by
    unfold C
    simp [show (2985984 * k + 663983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1991950) = 4478976 * k + 995975 := by
    unfold C
    simp [show (8957952 * k + 1991950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 995975) = 13436928 * k + 2987926 := by
    unfold C
    simp [show (4478976 * k + 995975) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2987926) = 6718464 * k + 1493963 := by
    unfold C
    simp [show (13436928 * k + 2987926) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1493963) = 20155392 * k + 4481890 := by
    unfold C
    simp [show (6718464 * k + 1493963) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4481890) = 10077696 * k + 2240945 := by
    unfold C
    simp [show (20155392 * k + 4481890) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2240945) = 30233088 * k + 6722836 := by
    unfold C
    simp [show (10077696 * k + 2240945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6722836) = 15116544 * k + 3361418 := by
    unfold C
    simp [show (30233088 * k + 6722836) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3361418) = 7558272 * k + 1680709 := by
    unfold C
    simp [show (15116544 * k + 3361418) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1680709) = 22674816 * k + 5042128 := by
    unfold C
    simp [show (7558272 * k + 1680709) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5042128) = 11337408 * k + 2521064 := by
    unfold C
    simp [show (22674816 * k + 5042128) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2521064) = 5668704 * k + 1260532 := by
    unfold C
    simp [show (11337408 * k + 2521064) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1260532) = 2834352 * k + 630266 := by
    unfold C
    simp [show (5668704 * k + 1260532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 630266) = 1417176 * k + 315133 := by
    unfold C
    simp [show (2834352 * k + 630266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 315133) = 4251528 * k + 945400 := by
    unfold C
    simp [show (1417176 * k + 315133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 945400) = 2125764 * k + 472700 := by
    unfold C
    simp [show (4251528 * k + 945400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 472700) = 1062882 * k + 236350 := by
    unfold C
    simp [show (2125764 * k + 472700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 236350) = 531441 * k + 118175 := by
    unfold C
    simp [show (1062882 * k + 236350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 233167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 233167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_234011 : ∀ k : Nat,
    iterate (1048576 * k + 234011) 32 = 531441 * k + 118603 ∧
      531441 * k + 118603 < 1048576 * k + 234011 := by
  intro k
  have h1 : C (1048576 * k + 234011) = 3145728 * k + 702034 := by
    unfold C
    simp [show (1048576 * k + 234011) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 702034) = 1572864 * k + 351017 := by
    unfold C
    simp [show (3145728 * k + 702034) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 351017) = 4718592 * k + 1053052 := by
    unfold C
    simp [show (1572864 * k + 351017) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1053052) = 2359296 * k + 526526 := by
    unfold C
    simp [show (4718592 * k + 1053052) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 526526) = 1179648 * k + 263263 := by
    unfold C
    simp [show (2359296 * k + 526526) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 263263) = 3538944 * k + 789790 := by
    unfold C
    simp [show (1179648 * k + 263263) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 789790) = 1769472 * k + 394895 := by
    unfold C
    simp [show (3538944 * k + 789790) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 394895) = 5308416 * k + 1184686 := by
    unfold C
    simp [show (1769472 * k + 394895) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1184686) = 2654208 * k + 592343 := by
    unfold C
    simp [show (5308416 * k + 1184686) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 592343) = 7962624 * k + 1777030 := by
    unfold C
    simp [show (2654208 * k + 592343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1777030) = 3981312 * k + 888515 := by
    unfold C
    simp [show (7962624 * k + 1777030) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 888515) = 11943936 * k + 2665546 := by
    unfold C
    simp [show (3981312 * k + 888515) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2665546) = 5971968 * k + 1332773 := by
    unfold C
    simp [show (11943936 * k + 2665546) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1332773) = 17915904 * k + 3998320 := by
    unfold C
    simp [show (5971968 * k + 1332773) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3998320) = 8957952 * k + 1999160 := by
    unfold C
    simp [show (17915904 * k + 3998320) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1999160) = 4478976 * k + 999580 := by
    unfold C
    simp [show (8957952 * k + 1999160) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 999580) = 2239488 * k + 499790 := by
    unfold C
    simp [show (4478976 * k + 999580) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 499790) = 1119744 * k + 249895 := by
    unfold C
    simp [show (2239488 * k + 499790) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 249895) = 3359232 * k + 749686 := by
    unfold C
    simp [show (1119744 * k + 249895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 749686) = 1679616 * k + 374843 := by
    unfold C
    simp [show (3359232 * k + 749686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 374843) = 5038848 * k + 1124530 := by
    unfold C
    simp [show (1679616 * k + 374843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1124530) = 2519424 * k + 562265 := by
    unfold C
    simp [show (5038848 * k + 1124530) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 562265) = 7558272 * k + 1686796 := by
    unfold C
    simp [show (2519424 * k + 562265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1686796) = 3779136 * k + 843398 := by
    unfold C
    simp [show (7558272 * k + 1686796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 843398) = 1889568 * k + 421699 := by
    unfold C
    simp [show (3779136 * k + 843398) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 421699) = 5668704 * k + 1265098 := by
    unfold C
    simp [show (1889568 * k + 421699) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1265098) = 2834352 * k + 632549 := by
    unfold C
    simp [show (5668704 * k + 1265098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 632549) = 8503056 * k + 1897648 := by
    unfold C
    simp [show (2834352 * k + 632549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1897648) = 4251528 * k + 948824 := by
    unfold C
    simp [show (8503056 * k + 1897648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 948824) = 2125764 * k + 474412 := by
    unfold C
    simp [show (4251528 * k + 948824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 474412) = 1062882 * k + 237206 := by
    unfold C
    simp [show (2125764 * k + 474412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 237206) = 531441 * k + 118603 := by
    unfold C
    simp [show (1062882 * k + 237206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 234011) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 234011)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_234367 : ∀ k : Nat,
    iterate (1048576 * k + 234367) 32 = 531441 * k + 118783 ∧
      531441 * k + 118783 < 1048576 * k + 234367 := by
  intro k
  have h1 : C (1048576 * k + 234367) = 3145728 * k + 703102 := by
    unfold C
    simp [show (1048576 * k + 234367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 703102) = 1572864 * k + 351551 := by
    unfold C
    simp [show (3145728 * k + 703102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 351551) = 4718592 * k + 1054654 := by
    unfold C
    simp [show (1572864 * k + 351551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1054654) = 2359296 * k + 527327 := by
    unfold C
    simp [show (4718592 * k + 1054654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 527327) = 7077888 * k + 1581982 := by
    unfold C
    simp [show (2359296 * k + 527327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1581982) = 3538944 * k + 790991 := by
    unfold C
    simp [show (7077888 * k + 1581982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 790991) = 10616832 * k + 2372974 := by
    unfold C
    simp [show (3538944 * k + 790991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2372974) = 5308416 * k + 1186487 := by
    unfold C
    simp [show (10616832 * k + 2372974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1186487) = 15925248 * k + 3559462 := by
    unfold C
    simp [show (5308416 * k + 1186487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3559462) = 7962624 * k + 1779731 := by
    unfold C
    simp [show (15925248 * k + 3559462) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1779731) = 23887872 * k + 5339194 := by
    unfold C
    simp [show (7962624 * k + 1779731) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5339194) = 11943936 * k + 2669597 := by
    unfold C
    simp [show (23887872 * k + 5339194) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2669597) = 35831808 * k + 8008792 := by
    unfold C
    simp [show (11943936 * k + 2669597) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8008792) = 17915904 * k + 4004396 := by
    unfold C
    simp [show (35831808 * k + 8008792) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4004396) = 8957952 * k + 2002198 := by
    unfold C
    simp [show (17915904 * k + 4004396) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2002198) = 4478976 * k + 1001099 := by
    unfold C
    simp [show (8957952 * k + 2002198) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1001099) = 13436928 * k + 3003298 := by
    unfold C
    simp [show (4478976 * k + 1001099) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3003298) = 6718464 * k + 1501649 := by
    unfold C
    simp [show (13436928 * k + 3003298) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1501649) = 20155392 * k + 4504948 := by
    unfold C
    simp [show (6718464 * k + 1501649) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4504948) = 10077696 * k + 2252474 := by
    unfold C
    simp [show (20155392 * k + 4504948) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2252474) = 5038848 * k + 1126237 := by
    unfold C
    simp [show (10077696 * k + 2252474) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1126237) = 15116544 * k + 3378712 := by
    unfold C
    simp [show (5038848 * k + 1126237) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3378712) = 7558272 * k + 1689356 := by
    unfold C
    simp [show (15116544 * k + 3378712) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1689356) = 3779136 * k + 844678 := by
    unfold C
    simp [show (7558272 * k + 1689356) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 844678) = 1889568 * k + 422339 := by
    unfold C
    simp [show (3779136 * k + 844678) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 422339) = 5668704 * k + 1267018 := by
    unfold C
    simp [show (1889568 * k + 422339) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1267018) = 2834352 * k + 633509 := by
    unfold C
    simp [show (5668704 * k + 1267018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 633509) = 8503056 * k + 1900528 := by
    unfold C
    simp [show (2834352 * k + 633509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1900528) = 4251528 * k + 950264 := by
    unfold C
    simp [show (8503056 * k + 1900528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 950264) = 2125764 * k + 475132 := by
    unfold C
    simp [show (4251528 * k + 950264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 475132) = 1062882 * k + 237566 := by
    unfold C
    simp [show (2125764 * k + 475132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 237566) = 531441 * k + 118783 := by
    unfold C
    simp [show (1062882 * k + 237566) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 234367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 234367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_234463 : ∀ k : Nat,
    iterate (1048576 * k + 234463) 32 = 531441 * k + 118832 ∧
      531441 * k + 118832 < 1048576 * k + 234463 := by
  intro k
  have h1 : C (1048576 * k + 234463) = 3145728 * k + 703390 := by
    unfold C
    simp [show (1048576 * k + 234463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 703390) = 1572864 * k + 351695 := by
    unfold C
    simp [show (3145728 * k + 703390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 351695) = 4718592 * k + 1055086 := by
    unfold C
    simp [show (1572864 * k + 351695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1055086) = 2359296 * k + 527543 := by
    unfold C
    simp [show (4718592 * k + 1055086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 527543) = 7077888 * k + 1582630 := by
    unfold C
    simp [show (2359296 * k + 527543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1582630) = 3538944 * k + 791315 := by
    unfold C
    simp [show (7077888 * k + 1582630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 791315) = 10616832 * k + 2373946 := by
    unfold C
    simp [show (3538944 * k + 791315) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2373946) = 5308416 * k + 1186973 := by
    unfold C
    simp [show (10616832 * k + 2373946) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1186973) = 15925248 * k + 3560920 := by
    unfold C
    simp [show (5308416 * k + 1186973) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3560920) = 7962624 * k + 1780460 := by
    unfold C
    simp [show (15925248 * k + 3560920) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1780460) = 3981312 * k + 890230 := by
    unfold C
    simp [show (7962624 * k + 1780460) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 890230) = 1990656 * k + 445115 := by
    unfold C
    simp [show (3981312 * k + 890230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 445115) = 5971968 * k + 1335346 := by
    unfold C
    simp [show (1990656 * k + 445115) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1335346) = 2985984 * k + 667673 := by
    unfold C
    simp [show (5971968 * k + 1335346) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 667673) = 8957952 * k + 2003020 := by
    unfold C
    simp [show (2985984 * k + 667673) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2003020) = 4478976 * k + 1001510 := by
    unfold C
    simp [show (8957952 * k + 2003020) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1001510) = 2239488 * k + 500755 := by
    unfold C
    simp [show (4478976 * k + 1001510) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 500755) = 6718464 * k + 1502266 := by
    unfold C
    simp [show (2239488 * k + 500755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1502266) = 3359232 * k + 751133 := by
    unfold C
    simp [show (6718464 * k + 1502266) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 751133) = 10077696 * k + 2253400 := by
    unfold C
    simp [show (3359232 * k + 751133) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2253400) = 5038848 * k + 1126700 := by
    unfold C
    simp [show (10077696 * k + 2253400) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1126700) = 2519424 * k + 563350 := by
    unfold C
    simp [show (5038848 * k + 1126700) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 563350) = 1259712 * k + 281675 := by
    unfold C
    simp [show (2519424 * k + 563350) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 281675) = 3779136 * k + 845026 := by
    unfold C
    simp [show (1259712 * k + 281675) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 845026) = 1889568 * k + 422513 := by
    unfold C
    simp [show (3779136 * k + 845026) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 422513) = 5668704 * k + 1267540 := by
    unfold C
    simp [show (1889568 * k + 422513) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1267540) = 2834352 * k + 633770 := by
    unfold C
    simp [show (5668704 * k + 1267540) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 633770) = 1417176 * k + 316885 := by
    unfold C
    simp [show (2834352 * k + 633770) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 316885) = 4251528 * k + 950656 := by
    unfold C
    simp [show (1417176 * k + 316885) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 950656) = 2125764 * k + 475328 := by
    unfold C
    simp [show (4251528 * k + 950656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 475328) = 1062882 * k + 237664 := by
    unfold C
    simp [show (2125764 * k + 475328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 237664) = 531441 * k + 118832 := by
    unfold C
    simp [show (1062882 * k + 237664) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 234463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 234463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_235375 : ∀ k : Nat,
    iterate (1048576 * k + 235375) 32 = 531441 * k + 119294 ∧
      531441 * k + 119294 < 1048576 * k + 235375 := by
  intro k
  have h1 : C (1048576 * k + 235375) = 3145728 * k + 706126 := by
    unfold C
    simp [show (1048576 * k + 235375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 706126) = 1572864 * k + 353063 := by
    unfold C
    simp [show (3145728 * k + 706126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 353063) = 4718592 * k + 1059190 := by
    unfold C
    simp [show (1572864 * k + 353063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1059190) = 2359296 * k + 529595 := by
    unfold C
    simp [show (4718592 * k + 1059190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 529595) = 7077888 * k + 1588786 := by
    unfold C
    simp [show (2359296 * k + 529595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1588786) = 3538944 * k + 794393 := by
    unfold C
    simp [show (7077888 * k + 1588786) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 794393) = 10616832 * k + 2383180 := by
    unfold C
    simp [show (3538944 * k + 794393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2383180) = 5308416 * k + 1191590 := by
    unfold C
    simp [show (10616832 * k + 2383180) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1191590) = 2654208 * k + 595795 := by
    unfold C
    simp [show (5308416 * k + 1191590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 595795) = 7962624 * k + 1787386 := by
    unfold C
    simp [show (2654208 * k + 595795) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1787386) = 3981312 * k + 893693 := by
    unfold C
    simp [show (7962624 * k + 1787386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 893693) = 11943936 * k + 2681080 := by
    unfold C
    simp [show (3981312 * k + 893693) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2681080) = 5971968 * k + 1340540 := by
    unfold C
    simp [show (11943936 * k + 2681080) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1340540) = 2985984 * k + 670270 := by
    unfold C
    simp [show (5971968 * k + 1340540) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 670270) = 1492992 * k + 335135 := by
    unfold C
    simp [show (2985984 * k + 670270) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 335135) = 4478976 * k + 1005406 := by
    unfold C
    simp [show (1492992 * k + 335135) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1005406) = 2239488 * k + 502703 := by
    unfold C
    simp [show (4478976 * k + 1005406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 502703) = 6718464 * k + 1508110 := by
    unfold C
    simp [show (2239488 * k + 502703) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1508110) = 3359232 * k + 754055 := by
    unfold C
    simp [show (6718464 * k + 1508110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 754055) = 10077696 * k + 2262166 := by
    unfold C
    simp [show (3359232 * k + 754055) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2262166) = 5038848 * k + 1131083 := by
    unfold C
    simp [show (10077696 * k + 2262166) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1131083) = 15116544 * k + 3393250 := by
    unfold C
    simp [show (5038848 * k + 1131083) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3393250) = 7558272 * k + 1696625 := by
    unfold C
    simp [show (15116544 * k + 3393250) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1696625) = 22674816 * k + 5089876 := by
    unfold C
    simp [show (7558272 * k + 1696625) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5089876) = 11337408 * k + 2544938 := by
    unfold C
    simp [show (22674816 * k + 5089876) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2544938) = 5668704 * k + 1272469 := by
    unfold C
    simp [show (11337408 * k + 2544938) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1272469) = 17006112 * k + 3817408 := by
    unfold C
    simp [show (5668704 * k + 1272469) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3817408) = 8503056 * k + 1908704 := by
    unfold C
    simp [show (17006112 * k + 3817408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1908704) = 4251528 * k + 954352 := by
    unfold C
    simp [show (8503056 * k + 1908704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 954352) = 2125764 * k + 477176 := by
    unfold C
    simp [show (4251528 * k + 954352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 477176) = 1062882 * k + 238588 := by
    unfold C
    simp [show (2125764 * k + 477176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 238588) = 531441 * k + 119294 := by
    unfold C
    simp [show (1062882 * k + 238588) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 235375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 235375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_235391 : ∀ k : Nat,
    iterate (1048576 * k + 235391) 32 = 531441 * k + 119302 ∧
      531441 * k + 119302 < 1048576 * k + 235391 := by
  intro k
  have h1 : C (1048576 * k + 235391) = 3145728 * k + 706174 := by
    unfold C
    simp [show (1048576 * k + 235391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 706174) = 1572864 * k + 353087 := by
    unfold C
    simp [show (3145728 * k + 706174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 353087) = 4718592 * k + 1059262 := by
    unfold C
    simp [show (1572864 * k + 353087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1059262) = 2359296 * k + 529631 := by
    unfold C
    simp [show (4718592 * k + 1059262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 529631) = 7077888 * k + 1588894 := by
    unfold C
    simp [show (2359296 * k + 529631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1588894) = 3538944 * k + 794447 := by
    unfold C
    simp [show (7077888 * k + 1588894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 794447) = 10616832 * k + 2383342 := by
    unfold C
    simp [show (3538944 * k + 794447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2383342) = 5308416 * k + 1191671 := by
    unfold C
    simp [show (10616832 * k + 2383342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1191671) = 15925248 * k + 3575014 := by
    unfold C
    simp [show (5308416 * k + 1191671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3575014) = 7962624 * k + 1787507 := by
    unfold C
    simp [show (15925248 * k + 3575014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1787507) = 23887872 * k + 5362522 := by
    unfold C
    simp [show (7962624 * k + 1787507) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5362522) = 11943936 * k + 2681261 := by
    unfold C
    simp [show (23887872 * k + 5362522) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2681261) = 35831808 * k + 8043784 := by
    unfold C
    simp [show (11943936 * k + 2681261) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8043784) = 17915904 * k + 4021892 := by
    unfold C
    simp [show (35831808 * k + 8043784) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4021892) = 8957952 * k + 2010946 := by
    unfold C
    simp [show (17915904 * k + 4021892) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2010946) = 4478976 * k + 1005473 := by
    unfold C
    simp [show (8957952 * k + 2010946) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1005473) = 13436928 * k + 3016420 := by
    unfold C
    simp [show (4478976 * k + 1005473) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3016420) = 6718464 * k + 1508210 := by
    unfold C
    simp [show (13436928 * k + 3016420) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1508210) = 3359232 * k + 754105 := by
    unfold C
    simp [show (6718464 * k + 1508210) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 754105) = 10077696 * k + 2262316 := by
    unfold C
    simp [show (3359232 * k + 754105) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2262316) = 5038848 * k + 1131158 := by
    unfold C
    simp [show (10077696 * k + 2262316) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1131158) = 2519424 * k + 565579 := by
    unfold C
    simp [show (5038848 * k + 1131158) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 565579) = 7558272 * k + 1696738 := by
    unfold C
    simp [show (2519424 * k + 565579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1696738) = 3779136 * k + 848369 := by
    unfold C
    simp [show (7558272 * k + 1696738) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 848369) = 11337408 * k + 2545108 := by
    unfold C
    simp [show (3779136 * k + 848369) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2545108) = 5668704 * k + 1272554 := by
    unfold C
    simp [show (11337408 * k + 2545108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1272554) = 2834352 * k + 636277 := by
    unfold C
    simp [show (5668704 * k + 1272554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 636277) = 8503056 * k + 1908832 := by
    unfold C
    simp [show (2834352 * k + 636277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1908832) = 4251528 * k + 954416 := by
    unfold C
    simp [show (8503056 * k + 1908832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 954416) = 2125764 * k + 477208 := by
    unfold C
    simp [show (4251528 * k + 954416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 477208) = 1062882 * k + 238604 := by
    unfold C
    simp [show (2125764 * k + 477208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 238604) = 531441 * k + 119302 := by
    unfold C
    simp [show (1062882 * k + 238604) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 235391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 235391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_235487 : ∀ k : Nat,
    iterate (1048576 * k + 235487) 32 = 531441 * k + 119351 ∧
      531441 * k + 119351 < 1048576 * k + 235487 := by
  intro k
  have h1 : C (1048576 * k + 235487) = 3145728 * k + 706462 := by
    unfold C
    simp [show (1048576 * k + 235487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 706462) = 1572864 * k + 353231 := by
    unfold C
    simp [show (3145728 * k + 706462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 353231) = 4718592 * k + 1059694 := by
    unfold C
    simp [show (1572864 * k + 353231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1059694) = 2359296 * k + 529847 := by
    unfold C
    simp [show (4718592 * k + 1059694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 529847) = 7077888 * k + 1589542 := by
    unfold C
    simp [show (2359296 * k + 529847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1589542) = 3538944 * k + 794771 := by
    unfold C
    simp [show (7077888 * k + 1589542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 794771) = 10616832 * k + 2384314 := by
    unfold C
    simp [show (3538944 * k + 794771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2384314) = 5308416 * k + 1192157 := by
    unfold C
    simp [show (10616832 * k + 2384314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1192157) = 15925248 * k + 3576472 := by
    unfold C
    simp [show (5308416 * k + 1192157) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3576472) = 7962624 * k + 1788236 := by
    unfold C
    simp [show (15925248 * k + 3576472) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1788236) = 3981312 * k + 894118 := by
    unfold C
    simp [show (7962624 * k + 1788236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 894118) = 1990656 * k + 447059 := by
    unfold C
    simp [show (3981312 * k + 894118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 447059) = 5971968 * k + 1341178 := by
    unfold C
    simp [show (1990656 * k + 447059) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1341178) = 2985984 * k + 670589 := by
    unfold C
    simp [show (5971968 * k + 1341178) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 670589) = 8957952 * k + 2011768 := by
    unfold C
    simp [show (2985984 * k + 670589) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2011768) = 4478976 * k + 1005884 := by
    unfold C
    simp [show (8957952 * k + 2011768) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1005884) = 2239488 * k + 502942 := by
    unfold C
    simp [show (4478976 * k + 1005884) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 502942) = 1119744 * k + 251471 := by
    unfold C
    simp [show (2239488 * k + 502942) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 251471) = 3359232 * k + 754414 := by
    unfold C
    simp [show (1119744 * k + 251471) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 754414) = 1679616 * k + 377207 := by
    unfold C
    simp [show (3359232 * k + 754414) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 377207) = 5038848 * k + 1131622 := by
    unfold C
    simp [show (1679616 * k + 377207) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1131622) = 2519424 * k + 565811 := by
    unfold C
    simp [show (5038848 * k + 1131622) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 565811) = 7558272 * k + 1697434 := by
    unfold C
    simp [show (2519424 * k + 565811) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1697434) = 3779136 * k + 848717 := by
    unfold C
    simp [show (7558272 * k + 1697434) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 848717) = 11337408 * k + 2546152 := by
    unfold C
    simp [show (3779136 * k + 848717) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2546152) = 5668704 * k + 1273076 := by
    unfold C
    simp [show (11337408 * k + 2546152) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1273076) = 2834352 * k + 636538 := by
    unfold C
    simp [show (5668704 * k + 1273076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 636538) = 1417176 * k + 318269 := by
    unfold C
    simp [show (2834352 * k + 636538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 318269) = 4251528 * k + 954808 := by
    unfold C
    simp [show (1417176 * k + 318269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 954808) = 2125764 * k + 477404 := by
    unfold C
    simp [show (4251528 * k + 954808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 477404) = 1062882 * k + 238702 := by
    unfold C
    simp [show (2125764 * k + 477404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 238702) = 531441 * k + 119351 := by
    unfold C
    simp [show (1062882 * k + 238702) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 235487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 235487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_236079 : ∀ k : Nat,
    iterate (1048576 * k + 236079) 32 = 531441 * k + 119651 ∧
      531441 * k + 119651 < 1048576 * k + 236079 := by
  intro k
  have h1 : C (1048576 * k + 236079) = 3145728 * k + 708238 := by
    unfold C
    simp [show (1048576 * k + 236079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 708238) = 1572864 * k + 354119 := by
    unfold C
    simp [show (3145728 * k + 708238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 354119) = 4718592 * k + 1062358 := by
    unfold C
    simp [show (1572864 * k + 354119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1062358) = 2359296 * k + 531179 := by
    unfold C
    simp [show (4718592 * k + 1062358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 531179) = 7077888 * k + 1593538 := by
    unfold C
    simp [show (2359296 * k + 531179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1593538) = 3538944 * k + 796769 := by
    unfold C
    simp [show (7077888 * k + 1593538) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 796769) = 10616832 * k + 2390308 := by
    unfold C
    simp [show (3538944 * k + 796769) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2390308) = 5308416 * k + 1195154 := by
    unfold C
    simp [show (10616832 * k + 2390308) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1195154) = 2654208 * k + 597577 := by
    unfold C
    simp [show (5308416 * k + 1195154) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 597577) = 7962624 * k + 1792732 := by
    unfold C
    simp [show (2654208 * k + 597577) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1792732) = 3981312 * k + 896366 := by
    unfold C
    simp [show (7962624 * k + 1792732) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 896366) = 1990656 * k + 448183 := by
    unfold C
    simp [show (3981312 * k + 896366) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 448183) = 5971968 * k + 1344550 := by
    unfold C
    simp [show (1990656 * k + 448183) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1344550) = 2985984 * k + 672275 := by
    unfold C
    simp [show (5971968 * k + 1344550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 672275) = 8957952 * k + 2016826 := by
    unfold C
    simp [show (2985984 * k + 672275) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2016826) = 4478976 * k + 1008413 := by
    unfold C
    simp [show (8957952 * k + 2016826) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1008413) = 13436928 * k + 3025240 := by
    unfold C
    simp [show (4478976 * k + 1008413) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3025240) = 6718464 * k + 1512620 := by
    unfold C
    simp [show (13436928 * k + 3025240) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1512620) = 3359232 * k + 756310 := by
    unfold C
    simp [show (6718464 * k + 1512620) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 756310) = 1679616 * k + 378155 := by
    unfold C
    simp [show (3359232 * k + 756310) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 378155) = 5038848 * k + 1134466 := by
    unfold C
    simp [show (1679616 * k + 378155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1134466) = 2519424 * k + 567233 := by
    unfold C
    simp [show (5038848 * k + 1134466) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 567233) = 7558272 * k + 1701700 := by
    unfold C
    simp [show (2519424 * k + 567233) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1701700) = 3779136 * k + 850850 := by
    unfold C
    simp [show (7558272 * k + 1701700) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 850850) = 1889568 * k + 425425 := by
    unfold C
    simp [show (3779136 * k + 850850) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 425425) = 5668704 * k + 1276276 := by
    unfold C
    simp [show (1889568 * k + 425425) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1276276) = 2834352 * k + 638138 := by
    unfold C
    simp [show (5668704 * k + 1276276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 638138) = 1417176 * k + 319069 := by
    unfold C
    simp [show (2834352 * k + 638138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 319069) = 4251528 * k + 957208 := by
    unfold C
    simp [show (1417176 * k + 319069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 957208) = 2125764 * k + 478604 := by
    unfold C
    simp [show (4251528 * k + 957208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 478604) = 1062882 * k + 239302 := by
    unfold C
    simp [show (2125764 * k + 478604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 239302) = 531441 * k + 119651 := by
    unfold C
    simp [show (1062882 * k + 239302) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 236079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 236079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_236239 : ∀ k : Nat,
    iterate (1048576 * k + 236239) 32 = 531441 * k + 119732 ∧
      531441 * k + 119732 < 1048576 * k + 236239 := by
  intro k
  have h1 : C (1048576 * k + 236239) = 3145728 * k + 708718 := by
    unfold C
    simp [show (1048576 * k + 236239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 708718) = 1572864 * k + 354359 := by
    unfold C
    simp [show (3145728 * k + 708718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 354359) = 4718592 * k + 1063078 := by
    unfold C
    simp [show (1572864 * k + 354359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1063078) = 2359296 * k + 531539 := by
    unfold C
    simp [show (4718592 * k + 1063078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 531539) = 7077888 * k + 1594618 := by
    unfold C
    simp [show (2359296 * k + 531539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1594618) = 3538944 * k + 797309 := by
    unfold C
    simp [show (7077888 * k + 1594618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 797309) = 10616832 * k + 2391928 := by
    unfold C
    simp [show (3538944 * k + 797309) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2391928) = 5308416 * k + 1195964 := by
    unfold C
    simp [show (10616832 * k + 2391928) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1195964) = 2654208 * k + 597982 := by
    unfold C
    simp [show (5308416 * k + 1195964) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 597982) = 1327104 * k + 298991 := by
    unfold C
    simp [show (2654208 * k + 597982) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 298991) = 3981312 * k + 896974 := by
    unfold C
    simp [show (1327104 * k + 298991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 896974) = 1990656 * k + 448487 := by
    unfold C
    simp [show (3981312 * k + 896974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 448487) = 5971968 * k + 1345462 := by
    unfold C
    simp [show (1990656 * k + 448487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1345462) = 2985984 * k + 672731 := by
    unfold C
    simp [show (5971968 * k + 1345462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 672731) = 8957952 * k + 2018194 := by
    unfold C
    simp [show (2985984 * k + 672731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2018194) = 4478976 * k + 1009097 := by
    unfold C
    simp [show (8957952 * k + 2018194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1009097) = 13436928 * k + 3027292 := by
    unfold C
    simp [show (4478976 * k + 1009097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3027292) = 6718464 * k + 1513646 := by
    unfold C
    simp [show (13436928 * k + 3027292) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1513646) = 3359232 * k + 756823 := by
    unfold C
    simp [show (6718464 * k + 1513646) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 756823) = 10077696 * k + 2270470 := by
    unfold C
    simp [show (3359232 * k + 756823) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2270470) = 5038848 * k + 1135235 := by
    unfold C
    simp [show (10077696 * k + 2270470) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1135235) = 15116544 * k + 3405706 := by
    unfold C
    simp [show (5038848 * k + 1135235) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3405706) = 7558272 * k + 1702853 := by
    unfold C
    simp [show (15116544 * k + 3405706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1702853) = 22674816 * k + 5108560 := by
    unfold C
    simp [show (7558272 * k + 1702853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5108560) = 11337408 * k + 2554280 := by
    unfold C
    simp [show (22674816 * k + 5108560) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2554280) = 5668704 * k + 1277140 := by
    unfold C
    simp [show (11337408 * k + 2554280) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1277140) = 2834352 * k + 638570 := by
    unfold C
    simp [show (5668704 * k + 1277140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 638570) = 1417176 * k + 319285 := by
    unfold C
    simp [show (2834352 * k + 638570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 319285) = 4251528 * k + 957856 := by
    unfold C
    simp [show (1417176 * k + 319285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 957856) = 2125764 * k + 478928 := by
    unfold C
    simp [show (4251528 * k + 957856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 478928) = 1062882 * k + 239464 := by
    unfold C
    simp [show (2125764 * k + 478928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 239464) = 531441 * k + 119732 := by
    unfold C
    simp [show (1062882 * k + 239464) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 236239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 236239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_236391 : ∀ k : Nat,
    iterate (1048576 * k + 236391) 32 = 531441 * k + 119809 ∧
      531441 * k + 119809 < 1048576 * k + 236391 := by
  intro k
  have h1 : C (1048576 * k + 236391) = 3145728 * k + 709174 := by
    unfold C
    simp [show (1048576 * k + 236391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 709174) = 1572864 * k + 354587 := by
    unfold C
    simp [show (3145728 * k + 709174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 354587) = 4718592 * k + 1063762 := by
    unfold C
    simp [show (1572864 * k + 354587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1063762) = 2359296 * k + 531881 := by
    unfold C
    simp [show (4718592 * k + 1063762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 531881) = 7077888 * k + 1595644 := by
    unfold C
    simp [show (2359296 * k + 531881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1595644) = 3538944 * k + 797822 := by
    unfold C
    simp [show (7077888 * k + 1595644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 797822) = 1769472 * k + 398911 := by
    unfold C
    simp [show (3538944 * k + 797822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 398911) = 5308416 * k + 1196734 := by
    unfold C
    simp [show (1769472 * k + 398911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1196734) = 2654208 * k + 598367 := by
    unfold C
    simp [show (5308416 * k + 1196734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 598367) = 7962624 * k + 1795102 := by
    unfold C
    simp [show (2654208 * k + 598367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1795102) = 3981312 * k + 897551 := by
    unfold C
    simp [show (7962624 * k + 1795102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 897551) = 11943936 * k + 2692654 := by
    unfold C
    simp [show (3981312 * k + 897551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2692654) = 5971968 * k + 1346327 := by
    unfold C
    simp [show (11943936 * k + 2692654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1346327) = 17915904 * k + 4038982 := by
    unfold C
    simp [show (5971968 * k + 1346327) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4038982) = 8957952 * k + 2019491 := by
    unfold C
    simp [show (17915904 * k + 4038982) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2019491) = 26873856 * k + 6058474 := by
    unfold C
    simp [show (8957952 * k + 2019491) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6058474) = 13436928 * k + 3029237 := by
    unfold C
    simp [show (26873856 * k + 6058474) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3029237) = 40310784 * k + 9087712 := by
    unfold C
    simp [show (13436928 * k + 3029237) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9087712) = 20155392 * k + 4543856 := by
    unfold C
    simp [show (40310784 * k + 9087712) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4543856) = 10077696 * k + 2271928 := by
    unfold C
    simp [show (20155392 * k + 4543856) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2271928) = 5038848 * k + 1135964 := by
    unfold C
    simp [show (10077696 * k + 2271928) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1135964) = 2519424 * k + 567982 := by
    unfold C
    simp [show (5038848 * k + 1135964) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 567982) = 1259712 * k + 283991 := by
    unfold C
    simp [show (2519424 * k + 567982) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 283991) = 3779136 * k + 851974 := by
    unfold C
    simp [show (1259712 * k + 283991) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 851974) = 1889568 * k + 425987 := by
    unfold C
    simp [show (3779136 * k + 851974) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 425987) = 5668704 * k + 1277962 := by
    unfold C
    simp [show (1889568 * k + 425987) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1277962) = 2834352 * k + 638981 := by
    unfold C
    simp [show (5668704 * k + 1277962) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 638981) = 8503056 * k + 1916944 := by
    unfold C
    simp [show (2834352 * k + 638981) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1916944) = 4251528 * k + 958472 := by
    unfold C
    simp [show (8503056 * k + 1916944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 958472) = 2125764 * k + 479236 := by
    unfold C
    simp [show (4251528 * k + 958472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 479236) = 1062882 * k + 239618 := by
    unfold C
    simp [show (2125764 * k + 479236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 239618) = 531441 * k + 119809 := by
    unfold C
    simp [show (1062882 * k + 239618) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 236391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 236391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_237979 : ∀ k : Nat,
    iterate (1048576 * k + 237979) 32 = 531441 * k + 120614 ∧
      531441 * k + 120614 < 1048576 * k + 237979 := by
  intro k
  have h1 : C (1048576 * k + 237979) = 3145728 * k + 713938 := by
    unfold C
    simp [show (1048576 * k + 237979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 713938) = 1572864 * k + 356969 := by
    unfold C
    simp [show (3145728 * k + 713938) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 356969) = 4718592 * k + 1070908 := by
    unfold C
    simp [show (1572864 * k + 356969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1070908) = 2359296 * k + 535454 := by
    unfold C
    simp [show (4718592 * k + 1070908) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 535454) = 1179648 * k + 267727 := by
    unfold C
    simp [show (2359296 * k + 535454) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 267727) = 3538944 * k + 803182 := by
    unfold C
    simp [show (1179648 * k + 267727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 803182) = 1769472 * k + 401591 := by
    unfold C
    simp [show (3538944 * k + 803182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 401591) = 5308416 * k + 1204774 := by
    unfold C
    simp [show (1769472 * k + 401591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1204774) = 2654208 * k + 602387 := by
    unfold C
    simp [show (5308416 * k + 1204774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 602387) = 7962624 * k + 1807162 := by
    unfold C
    simp [show (2654208 * k + 602387) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1807162) = 3981312 * k + 903581 := by
    unfold C
    simp [show (7962624 * k + 1807162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 903581) = 11943936 * k + 2710744 := by
    unfold C
    simp [show (3981312 * k + 903581) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2710744) = 5971968 * k + 1355372 := by
    unfold C
    simp [show (11943936 * k + 2710744) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1355372) = 2985984 * k + 677686 := by
    unfold C
    simp [show (5971968 * k + 1355372) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 677686) = 1492992 * k + 338843 := by
    unfold C
    simp [show (2985984 * k + 677686) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 338843) = 4478976 * k + 1016530 := by
    unfold C
    simp [show (1492992 * k + 338843) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1016530) = 2239488 * k + 508265 := by
    unfold C
    simp [show (4478976 * k + 1016530) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 508265) = 6718464 * k + 1524796 := by
    unfold C
    simp [show (2239488 * k + 508265) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1524796) = 3359232 * k + 762398 := by
    unfold C
    simp [show (6718464 * k + 1524796) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 762398) = 1679616 * k + 381199 := by
    unfold C
    simp [show (3359232 * k + 762398) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 381199) = 5038848 * k + 1143598 := by
    unfold C
    simp [show (1679616 * k + 381199) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1143598) = 2519424 * k + 571799 := by
    unfold C
    simp [show (5038848 * k + 1143598) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 571799) = 7558272 * k + 1715398 := by
    unfold C
    simp [show (2519424 * k + 571799) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1715398) = 3779136 * k + 857699 := by
    unfold C
    simp [show (7558272 * k + 1715398) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 857699) = 11337408 * k + 2573098 := by
    unfold C
    simp [show (3779136 * k + 857699) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2573098) = 5668704 * k + 1286549 := by
    unfold C
    simp [show (11337408 * k + 2573098) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1286549) = 17006112 * k + 3859648 := by
    unfold C
    simp [show (5668704 * k + 1286549) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3859648) = 8503056 * k + 1929824 := by
    unfold C
    simp [show (17006112 * k + 3859648) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1929824) = 4251528 * k + 964912 := by
    unfold C
    simp [show (8503056 * k + 1929824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 964912) = 2125764 * k + 482456 := by
    unfold C
    simp [show (4251528 * k + 964912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 482456) = 1062882 * k + 241228 := by
    unfold C
    simp [show (2125764 * k + 482456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 241228) = 531441 * k + 120614 := by
    unfold C
    simp [show (1062882 * k + 241228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 237979) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 237979)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_238335 : ∀ k : Nat,
    iterate (1048576 * k + 238335) 32 = 531441 * k + 120794 ∧
      531441 * k + 120794 < 1048576 * k + 238335 := by
  intro k
  have h1 : C (1048576 * k + 238335) = 3145728 * k + 715006 := by
    unfold C
    simp [show (1048576 * k + 238335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 715006) = 1572864 * k + 357503 := by
    unfold C
    simp [show (3145728 * k + 715006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 357503) = 4718592 * k + 1072510 := by
    unfold C
    simp [show (1572864 * k + 357503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1072510) = 2359296 * k + 536255 := by
    unfold C
    simp [show (4718592 * k + 1072510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 536255) = 7077888 * k + 1608766 := by
    unfold C
    simp [show (2359296 * k + 536255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1608766) = 3538944 * k + 804383 := by
    unfold C
    simp [show (7077888 * k + 1608766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 804383) = 10616832 * k + 2413150 := by
    unfold C
    simp [show (3538944 * k + 804383) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2413150) = 5308416 * k + 1206575 := by
    unfold C
    simp [show (10616832 * k + 2413150) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1206575) = 15925248 * k + 3619726 := by
    unfold C
    simp [show (5308416 * k + 1206575) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3619726) = 7962624 * k + 1809863 := by
    unfold C
    simp [show (15925248 * k + 3619726) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1809863) = 23887872 * k + 5429590 := by
    unfold C
    simp [show (7962624 * k + 1809863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 5429590) = 11943936 * k + 2714795 := by
    unfold C
    simp [show (23887872 * k + 5429590) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2714795) = 35831808 * k + 8144386 := by
    unfold C
    simp [show (11943936 * k + 2714795) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 8144386) = 17915904 * k + 4072193 := by
    unfold C
    simp [show (35831808 * k + 8144386) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4072193) = 53747712 * k + 12216580 := by
    unfold C
    simp [show (17915904 * k + 4072193) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 12216580) = 26873856 * k + 6108290 := by
    unfold C
    simp [show (53747712 * k + 12216580) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 6108290) = 13436928 * k + 3054145 := by
    unfold C
    simp [show (26873856 * k + 6108290) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3054145) = 40310784 * k + 9162436 := by
    unfold C
    simp [show (13436928 * k + 3054145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 9162436) = 20155392 * k + 4581218 := by
    unfold C
    simp [show (40310784 * k + 9162436) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 4581218) = 10077696 * k + 2290609 := by
    unfold C
    simp [show (20155392 * k + 4581218) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2290609) = 30233088 * k + 6871828 := by
    unfold C
    simp [show (10077696 * k + 2290609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6871828) = 15116544 * k + 3435914 := by
    unfold C
    simp [show (30233088 * k + 6871828) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3435914) = 7558272 * k + 1717957 := by
    unfold C
    simp [show (15116544 * k + 3435914) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1717957) = 22674816 * k + 5153872 := by
    unfold C
    simp [show (7558272 * k + 1717957) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5153872) = 11337408 * k + 2576936 := by
    unfold C
    simp [show (22674816 * k + 5153872) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2576936) = 5668704 * k + 1288468 := by
    unfold C
    simp [show (11337408 * k + 2576936) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1288468) = 2834352 * k + 644234 := by
    unfold C
    simp [show (5668704 * k + 1288468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 644234) = 1417176 * k + 322117 := by
    unfold C
    simp [show (2834352 * k + 644234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 322117) = 4251528 * k + 966352 := by
    unfold C
    simp [show (1417176 * k + 322117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 966352) = 2125764 * k + 483176 := by
    unfold C
    simp [show (4251528 * k + 966352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 483176) = 1062882 * k + 241588 := by
    unfold C
    simp [show (2125764 * k + 483176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 241588) = 531441 * k + 120794 := by
    unfold C
    simp [show (1062882 * k + 241588) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 238335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 238335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_238575 : ∀ k : Nat,
    iterate (1048576 * k + 238575) 32 = 531441 * k + 120916 ∧
      531441 * k + 120916 < 1048576 * k + 238575 := by
  intro k
  have h1 : C (1048576 * k + 238575) = 3145728 * k + 715726 := by
    unfold C
    simp [show (1048576 * k + 238575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 715726) = 1572864 * k + 357863 := by
    unfold C
    simp [show (3145728 * k + 715726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 357863) = 4718592 * k + 1073590 := by
    unfold C
    simp [show (1572864 * k + 357863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1073590) = 2359296 * k + 536795 := by
    unfold C
    simp [show (4718592 * k + 1073590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 536795) = 7077888 * k + 1610386 := by
    unfold C
    simp [show (2359296 * k + 536795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1610386) = 3538944 * k + 805193 := by
    unfold C
    simp [show (7077888 * k + 1610386) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 805193) = 10616832 * k + 2415580 := by
    unfold C
    simp [show (3538944 * k + 805193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2415580) = 5308416 * k + 1207790 := by
    unfold C
    simp [show (10616832 * k + 2415580) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1207790) = 2654208 * k + 603895 := by
    unfold C
    simp [show (5308416 * k + 1207790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 603895) = 7962624 * k + 1811686 := by
    unfold C
    simp [show (2654208 * k + 603895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1811686) = 3981312 * k + 905843 := by
    unfold C
    simp [show (7962624 * k + 1811686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 905843) = 11943936 * k + 2717530 := by
    unfold C
    simp [show (3981312 * k + 905843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2717530) = 5971968 * k + 1358765 := by
    unfold C
    simp [show (11943936 * k + 2717530) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1358765) = 17915904 * k + 4076296 := by
    unfold C
    simp [show (5971968 * k + 1358765) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4076296) = 8957952 * k + 2038148 := by
    unfold C
    simp [show (17915904 * k + 4076296) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2038148) = 4478976 * k + 1019074 := by
    unfold C
    simp [show (8957952 * k + 2038148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1019074) = 2239488 * k + 509537 := by
    unfold C
    simp [show (4478976 * k + 1019074) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 509537) = 6718464 * k + 1528612 := by
    unfold C
    simp [show (2239488 * k + 509537) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1528612) = 3359232 * k + 764306 := by
    unfold C
    simp [show (6718464 * k + 1528612) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 764306) = 1679616 * k + 382153 := by
    unfold C
    simp [show (3359232 * k + 764306) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 382153) = 5038848 * k + 1146460 := by
    unfold C
    simp [show (1679616 * k + 382153) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1146460) = 2519424 * k + 573230 := by
    unfold C
    simp [show (5038848 * k + 1146460) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 573230) = 1259712 * k + 286615 := by
    unfold C
    simp [show (2519424 * k + 573230) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 286615) = 3779136 * k + 859846 := by
    unfold C
    simp [show (1259712 * k + 286615) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 859846) = 1889568 * k + 429923 := by
    unfold C
    simp [show (3779136 * k + 859846) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 429923) = 5668704 * k + 1289770 := by
    unfold C
    simp [show (1889568 * k + 429923) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1289770) = 2834352 * k + 644885 := by
    unfold C
    simp [show (5668704 * k + 1289770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 644885) = 8503056 * k + 1934656 := by
    unfold C
    simp [show (2834352 * k + 644885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1934656) = 4251528 * k + 967328 := by
    unfold C
    simp [show (8503056 * k + 1934656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 967328) = 2125764 * k + 483664 := by
    unfold C
    simp [show (4251528 * k + 967328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 483664) = 1062882 * k + 241832 := by
    unfold C
    simp [show (2125764 * k + 483664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 241832) = 531441 * k + 120916 := by
    unfold C
    simp [show (1062882 * k + 241832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 238575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 238575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_238623 : ∀ k : Nat,
    iterate (1048576 * k + 238623) 32 = 531441 * k + 120940 ∧
      531441 * k + 120940 < 1048576 * k + 238623 := by
  intro k
  have h1 : C (1048576 * k + 238623) = 3145728 * k + 715870 := by
    unfold C
    simp [show (1048576 * k + 238623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 715870) = 1572864 * k + 357935 := by
    unfold C
    simp [show (3145728 * k + 715870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 357935) = 4718592 * k + 1073806 := by
    unfold C
    simp [show (1572864 * k + 357935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1073806) = 2359296 * k + 536903 := by
    unfold C
    simp [show (4718592 * k + 1073806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 536903) = 7077888 * k + 1610710 := by
    unfold C
    simp [show (2359296 * k + 536903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1610710) = 3538944 * k + 805355 := by
    unfold C
    simp [show (7077888 * k + 1610710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 805355) = 10616832 * k + 2416066 := by
    unfold C
    simp [show (3538944 * k + 805355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2416066) = 5308416 * k + 1208033 := by
    unfold C
    simp [show (10616832 * k + 2416066) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1208033) = 15925248 * k + 3624100 := by
    unfold C
    simp [show (5308416 * k + 1208033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3624100) = 7962624 * k + 1812050 := by
    unfold C
    simp [show (15925248 * k + 3624100) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1812050) = 3981312 * k + 906025 := by
    unfold C
    simp [show (7962624 * k + 1812050) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 906025) = 11943936 * k + 2718076 := by
    unfold C
    simp [show (3981312 * k + 906025) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2718076) = 5971968 * k + 1359038 := by
    unfold C
    simp [show (11943936 * k + 2718076) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1359038) = 2985984 * k + 679519 := by
    unfold C
    simp [show (5971968 * k + 1359038) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 679519) = 8957952 * k + 2038558 := by
    unfold C
    simp [show (2985984 * k + 679519) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2038558) = 4478976 * k + 1019279 := by
    unfold C
    simp [show (8957952 * k + 2038558) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1019279) = 13436928 * k + 3057838 := by
    unfold C
    simp [show (4478976 * k + 1019279) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3057838) = 6718464 * k + 1528919 := by
    unfold C
    simp [show (13436928 * k + 3057838) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1528919) = 20155392 * k + 4586758 := by
    unfold C
    simp [show (6718464 * k + 1528919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 4586758) = 10077696 * k + 2293379 := by
    unfold C
    simp [show (20155392 * k + 4586758) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2293379) = 30233088 * k + 6880138 := by
    unfold C
    simp [show (10077696 * k + 2293379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 6880138) = 15116544 * k + 3440069 := by
    unfold C
    simp [show (30233088 * k + 6880138) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3440069) = 45349632 * k + 10320208 := by
    unfold C
    simp [show (15116544 * k + 3440069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 10320208) = 22674816 * k + 5160104 := by
    unfold C
    simp [show (45349632 * k + 10320208) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5160104) = 11337408 * k + 2580052 := by
    unfold C
    simp [show (22674816 * k + 5160104) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2580052) = 5668704 * k + 1290026 := by
    unfold C
    simp [show (11337408 * k + 2580052) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1290026) = 2834352 * k + 645013 := by
    unfold C
    simp [show (5668704 * k + 1290026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 645013) = 8503056 * k + 1935040 := by
    unfold C
    simp [show (2834352 * k + 645013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1935040) = 4251528 * k + 967520 := by
    unfold C
    simp [show (8503056 * k + 1935040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 967520) = 2125764 * k + 483760 := by
    unfold C
    simp [show (4251528 * k + 967520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 483760) = 1062882 * k + 241880 := by
    unfold C
    simp [show (2125764 * k + 483760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 241880) = 531441 * k + 120940 := by
    unfold C
    simp [show (1062882 * k + 241880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 238623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 238623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_238843 : ∀ k : Nat,
    iterate (1048576 * k + 238843) 32 = 531441 * k + 121052 ∧
      531441 * k + 121052 < 1048576 * k + 238843 := by
  intro k
  have h1 : C (1048576 * k + 238843) = 3145728 * k + 716530 := by
    unfold C
    simp [show (1048576 * k + 238843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 716530) = 1572864 * k + 358265 := by
    unfold C
    simp [show (3145728 * k + 716530) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 358265) = 4718592 * k + 1074796 := by
    unfold C
    simp [show (1572864 * k + 358265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1074796) = 2359296 * k + 537398 := by
    unfold C
    simp [show (4718592 * k + 1074796) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 537398) = 1179648 * k + 268699 := by
    unfold C
    simp [show (2359296 * k + 537398) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 268699) = 3538944 * k + 806098 := by
    unfold C
    simp [show (1179648 * k + 268699) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 806098) = 1769472 * k + 403049 := by
    unfold C
    simp [show (3538944 * k + 806098) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 403049) = 5308416 * k + 1209148 := by
    unfold C
    simp [show (1769472 * k + 403049) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1209148) = 2654208 * k + 604574 := by
    unfold C
    simp [show (5308416 * k + 1209148) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 604574) = 1327104 * k + 302287 := by
    unfold C
    simp [show (2654208 * k + 604574) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 302287) = 3981312 * k + 906862 := by
    unfold C
    simp [show (1327104 * k + 302287) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 906862) = 1990656 * k + 453431 := by
    unfold C
    simp [show (3981312 * k + 906862) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 453431) = 5971968 * k + 1360294 := by
    unfold C
    simp [show (1990656 * k + 453431) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1360294) = 2985984 * k + 680147 := by
    unfold C
    simp [show (5971968 * k + 1360294) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 680147) = 8957952 * k + 2040442 := by
    unfold C
    simp [show (2985984 * k + 680147) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2040442) = 4478976 * k + 1020221 := by
    unfold C
    simp [show (8957952 * k + 2040442) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1020221) = 13436928 * k + 3060664 := by
    unfold C
    simp [show (4478976 * k + 1020221) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3060664) = 6718464 * k + 1530332 := by
    unfold C
    simp [show (13436928 * k + 3060664) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1530332) = 3359232 * k + 765166 := by
    unfold C
    simp [show (6718464 * k + 1530332) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 765166) = 1679616 * k + 382583 := by
    unfold C
    simp [show (3359232 * k + 765166) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 382583) = 5038848 * k + 1147750 := by
    unfold C
    simp [show (1679616 * k + 382583) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1147750) = 2519424 * k + 573875 := by
    unfold C
    simp [show (5038848 * k + 1147750) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 573875) = 7558272 * k + 1721626 := by
    unfold C
    simp [show (2519424 * k + 573875) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1721626) = 3779136 * k + 860813 := by
    unfold C
    simp [show (7558272 * k + 1721626) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 860813) = 11337408 * k + 2582440 := by
    unfold C
    simp [show (3779136 * k + 860813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2582440) = 5668704 * k + 1291220 := by
    unfold C
    simp [show (11337408 * k + 2582440) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1291220) = 2834352 * k + 645610 := by
    unfold C
    simp [show (5668704 * k + 1291220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 645610) = 1417176 * k + 322805 := by
    unfold C
    simp [show (2834352 * k + 645610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 322805) = 4251528 * k + 968416 := by
    unfold C
    simp [show (1417176 * k + 322805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 968416) = 2125764 * k + 484208 := by
    unfold C
    simp [show (4251528 * k + 968416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 484208) = 1062882 * k + 242104 := by
    unfold C
    simp [show (2125764 * k + 484208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 242104) = 531441 * k + 121052 := by
    unfold C
    simp [show (1062882 * k + 242104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 238843) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 238843)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard032
