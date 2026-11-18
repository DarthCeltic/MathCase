import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard037

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_273055 : ∀ k : Nat,
    iterate (1048576 * k + 273055) 32 = 531441 * k + 138391 ∧
      531441 * k + 138391 < 1048576 * k + 273055 := by
  intro k
  have h1 : C (1048576 * k + 273055) = 3145728 * k + 819166 := by
    unfold C
    simp [show (1048576 * k + 273055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 819166) = 1572864 * k + 409583 := by
    unfold C
    simp [show (3145728 * k + 819166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 409583) = 4718592 * k + 1228750 := by
    unfold C
    simp [show (1572864 * k + 409583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1228750) = 2359296 * k + 614375 := by
    unfold C
    simp [show (4718592 * k + 1228750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 614375) = 7077888 * k + 1843126 := by
    unfold C
    simp [show (2359296 * k + 614375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1843126) = 3538944 * k + 921563 := by
    unfold C
    simp [show (7077888 * k + 1843126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 921563) = 10616832 * k + 2764690 := by
    unfold C
    simp [show (3538944 * k + 921563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2764690) = 5308416 * k + 1382345 := by
    unfold C
    simp [show (10616832 * k + 2764690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1382345) = 15925248 * k + 4147036 := by
    unfold C
    simp [show (5308416 * k + 1382345) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4147036) = 7962624 * k + 2073518 := by
    unfold C
    simp [show (15925248 * k + 4147036) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2073518) = 3981312 * k + 1036759 := by
    unfold C
    simp [show (7962624 * k + 2073518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1036759) = 11943936 * k + 3110278 := by
    unfold C
    simp [show (3981312 * k + 1036759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3110278) = 5971968 * k + 1555139 := by
    unfold C
    simp [show (11943936 * k + 3110278) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1555139) = 17915904 * k + 4665418 := by
    unfold C
    simp [show (5971968 * k + 1555139) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4665418) = 8957952 * k + 2332709 := by
    unfold C
    simp [show (17915904 * k + 4665418) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2332709) = 26873856 * k + 6998128 := by
    unfold C
    simp [show (8957952 * k + 2332709) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6998128) = 13436928 * k + 3499064 := by
    unfold C
    simp [show (26873856 * k + 6998128) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3499064) = 6718464 * k + 1749532 := by
    unfold C
    simp [show (13436928 * k + 3499064) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1749532) = 3359232 * k + 874766 := by
    unfold C
    simp [show (6718464 * k + 1749532) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 874766) = 1679616 * k + 437383 := by
    unfold C
    simp [show (3359232 * k + 874766) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 437383) = 5038848 * k + 1312150 := by
    unfold C
    simp [show (1679616 * k + 437383) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1312150) = 2519424 * k + 656075 := by
    unfold C
    simp [show (5038848 * k + 1312150) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 656075) = 7558272 * k + 1968226 := by
    unfold C
    simp [show (2519424 * k + 656075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1968226) = 3779136 * k + 984113 := by
    unfold C
    simp [show (7558272 * k + 1968226) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 984113) = 11337408 * k + 2952340 := by
    unfold C
    simp [show (3779136 * k + 984113) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2952340) = 5668704 * k + 1476170 := by
    unfold C
    simp [show (11337408 * k + 2952340) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1476170) = 2834352 * k + 738085 := by
    unfold C
    simp [show (5668704 * k + 1476170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 738085) = 8503056 * k + 2214256 := by
    unfold C
    simp [show (2834352 * k + 738085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2214256) = 4251528 * k + 1107128 := by
    unfold C
    simp [show (8503056 * k + 2214256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1107128) = 2125764 * k + 553564 := by
    unfold C
    simp [show (4251528 * k + 1107128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 553564) = 1062882 * k + 276782 := by
    unfold C
    simp [show (2125764 * k + 553564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 276782) = 531441 * k + 138391 := by
    unfold C
    simp [show (1062882 * k + 276782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 273055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 273055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_273215 : ∀ k : Nat,
    iterate (1048576 * k + 273215) 32 = 531441 * k + 138472 ∧
      531441 * k + 138472 < 1048576 * k + 273215 := by
  intro k
  have h1 : C (1048576 * k + 273215) = 3145728 * k + 819646 := by
    unfold C
    simp [show (1048576 * k + 273215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 819646) = 1572864 * k + 409823 := by
    unfold C
    simp [show (3145728 * k + 819646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 409823) = 4718592 * k + 1229470 := by
    unfold C
    simp [show (1572864 * k + 409823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1229470) = 2359296 * k + 614735 := by
    unfold C
    simp [show (4718592 * k + 1229470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 614735) = 7077888 * k + 1844206 := by
    unfold C
    simp [show (2359296 * k + 614735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1844206) = 3538944 * k + 922103 := by
    unfold C
    simp [show (7077888 * k + 1844206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 922103) = 10616832 * k + 2766310 := by
    unfold C
    simp [show (3538944 * k + 922103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2766310) = 5308416 * k + 1383155 := by
    unfold C
    simp [show (10616832 * k + 2766310) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1383155) = 15925248 * k + 4149466 := by
    unfold C
    simp [show (5308416 * k + 1383155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4149466) = 7962624 * k + 2074733 := by
    unfold C
    simp [show (15925248 * k + 4149466) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2074733) = 23887872 * k + 6224200 := by
    unfold C
    simp [show (7962624 * k + 2074733) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6224200) = 11943936 * k + 3112100 := by
    unfold C
    simp [show (23887872 * k + 6224200) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3112100) = 5971968 * k + 1556050 := by
    unfold C
    simp [show (11943936 * k + 3112100) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1556050) = 2985984 * k + 778025 := by
    unfold C
    simp [show (5971968 * k + 1556050) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 778025) = 8957952 * k + 2334076 := by
    unfold C
    simp [show (2985984 * k + 778025) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2334076) = 4478976 * k + 1167038 := by
    unfold C
    simp [show (8957952 * k + 2334076) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1167038) = 2239488 * k + 583519 := by
    unfold C
    simp [show (4478976 * k + 1167038) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 583519) = 6718464 * k + 1750558 := by
    unfold C
    simp [show (2239488 * k + 583519) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1750558) = 3359232 * k + 875279 := by
    unfold C
    simp [show (6718464 * k + 1750558) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 875279) = 10077696 * k + 2625838 := by
    unfold C
    simp [show (3359232 * k + 875279) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2625838) = 5038848 * k + 1312919 := by
    unfold C
    simp [show (10077696 * k + 2625838) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1312919) = 15116544 * k + 3938758 := by
    unfold C
    simp [show (5038848 * k + 1312919) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3938758) = 7558272 * k + 1969379 := by
    unfold C
    simp [show (15116544 * k + 3938758) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1969379) = 22674816 * k + 5908138 := by
    unfold C
    simp [show (7558272 * k + 1969379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5908138) = 11337408 * k + 2954069 := by
    unfold C
    simp [show (22674816 * k + 5908138) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2954069) = 34012224 * k + 8862208 := by
    unfold C
    simp [show (11337408 * k + 2954069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 8862208) = 17006112 * k + 4431104 := by
    unfold C
    simp [show (34012224 * k + 8862208) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4431104) = 8503056 * k + 2215552 := by
    unfold C
    simp [show (17006112 * k + 4431104) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2215552) = 4251528 * k + 1107776 := by
    unfold C
    simp [show (8503056 * k + 2215552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1107776) = 2125764 * k + 553888 := by
    unfold C
    simp [show (4251528 * k + 1107776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 553888) = 1062882 * k + 276944 := by
    unfold C
    simp [show (2125764 * k + 553888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 276944) = 531441 * k + 138472 := by
    unfold C
    simp [show (1062882 * k + 276944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 273215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 273215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_273511 : ∀ k : Nat,
    iterate (1048576 * k + 273511) 32 = 531441 * k + 138622 ∧
      531441 * k + 138622 < 1048576 * k + 273511 := by
  intro k
  have h1 : C (1048576 * k + 273511) = 3145728 * k + 820534 := by
    unfold C
    simp [show (1048576 * k + 273511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 820534) = 1572864 * k + 410267 := by
    unfold C
    simp [show (3145728 * k + 820534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 410267) = 4718592 * k + 1230802 := by
    unfold C
    simp [show (1572864 * k + 410267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1230802) = 2359296 * k + 615401 := by
    unfold C
    simp [show (4718592 * k + 1230802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 615401) = 7077888 * k + 1846204 := by
    unfold C
    simp [show (2359296 * k + 615401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1846204) = 3538944 * k + 923102 := by
    unfold C
    simp [show (7077888 * k + 1846204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 923102) = 1769472 * k + 461551 := by
    unfold C
    simp [show (3538944 * k + 923102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 461551) = 5308416 * k + 1384654 := by
    unfold C
    simp [show (1769472 * k + 461551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1384654) = 2654208 * k + 692327 := by
    unfold C
    simp [show (5308416 * k + 1384654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 692327) = 7962624 * k + 2076982 := by
    unfold C
    simp [show (2654208 * k + 692327) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2076982) = 3981312 * k + 1038491 := by
    unfold C
    simp [show (7962624 * k + 2076982) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1038491) = 11943936 * k + 3115474 := by
    unfold C
    simp [show (3981312 * k + 1038491) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3115474) = 5971968 * k + 1557737 := by
    unfold C
    simp [show (11943936 * k + 3115474) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1557737) = 17915904 * k + 4673212 := by
    unfold C
    simp [show (5971968 * k + 1557737) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4673212) = 8957952 * k + 2336606 := by
    unfold C
    simp [show (17915904 * k + 4673212) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2336606) = 4478976 * k + 1168303 := by
    unfold C
    simp [show (8957952 * k + 2336606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1168303) = 13436928 * k + 3504910 := by
    unfold C
    simp [show (4478976 * k + 1168303) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3504910) = 6718464 * k + 1752455 := by
    unfold C
    simp [show (13436928 * k + 3504910) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1752455) = 20155392 * k + 5257366 := by
    unfold C
    simp [show (6718464 * k + 1752455) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5257366) = 10077696 * k + 2628683 := by
    unfold C
    simp [show (20155392 * k + 5257366) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2628683) = 30233088 * k + 7886050 := by
    unfold C
    simp [show (10077696 * k + 2628683) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7886050) = 15116544 * k + 3943025 := by
    unfold C
    simp [show (30233088 * k + 7886050) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3943025) = 45349632 * k + 11829076 := by
    unfold C
    simp [show (15116544 * k + 3943025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 11829076) = 22674816 * k + 5914538 := by
    unfold C
    simp [show (45349632 * k + 11829076) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5914538) = 11337408 * k + 2957269 := by
    unfold C
    simp [show (22674816 * k + 5914538) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2957269) = 34012224 * k + 8871808 := by
    unfold C
    simp [show (11337408 * k + 2957269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 8871808) = 17006112 * k + 4435904 := by
    unfold C
    simp [show (34012224 * k + 8871808) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4435904) = 8503056 * k + 2217952 := by
    unfold C
    simp [show (17006112 * k + 4435904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2217952) = 4251528 * k + 1108976 := by
    unfold C
    simp [show (8503056 * k + 2217952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1108976) = 2125764 * k + 554488 := by
    unfold C
    simp [show (4251528 * k + 1108976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 554488) = 1062882 * k + 277244 := by
    unfold C
    simp [show (2125764 * k + 554488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 277244) = 531441 * k + 138622 := by
    unfold C
    simp [show (1062882 * k + 277244) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 273511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 273511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_273735 : ∀ k : Nat,
    iterate (1048576 * k + 273735) 32 = 531441 * k + 138736 ∧
      531441 * k + 138736 < 1048576 * k + 273735 := by
  intro k
  have h1 : C (1048576 * k + 273735) = 3145728 * k + 821206 := by
    unfold C
    simp [show (1048576 * k + 273735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 821206) = 1572864 * k + 410603 := by
    unfold C
    simp [show (3145728 * k + 821206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 410603) = 4718592 * k + 1231810 := by
    unfold C
    simp [show (1572864 * k + 410603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1231810) = 2359296 * k + 615905 := by
    unfold C
    simp [show (4718592 * k + 1231810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 615905) = 7077888 * k + 1847716 := by
    unfold C
    simp [show (2359296 * k + 615905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1847716) = 3538944 * k + 923858 := by
    unfold C
    simp [show (7077888 * k + 1847716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 923858) = 1769472 * k + 461929 := by
    unfold C
    simp [show (3538944 * k + 923858) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 461929) = 5308416 * k + 1385788 := by
    unfold C
    simp [show (1769472 * k + 461929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1385788) = 2654208 * k + 692894 := by
    unfold C
    simp [show (5308416 * k + 1385788) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 692894) = 1327104 * k + 346447 := by
    unfold C
    simp [show (2654208 * k + 692894) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 346447) = 3981312 * k + 1039342 := by
    unfold C
    simp [show (1327104 * k + 346447) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1039342) = 1990656 * k + 519671 := by
    unfold C
    simp [show (3981312 * k + 1039342) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 519671) = 5971968 * k + 1559014 := by
    unfold C
    simp [show (1990656 * k + 519671) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1559014) = 2985984 * k + 779507 := by
    unfold C
    simp [show (5971968 * k + 1559014) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 779507) = 8957952 * k + 2338522 := by
    unfold C
    simp [show (2985984 * k + 779507) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2338522) = 4478976 * k + 1169261 := by
    unfold C
    simp [show (8957952 * k + 2338522) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1169261) = 13436928 * k + 3507784 := by
    unfold C
    simp [show (4478976 * k + 1169261) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3507784) = 6718464 * k + 1753892 := by
    unfold C
    simp [show (13436928 * k + 3507784) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1753892) = 3359232 * k + 876946 := by
    unfold C
    simp [show (6718464 * k + 1753892) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 876946) = 1679616 * k + 438473 := by
    unfold C
    simp [show (3359232 * k + 876946) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 438473) = 5038848 * k + 1315420 := by
    unfold C
    simp [show (1679616 * k + 438473) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1315420) = 2519424 * k + 657710 := by
    unfold C
    simp [show (5038848 * k + 1315420) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 657710) = 1259712 * k + 328855 := by
    unfold C
    simp [show (2519424 * k + 657710) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 328855) = 3779136 * k + 986566 := by
    unfold C
    simp [show (1259712 * k + 328855) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 986566) = 1889568 * k + 493283 := by
    unfold C
    simp [show (3779136 * k + 986566) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 493283) = 5668704 * k + 1479850 := by
    unfold C
    simp [show (1889568 * k + 493283) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1479850) = 2834352 * k + 739925 := by
    unfold C
    simp [show (5668704 * k + 1479850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 739925) = 8503056 * k + 2219776 := by
    unfold C
    simp [show (2834352 * k + 739925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2219776) = 4251528 * k + 1109888 := by
    unfold C
    simp [show (8503056 * k + 2219776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1109888) = 2125764 * k + 554944 := by
    unfold C
    simp [show (4251528 * k + 1109888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 554944) = 1062882 * k + 277472 := by
    unfold C
    simp [show (2125764 * k + 554944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 277472) = 531441 * k + 138736 := by
    unfold C
    simp [show (1062882 * k + 277472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 273735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 273735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_275135 : ∀ k : Nat,
    iterate (1048576 * k + 275135) 32 = 531441 * k + 139445 ∧
      531441 * k + 139445 < 1048576 * k + 275135 := by
  intro k
  have h1 : C (1048576 * k + 275135) = 3145728 * k + 825406 := by
    unfold C
    simp [show (1048576 * k + 275135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 825406) = 1572864 * k + 412703 := by
    unfold C
    simp [show (3145728 * k + 825406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 412703) = 4718592 * k + 1238110 := by
    unfold C
    simp [show (1572864 * k + 412703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1238110) = 2359296 * k + 619055 := by
    unfold C
    simp [show (4718592 * k + 1238110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 619055) = 7077888 * k + 1857166 := by
    unfold C
    simp [show (2359296 * k + 619055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1857166) = 3538944 * k + 928583 := by
    unfold C
    simp [show (7077888 * k + 1857166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 928583) = 10616832 * k + 2785750 := by
    unfold C
    simp [show (3538944 * k + 928583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2785750) = 5308416 * k + 1392875 := by
    unfold C
    simp [show (10616832 * k + 2785750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1392875) = 15925248 * k + 4178626 := by
    unfold C
    simp [show (5308416 * k + 1392875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4178626) = 7962624 * k + 2089313 := by
    unfold C
    simp [show (15925248 * k + 4178626) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2089313) = 23887872 * k + 6267940 := by
    unfold C
    simp [show (7962624 * k + 2089313) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6267940) = 11943936 * k + 3133970 := by
    unfold C
    simp [show (23887872 * k + 6267940) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3133970) = 5971968 * k + 1566985 := by
    unfold C
    simp [show (11943936 * k + 3133970) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1566985) = 17915904 * k + 4700956 := by
    unfold C
    simp [show (5971968 * k + 1566985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4700956) = 8957952 * k + 2350478 := by
    unfold C
    simp [show (17915904 * k + 4700956) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2350478) = 4478976 * k + 1175239 := by
    unfold C
    simp [show (8957952 * k + 2350478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1175239) = 13436928 * k + 3525718 := by
    unfold C
    simp [show (4478976 * k + 1175239) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3525718) = 6718464 * k + 1762859 := by
    unfold C
    simp [show (13436928 * k + 3525718) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1762859) = 20155392 * k + 5288578 := by
    unfold C
    simp [show (6718464 * k + 1762859) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5288578) = 10077696 * k + 2644289 := by
    unfold C
    simp [show (20155392 * k + 5288578) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2644289) = 30233088 * k + 7932868 := by
    unfold C
    simp [show (10077696 * k + 2644289) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7932868) = 15116544 * k + 3966434 := by
    unfold C
    simp [show (30233088 * k + 7932868) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3966434) = 7558272 * k + 1983217 := by
    unfold C
    simp [show (15116544 * k + 3966434) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1983217) = 22674816 * k + 5949652 := by
    unfold C
    simp [show (7558272 * k + 1983217) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5949652) = 11337408 * k + 2974826 := by
    unfold C
    simp [show (22674816 * k + 5949652) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2974826) = 5668704 * k + 1487413 := by
    unfold C
    simp [show (11337408 * k + 2974826) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1487413) = 17006112 * k + 4462240 := by
    unfold C
    simp [show (5668704 * k + 1487413) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4462240) = 8503056 * k + 2231120 := by
    unfold C
    simp [show (17006112 * k + 4462240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2231120) = 4251528 * k + 1115560 := by
    unfold C
    simp [show (8503056 * k + 2231120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1115560) = 2125764 * k + 557780 := by
    unfold C
    simp [show (4251528 * k + 1115560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 557780) = 1062882 * k + 278890 := by
    unfold C
    simp [show (2125764 * k + 557780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 278890) = 531441 * k + 139445 := by
    unfold C
    simp [show (1062882 * k + 278890) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 275135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 275135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_275227 : ∀ k : Nat,
    iterate (1048576 * k + 275227) 32 = 531441 * k + 139492 ∧
      531441 * k + 139492 < 1048576 * k + 275227 := by
  intro k
  have h1 : C (1048576 * k + 275227) = 3145728 * k + 825682 := by
    unfold C
    simp [show (1048576 * k + 275227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 825682) = 1572864 * k + 412841 := by
    unfold C
    simp [show (3145728 * k + 825682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 412841) = 4718592 * k + 1238524 := by
    unfold C
    simp [show (1572864 * k + 412841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1238524) = 2359296 * k + 619262 := by
    unfold C
    simp [show (4718592 * k + 1238524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 619262) = 1179648 * k + 309631 := by
    unfold C
    simp [show (2359296 * k + 619262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 309631) = 3538944 * k + 928894 := by
    unfold C
    simp [show (1179648 * k + 309631) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 928894) = 1769472 * k + 464447 := by
    unfold C
    simp [show (3538944 * k + 928894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 464447) = 5308416 * k + 1393342 := by
    unfold C
    simp [show (1769472 * k + 464447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1393342) = 2654208 * k + 696671 := by
    unfold C
    simp [show (5308416 * k + 1393342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 696671) = 7962624 * k + 2090014 := by
    unfold C
    simp [show (2654208 * k + 696671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2090014) = 3981312 * k + 1045007 := by
    unfold C
    simp [show (7962624 * k + 2090014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1045007) = 11943936 * k + 3135022 := by
    unfold C
    simp [show (3981312 * k + 1045007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3135022) = 5971968 * k + 1567511 := by
    unfold C
    simp [show (11943936 * k + 3135022) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1567511) = 17915904 * k + 4702534 := by
    unfold C
    simp [show (5971968 * k + 1567511) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4702534) = 8957952 * k + 2351267 := by
    unfold C
    simp [show (17915904 * k + 4702534) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2351267) = 26873856 * k + 7053802 := by
    unfold C
    simp [show (8957952 * k + 2351267) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7053802) = 13436928 * k + 3526901 := by
    unfold C
    simp [show (26873856 * k + 7053802) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3526901) = 40310784 * k + 10580704 := by
    unfold C
    simp [show (13436928 * k + 3526901) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10580704) = 20155392 * k + 5290352 := by
    unfold C
    simp [show (40310784 * k + 10580704) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5290352) = 10077696 * k + 2645176 := by
    unfold C
    simp [show (20155392 * k + 5290352) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2645176) = 5038848 * k + 1322588 := by
    unfold C
    simp [show (10077696 * k + 2645176) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1322588) = 2519424 * k + 661294 := by
    unfold C
    simp [show (5038848 * k + 1322588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 661294) = 1259712 * k + 330647 := by
    unfold C
    simp [show (2519424 * k + 661294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 330647) = 3779136 * k + 991942 := by
    unfold C
    simp [show (1259712 * k + 330647) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 991942) = 1889568 * k + 495971 := by
    unfold C
    simp [show (3779136 * k + 991942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 495971) = 5668704 * k + 1487914 := by
    unfold C
    simp [show (1889568 * k + 495971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1487914) = 2834352 * k + 743957 := by
    unfold C
    simp [show (5668704 * k + 1487914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 743957) = 8503056 * k + 2231872 := by
    unfold C
    simp [show (2834352 * k + 743957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2231872) = 4251528 * k + 1115936 := by
    unfold C
    simp [show (8503056 * k + 2231872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1115936) = 2125764 * k + 557968 := by
    unfold C
    simp [show (4251528 * k + 1115936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 557968) = 1062882 * k + 278984 := by
    unfold C
    simp [show (2125764 * k + 557968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 278984) = 531441 * k + 139492 := by
    unfold C
    simp [show (1062882 * k + 278984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 275227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 275227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_275559 : ∀ k : Nat,
    iterate (1048576 * k + 275559) 32 = 531441 * k + 139660 ∧
      531441 * k + 139660 < 1048576 * k + 275559 := by
  intro k
  have h1 : C (1048576 * k + 275559) = 3145728 * k + 826678 := by
    unfold C
    simp [show (1048576 * k + 275559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 826678) = 1572864 * k + 413339 := by
    unfold C
    simp [show (3145728 * k + 826678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 413339) = 4718592 * k + 1240018 := by
    unfold C
    simp [show (1572864 * k + 413339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1240018) = 2359296 * k + 620009 := by
    unfold C
    simp [show (4718592 * k + 1240018) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 620009) = 7077888 * k + 1860028 := by
    unfold C
    simp [show (2359296 * k + 620009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1860028) = 3538944 * k + 930014 := by
    unfold C
    simp [show (7077888 * k + 1860028) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 930014) = 1769472 * k + 465007 := by
    unfold C
    simp [show (3538944 * k + 930014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 465007) = 5308416 * k + 1395022 := by
    unfold C
    simp [show (1769472 * k + 465007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1395022) = 2654208 * k + 697511 := by
    unfold C
    simp [show (5308416 * k + 1395022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 697511) = 7962624 * k + 2092534 := by
    unfold C
    simp [show (2654208 * k + 697511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2092534) = 3981312 * k + 1046267 := by
    unfold C
    simp [show (7962624 * k + 2092534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1046267) = 11943936 * k + 3138802 := by
    unfold C
    simp [show (3981312 * k + 1046267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3138802) = 5971968 * k + 1569401 := by
    unfold C
    simp [show (11943936 * k + 3138802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1569401) = 17915904 * k + 4708204 := by
    unfold C
    simp [show (5971968 * k + 1569401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4708204) = 8957952 * k + 2354102 := by
    unfold C
    simp [show (17915904 * k + 4708204) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2354102) = 4478976 * k + 1177051 := by
    unfold C
    simp [show (8957952 * k + 2354102) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1177051) = 13436928 * k + 3531154 := by
    unfold C
    simp [show (4478976 * k + 1177051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3531154) = 6718464 * k + 1765577 := by
    unfold C
    simp [show (13436928 * k + 3531154) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1765577) = 20155392 * k + 5296732 := by
    unfold C
    simp [show (6718464 * k + 1765577) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5296732) = 10077696 * k + 2648366 := by
    unfold C
    simp [show (20155392 * k + 5296732) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2648366) = 5038848 * k + 1324183 := by
    unfold C
    simp [show (10077696 * k + 2648366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1324183) = 15116544 * k + 3972550 := by
    unfold C
    simp [show (5038848 * k + 1324183) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3972550) = 7558272 * k + 1986275 := by
    unfold C
    simp [show (15116544 * k + 3972550) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1986275) = 22674816 * k + 5958826 := by
    unfold C
    simp [show (7558272 * k + 1986275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5958826) = 11337408 * k + 2979413 := by
    unfold C
    simp [show (22674816 * k + 5958826) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2979413) = 34012224 * k + 8938240 := by
    unfold C
    simp [show (11337408 * k + 2979413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 8938240) = 17006112 * k + 4469120 := by
    unfold C
    simp [show (34012224 * k + 8938240) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4469120) = 8503056 * k + 2234560 := by
    unfold C
    simp [show (17006112 * k + 4469120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2234560) = 4251528 * k + 1117280 := by
    unfold C
    simp [show (8503056 * k + 2234560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1117280) = 2125764 * k + 558640 := by
    unfold C
    simp [show (4251528 * k + 1117280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 558640) = 1062882 * k + 279320 := by
    unfold C
    simp [show (2125764 * k + 558640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 279320) = 531441 * k + 139660 := by
    unfold C
    simp [show (1062882 * k + 279320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 275559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 275559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_277607 : ∀ k : Nat,
    iterate (1048576 * k + 277607) 32 = 531441 * k + 140698 ∧
      531441 * k + 140698 < 1048576 * k + 277607 := by
  intro k
  have h1 : C (1048576 * k + 277607) = 3145728 * k + 832822 := by
    unfold C
    simp [show (1048576 * k + 277607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 832822) = 1572864 * k + 416411 := by
    unfold C
    simp [show (3145728 * k + 832822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 416411) = 4718592 * k + 1249234 := by
    unfold C
    simp [show (1572864 * k + 416411) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1249234) = 2359296 * k + 624617 := by
    unfold C
    simp [show (4718592 * k + 1249234) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 624617) = 7077888 * k + 1873852 := by
    unfold C
    simp [show (2359296 * k + 624617) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1873852) = 3538944 * k + 936926 := by
    unfold C
    simp [show (7077888 * k + 1873852) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 936926) = 1769472 * k + 468463 := by
    unfold C
    simp [show (3538944 * k + 936926) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 468463) = 5308416 * k + 1405390 := by
    unfold C
    simp [show (1769472 * k + 468463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1405390) = 2654208 * k + 702695 := by
    unfold C
    simp [show (5308416 * k + 1405390) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 702695) = 7962624 * k + 2108086 := by
    unfold C
    simp [show (2654208 * k + 702695) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2108086) = 3981312 * k + 1054043 := by
    unfold C
    simp [show (7962624 * k + 2108086) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1054043) = 11943936 * k + 3162130 := by
    unfold C
    simp [show (3981312 * k + 1054043) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3162130) = 5971968 * k + 1581065 := by
    unfold C
    simp [show (11943936 * k + 3162130) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1581065) = 17915904 * k + 4743196 := by
    unfold C
    simp [show (5971968 * k + 1581065) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4743196) = 8957952 * k + 2371598 := by
    unfold C
    simp [show (17915904 * k + 4743196) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2371598) = 4478976 * k + 1185799 := by
    unfold C
    simp [show (8957952 * k + 2371598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1185799) = 13436928 * k + 3557398 := by
    unfold C
    simp [show (4478976 * k + 1185799) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3557398) = 6718464 * k + 1778699 := by
    unfold C
    simp [show (13436928 * k + 3557398) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1778699) = 20155392 * k + 5336098 := by
    unfold C
    simp [show (6718464 * k + 1778699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5336098) = 10077696 * k + 2668049 := by
    unfold C
    simp [show (20155392 * k + 5336098) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2668049) = 30233088 * k + 8004148 := by
    unfold C
    simp [show (10077696 * k + 2668049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8004148) = 15116544 * k + 4002074 := by
    unfold C
    simp [show (30233088 * k + 8004148) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4002074) = 7558272 * k + 2001037 := by
    unfold C
    simp [show (15116544 * k + 4002074) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2001037) = 22674816 * k + 6003112 := by
    unfold C
    simp [show (7558272 * k + 2001037) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6003112) = 11337408 * k + 3001556 := by
    unfold C
    simp [show (22674816 * k + 6003112) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3001556) = 5668704 * k + 1500778 := by
    unfold C
    simp [show (11337408 * k + 3001556) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1500778) = 2834352 * k + 750389 := by
    unfold C
    simp [show (5668704 * k + 1500778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 750389) = 8503056 * k + 2251168 := by
    unfold C
    simp [show (2834352 * k + 750389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2251168) = 4251528 * k + 1125584 := by
    unfold C
    simp [show (8503056 * k + 2251168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1125584) = 2125764 * k + 562792 := by
    unfold C
    simp [show (4251528 * k + 1125584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 562792) = 1062882 * k + 281396 := by
    unfold C
    simp [show (2125764 * k + 562792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 281396) = 531441 * k + 140698 := by
    unfold C
    simp [show (1062882 * k + 281396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 277607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 277607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_278047 : ∀ k : Nat,
    iterate (1048576 * k + 278047) 32 = 531441 * k + 140921 ∧
      531441 * k + 140921 < 1048576 * k + 278047 := by
  intro k
  have h1 : C (1048576 * k + 278047) = 3145728 * k + 834142 := by
    unfold C
    simp [show (1048576 * k + 278047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 834142) = 1572864 * k + 417071 := by
    unfold C
    simp [show (3145728 * k + 834142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 417071) = 4718592 * k + 1251214 := by
    unfold C
    simp [show (1572864 * k + 417071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1251214) = 2359296 * k + 625607 := by
    unfold C
    simp [show (4718592 * k + 1251214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 625607) = 7077888 * k + 1876822 := by
    unfold C
    simp [show (2359296 * k + 625607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1876822) = 3538944 * k + 938411 := by
    unfold C
    simp [show (7077888 * k + 1876822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 938411) = 10616832 * k + 2815234 := by
    unfold C
    simp [show (3538944 * k + 938411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2815234) = 5308416 * k + 1407617 := by
    unfold C
    simp [show (10616832 * k + 2815234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1407617) = 15925248 * k + 4222852 := by
    unfold C
    simp [show (5308416 * k + 1407617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4222852) = 7962624 * k + 2111426 := by
    unfold C
    simp [show (15925248 * k + 4222852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2111426) = 3981312 * k + 1055713 := by
    unfold C
    simp [show (7962624 * k + 2111426) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1055713) = 11943936 * k + 3167140 := by
    unfold C
    simp [show (3981312 * k + 1055713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3167140) = 5971968 * k + 1583570 := by
    unfold C
    simp [show (11943936 * k + 3167140) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1583570) = 2985984 * k + 791785 := by
    unfold C
    simp [show (5971968 * k + 1583570) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 791785) = 8957952 * k + 2375356 := by
    unfold C
    simp [show (2985984 * k + 791785) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2375356) = 4478976 * k + 1187678 := by
    unfold C
    simp [show (8957952 * k + 2375356) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1187678) = 2239488 * k + 593839 := by
    unfold C
    simp [show (4478976 * k + 1187678) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 593839) = 6718464 * k + 1781518 := by
    unfold C
    simp [show (2239488 * k + 593839) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1781518) = 3359232 * k + 890759 := by
    unfold C
    simp [show (6718464 * k + 1781518) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 890759) = 10077696 * k + 2672278 := by
    unfold C
    simp [show (3359232 * k + 890759) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2672278) = 5038848 * k + 1336139 := by
    unfold C
    simp [show (10077696 * k + 2672278) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1336139) = 15116544 * k + 4008418 := by
    unfold C
    simp [show (5038848 * k + 1336139) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4008418) = 7558272 * k + 2004209 := by
    unfold C
    simp [show (15116544 * k + 4008418) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2004209) = 22674816 * k + 6012628 := by
    unfold C
    simp [show (7558272 * k + 2004209) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6012628) = 11337408 * k + 3006314 := by
    unfold C
    simp [show (22674816 * k + 6012628) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3006314) = 5668704 * k + 1503157 := by
    unfold C
    simp [show (11337408 * k + 3006314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1503157) = 17006112 * k + 4509472 := by
    unfold C
    simp [show (5668704 * k + 1503157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4509472) = 8503056 * k + 2254736 := by
    unfold C
    simp [show (17006112 * k + 4509472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2254736) = 4251528 * k + 1127368 := by
    unfold C
    simp [show (8503056 * k + 2254736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1127368) = 2125764 * k + 563684 := by
    unfold C
    simp [show (4251528 * k + 1127368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 563684) = 1062882 * k + 281842 := by
    unfold C
    simp [show (2125764 * k + 563684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 281842) = 531441 * k + 140921 := by
    unfold C
    simp [show (1062882 * k + 281842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 278047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 278047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_278207 : ∀ k : Nat,
    iterate (1048576 * k + 278207) 32 = 531441 * k + 141002 ∧
      531441 * k + 141002 < 1048576 * k + 278207 := by
  intro k
  have h1 : C (1048576 * k + 278207) = 3145728 * k + 834622 := by
    unfold C
    simp [show (1048576 * k + 278207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 834622) = 1572864 * k + 417311 := by
    unfold C
    simp [show (3145728 * k + 834622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 417311) = 4718592 * k + 1251934 := by
    unfold C
    simp [show (1572864 * k + 417311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1251934) = 2359296 * k + 625967 := by
    unfold C
    simp [show (4718592 * k + 1251934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 625967) = 7077888 * k + 1877902 := by
    unfold C
    simp [show (2359296 * k + 625967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1877902) = 3538944 * k + 938951 := by
    unfold C
    simp [show (7077888 * k + 1877902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 938951) = 10616832 * k + 2816854 := by
    unfold C
    simp [show (3538944 * k + 938951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2816854) = 5308416 * k + 1408427 := by
    unfold C
    simp [show (10616832 * k + 2816854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1408427) = 15925248 * k + 4225282 := by
    unfold C
    simp [show (5308416 * k + 1408427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4225282) = 7962624 * k + 2112641 := by
    unfold C
    simp [show (15925248 * k + 4225282) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2112641) = 23887872 * k + 6337924 := by
    unfold C
    simp [show (7962624 * k + 2112641) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6337924) = 11943936 * k + 3168962 := by
    unfold C
    simp [show (23887872 * k + 6337924) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3168962) = 5971968 * k + 1584481 := by
    unfold C
    simp [show (11943936 * k + 3168962) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1584481) = 17915904 * k + 4753444 := by
    unfold C
    simp [show (5971968 * k + 1584481) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4753444) = 8957952 * k + 2376722 := by
    unfold C
    simp [show (17915904 * k + 4753444) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2376722) = 4478976 * k + 1188361 := by
    unfold C
    simp [show (8957952 * k + 2376722) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1188361) = 13436928 * k + 3565084 := by
    unfold C
    simp [show (4478976 * k + 1188361) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3565084) = 6718464 * k + 1782542 := by
    unfold C
    simp [show (13436928 * k + 3565084) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1782542) = 3359232 * k + 891271 := by
    unfold C
    simp [show (6718464 * k + 1782542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 891271) = 10077696 * k + 2673814 := by
    unfold C
    simp [show (3359232 * k + 891271) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2673814) = 5038848 * k + 1336907 := by
    unfold C
    simp [show (10077696 * k + 2673814) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1336907) = 15116544 * k + 4010722 := by
    unfold C
    simp [show (5038848 * k + 1336907) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4010722) = 7558272 * k + 2005361 := by
    unfold C
    simp [show (15116544 * k + 4010722) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2005361) = 22674816 * k + 6016084 := by
    unfold C
    simp [show (7558272 * k + 2005361) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6016084) = 11337408 * k + 3008042 := by
    unfold C
    simp [show (22674816 * k + 6016084) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3008042) = 5668704 * k + 1504021 := by
    unfold C
    simp [show (11337408 * k + 3008042) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1504021) = 17006112 * k + 4512064 := by
    unfold C
    simp [show (5668704 * k + 1504021) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4512064) = 8503056 * k + 2256032 := by
    unfold C
    simp [show (17006112 * k + 4512064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2256032) = 4251528 * k + 1128016 := by
    unfold C
    simp [show (8503056 * k + 2256032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1128016) = 2125764 * k + 564008 := by
    unfold C
    simp [show (4251528 * k + 1128016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 564008) = 1062882 * k + 282004 := by
    unfold C
    simp [show (2125764 * k + 564008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 282004) = 531441 * k + 141002 := by
    unfold C
    simp [show (1062882 * k + 282004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 278207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 278207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_278591 : ∀ k : Nat,
    iterate (1048576 * k + 278591) 32 = 531441 * k + 141197 ∧
      531441 * k + 141197 < 1048576 * k + 278591 := by
  intro k
  have h1 : C (1048576 * k + 278591) = 3145728 * k + 835774 := by
    unfold C
    simp [show (1048576 * k + 278591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 835774) = 1572864 * k + 417887 := by
    unfold C
    simp [show (3145728 * k + 835774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 417887) = 4718592 * k + 1253662 := by
    unfold C
    simp [show (1572864 * k + 417887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1253662) = 2359296 * k + 626831 := by
    unfold C
    simp [show (4718592 * k + 1253662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 626831) = 7077888 * k + 1880494 := by
    unfold C
    simp [show (2359296 * k + 626831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1880494) = 3538944 * k + 940247 := by
    unfold C
    simp [show (7077888 * k + 1880494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 940247) = 10616832 * k + 2820742 := by
    unfold C
    simp [show (3538944 * k + 940247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2820742) = 5308416 * k + 1410371 := by
    unfold C
    simp [show (10616832 * k + 2820742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1410371) = 15925248 * k + 4231114 := by
    unfold C
    simp [show (5308416 * k + 1410371) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4231114) = 7962624 * k + 2115557 := by
    unfold C
    simp [show (15925248 * k + 4231114) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2115557) = 23887872 * k + 6346672 := by
    unfold C
    simp [show (7962624 * k + 2115557) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6346672) = 11943936 * k + 3173336 := by
    unfold C
    simp [show (23887872 * k + 6346672) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3173336) = 5971968 * k + 1586668 := by
    unfold C
    simp [show (11943936 * k + 3173336) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1586668) = 2985984 * k + 793334 := by
    unfold C
    simp [show (5971968 * k + 1586668) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 793334) = 1492992 * k + 396667 := by
    unfold C
    simp [show (2985984 * k + 793334) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 396667) = 4478976 * k + 1190002 := by
    unfold C
    simp [show (1492992 * k + 396667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1190002) = 2239488 * k + 595001 := by
    unfold C
    simp [show (4478976 * k + 1190002) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 595001) = 6718464 * k + 1785004 := by
    unfold C
    simp [show (2239488 * k + 595001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1785004) = 3359232 * k + 892502 := by
    unfold C
    simp [show (6718464 * k + 1785004) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 892502) = 1679616 * k + 446251 := by
    unfold C
    simp [show (3359232 * k + 892502) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 446251) = 5038848 * k + 1338754 := by
    unfold C
    simp [show (1679616 * k + 446251) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1338754) = 2519424 * k + 669377 := by
    unfold C
    simp [show (5038848 * k + 1338754) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 669377) = 7558272 * k + 2008132 := by
    unfold C
    simp [show (2519424 * k + 669377) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2008132) = 3779136 * k + 1004066 := by
    unfold C
    simp [show (7558272 * k + 2008132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1004066) = 1889568 * k + 502033 := by
    unfold C
    simp [show (3779136 * k + 1004066) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 502033) = 5668704 * k + 1506100 := by
    unfold C
    simp [show (1889568 * k + 502033) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1506100) = 2834352 * k + 753050 := by
    unfold C
    simp [show (5668704 * k + 1506100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 753050) = 1417176 * k + 376525 := by
    unfold C
    simp [show (2834352 * k + 753050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 376525) = 4251528 * k + 1129576 := by
    unfold C
    simp [show (1417176 * k + 376525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1129576) = 2125764 * k + 564788 := by
    unfold C
    simp [show (4251528 * k + 1129576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 564788) = 1062882 * k + 282394 := by
    unfold C
    simp [show (2125764 * k + 564788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 282394) = 531441 * k + 141197 := by
    unfold C
    simp [show (1062882 * k + 282394) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 278591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 278591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_278751 : ∀ k : Nat,
    iterate (1048576 * k + 278751) 32 = 531441 * k + 141278 ∧
      531441 * k + 141278 < 1048576 * k + 278751 := by
  intro k
  have h1 : C (1048576 * k + 278751) = 3145728 * k + 836254 := by
    unfold C
    simp [show (1048576 * k + 278751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 836254) = 1572864 * k + 418127 := by
    unfold C
    simp [show (3145728 * k + 836254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 418127) = 4718592 * k + 1254382 := by
    unfold C
    simp [show (1572864 * k + 418127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1254382) = 2359296 * k + 627191 := by
    unfold C
    simp [show (4718592 * k + 1254382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 627191) = 7077888 * k + 1881574 := by
    unfold C
    simp [show (2359296 * k + 627191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1881574) = 3538944 * k + 940787 := by
    unfold C
    simp [show (7077888 * k + 1881574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 940787) = 10616832 * k + 2822362 := by
    unfold C
    simp [show (3538944 * k + 940787) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2822362) = 5308416 * k + 1411181 := by
    unfold C
    simp [show (10616832 * k + 2822362) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1411181) = 15925248 * k + 4233544 := by
    unfold C
    simp [show (5308416 * k + 1411181) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4233544) = 7962624 * k + 2116772 := by
    unfold C
    simp [show (15925248 * k + 4233544) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2116772) = 3981312 * k + 1058386 := by
    unfold C
    simp [show (7962624 * k + 2116772) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1058386) = 1990656 * k + 529193 := by
    unfold C
    simp [show (3981312 * k + 1058386) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 529193) = 5971968 * k + 1587580 := by
    unfold C
    simp [show (1990656 * k + 529193) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1587580) = 2985984 * k + 793790 := by
    unfold C
    simp [show (5971968 * k + 1587580) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 793790) = 1492992 * k + 396895 := by
    unfold C
    simp [show (2985984 * k + 793790) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 396895) = 4478976 * k + 1190686 := by
    unfold C
    simp [show (1492992 * k + 396895) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1190686) = 2239488 * k + 595343 := by
    unfold C
    simp [show (4478976 * k + 1190686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 595343) = 6718464 * k + 1786030 := by
    unfold C
    simp [show (2239488 * k + 595343) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1786030) = 3359232 * k + 893015 := by
    unfold C
    simp [show (6718464 * k + 1786030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 893015) = 10077696 * k + 2679046 := by
    unfold C
    simp [show (3359232 * k + 893015) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2679046) = 5038848 * k + 1339523 := by
    unfold C
    simp [show (10077696 * k + 2679046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1339523) = 15116544 * k + 4018570 := by
    unfold C
    simp [show (5038848 * k + 1339523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4018570) = 7558272 * k + 2009285 := by
    unfold C
    simp [show (15116544 * k + 4018570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2009285) = 22674816 * k + 6027856 := by
    unfold C
    simp [show (7558272 * k + 2009285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6027856) = 11337408 * k + 3013928 := by
    unfold C
    simp [show (22674816 * k + 6027856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3013928) = 5668704 * k + 1506964 := by
    unfold C
    simp [show (11337408 * k + 3013928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1506964) = 2834352 * k + 753482 := by
    unfold C
    simp [show (5668704 * k + 1506964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 753482) = 1417176 * k + 376741 := by
    unfold C
    simp [show (2834352 * k + 753482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 376741) = 4251528 * k + 1130224 := by
    unfold C
    simp [show (1417176 * k + 376741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1130224) = 2125764 * k + 565112 := by
    unfold C
    simp [show (4251528 * k + 1130224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 565112) = 1062882 * k + 282556 := by
    unfold C
    simp [show (2125764 * k + 565112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 282556) = 531441 * k + 141278 := by
    unfold C
    simp [show (1062882 * k + 282556) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 278751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 278751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_279195 : ∀ k : Nat,
    iterate (1048576 * k + 279195) 32 = 531441 * k + 141503 ∧
      531441 * k + 141503 < 1048576 * k + 279195 := by
  intro k
  have h1 : C (1048576 * k + 279195) = 3145728 * k + 837586 := by
    unfold C
    simp [show (1048576 * k + 279195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 837586) = 1572864 * k + 418793 := by
    unfold C
    simp [show (3145728 * k + 837586) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 418793) = 4718592 * k + 1256380 := by
    unfold C
    simp [show (1572864 * k + 418793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1256380) = 2359296 * k + 628190 := by
    unfold C
    simp [show (4718592 * k + 1256380) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 628190) = 1179648 * k + 314095 := by
    unfold C
    simp [show (2359296 * k + 628190) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 314095) = 3538944 * k + 942286 := by
    unfold C
    simp [show (1179648 * k + 314095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 942286) = 1769472 * k + 471143 := by
    unfold C
    simp [show (3538944 * k + 942286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 471143) = 5308416 * k + 1413430 := by
    unfold C
    simp [show (1769472 * k + 471143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1413430) = 2654208 * k + 706715 := by
    unfold C
    simp [show (5308416 * k + 1413430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 706715) = 7962624 * k + 2120146 := by
    unfold C
    simp [show (2654208 * k + 706715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2120146) = 3981312 * k + 1060073 := by
    unfold C
    simp [show (7962624 * k + 2120146) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1060073) = 11943936 * k + 3180220 := by
    unfold C
    simp [show (3981312 * k + 1060073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3180220) = 5971968 * k + 1590110 := by
    unfold C
    simp [show (11943936 * k + 3180220) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1590110) = 2985984 * k + 795055 := by
    unfold C
    simp [show (5971968 * k + 1590110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 795055) = 8957952 * k + 2385166 := by
    unfold C
    simp [show (2985984 * k + 795055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2385166) = 4478976 * k + 1192583 := by
    unfold C
    simp [show (8957952 * k + 2385166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1192583) = 13436928 * k + 3577750 := by
    unfold C
    simp [show (4478976 * k + 1192583) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3577750) = 6718464 * k + 1788875 := by
    unfold C
    simp [show (13436928 * k + 3577750) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1788875) = 20155392 * k + 5366626 := by
    unfold C
    simp [show (6718464 * k + 1788875) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5366626) = 10077696 * k + 2683313 := by
    unfold C
    simp [show (20155392 * k + 5366626) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2683313) = 30233088 * k + 8049940 := by
    unfold C
    simp [show (10077696 * k + 2683313) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8049940) = 15116544 * k + 4024970 := by
    unfold C
    simp [show (30233088 * k + 8049940) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4024970) = 7558272 * k + 2012485 := by
    unfold C
    simp [show (15116544 * k + 4024970) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2012485) = 22674816 * k + 6037456 := by
    unfold C
    simp [show (7558272 * k + 2012485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6037456) = 11337408 * k + 3018728 := by
    unfold C
    simp [show (22674816 * k + 6037456) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3018728) = 5668704 * k + 1509364 := by
    unfold C
    simp [show (11337408 * k + 3018728) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1509364) = 2834352 * k + 754682 := by
    unfold C
    simp [show (5668704 * k + 1509364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 754682) = 1417176 * k + 377341 := by
    unfold C
    simp [show (2834352 * k + 754682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 377341) = 4251528 * k + 1132024 := by
    unfold C
    simp [show (1417176 * k + 377341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1132024) = 2125764 * k + 566012 := by
    unfold C
    simp [show (4251528 * k + 1132024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 566012) = 1062882 * k + 283006 := by
    unfold C
    simp [show (2125764 * k + 566012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 283006) = 531441 * k + 141503 := by
    unfold C
    simp [show (1062882 * k + 283006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 279195) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 279195)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_280039 : ∀ k : Nat,
    iterate (1048576 * k + 280039) 32 = 531441 * k + 141931 ∧
      531441 * k + 141931 < 1048576 * k + 280039 := by
  intro k
  have h1 : C (1048576 * k + 280039) = 3145728 * k + 840118 := by
    unfold C
    simp [show (1048576 * k + 280039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 840118) = 1572864 * k + 420059 := by
    unfold C
    simp [show (3145728 * k + 840118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 420059) = 4718592 * k + 1260178 := by
    unfold C
    simp [show (1572864 * k + 420059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1260178) = 2359296 * k + 630089 := by
    unfold C
    simp [show (4718592 * k + 1260178) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 630089) = 7077888 * k + 1890268 := by
    unfold C
    simp [show (2359296 * k + 630089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1890268) = 3538944 * k + 945134 := by
    unfold C
    simp [show (7077888 * k + 1890268) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 945134) = 1769472 * k + 472567 := by
    unfold C
    simp [show (3538944 * k + 945134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 472567) = 5308416 * k + 1417702 := by
    unfold C
    simp [show (1769472 * k + 472567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1417702) = 2654208 * k + 708851 := by
    unfold C
    simp [show (5308416 * k + 1417702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 708851) = 7962624 * k + 2126554 := by
    unfold C
    simp [show (2654208 * k + 708851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2126554) = 3981312 * k + 1063277 := by
    unfold C
    simp [show (7962624 * k + 2126554) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1063277) = 11943936 * k + 3189832 := by
    unfold C
    simp [show (3981312 * k + 1063277) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3189832) = 5971968 * k + 1594916 := by
    unfold C
    simp [show (11943936 * k + 3189832) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1594916) = 2985984 * k + 797458 := by
    unfold C
    simp [show (5971968 * k + 1594916) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 797458) = 1492992 * k + 398729 := by
    unfold C
    simp [show (2985984 * k + 797458) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 398729) = 4478976 * k + 1196188 := by
    unfold C
    simp [show (1492992 * k + 398729) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1196188) = 2239488 * k + 598094 := by
    unfold C
    simp [show (4478976 * k + 1196188) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 598094) = 1119744 * k + 299047 := by
    unfold C
    simp [show (2239488 * k + 598094) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 299047) = 3359232 * k + 897142 := by
    unfold C
    simp [show (1119744 * k + 299047) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 897142) = 1679616 * k + 448571 := by
    unfold C
    simp [show (3359232 * k + 897142) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 448571) = 5038848 * k + 1345714 := by
    unfold C
    simp [show (1679616 * k + 448571) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1345714) = 2519424 * k + 672857 := by
    unfold C
    simp [show (5038848 * k + 1345714) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 672857) = 7558272 * k + 2018572 := by
    unfold C
    simp [show (2519424 * k + 672857) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2018572) = 3779136 * k + 1009286 := by
    unfold C
    simp [show (7558272 * k + 2018572) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1009286) = 1889568 * k + 504643 := by
    unfold C
    simp [show (3779136 * k + 1009286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 504643) = 5668704 * k + 1513930 := by
    unfold C
    simp [show (1889568 * k + 504643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1513930) = 2834352 * k + 756965 := by
    unfold C
    simp [show (5668704 * k + 1513930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 756965) = 8503056 * k + 2270896 := by
    unfold C
    simp [show (2834352 * k + 756965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2270896) = 4251528 * k + 1135448 := by
    unfold C
    simp [show (8503056 * k + 2270896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1135448) = 2125764 * k + 567724 := by
    unfold C
    simp [show (4251528 * k + 1135448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 567724) = 1062882 * k + 283862 := by
    unfold C
    simp [show (2125764 * k + 567724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 283862) = 531441 * k + 141931 := by
    unfold C
    simp [show (1062882 * k + 283862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 280039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 280039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_280679 : ∀ k : Nat,
    iterate (1048576 * k + 280679) 32 = 531441 * k + 142255 ∧
      531441 * k + 142255 < 1048576 * k + 280679 := by
  intro k
  have h1 : C (1048576 * k + 280679) = 3145728 * k + 842038 := by
    unfold C
    simp [show (1048576 * k + 280679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 842038) = 1572864 * k + 421019 := by
    unfold C
    simp [show (3145728 * k + 842038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 421019) = 4718592 * k + 1263058 := by
    unfold C
    simp [show (1572864 * k + 421019) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1263058) = 2359296 * k + 631529 := by
    unfold C
    simp [show (4718592 * k + 1263058) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 631529) = 7077888 * k + 1894588 := by
    unfold C
    simp [show (2359296 * k + 631529) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1894588) = 3538944 * k + 947294 := by
    unfold C
    simp [show (7077888 * k + 1894588) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 947294) = 1769472 * k + 473647 := by
    unfold C
    simp [show (3538944 * k + 947294) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 473647) = 5308416 * k + 1420942 := by
    unfold C
    simp [show (1769472 * k + 473647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1420942) = 2654208 * k + 710471 := by
    unfold C
    simp [show (5308416 * k + 1420942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 710471) = 7962624 * k + 2131414 := by
    unfold C
    simp [show (2654208 * k + 710471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2131414) = 3981312 * k + 1065707 := by
    unfold C
    simp [show (7962624 * k + 2131414) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1065707) = 11943936 * k + 3197122 := by
    unfold C
    simp [show (3981312 * k + 1065707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3197122) = 5971968 * k + 1598561 := by
    unfold C
    simp [show (11943936 * k + 3197122) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1598561) = 17915904 * k + 4795684 := by
    unfold C
    simp [show (5971968 * k + 1598561) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4795684) = 8957952 * k + 2397842 := by
    unfold C
    simp [show (17915904 * k + 4795684) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2397842) = 4478976 * k + 1198921 := by
    unfold C
    simp [show (8957952 * k + 2397842) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1198921) = 13436928 * k + 3596764 := by
    unfold C
    simp [show (4478976 * k + 1198921) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3596764) = 6718464 * k + 1798382 := by
    unfold C
    simp [show (13436928 * k + 3596764) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1798382) = 3359232 * k + 899191 := by
    unfold C
    simp [show (6718464 * k + 1798382) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 899191) = 10077696 * k + 2697574 := by
    unfold C
    simp [show (3359232 * k + 899191) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2697574) = 5038848 * k + 1348787 := by
    unfold C
    simp [show (10077696 * k + 2697574) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1348787) = 15116544 * k + 4046362 := by
    unfold C
    simp [show (5038848 * k + 1348787) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4046362) = 7558272 * k + 2023181 := by
    unfold C
    simp [show (15116544 * k + 4046362) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2023181) = 22674816 * k + 6069544 := by
    unfold C
    simp [show (7558272 * k + 2023181) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6069544) = 11337408 * k + 3034772 := by
    unfold C
    simp [show (22674816 * k + 6069544) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3034772) = 5668704 * k + 1517386 := by
    unfold C
    simp [show (11337408 * k + 3034772) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1517386) = 2834352 * k + 758693 := by
    unfold C
    simp [show (5668704 * k + 1517386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 758693) = 8503056 * k + 2276080 := by
    unfold C
    simp [show (2834352 * k + 758693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2276080) = 4251528 * k + 1138040 := by
    unfold C
    simp [show (8503056 * k + 2276080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1138040) = 2125764 * k + 569020 := by
    unfold C
    simp [show (4251528 * k + 1138040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 569020) = 1062882 * k + 284510 := by
    unfold C
    simp [show (2125764 * k + 569020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 284510) = 531441 * k + 142255 := by
    unfold C
    simp [show (1062882 * k + 284510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 280679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 280679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_280687 : ∀ k : Nat,
    iterate (1048576 * k + 280687) 32 = 531441 * k + 142259 ∧
      531441 * k + 142259 < 1048576 * k + 280687 := by
  intro k
  have h1 : C (1048576 * k + 280687) = 3145728 * k + 842062 := by
    unfold C
    simp [show (1048576 * k + 280687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 842062) = 1572864 * k + 421031 := by
    unfold C
    simp [show (3145728 * k + 842062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 421031) = 4718592 * k + 1263094 := by
    unfold C
    simp [show (1572864 * k + 421031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1263094) = 2359296 * k + 631547 := by
    unfold C
    simp [show (4718592 * k + 1263094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 631547) = 7077888 * k + 1894642 := by
    unfold C
    simp [show (2359296 * k + 631547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1894642) = 3538944 * k + 947321 := by
    unfold C
    simp [show (7077888 * k + 1894642) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 947321) = 10616832 * k + 2841964 := by
    unfold C
    simp [show (3538944 * k + 947321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2841964) = 5308416 * k + 1420982 := by
    unfold C
    simp [show (10616832 * k + 2841964) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1420982) = 2654208 * k + 710491 := by
    unfold C
    simp [show (5308416 * k + 1420982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 710491) = 7962624 * k + 2131474 := by
    unfold C
    simp [show (2654208 * k + 710491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2131474) = 3981312 * k + 1065737 := by
    unfold C
    simp [show (7962624 * k + 2131474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1065737) = 11943936 * k + 3197212 := by
    unfold C
    simp [show (3981312 * k + 1065737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3197212) = 5971968 * k + 1598606 := by
    unfold C
    simp [show (11943936 * k + 3197212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1598606) = 2985984 * k + 799303 := by
    unfold C
    simp [show (5971968 * k + 1598606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 799303) = 8957952 * k + 2397910 := by
    unfold C
    simp [show (2985984 * k + 799303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2397910) = 4478976 * k + 1198955 := by
    unfold C
    simp [show (8957952 * k + 2397910) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1198955) = 13436928 * k + 3596866 := by
    unfold C
    simp [show (4478976 * k + 1198955) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3596866) = 6718464 * k + 1798433 := by
    unfold C
    simp [show (13436928 * k + 3596866) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1798433) = 20155392 * k + 5395300 := by
    unfold C
    simp [show (6718464 * k + 1798433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5395300) = 10077696 * k + 2697650 := by
    unfold C
    simp [show (20155392 * k + 5395300) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2697650) = 5038848 * k + 1348825 := by
    unfold C
    simp [show (10077696 * k + 2697650) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1348825) = 15116544 * k + 4046476 := by
    unfold C
    simp [show (5038848 * k + 1348825) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4046476) = 7558272 * k + 2023238 := by
    unfold C
    simp [show (15116544 * k + 4046476) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2023238) = 3779136 * k + 1011619 := by
    unfold C
    simp [show (7558272 * k + 2023238) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1011619) = 11337408 * k + 3034858 := by
    unfold C
    simp [show (3779136 * k + 1011619) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3034858) = 5668704 * k + 1517429 := by
    unfold C
    simp [show (11337408 * k + 3034858) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1517429) = 17006112 * k + 4552288 := by
    unfold C
    simp [show (5668704 * k + 1517429) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4552288) = 8503056 * k + 2276144 := by
    unfold C
    simp [show (17006112 * k + 4552288) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2276144) = 4251528 * k + 1138072 := by
    unfold C
    simp [show (8503056 * k + 2276144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1138072) = 2125764 * k + 569036 := by
    unfold C
    simp [show (4251528 * k + 1138072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 569036) = 1062882 * k + 284518 := by
    unfold C
    simp [show (2125764 * k + 569036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 284518) = 531441 * k + 142259 := by
    unfold C
    simp [show (1062882 * k + 284518) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 280687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 280687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_281247 : ∀ k : Nat,
    iterate (1048576 * k + 281247) 32 = 531441 * k + 142543 ∧
      531441 * k + 142543 < 1048576 * k + 281247 := by
  intro k
  have h1 : C (1048576 * k + 281247) = 3145728 * k + 843742 := by
    unfold C
    simp [show (1048576 * k + 281247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 843742) = 1572864 * k + 421871 := by
    unfold C
    simp [show (3145728 * k + 843742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 421871) = 4718592 * k + 1265614 := by
    unfold C
    simp [show (1572864 * k + 421871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1265614) = 2359296 * k + 632807 := by
    unfold C
    simp [show (4718592 * k + 1265614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 632807) = 7077888 * k + 1898422 := by
    unfold C
    simp [show (2359296 * k + 632807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1898422) = 3538944 * k + 949211 := by
    unfold C
    simp [show (7077888 * k + 1898422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 949211) = 10616832 * k + 2847634 := by
    unfold C
    simp [show (3538944 * k + 949211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2847634) = 5308416 * k + 1423817 := by
    unfold C
    simp [show (10616832 * k + 2847634) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1423817) = 15925248 * k + 4271452 := by
    unfold C
    simp [show (5308416 * k + 1423817) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4271452) = 7962624 * k + 2135726 := by
    unfold C
    simp [show (15925248 * k + 4271452) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2135726) = 3981312 * k + 1067863 := by
    unfold C
    simp [show (7962624 * k + 2135726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1067863) = 11943936 * k + 3203590 := by
    unfold C
    simp [show (3981312 * k + 1067863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3203590) = 5971968 * k + 1601795 := by
    unfold C
    simp [show (11943936 * k + 3203590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1601795) = 17915904 * k + 4805386 := by
    unfold C
    simp [show (5971968 * k + 1601795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4805386) = 8957952 * k + 2402693 := by
    unfold C
    simp [show (17915904 * k + 4805386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2402693) = 26873856 * k + 7208080 := by
    unfold C
    simp [show (8957952 * k + 2402693) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7208080) = 13436928 * k + 3604040 := by
    unfold C
    simp [show (26873856 * k + 7208080) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3604040) = 6718464 * k + 1802020 := by
    unfold C
    simp [show (13436928 * k + 3604040) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1802020) = 3359232 * k + 901010 := by
    unfold C
    simp [show (6718464 * k + 1802020) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 901010) = 1679616 * k + 450505 := by
    unfold C
    simp [show (3359232 * k + 901010) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 450505) = 5038848 * k + 1351516 := by
    unfold C
    simp [show (1679616 * k + 450505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1351516) = 2519424 * k + 675758 := by
    unfold C
    simp [show (5038848 * k + 1351516) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 675758) = 1259712 * k + 337879 := by
    unfold C
    simp [show (2519424 * k + 675758) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 337879) = 3779136 * k + 1013638 := by
    unfold C
    simp [show (1259712 * k + 337879) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1013638) = 1889568 * k + 506819 := by
    unfold C
    simp [show (3779136 * k + 1013638) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 506819) = 5668704 * k + 1520458 := by
    unfold C
    simp [show (1889568 * k + 506819) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1520458) = 2834352 * k + 760229 := by
    unfold C
    simp [show (5668704 * k + 1520458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 760229) = 8503056 * k + 2280688 := by
    unfold C
    simp [show (2834352 * k + 760229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2280688) = 4251528 * k + 1140344 := by
    unfold C
    simp [show (8503056 * k + 2280688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1140344) = 2125764 * k + 570172 := by
    unfold C
    simp [show (4251528 * k + 1140344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 570172) = 1062882 * k + 285086 := by
    unfold C
    simp [show (2125764 * k + 570172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 285086) = 531441 * k + 142543 := by
    unfold C
    simp [show (1062882 * k + 285086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 281247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 281247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_281407 : ∀ k : Nat,
    iterate (1048576 * k + 281407) 32 = 531441 * k + 142624 ∧
      531441 * k + 142624 < 1048576 * k + 281407 := by
  intro k
  have h1 : C (1048576 * k + 281407) = 3145728 * k + 844222 := by
    unfold C
    simp [show (1048576 * k + 281407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 844222) = 1572864 * k + 422111 := by
    unfold C
    simp [show (3145728 * k + 844222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 422111) = 4718592 * k + 1266334 := by
    unfold C
    simp [show (1572864 * k + 422111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1266334) = 2359296 * k + 633167 := by
    unfold C
    simp [show (4718592 * k + 1266334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 633167) = 7077888 * k + 1899502 := by
    unfold C
    simp [show (2359296 * k + 633167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1899502) = 3538944 * k + 949751 := by
    unfold C
    simp [show (7077888 * k + 1899502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 949751) = 10616832 * k + 2849254 := by
    unfold C
    simp [show (3538944 * k + 949751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2849254) = 5308416 * k + 1424627 := by
    unfold C
    simp [show (10616832 * k + 2849254) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1424627) = 15925248 * k + 4273882 := by
    unfold C
    simp [show (5308416 * k + 1424627) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4273882) = 7962624 * k + 2136941 := by
    unfold C
    simp [show (15925248 * k + 4273882) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2136941) = 23887872 * k + 6410824 := by
    unfold C
    simp [show (7962624 * k + 2136941) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6410824) = 11943936 * k + 3205412 := by
    unfold C
    simp [show (23887872 * k + 6410824) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3205412) = 5971968 * k + 1602706 := by
    unfold C
    simp [show (11943936 * k + 3205412) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1602706) = 2985984 * k + 801353 := by
    unfold C
    simp [show (5971968 * k + 1602706) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 801353) = 8957952 * k + 2404060 := by
    unfold C
    simp [show (2985984 * k + 801353) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2404060) = 4478976 * k + 1202030 := by
    unfold C
    simp [show (8957952 * k + 2404060) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1202030) = 2239488 * k + 601015 := by
    unfold C
    simp [show (4478976 * k + 1202030) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 601015) = 6718464 * k + 1803046 := by
    unfold C
    simp [show (2239488 * k + 601015) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1803046) = 3359232 * k + 901523 := by
    unfold C
    simp [show (6718464 * k + 1803046) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 901523) = 10077696 * k + 2704570 := by
    unfold C
    simp [show (3359232 * k + 901523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2704570) = 5038848 * k + 1352285 := by
    unfold C
    simp [show (10077696 * k + 2704570) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1352285) = 15116544 * k + 4056856 := by
    unfold C
    simp [show (5038848 * k + 1352285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4056856) = 7558272 * k + 2028428 := by
    unfold C
    simp [show (15116544 * k + 4056856) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2028428) = 3779136 * k + 1014214 := by
    unfold C
    simp [show (7558272 * k + 2028428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1014214) = 1889568 * k + 507107 := by
    unfold C
    simp [show (3779136 * k + 1014214) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 507107) = 5668704 * k + 1521322 := by
    unfold C
    simp [show (1889568 * k + 507107) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1521322) = 2834352 * k + 760661 := by
    unfold C
    simp [show (5668704 * k + 1521322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 760661) = 8503056 * k + 2281984 := by
    unfold C
    simp [show (2834352 * k + 760661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2281984) = 4251528 * k + 1140992 := by
    unfold C
    simp [show (8503056 * k + 2281984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1140992) = 2125764 * k + 570496 := by
    unfold C
    simp [show (4251528 * k + 1140992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 570496) = 1062882 * k + 285248 := by
    unfold C
    simp [show (2125764 * k + 570496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 285248) = 531441 * k + 142624 := by
    unfold C
    simp [show (1062882 * k + 285248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 281407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 281407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_281599 : ∀ k : Nat,
    iterate (1048576 * k + 281599) 32 = 531441 * k + 142721 ∧
      531441 * k + 142721 < 1048576 * k + 281599 := by
  intro k
  have h1 : C (1048576 * k + 281599) = 3145728 * k + 844798 := by
    unfold C
    simp [show (1048576 * k + 281599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 844798) = 1572864 * k + 422399 := by
    unfold C
    simp [show (3145728 * k + 844798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 422399) = 4718592 * k + 1267198 := by
    unfold C
    simp [show (1572864 * k + 422399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1267198) = 2359296 * k + 633599 := by
    unfold C
    simp [show (4718592 * k + 1267198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 633599) = 7077888 * k + 1900798 := by
    unfold C
    simp [show (2359296 * k + 633599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1900798) = 3538944 * k + 950399 := by
    unfold C
    simp [show (7077888 * k + 1900798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 950399) = 10616832 * k + 2851198 := by
    unfold C
    simp [show (3538944 * k + 950399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2851198) = 5308416 * k + 1425599 := by
    unfold C
    simp [show (10616832 * k + 2851198) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1425599) = 15925248 * k + 4276798 := by
    unfold C
    simp [show (5308416 * k + 1425599) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4276798) = 7962624 * k + 2138399 := by
    unfold C
    simp [show (15925248 * k + 4276798) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2138399) = 23887872 * k + 6415198 := by
    unfold C
    simp [show (7962624 * k + 2138399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6415198) = 11943936 * k + 3207599 := by
    unfold C
    simp [show (23887872 * k + 6415198) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3207599) = 35831808 * k + 9622798 := by
    unfold C
    simp [show (11943936 * k + 3207599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 9622798) = 17915904 * k + 4811399 := by
    unfold C
    simp [show (35831808 * k + 9622798) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4811399) = 53747712 * k + 14434198 := by
    unfold C
    simp [show (17915904 * k + 4811399) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 14434198) = 26873856 * k + 7217099 := by
    unfold C
    simp [show (53747712 * k + 14434198) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 7217099) = 80621568 * k + 21651298 := by
    unfold C
    simp [show (26873856 * k + 7217099) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 21651298) = 40310784 * k + 10825649 := by
    unfold C
    simp [show (80621568 * k + 21651298) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 10825649) = 120932352 * k + 32476948 := by
    unfold C
    simp [show (40310784 * k + 10825649) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 32476948) = 60466176 * k + 16238474 := by
    unfold C
    simp [show (120932352 * k + 32476948) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 16238474) = 30233088 * k + 8119237 := by
    unfold C
    simp [show (60466176 * k + 16238474) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8119237) = 90699264 * k + 24357712 := by
    unfold C
    simp [show (30233088 * k + 8119237) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 24357712) = 45349632 * k + 12178856 := by
    unfold C
    simp [show (90699264 * k + 24357712) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 12178856) = 22674816 * k + 6089428 := by
    unfold C
    simp [show (45349632 * k + 12178856) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6089428) = 11337408 * k + 3044714 := by
    unfold C
    simp [show (22674816 * k + 6089428) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3044714) = 5668704 * k + 1522357 := by
    unfold C
    simp [show (11337408 * k + 3044714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1522357) = 17006112 * k + 4567072 := by
    unfold C
    simp [show (5668704 * k + 1522357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4567072) = 8503056 * k + 2283536 := by
    unfold C
    simp [show (17006112 * k + 4567072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2283536) = 4251528 * k + 1141768 := by
    unfold C
    simp [show (8503056 * k + 2283536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1141768) = 2125764 * k + 570884 := by
    unfold C
    simp [show (4251528 * k + 1141768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 570884) = 1062882 * k + 285442 := by
    unfold C
    simp [show (2125764 * k + 570884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 285442) = 531441 * k + 142721 := by
    unfold C
    simp [show (1062882 * k + 285442) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 281599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 281599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_282143 : ∀ k : Nat,
    iterate (1048576 * k + 282143) 32 = 531441 * k + 142997 ∧
      531441 * k + 142997 < 1048576 * k + 282143 := by
  intro k
  have h1 : C (1048576 * k + 282143) = 3145728 * k + 846430 := by
    unfold C
    simp [show (1048576 * k + 282143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 846430) = 1572864 * k + 423215 := by
    unfold C
    simp [show (3145728 * k + 846430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 423215) = 4718592 * k + 1269646 := by
    unfold C
    simp [show (1572864 * k + 423215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1269646) = 2359296 * k + 634823 := by
    unfold C
    simp [show (4718592 * k + 1269646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 634823) = 7077888 * k + 1904470 := by
    unfold C
    simp [show (2359296 * k + 634823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1904470) = 3538944 * k + 952235 := by
    unfold C
    simp [show (7077888 * k + 1904470) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 952235) = 10616832 * k + 2856706 := by
    unfold C
    simp [show (3538944 * k + 952235) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2856706) = 5308416 * k + 1428353 := by
    unfold C
    simp [show (10616832 * k + 2856706) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1428353) = 15925248 * k + 4285060 := by
    unfold C
    simp [show (5308416 * k + 1428353) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4285060) = 7962624 * k + 2142530 := by
    unfold C
    simp [show (15925248 * k + 4285060) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2142530) = 3981312 * k + 1071265 := by
    unfold C
    simp [show (7962624 * k + 2142530) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1071265) = 11943936 * k + 3213796 := by
    unfold C
    simp [show (3981312 * k + 1071265) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3213796) = 5971968 * k + 1606898 := by
    unfold C
    simp [show (11943936 * k + 3213796) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1606898) = 2985984 * k + 803449 := by
    unfold C
    simp [show (5971968 * k + 1606898) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 803449) = 8957952 * k + 2410348 := by
    unfold C
    simp [show (2985984 * k + 803449) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2410348) = 4478976 * k + 1205174 := by
    unfold C
    simp [show (8957952 * k + 2410348) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1205174) = 2239488 * k + 602587 := by
    unfold C
    simp [show (4478976 * k + 1205174) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 602587) = 6718464 * k + 1807762 := by
    unfold C
    simp [show (2239488 * k + 602587) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1807762) = 3359232 * k + 903881 := by
    unfold C
    simp [show (6718464 * k + 1807762) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 903881) = 10077696 * k + 2711644 := by
    unfold C
    simp [show (3359232 * k + 903881) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2711644) = 5038848 * k + 1355822 := by
    unfold C
    simp [show (10077696 * k + 2711644) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1355822) = 2519424 * k + 677911 := by
    unfold C
    simp [show (5038848 * k + 1355822) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 677911) = 7558272 * k + 2033734 := by
    unfold C
    simp [show (2519424 * k + 677911) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2033734) = 3779136 * k + 1016867 := by
    unfold C
    simp [show (7558272 * k + 2033734) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1016867) = 11337408 * k + 3050602 := by
    unfold C
    simp [show (3779136 * k + 1016867) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3050602) = 5668704 * k + 1525301 := by
    unfold C
    simp [show (11337408 * k + 3050602) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1525301) = 17006112 * k + 4575904 := by
    unfold C
    simp [show (5668704 * k + 1525301) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4575904) = 8503056 * k + 2287952 := by
    unfold C
    simp [show (17006112 * k + 4575904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2287952) = 4251528 * k + 1143976 := by
    unfold C
    simp [show (8503056 * k + 2287952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1143976) = 2125764 * k + 571988 := by
    unfold C
    simp [show (4251528 * k + 1143976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 571988) = 1062882 * k + 285994 := by
    unfold C
    simp [show (2125764 * k + 571988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 285994) = 531441 * k + 142997 := by
    unfold C
    simp [show (1062882 * k + 285994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 282143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 282143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard037
