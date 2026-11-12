import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard069

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_532975 : ∀ k : Nat,
    iterate (1048576 * k + 532975) 32 = 531441 * k + 270124 ∧
      531441 * k + 270124 < 1048576 * k + 532975 := by
  intro k
  have h1 : C (1048576 * k + 532975) = 3145728 * k + 1598926 := by
    unfold C
    simp [show (1048576 * k + 532975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1598926) = 1572864 * k + 799463 := by
    unfold C
    simp [show (3145728 * k + 1598926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 799463) = 4718592 * k + 2398390 := by
    unfold C
    simp [show (1572864 * k + 799463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2398390) = 2359296 * k + 1199195 := by
    unfold C
    simp [show (4718592 * k + 2398390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1199195) = 7077888 * k + 3597586 := by
    unfold C
    simp [show (2359296 * k + 1199195) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3597586) = 3538944 * k + 1798793 := by
    unfold C
    simp [show (7077888 * k + 3597586) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1798793) = 10616832 * k + 5396380 := by
    unfold C
    simp [show (3538944 * k + 1798793) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5396380) = 5308416 * k + 2698190 := by
    unfold C
    simp [show (10616832 * k + 5396380) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2698190) = 2654208 * k + 1349095 := by
    unfold C
    simp [show (5308416 * k + 2698190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1349095) = 7962624 * k + 4047286 := by
    unfold C
    simp [show (2654208 * k + 1349095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4047286) = 3981312 * k + 2023643 := by
    unfold C
    simp [show (7962624 * k + 4047286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2023643) = 11943936 * k + 6070930 := by
    unfold C
    simp [show (3981312 * k + 2023643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6070930) = 5971968 * k + 3035465 := by
    unfold C
    simp [show (11943936 * k + 6070930) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3035465) = 17915904 * k + 9106396 := by
    unfold C
    simp [show (5971968 * k + 3035465) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9106396) = 8957952 * k + 4553198 := by
    unfold C
    simp [show (17915904 * k + 9106396) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4553198) = 4478976 * k + 2276599 := by
    unfold C
    simp [show (8957952 * k + 4553198) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2276599) = 13436928 * k + 6829798 := by
    unfold C
    simp [show (4478976 * k + 2276599) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6829798) = 6718464 * k + 3414899 := by
    unfold C
    simp [show (13436928 * k + 6829798) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3414899) = 20155392 * k + 10244698 := by
    unfold C
    simp [show (6718464 * k + 3414899) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10244698) = 10077696 * k + 5122349 := by
    unfold C
    simp [show (20155392 * k + 10244698) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5122349) = 30233088 * k + 15367048 := by
    unfold C
    simp [show (10077696 * k + 5122349) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15367048) = 15116544 * k + 7683524 := by
    unfold C
    simp [show (30233088 * k + 15367048) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7683524) = 7558272 * k + 3841762 := by
    unfold C
    simp [show (15116544 * k + 7683524) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3841762) = 3779136 * k + 1920881 := by
    unfold C
    simp [show (7558272 * k + 3841762) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1920881) = 11337408 * k + 5762644 := by
    unfold C
    simp [show (3779136 * k + 1920881) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5762644) = 5668704 * k + 2881322 := by
    unfold C
    simp [show (11337408 * k + 5762644) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2881322) = 2834352 * k + 1440661 := by
    unfold C
    simp [show (5668704 * k + 2881322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1440661) = 8503056 * k + 4321984 := by
    unfold C
    simp [show (2834352 * k + 1440661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4321984) = 4251528 * k + 2160992 := by
    unfold C
    simp [show (8503056 * k + 4321984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2160992) = 2125764 * k + 1080496 := by
    unfold C
    simp [show (4251528 * k + 2160992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1080496) = 1062882 * k + 540248 := by
    unfold C
    simp [show (2125764 * k + 1080496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 540248) = 531441 * k + 270124 := by
    unfold C
    simp [show (1062882 * k + 540248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 532975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 532975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_533439 : ∀ k : Nat,
    iterate (1048576 * k + 533439) 32 = 531441 * k + 270359 ∧
      531441 * k + 270359 < 1048576 * k + 533439 := by
  intro k
  have h1 : C (1048576 * k + 533439) = 3145728 * k + 1600318 := by
    unfold C
    simp [show (1048576 * k + 533439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1600318) = 1572864 * k + 800159 := by
    unfold C
    simp [show (3145728 * k + 1600318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 800159) = 4718592 * k + 2400478 := by
    unfold C
    simp [show (1572864 * k + 800159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2400478) = 2359296 * k + 1200239 := by
    unfold C
    simp [show (4718592 * k + 2400478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1200239) = 7077888 * k + 3600718 := by
    unfold C
    simp [show (2359296 * k + 1200239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3600718) = 3538944 * k + 1800359 := by
    unfold C
    simp [show (7077888 * k + 3600718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1800359) = 10616832 * k + 5401078 := by
    unfold C
    simp [show (3538944 * k + 1800359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5401078) = 5308416 * k + 2700539 := by
    unfold C
    simp [show (10616832 * k + 5401078) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2700539) = 15925248 * k + 8101618 := by
    unfold C
    simp [show (5308416 * k + 2700539) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8101618) = 7962624 * k + 4050809 := by
    unfold C
    simp [show (15925248 * k + 8101618) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4050809) = 23887872 * k + 12152428 := by
    unfold C
    simp [show (7962624 * k + 4050809) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12152428) = 11943936 * k + 6076214 := by
    unfold C
    simp [show (23887872 * k + 12152428) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6076214) = 5971968 * k + 3038107 := by
    unfold C
    simp [show (11943936 * k + 6076214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3038107) = 17915904 * k + 9114322 := by
    unfold C
    simp [show (5971968 * k + 3038107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9114322) = 8957952 * k + 4557161 := by
    unfold C
    simp [show (17915904 * k + 9114322) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4557161) = 26873856 * k + 13671484 := by
    unfold C
    simp [show (8957952 * k + 4557161) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13671484) = 13436928 * k + 6835742 := by
    unfold C
    simp [show (26873856 * k + 13671484) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6835742) = 6718464 * k + 3417871 := by
    unfold C
    simp [show (13436928 * k + 6835742) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3417871) = 20155392 * k + 10253614 := by
    unfold C
    simp [show (6718464 * k + 3417871) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10253614) = 10077696 * k + 5126807 := by
    unfold C
    simp [show (20155392 * k + 10253614) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5126807) = 30233088 * k + 15380422 := by
    unfold C
    simp [show (10077696 * k + 5126807) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15380422) = 15116544 * k + 7690211 := by
    unfold C
    simp [show (30233088 * k + 15380422) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7690211) = 45349632 * k + 23070634 := by
    unfold C
    simp [show (15116544 * k + 7690211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 23070634) = 22674816 * k + 11535317 := by
    unfold C
    simp [show (45349632 * k + 23070634) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11535317) = 68024448 * k + 34605952 := by
    unfold C
    simp [show (22674816 * k + 11535317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 34605952) = 34012224 * k + 17302976 := by
    unfold C
    simp [show (68024448 * k + 34605952) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 17302976) = 17006112 * k + 8651488 := by
    unfold C
    simp [show (34012224 * k + 17302976) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8651488) = 8503056 * k + 4325744 := by
    unfold C
    simp [show (17006112 * k + 8651488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4325744) = 4251528 * k + 2162872 := by
    unfold C
    simp [show (8503056 * k + 4325744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2162872) = 2125764 * k + 1081436 := by
    unfold C
    simp [show (4251528 * k + 2162872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1081436) = 1062882 * k + 540718 := by
    unfold C
    simp [show (2125764 * k + 1081436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 540718) = 531441 * k + 270359 := by
    unfold C
    simp [show (1062882 * k + 540718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 533439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 533439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_533823 : ∀ k : Nat,
    iterate (1048576 * k + 533823) 32 = 531441 * k + 270554 ∧
      531441 * k + 270554 < 1048576 * k + 533823 := by
  intro k
  have h1 : C (1048576 * k + 533823) = 3145728 * k + 1601470 := by
    unfold C
    simp [show (1048576 * k + 533823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1601470) = 1572864 * k + 800735 := by
    unfold C
    simp [show (3145728 * k + 1601470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 800735) = 4718592 * k + 2402206 := by
    unfold C
    simp [show (1572864 * k + 800735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2402206) = 2359296 * k + 1201103 := by
    unfold C
    simp [show (4718592 * k + 2402206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1201103) = 7077888 * k + 3603310 := by
    unfold C
    simp [show (2359296 * k + 1201103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3603310) = 3538944 * k + 1801655 := by
    unfold C
    simp [show (7077888 * k + 3603310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1801655) = 10616832 * k + 5404966 := by
    unfold C
    simp [show (3538944 * k + 1801655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5404966) = 5308416 * k + 2702483 := by
    unfold C
    simp [show (10616832 * k + 5404966) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2702483) = 15925248 * k + 8107450 := by
    unfold C
    simp [show (5308416 * k + 2702483) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8107450) = 7962624 * k + 4053725 := by
    unfold C
    simp [show (15925248 * k + 8107450) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4053725) = 23887872 * k + 12161176 := by
    unfold C
    simp [show (7962624 * k + 4053725) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12161176) = 11943936 * k + 6080588 := by
    unfold C
    simp [show (23887872 * k + 12161176) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6080588) = 5971968 * k + 3040294 := by
    unfold C
    simp [show (11943936 * k + 6080588) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3040294) = 2985984 * k + 1520147 := by
    unfold C
    simp [show (5971968 * k + 3040294) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1520147) = 8957952 * k + 4560442 := by
    unfold C
    simp [show (2985984 * k + 1520147) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4560442) = 4478976 * k + 2280221 := by
    unfold C
    simp [show (8957952 * k + 4560442) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2280221) = 13436928 * k + 6840664 := by
    unfold C
    simp [show (4478976 * k + 2280221) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6840664) = 6718464 * k + 3420332 := by
    unfold C
    simp [show (13436928 * k + 6840664) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3420332) = 3359232 * k + 1710166 := by
    unfold C
    simp [show (6718464 * k + 3420332) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1710166) = 1679616 * k + 855083 := by
    unfold C
    simp [show (3359232 * k + 1710166) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 855083) = 5038848 * k + 2565250 := by
    unfold C
    simp [show (1679616 * k + 855083) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2565250) = 2519424 * k + 1282625 := by
    unfold C
    simp [show (5038848 * k + 2565250) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1282625) = 7558272 * k + 3847876 := by
    unfold C
    simp [show (2519424 * k + 1282625) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3847876) = 3779136 * k + 1923938 := by
    unfold C
    simp [show (7558272 * k + 3847876) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1923938) = 1889568 * k + 961969 := by
    unfold C
    simp [show (3779136 * k + 1923938) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 961969) = 5668704 * k + 2885908 := by
    unfold C
    simp [show (1889568 * k + 961969) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2885908) = 2834352 * k + 1442954 := by
    unfold C
    simp [show (5668704 * k + 2885908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1442954) = 1417176 * k + 721477 := by
    unfold C
    simp [show (2834352 * k + 1442954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 721477) = 4251528 * k + 2164432 := by
    unfold C
    simp [show (1417176 * k + 721477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2164432) = 2125764 * k + 1082216 := by
    unfold C
    simp [show (4251528 * k + 2164432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1082216) = 1062882 * k + 541108 := by
    unfold C
    simp [show (2125764 * k + 1082216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 541108) = 531441 * k + 270554 := by
    unfold C
    simp [show (1062882 * k + 541108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 533823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 533823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_533983 : ∀ k : Nat,
    iterate (1048576 * k + 533983) 32 = 531441 * k + 270635 ∧
      531441 * k + 270635 < 1048576 * k + 533983 := by
  intro k
  have h1 : C (1048576 * k + 533983) = 3145728 * k + 1601950 := by
    unfold C
    simp [show (1048576 * k + 533983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1601950) = 1572864 * k + 800975 := by
    unfold C
    simp [show (3145728 * k + 1601950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 800975) = 4718592 * k + 2402926 := by
    unfold C
    simp [show (1572864 * k + 800975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2402926) = 2359296 * k + 1201463 := by
    unfold C
    simp [show (4718592 * k + 2402926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1201463) = 7077888 * k + 3604390 := by
    unfold C
    simp [show (2359296 * k + 1201463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3604390) = 3538944 * k + 1802195 := by
    unfold C
    simp [show (7077888 * k + 3604390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1802195) = 10616832 * k + 5406586 := by
    unfold C
    simp [show (3538944 * k + 1802195) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5406586) = 5308416 * k + 2703293 := by
    unfold C
    simp [show (10616832 * k + 5406586) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2703293) = 15925248 * k + 8109880 := by
    unfold C
    simp [show (5308416 * k + 2703293) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8109880) = 7962624 * k + 4054940 := by
    unfold C
    simp [show (15925248 * k + 8109880) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4054940) = 3981312 * k + 2027470 := by
    unfold C
    simp [show (7962624 * k + 4054940) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2027470) = 1990656 * k + 1013735 := by
    unfold C
    simp [show (3981312 * k + 2027470) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1013735) = 5971968 * k + 3041206 := by
    unfold C
    simp [show (1990656 * k + 1013735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3041206) = 2985984 * k + 1520603 := by
    unfold C
    simp [show (5971968 * k + 3041206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1520603) = 8957952 * k + 4561810 := by
    unfold C
    simp [show (2985984 * k + 1520603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4561810) = 4478976 * k + 2280905 := by
    unfold C
    simp [show (8957952 * k + 4561810) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2280905) = 13436928 * k + 6842716 := by
    unfold C
    simp [show (4478976 * k + 2280905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6842716) = 6718464 * k + 3421358 := by
    unfold C
    simp [show (13436928 * k + 6842716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3421358) = 3359232 * k + 1710679 := by
    unfold C
    simp [show (6718464 * k + 3421358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1710679) = 10077696 * k + 5132038 := by
    unfold C
    simp [show (3359232 * k + 1710679) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5132038) = 5038848 * k + 2566019 := by
    unfold C
    simp [show (10077696 * k + 5132038) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2566019) = 15116544 * k + 7698058 := by
    unfold C
    simp [show (5038848 * k + 2566019) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7698058) = 7558272 * k + 3849029 := by
    unfold C
    simp [show (15116544 * k + 7698058) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3849029) = 22674816 * k + 11547088 := by
    unfold C
    simp [show (7558272 * k + 3849029) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11547088) = 11337408 * k + 5773544 := by
    unfold C
    simp [show (22674816 * k + 11547088) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5773544) = 5668704 * k + 2886772 := by
    unfold C
    simp [show (11337408 * k + 5773544) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2886772) = 2834352 * k + 1443386 := by
    unfold C
    simp [show (5668704 * k + 2886772) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1443386) = 1417176 * k + 721693 := by
    unfold C
    simp [show (2834352 * k + 1443386) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 721693) = 4251528 * k + 2165080 := by
    unfold C
    simp [show (1417176 * k + 721693) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2165080) = 2125764 * k + 1082540 := by
    unfold C
    simp [show (4251528 * k + 2165080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1082540) = 1062882 * k + 541270 := by
    unfold C
    simp [show (2125764 * k + 1082540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 541270) = 531441 * k + 270635 := by
    unfold C
    simp [show (1062882 * k + 541270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 533983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 533983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_534119 : ∀ k : Nat,
    iterate (1048576 * k + 534119) 32 = 531441 * k + 270704 ∧
      531441 * k + 270704 < 1048576 * k + 534119 := by
  intro k
  have h1 : C (1048576 * k + 534119) = 3145728 * k + 1602358 := by
    unfold C
    simp [show (1048576 * k + 534119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1602358) = 1572864 * k + 801179 := by
    unfold C
    simp [show (3145728 * k + 1602358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 801179) = 4718592 * k + 2403538 := by
    unfold C
    simp [show (1572864 * k + 801179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2403538) = 2359296 * k + 1201769 := by
    unfold C
    simp [show (4718592 * k + 2403538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1201769) = 7077888 * k + 3605308 := by
    unfold C
    simp [show (2359296 * k + 1201769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3605308) = 3538944 * k + 1802654 := by
    unfold C
    simp [show (7077888 * k + 3605308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1802654) = 1769472 * k + 901327 := by
    unfold C
    simp [show (3538944 * k + 1802654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 901327) = 5308416 * k + 2703982 := by
    unfold C
    simp [show (1769472 * k + 901327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2703982) = 2654208 * k + 1351991 := by
    unfold C
    simp [show (5308416 * k + 2703982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1351991) = 7962624 * k + 4055974 := by
    unfold C
    simp [show (2654208 * k + 1351991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4055974) = 3981312 * k + 2027987 := by
    unfold C
    simp [show (7962624 * k + 4055974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2027987) = 11943936 * k + 6083962 := by
    unfold C
    simp [show (3981312 * k + 2027987) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6083962) = 5971968 * k + 3041981 := by
    unfold C
    simp [show (11943936 * k + 6083962) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3041981) = 17915904 * k + 9125944 := by
    unfold C
    simp [show (5971968 * k + 3041981) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9125944) = 8957952 * k + 4562972 := by
    unfold C
    simp [show (17915904 * k + 9125944) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4562972) = 4478976 * k + 2281486 := by
    unfold C
    simp [show (8957952 * k + 4562972) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2281486) = 2239488 * k + 1140743 := by
    unfold C
    simp [show (4478976 * k + 2281486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1140743) = 6718464 * k + 3422230 := by
    unfold C
    simp [show (2239488 * k + 1140743) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3422230) = 3359232 * k + 1711115 := by
    unfold C
    simp [show (6718464 * k + 3422230) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1711115) = 10077696 * k + 5133346 := by
    unfold C
    simp [show (3359232 * k + 1711115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5133346) = 5038848 * k + 2566673 := by
    unfold C
    simp [show (10077696 * k + 5133346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2566673) = 15116544 * k + 7700020 := by
    unfold C
    simp [show (5038848 * k + 2566673) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7700020) = 7558272 * k + 3850010 := by
    unfold C
    simp [show (15116544 * k + 7700020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3850010) = 3779136 * k + 1925005 := by
    unfold C
    simp [show (7558272 * k + 3850010) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1925005) = 11337408 * k + 5775016 := by
    unfold C
    simp [show (3779136 * k + 1925005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5775016) = 5668704 * k + 2887508 := by
    unfold C
    simp [show (11337408 * k + 5775016) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2887508) = 2834352 * k + 1443754 := by
    unfold C
    simp [show (5668704 * k + 2887508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1443754) = 1417176 * k + 721877 := by
    unfold C
    simp [show (2834352 * k + 1443754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 721877) = 4251528 * k + 2165632 := by
    unfold C
    simp [show (1417176 * k + 721877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2165632) = 2125764 * k + 1082816 := by
    unfold C
    simp [show (4251528 * k + 2165632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1082816) = 1062882 * k + 541408 := by
    unfold C
    simp [show (2125764 * k + 1082816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 541408) = 531441 * k + 270704 := by
    unfold C
    simp [show (1062882 * k + 541408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 534119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 534119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_536047 : ∀ k : Nat,
    iterate (1048576 * k + 536047) 32 = 531441 * k + 271681 ∧
      531441 * k + 271681 < 1048576 * k + 536047 := by
  intro k
  have h1 : C (1048576 * k + 536047) = 3145728 * k + 1608142 := by
    unfold C
    simp [show (1048576 * k + 536047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1608142) = 1572864 * k + 804071 := by
    unfold C
    simp [show (3145728 * k + 1608142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 804071) = 4718592 * k + 2412214 := by
    unfold C
    simp [show (1572864 * k + 804071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2412214) = 2359296 * k + 1206107 := by
    unfold C
    simp [show (4718592 * k + 2412214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1206107) = 7077888 * k + 3618322 := by
    unfold C
    simp [show (2359296 * k + 1206107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3618322) = 3538944 * k + 1809161 := by
    unfold C
    simp [show (7077888 * k + 3618322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1809161) = 10616832 * k + 5427484 := by
    unfold C
    simp [show (3538944 * k + 1809161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5427484) = 5308416 * k + 2713742 := by
    unfold C
    simp [show (10616832 * k + 5427484) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2713742) = 2654208 * k + 1356871 := by
    unfold C
    simp [show (5308416 * k + 2713742) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1356871) = 7962624 * k + 4070614 := by
    unfold C
    simp [show (2654208 * k + 1356871) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4070614) = 3981312 * k + 2035307 := by
    unfold C
    simp [show (7962624 * k + 4070614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2035307) = 11943936 * k + 6105922 := by
    unfold C
    simp [show (3981312 * k + 2035307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6105922) = 5971968 * k + 3052961 := by
    unfold C
    simp [show (11943936 * k + 6105922) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3052961) = 17915904 * k + 9158884 := by
    unfold C
    simp [show (5971968 * k + 3052961) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9158884) = 8957952 * k + 4579442 := by
    unfold C
    simp [show (17915904 * k + 9158884) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4579442) = 4478976 * k + 2289721 := by
    unfold C
    simp [show (8957952 * k + 4579442) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2289721) = 13436928 * k + 6869164 := by
    unfold C
    simp [show (4478976 * k + 2289721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6869164) = 6718464 * k + 3434582 := by
    unfold C
    simp [show (13436928 * k + 6869164) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3434582) = 3359232 * k + 1717291 := by
    unfold C
    simp [show (6718464 * k + 3434582) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1717291) = 10077696 * k + 5151874 := by
    unfold C
    simp [show (3359232 * k + 1717291) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5151874) = 5038848 * k + 2575937 := by
    unfold C
    simp [show (10077696 * k + 5151874) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2575937) = 15116544 * k + 7727812 := by
    unfold C
    simp [show (5038848 * k + 2575937) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7727812) = 7558272 * k + 3863906 := by
    unfold C
    simp [show (15116544 * k + 7727812) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3863906) = 3779136 * k + 1931953 := by
    unfold C
    simp [show (7558272 * k + 3863906) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1931953) = 11337408 * k + 5795860 := by
    unfold C
    simp [show (3779136 * k + 1931953) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5795860) = 5668704 * k + 2897930 := by
    unfold C
    simp [show (11337408 * k + 5795860) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2897930) = 2834352 * k + 1448965 := by
    unfold C
    simp [show (5668704 * k + 2897930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1448965) = 8503056 * k + 4346896 := by
    unfold C
    simp [show (2834352 * k + 1448965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4346896) = 4251528 * k + 2173448 := by
    unfold C
    simp [show (8503056 * k + 4346896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2173448) = 2125764 * k + 1086724 := by
    unfold C
    simp [show (4251528 * k + 2173448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1086724) = 1062882 * k + 543362 := by
    unfold C
    simp [show (2125764 * k + 1086724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 543362) = 531441 * k + 271681 := by
    unfold C
    simp [show (1062882 * k + 543362) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 536047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 536047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_536479 : ∀ k : Nat,
    iterate (1048576 * k + 536479) 32 = 531441 * k + 271900 ∧
      531441 * k + 271900 < 1048576 * k + 536479 := by
  intro k
  have h1 : C (1048576 * k + 536479) = 3145728 * k + 1609438 := by
    unfold C
    simp [show (1048576 * k + 536479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1609438) = 1572864 * k + 804719 := by
    unfold C
    simp [show (3145728 * k + 1609438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 804719) = 4718592 * k + 2414158 := by
    unfold C
    simp [show (1572864 * k + 804719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2414158) = 2359296 * k + 1207079 := by
    unfold C
    simp [show (4718592 * k + 2414158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1207079) = 7077888 * k + 3621238 := by
    unfold C
    simp [show (2359296 * k + 1207079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3621238) = 3538944 * k + 1810619 := by
    unfold C
    simp [show (7077888 * k + 3621238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1810619) = 10616832 * k + 5431858 := by
    unfold C
    simp [show (3538944 * k + 1810619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5431858) = 5308416 * k + 2715929 := by
    unfold C
    simp [show (10616832 * k + 5431858) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2715929) = 15925248 * k + 8147788 := by
    unfold C
    simp [show (5308416 * k + 2715929) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8147788) = 7962624 * k + 4073894 := by
    unfold C
    simp [show (15925248 * k + 8147788) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4073894) = 3981312 * k + 2036947 := by
    unfold C
    simp [show (7962624 * k + 4073894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2036947) = 11943936 * k + 6110842 := by
    unfold C
    simp [show (3981312 * k + 2036947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6110842) = 5971968 * k + 3055421 := by
    unfold C
    simp [show (11943936 * k + 6110842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3055421) = 17915904 * k + 9166264 := by
    unfold C
    simp [show (5971968 * k + 3055421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9166264) = 8957952 * k + 4583132 := by
    unfold C
    simp [show (17915904 * k + 9166264) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4583132) = 4478976 * k + 2291566 := by
    unfold C
    simp [show (8957952 * k + 4583132) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2291566) = 2239488 * k + 1145783 := by
    unfold C
    simp [show (4478976 * k + 2291566) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1145783) = 6718464 * k + 3437350 := by
    unfold C
    simp [show (2239488 * k + 1145783) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3437350) = 3359232 * k + 1718675 := by
    unfold C
    simp [show (6718464 * k + 3437350) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1718675) = 10077696 * k + 5156026 := by
    unfold C
    simp [show (3359232 * k + 1718675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5156026) = 5038848 * k + 2578013 := by
    unfold C
    simp [show (10077696 * k + 5156026) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2578013) = 15116544 * k + 7734040 := by
    unfold C
    simp [show (5038848 * k + 2578013) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7734040) = 7558272 * k + 3867020 := by
    unfold C
    simp [show (15116544 * k + 7734040) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3867020) = 3779136 * k + 1933510 := by
    unfold C
    simp [show (7558272 * k + 3867020) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1933510) = 1889568 * k + 966755 := by
    unfold C
    simp [show (3779136 * k + 1933510) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 966755) = 5668704 * k + 2900266 := by
    unfold C
    simp [show (1889568 * k + 966755) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2900266) = 2834352 * k + 1450133 := by
    unfold C
    simp [show (5668704 * k + 2900266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1450133) = 8503056 * k + 4350400 := by
    unfold C
    simp [show (2834352 * k + 1450133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4350400) = 4251528 * k + 2175200 := by
    unfold C
    simp [show (8503056 * k + 4350400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2175200) = 2125764 * k + 1087600 := by
    unfold C
    simp [show (4251528 * k + 2175200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1087600) = 1062882 * k + 543800 := by
    unfold C
    simp [show (2125764 * k + 1087600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 543800) = 531441 * k + 271900 := by
    unfold C
    simp [show (1062882 * k + 543800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 536479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 536479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_536603 : ∀ k : Nat,
    iterate (1048576 * k + 536603) 32 = 531441 * k + 271963 ∧
      531441 * k + 271963 < 1048576 * k + 536603 := by
  intro k
  have h1 : C (1048576 * k + 536603) = 3145728 * k + 1609810 := by
    unfold C
    simp [show (1048576 * k + 536603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1609810) = 1572864 * k + 804905 := by
    unfold C
    simp [show (3145728 * k + 1609810) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 804905) = 4718592 * k + 2414716 := by
    unfold C
    simp [show (1572864 * k + 804905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2414716) = 2359296 * k + 1207358 := by
    unfold C
    simp [show (4718592 * k + 2414716) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1207358) = 1179648 * k + 603679 := by
    unfold C
    simp [show (2359296 * k + 1207358) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 603679) = 3538944 * k + 1811038 := by
    unfold C
    simp [show (1179648 * k + 603679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1811038) = 1769472 * k + 905519 := by
    unfold C
    simp [show (3538944 * k + 1811038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 905519) = 5308416 * k + 2716558 := by
    unfold C
    simp [show (1769472 * k + 905519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2716558) = 2654208 * k + 1358279 := by
    unfold C
    simp [show (5308416 * k + 2716558) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1358279) = 7962624 * k + 4074838 := by
    unfold C
    simp [show (2654208 * k + 1358279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4074838) = 3981312 * k + 2037419 := by
    unfold C
    simp [show (7962624 * k + 4074838) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2037419) = 11943936 * k + 6112258 := by
    unfold C
    simp [show (3981312 * k + 2037419) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6112258) = 5971968 * k + 3056129 := by
    unfold C
    simp [show (11943936 * k + 6112258) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3056129) = 17915904 * k + 9168388 := by
    unfold C
    simp [show (5971968 * k + 3056129) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9168388) = 8957952 * k + 4584194 := by
    unfold C
    simp [show (17915904 * k + 9168388) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4584194) = 4478976 * k + 2292097 := by
    unfold C
    simp [show (8957952 * k + 4584194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2292097) = 13436928 * k + 6876292 := by
    unfold C
    simp [show (4478976 * k + 2292097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6876292) = 6718464 * k + 3438146 := by
    unfold C
    simp [show (13436928 * k + 6876292) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3438146) = 3359232 * k + 1719073 := by
    unfold C
    simp [show (6718464 * k + 3438146) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1719073) = 10077696 * k + 5157220 := by
    unfold C
    simp [show (3359232 * k + 1719073) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5157220) = 5038848 * k + 2578610 := by
    unfold C
    simp [show (10077696 * k + 5157220) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2578610) = 2519424 * k + 1289305 := by
    unfold C
    simp [show (5038848 * k + 2578610) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1289305) = 7558272 * k + 3867916 := by
    unfold C
    simp [show (2519424 * k + 1289305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3867916) = 3779136 * k + 1933958 := by
    unfold C
    simp [show (7558272 * k + 3867916) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1933958) = 1889568 * k + 966979 := by
    unfold C
    simp [show (3779136 * k + 1933958) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 966979) = 5668704 * k + 2900938 := by
    unfold C
    simp [show (1889568 * k + 966979) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2900938) = 2834352 * k + 1450469 := by
    unfold C
    simp [show (5668704 * k + 2900938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1450469) = 8503056 * k + 4351408 := by
    unfold C
    simp [show (2834352 * k + 1450469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4351408) = 4251528 * k + 2175704 := by
    unfold C
    simp [show (8503056 * k + 4351408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2175704) = 2125764 * k + 1087852 := by
    unfold C
    simp [show (4251528 * k + 2175704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1087852) = 1062882 * k + 543926 := by
    unfold C
    simp [show (2125764 * k + 1087852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 543926) = 531441 * k + 271963 := by
    unfold C
    simp [show (1062882 * k + 543926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 536603) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 536603)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_537055 : ∀ k : Nat,
    iterate (1048576 * k + 537055) 32 = 531441 * k + 272192 ∧
      531441 * k + 272192 < 1048576 * k + 537055 := by
  intro k
  have h1 : C (1048576 * k + 537055) = 3145728 * k + 1611166 := by
    unfold C
    simp [show (1048576 * k + 537055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1611166) = 1572864 * k + 805583 := by
    unfold C
    simp [show (3145728 * k + 1611166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 805583) = 4718592 * k + 2416750 := by
    unfold C
    simp [show (1572864 * k + 805583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2416750) = 2359296 * k + 1208375 := by
    unfold C
    simp [show (4718592 * k + 2416750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1208375) = 7077888 * k + 3625126 := by
    unfold C
    simp [show (2359296 * k + 1208375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3625126) = 3538944 * k + 1812563 := by
    unfold C
    simp [show (7077888 * k + 3625126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1812563) = 10616832 * k + 5437690 := by
    unfold C
    simp [show (3538944 * k + 1812563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5437690) = 5308416 * k + 2718845 := by
    unfold C
    simp [show (10616832 * k + 5437690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2718845) = 15925248 * k + 8156536 := by
    unfold C
    simp [show (5308416 * k + 2718845) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8156536) = 7962624 * k + 4078268 := by
    unfold C
    simp [show (15925248 * k + 8156536) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4078268) = 3981312 * k + 2039134 := by
    unfold C
    simp [show (7962624 * k + 4078268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2039134) = 1990656 * k + 1019567 := by
    unfold C
    simp [show (3981312 * k + 2039134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1019567) = 5971968 * k + 3058702 := by
    unfold C
    simp [show (1990656 * k + 1019567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3058702) = 2985984 * k + 1529351 := by
    unfold C
    simp [show (5971968 * k + 3058702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1529351) = 8957952 * k + 4588054 := by
    unfold C
    simp [show (2985984 * k + 1529351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4588054) = 4478976 * k + 2294027 := by
    unfold C
    simp [show (8957952 * k + 4588054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2294027) = 13436928 * k + 6882082 := by
    unfold C
    simp [show (4478976 * k + 2294027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6882082) = 6718464 * k + 3441041 := by
    unfold C
    simp [show (13436928 * k + 6882082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3441041) = 20155392 * k + 10323124 := by
    unfold C
    simp [show (6718464 * k + 3441041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10323124) = 10077696 * k + 5161562 := by
    unfold C
    simp [show (20155392 * k + 10323124) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5161562) = 5038848 * k + 2580781 := by
    unfold C
    simp [show (10077696 * k + 5161562) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2580781) = 15116544 * k + 7742344 := by
    unfold C
    simp [show (5038848 * k + 2580781) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7742344) = 7558272 * k + 3871172 := by
    unfold C
    simp [show (15116544 * k + 7742344) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3871172) = 3779136 * k + 1935586 := by
    unfold C
    simp [show (7558272 * k + 3871172) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1935586) = 1889568 * k + 967793 := by
    unfold C
    simp [show (3779136 * k + 1935586) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 967793) = 5668704 * k + 2903380 := by
    unfold C
    simp [show (1889568 * k + 967793) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2903380) = 2834352 * k + 1451690 := by
    unfold C
    simp [show (5668704 * k + 2903380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1451690) = 1417176 * k + 725845 := by
    unfold C
    simp [show (2834352 * k + 1451690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 725845) = 4251528 * k + 2177536 := by
    unfold C
    simp [show (1417176 * k + 725845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2177536) = 2125764 * k + 1088768 := by
    unfold C
    simp [show (4251528 * k + 2177536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1088768) = 1062882 * k + 544384 := by
    unfold C
    simp [show (2125764 * k + 1088768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 544384) = 531441 * k + 272192 := by
    unfold C
    simp [show (1062882 * k + 544384) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 537055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 537055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_537179 : ∀ k : Nat,
    iterate (1048576 * k + 537179) 32 = 531441 * k + 272255 ∧
      531441 * k + 272255 < 1048576 * k + 537179 := by
  intro k
  have h1 : C (1048576 * k + 537179) = 3145728 * k + 1611538 := by
    unfold C
    simp [show (1048576 * k + 537179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1611538) = 1572864 * k + 805769 := by
    unfold C
    simp [show (3145728 * k + 1611538) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 805769) = 4718592 * k + 2417308 := by
    unfold C
    simp [show (1572864 * k + 805769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2417308) = 2359296 * k + 1208654 := by
    unfold C
    simp [show (4718592 * k + 2417308) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1208654) = 1179648 * k + 604327 := by
    unfold C
    simp [show (2359296 * k + 1208654) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 604327) = 3538944 * k + 1812982 := by
    unfold C
    simp [show (1179648 * k + 604327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1812982) = 1769472 * k + 906491 := by
    unfold C
    simp [show (3538944 * k + 1812982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 906491) = 5308416 * k + 2719474 := by
    unfold C
    simp [show (1769472 * k + 906491) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2719474) = 2654208 * k + 1359737 := by
    unfold C
    simp [show (5308416 * k + 2719474) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1359737) = 7962624 * k + 4079212 := by
    unfold C
    simp [show (2654208 * k + 1359737) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4079212) = 3981312 * k + 2039606 := by
    unfold C
    simp [show (7962624 * k + 4079212) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2039606) = 1990656 * k + 1019803 := by
    unfold C
    simp [show (3981312 * k + 2039606) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1019803) = 5971968 * k + 3059410 := by
    unfold C
    simp [show (1990656 * k + 1019803) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3059410) = 2985984 * k + 1529705 := by
    unfold C
    simp [show (5971968 * k + 3059410) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1529705) = 8957952 * k + 4589116 := by
    unfold C
    simp [show (2985984 * k + 1529705) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4589116) = 4478976 * k + 2294558 := by
    unfold C
    simp [show (8957952 * k + 4589116) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2294558) = 2239488 * k + 1147279 := by
    unfold C
    simp [show (4478976 * k + 2294558) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1147279) = 6718464 * k + 3441838 := by
    unfold C
    simp [show (2239488 * k + 1147279) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3441838) = 3359232 * k + 1720919 := by
    unfold C
    simp [show (6718464 * k + 3441838) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1720919) = 10077696 * k + 5162758 := by
    unfold C
    simp [show (3359232 * k + 1720919) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5162758) = 5038848 * k + 2581379 := by
    unfold C
    simp [show (10077696 * k + 5162758) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2581379) = 15116544 * k + 7744138 := by
    unfold C
    simp [show (5038848 * k + 2581379) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7744138) = 7558272 * k + 3872069 := by
    unfold C
    simp [show (15116544 * k + 7744138) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3872069) = 22674816 * k + 11616208 := by
    unfold C
    simp [show (7558272 * k + 3872069) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11616208) = 11337408 * k + 5808104 := by
    unfold C
    simp [show (22674816 * k + 11616208) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5808104) = 5668704 * k + 2904052 := by
    unfold C
    simp [show (11337408 * k + 5808104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2904052) = 2834352 * k + 1452026 := by
    unfold C
    simp [show (5668704 * k + 2904052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1452026) = 1417176 * k + 726013 := by
    unfold C
    simp [show (2834352 * k + 1452026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 726013) = 4251528 * k + 2178040 := by
    unfold C
    simp [show (1417176 * k + 726013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2178040) = 2125764 * k + 1089020 := by
    unfold C
    simp [show (4251528 * k + 2178040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1089020) = 1062882 * k + 544510 := by
    unfold C
    simp [show (2125764 * k + 1089020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 544510) = 531441 * k + 272255 := by
    unfold C
    simp [show (1062882 * k + 544510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 537179) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 537179)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_537535 : ∀ k : Nat,
    iterate (1048576 * k + 537535) 32 = 531441 * k + 272435 ∧
      531441 * k + 272435 < 1048576 * k + 537535 := by
  intro k
  have h1 : C (1048576 * k + 537535) = 3145728 * k + 1612606 := by
    unfold C
    simp [show (1048576 * k + 537535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1612606) = 1572864 * k + 806303 := by
    unfold C
    simp [show (3145728 * k + 1612606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 806303) = 4718592 * k + 2418910 := by
    unfold C
    simp [show (1572864 * k + 806303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2418910) = 2359296 * k + 1209455 := by
    unfold C
    simp [show (4718592 * k + 2418910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1209455) = 7077888 * k + 3628366 := by
    unfold C
    simp [show (2359296 * k + 1209455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3628366) = 3538944 * k + 1814183 := by
    unfold C
    simp [show (7077888 * k + 3628366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1814183) = 10616832 * k + 5442550 := by
    unfold C
    simp [show (3538944 * k + 1814183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5442550) = 5308416 * k + 2721275 := by
    unfold C
    simp [show (10616832 * k + 5442550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2721275) = 15925248 * k + 8163826 := by
    unfold C
    simp [show (5308416 * k + 2721275) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8163826) = 7962624 * k + 4081913 := by
    unfold C
    simp [show (15925248 * k + 8163826) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4081913) = 23887872 * k + 12245740 := by
    unfold C
    simp [show (7962624 * k + 4081913) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12245740) = 11943936 * k + 6122870 := by
    unfold C
    simp [show (23887872 * k + 12245740) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6122870) = 5971968 * k + 3061435 := by
    unfold C
    simp [show (11943936 * k + 6122870) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3061435) = 17915904 * k + 9184306 := by
    unfold C
    simp [show (5971968 * k + 3061435) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9184306) = 8957952 * k + 4592153 := by
    unfold C
    simp [show (17915904 * k + 9184306) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4592153) = 26873856 * k + 13776460 := by
    unfold C
    simp [show (8957952 * k + 4592153) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13776460) = 13436928 * k + 6888230 := by
    unfold C
    simp [show (26873856 * k + 13776460) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6888230) = 6718464 * k + 3444115 := by
    unfold C
    simp [show (13436928 * k + 6888230) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3444115) = 20155392 * k + 10332346 := by
    unfold C
    simp [show (6718464 * k + 3444115) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10332346) = 10077696 * k + 5166173 := by
    unfold C
    simp [show (20155392 * k + 10332346) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5166173) = 30233088 * k + 15498520 := by
    unfold C
    simp [show (10077696 * k + 5166173) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15498520) = 15116544 * k + 7749260 := by
    unfold C
    simp [show (30233088 * k + 15498520) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7749260) = 7558272 * k + 3874630 := by
    unfold C
    simp [show (15116544 * k + 7749260) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3874630) = 3779136 * k + 1937315 := by
    unfold C
    simp [show (7558272 * k + 3874630) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1937315) = 11337408 * k + 5811946 := by
    unfold C
    simp [show (3779136 * k + 1937315) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5811946) = 5668704 * k + 2905973 := by
    unfold C
    simp [show (11337408 * k + 5811946) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2905973) = 17006112 * k + 8717920 := by
    unfold C
    simp [show (5668704 * k + 2905973) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8717920) = 8503056 * k + 4358960 := by
    unfold C
    simp [show (17006112 * k + 8717920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4358960) = 4251528 * k + 2179480 := by
    unfold C
    simp [show (8503056 * k + 4358960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2179480) = 2125764 * k + 1089740 := by
    unfold C
    simp [show (4251528 * k + 2179480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1089740) = 1062882 * k + 544870 := by
    unfold C
    simp [show (2125764 * k + 1089740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 544870) = 531441 * k + 272435 := by
    unfold C
    simp [show (1062882 * k + 544870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 537535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 537535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_538079 : ∀ k : Nat,
    iterate (1048576 * k + 538079) 32 = 531441 * k + 272711 ∧
      531441 * k + 272711 < 1048576 * k + 538079 := by
  intro k
  have h1 : C (1048576 * k + 538079) = 3145728 * k + 1614238 := by
    unfold C
    simp [show (1048576 * k + 538079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1614238) = 1572864 * k + 807119 := by
    unfold C
    simp [show (3145728 * k + 1614238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 807119) = 4718592 * k + 2421358 := by
    unfold C
    simp [show (1572864 * k + 807119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2421358) = 2359296 * k + 1210679 := by
    unfold C
    simp [show (4718592 * k + 2421358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1210679) = 7077888 * k + 3632038 := by
    unfold C
    simp [show (2359296 * k + 1210679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3632038) = 3538944 * k + 1816019 := by
    unfold C
    simp [show (7077888 * k + 3632038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1816019) = 10616832 * k + 5448058 := by
    unfold C
    simp [show (3538944 * k + 1816019) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5448058) = 5308416 * k + 2724029 := by
    unfold C
    simp [show (10616832 * k + 5448058) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2724029) = 15925248 * k + 8172088 := by
    unfold C
    simp [show (5308416 * k + 2724029) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8172088) = 7962624 * k + 4086044 := by
    unfold C
    simp [show (15925248 * k + 8172088) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4086044) = 3981312 * k + 2043022 := by
    unfold C
    simp [show (7962624 * k + 4086044) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2043022) = 1990656 * k + 1021511 := by
    unfold C
    simp [show (3981312 * k + 2043022) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1021511) = 5971968 * k + 3064534 := by
    unfold C
    simp [show (1990656 * k + 1021511) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3064534) = 2985984 * k + 1532267 := by
    unfold C
    simp [show (5971968 * k + 3064534) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1532267) = 8957952 * k + 4596802 := by
    unfold C
    simp [show (2985984 * k + 1532267) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4596802) = 4478976 * k + 2298401 := by
    unfold C
    simp [show (8957952 * k + 4596802) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2298401) = 13436928 * k + 6895204 := by
    unfold C
    simp [show (4478976 * k + 2298401) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6895204) = 6718464 * k + 3447602 := by
    unfold C
    simp [show (13436928 * k + 6895204) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3447602) = 3359232 * k + 1723801 := by
    unfold C
    simp [show (6718464 * k + 3447602) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1723801) = 10077696 * k + 5171404 := by
    unfold C
    simp [show (3359232 * k + 1723801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5171404) = 5038848 * k + 2585702 := by
    unfold C
    simp [show (10077696 * k + 5171404) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2585702) = 2519424 * k + 1292851 := by
    unfold C
    simp [show (5038848 * k + 2585702) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1292851) = 7558272 * k + 3878554 := by
    unfold C
    simp [show (2519424 * k + 1292851) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3878554) = 3779136 * k + 1939277 := by
    unfold C
    simp [show (7558272 * k + 3878554) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1939277) = 11337408 * k + 5817832 := by
    unfold C
    simp [show (3779136 * k + 1939277) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5817832) = 5668704 * k + 2908916 := by
    unfold C
    simp [show (11337408 * k + 5817832) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2908916) = 2834352 * k + 1454458 := by
    unfold C
    simp [show (5668704 * k + 2908916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1454458) = 1417176 * k + 727229 := by
    unfold C
    simp [show (2834352 * k + 1454458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 727229) = 4251528 * k + 2181688 := by
    unfold C
    simp [show (1417176 * k + 727229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2181688) = 2125764 * k + 1090844 := by
    unfold C
    simp [show (4251528 * k + 2181688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1090844) = 1062882 * k + 545422 := by
    unfold C
    simp [show (2125764 * k + 1090844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 545422) = 531441 * k + 272711 := by
    unfold C
    simp [show (1062882 * k + 545422) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 538079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 538079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_539239 : ∀ k : Nat,
    iterate (1048576 * k + 539239) 32 = 531441 * k + 273299 ∧
      531441 * k + 273299 < 1048576 * k + 539239 := by
  intro k
  have h1 : C (1048576 * k + 539239) = 3145728 * k + 1617718 := by
    unfold C
    simp [show (1048576 * k + 539239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1617718) = 1572864 * k + 808859 := by
    unfold C
    simp [show (3145728 * k + 1617718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 808859) = 4718592 * k + 2426578 := by
    unfold C
    simp [show (1572864 * k + 808859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2426578) = 2359296 * k + 1213289 := by
    unfold C
    simp [show (4718592 * k + 2426578) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1213289) = 7077888 * k + 3639868 := by
    unfold C
    simp [show (2359296 * k + 1213289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3639868) = 3538944 * k + 1819934 := by
    unfold C
    simp [show (7077888 * k + 3639868) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1819934) = 1769472 * k + 909967 := by
    unfold C
    simp [show (3538944 * k + 1819934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 909967) = 5308416 * k + 2729902 := by
    unfold C
    simp [show (1769472 * k + 909967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2729902) = 2654208 * k + 1364951 := by
    unfold C
    simp [show (5308416 * k + 2729902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1364951) = 7962624 * k + 4094854 := by
    unfold C
    simp [show (2654208 * k + 1364951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4094854) = 3981312 * k + 2047427 := by
    unfold C
    simp [show (7962624 * k + 4094854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2047427) = 11943936 * k + 6142282 := by
    unfold C
    simp [show (3981312 * k + 2047427) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6142282) = 5971968 * k + 3071141 := by
    unfold C
    simp [show (11943936 * k + 6142282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3071141) = 17915904 * k + 9213424 := by
    unfold C
    simp [show (5971968 * k + 3071141) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9213424) = 8957952 * k + 4606712 := by
    unfold C
    simp [show (17915904 * k + 9213424) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4606712) = 4478976 * k + 2303356 := by
    unfold C
    simp [show (8957952 * k + 4606712) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2303356) = 2239488 * k + 1151678 := by
    unfold C
    simp [show (4478976 * k + 2303356) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1151678) = 1119744 * k + 575839 := by
    unfold C
    simp [show (2239488 * k + 1151678) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 575839) = 3359232 * k + 1727518 := by
    unfold C
    simp [show (1119744 * k + 575839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1727518) = 1679616 * k + 863759 := by
    unfold C
    simp [show (3359232 * k + 1727518) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 863759) = 5038848 * k + 2591278 := by
    unfold C
    simp [show (1679616 * k + 863759) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2591278) = 2519424 * k + 1295639 := by
    unfold C
    simp [show (5038848 * k + 2591278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1295639) = 7558272 * k + 3886918 := by
    unfold C
    simp [show (2519424 * k + 1295639) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3886918) = 3779136 * k + 1943459 := by
    unfold C
    simp [show (7558272 * k + 3886918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1943459) = 11337408 * k + 5830378 := by
    unfold C
    simp [show (3779136 * k + 1943459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5830378) = 5668704 * k + 2915189 := by
    unfold C
    simp [show (11337408 * k + 5830378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2915189) = 17006112 * k + 8745568 := by
    unfold C
    simp [show (5668704 * k + 2915189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8745568) = 8503056 * k + 4372784 := by
    unfold C
    simp [show (17006112 * k + 8745568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4372784) = 4251528 * k + 2186392 := by
    unfold C
    simp [show (8503056 * k + 4372784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2186392) = 2125764 * k + 1093196 := by
    unfold C
    simp [show (4251528 * k + 2186392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1093196) = 1062882 * k + 546598 := by
    unfold C
    simp [show (2125764 * k + 1093196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 546598) = 531441 * k + 273299 := by
    unfold C
    simp [show (1062882 * k + 546598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 539239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 539239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_539675 : ∀ k : Nat,
    iterate (1048576 * k + 539675) 32 = 531441 * k + 273520 ∧
      531441 * k + 273520 < 1048576 * k + 539675 := by
  intro k
  have h1 : C (1048576 * k + 539675) = 3145728 * k + 1619026 := by
    unfold C
    simp [show (1048576 * k + 539675) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1619026) = 1572864 * k + 809513 := by
    unfold C
    simp [show (3145728 * k + 1619026) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 809513) = 4718592 * k + 2428540 := by
    unfold C
    simp [show (1572864 * k + 809513) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2428540) = 2359296 * k + 1214270 := by
    unfold C
    simp [show (4718592 * k + 2428540) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1214270) = 1179648 * k + 607135 := by
    unfold C
    simp [show (2359296 * k + 1214270) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 607135) = 3538944 * k + 1821406 := by
    unfold C
    simp [show (1179648 * k + 607135) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1821406) = 1769472 * k + 910703 := by
    unfold C
    simp [show (3538944 * k + 1821406) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 910703) = 5308416 * k + 2732110 := by
    unfold C
    simp [show (1769472 * k + 910703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2732110) = 2654208 * k + 1366055 := by
    unfold C
    simp [show (5308416 * k + 2732110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1366055) = 7962624 * k + 4098166 := by
    unfold C
    simp [show (2654208 * k + 1366055) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4098166) = 3981312 * k + 2049083 := by
    unfold C
    simp [show (7962624 * k + 4098166) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2049083) = 11943936 * k + 6147250 := by
    unfold C
    simp [show (3981312 * k + 2049083) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6147250) = 5971968 * k + 3073625 := by
    unfold C
    simp [show (11943936 * k + 6147250) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3073625) = 17915904 * k + 9220876 := by
    unfold C
    simp [show (5971968 * k + 3073625) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9220876) = 8957952 * k + 4610438 := by
    unfold C
    simp [show (17915904 * k + 9220876) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4610438) = 4478976 * k + 2305219 := by
    unfold C
    simp [show (8957952 * k + 4610438) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2305219) = 13436928 * k + 6915658 := by
    unfold C
    simp [show (4478976 * k + 2305219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6915658) = 6718464 * k + 3457829 := by
    unfold C
    simp [show (13436928 * k + 6915658) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3457829) = 20155392 * k + 10373488 := by
    unfold C
    simp [show (6718464 * k + 3457829) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10373488) = 10077696 * k + 5186744 := by
    unfold C
    simp [show (20155392 * k + 10373488) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5186744) = 5038848 * k + 2593372 := by
    unfold C
    simp [show (10077696 * k + 5186744) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2593372) = 2519424 * k + 1296686 := by
    unfold C
    simp [show (5038848 * k + 2593372) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1296686) = 1259712 * k + 648343 := by
    unfold C
    simp [show (2519424 * k + 1296686) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 648343) = 3779136 * k + 1945030 := by
    unfold C
    simp [show (1259712 * k + 648343) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1945030) = 1889568 * k + 972515 := by
    unfold C
    simp [show (3779136 * k + 1945030) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 972515) = 5668704 * k + 2917546 := by
    unfold C
    simp [show (1889568 * k + 972515) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2917546) = 2834352 * k + 1458773 := by
    unfold C
    simp [show (5668704 * k + 2917546) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1458773) = 8503056 * k + 4376320 := by
    unfold C
    simp [show (2834352 * k + 1458773) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4376320) = 4251528 * k + 2188160 := by
    unfold C
    simp [show (8503056 * k + 4376320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2188160) = 2125764 * k + 1094080 := by
    unfold C
    simp [show (4251528 * k + 2188160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1094080) = 1062882 * k + 547040 := by
    unfold C
    simp [show (2125764 * k + 1094080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 547040) = 531441 * k + 273520 := by
    unfold C
    simp [show (1062882 * k + 547040) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 539675) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 539675)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_540007 : ∀ k : Nat,
    iterate (1048576 * k + 540007) 32 = 531441 * k + 273688 ∧
      531441 * k + 273688 < 1048576 * k + 540007 := by
  intro k
  have h1 : C (1048576 * k + 540007) = 3145728 * k + 1620022 := by
    unfold C
    simp [show (1048576 * k + 540007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1620022) = 1572864 * k + 810011 := by
    unfold C
    simp [show (3145728 * k + 1620022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 810011) = 4718592 * k + 2430034 := by
    unfold C
    simp [show (1572864 * k + 810011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2430034) = 2359296 * k + 1215017 := by
    unfold C
    simp [show (4718592 * k + 2430034) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1215017) = 7077888 * k + 3645052 := by
    unfold C
    simp [show (2359296 * k + 1215017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3645052) = 3538944 * k + 1822526 := by
    unfold C
    simp [show (7077888 * k + 3645052) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1822526) = 1769472 * k + 911263 := by
    unfold C
    simp [show (3538944 * k + 1822526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 911263) = 5308416 * k + 2733790 := by
    unfold C
    simp [show (1769472 * k + 911263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2733790) = 2654208 * k + 1366895 := by
    unfold C
    simp [show (5308416 * k + 2733790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1366895) = 7962624 * k + 4100686 := by
    unfold C
    simp [show (2654208 * k + 1366895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4100686) = 3981312 * k + 2050343 := by
    unfold C
    simp [show (7962624 * k + 4100686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2050343) = 11943936 * k + 6151030 := by
    unfold C
    simp [show (3981312 * k + 2050343) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6151030) = 5971968 * k + 3075515 := by
    unfold C
    simp [show (11943936 * k + 6151030) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3075515) = 17915904 * k + 9226546 := by
    unfold C
    simp [show (5971968 * k + 3075515) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9226546) = 8957952 * k + 4613273 := by
    unfold C
    simp [show (17915904 * k + 9226546) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4613273) = 26873856 * k + 13839820 := by
    unfold C
    simp [show (8957952 * k + 4613273) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13839820) = 13436928 * k + 6919910 := by
    unfold C
    simp [show (26873856 * k + 13839820) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6919910) = 6718464 * k + 3459955 := by
    unfold C
    simp [show (13436928 * k + 6919910) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3459955) = 20155392 * k + 10379866 := by
    unfold C
    simp [show (6718464 * k + 3459955) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10379866) = 10077696 * k + 5189933 := by
    unfold C
    simp [show (20155392 * k + 10379866) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5189933) = 30233088 * k + 15569800 := by
    unfold C
    simp [show (10077696 * k + 5189933) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15569800) = 15116544 * k + 7784900 := by
    unfold C
    simp [show (30233088 * k + 15569800) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7784900) = 7558272 * k + 3892450 := by
    unfold C
    simp [show (15116544 * k + 7784900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3892450) = 3779136 * k + 1946225 := by
    unfold C
    simp [show (7558272 * k + 3892450) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1946225) = 11337408 * k + 5838676 := by
    unfold C
    simp [show (3779136 * k + 1946225) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5838676) = 5668704 * k + 2919338 := by
    unfold C
    simp [show (11337408 * k + 5838676) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2919338) = 2834352 * k + 1459669 := by
    unfold C
    simp [show (5668704 * k + 2919338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1459669) = 8503056 * k + 4379008 := by
    unfold C
    simp [show (2834352 * k + 1459669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4379008) = 4251528 * k + 2189504 := by
    unfold C
    simp [show (8503056 * k + 4379008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2189504) = 2125764 * k + 1094752 := by
    unfold C
    simp [show (4251528 * k + 2189504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1094752) = 1062882 * k + 547376 := by
    unfold C
    simp [show (2125764 * k + 1094752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 547376) = 531441 * k + 273688 := by
    unfold C
    simp [show (1062882 * k + 547376) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 540007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 540007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_540263 : ∀ k : Nat,
    iterate (1048576 * k + 540263) 32 = 531441 * k + 273818 ∧
      531441 * k + 273818 < 1048576 * k + 540263 := by
  intro k
  have h1 : C (1048576 * k + 540263) = 3145728 * k + 1620790 := by
    unfold C
    simp [show (1048576 * k + 540263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1620790) = 1572864 * k + 810395 := by
    unfold C
    simp [show (3145728 * k + 1620790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 810395) = 4718592 * k + 2431186 := by
    unfold C
    simp [show (1572864 * k + 810395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2431186) = 2359296 * k + 1215593 := by
    unfold C
    simp [show (4718592 * k + 2431186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1215593) = 7077888 * k + 3646780 := by
    unfold C
    simp [show (2359296 * k + 1215593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3646780) = 3538944 * k + 1823390 := by
    unfold C
    simp [show (7077888 * k + 3646780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1823390) = 1769472 * k + 911695 := by
    unfold C
    simp [show (3538944 * k + 1823390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 911695) = 5308416 * k + 2735086 := by
    unfold C
    simp [show (1769472 * k + 911695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2735086) = 2654208 * k + 1367543 := by
    unfold C
    simp [show (5308416 * k + 2735086) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1367543) = 7962624 * k + 4102630 := by
    unfold C
    simp [show (2654208 * k + 1367543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4102630) = 3981312 * k + 2051315 := by
    unfold C
    simp [show (7962624 * k + 4102630) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2051315) = 11943936 * k + 6153946 := by
    unfold C
    simp [show (3981312 * k + 2051315) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6153946) = 5971968 * k + 3076973 := by
    unfold C
    simp [show (11943936 * k + 6153946) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3076973) = 17915904 * k + 9230920 := by
    unfold C
    simp [show (5971968 * k + 3076973) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9230920) = 8957952 * k + 4615460 := by
    unfold C
    simp [show (17915904 * k + 9230920) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4615460) = 4478976 * k + 2307730 := by
    unfold C
    simp [show (8957952 * k + 4615460) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2307730) = 2239488 * k + 1153865 := by
    unfold C
    simp [show (4478976 * k + 2307730) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1153865) = 6718464 * k + 3461596 := by
    unfold C
    simp [show (2239488 * k + 1153865) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3461596) = 3359232 * k + 1730798 := by
    unfold C
    simp [show (6718464 * k + 3461596) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1730798) = 1679616 * k + 865399 := by
    unfold C
    simp [show (3359232 * k + 1730798) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 865399) = 5038848 * k + 2596198 := by
    unfold C
    simp [show (1679616 * k + 865399) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2596198) = 2519424 * k + 1298099 := by
    unfold C
    simp [show (5038848 * k + 2596198) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1298099) = 7558272 * k + 3894298 := by
    unfold C
    simp [show (2519424 * k + 1298099) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3894298) = 3779136 * k + 1947149 := by
    unfold C
    simp [show (7558272 * k + 3894298) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1947149) = 11337408 * k + 5841448 := by
    unfold C
    simp [show (3779136 * k + 1947149) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5841448) = 5668704 * k + 2920724 := by
    unfold C
    simp [show (11337408 * k + 5841448) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2920724) = 2834352 * k + 1460362 := by
    unfold C
    simp [show (5668704 * k + 2920724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1460362) = 1417176 * k + 730181 := by
    unfold C
    simp [show (2834352 * k + 1460362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 730181) = 4251528 * k + 2190544 := by
    unfold C
    simp [show (1417176 * k + 730181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2190544) = 2125764 * k + 1095272 := by
    unfold C
    simp [show (4251528 * k + 2190544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1095272) = 1062882 * k + 547636 := by
    unfold C
    simp [show (2125764 * k + 1095272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 547636) = 531441 * k + 273818 := by
    unfold C
    simp [show (1062882 * k + 547636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 540263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 540263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_540607 : ∀ k : Nat,
    iterate (1048576 * k + 540607) 32 = 531441 * k + 273992 ∧
      531441 * k + 273992 < 1048576 * k + 540607 := by
  intro k
  have h1 : C (1048576 * k + 540607) = 3145728 * k + 1621822 := by
    unfold C
    simp [show (1048576 * k + 540607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1621822) = 1572864 * k + 810911 := by
    unfold C
    simp [show (3145728 * k + 1621822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 810911) = 4718592 * k + 2432734 := by
    unfold C
    simp [show (1572864 * k + 810911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2432734) = 2359296 * k + 1216367 := by
    unfold C
    simp [show (4718592 * k + 2432734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1216367) = 7077888 * k + 3649102 := by
    unfold C
    simp [show (2359296 * k + 1216367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3649102) = 3538944 * k + 1824551 := by
    unfold C
    simp [show (7077888 * k + 3649102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1824551) = 10616832 * k + 5473654 := by
    unfold C
    simp [show (3538944 * k + 1824551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5473654) = 5308416 * k + 2736827 := by
    unfold C
    simp [show (10616832 * k + 5473654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2736827) = 15925248 * k + 8210482 := by
    unfold C
    simp [show (5308416 * k + 2736827) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8210482) = 7962624 * k + 4105241 := by
    unfold C
    simp [show (15925248 * k + 8210482) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4105241) = 23887872 * k + 12315724 := by
    unfold C
    simp [show (7962624 * k + 4105241) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12315724) = 11943936 * k + 6157862 := by
    unfold C
    simp [show (23887872 * k + 12315724) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6157862) = 5971968 * k + 3078931 := by
    unfold C
    simp [show (11943936 * k + 6157862) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3078931) = 17915904 * k + 9236794 := by
    unfold C
    simp [show (5971968 * k + 3078931) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9236794) = 8957952 * k + 4618397 := by
    unfold C
    simp [show (17915904 * k + 9236794) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4618397) = 26873856 * k + 13855192 := by
    unfold C
    simp [show (8957952 * k + 4618397) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13855192) = 13436928 * k + 6927596 := by
    unfold C
    simp [show (26873856 * k + 13855192) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6927596) = 6718464 * k + 3463798 := by
    unfold C
    simp [show (13436928 * k + 6927596) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3463798) = 3359232 * k + 1731899 := by
    unfold C
    simp [show (6718464 * k + 3463798) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1731899) = 10077696 * k + 5195698 := by
    unfold C
    simp [show (3359232 * k + 1731899) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5195698) = 5038848 * k + 2597849 := by
    unfold C
    simp [show (10077696 * k + 5195698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2597849) = 15116544 * k + 7793548 := by
    unfold C
    simp [show (5038848 * k + 2597849) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7793548) = 7558272 * k + 3896774 := by
    unfold C
    simp [show (15116544 * k + 7793548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3896774) = 3779136 * k + 1948387 := by
    unfold C
    simp [show (7558272 * k + 3896774) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1948387) = 11337408 * k + 5845162 := by
    unfold C
    simp [show (3779136 * k + 1948387) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5845162) = 5668704 * k + 2922581 := by
    unfold C
    simp [show (11337408 * k + 5845162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2922581) = 17006112 * k + 8767744 := by
    unfold C
    simp [show (5668704 * k + 2922581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8767744) = 8503056 * k + 4383872 := by
    unfold C
    simp [show (17006112 * k + 8767744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4383872) = 4251528 * k + 2191936 := by
    unfold C
    simp [show (8503056 * k + 4383872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2191936) = 2125764 * k + 1095968 := by
    unfold C
    simp [show (4251528 * k + 2191936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1095968) = 1062882 * k + 547984 := by
    unfold C
    simp [show (2125764 * k + 1095968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 547984) = 531441 * k + 273992 := by
    unfold C
    simp [show (1062882 * k + 547984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 540607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 540607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_541275 : ∀ k : Nat,
    iterate (1048576 * k + 541275) 32 = 531441 * k + 274331 ∧
      531441 * k + 274331 < 1048576 * k + 541275 := by
  intro k
  have h1 : C (1048576 * k + 541275) = 3145728 * k + 1623826 := by
    unfold C
    simp [show (1048576 * k + 541275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1623826) = 1572864 * k + 811913 := by
    unfold C
    simp [show (3145728 * k + 1623826) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 811913) = 4718592 * k + 2435740 := by
    unfold C
    simp [show (1572864 * k + 811913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2435740) = 2359296 * k + 1217870 := by
    unfold C
    simp [show (4718592 * k + 2435740) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1217870) = 1179648 * k + 608935 := by
    unfold C
    simp [show (2359296 * k + 1217870) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 608935) = 3538944 * k + 1826806 := by
    unfold C
    simp [show (1179648 * k + 608935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1826806) = 1769472 * k + 913403 := by
    unfold C
    simp [show (3538944 * k + 1826806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 913403) = 5308416 * k + 2740210 := by
    unfold C
    simp [show (1769472 * k + 913403) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2740210) = 2654208 * k + 1370105 := by
    unfold C
    simp [show (5308416 * k + 2740210) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1370105) = 7962624 * k + 4110316 := by
    unfold C
    simp [show (2654208 * k + 1370105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4110316) = 3981312 * k + 2055158 := by
    unfold C
    simp [show (7962624 * k + 4110316) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2055158) = 1990656 * k + 1027579 := by
    unfold C
    simp [show (3981312 * k + 2055158) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1027579) = 5971968 * k + 3082738 := by
    unfold C
    simp [show (1990656 * k + 1027579) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3082738) = 2985984 * k + 1541369 := by
    unfold C
    simp [show (5971968 * k + 3082738) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1541369) = 8957952 * k + 4624108 := by
    unfold C
    simp [show (2985984 * k + 1541369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4624108) = 4478976 * k + 2312054 := by
    unfold C
    simp [show (8957952 * k + 4624108) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2312054) = 2239488 * k + 1156027 := by
    unfold C
    simp [show (4478976 * k + 2312054) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1156027) = 6718464 * k + 3468082 := by
    unfold C
    simp [show (2239488 * k + 1156027) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3468082) = 3359232 * k + 1734041 := by
    unfold C
    simp [show (6718464 * k + 3468082) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1734041) = 10077696 * k + 5202124 := by
    unfold C
    simp [show (3359232 * k + 1734041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5202124) = 5038848 * k + 2601062 := by
    unfold C
    simp [show (10077696 * k + 5202124) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2601062) = 2519424 * k + 1300531 := by
    unfold C
    simp [show (5038848 * k + 2601062) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1300531) = 7558272 * k + 3901594 := by
    unfold C
    simp [show (2519424 * k + 1300531) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3901594) = 3779136 * k + 1950797 := by
    unfold C
    simp [show (7558272 * k + 3901594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1950797) = 11337408 * k + 5852392 := by
    unfold C
    simp [show (3779136 * k + 1950797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5852392) = 5668704 * k + 2926196 := by
    unfold C
    simp [show (11337408 * k + 5852392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2926196) = 2834352 * k + 1463098 := by
    unfold C
    simp [show (5668704 * k + 2926196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1463098) = 1417176 * k + 731549 := by
    unfold C
    simp [show (2834352 * k + 1463098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 731549) = 4251528 * k + 2194648 := by
    unfold C
    simp [show (1417176 * k + 731549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2194648) = 2125764 * k + 1097324 := by
    unfold C
    simp [show (4251528 * k + 2194648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1097324) = 1062882 * k + 548662 := by
    unfold C
    simp [show (2125764 * k + 1097324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 548662) = 531441 * k + 274331 := by
    unfold C
    simp [show (1062882 * k + 548662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 541275) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 541275)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_541631 : ∀ k : Nat,
    iterate (1048576 * k + 541631) 32 = 531441 * k + 274511 ∧
      531441 * k + 274511 < 1048576 * k + 541631 := by
  intro k
  have h1 : C (1048576 * k + 541631) = 3145728 * k + 1624894 := by
    unfold C
    simp [show (1048576 * k + 541631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1624894) = 1572864 * k + 812447 := by
    unfold C
    simp [show (3145728 * k + 1624894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 812447) = 4718592 * k + 2437342 := by
    unfold C
    simp [show (1572864 * k + 812447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2437342) = 2359296 * k + 1218671 := by
    unfold C
    simp [show (4718592 * k + 2437342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1218671) = 7077888 * k + 3656014 := by
    unfold C
    simp [show (2359296 * k + 1218671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3656014) = 3538944 * k + 1828007 := by
    unfold C
    simp [show (7077888 * k + 3656014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1828007) = 10616832 * k + 5484022 := by
    unfold C
    simp [show (3538944 * k + 1828007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5484022) = 5308416 * k + 2742011 := by
    unfold C
    simp [show (10616832 * k + 5484022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2742011) = 15925248 * k + 8226034 := by
    unfold C
    simp [show (5308416 * k + 2742011) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8226034) = 7962624 * k + 4113017 := by
    unfold C
    simp [show (15925248 * k + 8226034) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4113017) = 23887872 * k + 12339052 := by
    unfold C
    simp [show (7962624 * k + 4113017) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12339052) = 11943936 * k + 6169526 := by
    unfold C
    simp [show (23887872 * k + 12339052) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6169526) = 5971968 * k + 3084763 := by
    unfold C
    simp [show (11943936 * k + 6169526) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3084763) = 17915904 * k + 9254290 := by
    unfold C
    simp [show (5971968 * k + 3084763) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9254290) = 8957952 * k + 4627145 := by
    unfold C
    simp [show (17915904 * k + 9254290) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4627145) = 26873856 * k + 13881436 := by
    unfold C
    simp [show (8957952 * k + 4627145) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13881436) = 13436928 * k + 6940718 := by
    unfold C
    simp [show (26873856 * k + 13881436) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6940718) = 6718464 * k + 3470359 := by
    unfold C
    simp [show (13436928 * k + 6940718) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3470359) = 20155392 * k + 10411078 := by
    unfold C
    simp [show (6718464 * k + 3470359) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10411078) = 10077696 * k + 5205539 := by
    unfold C
    simp [show (20155392 * k + 10411078) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5205539) = 30233088 * k + 15616618 := by
    unfold C
    simp [show (10077696 * k + 5205539) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15616618) = 15116544 * k + 7808309 := by
    unfold C
    simp [show (30233088 * k + 15616618) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7808309) = 45349632 * k + 23424928 := by
    unfold C
    simp [show (15116544 * k + 7808309) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 23424928) = 22674816 * k + 11712464 := by
    unfold C
    simp [show (45349632 * k + 23424928) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11712464) = 11337408 * k + 5856232 := by
    unfold C
    simp [show (22674816 * k + 11712464) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5856232) = 5668704 * k + 2928116 := by
    unfold C
    simp [show (11337408 * k + 5856232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2928116) = 2834352 * k + 1464058 := by
    unfold C
    simp [show (5668704 * k + 2928116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1464058) = 1417176 * k + 732029 := by
    unfold C
    simp [show (2834352 * k + 1464058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 732029) = 4251528 * k + 2196088 := by
    unfold C
    simp [show (1417176 * k + 732029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2196088) = 2125764 * k + 1098044 := by
    unfold C
    simp [show (4251528 * k + 2196088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1098044) = 1062882 * k + 549022 := by
    unfold C
    simp [show (2125764 * k + 1098044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 549022) = 531441 * k + 274511 := by
    unfold C
    simp [show (1062882 * k + 549022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 541631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 541631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_542191 : ∀ k : Nat,
    iterate (1048576 * k + 542191) 32 = 531441 * k + 274795 ∧
      531441 * k + 274795 < 1048576 * k + 542191 := by
  intro k
  have h1 : C (1048576 * k + 542191) = 3145728 * k + 1626574 := by
    unfold C
    simp [show (1048576 * k + 542191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1626574) = 1572864 * k + 813287 := by
    unfold C
    simp [show (3145728 * k + 1626574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 813287) = 4718592 * k + 2439862 := by
    unfold C
    simp [show (1572864 * k + 813287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2439862) = 2359296 * k + 1219931 := by
    unfold C
    simp [show (4718592 * k + 2439862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1219931) = 7077888 * k + 3659794 := by
    unfold C
    simp [show (2359296 * k + 1219931) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3659794) = 3538944 * k + 1829897 := by
    unfold C
    simp [show (7077888 * k + 3659794) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1829897) = 10616832 * k + 5489692 := by
    unfold C
    simp [show (3538944 * k + 1829897) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5489692) = 5308416 * k + 2744846 := by
    unfold C
    simp [show (10616832 * k + 5489692) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2744846) = 2654208 * k + 1372423 := by
    unfold C
    simp [show (5308416 * k + 2744846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1372423) = 7962624 * k + 4117270 := by
    unfold C
    simp [show (2654208 * k + 1372423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4117270) = 3981312 * k + 2058635 := by
    unfold C
    simp [show (7962624 * k + 4117270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2058635) = 11943936 * k + 6175906 := by
    unfold C
    simp [show (3981312 * k + 2058635) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6175906) = 5971968 * k + 3087953 := by
    unfold C
    simp [show (11943936 * k + 6175906) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3087953) = 17915904 * k + 9263860 := by
    unfold C
    simp [show (5971968 * k + 3087953) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9263860) = 8957952 * k + 4631930 := by
    unfold C
    simp [show (17915904 * k + 9263860) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4631930) = 4478976 * k + 2315965 := by
    unfold C
    simp [show (8957952 * k + 4631930) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2315965) = 13436928 * k + 6947896 := by
    unfold C
    simp [show (4478976 * k + 2315965) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6947896) = 6718464 * k + 3473948 := by
    unfold C
    simp [show (13436928 * k + 6947896) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3473948) = 3359232 * k + 1736974 := by
    unfold C
    simp [show (6718464 * k + 3473948) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1736974) = 1679616 * k + 868487 := by
    unfold C
    simp [show (3359232 * k + 1736974) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 868487) = 5038848 * k + 2605462 := by
    unfold C
    simp [show (1679616 * k + 868487) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2605462) = 2519424 * k + 1302731 := by
    unfold C
    simp [show (5038848 * k + 2605462) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1302731) = 7558272 * k + 3908194 := by
    unfold C
    simp [show (2519424 * k + 1302731) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3908194) = 3779136 * k + 1954097 := by
    unfold C
    simp [show (7558272 * k + 3908194) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1954097) = 11337408 * k + 5862292 := by
    unfold C
    simp [show (3779136 * k + 1954097) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5862292) = 5668704 * k + 2931146 := by
    unfold C
    simp [show (11337408 * k + 5862292) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2931146) = 2834352 * k + 1465573 := by
    unfold C
    simp [show (5668704 * k + 2931146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1465573) = 8503056 * k + 4396720 := by
    unfold C
    simp [show (2834352 * k + 1465573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4396720) = 4251528 * k + 2198360 := by
    unfold C
    simp [show (8503056 * k + 4396720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2198360) = 2125764 * k + 1099180 := by
    unfold C
    simp [show (4251528 * k + 2198360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1099180) = 1062882 * k + 549590 := by
    unfold C
    simp [show (2125764 * k + 1099180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 549590) = 531441 * k + 274795 := by
    unfold C
    simp [show (1062882 * k + 549590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 542191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 542191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard069
