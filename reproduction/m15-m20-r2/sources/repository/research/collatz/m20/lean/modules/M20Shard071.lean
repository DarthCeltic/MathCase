import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard071

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_553627 : ∀ k : Nat,
    iterate (1048576 * k + 553627) 32 = 531441 * k + 280591 ∧
      531441 * k + 280591 < 1048576 * k + 553627 := by
  intro k
  have h1 : C (1048576 * k + 553627) = 3145728 * k + 1660882 := by
    unfold C
    simp [show (1048576 * k + 553627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1660882) = 1572864 * k + 830441 := by
    unfold C
    simp [show (3145728 * k + 1660882) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 830441) = 4718592 * k + 2491324 := by
    unfold C
    simp [show (1572864 * k + 830441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2491324) = 2359296 * k + 1245662 := by
    unfold C
    simp [show (4718592 * k + 2491324) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1245662) = 1179648 * k + 622831 := by
    unfold C
    simp [show (2359296 * k + 1245662) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 622831) = 3538944 * k + 1868494 := by
    unfold C
    simp [show (1179648 * k + 622831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1868494) = 1769472 * k + 934247 := by
    unfold C
    simp [show (3538944 * k + 1868494) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 934247) = 5308416 * k + 2802742 := by
    unfold C
    simp [show (1769472 * k + 934247) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2802742) = 2654208 * k + 1401371 := by
    unfold C
    simp [show (5308416 * k + 2802742) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1401371) = 7962624 * k + 4204114 := by
    unfold C
    simp [show (2654208 * k + 1401371) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4204114) = 3981312 * k + 2102057 := by
    unfold C
    simp [show (7962624 * k + 4204114) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2102057) = 11943936 * k + 6306172 := by
    unfold C
    simp [show (3981312 * k + 2102057) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6306172) = 5971968 * k + 3153086 := by
    unfold C
    simp [show (11943936 * k + 6306172) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3153086) = 2985984 * k + 1576543 := by
    unfold C
    simp [show (5971968 * k + 3153086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1576543) = 8957952 * k + 4729630 := by
    unfold C
    simp [show (2985984 * k + 1576543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4729630) = 4478976 * k + 2364815 := by
    unfold C
    simp [show (8957952 * k + 4729630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2364815) = 13436928 * k + 7094446 := by
    unfold C
    simp [show (4478976 * k + 2364815) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7094446) = 6718464 * k + 3547223 := by
    unfold C
    simp [show (13436928 * k + 7094446) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3547223) = 20155392 * k + 10641670 := by
    unfold C
    simp [show (6718464 * k + 3547223) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10641670) = 10077696 * k + 5320835 := by
    unfold C
    simp [show (20155392 * k + 10641670) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5320835) = 30233088 * k + 15962506 := by
    unfold C
    simp [show (10077696 * k + 5320835) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15962506) = 15116544 * k + 7981253 := by
    unfold C
    simp [show (30233088 * k + 15962506) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7981253) = 45349632 * k + 23943760 := by
    unfold C
    simp [show (15116544 * k + 7981253) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 23943760) = 22674816 * k + 11971880 := by
    unfold C
    simp [show (45349632 * k + 23943760) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11971880) = 11337408 * k + 5985940 := by
    unfold C
    simp [show (22674816 * k + 11971880) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5985940) = 5668704 * k + 2992970 := by
    unfold C
    simp [show (11337408 * k + 5985940) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2992970) = 2834352 * k + 1496485 := by
    unfold C
    simp [show (5668704 * k + 2992970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1496485) = 8503056 * k + 4489456 := by
    unfold C
    simp [show (2834352 * k + 1496485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4489456) = 4251528 * k + 2244728 := by
    unfold C
    simp [show (8503056 * k + 4489456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2244728) = 2125764 * k + 1122364 := by
    unfold C
    simp [show (4251528 * k + 2244728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1122364) = 1062882 * k + 561182 := by
    unfold C
    simp [show (2125764 * k + 1122364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 561182) = 531441 * k + 280591 := by
    unfold C
    simp [show (1062882 * k + 561182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 553627) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 553627)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_553663 : ∀ k : Nat,
    iterate (1048576 * k + 553663) 32 = 531441 * k + 280609 ∧
      531441 * k + 280609 < 1048576 * k + 553663 := by
  intro k
  have h1 : C (1048576 * k + 553663) = 3145728 * k + 1660990 := by
    unfold C
    simp [show (1048576 * k + 553663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1660990) = 1572864 * k + 830495 := by
    unfold C
    simp [show (3145728 * k + 1660990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 830495) = 4718592 * k + 2491486 := by
    unfold C
    simp [show (1572864 * k + 830495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2491486) = 2359296 * k + 1245743 := by
    unfold C
    simp [show (4718592 * k + 2491486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1245743) = 7077888 * k + 3737230 := by
    unfold C
    simp [show (2359296 * k + 1245743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3737230) = 3538944 * k + 1868615 := by
    unfold C
    simp [show (7077888 * k + 3737230) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1868615) = 10616832 * k + 5605846 := by
    unfold C
    simp [show (3538944 * k + 1868615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5605846) = 5308416 * k + 2802923 := by
    unfold C
    simp [show (10616832 * k + 5605846) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2802923) = 15925248 * k + 8408770 := by
    unfold C
    simp [show (5308416 * k + 2802923) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8408770) = 7962624 * k + 4204385 := by
    unfold C
    simp [show (15925248 * k + 8408770) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4204385) = 23887872 * k + 12613156 := by
    unfold C
    simp [show (7962624 * k + 4204385) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12613156) = 11943936 * k + 6306578 := by
    unfold C
    simp [show (23887872 * k + 12613156) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6306578) = 5971968 * k + 3153289 := by
    unfold C
    simp [show (11943936 * k + 6306578) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3153289) = 17915904 * k + 9459868 := by
    unfold C
    simp [show (5971968 * k + 3153289) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9459868) = 8957952 * k + 4729934 := by
    unfold C
    simp [show (17915904 * k + 9459868) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4729934) = 4478976 * k + 2364967 := by
    unfold C
    simp [show (8957952 * k + 4729934) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2364967) = 13436928 * k + 7094902 := by
    unfold C
    simp [show (4478976 * k + 2364967) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7094902) = 6718464 * k + 3547451 := by
    unfold C
    simp [show (13436928 * k + 7094902) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3547451) = 20155392 * k + 10642354 := by
    unfold C
    simp [show (6718464 * k + 3547451) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10642354) = 10077696 * k + 5321177 := by
    unfold C
    simp [show (20155392 * k + 10642354) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5321177) = 30233088 * k + 15963532 := by
    unfold C
    simp [show (10077696 * k + 5321177) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15963532) = 15116544 * k + 7981766 := by
    unfold C
    simp [show (30233088 * k + 15963532) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7981766) = 7558272 * k + 3990883 := by
    unfold C
    simp [show (15116544 * k + 7981766) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3990883) = 22674816 * k + 11972650 := by
    unfold C
    simp [show (7558272 * k + 3990883) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11972650) = 11337408 * k + 5986325 := by
    unfold C
    simp [show (22674816 * k + 11972650) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5986325) = 34012224 * k + 17958976 := by
    unfold C
    simp [show (11337408 * k + 5986325) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 17958976) = 17006112 * k + 8979488 := by
    unfold C
    simp [show (34012224 * k + 17958976) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8979488) = 8503056 * k + 4489744 := by
    unfold C
    simp [show (17006112 * k + 8979488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4489744) = 4251528 * k + 2244872 := by
    unfold C
    simp [show (8503056 * k + 4489744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2244872) = 2125764 * k + 1122436 := by
    unfold C
    simp [show (4251528 * k + 2244872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1122436) = 1062882 * k + 561218 := by
    unfold C
    simp [show (2125764 * k + 1122436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 561218) = 531441 * k + 280609 := by
    unfold C
    simp [show (1062882 * k + 561218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 553663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 553663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_554215 : ∀ k : Nat,
    iterate (1048576 * k + 554215) 32 = 531441 * k + 280889 ∧
      531441 * k + 280889 < 1048576 * k + 554215 := by
  intro k
  have h1 : C (1048576 * k + 554215) = 3145728 * k + 1662646 := by
    unfold C
    simp [show (1048576 * k + 554215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1662646) = 1572864 * k + 831323 := by
    unfold C
    simp [show (3145728 * k + 1662646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 831323) = 4718592 * k + 2493970 := by
    unfold C
    simp [show (1572864 * k + 831323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2493970) = 2359296 * k + 1246985 := by
    unfold C
    simp [show (4718592 * k + 2493970) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1246985) = 7077888 * k + 3740956 := by
    unfold C
    simp [show (2359296 * k + 1246985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3740956) = 3538944 * k + 1870478 := by
    unfold C
    simp [show (7077888 * k + 3740956) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1870478) = 1769472 * k + 935239 := by
    unfold C
    simp [show (3538944 * k + 1870478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 935239) = 5308416 * k + 2805718 := by
    unfold C
    simp [show (1769472 * k + 935239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2805718) = 2654208 * k + 1402859 := by
    unfold C
    simp [show (5308416 * k + 2805718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1402859) = 7962624 * k + 4208578 := by
    unfold C
    simp [show (2654208 * k + 1402859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4208578) = 3981312 * k + 2104289 := by
    unfold C
    simp [show (7962624 * k + 4208578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2104289) = 11943936 * k + 6312868 := by
    unfold C
    simp [show (3981312 * k + 2104289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6312868) = 5971968 * k + 3156434 := by
    unfold C
    simp [show (11943936 * k + 6312868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3156434) = 2985984 * k + 1578217 := by
    unfold C
    simp [show (5971968 * k + 3156434) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1578217) = 8957952 * k + 4734652 := by
    unfold C
    simp [show (2985984 * k + 1578217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4734652) = 4478976 * k + 2367326 := by
    unfold C
    simp [show (8957952 * k + 4734652) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2367326) = 2239488 * k + 1183663 := by
    unfold C
    simp [show (4478976 * k + 2367326) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1183663) = 6718464 * k + 3550990 := by
    unfold C
    simp [show (2239488 * k + 1183663) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3550990) = 3359232 * k + 1775495 := by
    unfold C
    simp [show (6718464 * k + 3550990) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1775495) = 10077696 * k + 5326486 := by
    unfold C
    simp [show (3359232 * k + 1775495) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5326486) = 5038848 * k + 2663243 := by
    unfold C
    simp [show (10077696 * k + 5326486) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2663243) = 15116544 * k + 7989730 := by
    unfold C
    simp [show (5038848 * k + 2663243) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7989730) = 7558272 * k + 3994865 := by
    unfold C
    simp [show (15116544 * k + 7989730) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3994865) = 22674816 * k + 11984596 := by
    unfold C
    simp [show (7558272 * k + 3994865) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11984596) = 11337408 * k + 5992298 := by
    unfold C
    simp [show (22674816 * k + 11984596) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5992298) = 5668704 * k + 2996149 := by
    unfold C
    simp [show (11337408 * k + 5992298) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2996149) = 17006112 * k + 8988448 := by
    unfold C
    simp [show (5668704 * k + 2996149) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8988448) = 8503056 * k + 4494224 := by
    unfold C
    simp [show (17006112 * k + 8988448) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4494224) = 4251528 * k + 2247112 := by
    unfold C
    simp [show (8503056 * k + 4494224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2247112) = 2125764 * k + 1123556 := by
    unfold C
    simp [show (4251528 * k + 2247112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1123556) = 1062882 * k + 561778 := by
    unfold C
    simp [show (2125764 * k + 1123556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 561778) = 531441 * k + 280889 := by
    unfold C
    simp [show (1062882 * k + 561778) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 554215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 554215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_554919 : ∀ k : Nat,
    iterate (1048576 * k + 554919) 32 = 531441 * k + 281246 ∧
      531441 * k + 281246 < 1048576 * k + 554919 := by
  intro k
  have h1 : C (1048576 * k + 554919) = 3145728 * k + 1664758 := by
    unfold C
    simp [show (1048576 * k + 554919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1664758) = 1572864 * k + 832379 := by
    unfold C
    simp [show (3145728 * k + 1664758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 832379) = 4718592 * k + 2497138 := by
    unfold C
    simp [show (1572864 * k + 832379) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2497138) = 2359296 * k + 1248569 := by
    unfold C
    simp [show (4718592 * k + 2497138) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1248569) = 7077888 * k + 3745708 := by
    unfold C
    simp [show (2359296 * k + 1248569) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3745708) = 3538944 * k + 1872854 := by
    unfold C
    simp [show (7077888 * k + 3745708) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1872854) = 1769472 * k + 936427 := by
    unfold C
    simp [show (3538944 * k + 1872854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 936427) = 5308416 * k + 2809282 := by
    unfold C
    simp [show (1769472 * k + 936427) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2809282) = 2654208 * k + 1404641 := by
    unfold C
    simp [show (5308416 * k + 2809282) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1404641) = 7962624 * k + 4213924 := by
    unfold C
    simp [show (2654208 * k + 1404641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4213924) = 3981312 * k + 2106962 := by
    unfold C
    simp [show (7962624 * k + 4213924) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2106962) = 1990656 * k + 1053481 := by
    unfold C
    simp [show (3981312 * k + 2106962) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1053481) = 5971968 * k + 3160444 := by
    unfold C
    simp [show (1990656 * k + 1053481) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3160444) = 2985984 * k + 1580222 := by
    unfold C
    simp [show (5971968 * k + 3160444) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1580222) = 1492992 * k + 790111 := by
    unfold C
    simp [show (2985984 * k + 1580222) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 790111) = 4478976 * k + 2370334 := by
    unfold C
    simp [show (1492992 * k + 790111) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2370334) = 2239488 * k + 1185167 := by
    unfold C
    simp [show (4478976 * k + 2370334) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1185167) = 6718464 * k + 3555502 := by
    unfold C
    simp [show (2239488 * k + 1185167) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3555502) = 3359232 * k + 1777751 := by
    unfold C
    simp [show (6718464 * k + 3555502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1777751) = 10077696 * k + 5333254 := by
    unfold C
    simp [show (3359232 * k + 1777751) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5333254) = 5038848 * k + 2666627 := by
    unfold C
    simp [show (10077696 * k + 5333254) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2666627) = 15116544 * k + 7999882 := by
    unfold C
    simp [show (5038848 * k + 2666627) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7999882) = 7558272 * k + 3999941 := by
    unfold C
    simp [show (15116544 * k + 7999882) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3999941) = 22674816 * k + 11999824 := by
    unfold C
    simp [show (7558272 * k + 3999941) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11999824) = 11337408 * k + 5999912 := by
    unfold C
    simp [show (22674816 * k + 11999824) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5999912) = 5668704 * k + 2999956 := by
    unfold C
    simp [show (11337408 * k + 5999912) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2999956) = 2834352 * k + 1499978 := by
    unfold C
    simp [show (5668704 * k + 2999956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1499978) = 1417176 * k + 749989 := by
    unfold C
    simp [show (2834352 * k + 1499978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 749989) = 4251528 * k + 2249968 := by
    unfold C
    simp [show (1417176 * k + 749989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2249968) = 2125764 * k + 1124984 := by
    unfold C
    simp [show (4251528 * k + 2249968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1124984) = 1062882 * k + 562492 := by
    unfold C
    simp [show (2125764 * k + 1124984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 562492) = 531441 * k + 281246 := by
    unfold C
    simp [show (1062882 * k + 562492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 554919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 554919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555071 : ∀ k : Nat,
    iterate (1048576 * k + 555071) 32 = 531441 * k + 281323 ∧
      531441 * k + 281323 < 1048576 * k + 555071 := by
  intro k
  have h1 : C (1048576 * k + 555071) = 3145728 * k + 1665214 := by
    unfold C
    simp [show (1048576 * k + 555071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1665214) = 1572864 * k + 832607 := by
    unfold C
    simp [show (3145728 * k + 1665214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 832607) = 4718592 * k + 2497822 := by
    unfold C
    simp [show (1572864 * k + 832607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2497822) = 2359296 * k + 1248911 := by
    unfold C
    simp [show (4718592 * k + 2497822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1248911) = 7077888 * k + 3746734 := by
    unfold C
    simp [show (2359296 * k + 1248911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3746734) = 3538944 * k + 1873367 := by
    unfold C
    simp [show (7077888 * k + 3746734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1873367) = 10616832 * k + 5620102 := by
    unfold C
    simp [show (3538944 * k + 1873367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5620102) = 5308416 * k + 2810051 := by
    unfold C
    simp [show (10616832 * k + 5620102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2810051) = 15925248 * k + 8430154 := by
    unfold C
    simp [show (5308416 * k + 2810051) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8430154) = 7962624 * k + 4215077 := by
    unfold C
    simp [show (15925248 * k + 8430154) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4215077) = 23887872 * k + 12645232 := by
    unfold C
    simp [show (7962624 * k + 4215077) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12645232) = 11943936 * k + 6322616 := by
    unfold C
    simp [show (23887872 * k + 12645232) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6322616) = 5971968 * k + 3161308 := by
    unfold C
    simp [show (11943936 * k + 6322616) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3161308) = 2985984 * k + 1580654 := by
    unfold C
    simp [show (5971968 * k + 3161308) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1580654) = 1492992 * k + 790327 := by
    unfold C
    simp [show (2985984 * k + 1580654) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 790327) = 4478976 * k + 2370982 := by
    unfold C
    simp [show (1492992 * k + 790327) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2370982) = 2239488 * k + 1185491 := by
    unfold C
    simp [show (4478976 * k + 2370982) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1185491) = 6718464 * k + 3556474 := by
    unfold C
    simp [show (2239488 * k + 1185491) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3556474) = 3359232 * k + 1778237 := by
    unfold C
    simp [show (6718464 * k + 3556474) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1778237) = 10077696 * k + 5334712 := by
    unfold C
    simp [show (3359232 * k + 1778237) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5334712) = 5038848 * k + 2667356 := by
    unfold C
    simp [show (10077696 * k + 5334712) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2667356) = 2519424 * k + 1333678 := by
    unfold C
    simp [show (5038848 * k + 2667356) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1333678) = 1259712 * k + 666839 := by
    unfold C
    simp [show (2519424 * k + 1333678) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 666839) = 3779136 * k + 2000518 := by
    unfold C
    simp [show (1259712 * k + 666839) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2000518) = 1889568 * k + 1000259 := by
    unfold C
    simp [show (3779136 * k + 2000518) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1000259) = 5668704 * k + 3000778 := by
    unfold C
    simp [show (1889568 * k + 1000259) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3000778) = 2834352 * k + 1500389 := by
    unfold C
    simp [show (5668704 * k + 3000778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1500389) = 8503056 * k + 4501168 := by
    unfold C
    simp [show (2834352 * k + 1500389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4501168) = 4251528 * k + 2250584 := by
    unfold C
    simp [show (8503056 * k + 4501168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2250584) = 2125764 * k + 1125292 := by
    unfold C
    simp [show (4251528 * k + 2250584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1125292) = 1062882 * k + 562646 := by
    unfold C
    simp [show (2125764 * k + 1125292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 562646) = 531441 * k + 281323 := by
    unfold C
    simp [show (1062882 * k + 562646) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555215 : ∀ k : Nat,
    iterate (1048576 * k + 555215) 32 = 531441 * k + 281396 ∧
      531441 * k + 281396 < 1048576 * k + 555215 := by
  intro k
  have h1 : C (1048576 * k + 555215) = 3145728 * k + 1665646 := by
    unfold C
    simp [show (1048576 * k + 555215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1665646) = 1572864 * k + 832823 := by
    unfold C
    simp [show (3145728 * k + 1665646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 832823) = 4718592 * k + 2498470 := by
    unfold C
    simp [show (1572864 * k + 832823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2498470) = 2359296 * k + 1249235 := by
    unfold C
    simp [show (4718592 * k + 2498470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1249235) = 7077888 * k + 3747706 := by
    unfold C
    simp [show (2359296 * k + 1249235) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3747706) = 3538944 * k + 1873853 := by
    unfold C
    simp [show (7077888 * k + 3747706) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1873853) = 10616832 * k + 5621560 := by
    unfold C
    simp [show (3538944 * k + 1873853) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5621560) = 5308416 * k + 2810780 := by
    unfold C
    simp [show (10616832 * k + 5621560) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2810780) = 2654208 * k + 1405390 := by
    unfold C
    simp [show (5308416 * k + 2810780) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1405390) = 1327104 * k + 702695 := by
    unfold C
    simp [show (2654208 * k + 1405390) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 702695) = 3981312 * k + 2108086 := by
    unfold C
    simp [show (1327104 * k + 702695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2108086) = 1990656 * k + 1054043 := by
    unfold C
    simp [show (3981312 * k + 2108086) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1054043) = 5971968 * k + 3162130 := by
    unfold C
    simp [show (1990656 * k + 1054043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3162130) = 2985984 * k + 1581065 := by
    unfold C
    simp [show (5971968 * k + 3162130) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1581065) = 8957952 * k + 4743196 := by
    unfold C
    simp [show (2985984 * k + 1581065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4743196) = 4478976 * k + 2371598 := by
    unfold C
    simp [show (8957952 * k + 4743196) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2371598) = 2239488 * k + 1185799 := by
    unfold C
    simp [show (4478976 * k + 2371598) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1185799) = 6718464 * k + 3557398 := by
    unfold C
    simp [show (2239488 * k + 1185799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3557398) = 3359232 * k + 1778699 := by
    unfold C
    simp [show (6718464 * k + 3557398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1778699) = 10077696 * k + 5336098 := by
    unfold C
    simp [show (3359232 * k + 1778699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5336098) = 5038848 * k + 2668049 := by
    unfold C
    simp [show (10077696 * k + 5336098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2668049) = 15116544 * k + 8004148 := by
    unfold C
    simp [show (5038848 * k + 2668049) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8004148) = 7558272 * k + 4002074 := by
    unfold C
    simp [show (15116544 * k + 8004148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4002074) = 3779136 * k + 2001037 := by
    unfold C
    simp [show (7558272 * k + 4002074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2001037) = 11337408 * k + 6003112 := by
    unfold C
    simp [show (3779136 * k + 2001037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6003112) = 5668704 * k + 3001556 := by
    unfold C
    simp [show (11337408 * k + 6003112) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3001556) = 2834352 * k + 1500778 := by
    unfold C
    simp [show (5668704 * k + 3001556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1500778) = 1417176 * k + 750389 := by
    unfold C
    simp [show (2834352 * k + 1500778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 750389) = 4251528 * k + 2251168 := by
    unfold C
    simp [show (1417176 * k + 750389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2251168) = 2125764 * k + 1125584 := by
    unfold C
    simp [show (4251528 * k + 2251168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1125584) = 1062882 * k + 562792 := by
    unfold C
    simp [show (2125764 * k + 1125584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 562792) = 531441 * k + 281396 := by
    unfold C
    simp [show (1062882 * k + 562792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555675 : ∀ k : Nat,
    iterate (1048576 * k + 555675) 32 = 531441 * k + 281629 ∧
      531441 * k + 281629 < 1048576 * k + 555675 := by
  intro k
  have h1 : C (1048576 * k + 555675) = 3145728 * k + 1667026 := by
    unfold C
    simp [show (1048576 * k + 555675) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1667026) = 1572864 * k + 833513 := by
    unfold C
    simp [show (3145728 * k + 1667026) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 833513) = 4718592 * k + 2500540 := by
    unfold C
    simp [show (1572864 * k + 833513) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2500540) = 2359296 * k + 1250270 := by
    unfold C
    simp [show (4718592 * k + 2500540) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1250270) = 1179648 * k + 625135 := by
    unfold C
    simp [show (2359296 * k + 1250270) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 625135) = 3538944 * k + 1875406 := by
    unfold C
    simp [show (1179648 * k + 625135) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1875406) = 1769472 * k + 937703 := by
    unfold C
    simp [show (3538944 * k + 1875406) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 937703) = 5308416 * k + 2813110 := by
    unfold C
    simp [show (1769472 * k + 937703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2813110) = 2654208 * k + 1406555 := by
    unfold C
    simp [show (5308416 * k + 2813110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1406555) = 7962624 * k + 4219666 := by
    unfold C
    simp [show (2654208 * k + 1406555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4219666) = 3981312 * k + 2109833 := by
    unfold C
    simp [show (7962624 * k + 4219666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2109833) = 11943936 * k + 6329500 := by
    unfold C
    simp [show (3981312 * k + 2109833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6329500) = 5971968 * k + 3164750 := by
    unfold C
    simp [show (11943936 * k + 6329500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3164750) = 2985984 * k + 1582375 := by
    unfold C
    simp [show (5971968 * k + 3164750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1582375) = 8957952 * k + 4747126 := by
    unfold C
    simp [show (2985984 * k + 1582375) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4747126) = 4478976 * k + 2373563 := by
    unfold C
    simp [show (8957952 * k + 4747126) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2373563) = 13436928 * k + 7120690 := by
    unfold C
    simp [show (4478976 * k + 2373563) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7120690) = 6718464 * k + 3560345 := by
    unfold C
    simp [show (13436928 * k + 7120690) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3560345) = 20155392 * k + 10681036 := by
    unfold C
    simp [show (6718464 * k + 3560345) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10681036) = 10077696 * k + 5340518 := by
    unfold C
    simp [show (20155392 * k + 10681036) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5340518) = 5038848 * k + 2670259 := by
    unfold C
    simp [show (10077696 * k + 5340518) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2670259) = 15116544 * k + 8010778 := by
    unfold C
    simp [show (5038848 * k + 2670259) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8010778) = 7558272 * k + 4005389 := by
    unfold C
    simp [show (15116544 * k + 8010778) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4005389) = 22674816 * k + 12016168 := by
    unfold C
    simp [show (7558272 * k + 4005389) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12016168) = 11337408 * k + 6008084 := by
    unfold C
    simp [show (22674816 * k + 12016168) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6008084) = 5668704 * k + 3004042 := by
    unfold C
    simp [show (11337408 * k + 6008084) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3004042) = 2834352 * k + 1502021 := by
    unfold C
    simp [show (5668704 * k + 3004042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1502021) = 8503056 * k + 4506064 := by
    unfold C
    simp [show (2834352 * k + 1502021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4506064) = 4251528 * k + 2253032 := by
    unfold C
    simp [show (8503056 * k + 4506064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2253032) = 2125764 * k + 1126516 := by
    unfold C
    simp [show (4251528 * k + 2253032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1126516) = 1062882 * k + 563258 := by
    unfold C
    simp [show (2125764 * k + 1126516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 563258) = 531441 * k + 281629 := by
    unfold C
    simp [show (1062882 * k + 563258) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555675) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555675)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555771 : ∀ k : Nat,
    iterate (1048576 * k + 555771) 32 = 531441 * k + 281678 ∧
      531441 * k + 281678 < 1048576 * k + 555771 := by
  intro k
  have h1 : C (1048576 * k + 555771) = 3145728 * k + 1667314 := by
    unfold C
    simp [show (1048576 * k + 555771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1667314) = 1572864 * k + 833657 := by
    unfold C
    simp [show (3145728 * k + 1667314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 833657) = 4718592 * k + 2500972 := by
    unfold C
    simp [show (1572864 * k + 833657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2500972) = 2359296 * k + 1250486 := by
    unfold C
    simp [show (4718592 * k + 2500972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1250486) = 1179648 * k + 625243 := by
    unfold C
    simp [show (2359296 * k + 1250486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 625243) = 3538944 * k + 1875730 := by
    unfold C
    simp [show (1179648 * k + 625243) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1875730) = 1769472 * k + 937865 := by
    unfold C
    simp [show (3538944 * k + 1875730) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 937865) = 5308416 * k + 2813596 := by
    unfold C
    simp [show (1769472 * k + 937865) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2813596) = 2654208 * k + 1406798 := by
    unfold C
    simp [show (5308416 * k + 2813596) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1406798) = 1327104 * k + 703399 := by
    unfold C
    simp [show (2654208 * k + 1406798) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 703399) = 3981312 * k + 2110198 := by
    unfold C
    simp [show (1327104 * k + 703399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2110198) = 1990656 * k + 1055099 := by
    unfold C
    simp [show (3981312 * k + 2110198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1055099) = 5971968 * k + 3165298 := by
    unfold C
    simp [show (1990656 * k + 1055099) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3165298) = 2985984 * k + 1582649 := by
    unfold C
    simp [show (5971968 * k + 3165298) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1582649) = 8957952 * k + 4747948 := by
    unfold C
    simp [show (2985984 * k + 1582649) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4747948) = 4478976 * k + 2373974 := by
    unfold C
    simp [show (8957952 * k + 4747948) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2373974) = 2239488 * k + 1186987 := by
    unfold C
    simp [show (4478976 * k + 2373974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1186987) = 6718464 * k + 3560962 := by
    unfold C
    simp [show (2239488 * k + 1186987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3560962) = 3359232 * k + 1780481 := by
    unfold C
    simp [show (6718464 * k + 3560962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1780481) = 10077696 * k + 5341444 := by
    unfold C
    simp [show (3359232 * k + 1780481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5341444) = 5038848 * k + 2670722 := by
    unfold C
    simp [show (10077696 * k + 5341444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2670722) = 2519424 * k + 1335361 := by
    unfold C
    simp [show (5038848 * k + 2670722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1335361) = 7558272 * k + 4006084 := by
    unfold C
    simp [show (2519424 * k + 1335361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4006084) = 3779136 * k + 2003042 := by
    unfold C
    simp [show (7558272 * k + 4006084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2003042) = 1889568 * k + 1001521 := by
    unfold C
    simp [show (3779136 * k + 2003042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1001521) = 5668704 * k + 3004564 := by
    unfold C
    simp [show (1889568 * k + 1001521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3004564) = 2834352 * k + 1502282 := by
    unfold C
    simp [show (5668704 * k + 3004564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1502282) = 1417176 * k + 751141 := by
    unfold C
    simp [show (2834352 * k + 1502282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 751141) = 4251528 * k + 2253424 := by
    unfold C
    simp [show (1417176 * k + 751141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2253424) = 2125764 * k + 1126712 := by
    unfold C
    simp [show (4251528 * k + 2253424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1126712) = 1062882 * k + 563356 := by
    unfold C
    simp [show (2125764 * k + 1126712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 563356) = 531441 * k + 281678 := by
    unfold C
    simp [show (1062882 * k + 563356) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555807 : ∀ k : Nat,
    iterate (1048576 * k + 555807) 32 = 531441 * k + 281696 ∧
      531441 * k + 281696 < 1048576 * k + 555807 := by
  intro k
  have h1 : C (1048576 * k + 555807) = 3145728 * k + 1667422 := by
    unfold C
    simp [show (1048576 * k + 555807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1667422) = 1572864 * k + 833711 := by
    unfold C
    simp [show (3145728 * k + 1667422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 833711) = 4718592 * k + 2501134 := by
    unfold C
    simp [show (1572864 * k + 833711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2501134) = 2359296 * k + 1250567 := by
    unfold C
    simp [show (4718592 * k + 2501134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1250567) = 7077888 * k + 3751702 := by
    unfold C
    simp [show (2359296 * k + 1250567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3751702) = 3538944 * k + 1875851 := by
    unfold C
    simp [show (7077888 * k + 3751702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1875851) = 10616832 * k + 5627554 := by
    unfold C
    simp [show (3538944 * k + 1875851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5627554) = 5308416 * k + 2813777 := by
    unfold C
    simp [show (10616832 * k + 5627554) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2813777) = 15925248 * k + 8441332 := by
    unfold C
    simp [show (5308416 * k + 2813777) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8441332) = 7962624 * k + 4220666 := by
    unfold C
    simp [show (15925248 * k + 8441332) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4220666) = 3981312 * k + 2110333 := by
    unfold C
    simp [show (7962624 * k + 4220666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2110333) = 11943936 * k + 6331000 := by
    unfold C
    simp [show (3981312 * k + 2110333) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6331000) = 5971968 * k + 3165500 := by
    unfold C
    simp [show (11943936 * k + 6331000) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3165500) = 2985984 * k + 1582750 := by
    unfold C
    simp [show (5971968 * k + 3165500) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1582750) = 1492992 * k + 791375 := by
    unfold C
    simp [show (2985984 * k + 1582750) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 791375) = 4478976 * k + 2374126 := by
    unfold C
    simp [show (1492992 * k + 791375) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2374126) = 2239488 * k + 1187063 := by
    unfold C
    simp [show (4478976 * k + 2374126) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1187063) = 6718464 * k + 3561190 := by
    unfold C
    simp [show (2239488 * k + 1187063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3561190) = 3359232 * k + 1780595 := by
    unfold C
    simp [show (6718464 * k + 3561190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1780595) = 10077696 * k + 5341786 := by
    unfold C
    simp [show (3359232 * k + 1780595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5341786) = 5038848 * k + 2670893 := by
    unfold C
    simp [show (10077696 * k + 5341786) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2670893) = 15116544 * k + 8012680 := by
    unfold C
    simp [show (5038848 * k + 2670893) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8012680) = 7558272 * k + 4006340 := by
    unfold C
    simp [show (15116544 * k + 8012680) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4006340) = 3779136 * k + 2003170 := by
    unfold C
    simp [show (7558272 * k + 4006340) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2003170) = 1889568 * k + 1001585 := by
    unfold C
    simp [show (3779136 * k + 2003170) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1001585) = 5668704 * k + 3004756 := by
    unfold C
    simp [show (1889568 * k + 1001585) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3004756) = 2834352 * k + 1502378 := by
    unfold C
    simp [show (5668704 * k + 3004756) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1502378) = 1417176 * k + 751189 := by
    unfold C
    simp [show (2834352 * k + 1502378) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 751189) = 4251528 * k + 2253568 := by
    unfold C
    simp [show (1417176 * k + 751189) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2253568) = 2125764 * k + 1126784 := by
    unfold C
    simp [show (4251528 * k + 2253568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1126784) = 1062882 * k + 563392 := by
    unfold C
    simp [show (2125764 * k + 1126784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 563392) = 531441 * k + 281696 := by
    unfold C
    simp [show (1062882 * k + 563392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_555967 : ∀ k : Nat,
    iterate (1048576 * k + 555967) 32 = 531441 * k + 281777 ∧
      531441 * k + 281777 < 1048576 * k + 555967 := by
  intro k
  have h1 : C (1048576 * k + 555967) = 3145728 * k + 1667902 := by
    unfold C
    simp [show (1048576 * k + 555967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1667902) = 1572864 * k + 833951 := by
    unfold C
    simp [show (3145728 * k + 1667902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 833951) = 4718592 * k + 2501854 := by
    unfold C
    simp [show (1572864 * k + 833951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2501854) = 2359296 * k + 1250927 := by
    unfold C
    simp [show (4718592 * k + 2501854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1250927) = 7077888 * k + 3752782 := by
    unfold C
    simp [show (2359296 * k + 1250927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3752782) = 3538944 * k + 1876391 := by
    unfold C
    simp [show (7077888 * k + 3752782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1876391) = 10616832 * k + 5629174 := by
    unfold C
    simp [show (3538944 * k + 1876391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5629174) = 5308416 * k + 2814587 := by
    unfold C
    simp [show (10616832 * k + 5629174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2814587) = 15925248 * k + 8443762 := by
    unfold C
    simp [show (5308416 * k + 2814587) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8443762) = 7962624 * k + 4221881 := by
    unfold C
    simp [show (15925248 * k + 8443762) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4221881) = 23887872 * k + 12665644 := by
    unfold C
    simp [show (7962624 * k + 4221881) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12665644) = 11943936 * k + 6332822 := by
    unfold C
    simp [show (23887872 * k + 12665644) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6332822) = 5971968 * k + 3166411 := by
    unfold C
    simp [show (11943936 * k + 6332822) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3166411) = 17915904 * k + 9499234 := by
    unfold C
    simp [show (5971968 * k + 3166411) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9499234) = 8957952 * k + 4749617 := by
    unfold C
    simp [show (17915904 * k + 9499234) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4749617) = 26873856 * k + 14248852 := by
    unfold C
    simp [show (8957952 * k + 4749617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14248852) = 13436928 * k + 7124426 := by
    unfold C
    simp [show (26873856 * k + 14248852) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7124426) = 6718464 * k + 3562213 := by
    unfold C
    simp [show (13436928 * k + 7124426) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3562213) = 20155392 * k + 10686640 := by
    unfold C
    simp [show (6718464 * k + 3562213) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10686640) = 10077696 * k + 5343320 := by
    unfold C
    simp [show (20155392 * k + 10686640) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5343320) = 5038848 * k + 2671660 := by
    unfold C
    simp [show (10077696 * k + 5343320) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2671660) = 2519424 * k + 1335830 := by
    unfold C
    simp [show (5038848 * k + 2671660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1335830) = 1259712 * k + 667915 := by
    unfold C
    simp [show (2519424 * k + 1335830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 667915) = 3779136 * k + 2003746 := by
    unfold C
    simp [show (1259712 * k + 667915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2003746) = 1889568 * k + 1001873 := by
    unfold C
    simp [show (3779136 * k + 2003746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1001873) = 5668704 * k + 3005620 := by
    unfold C
    simp [show (1889568 * k + 1001873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3005620) = 2834352 * k + 1502810 := by
    unfold C
    simp [show (5668704 * k + 3005620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1502810) = 1417176 * k + 751405 := by
    unfold C
    simp [show (2834352 * k + 1502810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 751405) = 4251528 * k + 2254216 := by
    unfold C
    simp [show (1417176 * k + 751405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2254216) = 2125764 * k + 1127108 := by
    unfold C
    simp [show (4251528 * k + 2254216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1127108) = 1062882 * k + 563554 := by
    unfold C
    simp [show (2125764 * k + 1127108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 563554) = 531441 * k + 281777 := by
    unfold C
    simp [show (1062882 * k + 563554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 555967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 555967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_556095 : ∀ k : Nat,
    iterate (1048576 * k + 556095) 32 = 531441 * k + 281842 ∧
      531441 * k + 281842 < 1048576 * k + 556095 := by
  intro k
  have h1 : C (1048576 * k + 556095) = 3145728 * k + 1668286 := by
    unfold C
    simp [show (1048576 * k + 556095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1668286) = 1572864 * k + 834143 := by
    unfold C
    simp [show (3145728 * k + 1668286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 834143) = 4718592 * k + 2502430 := by
    unfold C
    simp [show (1572864 * k + 834143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2502430) = 2359296 * k + 1251215 := by
    unfold C
    simp [show (4718592 * k + 2502430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1251215) = 7077888 * k + 3753646 := by
    unfold C
    simp [show (2359296 * k + 1251215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3753646) = 3538944 * k + 1876823 := by
    unfold C
    simp [show (7077888 * k + 3753646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1876823) = 10616832 * k + 5630470 := by
    unfold C
    simp [show (3538944 * k + 1876823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5630470) = 5308416 * k + 2815235 := by
    unfold C
    simp [show (10616832 * k + 5630470) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2815235) = 15925248 * k + 8445706 := by
    unfold C
    simp [show (5308416 * k + 2815235) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8445706) = 7962624 * k + 4222853 := by
    unfold C
    simp [show (15925248 * k + 8445706) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4222853) = 23887872 * k + 12668560 := by
    unfold C
    simp [show (7962624 * k + 4222853) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12668560) = 11943936 * k + 6334280 := by
    unfold C
    simp [show (23887872 * k + 12668560) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6334280) = 5971968 * k + 3167140 := by
    unfold C
    simp [show (11943936 * k + 6334280) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3167140) = 2985984 * k + 1583570 := by
    unfold C
    simp [show (5971968 * k + 3167140) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1583570) = 1492992 * k + 791785 := by
    unfold C
    simp [show (2985984 * k + 1583570) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 791785) = 4478976 * k + 2375356 := by
    unfold C
    simp [show (1492992 * k + 791785) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2375356) = 2239488 * k + 1187678 := by
    unfold C
    simp [show (4478976 * k + 2375356) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1187678) = 1119744 * k + 593839 := by
    unfold C
    simp [show (2239488 * k + 1187678) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 593839) = 3359232 * k + 1781518 := by
    unfold C
    simp [show (1119744 * k + 593839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1781518) = 1679616 * k + 890759 := by
    unfold C
    simp [show (3359232 * k + 1781518) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 890759) = 5038848 * k + 2672278 := by
    unfold C
    simp [show (1679616 * k + 890759) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2672278) = 2519424 * k + 1336139 := by
    unfold C
    simp [show (5038848 * k + 2672278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1336139) = 7558272 * k + 4008418 := by
    unfold C
    simp [show (2519424 * k + 1336139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4008418) = 3779136 * k + 2004209 := by
    unfold C
    simp [show (7558272 * k + 4008418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2004209) = 11337408 * k + 6012628 := by
    unfold C
    simp [show (3779136 * k + 2004209) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6012628) = 5668704 * k + 3006314 := by
    unfold C
    simp [show (11337408 * k + 6012628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3006314) = 2834352 * k + 1503157 := by
    unfold C
    simp [show (5668704 * k + 3006314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1503157) = 8503056 * k + 4509472 := by
    unfold C
    simp [show (2834352 * k + 1503157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4509472) = 4251528 * k + 2254736 := by
    unfold C
    simp [show (8503056 * k + 4509472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2254736) = 2125764 * k + 1127368 := by
    unfold C
    simp [show (4251528 * k + 2254736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1127368) = 1062882 * k + 563684 := by
    unfold C
    simp [show (2125764 * k + 1127368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 563684) = 531441 * k + 281842 := by
    unfold C
    simp [show (1062882 * k + 563684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 556095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 556095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_556415 : ∀ k : Nat,
    iterate (1048576 * k + 556415) 32 = 531441 * k + 282004 ∧
      531441 * k + 282004 < 1048576 * k + 556415 := by
  intro k
  have h1 : C (1048576 * k + 556415) = 3145728 * k + 1669246 := by
    unfold C
    simp [show (1048576 * k + 556415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1669246) = 1572864 * k + 834623 := by
    unfold C
    simp [show (3145728 * k + 1669246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 834623) = 4718592 * k + 2503870 := by
    unfold C
    simp [show (1572864 * k + 834623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2503870) = 2359296 * k + 1251935 := by
    unfold C
    simp [show (4718592 * k + 2503870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1251935) = 7077888 * k + 3755806 := by
    unfold C
    simp [show (2359296 * k + 1251935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3755806) = 3538944 * k + 1877903 := by
    unfold C
    simp [show (7077888 * k + 3755806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1877903) = 10616832 * k + 5633710 := by
    unfold C
    simp [show (3538944 * k + 1877903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5633710) = 5308416 * k + 2816855 := by
    unfold C
    simp [show (10616832 * k + 5633710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2816855) = 15925248 * k + 8450566 := by
    unfold C
    simp [show (5308416 * k + 2816855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8450566) = 7962624 * k + 4225283 := by
    unfold C
    simp [show (15925248 * k + 8450566) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4225283) = 23887872 * k + 12675850 := by
    unfold C
    simp [show (7962624 * k + 4225283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12675850) = 11943936 * k + 6337925 := by
    unfold C
    simp [show (23887872 * k + 12675850) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6337925) = 35831808 * k + 19013776 := by
    unfold C
    simp [show (11943936 * k + 6337925) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19013776) = 17915904 * k + 9506888 := by
    unfold C
    simp [show (35831808 * k + 19013776) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9506888) = 8957952 * k + 4753444 := by
    unfold C
    simp [show (17915904 * k + 9506888) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4753444) = 4478976 * k + 2376722 := by
    unfold C
    simp [show (8957952 * k + 4753444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2376722) = 2239488 * k + 1188361 := by
    unfold C
    simp [show (4478976 * k + 2376722) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1188361) = 6718464 * k + 3565084 := by
    unfold C
    simp [show (2239488 * k + 1188361) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3565084) = 3359232 * k + 1782542 := by
    unfold C
    simp [show (6718464 * k + 3565084) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1782542) = 1679616 * k + 891271 := by
    unfold C
    simp [show (3359232 * k + 1782542) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 891271) = 5038848 * k + 2673814 := by
    unfold C
    simp [show (1679616 * k + 891271) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2673814) = 2519424 * k + 1336907 := by
    unfold C
    simp [show (5038848 * k + 2673814) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1336907) = 7558272 * k + 4010722 := by
    unfold C
    simp [show (2519424 * k + 1336907) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4010722) = 3779136 * k + 2005361 := by
    unfold C
    simp [show (7558272 * k + 4010722) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2005361) = 11337408 * k + 6016084 := by
    unfold C
    simp [show (3779136 * k + 2005361) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6016084) = 5668704 * k + 3008042 := by
    unfold C
    simp [show (11337408 * k + 6016084) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3008042) = 2834352 * k + 1504021 := by
    unfold C
    simp [show (5668704 * k + 3008042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1504021) = 8503056 * k + 4512064 := by
    unfold C
    simp [show (2834352 * k + 1504021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4512064) = 4251528 * k + 2256032 := by
    unfold C
    simp [show (8503056 * k + 4512064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2256032) = 2125764 * k + 1128016 := by
    unfold C
    simp [show (4251528 * k + 2256032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1128016) = 1062882 * k + 564008 := by
    unfold C
    simp [show (2125764 * k + 1128016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 564008) = 531441 * k + 282004 := by
    unfold C
    simp [show (1062882 * k + 564008) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 556415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 556415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_556575 : ∀ k : Nat,
    iterate (1048576 * k + 556575) 32 = 531441 * k + 282085 ∧
      531441 * k + 282085 < 1048576 * k + 556575 := by
  intro k
  have h1 : C (1048576 * k + 556575) = 3145728 * k + 1669726 := by
    unfold C
    simp [show (1048576 * k + 556575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1669726) = 1572864 * k + 834863 := by
    unfold C
    simp [show (3145728 * k + 1669726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 834863) = 4718592 * k + 2504590 := by
    unfold C
    simp [show (1572864 * k + 834863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2504590) = 2359296 * k + 1252295 := by
    unfold C
    simp [show (4718592 * k + 2504590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1252295) = 7077888 * k + 3756886 := by
    unfold C
    simp [show (2359296 * k + 1252295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3756886) = 3538944 * k + 1878443 := by
    unfold C
    simp [show (7077888 * k + 3756886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1878443) = 10616832 * k + 5635330 := by
    unfold C
    simp [show (3538944 * k + 1878443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5635330) = 5308416 * k + 2817665 := by
    unfold C
    simp [show (10616832 * k + 5635330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2817665) = 15925248 * k + 8452996 := by
    unfold C
    simp [show (5308416 * k + 2817665) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8452996) = 7962624 * k + 4226498 := by
    unfold C
    simp [show (15925248 * k + 8452996) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4226498) = 3981312 * k + 2113249 := by
    unfold C
    simp [show (7962624 * k + 4226498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2113249) = 11943936 * k + 6339748 := by
    unfold C
    simp [show (3981312 * k + 2113249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6339748) = 5971968 * k + 3169874 := by
    unfold C
    simp [show (11943936 * k + 6339748) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3169874) = 2985984 * k + 1584937 := by
    unfold C
    simp [show (5971968 * k + 3169874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1584937) = 8957952 * k + 4754812 := by
    unfold C
    simp [show (2985984 * k + 1584937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4754812) = 4478976 * k + 2377406 := by
    unfold C
    simp [show (8957952 * k + 4754812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2377406) = 2239488 * k + 1188703 := by
    unfold C
    simp [show (4478976 * k + 2377406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1188703) = 6718464 * k + 3566110 := by
    unfold C
    simp [show (2239488 * k + 1188703) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3566110) = 3359232 * k + 1783055 := by
    unfold C
    simp [show (6718464 * k + 3566110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1783055) = 10077696 * k + 5349166 := by
    unfold C
    simp [show (3359232 * k + 1783055) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5349166) = 5038848 * k + 2674583 := by
    unfold C
    simp [show (10077696 * k + 5349166) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2674583) = 15116544 * k + 8023750 := by
    unfold C
    simp [show (5038848 * k + 2674583) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8023750) = 7558272 * k + 4011875 := by
    unfold C
    simp [show (15116544 * k + 8023750) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4011875) = 22674816 * k + 12035626 := by
    unfold C
    simp [show (7558272 * k + 4011875) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12035626) = 11337408 * k + 6017813 := by
    unfold C
    simp [show (22674816 * k + 12035626) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6017813) = 34012224 * k + 18053440 := by
    unfold C
    simp [show (11337408 * k + 6017813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18053440) = 17006112 * k + 9026720 := by
    unfold C
    simp [show (34012224 * k + 18053440) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9026720) = 8503056 * k + 4513360 := by
    unfold C
    simp [show (17006112 * k + 9026720) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4513360) = 4251528 * k + 2256680 := by
    unfold C
    simp [show (8503056 * k + 4513360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2256680) = 2125764 * k + 1128340 := by
    unfold C
    simp [show (4251528 * k + 2256680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1128340) = 1062882 * k + 564170 := by
    unfold C
    simp [show (2125764 * k + 1128340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 564170) = 531441 * k + 282085 := by
    unfold C
    simp [show (1062882 * k + 564170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 556575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 556575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_556735 : ∀ k : Nat,
    iterate (1048576 * k + 556735) 32 = 531441 * k + 282166 ∧
      531441 * k + 282166 < 1048576 * k + 556735 := by
  intro k
  have h1 : C (1048576 * k + 556735) = 3145728 * k + 1670206 := by
    unfold C
    simp [show (1048576 * k + 556735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1670206) = 1572864 * k + 835103 := by
    unfold C
    simp [show (3145728 * k + 1670206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 835103) = 4718592 * k + 2505310 := by
    unfold C
    simp [show (1572864 * k + 835103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2505310) = 2359296 * k + 1252655 := by
    unfold C
    simp [show (4718592 * k + 2505310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1252655) = 7077888 * k + 3757966 := by
    unfold C
    simp [show (2359296 * k + 1252655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3757966) = 3538944 * k + 1878983 := by
    unfold C
    simp [show (7077888 * k + 3757966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1878983) = 10616832 * k + 5636950 := by
    unfold C
    simp [show (3538944 * k + 1878983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5636950) = 5308416 * k + 2818475 := by
    unfold C
    simp [show (10616832 * k + 5636950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2818475) = 15925248 * k + 8455426 := by
    unfold C
    simp [show (5308416 * k + 2818475) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8455426) = 7962624 * k + 4227713 := by
    unfold C
    simp [show (15925248 * k + 8455426) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4227713) = 23887872 * k + 12683140 := by
    unfold C
    simp [show (7962624 * k + 4227713) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12683140) = 11943936 * k + 6341570 := by
    unfold C
    simp [show (23887872 * k + 12683140) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6341570) = 5971968 * k + 3170785 := by
    unfold C
    simp [show (11943936 * k + 6341570) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3170785) = 17915904 * k + 9512356 := by
    unfold C
    simp [show (5971968 * k + 3170785) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9512356) = 8957952 * k + 4756178 := by
    unfold C
    simp [show (17915904 * k + 9512356) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4756178) = 4478976 * k + 2378089 := by
    unfold C
    simp [show (8957952 * k + 4756178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2378089) = 13436928 * k + 7134268 := by
    unfold C
    simp [show (4478976 * k + 2378089) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7134268) = 6718464 * k + 3567134 := by
    unfold C
    simp [show (13436928 * k + 7134268) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3567134) = 3359232 * k + 1783567 := by
    unfold C
    simp [show (6718464 * k + 3567134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1783567) = 10077696 * k + 5350702 := by
    unfold C
    simp [show (3359232 * k + 1783567) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5350702) = 5038848 * k + 2675351 := by
    unfold C
    simp [show (10077696 * k + 5350702) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2675351) = 15116544 * k + 8026054 := by
    unfold C
    simp [show (5038848 * k + 2675351) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8026054) = 7558272 * k + 4013027 := by
    unfold C
    simp [show (15116544 * k + 8026054) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4013027) = 22674816 * k + 12039082 := by
    unfold C
    simp [show (7558272 * k + 4013027) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12039082) = 11337408 * k + 6019541 := by
    unfold C
    simp [show (22674816 * k + 12039082) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6019541) = 34012224 * k + 18058624 := by
    unfold C
    simp [show (11337408 * k + 6019541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18058624) = 17006112 * k + 9029312 := by
    unfold C
    simp [show (34012224 * k + 18058624) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9029312) = 8503056 * k + 4514656 := by
    unfold C
    simp [show (17006112 * k + 9029312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4514656) = 4251528 * k + 2257328 := by
    unfold C
    simp [show (8503056 * k + 4514656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2257328) = 2125764 * k + 1128664 := by
    unfold C
    simp [show (4251528 * k + 2257328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1128664) = 1062882 * k + 564332 := by
    unfold C
    simp [show (2125764 * k + 1128664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 564332) = 531441 * k + 282166 := by
    unfold C
    simp [show (1062882 * k + 564332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 556735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 556735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_557415 : ∀ k : Nat,
    iterate (1048576 * k + 557415) 32 = 531441 * k + 282511 ∧
      531441 * k + 282511 < 1048576 * k + 557415 := by
  intro k
  have h1 : C (1048576 * k + 557415) = 3145728 * k + 1672246 := by
    unfold C
    simp [show (1048576 * k + 557415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1672246) = 1572864 * k + 836123 := by
    unfold C
    simp [show (3145728 * k + 1672246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 836123) = 4718592 * k + 2508370 := by
    unfold C
    simp [show (1572864 * k + 836123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2508370) = 2359296 * k + 1254185 := by
    unfold C
    simp [show (4718592 * k + 2508370) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1254185) = 7077888 * k + 3762556 := by
    unfold C
    simp [show (2359296 * k + 1254185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3762556) = 3538944 * k + 1881278 := by
    unfold C
    simp [show (7077888 * k + 3762556) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1881278) = 1769472 * k + 940639 := by
    unfold C
    simp [show (3538944 * k + 1881278) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 940639) = 5308416 * k + 2821918 := by
    unfold C
    simp [show (1769472 * k + 940639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2821918) = 2654208 * k + 1410959 := by
    unfold C
    simp [show (5308416 * k + 2821918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1410959) = 7962624 * k + 4232878 := by
    unfold C
    simp [show (2654208 * k + 1410959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4232878) = 3981312 * k + 2116439 := by
    unfold C
    simp [show (7962624 * k + 4232878) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2116439) = 11943936 * k + 6349318 := by
    unfold C
    simp [show (3981312 * k + 2116439) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6349318) = 5971968 * k + 3174659 := by
    unfold C
    simp [show (11943936 * k + 6349318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3174659) = 17915904 * k + 9523978 := by
    unfold C
    simp [show (5971968 * k + 3174659) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9523978) = 8957952 * k + 4761989 := by
    unfold C
    simp [show (17915904 * k + 9523978) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4761989) = 26873856 * k + 14285968 := by
    unfold C
    simp [show (8957952 * k + 4761989) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14285968) = 13436928 * k + 7142984 := by
    unfold C
    simp [show (26873856 * k + 14285968) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7142984) = 6718464 * k + 3571492 := by
    unfold C
    simp [show (13436928 * k + 7142984) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3571492) = 3359232 * k + 1785746 := by
    unfold C
    simp [show (6718464 * k + 3571492) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1785746) = 1679616 * k + 892873 := by
    unfold C
    simp [show (3359232 * k + 1785746) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 892873) = 5038848 * k + 2678620 := by
    unfold C
    simp [show (1679616 * k + 892873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2678620) = 2519424 * k + 1339310 := by
    unfold C
    simp [show (5038848 * k + 2678620) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1339310) = 1259712 * k + 669655 := by
    unfold C
    simp [show (2519424 * k + 1339310) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 669655) = 3779136 * k + 2008966 := by
    unfold C
    simp [show (1259712 * k + 669655) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2008966) = 1889568 * k + 1004483 := by
    unfold C
    simp [show (3779136 * k + 2008966) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1004483) = 5668704 * k + 3013450 := by
    unfold C
    simp [show (1889568 * k + 1004483) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3013450) = 2834352 * k + 1506725 := by
    unfold C
    simp [show (5668704 * k + 3013450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1506725) = 8503056 * k + 4520176 := by
    unfold C
    simp [show (2834352 * k + 1506725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4520176) = 4251528 * k + 2260088 := by
    unfold C
    simp [show (8503056 * k + 4520176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2260088) = 2125764 * k + 1130044 := by
    unfold C
    simp [show (4251528 * k + 2260088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1130044) = 1062882 * k + 565022 := by
    unfold C
    simp [show (2125764 * k + 1130044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 565022) = 531441 * k + 282511 := by
    unfold C
    simp [show (1062882 * k + 565022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 557415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 557415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_558311 : ∀ k : Nat,
    iterate (1048576 * k + 558311) 32 = 531441 * k + 282965 ∧
      531441 * k + 282965 < 1048576 * k + 558311 := by
  intro k
  have h1 : C (1048576 * k + 558311) = 3145728 * k + 1674934 := by
    unfold C
    simp [show (1048576 * k + 558311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1674934) = 1572864 * k + 837467 := by
    unfold C
    simp [show (3145728 * k + 1674934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 837467) = 4718592 * k + 2512402 := by
    unfold C
    simp [show (1572864 * k + 837467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2512402) = 2359296 * k + 1256201 := by
    unfold C
    simp [show (4718592 * k + 2512402) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1256201) = 7077888 * k + 3768604 := by
    unfold C
    simp [show (2359296 * k + 1256201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3768604) = 3538944 * k + 1884302 := by
    unfold C
    simp [show (7077888 * k + 3768604) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1884302) = 1769472 * k + 942151 := by
    unfold C
    simp [show (3538944 * k + 1884302) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 942151) = 5308416 * k + 2826454 := by
    unfold C
    simp [show (1769472 * k + 942151) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2826454) = 2654208 * k + 1413227 := by
    unfold C
    simp [show (5308416 * k + 2826454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1413227) = 7962624 * k + 4239682 := by
    unfold C
    simp [show (2654208 * k + 1413227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4239682) = 3981312 * k + 2119841 := by
    unfold C
    simp [show (7962624 * k + 4239682) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2119841) = 11943936 * k + 6359524 := by
    unfold C
    simp [show (3981312 * k + 2119841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6359524) = 5971968 * k + 3179762 := by
    unfold C
    simp [show (11943936 * k + 6359524) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3179762) = 2985984 * k + 1589881 := by
    unfold C
    simp [show (5971968 * k + 3179762) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1589881) = 8957952 * k + 4769644 := by
    unfold C
    simp [show (2985984 * k + 1589881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4769644) = 4478976 * k + 2384822 := by
    unfold C
    simp [show (8957952 * k + 4769644) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2384822) = 2239488 * k + 1192411 := by
    unfold C
    simp [show (4478976 * k + 2384822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1192411) = 6718464 * k + 3577234 := by
    unfold C
    simp [show (2239488 * k + 1192411) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3577234) = 3359232 * k + 1788617 := by
    unfold C
    simp [show (6718464 * k + 3577234) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1788617) = 10077696 * k + 5365852 := by
    unfold C
    simp [show (3359232 * k + 1788617) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5365852) = 5038848 * k + 2682926 := by
    unfold C
    simp [show (10077696 * k + 5365852) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2682926) = 2519424 * k + 1341463 := by
    unfold C
    simp [show (5038848 * k + 2682926) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1341463) = 7558272 * k + 4024390 := by
    unfold C
    simp [show (2519424 * k + 1341463) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4024390) = 3779136 * k + 2012195 := by
    unfold C
    simp [show (7558272 * k + 4024390) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2012195) = 11337408 * k + 6036586 := by
    unfold C
    simp [show (3779136 * k + 2012195) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6036586) = 5668704 * k + 3018293 := by
    unfold C
    simp [show (11337408 * k + 6036586) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3018293) = 17006112 * k + 9054880 := by
    unfold C
    simp [show (5668704 * k + 3018293) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9054880) = 8503056 * k + 4527440 := by
    unfold C
    simp [show (17006112 * k + 9054880) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4527440) = 4251528 * k + 2263720 := by
    unfold C
    simp [show (8503056 * k + 4527440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2263720) = 2125764 * k + 1131860 := by
    unfold C
    simp [show (4251528 * k + 2263720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1131860) = 1062882 * k + 565930 := by
    unfold C
    simp [show (2125764 * k + 1131860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 565930) = 531441 * k + 282965 := by
    unfold C
    simp [show (1062882 * k + 565930) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 558311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 558311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_558495 : ∀ k : Nat,
    iterate (1048576 * k + 558495) 32 = 531441 * k + 283058 ∧
      531441 * k + 283058 < 1048576 * k + 558495 := by
  intro k
  have h1 : C (1048576 * k + 558495) = 3145728 * k + 1675486 := by
    unfold C
    simp [show (1048576 * k + 558495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1675486) = 1572864 * k + 837743 := by
    unfold C
    simp [show (3145728 * k + 1675486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 837743) = 4718592 * k + 2513230 := by
    unfold C
    simp [show (1572864 * k + 837743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2513230) = 2359296 * k + 1256615 := by
    unfold C
    simp [show (4718592 * k + 2513230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1256615) = 7077888 * k + 3769846 := by
    unfold C
    simp [show (2359296 * k + 1256615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3769846) = 3538944 * k + 1884923 := by
    unfold C
    simp [show (7077888 * k + 3769846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1884923) = 10616832 * k + 5654770 := by
    unfold C
    simp [show (3538944 * k + 1884923) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5654770) = 5308416 * k + 2827385 := by
    unfold C
    simp [show (10616832 * k + 5654770) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2827385) = 15925248 * k + 8482156 := by
    unfold C
    simp [show (5308416 * k + 2827385) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8482156) = 7962624 * k + 4241078 := by
    unfold C
    simp [show (15925248 * k + 8482156) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4241078) = 3981312 * k + 2120539 := by
    unfold C
    simp [show (7962624 * k + 4241078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2120539) = 11943936 * k + 6361618 := by
    unfold C
    simp [show (3981312 * k + 2120539) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6361618) = 5971968 * k + 3180809 := by
    unfold C
    simp [show (11943936 * k + 6361618) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3180809) = 17915904 * k + 9542428 := by
    unfold C
    simp [show (5971968 * k + 3180809) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9542428) = 8957952 * k + 4771214 := by
    unfold C
    simp [show (17915904 * k + 9542428) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4771214) = 4478976 * k + 2385607 := by
    unfold C
    simp [show (8957952 * k + 4771214) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2385607) = 13436928 * k + 7156822 := by
    unfold C
    simp [show (4478976 * k + 2385607) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7156822) = 6718464 * k + 3578411 := by
    unfold C
    simp [show (13436928 * k + 7156822) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3578411) = 20155392 * k + 10735234 := by
    unfold C
    simp [show (6718464 * k + 3578411) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10735234) = 10077696 * k + 5367617 := by
    unfold C
    simp [show (20155392 * k + 10735234) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5367617) = 30233088 * k + 16102852 := by
    unfold C
    simp [show (10077696 * k + 5367617) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16102852) = 15116544 * k + 8051426 := by
    unfold C
    simp [show (30233088 * k + 16102852) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8051426) = 7558272 * k + 4025713 := by
    unfold C
    simp [show (15116544 * k + 8051426) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4025713) = 22674816 * k + 12077140 := by
    unfold C
    simp [show (7558272 * k + 4025713) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12077140) = 11337408 * k + 6038570 := by
    unfold C
    simp [show (22674816 * k + 12077140) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6038570) = 5668704 * k + 3019285 := by
    unfold C
    simp [show (11337408 * k + 6038570) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3019285) = 17006112 * k + 9057856 := by
    unfold C
    simp [show (5668704 * k + 3019285) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9057856) = 8503056 * k + 4528928 := by
    unfold C
    simp [show (17006112 * k + 9057856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4528928) = 4251528 * k + 2264464 := by
    unfold C
    simp [show (8503056 * k + 4528928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2264464) = 2125764 * k + 1132232 := by
    unfold C
    simp [show (4251528 * k + 2264464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1132232) = 1062882 * k + 566116 := by
    unfold C
    simp [show (2125764 * k + 1132232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 566116) = 531441 * k + 283058 := by
    unfold C
    simp [show (1062882 * k + 566116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 558495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 558495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_558683 : ∀ k : Nat,
    iterate (1048576 * k + 558683) 32 = 531441 * k + 283154 ∧
      531441 * k + 283154 < 1048576 * k + 558683 := by
  intro k
  have h1 : C (1048576 * k + 558683) = 3145728 * k + 1676050 := by
    unfold C
    simp [show (1048576 * k + 558683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1676050) = 1572864 * k + 838025 := by
    unfold C
    simp [show (3145728 * k + 1676050) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 838025) = 4718592 * k + 2514076 := by
    unfold C
    simp [show (1572864 * k + 838025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2514076) = 2359296 * k + 1257038 := by
    unfold C
    simp [show (4718592 * k + 2514076) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1257038) = 1179648 * k + 628519 := by
    unfold C
    simp [show (2359296 * k + 1257038) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 628519) = 3538944 * k + 1885558 := by
    unfold C
    simp [show (1179648 * k + 628519) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1885558) = 1769472 * k + 942779 := by
    unfold C
    simp [show (3538944 * k + 1885558) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 942779) = 5308416 * k + 2828338 := by
    unfold C
    simp [show (1769472 * k + 942779) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2828338) = 2654208 * k + 1414169 := by
    unfold C
    simp [show (5308416 * k + 2828338) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1414169) = 7962624 * k + 4242508 := by
    unfold C
    simp [show (2654208 * k + 1414169) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4242508) = 3981312 * k + 2121254 := by
    unfold C
    simp [show (7962624 * k + 4242508) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2121254) = 1990656 * k + 1060627 := by
    unfold C
    simp [show (3981312 * k + 2121254) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1060627) = 5971968 * k + 3181882 := by
    unfold C
    simp [show (1990656 * k + 1060627) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3181882) = 2985984 * k + 1590941 := by
    unfold C
    simp [show (5971968 * k + 3181882) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1590941) = 8957952 * k + 4772824 := by
    unfold C
    simp [show (2985984 * k + 1590941) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4772824) = 4478976 * k + 2386412 := by
    unfold C
    simp [show (8957952 * k + 4772824) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2386412) = 2239488 * k + 1193206 := by
    unfold C
    simp [show (4478976 * k + 2386412) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1193206) = 1119744 * k + 596603 := by
    unfold C
    simp [show (2239488 * k + 1193206) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 596603) = 3359232 * k + 1789810 := by
    unfold C
    simp [show (1119744 * k + 596603) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1789810) = 1679616 * k + 894905 := by
    unfold C
    simp [show (3359232 * k + 1789810) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 894905) = 5038848 * k + 2684716 := by
    unfold C
    simp [show (1679616 * k + 894905) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2684716) = 2519424 * k + 1342358 := by
    unfold C
    simp [show (5038848 * k + 2684716) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1342358) = 1259712 * k + 671179 := by
    unfold C
    simp [show (2519424 * k + 1342358) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 671179) = 3779136 * k + 2013538 := by
    unfold C
    simp [show (1259712 * k + 671179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2013538) = 1889568 * k + 1006769 := by
    unfold C
    simp [show (3779136 * k + 2013538) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1006769) = 5668704 * k + 3020308 := by
    unfold C
    simp [show (1889568 * k + 1006769) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3020308) = 2834352 * k + 1510154 := by
    unfold C
    simp [show (5668704 * k + 3020308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1510154) = 1417176 * k + 755077 := by
    unfold C
    simp [show (2834352 * k + 1510154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 755077) = 4251528 * k + 2265232 := by
    unfold C
    simp [show (1417176 * k + 755077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2265232) = 2125764 * k + 1132616 := by
    unfold C
    simp [show (4251528 * k + 2265232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1132616) = 1062882 * k + 566308 := by
    unfold C
    simp [show (2125764 * k + 1132616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 566308) = 531441 * k + 283154 := by
    unfold C
    simp [show (1062882 * k + 566308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 558683) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 558683)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_559015 : ∀ k : Nat,
    iterate (1048576 * k + 559015) 32 = 531441 * k + 283322 ∧
      531441 * k + 283322 < 1048576 * k + 559015 := by
  intro k
  have h1 : C (1048576 * k + 559015) = 3145728 * k + 1677046 := by
    unfold C
    simp [show (1048576 * k + 559015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1677046) = 1572864 * k + 838523 := by
    unfold C
    simp [show (3145728 * k + 1677046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 838523) = 4718592 * k + 2515570 := by
    unfold C
    simp [show (1572864 * k + 838523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2515570) = 2359296 * k + 1257785 := by
    unfold C
    simp [show (4718592 * k + 2515570) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1257785) = 7077888 * k + 3773356 := by
    unfold C
    simp [show (2359296 * k + 1257785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3773356) = 3538944 * k + 1886678 := by
    unfold C
    simp [show (7077888 * k + 3773356) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1886678) = 1769472 * k + 943339 := by
    unfold C
    simp [show (3538944 * k + 1886678) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 943339) = 5308416 * k + 2830018 := by
    unfold C
    simp [show (1769472 * k + 943339) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2830018) = 2654208 * k + 1415009 := by
    unfold C
    simp [show (5308416 * k + 2830018) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1415009) = 7962624 * k + 4245028 := by
    unfold C
    simp [show (2654208 * k + 1415009) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4245028) = 3981312 * k + 2122514 := by
    unfold C
    simp [show (7962624 * k + 4245028) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2122514) = 1990656 * k + 1061257 := by
    unfold C
    simp [show (3981312 * k + 2122514) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1061257) = 5971968 * k + 3183772 := by
    unfold C
    simp [show (1990656 * k + 1061257) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3183772) = 2985984 * k + 1591886 := by
    unfold C
    simp [show (5971968 * k + 3183772) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1591886) = 1492992 * k + 795943 := by
    unfold C
    simp [show (2985984 * k + 1591886) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 795943) = 4478976 * k + 2387830 := by
    unfold C
    simp [show (1492992 * k + 795943) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2387830) = 2239488 * k + 1193915 := by
    unfold C
    simp [show (4478976 * k + 2387830) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1193915) = 6718464 * k + 3581746 := by
    unfold C
    simp [show (2239488 * k + 1193915) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3581746) = 3359232 * k + 1790873 := by
    unfold C
    simp [show (6718464 * k + 3581746) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1790873) = 10077696 * k + 5372620 := by
    unfold C
    simp [show (3359232 * k + 1790873) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5372620) = 5038848 * k + 2686310 := by
    unfold C
    simp [show (10077696 * k + 5372620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2686310) = 2519424 * k + 1343155 := by
    unfold C
    simp [show (5038848 * k + 2686310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1343155) = 7558272 * k + 4029466 := by
    unfold C
    simp [show (2519424 * k + 1343155) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4029466) = 3779136 * k + 2014733 := by
    unfold C
    simp [show (7558272 * k + 4029466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2014733) = 11337408 * k + 6044200 := by
    unfold C
    simp [show (3779136 * k + 2014733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6044200) = 5668704 * k + 3022100 := by
    unfold C
    simp [show (11337408 * k + 6044200) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3022100) = 2834352 * k + 1511050 := by
    unfold C
    simp [show (5668704 * k + 3022100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1511050) = 1417176 * k + 755525 := by
    unfold C
    simp [show (2834352 * k + 1511050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 755525) = 4251528 * k + 2266576 := by
    unfold C
    simp [show (1417176 * k + 755525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2266576) = 2125764 * k + 1133288 := by
    unfold C
    simp [show (4251528 * k + 2266576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1133288) = 1062882 * k + 566644 := by
    unfold C
    simp [show (2125764 * k + 1133288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 566644) = 531441 * k + 283322 := by
    unfold C
    simp [show (1062882 * k + 566644) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 559015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 559015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_559103 : ∀ k : Nat,
    iterate (1048576 * k + 559103) 32 = 531441 * k + 283366 ∧
      531441 * k + 283366 < 1048576 * k + 559103 := by
  intro k
  have h1 : C (1048576 * k + 559103) = 3145728 * k + 1677310 := by
    unfold C
    simp [show (1048576 * k + 559103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1677310) = 1572864 * k + 838655 := by
    unfold C
    simp [show (3145728 * k + 1677310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 838655) = 4718592 * k + 2515966 := by
    unfold C
    simp [show (1572864 * k + 838655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2515966) = 2359296 * k + 1257983 := by
    unfold C
    simp [show (4718592 * k + 2515966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1257983) = 7077888 * k + 3773950 := by
    unfold C
    simp [show (2359296 * k + 1257983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3773950) = 3538944 * k + 1886975 := by
    unfold C
    simp [show (7077888 * k + 3773950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1886975) = 10616832 * k + 5660926 := by
    unfold C
    simp [show (3538944 * k + 1886975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5660926) = 5308416 * k + 2830463 := by
    unfold C
    simp [show (10616832 * k + 5660926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2830463) = 15925248 * k + 8491390 := by
    unfold C
    simp [show (5308416 * k + 2830463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8491390) = 7962624 * k + 4245695 := by
    unfold C
    simp [show (15925248 * k + 8491390) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4245695) = 23887872 * k + 12737086 := by
    unfold C
    simp [show (7962624 * k + 4245695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12737086) = 11943936 * k + 6368543 := by
    unfold C
    simp [show (23887872 * k + 12737086) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6368543) = 35831808 * k + 19105630 := by
    unfold C
    simp [show (11943936 * k + 6368543) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19105630) = 17915904 * k + 9552815 := by
    unfold C
    simp [show (35831808 * k + 19105630) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9552815) = 53747712 * k + 28658446 := by
    unfold C
    simp [show (17915904 * k + 9552815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 28658446) = 26873856 * k + 14329223 := by
    unfold C
    simp [show (53747712 * k + 28658446) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14329223) = 80621568 * k + 42987670 := by
    unfold C
    simp [show (26873856 * k + 14329223) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 42987670) = 40310784 * k + 21493835 := by
    unfold C
    simp [show (80621568 * k + 42987670) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 21493835) = 120932352 * k + 64481506 := by
    unfold C
    simp [show (40310784 * k + 21493835) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 64481506) = 60466176 * k + 32240753 := by
    unfold C
    simp [show (120932352 * k + 64481506) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 32240753) = 181398528 * k + 96722260 := by
    unfold C
    simp [show (60466176 * k + 32240753) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 96722260) = 90699264 * k + 48361130 := by
    unfold C
    simp [show (181398528 * k + 96722260) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 48361130) = 45349632 * k + 24180565 := by
    unfold C
    simp [show (90699264 * k + 48361130) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 24180565) = 136048896 * k + 72541696 := by
    unfold C
    simp [show (45349632 * k + 24180565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 72541696) = 68024448 * k + 36270848 := by
    unfold C
    simp [show (136048896 * k + 72541696) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 36270848) = 34012224 * k + 18135424 := by
    unfold C
    simp [show (68024448 * k + 36270848) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 18135424) = 17006112 * k + 9067712 := by
    unfold C
    simp [show (34012224 * k + 18135424) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9067712) = 8503056 * k + 4533856 := by
    unfold C
    simp [show (17006112 * k + 9067712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4533856) = 4251528 * k + 2266928 := by
    unfold C
    simp [show (8503056 * k + 4533856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2266928) = 2125764 * k + 1133464 := by
    unfold C
    simp [show (4251528 * k + 2266928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1133464) = 1062882 * k + 566732 := by
    unfold C
    simp [show (2125764 * k + 1133464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 566732) = 531441 * k + 283366 := by
    unfold C
    simp [show (1062882 * k + 566732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 559103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 559103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard071
