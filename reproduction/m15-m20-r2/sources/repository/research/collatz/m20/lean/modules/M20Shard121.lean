import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard121

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_944879 : ∀ k : Nat,
    iterate (1048576 * k + 944879) 32 = 531441 * k + 478886 ∧
      531441 * k + 478886 < 1048576 * k + 944879 := by
  intro k
  have h1 : C (1048576 * k + 944879) = 3145728 * k + 2834638 := by
    unfold C
    simp [show (1048576 * k + 944879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2834638) = 1572864 * k + 1417319 := by
    unfold C
    simp [show (3145728 * k + 2834638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1417319) = 4718592 * k + 4251958 := by
    unfold C
    simp [show (1572864 * k + 1417319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4251958) = 2359296 * k + 2125979 := by
    unfold C
    simp [show (4718592 * k + 4251958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2125979) = 7077888 * k + 6377938 := by
    unfold C
    simp [show (2359296 * k + 2125979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6377938) = 3538944 * k + 3188969 := by
    unfold C
    simp [show (7077888 * k + 6377938) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3188969) = 10616832 * k + 9566908 := by
    unfold C
    simp [show (3538944 * k + 3188969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9566908) = 5308416 * k + 4783454 := by
    unfold C
    simp [show (10616832 * k + 9566908) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4783454) = 2654208 * k + 2391727 := by
    unfold C
    simp [show (5308416 * k + 4783454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2391727) = 7962624 * k + 7175182 := by
    unfold C
    simp [show (2654208 * k + 2391727) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7175182) = 3981312 * k + 3587591 := by
    unfold C
    simp [show (7962624 * k + 7175182) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3587591) = 11943936 * k + 10762774 := by
    unfold C
    simp [show (3981312 * k + 3587591) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10762774) = 5971968 * k + 5381387 := by
    unfold C
    simp [show (11943936 * k + 10762774) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5381387) = 17915904 * k + 16144162 := by
    unfold C
    simp [show (5971968 * k + 5381387) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16144162) = 8957952 * k + 8072081 := by
    unfold C
    simp [show (17915904 * k + 16144162) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8072081) = 26873856 * k + 24216244 := by
    unfold C
    simp [show (8957952 * k + 8072081) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24216244) = 13436928 * k + 12108122 := by
    unfold C
    simp [show (26873856 * k + 24216244) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12108122) = 6718464 * k + 6054061 := by
    unfold C
    simp [show (13436928 * k + 12108122) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6054061) = 20155392 * k + 18162184 := by
    unfold C
    simp [show (6718464 * k + 6054061) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18162184) = 10077696 * k + 9081092 := by
    unfold C
    simp [show (20155392 * k + 18162184) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9081092) = 5038848 * k + 4540546 := by
    unfold C
    simp [show (10077696 * k + 9081092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4540546) = 2519424 * k + 2270273 := by
    unfold C
    simp [show (5038848 * k + 4540546) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2270273) = 7558272 * k + 6810820 := by
    unfold C
    simp [show (2519424 * k + 2270273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6810820) = 3779136 * k + 3405410 := by
    unfold C
    simp [show (7558272 * k + 6810820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3405410) = 1889568 * k + 1702705 := by
    unfold C
    simp [show (3779136 * k + 3405410) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1702705) = 5668704 * k + 5108116 := by
    unfold C
    simp [show (1889568 * k + 1702705) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5108116) = 2834352 * k + 2554058 := by
    unfold C
    simp [show (5668704 * k + 5108116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2554058) = 1417176 * k + 1277029 := by
    unfold C
    simp [show (2834352 * k + 2554058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1277029) = 4251528 * k + 3831088 := by
    unfold C
    simp [show (1417176 * k + 1277029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3831088) = 2125764 * k + 1915544 := by
    unfold C
    simp [show (4251528 * k + 3831088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1915544) = 1062882 * k + 957772 := by
    unfold C
    simp [show (2125764 * k + 1915544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 957772) = 531441 * k + 478886 := by
    unfold C
    simp [show (1062882 * k + 957772) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 944879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 944879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_944967 : ∀ k : Nat,
    iterate (1048576 * k + 944967) 32 = 531441 * k + 478931 ∧
      531441 * k + 478931 < 1048576 * k + 944967 := by
  intro k
  have h1 : C (1048576 * k + 944967) = 3145728 * k + 2834902 := by
    unfold C
    simp [show (1048576 * k + 944967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2834902) = 1572864 * k + 1417451 := by
    unfold C
    simp [show (3145728 * k + 2834902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1417451) = 4718592 * k + 4252354 := by
    unfold C
    simp [show (1572864 * k + 1417451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4252354) = 2359296 * k + 2126177 := by
    unfold C
    simp [show (4718592 * k + 4252354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2126177) = 7077888 * k + 6378532 := by
    unfold C
    simp [show (2359296 * k + 2126177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6378532) = 3538944 * k + 3189266 := by
    unfold C
    simp [show (7077888 * k + 6378532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3189266) = 1769472 * k + 1594633 := by
    unfold C
    simp [show (3538944 * k + 3189266) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1594633) = 5308416 * k + 4783900 := by
    unfold C
    simp [show (1769472 * k + 1594633) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4783900) = 2654208 * k + 2391950 := by
    unfold C
    simp [show (5308416 * k + 4783900) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2391950) = 1327104 * k + 1195975 := by
    unfold C
    simp [show (2654208 * k + 2391950) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1195975) = 3981312 * k + 3587926 := by
    unfold C
    simp [show (1327104 * k + 1195975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3587926) = 1990656 * k + 1793963 := by
    unfold C
    simp [show (3981312 * k + 3587926) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1793963) = 5971968 * k + 5381890 := by
    unfold C
    simp [show (1990656 * k + 1793963) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5381890) = 2985984 * k + 2690945 := by
    unfold C
    simp [show (5971968 * k + 5381890) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2690945) = 8957952 * k + 8072836 := by
    unfold C
    simp [show (2985984 * k + 2690945) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8072836) = 4478976 * k + 4036418 := by
    unfold C
    simp [show (8957952 * k + 8072836) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4036418) = 2239488 * k + 2018209 := by
    unfold C
    simp [show (4478976 * k + 4036418) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2018209) = 6718464 * k + 6054628 := by
    unfold C
    simp [show (2239488 * k + 2018209) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6054628) = 3359232 * k + 3027314 := by
    unfold C
    simp [show (6718464 * k + 6054628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3027314) = 1679616 * k + 1513657 := by
    unfold C
    simp [show (3359232 * k + 3027314) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1513657) = 5038848 * k + 4540972 := by
    unfold C
    simp [show (1679616 * k + 1513657) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4540972) = 2519424 * k + 2270486 := by
    unfold C
    simp [show (5038848 * k + 4540972) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2270486) = 1259712 * k + 1135243 := by
    unfold C
    simp [show (2519424 * k + 2270486) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1135243) = 3779136 * k + 3405730 := by
    unfold C
    simp [show (1259712 * k + 1135243) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3405730) = 1889568 * k + 1702865 := by
    unfold C
    simp [show (3779136 * k + 3405730) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1702865) = 5668704 * k + 5108596 := by
    unfold C
    simp [show (1889568 * k + 1702865) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5108596) = 2834352 * k + 2554298 := by
    unfold C
    simp [show (5668704 * k + 5108596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2554298) = 1417176 * k + 1277149 := by
    unfold C
    simp [show (2834352 * k + 2554298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1277149) = 4251528 * k + 3831448 := by
    unfold C
    simp [show (1417176 * k + 1277149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3831448) = 2125764 * k + 1915724 := by
    unfold C
    simp [show (4251528 * k + 3831448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1915724) = 1062882 * k + 957862 := by
    unfold C
    simp [show (2125764 * k + 1915724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 957862) = 531441 * k + 478931 := by
    unfold C
    simp [show (1062882 * k + 957862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 944967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 944967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_945895 : ∀ k : Nat,
    iterate (1048576 * k + 945895) 32 = 531441 * k + 479401 ∧
      531441 * k + 479401 < 1048576 * k + 945895 := by
  intro k
  have h1 : C (1048576 * k + 945895) = 3145728 * k + 2837686 := by
    unfold C
    simp [show (1048576 * k + 945895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2837686) = 1572864 * k + 1418843 := by
    unfold C
    simp [show (3145728 * k + 2837686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1418843) = 4718592 * k + 4256530 := by
    unfold C
    simp [show (1572864 * k + 1418843) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4256530) = 2359296 * k + 2128265 := by
    unfold C
    simp [show (4718592 * k + 4256530) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2128265) = 7077888 * k + 6384796 := by
    unfold C
    simp [show (2359296 * k + 2128265) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6384796) = 3538944 * k + 3192398 := by
    unfold C
    simp [show (7077888 * k + 6384796) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3192398) = 1769472 * k + 1596199 := by
    unfold C
    simp [show (3538944 * k + 3192398) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1596199) = 5308416 * k + 4788598 := by
    unfold C
    simp [show (1769472 * k + 1596199) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4788598) = 2654208 * k + 2394299 := by
    unfold C
    simp [show (5308416 * k + 4788598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2394299) = 7962624 * k + 7182898 := by
    unfold C
    simp [show (2654208 * k + 2394299) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7182898) = 3981312 * k + 3591449 := by
    unfold C
    simp [show (7962624 * k + 7182898) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3591449) = 11943936 * k + 10774348 := by
    unfold C
    simp [show (3981312 * k + 3591449) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10774348) = 5971968 * k + 5387174 := by
    unfold C
    simp [show (11943936 * k + 10774348) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5387174) = 2985984 * k + 2693587 := by
    unfold C
    simp [show (5971968 * k + 5387174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2693587) = 8957952 * k + 8080762 := by
    unfold C
    simp [show (2985984 * k + 2693587) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8080762) = 4478976 * k + 4040381 := by
    unfold C
    simp [show (8957952 * k + 8080762) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4040381) = 13436928 * k + 12121144 := by
    unfold C
    simp [show (4478976 * k + 4040381) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12121144) = 6718464 * k + 6060572 := by
    unfold C
    simp [show (13436928 * k + 12121144) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6060572) = 3359232 * k + 3030286 := by
    unfold C
    simp [show (6718464 * k + 6060572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3030286) = 1679616 * k + 1515143 := by
    unfold C
    simp [show (3359232 * k + 3030286) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1515143) = 5038848 * k + 4545430 := by
    unfold C
    simp [show (1679616 * k + 1515143) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4545430) = 2519424 * k + 2272715 := by
    unfold C
    simp [show (5038848 * k + 4545430) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2272715) = 7558272 * k + 6818146 := by
    unfold C
    simp [show (2519424 * k + 2272715) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6818146) = 3779136 * k + 3409073 := by
    unfold C
    simp [show (7558272 * k + 6818146) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3409073) = 11337408 * k + 10227220 := by
    unfold C
    simp [show (3779136 * k + 3409073) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10227220) = 5668704 * k + 5113610 := by
    unfold C
    simp [show (11337408 * k + 10227220) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5113610) = 2834352 * k + 2556805 := by
    unfold C
    simp [show (5668704 * k + 5113610) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2556805) = 8503056 * k + 7670416 := by
    unfold C
    simp [show (2834352 * k + 2556805) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7670416) = 4251528 * k + 3835208 := by
    unfold C
    simp [show (8503056 * k + 7670416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3835208) = 2125764 * k + 1917604 := by
    unfold C
    simp [show (4251528 * k + 3835208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1917604) = 1062882 * k + 958802 := by
    unfold C
    simp [show (2125764 * k + 1917604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 958802) = 531441 * k + 479401 := by
    unfold C
    simp [show (1062882 * k + 958802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 945895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 945895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_946459 : ∀ k : Nat,
    iterate (1048576 * k + 946459) 32 = 531441 * k + 479687 ∧
      531441 * k + 479687 < 1048576 * k + 946459 := by
  intro k
  have h1 : C (1048576 * k + 946459) = 3145728 * k + 2839378 := by
    unfold C
    simp [show (1048576 * k + 946459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2839378) = 1572864 * k + 1419689 := by
    unfold C
    simp [show (3145728 * k + 2839378) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1419689) = 4718592 * k + 4259068 := by
    unfold C
    simp [show (1572864 * k + 1419689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4259068) = 2359296 * k + 2129534 := by
    unfold C
    simp [show (4718592 * k + 4259068) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2129534) = 1179648 * k + 1064767 := by
    unfold C
    simp [show (2359296 * k + 2129534) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1064767) = 3538944 * k + 3194302 := by
    unfold C
    simp [show (1179648 * k + 1064767) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3194302) = 1769472 * k + 1597151 := by
    unfold C
    simp [show (3538944 * k + 3194302) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1597151) = 5308416 * k + 4791454 := by
    unfold C
    simp [show (1769472 * k + 1597151) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4791454) = 2654208 * k + 2395727 := by
    unfold C
    simp [show (5308416 * k + 4791454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2395727) = 7962624 * k + 7187182 := by
    unfold C
    simp [show (2654208 * k + 2395727) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7187182) = 3981312 * k + 3593591 := by
    unfold C
    simp [show (7962624 * k + 7187182) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3593591) = 11943936 * k + 10780774 := by
    unfold C
    simp [show (3981312 * k + 3593591) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10780774) = 5971968 * k + 5390387 := by
    unfold C
    simp [show (11943936 * k + 10780774) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5390387) = 17915904 * k + 16171162 := by
    unfold C
    simp [show (5971968 * k + 5390387) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16171162) = 8957952 * k + 8085581 := by
    unfold C
    simp [show (17915904 * k + 16171162) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8085581) = 26873856 * k + 24256744 := by
    unfold C
    simp [show (8957952 * k + 8085581) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24256744) = 13436928 * k + 12128372 := by
    unfold C
    simp [show (26873856 * k + 24256744) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12128372) = 6718464 * k + 6064186 := by
    unfold C
    simp [show (13436928 * k + 12128372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6064186) = 3359232 * k + 3032093 := by
    unfold C
    simp [show (6718464 * k + 6064186) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3032093) = 10077696 * k + 9096280 := by
    unfold C
    simp [show (3359232 * k + 3032093) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9096280) = 5038848 * k + 4548140 := by
    unfold C
    simp [show (10077696 * k + 9096280) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4548140) = 2519424 * k + 2274070 := by
    unfold C
    simp [show (5038848 * k + 4548140) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2274070) = 1259712 * k + 1137035 := by
    unfold C
    simp [show (2519424 * k + 2274070) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1137035) = 3779136 * k + 3411106 := by
    unfold C
    simp [show (1259712 * k + 1137035) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3411106) = 1889568 * k + 1705553 := by
    unfold C
    simp [show (3779136 * k + 3411106) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1705553) = 5668704 * k + 5116660 := by
    unfold C
    simp [show (1889568 * k + 1705553) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5116660) = 2834352 * k + 2558330 := by
    unfold C
    simp [show (5668704 * k + 5116660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2558330) = 1417176 * k + 1279165 := by
    unfold C
    simp [show (2834352 * k + 2558330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1279165) = 4251528 * k + 3837496 := by
    unfold C
    simp [show (1417176 * k + 1279165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3837496) = 2125764 * k + 1918748 := by
    unfold C
    simp [show (4251528 * k + 3837496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1918748) = 1062882 * k + 959374 := by
    unfold C
    simp [show (2125764 * k + 1918748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 959374) = 531441 * k + 479687 := by
    unfold C
    simp [show (1062882 * k + 959374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 946459) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 946459)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_946655 : ∀ k : Nat,
    iterate (1048576 * k + 946655) 32 = 531441 * k + 479786 ∧
      531441 * k + 479786 < 1048576 * k + 946655 := by
  intro k
  have h1 : C (1048576 * k + 946655) = 3145728 * k + 2839966 := by
    unfold C
    simp [show (1048576 * k + 946655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2839966) = 1572864 * k + 1419983 := by
    unfold C
    simp [show (3145728 * k + 2839966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1419983) = 4718592 * k + 4259950 := by
    unfold C
    simp [show (1572864 * k + 1419983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4259950) = 2359296 * k + 2129975 := by
    unfold C
    simp [show (4718592 * k + 4259950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2129975) = 7077888 * k + 6389926 := by
    unfold C
    simp [show (2359296 * k + 2129975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6389926) = 3538944 * k + 3194963 := by
    unfold C
    simp [show (7077888 * k + 6389926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3194963) = 10616832 * k + 9584890 := by
    unfold C
    simp [show (3538944 * k + 3194963) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9584890) = 5308416 * k + 4792445 := by
    unfold C
    simp [show (10616832 * k + 9584890) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4792445) = 15925248 * k + 14377336 := by
    unfold C
    simp [show (5308416 * k + 4792445) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14377336) = 7962624 * k + 7188668 := by
    unfold C
    simp [show (15925248 * k + 14377336) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7188668) = 3981312 * k + 3594334 := by
    unfold C
    simp [show (7962624 * k + 7188668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3594334) = 1990656 * k + 1797167 := by
    unfold C
    simp [show (3981312 * k + 3594334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1797167) = 5971968 * k + 5391502 := by
    unfold C
    simp [show (1990656 * k + 1797167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5391502) = 2985984 * k + 2695751 := by
    unfold C
    simp [show (5971968 * k + 5391502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2695751) = 8957952 * k + 8087254 := by
    unfold C
    simp [show (2985984 * k + 2695751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8087254) = 4478976 * k + 4043627 := by
    unfold C
    simp [show (8957952 * k + 8087254) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4043627) = 13436928 * k + 12130882 := by
    unfold C
    simp [show (4478976 * k + 4043627) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12130882) = 6718464 * k + 6065441 := by
    unfold C
    simp [show (13436928 * k + 12130882) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6065441) = 20155392 * k + 18196324 := by
    unfold C
    simp [show (6718464 * k + 6065441) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18196324) = 10077696 * k + 9098162 := by
    unfold C
    simp [show (20155392 * k + 18196324) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9098162) = 5038848 * k + 4549081 := by
    unfold C
    simp [show (10077696 * k + 9098162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4549081) = 15116544 * k + 13647244 := by
    unfold C
    simp [show (5038848 * k + 4549081) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13647244) = 7558272 * k + 6823622 := by
    unfold C
    simp [show (15116544 * k + 13647244) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6823622) = 3779136 * k + 3411811 := by
    unfold C
    simp [show (7558272 * k + 6823622) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3411811) = 11337408 * k + 10235434 := by
    unfold C
    simp [show (3779136 * k + 3411811) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10235434) = 5668704 * k + 5117717 := by
    unfold C
    simp [show (11337408 * k + 10235434) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5117717) = 17006112 * k + 15353152 := by
    unfold C
    simp [show (5668704 * k + 5117717) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15353152) = 8503056 * k + 7676576 := by
    unfold C
    simp [show (17006112 * k + 15353152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7676576) = 4251528 * k + 3838288 := by
    unfold C
    simp [show (8503056 * k + 7676576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3838288) = 2125764 * k + 1919144 := by
    unfold C
    simp [show (4251528 * k + 3838288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1919144) = 1062882 * k + 959572 := by
    unfold C
    simp [show (2125764 * k + 1919144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 959572) = 531441 * k + 479786 := by
    unfold C
    simp [show (1062882 * k + 959572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 946655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 946655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_946671 : ∀ k : Nat,
    iterate (1048576 * k + 946671) 32 = 531441 * k + 479794 ∧
      531441 * k + 479794 < 1048576 * k + 946671 := by
  intro k
  have h1 : C (1048576 * k + 946671) = 3145728 * k + 2840014 := by
    unfold C
    simp [show (1048576 * k + 946671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2840014) = 1572864 * k + 1420007 := by
    unfold C
    simp [show (3145728 * k + 2840014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1420007) = 4718592 * k + 4260022 := by
    unfold C
    simp [show (1572864 * k + 1420007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4260022) = 2359296 * k + 2130011 := by
    unfold C
    simp [show (4718592 * k + 4260022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2130011) = 7077888 * k + 6390034 := by
    unfold C
    simp [show (2359296 * k + 2130011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6390034) = 3538944 * k + 3195017 := by
    unfold C
    simp [show (7077888 * k + 6390034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3195017) = 10616832 * k + 9585052 := by
    unfold C
    simp [show (3538944 * k + 3195017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9585052) = 5308416 * k + 4792526 := by
    unfold C
    simp [show (10616832 * k + 9585052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4792526) = 2654208 * k + 2396263 := by
    unfold C
    simp [show (5308416 * k + 4792526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2396263) = 7962624 * k + 7188790 := by
    unfold C
    simp [show (2654208 * k + 2396263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7188790) = 3981312 * k + 3594395 := by
    unfold C
    simp [show (7962624 * k + 7188790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3594395) = 11943936 * k + 10783186 := by
    unfold C
    simp [show (3981312 * k + 3594395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10783186) = 5971968 * k + 5391593 := by
    unfold C
    simp [show (11943936 * k + 10783186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5391593) = 17915904 * k + 16174780 := by
    unfold C
    simp [show (5971968 * k + 5391593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16174780) = 8957952 * k + 8087390 := by
    unfold C
    simp [show (17915904 * k + 16174780) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8087390) = 4478976 * k + 4043695 := by
    unfold C
    simp [show (8957952 * k + 8087390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4043695) = 13436928 * k + 12131086 := by
    unfold C
    simp [show (4478976 * k + 4043695) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12131086) = 6718464 * k + 6065543 := by
    unfold C
    simp [show (13436928 * k + 12131086) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6065543) = 20155392 * k + 18196630 := by
    unfold C
    simp [show (6718464 * k + 6065543) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18196630) = 10077696 * k + 9098315 := by
    unfold C
    simp [show (20155392 * k + 18196630) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9098315) = 30233088 * k + 27294946 := by
    unfold C
    simp [show (10077696 * k + 9098315) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27294946) = 15116544 * k + 13647473 := by
    unfold C
    simp [show (30233088 * k + 27294946) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13647473) = 45349632 * k + 40942420 := by
    unfold C
    simp [show (15116544 * k + 13647473) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 40942420) = 22674816 * k + 20471210 := by
    unfold C
    simp [show (45349632 * k + 40942420) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20471210) = 11337408 * k + 10235605 := by
    unfold C
    simp [show (22674816 * k + 20471210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10235605) = 34012224 * k + 30706816 := by
    unfold C
    simp [show (11337408 * k + 10235605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 30706816) = 17006112 * k + 15353408 := by
    unfold C
    simp [show (34012224 * k + 30706816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15353408) = 8503056 * k + 7676704 := by
    unfold C
    simp [show (17006112 * k + 15353408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7676704) = 4251528 * k + 3838352 := by
    unfold C
    simp [show (8503056 * k + 7676704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3838352) = 2125764 * k + 1919176 := by
    unfold C
    simp [show (4251528 * k + 3838352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1919176) = 1062882 * k + 959588 := by
    unfold C
    simp [show (2125764 * k + 1919176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 959588) = 531441 * k + 479794 := by
    unfold C
    simp [show (1062882 * k + 959588) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 946671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 946671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_946815 : ∀ k : Nat,
    iterate (1048576 * k + 946815) 32 = 531441 * k + 479867 ∧
      531441 * k + 479867 < 1048576 * k + 946815 := by
  intro k
  have h1 : C (1048576 * k + 946815) = 3145728 * k + 2840446 := by
    unfold C
    simp [show (1048576 * k + 946815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2840446) = 1572864 * k + 1420223 := by
    unfold C
    simp [show (3145728 * k + 2840446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1420223) = 4718592 * k + 4260670 := by
    unfold C
    simp [show (1572864 * k + 1420223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4260670) = 2359296 * k + 2130335 := by
    unfold C
    simp [show (4718592 * k + 4260670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2130335) = 7077888 * k + 6391006 := by
    unfold C
    simp [show (2359296 * k + 2130335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6391006) = 3538944 * k + 3195503 := by
    unfold C
    simp [show (7077888 * k + 6391006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3195503) = 10616832 * k + 9586510 := by
    unfold C
    simp [show (3538944 * k + 3195503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9586510) = 5308416 * k + 4793255 := by
    unfold C
    simp [show (10616832 * k + 9586510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4793255) = 15925248 * k + 14379766 := by
    unfold C
    simp [show (5308416 * k + 4793255) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14379766) = 7962624 * k + 7189883 := by
    unfold C
    simp [show (15925248 * k + 14379766) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7189883) = 23887872 * k + 21569650 := by
    unfold C
    simp [show (7962624 * k + 7189883) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21569650) = 11943936 * k + 10784825 := by
    unfold C
    simp [show (23887872 * k + 21569650) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10784825) = 35831808 * k + 32354476 := by
    unfold C
    simp [show (11943936 * k + 10784825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 32354476) = 17915904 * k + 16177238 := by
    unfold C
    simp [show (35831808 * k + 32354476) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16177238) = 8957952 * k + 8088619 := by
    unfold C
    simp [show (17915904 * k + 16177238) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8088619) = 26873856 * k + 24265858 := by
    unfold C
    simp [show (8957952 * k + 8088619) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24265858) = 13436928 * k + 12132929 := by
    unfold C
    simp [show (26873856 * k + 24265858) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12132929) = 40310784 * k + 36398788 := by
    unfold C
    simp [show (13436928 * k + 12132929) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 36398788) = 20155392 * k + 18199394 := by
    unfold C
    simp [show (40310784 * k + 36398788) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 18199394) = 10077696 * k + 9099697 := by
    unfold C
    simp [show (20155392 * k + 18199394) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9099697) = 30233088 * k + 27299092 := by
    unfold C
    simp [show (10077696 * k + 9099697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27299092) = 15116544 * k + 13649546 := by
    unfold C
    simp [show (30233088 * k + 27299092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13649546) = 7558272 * k + 6824773 := by
    unfold C
    simp [show (15116544 * k + 13649546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6824773) = 22674816 * k + 20474320 := by
    unfold C
    simp [show (7558272 * k + 6824773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20474320) = 11337408 * k + 10237160 := by
    unfold C
    simp [show (22674816 * k + 20474320) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10237160) = 5668704 * k + 5118580 := by
    unfold C
    simp [show (11337408 * k + 10237160) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5118580) = 2834352 * k + 2559290 := by
    unfold C
    simp [show (5668704 * k + 5118580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2559290) = 1417176 * k + 1279645 := by
    unfold C
    simp [show (2834352 * k + 2559290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1279645) = 4251528 * k + 3838936 := by
    unfold C
    simp [show (1417176 * k + 1279645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3838936) = 2125764 * k + 1919468 := by
    unfold C
    simp [show (4251528 * k + 3838936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1919468) = 1062882 * k + 959734 := by
    unfold C
    simp [show (2125764 * k + 1919468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 959734) = 531441 * k + 479867 := by
    unfold C
    simp [show (1062882 * k + 959734) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 946815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 946815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_946895 : ∀ k : Nat,
    iterate (1048576 * k + 946895) 32 = 531441 * k + 479908 ∧
      531441 * k + 479908 < 1048576 * k + 946895 := by
  intro k
  have h1 : C (1048576 * k + 946895) = 3145728 * k + 2840686 := by
    unfold C
    simp [show (1048576 * k + 946895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2840686) = 1572864 * k + 1420343 := by
    unfold C
    simp [show (3145728 * k + 2840686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1420343) = 4718592 * k + 4261030 := by
    unfold C
    simp [show (1572864 * k + 1420343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4261030) = 2359296 * k + 2130515 := by
    unfold C
    simp [show (4718592 * k + 4261030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2130515) = 7077888 * k + 6391546 := by
    unfold C
    simp [show (2359296 * k + 2130515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6391546) = 3538944 * k + 3195773 := by
    unfold C
    simp [show (7077888 * k + 6391546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3195773) = 10616832 * k + 9587320 := by
    unfold C
    simp [show (3538944 * k + 3195773) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9587320) = 5308416 * k + 4793660 := by
    unfold C
    simp [show (10616832 * k + 9587320) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4793660) = 2654208 * k + 2396830 := by
    unfold C
    simp [show (5308416 * k + 4793660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2396830) = 1327104 * k + 1198415 := by
    unfold C
    simp [show (2654208 * k + 2396830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1198415) = 3981312 * k + 3595246 := by
    unfold C
    simp [show (1327104 * k + 1198415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3595246) = 1990656 * k + 1797623 := by
    unfold C
    simp [show (3981312 * k + 3595246) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1797623) = 5971968 * k + 5392870 := by
    unfold C
    simp [show (1990656 * k + 1797623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5392870) = 2985984 * k + 2696435 := by
    unfold C
    simp [show (5971968 * k + 5392870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2696435) = 8957952 * k + 8089306 := by
    unfold C
    simp [show (2985984 * k + 2696435) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8089306) = 4478976 * k + 4044653 := by
    unfold C
    simp [show (8957952 * k + 8089306) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4044653) = 13436928 * k + 12133960 := by
    unfold C
    simp [show (4478976 * k + 4044653) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12133960) = 6718464 * k + 6066980 := by
    unfold C
    simp [show (13436928 * k + 12133960) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6066980) = 3359232 * k + 3033490 := by
    unfold C
    simp [show (6718464 * k + 6066980) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3033490) = 1679616 * k + 1516745 := by
    unfold C
    simp [show (3359232 * k + 3033490) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1516745) = 5038848 * k + 4550236 := by
    unfold C
    simp [show (1679616 * k + 1516745) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4550236) = 2519424 * k + 2275118 := by
    unfold C
    simp [show (5038848 * k + 4550236) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2275118) = 1259712 * k + 1137559 := by
    unfold C
    simp [show (2519424 * k + 2275118) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1137559) = 3779136 * k + 3412678 := by
    unfold C
    simp [show (1259712 * k + 1137559) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3412678) = 1889568 * k + 1706339 := by
    unfold C
    simp [show (3779136 * k + 3412678) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1706339) = 5668704 * k + 5119018 := by
    unfold C
    simp [show (1889568 * k + 1706339) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5119018) = 2834352 * k + 2559509 := by
    unfold C
    simp [show (5668704 * k + 5119018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2559509) = 8503056 * k + 7678528 := by
    unfold C
    simp [show (2834352 * k + 2559509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7678528) = 4251528 * k + 3839264 := by
    unfold C
    simp [show (8503056 * k + 7678528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3839264) = 2125764 * k + 1919632 := by
    unfold C
    simp [show (4251528 * k + 3839264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1919632) = 1062882 * k + 959816 := by
    unfold C
    simp [show (2125764 * k + 1919632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 959816) = 531441 * k + 479908 := by
    unfold C
    simp [show (1062882 * k + 959816) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 946895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 946895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_947227 : ∀ k : Nat,
    iterate (1048576 * k + 947227) 32 = 531441 * k + 480076 ∧
      531441 * k + 480076 < 1048576 * k + 947227 := by
  intro k
  have h1 : C (1048576 * k + 947227) = 3145728 * k + 2841682 := by
    unfold C
    simp [show (1048576 * k + 947227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2841682) = 1572864 * k + 1420841 := by
    unfold C
    simp [show (3145728 * k + 2841682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1420841) = 4718592 * k + 4262524 := by
    unfold C
    simp [show (1572864 * k + 1420841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4262524) = 2359296 * k + 2131262 := by
    unfold C
    simp [show (4718592 * k + 4262524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2131262) = 1179648 * k + 1065631 := by
    unfold C
    simp [show (2359296 * k + 2131262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1065631) = 3538944 * k + 3196894 := by
    unfold C
    simp [show (1179648 * k + 1065631) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3196894) = 1769472 * k + 1598447 := by
    unfold C
    simp [show (3538944 * k + 3196894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1598447) = 5308416 * k + 4795342 := by
    unfold C
    simp [show (1769472 * k + 1598447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4795342) = 2654208 * k + 2397671 := by
    unfold C
    simp [show (5308416 * k + 4795342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2397671) = 7962624 * k + 7193014 := by
    unfold C
    simp [show (2654208 * k + 2397671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7193014) = 3981312 * k + 3596507 := by
    unfold C
    simp [show (7962624 * k + 7193014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3596507) = 11943936 * k + 10789522 := by
    unfold C
    simp [show (3981312 * k + 3596507) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10789522) = 5971968 * k + 5394761 := by
    unfold C
    simp [show (11943936 * k + 10789522) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5394761) = 17915904 * k + 16184284 := by
    unfold C
    simp [show (5971968 * k + 5394761) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16184284) = 8957952 * k + 8092142 := by
    unfold C
    simp [show (17915904 * k + 16184284) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8092142) = 4478976 * k + 4046071 := by
    unfold C
    simp [show (8957952 * k + 8092142) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4046071) = 13436928 * k + 12138214 := by
    unfold C
    simp [show (4478976 * k + 4046071) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12138214) = 6718464 * k + 6069107 := by
    unfold C
    simp [show (13436928 * k + 12138214) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6069107) = 20155392 * k + 18207322 := by
    unfold C
    simp [show (6718464 * k + 6069107) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18207322) = 10077696 * k + 9103661 := by
    unfold C
    simp [show (20155392 * k + 18207322) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9103661) = 30233088 * k + 27310984 := by
    unfold C
    simp [show (10077696 * k + 9103661) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27310984) = 15116544 * k + 13655492 := by
    unfold C
    simp [show (30233088 * k + 27310984) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13655492) = 7558272 * k + 6827746 := by
    unfold C
    simp [show (15116544 * k + 13655492) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6827746) = 3779136 * k + 3413873 := by
    unfold C
    simp [show (7558272 * k + 6827746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3413873) = 11337408 * k + 10241620 := by
    unfold C
    simp [show (3779136 * k + 3413873) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10241620) = 5668704 * k + 5120810 := by
    unfold C
    simp [show (11337408 * k + 10241620) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5120810) = 2834352 * k + 2560405 := by
    unfold C
    simp [show (5668704 * k + 5120810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2560405) = 8503056 * k + 7681216 := by
    unfold C
    simp [show (2834352 * k + 2560405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7681216) = 4251528 * k + 3840608 := by
    unfold C
    simp [show (8503056 * k + 7681216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3840608) = 2125764 * k + 1920304 := by
    unfold C
    simp [show (4251528 * k + 3840608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1920304) = 1062882 * k + 960152 := by
    unfold C
    simp [show (2125764 * k + 1920304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 960152) = 531441 * k + 480076 := by
    unfold C
    simp [show (1062882 * k + 960152) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 947227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 947227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_947839 : ∀ k : Nat,
    iterate (1048576 * k + 947839) 32 = 531441 * k + 480386 ∧
      531441 * k + 480386 < 1048576 * k + 947839 := by
  intro k
  have h1 : C (1048576 * k + 947839) = 3145728 * k + 2843518 := by
    unfold C
    simp [show (1048576 * k + 947839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2843518) = 1572864 * k + 1421759 := by
    unfold C
    simp [show (3145728 * k + 2843518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1421759) = 4718592 * k + 4265278 := by
    unfold C
    simp [show (1572864 * k + 1421759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4265278) = 2359296 * k + 2132639 := by
    unfold C
    simp [show (4718592 * k + 4265278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2132639) = 7077888 * k + 6397918 := by
    unfold C
    simp [show (2359296 * k + 2132639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6397918) = 3538944 * k + 3198959 := by
    unfold C
    simp [show (7077888 * k + 6397918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3198959) = 10616832 * k + 9596878 := by
    unfold C
    simp [show (3538944 * k + 3198959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9596878) = 5308416 * k + 4798439 := by
    unfold C
    simp [show (10616832 * k + 9596878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4798439) = 15925248 * k + 14395318 := by
    unfold C
    simp [show (5308416 * k + 4798439) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14395318) = 7962624 * k + 7197659 := by
    unfold C
    simp [show (15925248 * k + 14395318) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7197659) = 23887872 * k + 21592978 := by
    unfold C
    simp [show (7962624 * k + 7197659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21592978) = 11943936 * k + 10796489 := by
    unfold C
    simp [show (23887872 * k + 21592978) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10796489) = 35831808 * k + 32389468 := by
    unfold C
    simp [show (11943936 * k + 10796489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 32389468) = 17915904 * k + 16194734 := by
    unfold C
    simp [show (35831808 * k + 32389468) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16194734) = 8957952 * k + 8097367 := by
    unfold C
    simp [show (17915904 * k + 16194734) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8097367) = 26873856 * k + 24292102 := by
    unfold C
    simp [show (8957952 * k + 8097367) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24292102) = 13436928 * k + 12146051 := by
    unfold C
    simp [show (26873856 * k + 24292102) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12146051) = 40310784 * k + 36438154 := by
    unfold C
    simp [show (13436928 * k + 12146051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 36438154) = 20155392 * k + 18219077 := by
    unfold C
    simp [show (40310784 * k + 36438154) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 18219077) = 60466176 * k + 54657232 := by
    unfold C
    simp [show (20155392 * k + 18219077) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 54657232) = 30233088 * k + 27328616 := by
    unfold C
    simp [show (60466176 * k + 54657232) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 27328616) = 15116544 * k + 13664308 := by
    unfold C
    simp [show (30233088 * k + 27328616) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13664308) = 7558272 * k + 6832154 := by
    unfold C
    simp [show (15116544 * k + 13664308) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6832154) = 3779136 * k + 3416077 := by
    unfold C
    simp [show (7558272 * k + 6832154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3416077) = 11337408 * k + 10248232 := by
    unfold C
    simp [show (3779136 * k + 3416077) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10248232) = 5668704 * k + 5124116 := by
    unfold C
    simp [show (11337408 * k + 10248232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5124116) = 2834352 * k + 2562058 := by
    unfold C
    simp [show (5668704 * k + 5124116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2562058) = 1417176 * k + 1281029 := by
    unfold C
    simp [show (2834352 * k + 2562058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1281029) = 4251528 * k + 3843088 := by
    unfold C
    simp [show (1417176 * k + 1281029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3843088) = 2125764 * k + 1921544 := by
    unfold C
    simp [show (4251528 * k + 3843088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1921544) = 1062882 * k + 960772 := by
    unfold C
    simp [show (2125764 * k + 1921544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 960772) = 531441 * k + 480386 := by
    unfold C
    simp [show (1062882 * k + 960772) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 947839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 947839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_948719 : ∀ k : Nat,
    iterate (1048576 * k + 948719) 32 = 531441 * k + 480832 ∧
      531441 * k + 480832 < 1048576 * k + 948719 := by
  intro k
  have h1 : C (1048576 * k + 948719) = 3145728 * k + 2846158 := by
    unfold C
    simp [show (1048576 * k + 948719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2846158) = 1572864 * k + 1423079 := by
    unfold C
    simp [show (3145728 * k + 2846158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1423079) = 4718592 * k + 4269238 := by
    unfold C
    simp [show (1572864 * k + 1423079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4269238) = 2359296 * k + 2134619 := by
    unfold C
    simp [show (4718592 * k + 4269238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2134619) = 7077888 * k + 6403858 := by
    unfold C
    simp [show (2359296 * k + 2134619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6403858) = 3538944 * k + 3201929 := by
    unfold C
    simp [show (7077888 * k + 6403858) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3201929) = 10616832 * k + 9605788 := by
    unfold C
    simp [show (3538944 * k + 3201929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9605788) = 5308416 * k + 4802894 := by
    unfold C
    simp [show (10616832 * k + 9605788) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4802894) = 2654208 * k + 2401447 := by
    unfold C
    simp [show (5308416 * k + 4802894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2401447) = 7962624 * k + 7204342 := by
    unfold C
    simp [show (2654208 * k + 2401447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7204342) = 3981312 * k + 3602171 := by
    unfold C
    simp [show (7962624 * k + 7204342) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3602171) = 11943936 * k + 10806514 := by
    unfold C
    simp [show (3981312 * k + 3602171) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10806514) = 5971968 * k + 5403257 := by
    unfold C
    simp [show (11943936 * k + 10806514) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5403257) = 17915904 * k + 16209772 := by
    unfold C
    simp [show (5971968 * k + 5403257) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16209772) = 8957952 * k + 8104886 := by
    unfold C
    simp [show (17915904 * k + 16209772) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8104886) = 4478976 * k + 4052443 := by
    unfold C
    simp [show (8957952 * k + 8104886) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4052443) = 13436928 * k + 12157330 := by
    unfold C
    simp [show (4478976 * k + 4052443) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12157330) = 6718464 * k + 6078665 := by
    unfold C
    simp [show (13436928 * k + 12157330) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6078665) = 20155392 * k + 18235996 := by
    unfold C
    simp [show (6718464 * k + 6078665) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18235996) = 10077696 * k + 9117998 := by
    unfold C
    simp [show (20155392 * k + 18235996) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9117998) = 5038848 * k + 4558999 := by
    unfold C
    simp [show (10077696 * k + 9117998) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4558999) = 15116544 * k + 13676998 := by
    unfold C
    simp [show (5038848 * k + 4558999) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13676998) = 7558272 * k + 6838499 := by
    unfold C
    simp [show (15116544 * k + 13676998) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6838499) = 22674816 * k + 20515498 := by
    unfold C
    simp [show (7558272 * k + 6838499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20515498) = 11337408 * k + 10257749 := by
    unfold C
    simp [show (22674816 * k + 20515498) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10257749) = 34012224 * k + 30773248 := by
    unfold C
    simp [show (11337408 * k + 10257749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 30773248) = 17006112 * k + 15386624 := by
    unfold C
    simp [show (34012224 * k + 30773248) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15386624) = 8503056 * k + 7693312 := by
    unfold C
    simp [show (17006112 * k + 15386624) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7693312) = 4251528 * k + 3846656 := by
    unfold C
    simp [show (8503056 * k + 7693312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3846656) = 2125764 * k + 1923328 := by
    unfold C
    simp [show (4251528 * k + 3846656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1923328) = 1062882 * k + 961664 := by
    unfold C
    simp [show (2125764 * k + 1923328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 961664) = 531441 * k + 480832 := by
    unfold C
    simp [show (1062882 * k + 961664) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 948719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 948719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_949567 : ∀ k : Nat,
    iterate (1048576 * k + 949567) 32 = 531441 * k + 481262 ∧
      531441 * k + 481262 < 1048576 * k + 949567 := by
  intro k
  have h1 : C (1048576 * k + 949567) = 3145728 * k + 2848702 := by
    unfold C
    simp [show (1048576 * k + 949567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2848702) = 1572864 * k + 1424351 := by
    unfold C
    simp [show (3145728 * k + 2848702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1424351) = 4718592 * k + 4273054 := by
    unfold C
    simp [show (1572864 * k + 1424351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4273054) = 2359296 * k + 2136527 := by
    unfold C
    simp [show (4718592 * k + 4273054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2136527) = 7077888 * k + 6409582 := by
    unfold C
    simp [show (2359296 * k + 2136527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6409582) = 3538944 * k + 3204791 := by
    unfold C
    simp [show (7077888 * k + 6409582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3204791) = 10616832 * k + 9614374 := by
    unfold C
    simp [show (3538944 * k + 3204791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9614374) = 5308416 * k + 4807187 := by
    unfold C
    simp [show (10616832 * k + 9614374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4807187) = 15925248 * k + 14421562 := by
    unfold C
    simp [show (5308416 * k + 4807187) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14421562) = 7962624 * k + 7210781 := by
    unfold C
    simp [show (15925248 * k + 14421562) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7210781) = 23887872 * k + 21632344 := by
    unfold C
    simp [show (7962624 * k + 7210781) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21632344) = 11943936 * k + 10816172 := by
    unfold C
    simp [show (23887872 * k + 21632344) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10816172) = 5971968 * k + 5408086 := by
    unfold C
    simp [show (11943936 * k + 10816172) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5408086) = 2985984 * k + 2704043 := by
    unfold C
    simp [show (5971968 * k + 5408086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2704043) = 8957952 * k + 8112130 := by
    unfold C
    simp [show (2985984 * k + 2704043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8112130) = 4478976 * k + 4056065 := by
    unfold C
    simp [show (8957952 * k + 8112130) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4056065) = 13436928 * k + 12168196 := by
    unfold C
    simp [show (4478976 * k + 4056065) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12168196) = 6718464 * k + 6084098 := by
    unfold C
    simp [show (13436928 * k + 12168196) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6084098) = 3359232 * k + 3042049 := by
    unfold C
    simp [show (6718464 * k + 6084098) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3042049) = 10077696 * k + 9126148 := by
    unfold C
    simp [show (3359232 * k + 3042049) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9126148) = 5038848 * k + 4563074 := by
    unfold C
    simp [show (10077696 * k + 9126148) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4563074) = 2519424 * k + 2281537 := by
    unfold C
    simp [show (5038848 * k + 4563074) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2281537) = 7558272 * k + 6844612 := by
    unfold C
    simp [show (2519424 * k + 2281537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6844612) = 3779136 * k + 3422306 := by
    unfold C
    simp [show (7558272 * k + 6844612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3422306) = 1889568 * k + 1711153 := by
    unfold C
    simp [show (3779136 * k + 3422306) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1711153) = 5668704 * k + 5133460 := by
    unfold C
    simp [show (1889568 * k + 1711153) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5133460) = 2834352 * k + 2566730 := by
    unfold C
    simp [show (5668704 * k + 5133460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2566730) = 1417176 * k + 1283365 := by
    unfold C
    simp [show (2834352 * k + 2566730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1283365) = 4251528 * k + 3850096 := by
    unfold C
    simp [show (1417176 * k + 1283365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3850096) = 2125764 * k + 1925048 := by
    unfold C
    simp [show (4251528 * k + 3850096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1925048) = 1062882 * k + 962524 := by
    unfold C
    simp [show (2125764 * k + 1925048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 962524) = 531441 * k + 481262 := by
    unfold C
    simp [show (1062882 * k + 962524) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 949567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 949567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_950299 : ∀ k : Nat,
    iterate (1048576 * k + 950299) 32 = 531441 * k + 481633 ∧
      531441 * k + 481633 < 1048576 * k + 950299 := by
  intro k
  have h1 : C (1048576 * k + 950299) = 3145728 * k + 2850898 := by
    unfold C
    simp [show (1048576 * k + 950299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2850898) = 1572864 * k + 1425449 := by
    unfold C
    simp [show (3145728 * k + 2850898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1425449) = 4718592 * k + 4276348 := by
    unfold C
    simp [show (1572864 * k + 1425449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4276348) = 2359296 * k + 2138174 := by
    unfold C
    simp [show (4718592 * k + 4276348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2138174) = 1179648 * k + 1069087 := by
    unfold C
    simp [show (2359296 * k + 2138174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1069087) = 3538944 * k + 3207262 := by
    unfold C
    simp [show (1179648 * k + 1069087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3207262) = 1769472 * k + 1603631 := by
    unfold C
    simp [show (3538944 * k + 3207262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1603631) = 5308416 * k + 4810894 := by
    unfold C
    simp [show (1769472 * k + 1603631) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4810894) = 2654208 * k + 2405447 := by
    unfold C
    simp [show (5308416 * k + 4810894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2405447) = 7962624 * k + 7216342 := by
    unfold C
    simp [show (2654208 * k + 2405447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7216342) = 3981312 * k + 3608171 := by
    unfold C
    simp [show (7962624 * k + 7216342) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3608171) = 11943936 * k + 10824514 := by
    unfold C
    simp [show (3981312 * k + 3608171) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10824514) = 5971968 * k + 5412257 := by
    unfold C
    simp [show (11943936 * k + 10824514) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5412257) = 17915904 * k + 16236772 := by
    unfold C
    simp [show (5971968 * k + 5412257) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16236772) = 8957952 * k + 8118386 := by
    unfold C
    simp [show (17915904 * k + 16236772) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8118386) = 4478976 * k + 4059193 := by
    unfold C
    simp [show (8957952 * k + 8118386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4059193) = 13436928 * k + 12177580 := by
    unfold C
    simp [show (4478976 * k + 4059193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12177580) = 6718464 * k + 6088790 := by
    unfold C
    simp [show (13436928 * k + 12177580) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6088790) = 3359232 * k + 3044395 := by
    unfold C
    simp [show (6718464 * k + 6088790) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3044395) = 10077696 * k + 9133186 := by
    unfold C
    simp [show (3359232 * k + 3044395) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9133186) = 5038848 * k + 4566593 := by
    unfold C
    simp [show (10077696 * k + 9133186) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4566593) = 15116544 * k + 13699780 := by
    unfold C
    simp [show (5038848 * k + 4566593) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13699780) = 7558272 * k + 6849890 := by
    unfold C
    simp [show (15116544 * k + 13699780) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6849890) = 3779136 * k + 3424945 := by
    unfold C
    simp [show (7558272 * k + 6849890) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3424945) = 11337408 * k + 10274836 := by
    unfold C
    simp [show (3779136 * k + 3424945) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10274836) = 5668704 * k + 5137418 := by
    unfold C
    simp [show (11337408 * k + 10274836) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5137418) = 2834352 * k + 2568709 := by
    unfold C
    simp [show (5668704 * k + 5137418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2568709) = 8503056 * k + 7706128 := by
    unfold C
    simp [show (2834352 * k + 2568709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7706128) = 4251528 * k + 3853064 := by
    unfold C
    simp [show (8503056 * k + 7706128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3853064) = 2125764 * k + 1926532 := by
    unfold C
    simp [show (4251528 * k + 3853064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1926532) = 1062882 * k + 963266 := by
    unfold C
    simp [show (2125764 * k + 1926532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 963266) = 531441 * k + 481633 := by
    unfold C
    simp [show (1062882 * k + 963266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 950299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 950299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_950767 : ∀ k : Nat,
    iterate (1048576 * k + 950767) 32 = 531441 * k + 481870 ∧
      531441 * k + 481870 < 1048576 * k + 950767 := by
  intro k
  have h1 : C (1048576 * k + 950767) = 3145728 * k + 2852302 := by
    unfold C
    simp [show (1048576 * k + 950767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2852302) = 1572864 * k + 1426151 := by
    unfold C
    simp [show (3145728 * k + 2852302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1426151) = 4718592 * k + 4278454 := by
    unfold C
    simp [show (1572864 * k + 1426151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4278454) = 2359296 * k + 2139227 := by
    unfold C
    simp [show (4718592 * k + 4278454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2139227) = 7077888 * k + 6417682 := by
    unfold C
    simp [show (2359296 * k + 2139227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6417682) = 3538944 * k + 3208841 := by
    unfold C
    simp [show (7077888 * k + 6417682) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3208841) = 10616832 * k + 9626524 := by
    unfold C
    simp [show (3538944 * k + 3208841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9626524) = 5308416 * k + 4813262 := by
    unfold C
    simp [show (10616832 * k + 9626524) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4813262) = 2654208 * k + 2406631 := by
    unfold C
    simp [show (5308416 * k + 4813262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2406631) = 7962624 * k + 7219894 := by
    unfold C
    simp [show (2654208 * k + 2406631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7219894) = 3981312 * k + 3609947 := by
    unfold C
    simp [show (7962624 * k + 7219894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3609947) = 11943936 * k + 10829842 := by
    unfold C
    simp [show (3981312 * k + 3609947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10829842) = 5971968 * k + 5414921 := by
    unfold C
    simp [show (11943936 * k + 10829842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5414921) = 17915904 * k + 16244764 := by
    unfold C
    simp [show (5971968 * k + 5414921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16244764) = 8957952 * k + 8122382 := by
    unfold C
    simp [show (17915904 * k + 16244764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8122382) = 4478976 * k + 4061191 := by
    unfold C
    simp [show (8957952 * k + 8122382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4061191) = 13436928 * k + 12183574 := by
    unfold C
    simp [show (4478976 * k + 4061191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12183574) = 6718464 * k + 6091787 := by
    unfold C
    simp [show (13436928 * k + 12183574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6091787) = 20155392 * k + 18275362 := by
    unfold C
    simp [show (6718464 * k + 6091787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18275362) = 10077696 * k + 9137681 := by
    unfold C
    simp [show (20155392 * k + 18275362) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9137681) = 30233088 * k + 27413044 := by
    unfold C
    simp [show (10077696 * k + 9137681) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27413044) = 15116544 * k + 13706522 := by
    unfold C
    simp [show (30233088 * k + 27413044) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13706522) = 7558272 * k + 6853261 := by
    unfold C
    simp [show (15116544 * k + 13706522) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6853261) = 22674816 * k + 20559784 := by
    unfold C
    simp [show (7558272 * k + 6853261) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20559784) = 11337408 * k + 10279892 := by
    unfold C
    simp [show (22674816 * k + 20559784) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10279892) = 5668704 * k + 5139946 := by
    unfold C
    simp [show (11337408 * k + 10279892) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5139946) = 2834352 * k + 2569973 := by
    unfold C
    simp [show (5668704 * k + 5139946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2569973) = 8503056 * k + 7709920 := by
    unfold C
    simp [show (2834352 * k + 2569973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7709920) = 4251528 * k + 3854960 := by
    unfold C
    simp [show (8503056 * k + 7709920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3854960) = 2125764 * k + 1927480 := by
    unfold C
    simp [show (4251528 * k + 3854960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1927480) = 1062882 * k + 963740 := by
    unfold C
    simp [show (2125764 * k + 1927480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 963740) = 531441 * k + 481870 := by
    unfold C
    simp [show (1062882 * k + 963740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 950767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 950767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_951911 : ∀ k : Nat,
    iterate (1048576 * k + 951911) 32 = 531441 * k + 482450 ∧
      531441 * k + 482450 < 1048576 * k + 951911 := by
  intro k
  have h1 : C (1048576 * k + 951911) = 3145728 * k + 2855734 := by
    unfold C
    simp [show (1048576 * k + 951911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2855734) = 1572864 * k + 1427867 := by
    unfold C
    simp [show (3145728 * k + 2855734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1427867) = 4718592 * k + 4283602 := by
    unfold C
    simp [show (1572864 * k + 1427867) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4283602) = 2359296 * k + 2141801 := by
    unfold C
    simp [show (4718592 * k + 4283602) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2141801) = 7077888 * k + 6425404 := by
    unfold C
    simp [show (2359296 * k + 2141801) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6425404) = 3538944 * k + 3212702 := by
    unfold C
    simp [show (7077888 * k + 6425404) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3212702) = 1769472 * k + 1606351 := by
    unfold C
    simp [show (3538944 * k + 3212702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1606351) = 5308416 * k + 4819054 := by
    unfold C
    simp [show (1769472 * k + 1606351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4819054) = 2654208 * k + 2409527 := by
    unfold C
    simp [show (5308416 * k + 4819054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2409527) = 7962624 * k + 7228582 := by
    unfold C
    simp [show (2654208 * k + 2409527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7228582) = 3981312 * k + 3614291 := by
    unfold C
    simp [show (7962624 * k + 7228582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3614291) = 11943936 * k + 10842874 := by
    unfold C
    simp [show (3981312 * k + 3614291) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10842874) = 5971968 * k + 5421437 := by
    unfold C
    simp [show (11943936 * k + 10842874) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5421437) = 17915904 * k + 16264312 := by
    unfold C
    simp [show (5971968 * k + 5421437) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16264312) = 8957952 * k + 8132156 := by
    unfold C
    simp [show (17915904 * k + 16264312) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8132156) = 4478976 * k + 4066078 := by
    unfold C
    simp [show (8957952 * k + 8132156) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4066078) = 2239488 * k + 2033039 := by
    unfold C
    simp [show (4478976 * k + 4066078) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2033039) = 6718464 * k + 6099118 := by
    unfold C
    simp [show (2239488 * k + 2033039) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6099118) = 3359232 * k + 3049559 := by
    unfold C
    simp [show (6718464 * k + 6099118) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3049559) = 10077696 * k + 9148678 := by
    unfold C
    simp [show (3359232 * k + 3049559) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9148678) = 5038848 * k + 4574339 := by
    unfold C
    simp [show (10077696 * k + 9148678) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4574339) = 15116544 * k + 13723018 := by
    unfold C
    simp [show (5038848 * k + 4574339) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13723018) = 7558272 * k + 6861509 := by
    unfold C
    simp [show (15116544 * k + 13723018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6861509) = 22674816 * k + 20584528 := by
    unfold C
    simp [show (7558272 * k + 6861509) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20584528) = 11337408 * k + 10292264 := by
    unfold C
    simp [show (22674816 * k + 20584528) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10292264) = 5668704 * k + 5146132 := by
    unfold C
    simp [show (11337408 * k + 10292264) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5146132) = 2834352 * k + 2573066 := by
    unfold C
    simp [show (5668704 * k + 5146132) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2573066) = 1417176 * k + 1286533 := by
    unfold C
    simp [show (2834352 * k + 2573066) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1286533) = 4251528 * k + 3859600 := by
    unfold C
    simp [show (1417176 * k + 1286533) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3859600) = 2125764 * k + 1929800 := by
    unfold C
    simp [show (4251528 * k + 3859600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1929800) = 1062882 * k + 964900 := by
    unfold C
    simp [show (2125764 * k + 1929800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 964900) = 531441 * k + 482450 := by
    unfold C
    simp [show (1062882 * k + 964900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 951911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 951911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_952639 : ∀ k : Nat,
    iterate (1048576 * k + 952639) 32 = 531441 * k + 482819 ∧
      531441 * k + 482819 < 1048576 * k + 952639 := by
  intro k
  have h1 : C (1048576 * k + 952639) = 3145728 * k + 2857918 := by
    unfold C
    simp [show (1048576 * k + 952639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2857918) = 1572864 * k + 1428959 := by
    unfold C
    simp [show (3145728 * k + 2857918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1428959) = 4718592 * k + 4286878 := by
    unfold C
    simp [show (1572864 * k + 1428959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4286878) = 2359296 * k + 2143439 := by
    unfold C
    simp [show (4718592 * k + 4286878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2143439) = 7077888 * k + 6430318 := by
    unfold C
    simp [show (2359296 * k + 2143439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6430318) = 3538944 * k + 3215159 := by
    unfold C
    simp [show (7077888 * k + 6430318) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3215159) = 10616832 * k + 9645478 := by
    unfold C
    simp [show (3538944 * k + 3215159) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9645478) = 5308416 * k + 4822739 := by
    unfold C
    simp [show (10616832 * k + 9645478) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4822739) = 15925248 * k + 14468218 := by
    unfold C
    simp [show (5308416 * k + 4822739) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14468218) = 7962624 * k + 7234109 := by
    unfold C
    simp [show (15925248 * k + 14468218) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7234109) = 23887872 * k + 21702328 := by
    unfold C
    simp [show (7962624 * k + 7234109) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21702328) = 11943936 * k + 10851164 := by
    unfold C
    simp [show (23887872 * k + 21702328) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10851164) = 5971968 * k + 5425582 := by
    unfold C
    simp [show (11943936 * k + 10851164) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5425582) = 2985984 * k + 2712791 := by
    unfold C
    simp [show (5971968 * k + 5425582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2712791) = 8957952 * k + 8138374 := by
    unfold C
    simp [show (2985984 * k + 2712791) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8138374) = 4478976 * k + 4069187 := by
    unfold C
    simp [show (8957952 * k + 8138374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4069187) = 13436928 * k + 12207562 := by
    unfold C
    simp [show (4478976 * k + 4069187) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12207562) = 6718464 * k + 6103781 := by
    unfold C
    simp [show (13436928 * k + 12207562) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6103781) = 20155392 * k + 18311344 := by
    unfold C
    simp [show (6718464 * k + 6103781) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18311344) = 10077696 * k + 9155672 := by
    unfold C
    simp [show (20155392 * k + 18311344) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9155672) = 5038848 * k + 4577836 := by
    unfold C
    simp [show (10077696 * k + 9155672) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4577836) = 2519424 * k + 2288918 := by
    unfold C
    simp [show (5038848 * k + 4577836) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2288918) = 1259712 * k + 1144459 := by
    unfold C
    simp [show (2519424 * k + 2288918) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1144459) = 3779136 * k + 3433378 := by
    unfold C
    simp [show (1259712 * k + 1144459) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3433378) = 1889568 * k + 1716689 := by
    unfold C
    simp [show (3779136 * k + 3433378) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1716689) = 5668704 * k + 5150068 := by
    unfold C
    simp [show (1889568 * k + 1716689) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5150068) = 2834352 * k + 2575034 := by
    unfold C
    simp [show (5668704 * k + 5150068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2575034) = 1417176 * k + 1287517 := by
    unfold C
    simp [show (2834352 * k + 2575034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1287517) = 4251528 * k + 3862552 := by
    unfold C
    simp [show (1417176 * k + 1287517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3862552) = 2125764 * k + 1931276 := by
    unfold C
    simp [show (4251528 * k + 3862552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1931276) = 1062882 * k + 965638 := by
    unfold C
    simp [show (2125764 * k + 1931276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 965638) = 531441 * k + 482819 := by
    unfold C
    simp [show (1062882 * k + 965638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 952639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 952639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_952959 : ∀ k : Nat,
    iterate (1048576 * k + 952959) 32 = 531441 * k + 482981 ∧
      531441 * k + 482981 < 1048576 * k + 952959 := by
  intro k
  have h1 : C (1048576 * k + 952959) = 3145728 * k + 2858878 := by
    unfold C
    simp [show (1048576 * k + 952959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2858878) = 1572864 * k + 1429439 := by
    unfold C
    simp [show (3145728 * k + 2858878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1429439) = 4718592 * k + 4288318 := by
    unfold C
    simp [show (1572864 * k + 1429439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4288318) = 2359296 * k + 2144159 := by
    unfold C
    simp [show (4718592 * k + 4288318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2144159) = 7077888 * k + 6432478 := by
    unfold C
    simp [show (2359296 * k + 2144159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6432478) = 3538944 * k + 3216239 := by
    unfold C
    simp [show (7077888 * k + 6432478) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3216239) = 10616832 * k + 9648718 := by
    unfold C
    simp [show (3538944 * k + 3216239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9648718) = 5308416 * k + 4824359 := by
    unfold C
    simp [show (10616832 * k + 9648718) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4824359) = 15925248 * k + 14473078 := by
    unfold C
    simp [show (5308416 * k + 4824359) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14473078) = 7962624 * k + 7236539 := by
    unfold C
    simp [show (15925248 * k + 14473078) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7236539) = 23887872 * k + 21709618 := by
    unfold C
    simp [show (7962624 * k + 7236539) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21709618) = 11943936 * k + 10854809 := by
    unfold C
    simp [show (23887872 * k + 21709618) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10854809) = 35831808 * k + 32564428 := by
    unfold C
    simp [show (11943936 * k + 10854809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 32564428) = 17915904 * k + 16282214 := by
    unfold C
    simp [show (35831808 * k + 32564428) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16282214) = 8957952 * k + 8141107 := by
    unfold C
    simp [show (17915904 * k + 16282214) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8141107) = 26873856 * k + 24423322 := by
    unfold C
    simp [show (8957952 * k + 8141107) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24423322) = 13436928 * k + 12211661 := by
    unfold C
    simp [show (26873856 * k + 24423322) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12211661) = 40310784 * k + 36634984 := by
    unfold C
    simp [show (13436928 * k + 12211661) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 36634984) = 20155392 * k + 18317492 := by
    unfold C
    simp [show (40310784 * k + 36634984) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 18317492) = 10077696 * k + 9158746 := by
    unfold C
    simp [show (20155392 * k + 18317492) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9158746) = 5038848 * k + 4579373 := by
    unfold C
    simp [show (10077696 * k + 9158746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4579373) = 15116544 * k + 13738120 := by
    unfold C
    simp [show (5038848 * k + 4579373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13738120) = 7558272 * k + 6869060 := by
    unfold C
    simp [show (15116544 * k + 13738120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6869060) = 3779136 * k + 3434530 := by
    unfold C
    simp [show (7558272 * k + 6869060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3434530) = 1889568 * k + 1717265 := by
    unfold C
    simp [show (3779136 * k + 3434530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1717265) = 5668704 * k + 5151796 := by
    unfold C
    simp [show (1889568 * k + 1717265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5151796) = 2834352 * k + 2575898 := by
    unfold C
    simp [show (5668704 * k + 5151796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2575898) = 1417176 * k + 1287949 := by
    unfold C
    simp [show (2834352 * k + 2575898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1287949) = 4251528 * k + 3863848 := by
    unfold C
    simp [show (1417176 * k + 1287949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3863848) = 2125764 * k + 1931924 := by
    unfold C
    simp [show (4251528 * k + 3863848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1931924) = 1062882 * k + 965962 := by
    unfold C
    simp [show (2125764 * k + 1931924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 965962) = 531441 * k + 482981 := by
    unfold C
    simp [show (1062882 * k + 965962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 952959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 952959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_953199 : ∀ k : Nat,
    iterate (1048576 * k + 953199) 32 = 531441 * k + 483103 ∧
      531441 * k + 483103 < 1048576 * k + 953199 := by
  intro k
  have h1 : C (1048576 * k + 953199) = 3145728 * k + 2859598 := by
    unfold C
    simp [show (1048576 * k + 953199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2859598) = 1572864 * k + 1429799 := by
    unfold C
    simp [show (3145728 * k + 2859598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1429799) = 4718592 * k + 4289398 := by
    unfold C
    simp [show (1572864 * k + 1429799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4289398) = 2359296 * k + 2144699 := by
    unfold C
    simp [show (4718592 * k + 4289398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2144699) = 7077888 * k + 6434098 := by
    unfold C
    simp [show (2359296 * k + 2144699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6434098) = 3538944 * k + 3217049 := by
    unfold C
    simp [show (7077888 * k + 6434098) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3217049) = 10616832 * k + 9651148 := by
    unfold C
    simp [show (3538944 * k + 3217049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9651148) = 5308416 * k + 4825574 := by
    unfold C
    simp [show (10616832 * k + 9651148) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4825574) = 2654208 * k + 2412787 := by
    unfold C
    simp [show (5308416 * k + 4825574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2412787) = 7962624 * k + 7238362 := by
    unfold C
    simp [show (2654208 * k + 2412787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7238362) = 3981312 * k + 3619181 := by
    unfold C
    simp [show (7962624 * k + 7238362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3619181) = 11943936 * k + 10857544 := by
    unfold C
    simp [show (3981312 * k + 3619181) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10857544) = 5971968 * k + 5428772 := by
    unfold C
    simp [show (11943936 * k + 10857544) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5428772) = 2985984 * k + 2714386 := by
    unfold C
    simp [show (5971968 * k + 5428772) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2714386) = 1492992 * k + 1357193 := by
    unfold C
    simp [show (2985984 * k + 2714386) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1357193) = 4478976 * k + 4071580 := by
    unfold C
    simp [show (1492992 * k + 1357193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4071580) = 2239488 * k + 2035790 := by
    unfold C
    simp [show (4478976 * k + 4071580) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2035790) = 1119744 * k + 1017895 := by
    unfold C
    simp [show (2239488 * k + 2035790) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1017895) = 3359232 * k + 3053686 := by
    unfold C
    simp [show (1119744 * k + 1017895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3053686) = 1679616 * k + 1526843 := by
    unfold C
    simp [show (3359232 * k + 3053686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1526843) = 5038848 * k + 4580530 := by
    unfold C
    simp [show (1679616 * k + 1526843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4580530) = 2519424 * k + 2290265 := by
    unfold C
    simp [show (5038848 * k + 4580530) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2290265) = 7558272 * k + 6870796 := by
    unfold C
    simp [show (2519424 * k + 2290265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6870796) = 3779136 * k + 3435398 := by
    unfold C
    simp [show (7558272 * k + 6870796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3435398) = 1889568 * k + 1717699 := by
    unfold C
    simp [show (3779136 * k + 3435398) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1717699) = 5668704 * k + 5153098 := by
    unfold C
    simp [show (1889568 * k + 1717699) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5153098) = 2834352 * k + 2576549 := by
    unfold C
    simp [show (5668704 * k + 5153098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2576549) = 8503056 * k + 7729648 := by
    unfold C
    simp [show (2834352 * k + 2576549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7729648) = 4251528 * k + 3864824 := by
    unfold C
    simp [show (8503056 * k + 7729648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3864824) = 2125764 * k + 1932412 := by
    unfold C
    simp [show (4251528 * k + 3864824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1932412) = 1062882 * k + 966206 := by
    unfold C
    simp [show (2125764 * k + 1932412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 966206) = 531441 * k + 483103 := by
    unfold C
    simp [show (1062882 * k + 966206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 953199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 953199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_953703 : ∀ k : Nat,
    iterate (1048576 * k + 953703) 32 = 531441 * k + 483358 ∧
      531441 * k + 483358 < 1048576 * k + 953703 := by
  intro k
  have h1 : C (1048576 * k + 953703) = 3145728 * k + 2861110 := by
    unfold C
    simp [show (1048576 * k + 953703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2861110) = 1572864 * k + 1430555 := by
    unfold C
    simp [show (3145728 * k + 2861110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1430555) = 4718592 * k + 4291666 := by
    unfold C
    simp [show (1572864 * k + 1430555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4291666) = 2359296 * k + 2145833 := by
    unfold C
    simp [show (4718592 * k + 4291666) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2145833) = 7077888 * k + 6437500 := by
    unfold C
    simp [show (2359296 * k + 2145833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6437500) = 3538944 * k + 3218750 := by
    unfold C
    simp [show (7077888 * k + 6437500) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3218750) = 1769472 * k + 1609375 := by
    unfold C
    simp [show (3538944 * k + 3218750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1609375) = 5308416 * k + 4828126 := by
    unfold C
    simp [show (1769472 * k + 1609375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4828126) = 2654208 * k + 2414063 := by
    unfold C
    simp [show (5308416 * k + 4828126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2414063) = 7962624 * k + 7242190 := by
    unfold C
    simp [show (2654208 * k + 2414063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7242190) = 3981312 * k + 3621095 := by
    unfold C
    simp [show (7962624 * k + 7242190) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3621095) = 11943936 * k + 10863286 := by
    unfold C
    simp [show (3981312 * k + 3621095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10863286) = 5971968 * k + 5431643 := by
    unfold C
    simp [show (11943936 * k + 10863286) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5431643) = 17915904 * k + 16294930 := by
    unfold C
    simp [show (5971968 * k + 5431643) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16294930) = 8957952 * k + 8147465 := by
    unfold C
    simp [show (17915904 * k + 16294930) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8147465) = 26873856 * k + 24442396 := by
    unfold C
    simp [show (8957952 * k + 8147465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24442396) = 13436928 * k + 12221198 := by
    unfold C
    simp [show (26873856 * k + 24442396) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12221198) = 6718464 * k + 6110599 := by
    unfold C
    simp [show (13436928 * k + 12221198) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6110599) = 20155392 * k + 18331798 := by
    unfold C
    simp [show (6718464 * k + 6110599) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18331798) = 10077696 * k + 9165899 := by
    unfold C
    simp [show (20155392 * k + 18331798) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9165899) = 30233088 * k + 27497698 := by
    unfold C
    simp [show (10077696 * k + 9165899) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27497698) = 15116544 * k + 13748849 := by
    unfold C
    simp [show (30233088 * k + 27497698) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13748849) = 45349632 * k + 41246548 := by
    unfold C
    simp [show (15116544 * k + 13748849) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 41246548) = 22674816 * k + 20623274 := by
    unfold C
    simp [show (45349632 * k + 41246548) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20623274) = 11337408 * k + 10311637 := by
    unfold C
    simp [show (22674816 * k + 20623274) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10311637) = 34012224 * k + 30934912 := by
    unfold C
    simp [show (11337408 * k + 10311637) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 30934912) = 17006112 * k + 15467456 := by
    unfold C
    simp [show (34012224 * k + 30934912) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15467456) = 8503056 * k + 7733728 := by
    unfold C
    simp [show (17006112 * k + 15467456) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7733728) = 4251528 * k + 3866864 := by
    unfold C
    simp [show (8503056 * k + 7733728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3866864) = 2125764 * k + 1933432 := by
    unfold C
    simp [show (4251528 * k + 3866864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1933432) = 1062882 * k + 966716 := by
    unfold C
    simp [show (2125764 * k + 1933432) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 966716) = 531441 * k + 483358 := by
    unfold C
    simp [show (1062882 * k + 966716) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 953703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 953703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_953839 : ∀ k : Nat,
    iterate (1048576 * k + 953839) 32 = 531441 * k + 483427 ∧
      531441 * k + 483427 < 1048576 * k + 953839 := by
  intro k
  have h1 : C (1048576 * k + 953839) = 3145728 * k + 2861518 := by
    unfold C
    simp [show (1048576 * k + 953839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2861518) = 1572864 * k + 1430759 := by
    unfold C
    simp [show (3145728 * k + 2861518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1430759) = 4718592 * k + 4292278 := by
    unfold C
    simp [show (1572864 * k + 1430759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4292278) = 2359296 * k + 2146139 := by
    unfold C
    simp [show (4718592 * k + 4292278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2146139) = 7077888 * k + 6438418 := by
    unfold C
    simp [show (2359296 * k + 2146139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6438418) = 3538944 * k + 3219209 := by
    unfold C
    simp [show (7077888 * k + 6438418) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3219209) = 10616832 * k + 9657628 := by
    unfold C
    simp [show (3538944 * k + 3219209) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9657628) = 5308416 * k + 4828814 := by
    unfold C
    simp [show (10616832 * k + 9657628) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4828814) = 2654208 * k + 2414407 := by
    unfold C
    simp [show (5308416 * k + 4828814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2414407) = 7962624 * k + 7243222 := by
    unfold C
    simp [show (2654208 * k + 2414407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7243222) = 3981312 * k + 3621611 := by
    unfold C
    simp [show (7962624 * k + 7243222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3621611) = 11943936 * k + 10864834 := by
    unfold C
    simp [show (3981312 * k + 3621611) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10864834) = 5971968 * k + 5432417 := by
    unfold C
    simp [show (11943936 * k + 10864834) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5432417) = 17915904 * k + 16297252 := by
    unfold C
    simp [show (5971968 * k + 5432417) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16297252) = 8957952 * k + 8148626 := by
    unfold C
    simp [show (17915904 * k + 16297252) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8148626) = 4478976 * k + 4074313 := by
    unfold C
    simp [show (8957952 * k + 8148626) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4074313) = 13436928 * k + 12222940 := by
    unfold C
    simp [show (4478976 * k + 4074313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12222940) = 6718464 * k + 6111470 := by
    unfold C
    simp [show (13436928 * k + 12222940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6111470) = 3359232 * k + 3055735 := by
    unfold C
    simp [show (6718464 * k + 6111470) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3055735) = 10077696 * k + 9167206 := by
    unfold C
    simp [show (3359232 * k + 3055735) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9167206) = 5038848 * k + 4583603 := by
    unfold C
    simp [show (10077696 * k + 9167206) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4583603) = 15116544 * k + 13750810 := by
    unfold C
    simp [show (5038848 * k + 4583603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13750810) = 7558272 * k + 6875405 := by
    unfold C
    simp [show (15116544 * k + 13750810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6875405) = 22674816 * k + 20626216 := by
    unfold C
    simp [show (7558272 * k + 6875405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20626216) = 11337408 * k + 10313108 := by
    unfold C
    simp [show (22674816 * k + 20626216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10313108) = 5668704 * k + 5156554 := by
    unfold C
    simp [show (11337408 * k + 10313108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5156554) = 2834352 * k + 2578277 := by
    unfold C
    simp [show (5668704 * k + 5156554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2578277) = 8503056 * k + 7734832 := by
    unfold C
    simp [show (2834352 * k + 2578277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7734832) = 4251528 * k + 3867416 := by
    unfold C
    simp [show (8503056 * k + 7734832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3867416) = 2125764 * k + 1933708 := by
    unfold C
    simp [show (4251528 * k + 3867416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1933708) = 1062882 * k + 966854 := by
    unfold C
    simp [show (2125764 * k + 1933708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 966854) = 531441 * k + 483427 := by
    unfold C
    simp [show (1062882 * k + 966854) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 953839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 953839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard121
