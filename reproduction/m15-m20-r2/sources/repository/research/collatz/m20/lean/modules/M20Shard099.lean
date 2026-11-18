import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard099

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_772207 : ∀ k : Nat,
    iterate (1048576 * k + 772207) 32 = 531441 * k + 391372 ∧
      531441 * k + 391372 < 1048576 * k + 772207 := by
  intro k
  have h1 : C (1048576 * k + 772207) = 3145728 * k + 2316622 := by
    unfold C
    simp [show (1048576 * k + 772207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2316622) = 1572864 * k + 1158311 := by
    unfold C
    simp [show (3145728 * k + 2316622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1158311) = 4718592 * k + 3474934 := by
    unfold C
    simp [show (1572864 * k + 1158311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3474934) = 2359296 * k + 1737467 := by
    unfold C
    simp [show (4718592 * k + 3474934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1737467) = 7077888 * k + 5212402 := by
    unfold C
    simp [show (2359296 * k + 1737467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5212402) = 3538944 * k + 2606201 := by
    unfold C
    simp [show (7077888 * k + 5212402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2606201) = 10616832 * k + 7818604 := by
    unfold C
    simp [show (3538944 * k + 2606201) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7818604) = 5308416 * k + 3909302 := by
    unfold C
    simp [show (10616832 * k + 7818604) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3909302) = 2654208 * k + 1954651 := by
    unfold C
    simp [show (5308416 * k + 3909302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1954651) = 7962624 * k + 5863954 := by
    unfold C
    simp [show (2654208 * k + 1954651) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5863954) = 3981312 * k + 2931977 := by
    unfold C
    simp [show (7962624 * k + 5863954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2931977) = 11943936 * k + 8795932 := by
    unfold C
    simp [show (3981312 * k + 2931977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8795932) = 5971968 * k + 4397966 := by
    unfold C
    simp [show (11943936 * k + 8795932) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4397966) = 2985984 * k + 2198983 := by
    unfold C
    simp [show (5971968 * k + 4397966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2198983) = 8957952 * k + 6596950 := by
    unfold C
    simp [show (2985984 * k + 2198983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6596950) = 4478976 * k + 3298475 := by
    unfold C
    simp [show (8957952 * k + 6596950) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3298475) = 13436928 * k + 9895426 := by
    unfold C
    simp [show (4478976 * k + 3298475) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9895426) = 6718464 * k + 4947713 := by
    unfold C
    simp [show (13436928 * k + 9895426) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4947713) = 20155392 * k + 14843140 := by
    unfold C
    simp [show (6718464 * k + 4947713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14843140) = 10077696 * k + 7421570 := by
    unfold C
    simp [show (20155392 * k + 14843140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7421570) = 5038848 * k + 3710785 := by
    unfold C
    simp [show (10077696 * k + 7421570) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3710785) = 15116544 * k + 11132356 := by
    unfold C
    simp [show (5038848 * k + 3710785) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11132356) = 7558272 * k + 5566178 := by
    unfold C
    simp [show (15116544 * k + 11132356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5566178) = 3779136 * k + 2783089 := by
    unfold C
    simp [show (7558272 * k + 5566178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2783089) = 11337408 * k + 8349268 := by
    unfold C
    simp [show (3779136 * k + 2783089) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8349268) = 5668704 * k + 4174634 := by
    unfold C
    simp [show (11337408 * k + 8349268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4174634) = 2834352 * k + 2087317 := by
    unfold C
    simp [show (5668704 * k + 4174634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2087317) = 8503056 * k + 6261952 := by
    unfold C
    simp [show (2834352 * k + 2087317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6261952) = 4251528 * k + 3130976 := by
    unfold C
    simp [show (8503056 * k + 6261952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3130976) = 2125764 * k + 1565488 := by
    unfold C
    simp [show (4251528 * k + 3130976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1565488) = 1062882 * k + 782744 := by
    unfold C
    simp [show (2125764 * k + 1565488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 782744) = 531441 * k + 391372 := by
    unfold C
    simp [show (1062882 * k + 782744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 772207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 772207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_772763 : ∀ k : Nat,
    iterate (1048576 * k + 772763) 32 = 531441 * k + 391654 ∧
      531441 * k + 391654 < 1048576 * k + 772763 := by
  intro k
  have h1 : C (1048576 * k + 772763) = 3145728 * k + 2318290 := by
    unfold C
    simp [show (1048576 * k + 772763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2318290) = 1572864 * k + 1159145 := by
    unfold C
    simp [show (3145728 * k + 2318290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1159145) = 4718592 * k + 3477436 := by
    unfold C
    simp [show (1572864 * k + 1159145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3477436) = 2359296 * k + 1738718 := by
    unfold C
    simp [show (4718592 * k + 3477436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1738718) = 1179648 * k + 869359 := by
    unfold C
    simp [show (2359296 * k + 1738718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 869359) = 3538944 * k + 2608078 := by
    unfold C
    simp [show (1179648 * k + 869359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2608078) = 1769472 * k + 1304039 := by
    unfold C
    simp [show (3538944 * k + 2608078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1304039) = 5308416 * k + 3912118 := by
    unfold C
    simp [show (1769472 * k + 1304039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3912118) = 2654208 * k + 1956059 := by
    unfold C
    simp [show (5308416 * k + 3912118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1956059) = 7962624 * k + 5868178 := by
    unfold C
    simp [show (2654208 * k + 1956059) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5868178) = 3981312 * k + 2934089 := by
    unfold C
    simp [show (7962624 * k + 5868178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2934089) = 11943936 * k + 8802268 := by
    unfold C
    simp [show (3981312 * k + 2934089) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8802268) = 5971968 * k + 4401134 := by
    unfold C
    simp [show (11943936 * k + 8802268) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4401134) = 2985984 * k + 2200567 := by
    unfold C
    simp [show (5971968 * k + 4401134) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2200567) = 8957952 * k + 6601702 := by
    unfold C
    simp [show (2985984 * k + 2200567) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6601702) = 4478976 * k + 3300851 := by
    unfold C
    simp [show (8957952 * k + 6601702) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3300851) = 13436928 * k + 9902554 := by
    unfold C
    simp [show (4478976 * k + 3300851) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9902554) = 6718464 * k + 4951277 := by
    unfold C
    simp [show (13436928 * k + 9902554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4951277) = 20155392 * k + 14853832 := by
    unfold C
    simp [show (6718464 * k + 4951277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14853832) = 10077696 * k + 7426916 := by
    unfold C
    simp [show (20155392 * k + 14853832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7426916) = 5038848 * k + 3713458 := by
    unfold C
    simp [show (10077696 * k + 7426916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3713458) = 2519424 * k + 1856729 := by
    unfold C
    simp [show (5038848 * k + 3713458) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1856729) = 7558272 * k + 5570188 := by
    unfold C
    simp [show (2519424 * k + 1856729) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5570188) = 3779136 * k + 2785094 := by
    unfold C
    simp [show (7558272 * k + 5570188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2785094) = 1889568 * k + 1392547 := by
    unfold C
    simp [show (3779136 * k + 2785094) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1392547) = 5668704 * k + 4177642 := by
    unfold C
    simp [show (1889568 * k + 1392547) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4177642) = 2834352 * k + 2088821 := by
    unfold C
    simp [show (5668704 * k + 4177642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2088821) = 8503056 * k + 6266464 := by
    unfold C
    simp [show (2834352 * k + 2088821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6266464) = 4251528 * k + 3133232 := by
    unfold C
    simp [show (8503056 * k + 6266464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3133232) = 2125764 * k + 1566616 := by
    unfold C
    simp [show (4251528 * k + 3133232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1566616) = 1062882 * k + 783308 := by
    unfold C
    simp [show (2125764 * k + 1566616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 783308) = 531441 * k + 391654 := by
    unfold C
    simp [show (1062882 * k + 783308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 772763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 772763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_772799 : ∀ k : Nat,
    iterate (1048576 * k + 772799) 32 = 531441 * k + 391672 ∧
      531441 * k + 391672 < 1048576 * k + 772799 := by
  intro k
  have h1 : C (1048576 * k + 772799) = 3145728 * k + 2318398 := by
    unfold C
    simp [show (1048576 * k + 772799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2318398) = 1572864 * k + 1159199 := by
    unfold C
    simp [show (3145728 * k + 2318398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1159199) = 4718592 * k + 3477598 := by
    unfold C
    simp [show (1572864 * k + 1159199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3477598) = 2359296 * k + 1738799 := by
    unfold C
    simp [show (4718592 * k + 3477598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1738799) = 7077888 * k + 5216398 := by
    unfold C
    simp [show (2359296 * k + 1738799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5216398) = 3538944 * k + 2608199 := by
    unfold C
    simp [show (7077888 * k + 5216398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2608199) = 10616832 * k + 7824598 := by
    unfold C
    simp [show (3538944 * k + 2608199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7824598) = 5308416 * k + 3912299 := by
    unfold C
    simp [show (10616832 * k + 7824598) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3912299) = 15925248 * k + 11736898 := by
    unfold C
    simp [show (5308416 * k + 3912299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11736898) = 7962624 * k + 5868449 := by
    unfold C
    simp [show (15925248 * k + 11736898) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5868449) = 23887872 * k + 17605348 := by
    unfold C
    simp [show (7962624 * k + 5868449) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17605348) = 11943936 * k + 8802674 := by
    unfold C
    simp [show (23887872 * k + 17605348) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8802674) = 5971968 * k + 4401337 := by
    unfold C
    simp [show (11943936 * k + 8802674) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4401337) = 17915904 * k + 13204012 := by
    unfold C
    simp [show (5971968 * k + 4401337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13204012) = 8957952 * k + 6602006 := by
    unfold C
    simp [show (17915904 * k + 13204012) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6602006) = 4478976 * k + 3301003 := by
    unfold C
    simp [show (8957952 * k + 6602006) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3301003) = 13436928 * k + 9903010 := by
    unfold C
    simp [show (4478976 * k + 3301003) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9903010) = 6718464 * k + 4951505 := by
    unfold C
    simp [show (13436928 * k + 9903010) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4951505) = 20155392 * k + 14854516 := by
    unfold C
    simp [show (6718464 * k + 4951505) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14854516) = 10077696 * k + 7427258 := by
    unfold C
    simp [show (20155392 * k + 14854516) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7427258) = 5038848 * k + 3713629 := by
    unfold C
    simp [show (10077696 * k + 7427258) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3713629) = 15116544 * k + 11140888 := by
    unfold C
    simp [show (5038848 * k + 3713629) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11140888) = 7558272 * k + 5570444 := by
    unfold C
    simp [show (15116544 * k + 11140888) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5570444) = 3779136 * k + 2785222 := by
    unfold C
    simp [show (7558272 * k + 5570444) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2785222) = 1889568 * k + 1392611 := by
    unfold C
    simp [show (3779136 * k + 2785222) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1392611) = 5668704 * k + 4177834 := by
    unfold C
    simp [show (1889568 * k + 1392611) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4177834) = 2834352 * k + 2088917 := by
    unfold C
    simp [show (5668704 * k + 4177834) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2088917) = 8503056 * k + 6266752 := by
    unfold C
    simp [show (2834352 * k + 2088917) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6266752) = 4251528 * k + 3133376 := by
    unfold C
    simp [show (8503056 * k + 6266752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3133376) = 2125764 * k + 1566688 := by
    unfold C
    simp [show (4251528 * k + 3133376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1566688) = 1062882 * k + 783344 := by
    unfold C
    simp [show (2125764 * k + 1566688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 783344) = 531441 * k + 391672 := by
    unfold C
    simp [show (1062882 * k + 783344) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 772799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 772799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_772895 : ∀ k : Nat,
    iterate (1048576 * k + 772895) 32 = 531441 * k + 391721 ∧
      531441 * k + 391721 < 1048576 * k + 772895 := by
  intro k
  have h1 : C (1048576 * k + 772895) = 3145728 * k + 2318686 := by
    unfold C
    simp [show (1048576 * k + 772895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2318686) = 1572864 * k + 1159343 := by
    unfold C
    simp [show (3145728 * k + 2318686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1159343) = 4718592 * k + 3478030 := by
    unfold C
    simp [show (1572864 * k + 1159343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3478030) = 2359296 * k + 1739015 := by
    unfold C
    simp [show (4718592 * k + 3478030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1739015) = 7077888 * k + 5217046 := by
    unfold C
    simp [show (2359296 * k + 1739015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5217046) = 3538944 * k + 2608523 := by
    unfold C
    simp [show (7077888 * k + 5217046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2608523) = 10616832 * k + 7825570 := by
    unfold C
    simp [show (3538944 * k + 2608523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7825570) = 5308416 * k + 3912785 := by
    unfold C
    simp [show (10616832 * k + 7825570) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3912785) = 15925248 * k + 11738356 := by
    unfold C
    simp [show (5308416 * k + 3912785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11738356) = 7962624 * k + 5869178 := by
    unfold C
    simp [show (15925248 * k + 11738356) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5869178) = 3981312 * k + 2934589 := by
    unfold C
    simp [show (7962624 * k + 5869178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2934589) = 11943936 * k + 8803768 := by
    unfold C
    simp [show (3981312 * k + 2934589) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8803768) = 5971968 * k + 4401884 := by
    unfold C
    simp [show (11943936 * k + 8803768) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4401884) = 2985984 * k + 2200942 := by
    unfold C
    simp [show (5971968 * k + 4401884) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2200942) = 1492992 * k + 1100471 := by
    unfold C
    simp [show (2985984 * k + 2200942) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1100471) = 4478976 * k + 3301414 := by
    unfold C
    simp [show (1492992 * k + 1100471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3301414) = 2239488 * k + 1650707 := by
    unfold C
    simp [show (4478976 * k + 3301414) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1650707) = 6718464 * k + 4952122 := by
    unfold C
    simp [show (2239488 * k + 1650707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4952122) = 3359232 * k + 2476061 := by
    unfold C
    simp [show (6718464 * k + 4952122) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2476061) = 10077696 * k + 7428184 := by
    unfold C
    simp [show (3359232 * k + 2476061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7428184) = 5038848 * k + 3714092 := by
    unfold C
    simp [show (10077696 * k + 7428184) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3714092) = 2519424 * k + 1857046 := by
    unfold C
    simp [show (5038848 * k + 3714092) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1857046) = 1259712 * k + 928523 := by
    unfold C
    simp [show (2519424 * k + 1857046) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 928523) = 3779136 * k + 2785570 := by
    unfold C
    simp [show (1259712 * k + 928523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2785570) = 1889568 * k + 1392785 := by
    unfold C
    simp [show (3779136 * k + 2785570) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1392785) = 5668704 * k + 4178356 := by
    unfold C
    simp [show (1889568 * k + 1392785) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4178356) = 2834352 * k + 2089178 := by
    unfold C
    simp [show (5668704 * k + 4178356) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2089178) = 1417176 * k + 1044589 := by
    unfold C
    simp [show (2834352 * k + 2089178) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1044589) = 4251528 * k + 3133768 := by
    unfold C
    simp [show (1417176 * k + 1044589) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3133768) = 2125764 * k + 1566884 := by
    unfold C
    simp [show (4251528 * k + 3133768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1566884) = 1062882 * k + 783442 := by
    unfold C
    simp [show (2125764 * k + 1566884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 783442) = 531441 * k + 391721 := by
    unfold C
    simp [show (1062882 * k + 783442) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 772895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 772895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_773119 : ∀ k : Nat,
    iterate (1048576 * k + 773119) 32 = 531441 * k + 391834 ∧
      531441 * k + 391834 < 1048576 * k + 773119 := by
  intro k
  have h1 : C (1048576 * k + 773119) = 3145728 * k + 2319358 := by
    unfold C
    simp [show (1048576 * k + 773119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2319358) = 1572864 * k + 1159679 := by
    unfold C
    simp [show (3145728 * k + 2319358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1159679) = 4718592 * k + 3479038 := by
    unfold C
    simp [show (1572864 * k + 1159679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3479038) = 2359296 * k + 1739519 := by
    unfold C
    simp [show (4718592 * k + 3479038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1739519) = 7077888 * k + 5218558 := by
    unfold C
    simp [show (2359296 * k + 1739519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5218558) = 3538944 * k + 2609279 := by
    unfold C
    simp [show (7077888 * k + 5218558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2609279) = 10616832 * k + 7827838 := by
    unfold C
    simp [show (3538944 * k + 2609279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7827838) = 5308416 * k + 3913919 := by
    unfold C
    simp [show (10616832 * k + 7827838) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3913919) = 15925248 * k + 11741758 := by
    unfold C
    simp [show (5308416 * k + 3913919) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11741758) = 7962624 * k + 5870879 := by
    unfold C
    simp [show (15925248 * k + 11741758) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5870879) = 23887872 * k + 17612638 := by
    unfold C
    simp [show (7962624 * k + 5870879) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17612638) = 11943936 * k + 8806319 := by
    unfold C
    simp [show (23887872 * k + 17612638) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8806319) = 35831808 * k + 26418958 := by
    unfold C
    simp [show (11943936 * k + 8806319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26418958) = 17915904 * k + 13209479 := by
    unfold C
    simp [show (35831808 * k + 26418958) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13209479) = 53747712 * k + 39628438 := by
    unfold C
    simp [show (17915904 * k + 13209479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39628438) = 26873856 * k + 19814219 := by
    unfold C
    simp [show (53747712 * k + 39628438) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19814219) = 80621568 * k + 59442658 := by
    unfold C
    simp [show (26873856 * k + 19814219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 59442658) = 40310784 * k + 29721329 := by
    unfold C
    simp [show (80621568 * k + 59442658) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 29721329) = 120932352 * k + 89163988 := by
    unfold C
    simp [show (40310784 * k + 29721329) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 89163988) = 60466176 * k + 44581994 := by
    unfold C
    simp [show (120932352 * k + 89163988) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 44581994) = 30233088 * k + 22290997 := by
    unfold C
    simp [show (60466176 * k + 44581994) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22290997) = 90699264 * k + 66872992 := by
    unfold C
    simp [show (30233088 * k + 22290997) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 66872992) = 45349632 * k + 33436496 := by
    unfold C
    simp [show (90699264 * k + 66872992) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 33436496) = 22674816 * k + 16718248 := by
    unfold C
    simp [show (45349632 * k + 33436496) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16718248) = 11337408 * k + 8359124 := by
    unfold C
    simp [show (22674816 * k + 16718248) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8359124) = 5668704 * k + 4179562 := by
    unfold C
    simp [show (11337408 * k + 8359124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4179562) = 2834352 * k + 2089781 := by
    unfold C
    simp [show (5668704 * k + 4179562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2089781) = 8503056 * k + 6269344 := by
    unfold C
    simp [show (2834352 * k + 2089781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6269344) = 4251528 * k + 3134672 := by
    unfold C
    simp [show (8503056 * k + 6269344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3134672) = 2125764 * k + 1567336 := by
    unfold C
    simp [show (4251528 * k + 3134672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1567336) = 1062882 * k + 783668 := by
    unfold C
    simp [show (2125764 * k + 1567336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 783668) = 531441 * k + 391834 := by
    unfold C
    simp [show (1062882 * k + 783668) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 773119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 773119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_773535 : ∀ k : Nat,
    iterate (1048576 * k + 773535) 32 = 531441 * k + 392045 ∧
      531441 * k + 392045 < 1048576 * k + 773535 := by
  intro k
  have h1 : C (1048576 * k + 773535) = 3145728 * k + 2320606 := by
    unfold C
    simp [show (1048576 * k + 773535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2320606) = 1572864 * k + 1160303 := by
    unfold C
    simp [show (3145728 * k + 2320606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1160303) = 4718592 * k + 3480910 := by
    unfold C
    simp [show (1572864 * k + 1160303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3480910) = 2359296 * k + 1740455 := by
    unfold C
    simp [show (4718592 * k + 3480910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1740455) = 7077888 * k + 5221366 := by
    unfold C
    simp [show (2359296 * k + 1740455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5221366) = 3538944 * k + 2610683 := by
    unfold C
    simp [show (7077888 * k + 5221366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2610683) = 10616832 * k + 7832050 := by
    unfold C
    simp [show (3538944 * k + 2610683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7832050) = 5308416 * k + 3916025 := by
    unfold C
    simp [show (10616832 * k + 7832050) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3916025) = 15925248 * k + 11748076 := by
    unfold C
    simp [show (5308416 * k + 3916025) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11748076) = 7962624 * k + 5874038 := by
    unfold C
    simp [show (15925248 * k + 11748076) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5874038) = 3981312 * k + 2937019 := by
    unfold C
    simp [show (7962624 * k + 5874038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2937019) = 11943936 * k + 8811058 := by
    unfold C
    simp [show (3981312 * k + 2937019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8811058) = 5971968 * k + 4405529 := by
    unfold C
    simp [show (11943936 * k + 8811058) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4405529) = 17915904 * k + 13216588 := by
    unfold C
    simp [show (5971968 * k + 4405529) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13216588) = 8957952 * k + 6608294 := by
    unfold C
    simp [show (17915904 * k + 13216588) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6608294) = 4478976 * k + 3304147 := by
    unfold C
    simp [show (8957952 * k + 6608294) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3304147) = 13436928 * k + 9912442 := by
    unfold C
    simp [show (4478976 * k + 3304147) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9912442) = 6718464 * k + 4956221 := by
    unfold C
    simp [show (13436928 * k + 9912442) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4956221) = 20155392 * k + 14868664 := by
    unfold C
    simp [show (6718464 * k + 4956221) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14868664) = 10077696 * k + 7434332 := by
    unfold C
    simp [show (20155392 * k + 14868664) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7434332) = 5038848 * k + 3717166 := by
    unfold C
    simp [show (10077696 * k + 7434332) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3717166) = 2519424 * k + 1858583 := by
    unfold C
    simp [show (5038848 * k + 3717166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1858583) = 7558272 * k + 5575750 := by
    unfold C
    simp [show (2519424 * k + 1858583) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5575750) = 3779136 * k + 2787875 := by
    unfold C
    simp [show (7558272 * k + 5575750) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2787875) = 11337408 * k + 8363626 := by
    unfold C
    simp [show (3779136 * k + 2787875) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8363626) = 5668704 * k + 4181813 := by
    unfold C
    simp [show (11337408 * k + 8363626) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4181813) = 17006112 * k + 12545440 := by
    unfold C
    simp [show (5668704 * k + 4181813) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12545440) = 8503056 * k + 6272720 := by
    unfold C
    simp [show (17006112 * k + 12545440) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6272720) = 4251528 * k + 3136360 := by
    unfold C
    simp [show (8503056 * k + 6272720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3136360) = 2125764 * k + 1568180 := by
    unfold C
    simp [show (4251528 * k + 3136360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1568180) = 1062882 * k + 784090 := by
    unfold C
    simp [show (2125764 * k + 1568180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784090) = 531441 * k + 392045 := by
    unfold C
    simp [show (1062882 * k + 784090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 773535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 773535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_773663 : ∀ k : Nat,
    iterate (1048576 * k + 773663) 32 = 531441 * k + 392110 ∧
      531441 * k + 392110 < 1048576 * k + 773663 := by
  intro k
  have h1 : C (1048576 * k + 773663) = 3145728 * k + 2320990 := by
    unfold C
    simp [show (1048576 * k + 773663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2320990) = 1572864 * k + 1160495 := by
    unfold C
    simp [show (3145728 * k + 2320990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1160495) = 4718592 * k + 3481486 := by
    unfold C
    simp [show (1572864 * k + 1160495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3481486) = 2359296 * k + 1740743 := by
    unfold C
    simp [show (4718592 * k + 3481486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1740743) = 7077888 * k + 5222230 := by
    unfold C
    simp [show (2359296 * k + 1740743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5222230) = 3538944 * k + 2611115 := by
    unfold C
    simp [show (7077888 * k + 5222230) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2611115) = 10616832 * k + 7833346 := by
    unfold C
    simp [show (3538944 * k + 2611115) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7833346) = 5308416 * k + 3916673 := by
    unfold C
    simp [show (10616832 * k + 7833346) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3916673) = 15925248 * k + 11750020 := by
    unfold C
    simp [show (5308416 * k + 3916673) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11750020) = 7962624 * k + 5875010 := by
    unfold C
    simp [show (15925248 * k + 11750020) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5875010) = 3981312 * k + 2937505 := by
    unfold C
    simp [show (7962624 * k + 5875010) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2937505) = 11943936 * k + 8812516 := by
    unfold C
    simp [show (3981312 * k + 2937505) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8812516) = 5971968 * k + 4406258 := by
    unfold C
    simp [show (11943936 * k + 8812516) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4406258) = 2985984 * k + 2203129 := by
    unfold C
    simp [show (5971968 * k + 4406258) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2203129) = 8957952 * k + 6609388 := by
    unfold C
    simp [show (2985984 * k + 2203129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6609388) = 4478976 * k + 3304694 := by
    unfold C
    simp [show (8957952 * k + 6609388) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3304694) = 2239488 * k + 1652347 := by
    unfold C
    simp [show (4478976 * k + 3304694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1652347) = 6718464 * k + 4957042 := by
    unfold C
    simp [show (2239488 * k + 1652347) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4957042) = 3359232 * k + 2478521 := by
    unfold C
    simp [show (6718464 * k + 4957042) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2478521) = 10077696 * k + 7435564 := by
    unfold C
    simp [show (3359232 * k + 2478521) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7435564) = 5038848 * k + 3717782 := by
    unfold C
    simp [show (10077696 * k + 7435564) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3717782) = 2519424 * k + 1858891 := by
    unfold C
    simp [show (5038848 * k + 3717782) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1858891) = 7558272 * k + 5576674 := by
    unfold C
    simp [show (2519424 * k + 1858891) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5576674) = 3779136 * k + 2788337 := by
    unfold C
    simp [show (7558272 * k + 5576674) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2788337) = 11337408 * k + 8365012 := by
    unfold C
    simp [show (3779136 * k + 2788337) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8365012) = 5668704 * k + 4182506 := by
    unfold C
    simp [show (11337408 * k + 8365012) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4182506) = 2834352 * k + 2091253 := by
    unfold C
    simp [show (5668704 * k + 4182506) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2091253) = 8503056 * k + 6273760 := by
    unfold C
    simp [show (2834352 * k + 2091253) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6273760) = 4251528 * k + 3136880 := by
    unfold C
    simp [show (8503056 * k + 6273760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3136880) = 2125764 * k + 1568440 := by
    unfold C
    simp [show (4251528 * k + 3136880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1568440) = 1062882 * k + 784220 := by
    unfold C
    simp [show (2125764 * k + 1568440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784220) = 531441 * k + 392110 := by
    unfold C
    simp [show (1062882 * k + 784220) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 773663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 773663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_773823 : ∀ k : Nat,
    iterate (1048576 * k + 773823) 32 = 531441 * k + 392191 ∧
      531441 * k + 392191 < 1048576 * k + 773823 := by
  intro k
  have h1 : C (1048576 * k + 773823) = 3145728 * k + 2321470 := by
    unfold C
    simp [show (1048576 * k + 773823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2321470) = 1572864 * k + 1160735 := by
    unfold C
    simp [show (3145728 * k + 2321470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1160735) = 4718592 * k + 3482206 := by
    unfold C
    simp [show (1572864 * k + 1160735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3482206) = 2359296 * k + 1741103 := by
    unfold C
    simp [show (4718592 * k + 3482206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1741103) = 7077888 * k + 5223310 := by
    unfold C
    simp [show (2359296 * k + 1741103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5223310) = 3538944 * k + 2611655 := by
    unfold C
    simp [show (7077888 * k + 5223310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2611655) = 10616832 * k + 7834966 := by
    unfold C
    simp [show (3538944 * k + 2611655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7834966) = 5308416 * k + 3917483 := by
    unfold C
    simp [show (10616832 * k + 7834966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3917483) = 15925248 * k + 11752450 := by
    unfold C
    simp [show (5308416 * k + 3917483) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11752450) = 7962624 * k + 5876225 := by
    unfold C
    simp [show (15925248 * k + 11752450) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5876225) = 23887872 * k + 17628676 := by
    unfold C
    simp [show (7962624 * k + 5876225) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17628676) = 11943936 * k + 8814338 := by
    unfold C
    simp [show (23887872 * k + 17628676) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8814338) = 5971968 * k + 4407169 := by
    unfold C
    simp [show (11943936 * k + 8814338) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4407169) = 17915904 * k + 13221508 := by
    unfold C
    simp [show (5971968 * k + 4407169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13221508) = 8957952 * k + 6610754 := by
    unfold C
    simp [show (17915904 * k + 13221508) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6610754) = 4478976 * k + 3305377 := by
    unfold C
    simp [show (8957952 * k + 6610754) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3305377) = 13436928 * k + 9916132 := by
    unfold C
    simp [show (4478976 * k + 3305377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9916132) = 6718464 * k + 4958066 := by
    unfold C
    simp [show (13436928 * k + 9916132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4958066) = 3359232 * k + 2479033 := by
    unfold C
    simp [show (6718464 * k + 4958066) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2479033) = 10077696 * k + 7437100 := by
    unfold C
    simp [show (3359232 * k + 2479033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7437100) = 5038848 * k + 3718550 := by
    unfold C
    simp [show (10077696 * k + 7437100) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3718550) = 2519424 * k + 1859275 := by
    unfold C
    simp [show (5038848 * k + 3718550) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1859275) = 7558272 * k + 5577826 := by
    unfold C
    simp [show (2519424 * k + 1859275) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5577826) = 3779136 * k + 2788913 := by
    unfold C
    simp [show (7558272 * k + 5577826) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2788913) = 11337408 * k + 8366740 := by
    unfold C
    simp [show (3779136 * k + 2788913) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8366740) = 5668704 * k + 4183370 := by
    unfold C
    simp [show (11337408 * k + 8366740) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4183370) = 2834352 * k + 2091685 := by
    unfold C
    simp [show (5668704 * k + 4183370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2091685) = 8503056 * k + 6275056 := by
    unfold C
    simp [show (2834352 * k + 2091685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6275056) = 4251528 * k + 3137528 := by
    unfold C
    simp [show (8503056 * k + 6275056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3137528) = 2125764 * k + 1568764 := by
    unfold C
    simp [show (4251528 * k + 3137528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1568764) = 1062882 * k + 784382 := by
    unfold C
    simp [show (2125764 * k + 1568764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784382) = 531441 * k + 392191 := by
    unfold C
    simp [show (1062882 * k + 784382) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 773823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 773823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_773919 : ∀ k : Nat,
    iterate (1048576 * k + 773919) 32 = 531441 * k + 392240 ∧
      531441 * k + 392240 < 1048576 * k + 773919 := by
  intro k
  have h1 : C (1048576 * k + 773919) = 3145728 * k + 2321758 := by
    unfold C
    simp [show (1048576 * k + 773919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2321758) = 1572864 * k + 1160879 := by
    unfold C
    simp [show (3145728 * k + 2321758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1160879) = 4718592 * k + 3482638 := by
    unfold C
    simp [show (1572864 * k + 1160879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3482638) = 2359296 * k + 1741319 := by
    unfold C
    simp [show (4718592 * k + 3482638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1741319) = 7077888 * k + 5223958 := by
    unfold C
    simp [show (2359296 * k + 1741319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5223958) = 3538944 * k + 2611979 := by
    unfold C
    simp [show (7077888 * k + 5223958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2611979) = 10616832 * k + 7835938 := by
    unfold C
    simp [show (3538944 * k + 2611979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7835938) = 5308416 * k + 3917969 := by
    unfold C
    simp [show (10616832 * k + 7835938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3917969) = 15925248 * k + 11753908 := by
    unfold C
    simp [show (5308416 * k + 3917969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11753908) = 7962624 * k + 5876954 := by
    unfold C
    simp [show (15925248 * k + 11753908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5876954) = 3981312 * k + 2938477 := by
    unfold C
    simp [show (7962624 * k + 5876954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2938477) = 11943936 * k + 8815432 := by
    unfold C
    simp [show (3981312 * k + 2938477) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8815432) = 5971968 * k + 4407716 := by
    unfold C
    simp [show (11943936 * k + 8815432) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4407716) = 2985984 * k + 2203858 := by
    unfold C
    simp [show (5971968 * k + 4407716) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2203858) = 1492992 * k + 1101929 := by
    unfold C
    simp [show (2985984 * k + 2203858) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1101929) = 4478976 * k + 3305788 := by
    unfold C
    simp [show (1492992 * k + 1101929) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3305788) = 2239488 * k + 1652894 := by
    unfold C
    simp [show (4478976 * k + 3305788) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1652894) = 1119744 * k + 826447 := by
    unfold C
    simp [show (2239488 * k + 1652894) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 826447) = 3359232 * k + 2479342 := by
    unfold C
    simp [show (1119744 * k + 826447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2479342) = 1679616 * k + 1239671 := by
    unfold C
    simp [show (3359232 * k + 2479342) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1239671) = 5038848 * k + 3719014 := by
    unfold C
    simp [show (1679616 * k + 1239671) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3719014) = 2519424 * k + 1859507 := by
    unfold C
    simp [show (5038848 * k + 3719014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1859507) = 7558272 * k + 5578522 := by
    unfold C
    simp [show (2519424 * k + 1859507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5578522) = 3779136 * k + 2789261 := by
    unfold C
    simp [show (7558272 * k + 5578522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2789261) = 11337408 * k + 8367784 := by
    unfold C
    simp [show (3779136 * k + 2789261) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8367784) = 5668704 * k + 4183892 := by
    unfold C
    simp [show (11337408 * k + 8367784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4183892) = 2834352 * k + 2091946 := by
    unfold C
    simp [show (5668704 * k + 4183892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2091946) = 1417176 * k + 1045973 := by
    unfold C
    simp [show (2834352 * k + 2091946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1045973) = 4251528 * k + 3137920 := by
    unfold C
    simp [show (1417176 * k + 1045973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3137920) = 2125764 * k + 1568960 := by
    unfold C
    simp [show (4251528 * k + 3137920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1568960) = 1062882 * k + 784480 := by
    unfold C
    simp [show (2125764 * k + 1568960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784480) = 531441 * k + 392240 := by
    unfold C
    simp [show (1062882 * k + 784480) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 773919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 773919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_774255 : ∀ k : Nat,
    iterate (1048576 * k + 774255) 32 = 531441 * k + 392410 ∧
      531441 * k + 392410 < 1048576 * k + 774255 := by
  intro k
  have h1 : C (1048576 * k + 774255) = 3145728 * k + 2322766 := by
    unfold C
    simp [show (1048576 * k + 774255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2322766) = 1572864 * k + 1161383 := by
    unfold C
    simp [show (3145728 * k + 2322766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1161383) = 4718592 * k + 3484150 := by
    unfold C
    simp [show (1572864 * k + 1161383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3484150) = 2359296 * k + 1742075 := by
    unfold C
    simp [show (4718592 * k + 3484150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1742075) = 7077888 * k + 5226226 := by
    unfold C
    simp [show (2359296 * k + 1742075) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5226226) = 3538944 * k + 2613113 := by
    unfold C
    simp [show (7077888 * k + 5226226) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2613113) = 10616832 * k + 7839340 := by
    unfold C
    simp [show (3538944 * k + 2613113) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7839340) = 5308416 * k + 3919670 := by
    unfold C
    simp [show (10616832 * k + 7839340) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3919670) = 2654208 * k + 1959835 := by
    unfold C
    simp [show (5308416 * k + 3919670) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1959835) = 7962624 * k + 5879506 := by
    unfold C
    simp [show (2654208 * k + 1959835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5879506) = 3981312 * k + 2939753 := by
    unfold C
    simp [show (7962624 * k + 5879506) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2939753) = 11943936 * k + 8819260 := by
    unfold C
    simp [show (3981312 * k + 2939753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8819260) = 5971968 * k + 4409630 := by
    unfold C
    simp [show (11943936 * k + 8819260) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4409630) = 2985984 * k + 2204815 := by
    unfold C
    simp [show (5971968 * k + 4409630) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2204815) = 8957952 * k + 6614446 := by
    unfold C
    simp [show (2985984 * k + 2204815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6614446) = 4478976 * k + 3307223 := by
    unfold C
    simp [show (8957952 * k + 6614446) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3307223) = 13436928 * k + 9921670 := by
    unfold C
    simp [show (4478976 * k + 3307223) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9921670) = 6718464 * k + 4960835 := by
    unfold C
    simp [show (13436928 * k + 9921670) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4960835) = 20155392 * k + 14882506 := by
    unfold C
    simp [show (6718464 * k + 4960835) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14882506) = 10077696 * k + 7441253 := by
    unfold C
    simp [show (20155392 * k + 14882506) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7441253) = 30233088 * k + 22323760 := by
    unfold C
    simp [show (10077696 * k + 7441253) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22323760) = 15116544 * k + 11161880 := by
    unfold C
    simp [show (30233088 * k + 22323760) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11161880) = 7558272 * k + 5580940 := by
    unfold C
    simp [show (15116544 * k + 11161880) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5580940) = 3779136 * k + 2790470 := by
    unfold C
    simp [show (7558272 * k + 5580940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2790470) = 1889568 * k + 1395235 := by
    unfold C
    simp [show (3779136 * k + 2790470) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1395235) = 5668704 * k + 4185706 := by
    unfold C
    simp [show (1889568 * k + 1395235) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4185706) = 2834352 * k + 2092853 := by
    unfold C
    simp [show (5668704 * k + 4185706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2092853) = 8503056 * k + 6278560 := by
    unfold C
    simp [show (2834352 * k + 2092853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6278560) = 4251528 * k + 3139280 := by
    unfold C
    simp [show (8503056 * k + 6278560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3139280) = 2125764 * k + 1569640 := by
    unfold C
    simp [show (4251528 * k + 3139280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1569640) = 1062882 * k + 784820 := by
    unfold C
    simp [show (2125764 * k + 1569640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784820) = 531441 * k + 392410 := by
    unfold C
    simp [show (1062882 * k + 784820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 774255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 774255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_774351 : ∀ k : Nat,
    iterate (1048576 * k + 774351) 32 = 531441 * k + 392459 ∧
      531441 * k + 392459 < 1048576 * k + 774351 := by
  intro k
  have h1 : C (1048576 * k + 774351) = 3145728 * k + 2323054 := by
    unfold C
    simp [show (1048576 * k + 774351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2323054) = 1572864 * k + 1161527 := by
    unfold C
    simp [show (3145728 * k + 2323054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1161527) = 4718592 * k + 3484582 := by
    unfold C
    simp [show (1572864 * k + 1161527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3484582) = 2359296 * k + 1742291 := by
    unfold C
    simp [show (4718592 * k + 3484582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1742291) = 7077888 * k + 5226874 := by
    unfold C
    simp [show (2359296 * k + 1742291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5226874) = 3538944 * k + 2613437 := by
    unfold C
    simp [show (7077888 * k + 5226874) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2613437) = 10616832 * k + 7840312 := by
    unfold C
    simp [show (3538944 * k + 2613437) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7840312) = 5308416 * k + 3920156 := by
    unfold C
    simp [show (10616832 * k + 7840312) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3920156) = 2654208 * k + 1960078 := by
    unfold C
    simp [show (5308416 * k + 3920156) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1960078) = 1327104 * k + 980039 := by
    unfold C
    simp [show (2654208 * k + 1960078) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 980039) = 3981312 * k + 2940118 := by
    unfold C
    simp [show (1327104 * k + 980039) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2940118) = 1990656 * k + 1470059 := by
    unfold C
    simp [show (3981312 * k + 2940118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1470059) = 5971968 * k + 4410178 := by
    unfold C
    simp [show (1990656 * k + 1470059) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4410178) = 2985984 * k + 2205089 := by
    unfold C
    simp [show (5971968 * k + 4410178) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2205089) = 8957952 * k + 6615268 := by
    unfold C
    simp [show (2985984 * k + 2205089) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6615268) = 4478976 * k + 3307634 := by
    unfold C
    simp [show (8957952 * k + 6615268) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3307634) = 2239488 * k + 1653817 := by
    unfold C
    simp [show (4478976 * k + 3307634) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1653817) = 6718464 * k + 4961452 := by
    unfold C
    simp [show (2239488 * k + 1653817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4961452) = 3359232 * k + 2480726 := by
    unfold C
    simp [show (6718464 * k + 4961452) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2480726) = 1679616 * k + 1240363 := by
    unfold C
    simp [show (3359232 * k + 2480726) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1240363) = 5038848 * k + 3721090 := by
    unfold C
    simp [show (1679616 * k + 1240363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3721090) = 2519424 * k + 1860545 := by
    unfold C
    simp [show (5038848 * k + 3721090) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1860545) = 7558272 * k + 5581636 := by
    unfold C
    simp [show (2519424 * k + 1860545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5581636) = 3779136 * k + 2790818 := by
    unfold C
    simp [show (7558272 * k + 5581636) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2790818) = 1889568 * k + 1395409 := by
    unfold C
    simp [show (3779136 * k + 2790818) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1395409) = 5668704 * k + 4186228 := by
    unfold C
    simp [show (1889568 * k + 1395409) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4186228) = 2834352 * k + 2093114 := by
    unfold C
    simp [show (5668704 * k + 4186228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2093114) = 1417176 * k + 1046557 := by
    unfold C
    simp [show (2834352 * k + 2093114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1046557) = 4251528 * k + 3139672 := by
    unfold C
    simp [show (1417176 * k + 1046557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3139672) = 2125764 * k + 1569836 := by
    unfold C
    simp [show (4251528 * k + 3139672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1569836) = 1062882 * k + 784918 := by
    unfold C
    simp [show (2125764 * k + 1569836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784918) = 531441 * k + 392459 := by
    unfold C
    simp [show (1062882 * k + 784918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 774351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 774351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_774399 : ∀ k : Nat,
    iterate (1048576 * k + 774399) 32 = 531441 * k + 392483 ∧
      531441 * k + 392483 < 1048576 * k + 774399 := by
  intro k
  have h1 : C (1048576 * k + 774399) = 3145728 * k + 2323198 := by
    unfold C
    simp [show (1048576 * k + 774399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2323198) = 1572864 * k + 1161599 := by
    unfold C
    simp [show (3145728 * k + 2323198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1161599) = 4718592 * k + 3484798 := by
    unfold C
    simp [show (1572864 * k + 1161599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3484798) = 2359296 * k + 1742399 := by
    unfold C
    simp [show (4718592 * k + 3484798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1742399) = 7077888 * k + 5227198 := by
    unfold C
    simp [show (2359296 * k + 1742399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5227198) = 3538944 * k + 2613599 := by
    unfold C
    simp [show (7077888 * k + 5227198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2613599) = 10616832 * k + 7840798 := by
    unfold C
    simp [show (3538944 * k + 2613599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7840798) = 5308416 * k + 3920399 := by
    unfold C
    simp [show (10616832 * k + 7840798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3920399) = 15925248 * k + 11761198 := by
    unfold C
    simp [show (5308416 * k + 3920399) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11761198) = 7962624 * k + 5880599 := by
    unfold C
    simp [show (15925248 * k + 11761198) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5880599) = 23887872 * k + 17641798 := by
    unfold C
    simp [show (7962624 * k + 5880599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17641798) = 11943936 * k + 8820899 := by
    unfold C
    simp [show (23887872 * k + 17641798) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8820899) = 35831808 * k + 26462698 := by
    unfold C
    simp [show (11943936 * k + 8820899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26462698) = 17915904 * k + 13231349 := by
    unfold C
    simp [show (35831808 * k + 26462698) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13231349) = 53747712 * k + 39694048 := by
    unfold C
    simp [show (17915904 * k + 13231349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39694048) = 26873856 * k + 19847024 := by
    unfold C
    simp [show (53747712 * k + 39694048) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19847024) = 13436928 * k + 9923512 := by
    unfold C
    simp [show (26873856 * k + 19847024) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9923512) = 6718464 * k + 4961756 := by
    unfold C
    simp [show (13436928 * k + 9923512) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4961756) = 3359232 * k + 2480878 := by
    unfold C
    simp [show (6718464 * k + 4961756) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2480878) = 1679616 * k + 1240439 := by
    unfold C
    simp [show (3359232 * k + 2480878) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1240439) = 5038848 * k + 3721318 := by
    unfold C
    simp [show (1679616 * k + 1240439) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3721318) = 2519424 * k + 1860659 := by
    unfold C
    simp [show (5038848 * k + 3721318) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1860659) = 7558272 * k + 5581978 := by
    unfold C
    simp [show (2519424 * k + 1860659) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5581978) = 3779136 * k + 2790989 := by
    unfold C
    simp [show (7558272 * k + 5581978) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2790989) = 11337408 * k + 8372968 := by
    unfold C
    simp [show (3779136 * k + 2790989) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8372968) = 5668704 * k + 4186484 := by
    unfold C
    simp [show (11337408 * k + 8372968) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4186484) = 2834352 * k + 2093242 := by
    unfold C
    simp [show (5668704 * k + 4186484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2093242) = 1417176 * k + 1046621 := by
    unfold C
    simp [show (2834352 * k + 2093242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1046621) = 4251528 * k + 3139864 := by
    unfold C
    simp [show (1417176 * k + 1046621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3139864) = 2125764 * k + 1569932 := by
    unfold C
    simp [show (4251528 * k + 3139864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1569932) = 1062882 * k + 784966 := by
    unfold C
    simp [show (2125764 * k + 1569932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 784966) = 531441 * k + 392483 := by
    unfold C
    simp [show (1062882 * k + 784966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 774399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 774399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_775399 : ∀ k : Nat,
    iterate (1048576 * k + 775399) 32 = 531441 * k + 392990 ∧
      531441 * k + 392990 < 1048576 * k + 775399 := by
  intro k
  have h1 : C (1048576 * k + 775399) = 3145728 * k + 2326198 := by
    unfold C
    simp [show (1048576 * k + 775399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2326198) = 1572864 * k + 1163099 := by
    unfold C
    simp [show (3145728 * k + 2326198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1163099) = 4718592 * k + 3489298 := by
    unfold C
    simp [show (1572864 * k + 1163099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3489298) = 2359296 * k + 1744649 := by
    unfold C
    simp [show (4718592 * k + 3489298) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1744649) = 7077888 * k + 5233948 := by
    unfold C
    simp [show (2359296 * k + 1744649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5233948) = 3538944 * k + 2616974 := by
    unfold C
    simp [show (7077888 * k + 5233948) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2616974) = 1769472 * k + 1308487 := by
    unfold C
    simp [show (3538944 * k + 2616974) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1308487) = 5308416 * k + 3925462 := by
    unfold C
    simp [show (1769472 * k + 1308487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3925462) = 2654208 * k + 1962731 := by
    unfold C
    simp [show (5308416 * k + 3925462) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1962731) = 7962624 * k + 5888194 := by
    unfold C
    simp [show (2654208 * k + 1962731) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5888194) = 3981312 * k + 2944097 := by
    unfold C
    simp [show (7962624 * k + 5888194) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2944097) = 11943936 * k + 8832292 := by
    unfold C
    simp [show (3981312 * k + 2944097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8832292) = 5971968 * k + 4416146 := by
    unfold C
    simp [show (11943936 * k + 8832292) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4416146) = 2985984 * k + 2208073 := by
    unfold C
    simp [show (5971968 * k + 4416146) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2208073) = 8957952 * k + 6624220 := by
    unfold C
    simp [show (2985984 * k + 2208073) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6624220) = 4478976 * k + 3312110 := by
    unfold C
    simp [show (8957952 * k + 6624220) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3312110) = 2239488 * k + 1656055 := by
    unfold C
    simp [show (4478976 * k + 3312110) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1656055) = 6718464 * k + 4968166 := by
    unfold C
    simp [show (2239488 * k + 1656055) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4968166) = 3359232 * k + 2484083 := by
    unfold C
    simp [show (6718464 * k + 4968166) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2484083) = 10077696 * k + 7452250 := by
    unfold C
    simp [show (3359232 * k + 2484083) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7452250) = 5038848 * k + 3726125 := by
    unfold C
    simp [show (10077696 * k + 7452250) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3726125) = 15116544 * k + 11178376 := by
    unfold C
    simp [show (5038848 * k + 3726125) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11178376) = 7558272 * k + 5589188 := by
    unfold C
    simp [show (15116544 * k + 11178376) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5589188) = 3779136 * k + 2794594 := by
    unfold C
    simp [show (7558272 * k + 5589188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2794594) = 1889568 * k + 1397297 := by
    unfold C
    simp [show (3779136 * k + 2794594) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1397297) = 5668704 * k + 4191892 := by
    unfold C
    simp [show (1889568 * k + 1397297) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4191892) = 2834352 * k + 2095946 := by
    unfold C
    simp [show (5668704 * k + 4191892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2095946) = 1417176 * k + 1047973 := by
    unfold C
    simp [show (2834352 * k + 2095946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1047973) = 4251528 * k + 3143920 := by
    unfold C
    simp [show (1417176 * k + 1047973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3143920) = 2125764 * k + 1571960 := by
    unfold C
    simp [show (4251528 * k + 3143920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1571960) = 1062882 * k + 785980 := by
    unfold C
    simp [show (2125764 * k + 1571960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 785980) = 531441 * k + 392990 := by
    unfold C
    simp [show (1062882 * k + 785980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 775399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 775399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_777327 : ∀ k : Nat,
    iterate (1048576 * k + 777327) 32 = 531441 * k + 393967 ∧
      531441 * k + 393967 < 1048576 * k + 777327 := by
  intro k
  have h1 : C (1048576 * k + 777327) = 3145728 * k + 2331982 := by
    unfold C
    simp [show (1048576 * k + 777327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2331982) = 1572864 * k + 1165991 := by
    unfold C
    simp [show (3145728 * k + 2331982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1165991) = 4718592 * k + 3497974 := by
    unfold C
    simp [show (1572864 * k + 1165991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3497974) = 2359296 * k + 1748987 := by
    unfold C
    simp [show (4718592 * k + 3497974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1748987) = 7077888 * k + 5246962 := by
    unfold C
    simp [show (2359296 * k + 1748987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5246962) = 3538944 * k + 2623481 := by
    unfold C
    simp [show (7077888 * k + 5246962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2623481) = 10616832 * k + 7870444 := by
    unfold C
    simp [show (3538944 * k + 2623481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7870444) = 5308416 * k + 3935222 := by
    unfold C
    simp [show (10616832 * k + 7870444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3935222) = 2654208 * k + 1967611 := by
    unfold C
    simp [show (5308416 * k + 3935222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1967611) = 7962624 * k + 5902834 := by
    unfold C
    simp [show (2654208 * k + 1967611) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5902834) = 3981312 * k + 2951417 := by
    unfold C
    simp [show (7962624 * k + 5902834) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2951417) = 11943936 * k + 8854252 := by
    unfold C
    simp [show (3981312 * k + 2951417) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8854252) = 5971968 * k + 4427126 := by
    unfold C
    simp [show (11943936 * k + 8854252) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4427126) = 2985984 * k + 2213563 := by
    unfold C
    simp [show (5971968 * k + 4427126) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2213563) = 8957952 * k + 6640690 := by
    unfold C
    simp [show (2985984 * k + 2213563) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6640690) = 4478976 * k + 3320345 := by
    unfold C
    simp [show (8957952 * k + 6640690) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3320345) = 13436928 * k + 9961036 := by
    unfold C
    simp [show (4478976 * k + 3320345) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9961036) = 6718464 * k + 4980518 := by
    unfold C
    simp [show (13436928 * k + 9961036) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4980518) = 3359232 * k + 2490259 := by
    unfold C
    simp [show (6718464 * k + 4980518) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2490259) = 10077696 * k + 7470778 := by
    unfold C
    simp [show (3359232 * k + 2490259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7470778) = 5038848 * k + 3735389 := by
    unfold C
    simp [show (10077696 * k + 7470778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3735389) = 15116544 * k + 11206168 := by
    unfold C
    simp [show (5038848 * k + 3735389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11206168) = 7558272 * k + 5603084 := by
    unfold C
    simp [show (15116544 * k + 11206168) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5603084) = 3779136 * k + 2801542 := by
    unfold C
    simp [show (7558272 * k + 5603084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2801542) = 1889568 * k + 1400771 := by
    unfold C
    simp [show (3779136 * k + 2801542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1400771) = 5668704 * k + 4202314 := by
    unfold C
    simp [show (1889568 * k + 1400771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4202314) = 2834352 * k + 2101157 := by
    unfold C
    simp [show (5668704 * k + 4202314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2101157) = 8503056 * k + 6303472 := by
    unfold C
    simp [show (2834352 * k + 2101157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6303472) = 4251528 * k + 3151736 := by
    unfold C
    simp [show (8503056 * k + 6303472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3151736) = 2125764 * k + 1575868 := by
    unfold C
    simp [show (4251528 * k + 3151736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1575868) = 1062882 * k + 787934 := by
    unfold C
    simp [show (2125764 * k + 1575868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 787934) = 531441 * k + 393967 := by
    unfold C
    simp [show (1062882 * k + 787934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 777327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 777327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_777631 : ∀ k : Nat,
    iterate (1048576 * k + 777631) 32 = 531441 * k + 394121 ∧
      531441 * k + 394121 < 1048576 * k + 777631 := by
  intro k
  have h1 : C (1048576 * k + 777631) = 3145728 * k + 2332894 := by
    unfold C
    simp [show (1048576 * k + 777631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2332894) = 1572864 * k + 1166447 := by
    unfold C
    simp [show (3145728 * k + 2332894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1166447) = 4718592 * k + 3499342 := by
    unfold C
    simp [show (1572864 * k + 1166447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3499342) = 2359296 * k + 1749671 := by
    unfold C
    simp [show (4718592 * k + 3499342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1749671) = 7077888 * k + 5249014 := by
    unfold C
    simp [show (2359296 * k + 1749671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5249014) = 3538944 * k + 2624507 := by
    unfold C
    simp [show (7077888 * k + 5249014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2624507) = 10616832 * k + 7873522 := by
    unfold C
    simp [show (3538944 * k + 2624507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7873522) = 5308416 * k + 3936761 := by
    unfold C
    simp [show (10616832 * k + 7873522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3936761) = 15925248 * k + 11810284 := by
    unfold C
    simp [show (5308416 * k + 3936761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11810284) = 7962624 * k + 5905142 := by
    unfold C
    simp [show (15925248 * k + 11810284) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5905142) = 3981312 * k + 2952571 := by
    unfold C
    simp [show (7962624 * k + 5905142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2952571) = 11943936 * k + 8857714 := by
    unfold C
    simp [show (3981312 * k + 2952571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8857714) = 5971968 * k + 4428857 := by
    unfold C
    simp [show (11943936 * k + 8857714) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4428857) = 17915904 * k + 13286572 := by
    unfold C
    simp [show (5971968 * k + 4428857) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13286572) = 8957952 * k + 6643286 := by
    unfold C
    simp [show (17915904 * k + 13286572) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6643286) = 4478976 * k + 3321643 := by
    unfold C
    simp [show (8957952 * k + 6643286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3321643) = 13436928 * k + 9964930 := by
    unfold C
    simp [show (4478976 * k + 3321643) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9964930) = 6718464 * k + 4982465 := by
    unfold C
    simp [show (13436928 * k + 9964930) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4982465) = 20155392 * k + 14947396 := by
    unfold C
    simp [show (6718464 * k + 4982465) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14947396) = 10077696 * k + 7473698 := by
    unfold C
    simp [show (20155392 * k + 14947396) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7473698) = 5038848 * k + 3736849 := by
    unfold C
    simp [show (10077696 * k + 7473698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3736849) = 15116544 * k + 11210548 := by
    unfold C
    simp [show (5038848 * k + 3736849) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11210548) = 7558272 * k + 5605274 := by
    unfold C
    simp [show (15116544 * k + 11210548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5605274) = 3779136 * k + 2802637 := by
    unfold C
    simp [show (7558272 * k + 5605274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2802637) = 11337408 * k + 8407912 := by
    unfold C
    simp [show (3779136 * k + 2802637) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8407912) = 5668704 * k + 4203956 := by
    unfold C
    simp [show (11337408 * k + 8407912) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4203956) = 2834352 * k + 2101978 := by
    unfold C
    simp [show (5668704 * k + 4203956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2101978) = 1417176 * k + 1050989 := by
    unfold C
    simp [show (2834352 * k + 2101978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1050989) = 4251528 * k + 3152968 := by
    unfold C
    simp [show (1417176 * k + 1050989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3152968) = 2125764 * k + 1576484 := by
    unfold C
    simp [show (4251528 * k + 3152968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1576484) = 1062882 * k + 788242 := by
    unfold C
    simp [show (2125764 * k + 1576484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 788242) = 531441 * k + 394121 := by
    unfold C
    simp [show (1062882 * k + 788242) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 777631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 777631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_778087 : ∀ k : Nat,
    iterate (1048576 * k + 778087) 32 = 531441 * k + 394352 ∧
      531441 * k + 394352 < 1048576 * k + 778087 := by
  intro k
  have h1 : C (1048576 * k + 778087) = 3145728 * k + 2334262 := by
    unfold C
    simp [show (1048576 * k + 778087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2334262) = 1572864 * k + 1167131 := by
    unfold C
    simp [show (3145728 * k + 2334262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1167131) = 4718592 * k + 3501394 := by
    unfold C
    simp [show (1572864 * k + 1167131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3501394) = 2359296 * k + 1750697 := by
    unfold C
    simp [show (4718592 * k + 3501394) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1750697) = 7077888 * k + 5252092 := by
    unfold C
    simp [show (2359296 * k + 1750697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5252092) = 3538944 * k + 2626046 := by
    unfold C
    simp [show (7077888 * k + 5252092) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2626046) = 1769472 * k + 1313023 := by
    unfold C
    simp [show (3538944 * k + 2626046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1313023) = 5308416 * k + 3939070 := by
    unfold C
    simp [show (1769472 * k + 1313023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3939070) = 2654208 * k + 1969535 := by
    unfold C
    simp [show (5308416 * k + 3939070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1969535) = 7962624 * k + 5908606 := by
    unfold C
    simp [show (2654208 * k + 1969535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5908606) = 3981312 * k + 2954303 := by
    unfold C
    simp [show (7962624 * k + 5908606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2954303) = 11943936 * k + 8862910 := by
    unfold C
    simp [show (3981312 * k + 2954303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8862910) = 5971968 * k + 4431455 := by
    unfold C
    simp [show (11943936 * k + 8862910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4431455) = 17915904 * k + 13294366 := by
    unfold C
    simp [show (5971968 * k + 4431455) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13294366) = 8957952 * k + 6647183 := by
    unfold C
    simp [show (17915904 * k + 13294366) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6647183) = 26873856 * k + 19941550 := by
    unfold C
    simp [show (8957952 * k + 6647183) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19941550) = 13436928 * k + 9970775 := by
    unfold C
    simp [show (26873856 * k + 19941550) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9970775) = 40310784 * k + 29912326 := by
    unfold C
    simp [show (13436928 * k + 9970775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 29912326) = 20155392 * k + 14956163 := by
    unfold C
    simp [show (40310784 * k + 29912326) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14956163) = 60466176 * k + 44868490 := by
    unfold C
    simp [show (20155392 * k + 14956163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 44868490) = 30233088 * k + 22434245 := by
    unfold C
    simp [show (60466176 * k + 44868490) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22434245) = 90699264 * k + 67302736 := by
    unfold C
    simp [show (30233088 * k + 22434245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 67302736) = 45349632 * k + 33651368 := by
    unfold C
    simp [show (90699264 * k + 67302736) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 33651368) = 22674816 * k + 16825684 := by
    unfold C
    simp [show (45349632 * k + 33651368) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16825684) = 11337408 * k + 8412842 := by
    unfold C
    simp [show (22674816 * k + 16825684) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8412842) = 5668704 * k + 4206421 := by
    unfold C
    simp [show (11337408 * k + 8412842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4206421) = 17006112 * k + 12619264 := by
    unfold C
    simp [show (5668704 * k + 4206421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12619264) = 8503056 * k + 6309632 := by
    unfold C
    simp [show (17006112 * k + 12619264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6309632) = 4251528 * k + 3154816 := by
    unfold C
    simp [show (8503056 * k + 6309632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3154816) = 2125764 * k + 1577408 := by
    unfold C
    simp [show (4251528 * k + 3154816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1577408) = 1062882 * k + 788704 := by
    unfold C
    simp [show (2125764 * k + 1577408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 788704) = 531441 * k + 394352 := by
    unfold C
    simp [show (1062882 * k + 788704) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 778087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 778087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_779111 : ∀ k : Nat,
    iterate (1048576 * k + 779111) 32 = 531441 * k + 394871 ∧
      531441 * k + 394871 < 1048576 * k + 779111 := by
  intro k
  have h1 : C (1048576 * k + 779111) = 3145728 * k + 2337334 := by
    unfold C
    simp [show (1048576 * k + 779111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2337334) = 1572864 * k + 1168667 := by
    unfold C
    simp [show (3145728 * k + 2337334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1168667) = 4718592 * k + 3506002 := by
    unfold C
    simp [show (1572864 * k + 1168667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3506002) = 2359296 * k + 1753001 := by
    unfold C
    simp [show (4718592 * k + 3506002) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1753001) = 7077888 * k + 5259004 := by
    unfold C
    simp [show (2359296 * k + 1753001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5259004) = 3538944 * k + 2629502 := by
    unfold C
    simp [show (7077888 * k + 5259004) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2629502) = 1769472 * k + 1314751 := by
    unfold C
    simp [show (3538944 * k + 2629502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1314751) = 5308416 * k + 3944254 := by
    unfold C
    simp [show (1769472 * k + 1314751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3944254) = 2654208 * k + 1972127 := by
    unfold C
    simp [show (5308416 * k + 3944254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1972127) = 7962624 * k + 5916382 := by
    unfold C
    simp [show (2654208 * k + 1972127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5916382) = 3981312 * k + 2958191 := by
    unfold C
    simp [show (7962624 * k + 5916382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2958191) = 11943936 * k + 8874574 := by
    unfold C
    simp [show (3981312 * k + 2958191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8874574) = 5971968 * k + 4437287 := by
    unfold C
    simp [show (11943936 * k + 8874574) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4437287) = 17915904 * k + 13311862 := by
    unfold C
    simp [show (5971968 * k + 4437287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13311862) = 8957952 * k + 6655931 := by
    unfold C
    simp [show (17915904 * k + 13311862) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6655931) = 26873856 * k + 19967794 := by
    unfold C
    simp [show (8957952 * k + 6655931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19967794) = 13436928 * k + 9983897 := by
    unfold C
    simp [show (26873856 * k + 19967794) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9983897) = 40310784 * k + 29951692 := by
    unfold C
    simp [show (13436928 * k + 9983897) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 29951692) = 20155392 * k + 14975846 := by
    unfold C
    simp [show (40310784 * k + 29951692) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14975846) = 10077696 * k + 7487923 := by
    unfold C
    simp [show (20155392 * k + 14975846) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7487923) = 30233088 * k + 22463770 := by
    unfold C
    simp [show (10077696 * k + 7487923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22463770) = 15116544 * k + 11231885 := by
    unfold C
    simp [show (30233088 * k + 22463770) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11231885) = 45349632 * k + 33695656 := by
    unfold C
    simp [show (15116544 * k + 11231885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 33695656) = 22674816 * k + 16847828 := by
    unfold C
    simp [show (45349632 * k + 33695656) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16847828) = 11337408 * k + 8423914 := by
    unfold C
    simp [show (22674816 * k + 16847828) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8423914) = 5668704 * k + 4211957 := by
    unfold C
    simp [show (11337408 * k + 8423914) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4211957) = 17006112 * k + 12635872 := by
    unfold C
    simp [show (5668704 * k + 4211957) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12635872) = 8503056 * k + 6317936 := by
    unfold C
    simp [show (17006112 * k + 12635872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6317936) = 4251528 * k + 3158968 := by
    unfold C
    simp [show (8503056 * k + 6317936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3158968) = 2125764 * k + 1579484 := by
    unfold C
    simp [show (4251528 * k + 3158968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1579484) = 1062882 * k + 789742 := by
    unfold C
    simp [show (2125764 * k + 1579484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 789742) = 531441 * k + 394871 := by
    unfold C
    simp [show (1062882 * k + 789742) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 779111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 779111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_779263 : ∀ k : Nat,
    iterate (1048576 * k + 779263) 32 = 531441 * k + 394948 ∧
      531441 * k + 394948 < 1048576 * k + 779263 := by
  intro k
  have h1 : C (1048576 * k + 779263) = 3145728 * k + 2337790 := by
    unfold C
    simp [show (1048576 * k + 779263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2337790) = 1572864 * k + 1168895 := by
    unfold C
    simp [show (3145728 * k + 2337790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1168895) = 4718592 * k + 3506686 := by
    unfold C
    simp [show (1572864 * k + 1168895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3506686) = 2359296 * k + 1753343 := by
    unfold C
    simp [show (4718592 * k + 3506686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1753343) = 7077888 * k + 5260030 := by
    unfold C
    simp [show (2359296 * k + 1753343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5260030) = 3538944 * k + 2630015 := by
    unfold C
    simp [show (7077888 * k + 5260030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2630015) = 10616832 * k + 7890046 := by
    unfold C
    simp [show (3538944 * k + 2630015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7890046) = 5308416 * k + 3945023 := by
    unfold C
    simp [show (10616832 * k + 7890046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3945023) = 15925248 * k + 11835070 := by
    unfold C
    simp [show (5308416 * k + 3945023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11835070) = 7962624 * k + 5917535 := by
    unfold C
    simp [show (15925248 * k + 11835070) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5917535) = 23887872 * k + 17752606 := by
    unfold C
    simp [show (7962624 * k + 5917535) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17752606) = 11943936 * k + 8876303 := by
    unfold C
    simp [show (23887872 * k + 17752606) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8876303) = 35831808 * k + 26628910 := by
    unfold C
    simp [show (11943936 * k + 8876303) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26628910) = 17915904 * k + 13314455 := by
    unfold C
    simp [show (35831808 * k + 26628910) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13314455) = 53747712 * k + 39943366 := by
    unfold C
    simp [show (17915904 * k + 13314455) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 39943366) = 26873856 * k + 19971683 := by
    unfold C
    simp [show (53747712 * k + 39943366) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19971683) = 80621568 * k + 59915050 := by
    unfold C
    simp [show (26873856 * k + 19971683) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 59915050) = 40310784 * k + 29957525 := by
    unfold C
    simp [show (80621568 * k + 59915050) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 29957525) = 120932352 * k + 89872576 := by
    unfold C
    simp [show (40310784 * k + 29957525) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 89872576) = 60466176 * k + 44936288 := by
    unfold C
    simp [show (120932352 * k + 89872576) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 44936288) = 30233088 * k + 22468144 := by
    unfold C
    simp [show (60466176 * k + 44936288) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22468144) = 15116544 * k + 11234072 := by
    unfold C
    simp [show (30233088 * k + 22468144) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11234072) = 7558272 * k + 5617036 := by
    unfold C
    simp [show (15116544 * k + 11234072) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5617036) = 3779136 * k + 2808518 := by
    unfold C
    simp [show (7558272 * k + 5617036) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2808518) = 1889568 * k + 1404259 := by
    unfold C
    simp [show (3779136 * k + 2808518) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1404259) = 5668704 * k + 4212778 := by
    unfold C
    simp [show (1889568 * k + 1404259) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4212778) = 2834352 * k + 2106389 := by
    unfold C
    simp [show (5668704 * k + 4212778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2106389) = 8503056 * k + 6319168 := by
    unfold C
    simp [show (2834352 * k + 2106389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6319168) = 4251528 * k + 3159584 := by
    unfold C
    simp [show (8503056 * k + 6319168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3159584) = 2125764 * k + 1579792 := by
    unfold C
    simp [show (4251528 * k + 3159584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1579792) = 1062882 * k + 789896 := by
    unfold C
    simp [show (2125764 * k + 1579792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 789896) = 531441 * k + 394948 := by
    unfold C
    simp [show (1062882 * k + 789896) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 779263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 779263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_779679 : ∀ k : Nat,
    iterate (1048576 * k + 779679) 32 = 531441 * k + 395159 ∧
      531441 * k + 395159 < 1048576 * k + 779679 := by
  intro k
  have h1 : C (1048576 * k + 779679) = 3145728 * k + 2339038 := by
    unfold C
    simp [show (1048576 * k + 779679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2339038) = 1572864 * k + 1169519 := by
    unfold C
    simp [show (3145728 * k + 2339038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1169519) = 4718592 * k + 3508558 := by
    unfold C
    simp [show (1572864 * k + 1169519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3508558) = 2359296 * k + 1754279 := by
    unfold C
    simp [show (4718592 * k + 3508558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1754279) = 7077888 * k + 5262838 := by
    unfold C
    simp [show (2359296 * k + 1754279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5262838) = 3538944 * k + 2631419 := by
    unfold C
    simp [show (7077888 * k + 5262838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2631419) = 10616832 * k + 7894258 := by
    unfold C
    simp [show (3538944 * k + 2631419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7894258) = 5308416 * k + 3947129 := by
    unfold C
    simp [show (10616832 * k + 7894258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3947129) = 15925248 * k + 11841388 := by
    unfold C
    simp [show (5308416 * k + 3947129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11841388) = 7962624 * k + 5920694 := by
    unfold C
    simp [show (15925248 * k + 11841388) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5920694) = 3981312 * k + 2960347 := by
    unfold C
    simp [show (7962624 * k + 5920694) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2960347) = 11943936 * k + 8881042 := by
    unfold C
    simp [show (3981312 * k + 2960347) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8881042) = 5971968 * k + 4440521 := by
    unfold C
    simp [show (11943936 * k + 8881042) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4440521) = 17915904 * k + 13321564 := by
    unfold C
    simp [show (5971968 * k + 4440521) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13321564) = 8957952 * k + 6660782 := by
    unfold C
    simp [show (17915904 * k + 13321564) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6660782) = 4478976 * k + 3330391 := by
    unfold C
    simp [show (8957952 * k + 6660782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3330391) = 13436928 * k + 9991174 := by
    unfold C
    simp [show (4478976 * k + 3330391) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9991174) = 6718464 * k + 4995587 := by
    unfold C
    simp [show (13436928 * k + 9991174) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4995587) = 20155392 * k + 14986762 := by
    unfold C
    simp [show (6718464 * k + 4995587) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14986762) = 10077696 * k + 7493381 := by
    unfold C
    simp [show (20155392 * k + 14986762) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7493381) = 30233088 * k + 22480144 := by
    unfold C
    simp [show (10077696 * k + 7493381) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22480144) = 15116544 * k + 11240072 := by
    unfold C
    simp [show (30233088 * k + 22480144) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11240072) = 7558272 * k + 5620036 := by
    unfold C
    simp [show (15116544 * k + 11240072) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5620036) = 3779136 * k + 2810018 := by
    unfold C
    simp [show (7558272 * k + 5620036) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2810018) = 1889568 * k + 1405009 := by
    unfold C
    simp [show (3779136 * k + 2810018) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1405009) = 5668704 * k + 4215028 := by
    unfold C
    simp [show (1889568 * k + 1405009) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4215028) = 2834352 * k + 2107514 := by
    unfold C
    simp [show (5668704 * k + 4215028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2107514) = 1417176 * k + 1053757 := by
    unfold C
    simp [show (2834352 * k + 2107514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1053757) = 4251528 * k + 3161272 := by
    unfold C
    simp [show (1417176 * k + 1053757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3161272) = 2125764 * k + 1580636 := by
    unfold C
    simp [show (4251528 * k + 3161272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1580636) = 1062882 * k + 790318 := by
    unfold C
    simp [show (2125764 * k + 1580636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 790318) = 531441 * k + 395159 := by
    unfold C
    simp [show (1062882 * k + 790318) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 779679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 779679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_780447 : ∀ k : Nat,
    iterate (1048576 * k + 780447) 32 = 531441 * k + 395548 ∧
      531441 * k + 395548 < 1048576 * k + 780447 := by
  intro k
  have h1 : C (1048576 * k + 780447) = 3145728 * k + 2341342 := by
    unfold C
    simp [show (1048576 * k + 780447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2341342) = 1572864 * k + 1170671 := by
    unfold C
    simp [show (3145728 * k + 2341342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1170671) = 4718592 * k + 3512014 := by
    unfold C
    simp [show (1572864 * k + 1170671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3512014) = 2359296 * k + 1756007 := by
    unfold C
    simp [show (4718592 * k + 3512014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1756007) = 7077888 * k + 5268022 := by
    unfold C
    simp [show (2359296 * k + 1756007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5268022) = 3538944 * k + 2634011 := by
    unfold C
    simp [show (7077888 * k + 5268022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2634011) = 10616832 * k + 7902034 := by
    unfold C
    simp [show (3538944 * k + 2634011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7902034) = 5308416 * k + 3951017 := by
    unfold C
    simp [show (10616832 * k + 7902034) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3951017) = 15925248 * k + 11853052 := by
    unfold C
    simp [show (5308416 * k + 3951017) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11853052) = 7962624 * k + 5926526 := by
    unfold C
    simp [show (15925248 * k + 11853052) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5926526) = 3981312 * k + 2963263 := by
    unfold C
    simp [show (7962624 * k + 5926526) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2963263) = 11943936 * k + 8889790 := by
    unfold C
    simp [show (3981312 * k + 2963263) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8889790) = 5971968 * k + 4444895 := by
    unfold C
    simp [show (11943936 * k + 8889790) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4444895) = 17915904 * k + 13334686 := by
    unfold C
    simp [show (5971968 * k + 4444895) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13334686) = 8957952 * k + 6667343 := by
    unfold C
    simp [show (17915904 * k + 13334686) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6667343) = 26873856 * k + 20002030 := by
    unfold C
    simp [show (8957952 * k + 6667343) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20002030) = 13436928 * k + 10001015 := by
    unfold C
    simp [show (26873856 * k + 20002030) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10001015) = 40310784 * k + 30003046 := by
    unfold C
    simp [show (13436928 * k + 10001015) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30003046) = 20155392 * k + 15001523 := by
    unfold C
    simp [show (40310784 * k + 30003046) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15001523) = 60466176 * k + 45004570 := by
    unfold C
    simp [show (20155392 * k + 15001523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 45004570) = 30233088 * k + 22502285 := by
    unfold C
    simp [show (60466176 * k + 45004570) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22502285) = 90699264 * k + 67506856 := by
    unfold C
    simp [show (30233088 * k + 22502285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 67506856) = 45349632 * k + 33753428 := by
    unfold C
    simp [show (90699264 * k + 67506856) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 33753428) = 22674816 * k + 16876714 := by
    unfold C
    simp [show (45349632 * k + 33753428) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16876714) = 11337408 * k + 8438357 := by
    unfold C
    simp [show (22674816 * k + 16876714) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8438357) = 34012224 * k + 25315072 := by
    unfold C
    simp [show (11337408 * k + 8438357) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25315072) = 17006112 * k + 12657536 := by
    unfold C
    simp [show (34012224 * k + 25315072) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12657536) = 8503056 * k + 6328768 := by
    unfold C
    simp [show (17006112 * k + 12657536) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6328768) = 4251528 * k + 3164384 := by
    unfold C
    simp [show (8503056 * k + 6328768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3164384) = 2125764 * k + 1582192 := by
    unfold C
    simp [show (4251528 * k + 3164384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1582192) = 1062882 * k + 791096 := by
    unfold C
    simp [show (2125764 * k + 1582192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 791096) = 531441 * k + 395548 := by
    unfold C
    simp [show (1062882 * k + 791096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 780447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 780447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard099
