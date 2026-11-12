import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard117

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_914523 : ∀ k : Nat,
    iterate (1048576 * k + 914523) 32 = 531441 * k + 463501 ∧
      531441 * k + 463501 < 1048576 * k + 914523 := by
  intro k
  have h1 : C (1048576 * k + 914523) = 3145728 * k + 2743570 := by
    unfold C
    simp [show (1048576 * k + 914523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2743570) = 1572864 * k + 1371785 := by
    unfold C
    simp [show (3145728 * k + 2743570) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1371785) = 4718592 * k + 4115356 := by
    unfold C
    simp [show (1572864 * k + 1371785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4115356) = 2359296 * k + 2057678 := by
    unfold C
    simp [show (4718592 * k + 4115356) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2057678) = 1179648 * k + 1028839 := by
    unfold C
    simp [show (2359296 * k + 2057678) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1028839) = 3538944 * k + 3086518 := by
    unfold C
    simp [show (1179648 * k + 1028839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3086518) = 1769472 * k + 1543259 := by
    unfold C
    simp [show (3538944 * k + 3086518) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1543259) = 5308416 * k + 4629778 := by
    unfold C
    simp [show (1769472 * k + 1543259) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4629778) = 2654208 * k + 2314889 := by
    unfold C
    simp [show (5308416 * k + 4629778) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2314889) = 7962624 * k + 6944668 := by
    unfold C
    simp [show (2654208 * k + 2314889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6944668) = 3981312 * k + 3472334 := by
    unfold C
    simp [show (7962624 * k + 6944668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3472334) = 1990656 * k + 1736167 := by
    unfold C
    simp [show (3981312 * k + 3472334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1736167) = 5971968 * k + 5208502 := by
    unfold C
    simp [show (1990656 * k + 1736167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5208502) = 2985984 * k + 2604251 := by
    unfold C
    simp [show (5971968 * k + 5208502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2604251) = 8957952 * k + 7812754 := by
    unfold C
    simp [show (2985984 * k + 2604251) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7812754) = 4478976 * k + 3906377 := by
    unfold C
    simp [show (8957952 * k + 7812754) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3906377) = 13436928 * k + 11719132 := by
    unfold C
    simp [show (4478976 * k + 3906377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11719132) = 6718464 * k + 5859566 := by
    unfold C
    simp [show (13436928 * k + 11719132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5859566) = 3359232 * k + 2929783 := by
    unfold C
    simp [show (6718464 * k + 5859566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2929783) = 10077696 * k + 8789350 := by
    unfold C
    simp [show (3359232 * k + 2929783) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8789350) = 5038848 * k + 4394675 := by
    unfold C
    simp [show (10077696 * k + 8789350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4394675) = 15116544 * k + 13184026 := by
    unfold C
    simp [show (5038848 * k + 4394675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13184026) = 7558272 * k + 6592013 := by
    unfold C
    simp [show (15116544 * k + 13184026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6592013) = 22674816 * k + 19776040 := by
    unfold C
    simp [show (7558272 * k + 6592013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19776040) = 11337408 * k + 9888020 := by
    unfold C
    simp [show (22674816 * k + 19776040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9888020) = 5668704 * k + 4944010 := by
    unfold C
    simp [show (11337408 * k + 9888020) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4944010) = 2834352 * k + 2472005 := by
    unfold C
    simp [show (5668704 * k + 4944010) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2472005) = 8503056 * k + 7416016 := by
    unfold C
    simp [show (2834352 * k + 2472005) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7416016) = 4251528 * k + 3708008 := by
    unfold C
    simp [show (8503056 * k + 7416016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3708008) = 2125764 * k + 1854004 := by
    unfold C
    simp [show (4251528 * k + 3708008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1854004) = 1062882 * k + 927002 := by
    unfold C
    simp [show (2125764 * k + 1854004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927002) = 531441 * k + 463501 := by
    unfold C
    simp [show (1062882 * k + 927002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 914523) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 914523)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_914559 : ∀ k : Nat,
    iterate (1048576 * k + 914559) 32 = 531441 * k + 463519 ∧
      531441 * k + 463519 < 1048576 * k + 914559 := by
  intro k
  have h1 : C (1048576 * k + 914559) = 3145728 * k + 2743678 := by
    unfold C
    simp [show (1048576 * k + 914559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2743678) = 1572864 * k + 1371839 := by
    unfold C
    simp [show (3145728 * k + 2743678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1371839) = 4718592 * k + 4115518 := by
    unfold C
    simp [show (1572864 * k + 1371839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4115518) = 2359296 * k + 2057759 := by
    unfold C
    simp [show (4718592 * k + 4115518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2057759) = 7077888 * k + 6173278 := by
    unfold C
    simp [show (2359296 * k + 2057759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6173278) = 3538944 * k + 3086639 := by
    unfold C
    simp [show (7077888 * k + 6173278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3086639) = 10616832 * k + 9259918 := by
    unfold C
    simp [show (3538944 * k + 3086639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9259918) = 5308416 * k + 4629959 := by
    unfold C
    simp [show (10616832 * k + 9259918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4629959) = 15925248 * k + 13889878 := by
    unfold C
    simp [show (5308416 * k + 4629959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13889878) = 7962624 * k + 6944939 := by
    unfold C
    simp [show (15925248 * k + 13889878) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6944939) = 23887872 * k + 20834818 := by
    unfold C
    simp [show (7962624 * k + 6944939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20834818) = 11943936 * k + 10417409 := by
    unfold C
    simp [show (23887872 * k + 20834818) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10417409) = 35831808 * k + 31252228 := by
    unfold C
    simp [show (11943936 * k + 10417409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31252228) = 17915904 * k + 15626114 := by
    unfold C
    simp [show (35831808 * k + 31252228) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15626114) = 8957952 * k + 7813057 := by
    unfold C
    simp [show (17915904 * k + 15626114) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7813057) = 26873856 * k + 23439172 := by
    unfold C
    simp [show (8957952 * k + 7813057) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23439172) = 13436928 * k + 11719586 := by
    unfold C
    simp [show (26873856 * k + 23439172) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11719586) = 6718464 * k + 5859793 := by
    unfold C
    simp [show (13436928 * k + 11719586) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5859793) = 20155392 * k + 17579380 := by
    unfold C
    simp [show (6718464 * k + 5859793) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17579380) = 10077696 * k + 8789690 := by
    unfold C
    simp [show (20155392 * k + 17579380) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8789690) = 5038848 * k + 4394845 := by
    unfold C
    simp [show (10077696 * k + 8789690) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4394845) = 15116544 * k + 13184536 := by
    unfold C
    simp [show (5038848 * k + 4394845) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13184536) = 7558272 * k + 6592268 := by
    unfold C
    simp [show (15116544 * k + 13184536) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6592268) = 3779136 * k + 3296134 := by
    unfold C
    simp [show (7558272 * k + 6592268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3296134) = 1889568 * k + 1648067 := by
    unfold C
    simp [show (3779136 * k + 3296134) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1648067) = 5668704 * k + 4944202 := by
    unfold C
    simp [show (1889568 * k + 1648067) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4944202) = 2834352 * k + 2472101 := by
    unfold C
    simp [show (5668704 * k + 4944202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2472101) = 8503056 * k + 7416304 := by
    unfold C
    simp [show (2834352 * k + 2472101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7416304) = 4251528 * k + 3708152 := by
    unfold C
    simp [show (8503056 * k + 7416304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3708152) = 2125764 * k + 1854076 := by
    unfold C
    simp [show (4251528 * k + 3708152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1854076) = 1062882 * k + 927038 := by
    unfold C
    simp [show (2125764 * k + 1854076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927038) = 531441 * k + 463519 := by
    unfold C
    simp [show (1062882 * k + 927038) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 914559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 914559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_914655 : ∀ k : Nat,
    iterate (1048576 * k + 914655) 32 = 531441 * k + 463568 ∧
      531441 * k + 463568 < 1048576 * k + 914655 := by
  intro k
  have h1 : C (1048576 * k + 914655) = 3145728 * k + 2743966 := by
    unfold C
    simp [show (1048576 * k + 914655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2743966) = 1572864 * k + 1371983 := by
    unfold C
    simp [show (3145728 * k + 2743966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1371983) = 4718592 * k + 4115950 := by
    unfold C
    simp [show (1572864 * k + 1371983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4115950) = 2359296 * k + 2057975 := by
    unfold C
    simp [show (4718592 * k + 4115950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2057975) = 7077888 * k + 6173926 := by
    unfold C
    simp [show (2359296 * k + 2057975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6173926) = 3538944 * k + 3086963 := by
    unfold C
    simp [show (7077888 * k + 6173926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3086963) = 10616832 * k + 9260890 := by
    unfold C
    simp [show (3538944 * k + 3086963) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9260890) = 5308416 * k + 4630445 := by
    unfold C
    simp [show (10616832 * k + 9260890) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4630445) = 15925248 * k + 13891336 := by
    unfold C
    simp [show (5308416 * k + 4630445) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13891336) = 7962624 * k + 6945668 := by
    unfold C
    simp [show (15925248 * k + 13891336) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6945668) = 3981312 * k + 3472834 := by
    unfold C
    simp [show (7962624 * k + 6945668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3472834) = 1990656 * k + 1736417 := by
    unfold C
    simp [show (3981312 * k + 3472834) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1736417) = 5971968 * k + 5209252 := by
    unfold C
    simp [show (1990656 * k + 1736417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5209252) = 2985984 * k + 2604626 := by
    unfold C
    simp [show (5971968 * k + 5209252) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2604626) = 1492992 * k + 1302313 := by
    unfold C
    simp [show (2985984 * k + 2604626) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1302313) = 4478976 * k + 3906940 := by
    unfold C
    simp [show (1492992 * k + 1302313) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3906940) = 2239488 * k + 1953470 := by
    unfold C
    simp [show (4478976 * k + 3906940) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1953470) = 1119744 * k + 976735 := by
    unfold C
    simp [show (2239488 * k + 1953470) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 976735) = 3359232 * k + 2930206 := by
    unfold C
    simp [show (1119744 * k + 976735) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2930206) = 1679616 * k + 1465103 := by
    unfold C
    simp [show (3359232 * k + 2930206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1465103) = 5038848 * k + 4395310 := by
    unfold C
    simp [show (1679616 * k + 1465103) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4395310) = 2519424 * k + 2197655 := by
    unfold C
    simp [show (5038848 * k + 4395310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2197655) = 7558272 * k + 6592966 := by
    unfold C
    simp [show (2519424 * k + 2197655) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6592966) = 3779136 * k + 3296483 := by
    unfold C
    simp [show (7558272 * k + 6592966) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3296483) = 11337408 * k + 9889450 := by
    unfold C
    simp [show (3779136 * k + 3296483) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9889450) = 5668704 * k + 4944725 := by
    unfold C
    simp [show (11337408 * k + 9889450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4944725) = 17006112 * k + 14834176 := by
    unfold C
    simp [show (5668704 * k + 4944725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14834176) = 8503056 * k + 7417088 := by
    unfold C
    simp [show (17006112 * k + 14834176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7417088) = 4251528 * k + 3708544 := by
    unfold C
    simp [show (8503056 * k + 7417088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3708544) = 2125764 * k + 1854272 := by
    unfold C
    simp [show (4251528 * k + 3708544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1854272) = 1062882 * k + 927136 := by
    unfold C
    simp [show (2125764 * k + 1854272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927136) = 531441 * k + 463568 := by
    unfold C
    simp [show (1062882 * k + 927136) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 914655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 914655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_914815 : ∀ k : Nat,
    iterate (1048576 * k + 914815) 32 = 531441 * k + 463649 ∧
      531441 * k + 463649 < 1048576 * k + 914815 := by
  intro k
  have h1 : C (1048576 * k + 914815) = 3145728 * k + 2744446 := by
    unfold C
    simp [show (1048576 * k + 914815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2744446) = 1572864 * k + 1372223 := by
    unfold C
    simp [show (3145728 * k + 2744446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1372223) = 4718592 * k + 4116670 := by
    unfold C
    simp [show (1572864 * k + 1372223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4116670) = 2359296 * k + 2058335 := by
    unfold C
    simp [show (4718592 * k + 4116670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2058335) = 7077888 * k + 6175006 := by
    unfold C
    simp [show (2359296 * k + 2058335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6175006) = 3538944 * k + 3087503 := by
    unfold C
    simp [show (7077888 * k + 6175006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3087503) = 10616832 * k + 9262510 := by
    unfold C
    simp [show (3538944 * k + 3087503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9262510) = 5308416 * k + 4631255 := by
    unfold C
    simp [show (10616832 * k + 9262510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4631255) = 15925248 * k + 13893766 := by
    unfold C
    simp [show (5308416 * k + 4631255) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13893766) = 7962624 * k + 6946883 := by
    unfold C
    simp [show (15925248 * k + 13893766) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6946883) = 23887872 * k + 20840650 := by
    unfold C
    simp [show (7962624 * k + 6946883) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20840650) = 11943936 * k + 10420325 := by
    unfold C
    simp [show (23887872 * k + 20840650) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10420325) = 35831808 * k + 31260976 := by
    unfold C
    simp [show (11943936 * k + 10420325) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31260976) = 17915904 * k + 15630488 := by
    unfold C
    simp [show (35831808 * k + 31260976) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15630488) = 8957952 * k + 7815244 := by
    unfold C
    simp [show (17915904 * k + 15630488) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7815244) = 4478976 * k + 3907622 := by
    unfold C
    simp [show (8957952 * k + 7815244) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3907622) = 2239488 * k + 1953811 := by
    unfold C
    simp [show (4478976 * k + 3907622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1953811) = 6718464 * k + 5861434 := by
    unfold C
    simp [show (2239488 * k + 1953811) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5861434) = 3359232 * k + 2930717 := by
    unfold C
    simp [show (6718464 * k + 5861434) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2930717) = 10077696 * k + 8792152 := by
    unfold C
    simp [show (3359232 * k + 2930717) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8792152) = 5038848 * k + 4396076 := by
    unfold C
    simp [show (10077696 * k + 8792152) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4396076) = 2519424 * k + 2198038 := by
    unfold C
    simp [show (5038848 * k + 4396076) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2198038) = 1259712 * k + 1099019 := by
    unfold C
    simp [show (2519424 * k + 2198038) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1099019) = 3779136 * k + 3297058 := by
    unfold C
    simp [show (1259712 * k + 1099019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3297058) = 1889568 * k + 1648529 := by
    unfold C
    simp [show (3779136 * k + 3297058) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1648529) = 5668704 * k + 4945588 := by
    unfold C
    simp [show (1889568 * k + 1648529) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4945588) = 2834352 * k + 2472794 := by
    unfold C
    simp [show (5668704 * k + 4945588) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2472794) = 1417176 * k + 1236397 := by
    unfold C
    simp [show (2834352 * k + 2472794) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1236397) = 4251528 * k + 3709192 := by
    unfold C
    simp [show (1417176 * k + 1236397) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3709192) = 2125764 * k + 1854596 := by
    unfold C
    simp [show (4251528 * k + 3709192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1854596) = 1062882 * k + 927298 := by
    unfold C
    simp [show (2125764 * k + 1854596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927298) = 531441 * k + 463649 := by
    unfold C
    simp [show (1062882 * k + 927298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 914815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 914815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_914975 : ∀ k : Nat,
    iterate (1048576 * k + 914975) 32 = 531441 * k + 463730 ∧
      531441 * k + 463730 < 1048576 * k + 914975 := by
  intro k
  have h1 : C (1048576 * k + 914975) = 3145728 * k + 2744926 := by
    unfold C
    simp [show (1048576 * k + 914975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2744926) = 1572864 * k + 1372463 := by
    unfold C
    simp [show (3145728 * k + 2744926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1372463) = 4718592 * k + 4117390 := by
    unfold C
    simp [show (1572864 * k + 1372463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4117390) = 2359296 * k + 2058695 := by
    unfold C
    simp [show (4718592 * k + 4117390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2058695) = 7077888 * k + 6176086 := by
    unfold C
    simp [show (2359296 * k + 2058695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6176086) = 3538944 * k + 3088043 := by
    unfold C
    simp [show (7077888 * k + 6176086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3088043) = 10616832 * k + 9264130 := by
    unfold C
    simp [show (3538944 * k + 3088043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9264130) = 5308416 * k + 4632065 := by
    unfold C
    simp [show (10616832 * k + 9264130) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4632065) = 15925248 * k + 13896196 := by
    unfold C
    simp [show (5308416 * k + 4632065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13896196) = 7962624 * k + 6948098 := by
    unfold C
    simp [show (15925248 * k + 13896196) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6948098) = 3981312 * k + 3474049 := by
    unfold C
    simp [show (7962624 * k + 6948098) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3474049) = 11943936 * k + 10422148 := by
    unfold C
    simp [show (3981312 * k + 3474049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10422148) = 5971968 * k + 5211074 := by
    unfold C
    simp [show (11943936 * k + 10422148) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5211074) = 2985984 * k + 2605537 := by
    unfold C
    simp [show (5971968 * k + 5211074) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2605537) = 8957952 * k + 7816612 := by
    unfold C
    simp [show (2985984 * k + 2605537) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7816612) = 4478976 * k + 3908306 := by
    unfold C
    simp [show (8957952 * k + 7816612) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3908306) = 2239488 * k + 1954153 := by
    unfold C
    simp [show (4478976 * k + 3908306) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1954153) = 6718464 * k + 5862460 := by
    unfold C
    simp [show (2239488 * k + 1954153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5862460) = 3359232 * k + 2931230 := by
    unfold C
    simp [show (6718464 * k + 5862460) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2931230) = 1679616 * k + 1465615 := by
    unfold C
    simp [show (3359232 * k + 2931230) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1465615) = 5038848 * k + 4396846 := by
    unfold C
    simp [show (1679616 * k + 1465615) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4396846) = 2519424 * k + 2198423 := by
    unfold C
    simp [show (5038848 * k + 4396846) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2198423) = 7558272 * k + 6595270 := by
    unfold C
    simp [show (2519424 * k + 2198423) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6595270) = 3779136 * k + 3297635 := by
    unfold C
    simp [show (7558272 * k + 6595270) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3297635) = 11337408 * k + 9892906 := by
    unfold C
    simp [show (3779136 * k + 3297635) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9892906) = 5668704 * k + 4946453 := by
    unfold C
    simp [show (11337408 * k + 9892906) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4946453) = 17006112 * k + 14839360 := by
    unfold C
    simp [show (5668704 * k + 4946453) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14839360) = 8503056 * k + 7419680 := by
    unfold C
    simp [show (17006112 * k + 14839360) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7419680) = 4251528 * k + 3709840 := by
    unfold C
    simp [show (8503056 * k + 7419680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3709840) = 2125764 * k + 1854920 := by
    unfold C
    simp [show (4251528 * k + 3709840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1854920) = 1062882 * k + 927460 := by
    unfold C
    simp [show (2125764 * k + 1854920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927460) = 531441 * k + 463730 := by
    unfold C
    simp [show (1062882 * k + 927460) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 914975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 914975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_915135 : ∀ k : Nat,
    iterate (1048576 * k + 915135) 32 = 531441 * k + 463811 ∧
      531441 * k + 463811 < 1048576 * k + 915135 := by
  intro k
  have h1 : C (1048576 * k + 915135) = 3145728 * k + 2745406 := by
    unfold C
    simp [show (1048576 * k + 915135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2745406) = 1572864 * k + 1372703 := by
    unfold C
    simp [show (3145728 * k + 2745406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1372703) = 4718592 * k + 4118110 := by
    unfold C
    simp [show (1572864 * k + 1372703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4118110) = 2359296 * k + 2059055 := by
    unfold C
    simp [show (4718592 * k + 4118110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2059055) = 7077888 * k + 6177166 := by
    unfold C
    simp [show (2359296 * k + 2059055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6177166) = 3538944 * k + 3088583 := by
    unfold C
    simp [show (7077888 * k + 6177166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3088583) = 10616832 * k + 9265750 := by
    unfold C
    simp [show (3538944 * k + 3088583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9265750) = 5308416 * k + 4632875 := by
    unfold C
    simp [show (10616832 * k + 9265750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4632875) = 15925248 * k + 13898626 := by
    unfold C
    simp [show (5308416 * k + 4632875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13898626) = 7962624 * k + 6949313 := by
    unfold C
    simp [show (15925248 * k + 13898626) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6949313) = 23887872 * k + 20847940 := by
    unfold C
    simp [show (7962624 * k + 6949313) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20847940) = 11943936 * k + 10423970 := by
    unfold C
    simp [show (23887872 * k + 20847940) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10423970) = 5971968 * k + 5211985 := by
    unfold C
    simp [show (11943936 * k + 10423970) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5211985) = 17915904 * k + 15635956 := by
    unfold C
    simp [show (5971968 * k + 5211985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15635956) = 8957952 * k + 7817978 := by
    unfold C
    simp [show (17915904 * k + 15635956) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7817978) = 4478976 * k + 3908989 := by
    unfold C
    simp [show (8957952 * k + 7817978) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3908989) = 13436928 * k + 11726968 := by
    unfold C
    simp [show (4478976 * k + 3908989) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11726968) = 6718464 * k + 5863484 := by
    unfold C
    simp [show (13436928 * k + 11726968) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5863484) = 3359232 * k + 2931742 := by
    unfold C
    simp [show (6718464 * k + 5863484) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2931742) = 1679616 * k + 1465871 := by
    unfold C
    simp [show (3359232 * k + 2931742) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1465871) = 5038848 * k + 4397614 := by
    unfold C
    simp [show (1679616 * k + 1465871) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4397614) = 2519424 * k + 2198807 := by
    unfold C
    simp [show (5038848 * k + 4397614) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2198807) = 7558272 * k + 6596422 := by
    unfold C
    simp [show (2519424 * k + 2198807) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6596422) = 3779136 * k + 3298211 := by
    unfold C
    simp [show (7558272 * k + 6596422) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3298211) = 11337408 * k + 9894634 := by
    unfold C
    simp [show (3779136 * k + 3298211) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9894634) = 5668704 * k + 4947317 := by
    unfold C
    simp [show (11337408 * k + 9894634) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4947317) = 17006112 * k + 14841952 := by
    unfold C
    simp [show (5668704 * k + 4947317) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14841952) = 8503056 * k + 7420976 := by
    unfold C
    simp [show (17006112 * k + 14841952) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7420976) = 4251528 * k + 3710488 := by
    unfold C
    simp [show (8503056 * k + 7420976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3710488) = 2125764 * k + 1855244 := by
    unfold C
    simp [show (4251528 * k + 3710488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1855244) = 1062882 * k + 927622 := by
    unfold C
    simp [show (2125764 * k + 1855244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 927622) = 531441 * k + 463811 := by
    unfold C
    simp [show (1062882 * k + 927622) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 915135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 915135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_915583 : ∀ k : Nat,
    iterate (1048576 * k + 915583) 32 = 531441 * k + 464038 ∧
      531441 * k + 464038 < 1048576 * k + 915583 := by
  intro k
  have h1 : C (1048576 * k + 915583) = 3145728 * k + 2746750 := by
    unfold C
    simp [show (1048576 * k + 915583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2746750) = 1572864 * k + 1373375 := by
    unfold C
    simp [show (3145728 * k + 2746750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1373375) = 4718592 * k + 4120126 := by
    unfold C
    simp [show (1572864 * k + 1373375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4120126) = 2359296 * k + 2060063 := by
    unfold C
    simp [show (4718592 * k + 4120126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2060063) = 7077888 * k + 6180190 := by
    unfold C
    simp [show (2359296 * k + 2060063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6180190) = 3538944 * k + 3090095 := by
    unfold C
    simp [show (7077888 * k + 6180190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3090095) = 10616832 * k + 9270286 := by
    unfold C
    simp [show (3538944 * k + 3090095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9270286) = 5308416 * k + 4635143 := by
    unfold C
    simp [show (10616832 * k + 9270286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4635143) = 15925248 * k + 13905430 := by
    unfold C
    simp [show (5308416 * k + 4635143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13905430) = 7962624 * k + 6952715 := by
    unfold C
    simp [show (15925248 * k + 13905430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6952715) = 23887872 * k + 20858146 := by
    unfold C
    simp [show (7962624 * k + 6952715) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20858146) = 11943936 * k + 10429073 := by
    unfold C
    simp [show (23887872 * k + 20858146) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10429073) = 35831808 * k + 31287220 := by
    unfold C
    simp [show (11943936 * k + 10429073) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31287220) = 17915904 * k + 15643610 := by
    unfold C
    simp [show (35831808 * k + 31287220) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15643610) = 8957952 * k + 7821805 := by
    unfold C
    simp [show (17915904 * k + 15643610) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7821805) = 26873856 * k + 23465416 := by
    unfold C
    simp [show (8957952 * k + 7821805) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23465416) = 13436928 * k + 11732708 := by
    unfold C
    simp [show (26873856 * k + 23465416) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11732708) = 6718464 * k + 5866354 := by
    unfold C
    simp [show (13436928 * k + 11732708) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5866354) = 3359232 * k + 2933177 := by
    unfold C
    simp [show (6718464 * k + 5866354) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2933177) = 10077696 * k + 8799532 := by
    unfold C
    simp [show (3359232 * k + 2933177) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8799532) = 5038848 * k + 4399766 := by
    unfold C
    simp [show (10077696 * k + 8799532) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4399766) = 2519424 * k + 2199883 := by
    unfold C
    simp [show (5038848 * k + 4399766) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2199883) = 7558272 * k + 6599650 := by
    unfold C
    simp [show (2519424 * k + 2199883) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6599650) = 3779136 * k + 3299825 := by
    unfold C
    simp [show (7558272 * k + 6599650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3299825) = 11337408 * k + 9899476 := by
    unfold C
    simp [show (3779136 * k + 3299825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9899476) = 5668704 * k + 4949738 := by
    unfold C
    simp [show (11337408 * k + 9899476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4949738) = 2834352 * k + 2474869 := by
    unfold C
    simp [show (5668704 * k + 4949738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2474869) = 8503056 * k + 7424608 := by
    unfold C
    simp [show (2834352 * k + 2474869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7424608) = 4251528 * k + 3712304 := by
    unfold C
    simp [show (8503056 * k + 7424608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3712304) = 2125764 * k + 1856152 := by
    unfold C
    simp [show (4251528 * k + 3712304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1856152) = 1062882 * k + 928076 := by
    unfold C
    simp [show (2125764 * k + 1856152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 928076) = 531441 * k + 464038 := by
    unfold C
    simp [show (1062882 * k + 928076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 915583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 915583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_915679 : ∀ k : Nat,
    iterate (1048576 * k + 915679) 32 = 531441 * k + 464087 ∧
      531441 * k + 464087 < 1048576 * k + 915679 := by
  intro k
  have h1 : C (1048576 * k + 915679) = 3145728 * k + 2747038 := by
    unfold C
    simp [show (1048576 * k + 915679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2747038) = 1572864 * k + 1373519 := by
    unfold C
    simp [show (3145728 * k + 2747038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1373519) = 4718592 * k + 4120558 := by
    unfold C
    simp [show (1572864 * k + 1373519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4120558) = 2359296 * k + 2060279 := by
    unfold C
    simp [show (4718592 * k + 4120558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2060279) = 7077888 * k + 6180838 := by
    unfold C
    simp [show (2359296 * k + 2060279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6180838) = 3538944 * k + 3090419 := by
    unfold C
    simp [show (7077888 * k + 6180838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3090419) = 10616832 * k + 9271258 := by
    unfold C
    simp [show (3538944 * k + 3090419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9271258) = 5308416 * k + 4635629 := by
    unfold C
    simp [show (10616832 * k + 9271258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4635629) = 15925248 * k + 13906888 := by
    unfold C
    simp [show (5308416 * k + 4635629) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13906888) = 7962624 * k + 6953444 := by
    unfold C
    simp [show (15925248 * k + 13906888) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6953444) = 3981312 * k + 3476722 := by
    unfold C
    simp [show (7962624 * k + 6953444) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3476722) = 1990656 * k + 1738361 := by
    unfold C
    simp [show (3981312 * k + 3476722) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1738361) = 5971968 * k + 5215084 := by
    unfold C
    simp [show (1990656 * k + 1738361) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5215084) = 2985984 * k + 2607542 := by
    unfold C
    simp [show (5971968 * k + 5215084) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2607542) = 1492992 * k + 1303771 := by
    unfold C
    simp [show (2985984 * k + 2607542) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1303771) = 4478976 * k + 3911314 := by
    unfold C
    simp [show (1492992 * k + 1303771) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3911314) = 2239488 * k + 1955657 := by
    unfold C
    simp [show (4478976 * k + 3911314) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1955657) = 6718464 * k + 5866972 := by
    unfold C
    simp [show (2239488 * k + 1955657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5866972) = 3359232 * k + 2933486 := by
    unfold C
    simp [show (6718464 * k + 5866972) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2933486) = 1679616 * k + 1466743 := by
    unfold C
    simp [show (3359232 * k + 2933486) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1466743) = 5038848 * k + 4400230 := by
    unfold C
    simp [show (1679616 * k + 1466743) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4400230) = 2519424 * k + 2200115 := by
    unfold C
    simp [show (5038848 * k + 4400230) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2200115) = 7558272 * k + 6600346 := by
    unfold C
    simp [show (2519424 * k + 2200115) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6600346) = 3779136 * k + 3300173 := by
    unfold C
    simp [show (7558272 * k + 6600346) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3300173) = 11337408 * k + 9900520 := by
    unfold C
    simp [show (3779136 * k + 3300173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9900520) = 5668704 * k + 4950260 := by
    unfold C
    simp [show (11337408 * k + 9900520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4950260) = 2834352 * k + 2475130 := by
    unfold C
    simp [show (5668704 * k + 4950260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2475130) = 1417176 * k + 1237565 := by
    unfold C
    simp [show (2834352 * k + 2475130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1237565) = 4251528 * k + 3712696 := by
    unfold C
    simp [show (1417176 * k + 1237565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3712696) = 2125764 * k + 1856348 := by
    unfold C
    simp [show (4251528 * k + 3712696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1856348) = 1062882 * k + 928174 := by
    unfold C
    simp [show (2125764 * k + 1856348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 928174) = 531441 * k + 464087 := by
    unfold C
    simp [show (1062882 * k + 928174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 915679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 915679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_915839 : ∀ k : Nat,
    iterate (1048576 * k + 915839) 32 = 531441 * k + 464168 ∧
      531441 * k + 464168 < 1048576 * k + 915839 := by
  intro k
  have h1 : C (1048576 * k + 915839) = 3145728 * k + 2747518 := by
    unfold C
    simp [show (1048576 * k + 915839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2747518) = 1572864 * k + 1373759 := by
    unfold C
    simp [show (3145728 * k + 2747518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1373759) = 4718592 * k + 4121278 := by
    unfold C
    simp [show (1572864 * k + 1373759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4121278) = 2359296 * k + 2060639 := by
    unfold C
    simp [show (4718592 * k + 4121278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2060639) = 7077888 * k + 6181918 := by
    unfold C
    simp [show (2359296 * k + 2060639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6181918) = 3538944 * k + 3090959 := by
    unfold C
    simp [show (7077888 * k + 6181918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3090959) = 10616832 * k + 9272878 := by
    unfold C
    simp [show (3538944 * k + 3090959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9272878) = 5308416 * k + 4636439 := by
    unfold C
    simp [show (10616832 * k + 9272878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4636439) = 15925248 * k + 13909318 := by
    unfold C
    simp [show (5308416 * k + 4636439) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13909318) = 7962624 * k + 6954659 := by
    unfold C
    simp [show (15925248 * k + 13909318) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6954659) = 23887872 * k + 20863978 := by
    unfold C
    simp [show (7962624 * k + 6954659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20863978) = 11943936 * k + 10431989 := by
    unfold C
    simp [show (23887872 * k + 20863978) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10431989) = 35831808 * k + 31295968 := by
    unfold C
    simp [show (11943936 * k + 10431989) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31295968) = 17915904 * k + 15647984 := by
    unfold C
    simp [show (35831808 * k + 31295968) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15647984) = 8957952 * k + 7823992 := by
    unfold C
    simp [show (17915904 * k + 15647984) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7823992) = 4478976 * k + 3911996 := by
    unfold C
    simp [show (8957952 * k + 7823992) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3911996) = 2239488 * k + 1955998 := by
    unfold C
    simp [show (4478976 * k + 3911996) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1955998) = 1119744 * k + 977999 := by
    unfold C
    simp [show (2239488 * k + 1955998) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 977999) = 3359232 * k + 2933998 := by
    unfold C
    simp [show (1119744 * k + 977999) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2933998) = 1679616 * k + 1466999 := by
    unfold C
    simp [show (3359232 * k + 2933998) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1466999) = 5038848 * k + 4400998 := by
    unfold C
    simp [show (1679616 * k + 1466999) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4400998) = 2519424 * k + 2200499 := by
    unfold C
    simp [show (5038848 * k + 4400998) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2200499) = 7558272 * k + 6601498 := by
    unfold C
    simp [show (2519424 * k + 2200499) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6601498) = 3779136 * k + 3300749 := by
    unfold C
    simp [show (7558272 * k + 6601498) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3300749) = 11337408 * k + 9902248 := by
    unfold C
    simp [show (3779136 * k + 3300749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9902248) = 5668704 * k + 4951124 := by
    unfold C
    simp [show (11337408 * k + 9902248) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4951124) = 2834352 * k + 2475562 := by
    unfold C
    simp [show (5668704 * k + 4951124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2475562) = 1417176 * k + 1237781 := by
    unfold C
    simp [show (2834352 * k + 2475562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1237781) = 4251528 * k + 3713344 := by
    unfold C
    simp [show (1417176 * k + 1237781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3713344) = 2125764 * k + 1856672 := by
    unfold C
    simp [show (4251528 * k + 3713344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1856672) = 1062882 * k + 928336 := by
    unfold C
    simp [show (2125764 * k + 1856672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 928336) = 531441 * k + 464168 := by
    unfold C
    simp [show (1062882 * k + 928336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 915839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 915839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_916159 : ∀ k : Nat,
    iterate (1048576 * k + 916159) 32 = 531441 * k + 464330 ∧
      531441 * k + 464330 < 1048576 * k + 916159 := by
  intro k
  have h1 : C (1048576 * k + 916159) = 3145728 * k + 2748478 := by
    unfold C
    simp [show (1048576 * k + 916159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2748478) = 1572864 * k + 1374239 := by
    unfold C
    simp [show (3145728 * k + 2748478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1374239) = 4718592 * k + 4122718 := by
    unfold C
    simp [show (1572864 * k + 1374239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4122718) = 2359296 * k + 2061359 := by
    unfold C
    simp [show (4718592 * k + 4122718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2061359) = 7077888 * k + 6184078 := by
    unfold C
    simp [show (2359296 * k + 2061359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6184078) = 3538944 * k + 3092039 := by
    unfold C
    simp [show (7077888 * k + 6184078) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3092039) = 10616832 * k + 9276118 := by
    unfold C
    simp [show (3538944 * k + 3092039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9276118) = 5308416 * k + 4638059 := by
    unfold C
    simp [show (10616832 * k + 9276118) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4638059) = 15925248 * k + 13914178 := by
    unfold C
    simp [show (5308416 * k + 4638059) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13914178) = 7962624 * k + 6957089 := by
    unfold C
    simp [show (15925248 * k + 13914178) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6957089) = 23887872 * k + 20871268 := by
    unfold C
    simp [show (7962624 * k + 6957089) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20871268) = 11943936 * k + 10435634 := by
    unfold C
    simp [show (23887872 * k + 20871268) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10435634) = 5971968 * k + 5217817 := by
    unfold C
    simp [show (11943936 * k + 10435634) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5217817) = 17915904 * k + 15653452 := by
    unfold C
    simp [show (5971968 * k + 5217817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15653452) = 8957952 * k + 7826726 := by
    unfold C
    simp [show (17915904 * k + 15653452) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7826726) = 4478976 * k + 3913363 := by
    unfold C
    simp [show (8957952 * k + 7826726) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3913363) = 13436928 * k + 11740090 := by
    unfold C
    simp [show (4478976 * k + 3913363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11740090) = 6718464 * k + 5870045 := by
    unfold C
    simp [show (13436928 * k + 11740090) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5870045) = 20155392 * k + 17610136 := by
    unfold C
    simp [show (6718464 * k + 5870045) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17610136) = 10077696 * k + 8805068 := by
    unfold C
    simp [show (20155392 * k + 17610136) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8805068) = 5038848 * k + 4402534 := by
    unfold C
    simp [show (10077696 * k + 8805068) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4402534) = 2519424 * k + 2201267 := by
    unfold C
    simp [show (5038848 * k + 4402534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2201267) = 7558272 * k + 6603802 := by
    unfold C
    simp [show (2519424 * k + 2201267) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6603802) = 3779136 * k + 3301901 := by
    unfold C
    simp [show (7558272 * k + 6603802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3301901) = 11337408 * k + 9905704 := by
    unfold C
    simp [show (3779136 * k + 3301901) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9905704) = 5668704 * k + 4952852 := by
    unfold C
    simp [show (11337408 * k + 9905704) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4952852) = 2834352 * k + 2476426 := by
    unfold C
    simp [show (5668704 * k + 4952852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2476426) = 1417176 * k + 1238213 := by
    unfold C
    simp [show (2834352 * k + 2476426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1238213) = 4251528 * k + 3714640 := by
    unfold C
    simp [show (1417176 * k + 1238213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3714640) = 2125764 * k + 1857320 := by
    unfold C
    simp [show (4251528 * k + 3714640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1857320) = 1062882 * k + 928660 := by
    unfold C
    simp [show (2125764 * k + 1857320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 928660) = 531441 * k + 464330 := by
    unfold C
    simp [show (1062882 * k + 928660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 916159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 916159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_916591 : ∀ k : Nat,
    iterate (1048576 * k + 916591) 32 = 531441 * k + 464549 ∧
      531441 * k + 464549 < 1048576 * k + 916591 := by
  intro k
  have h1 : C (1048576 * k + 916591) = 3145728 * k + 2749774 := by
    unfold C
    simp [show (1048576 * k + 916591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2749774) = 1572864 * k + 1374887 := by
    unfold C
    simp [show (3145728 * k + 2749774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1374887) = 4718592 * k + 4124662 := by
    unfold C
    simp [show (1572864 * k + 1374887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4124662) = 2359296 * k + 2062331 := by
    unfold C
    simp [show (4718592 * k + 4124662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2062331) = 7077888 * k + 6186994 := by
    unfold C
    simp [show (2359296 * k + 2062331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6186994) = 3538944 * k + 3093497 := by
    unfold C
    simp [show (7077888 * k + 6186994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3093497) = 10616832 * k + 9280492 := by
    unfold C
    simp [show (3538944 * k + 3093497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9280492) = 5308416 * k + 4640246 := by
    unfold C
    simp [show (10616832 * k + 9280492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4640246) = 2654208 * k + 2320123 := by
    unfold C
    simp [show (5308416 * k + 4640246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2320123) = 7962624 * k + 6960370 := by
    unfold C
    simp [show (2654208 * k + 2320123) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6960370) = 3981312 * k + 3480185 := by
    unfold C
    simp [show (7962624 * k + 6960370) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3480185) = 11943936 * k + 10440556 := by
    unfold C
    simp [show (3981312 * k + 3480185) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10440556) = 5971968 * k + 5220278 := by
    unfold C
    simp [show (11943936 * k + 10440556) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5220278) = 2985984 * k + 2610139 := by
    unfold C
    simp [show (5971968 * k + 5220278) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2610139) = 8957952 * k + 7830418 := by
    unfold C
    simp [show (2985984 * k + 2610139) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7830418) = 4478976 * k + 3915209 := by
    unfold C
    simp [show (8957952 * k + 7830418) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3915209) = 13436928 * k + 11745628 := by
    unfold C
    simp [show (4478976 * k + 3915209) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11745628) = 6718464 * k + 5872814 := by
    unfold C
    simp [show (13436928 * k + 11745628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5872814) = 3359232 * k + 2936407 := by
    unfold C
    simp [show (6718464 * k + 5872814) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2936407) = 10077696 * k + 8809222 := by
    unfold C
    simp [show (3359232 * k + 2936407) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8809222) = 5038848 * k + 4404611 := by
    unfold C
    simp [show (10077696 * k + 8809222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4404611) = 15116544 * k + 13213834 := by
    unfold C
    simp [show (5038848 * k + 4404611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13213834) = 7558272 * k + 6606917 := by
    unfold C
    simp [show (15116544 * k + 13213834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6606917) = 22674816 * k + 19820752 := by
    unfold C
    simp [show (7558272 * k + 6606917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19820752) = 11337408 * k + 9910376 := by
    unfold C
    simp [show (22674816 * k + 19820752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9910376) = 5668704 * k + 4955188 := by
    unfold C
    simp [show (11337408 * k + 9910376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4955188) = 2834352 * k + 2477594 := by
    unfold C
    simp [show (5668704 * k + 4955188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2477594) = 1417176 * k + 1238797 := by
    unfold C
    simp [show (2834352 * k + 2477594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1238797) = 4251528 * k + 3716392 := by
    unfold C
    simp [show (1417176 * k + 1238797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3716392) = 2125764 * k + 1858196 := by
    unfold C
    simp [show (4251528 * k + 3716392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1858196) = 1062882 * k + 929098 := by
    unfold C
    simp [show (2125764 * k + 1858196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 929098) = 531441 * k + 464549 := by
    unfold C
    simp [show (1062882 * k + 929098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 916591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 916591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_916927 : ∀ k : Nat,
    iterate (1048576 * k + 916927) 32 = 531441 * k + 464719 ∧
      531441 * k + 464719 < 1048576 * k + 916927 := by
  intro k
  have h1 : C (1048576 * k + 916927) = 3145728 * k + 2750782 := by
    unfold C
    simp [show (1048576 * k + 916927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2750782) = 1572864 * k + 1375391 := by
    unfold C
    simp [show (3145728 * k + 2750782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1375391) = 4718592 * k + 4126174 := by
    unfold C
    simp [show (1572864 * k + 1375391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4126174) = 2359296 * k + 2063087 := by
    unfold C
    simp [show (4718592 * k + 4126174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2063087) = 7077888 * k + 6189262 := by
    unfold C
    simp [show (2359296 * k + 2063087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6189262) = 3538944 * k + 3094631 := by
    unfold C
    simp [show (7077888 * k + 6189262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3094631) = 10616832 * k + 9283894 := by
    unfold C
    simp [show (3538944 * k + 3094631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9283894) = 5308416 * k + 4641947 := by
    unfold C
    simp [show (10616832 * k + 9283894) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4641947) = 15925248 * k + 13925842 := by
    unfold C
    simp [show (5308416 * k + 4641947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13925842) = 7962624 * k + 6962921 := by
    unfold C
    simp [show (15925248 * k + 13925842) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6962921) = 23887872 * k + 20888764 := by
    unfold C
    simp [show (7962624 * k + 6962921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20888764) = 11943936 * k + 10444382 := by
    unfold C
    simp [show (23887872 * k + 20888764) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10444382) = 5971968 * k + 5222191 := by
    unfold C
    simp [show (11943936 * k + 10444382) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5222191) = 17915904 * k + 15666574 := by
    unfold C
    simp [show (5971968 * k + 5222191) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15666574) = 8957952 * k + 7833287 := by
    unfold C
    simp [show (17915904 * k + 15666574) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7833287) = 26873856 * k + 23499862 := by
    unfold C
    simp [show (8957952 * k + 7833287) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23499862) = 13436928 * k + 11749931 := by
    unfold C
    simp [show (26873856 * k + 23499862) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11749931) = 40310784 * k + 35249794 := by
    unfold C
    simp [show (13436928 * k + 11749931) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35249794) = 20155392 * k + 17624897 := by
    unfold C
    simp [show (40310784 * k + 35249794) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17624897) = 60466176 * k + 52874692 := by
    unfold C
    simp [show (20155392 * k + 17624897) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 52874692) = 30233088 * k + 26437346 := by
    unfold C
    simp [show (60466176 * k + 52874692) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26437346) = 15116544 * k + 13218673 := by
    unfold C
    simp [show (30233088 * k + 26437346) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13218673) = 45349632 * k + 39656020 := by
    unfold C
    simp [show (15116544 * k + 13218673) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39656020) = 22674816 * k + 19828010 := by
    unfold C
    simp [show (45349632 * k + 39656020) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19828010) = 11337408 * k + 9914005 := by
    unfold C
    simp [show (22674816 * k + 19828010) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9914005) = 34012224 * k + 29742016 := by
    unfold C
    simp [show (11337408 * k + 9914005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 29742016) = 17006112 * k + 14871008 := by
    unfold C
    simp [show (34012224 * k + 29742016) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14871008) = 8503056 * k + 7435504 := by
    unfold C
    simp [show (17006112 * k + 14871008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7435504) = 4251528 * k + 3717752 := by
    unfold C
    simp [show (8503056 * k + 7435504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3717752) = 2125764 * k + 1858876 := by
    unfold C
    simp [show (4251528 * k + 3717752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1858876) = 1062882 * k + 929438 := by
    unfold C
    simp [show (2125764 * k + 1858876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 929438) = 531441 * k + 464719 := by
    unfold C
    simp [show (1062882 * k + 929438) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 916927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 916927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_917595 : ∀ k : Nat,
    iterate (1048576 * k + 917595) 32 = 531441 * k + 465058 ∧
      531441 * k + 465058 < 1048576 * k + 917595 := by
  intro k
  have h1 : C (1048576 * k + 917595) = 3145728 * k + 2752786 := by
    unfold C
    simp [show (1048576 * k + 917595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2752786) = 1572864 * k + 1376393 := by
    unfold C
    simp [show (3145728 * k + 2752786) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1376393) = 4718592 * k + 4129180 := by
    unfold C
    simp [show (1572864 * k + 1376393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4129180) = 2359296 * k + 2064590 := by
    unfold C
    simp [show (4718592 * k + 4129180) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2064590) = 1179648 * k + 1032295 := by
    unfold C
    simp [show (2359296 * k + 2064590) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1032295) = 3538944 * k + 3096886 := by
    unfold C
    simp [show (1179648 * k + 1032295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3096886) = 1769472 * k + 1548443 := by
    unfold C
    simp [show (3538944 * k + 3096886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1548443) = 5308416 * k + 4645330 := by
    unfold C
    simp [show (1769472 * k + 1548443) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4645330) = 2654208 * k + 2322665 := by
    unfold C
    simp [show (5308416 * k + 4645330) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2322665) = 7962624 * k + 6967996 := by
    unfold C
    simp [show (2654208 * k + 2322665) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6967996) = 3981312 * k + 3483998 := by
    unfold C
    simp [show (7962624 * k + 6967996) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3483998) = 1990656 * k + 1741999 := by
    unfold C
    simp [show (3981312 * k + 3483998) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1741999) = 5971968 * k + 5225998 := by
    unfold C
    simp [show (1990656 * k + 1741999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5225998) = 2985984 * k + 2612999 := by
    unfold C
    simp [show (5971968 * k + 5225998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2612999) = 8957952 * k + 7838998 := by
    unfold C
    simp [show (2985984 * k + 2612999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7838998) = 4478976 * k + 3919499 := by
    unfold C
    simp [show (8957952 * k + 7838998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3919499) = 13436928 * k + 11758498 := by
    unfold C
    simp [show (4478976 * k + 3919499) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11758498) = 6718464 * k + 5879249 := by
    unfold C
    simp [show (13436928 * k + 11758498) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5879249) = 20155392 * k + 17637748 := by
    unfold C
    simp [show (6718464 * k + 5879249) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17637748) = 10077696 * k + 8818874 := by
    unfold C
    simp [show (20155392 * k + 17637748) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8818874) = 5038848 * k + 4409437 := by
    unfold C
    simp [show (10077696 * k + 8818874) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4409437) = 15116544 * k + 13228312 := by
    unfold C
    simp [show (5038848 * k + 4409437) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13228312) = 7558272 * k + 6614156 := by
    unfold C
    simp [show (15116544 * k + 13228312) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6614156) = 3779136 * k + 3307078 := by
    unfold C
    simp [show (7558272 * k + 6614156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3307078) = 1889568 * k + 1653539 := by
    unfold C
    simp [show (3779136 * k + 3307078) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1653539) = 5668704 * k + 4960618 := by
    unfold C
    simp [show (1889568 * k + 1653539) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4960618) = 2834352 * k + 2480309 := by
    unfold C
    simp [show (5668704 * k + 4960618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2480309) = 8503056 * k + 7440928 := by
    unfold C
    simp [show (2834352 * k + 2480309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7440928) = 4251528 * k + 3720464 := by
    unfold C
    simp [show (8503056 * k + 7440928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3720464) = 2125764 * k + 1860232 := by
    unfold C
    simp [show (4251528 * k + 3720464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1860232) = 1062882 * k + 930116 := by
    unfold C
    simp [show (2125764 * k + 1860232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 930116) = 531441 * k + 465058 := by
    unfold C
    simp [show (1062882 * k + 930116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 917595) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 917595)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_917607 : ∀ k : Nat,
    iterate (1048576 * k + 917607) 32 = 531441 * k + 465064 ∧
      531441 * k + 465064 < 1048576 * k + 917607 := by
  intro k
  have h1 : C (1048576 * k + 917607) = 3145728 * k + 2752822 := by
    unfold C
    simp [show (1048576 * k + 917607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2752822) = 1572864 * k + 1376411 := by
    unfold C
    simp [show (3145728 * k + 2752822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1376411) = 4718592 * k + 4129234 := by
    unfold C
    simp [show (1572864 * k + 1376411) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4129234) = 2359296 * k + 2064617 := by
    unfold C
    simp [show (4718592 * k + 4129234) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2064617) = 7077888 * k + 6193852 := by
    unfold C
    simp [show (2359296 * k + 2064617) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6193852) = 3538944 * k + 3096926 := by
    unfold C
    simp [show (7077888 * k + 6193852) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3096926) = 1769472 * k + 1548463 := by
    unfold C
    simp [show (3538944 * k + 3096926) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1548463) = 5308416 * k + 4645390 := by
    unfold C
    simp [show (1769472 * k + 1548463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4645390) = 2654208 * k + 2322695 := by
    unfold C
    simp [show (5308416 * k + 4645390) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2322695) = 7962624 * k + 6968086 := by
    unfold C
    simp [show (2654208 * k + 2322695) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6968086) = 3981312 * k + 3484043 := by
    unfold C
    simp [show (7962624 * k + 6968086) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3484043) = 11943936 * k + 10452130 := by
    unfold C
    simp [show (3981312 * k + 3484043) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10452130) = 5971968 * k + 5226065 := by
    unfold C
    simp [show (11943936 * k + 10452130) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5226065) = 17915904 * k + 15678196 := by
    unfold C
    simp [show (5971968 * k + 5226065) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15678196) = 8957952 * k + 7839098 := by
    unfold C
    simp [show (17915904 * k + 15678196) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7839098) = 4478976 * k + 3919549 := by
    unfold C
    simp [show (8957952 * k + 7839098) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3919549) = 13436928 * k + 11758648 := by
    unfold C
    simp [show (4478976 * k + 3919549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11758648) = 6718464 * k + 5879324 := by
    unfold C
    simp [show (13436928 * k + 11758648) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5879324) = 3359232 * k + 2939662 := by
    unfold C
    simp [show (6718464 * k + 5879324) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2939662) = 1679616 * k + 1469831 := by
    unfold C
    simp [show (3359232 * k + 2939662) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1469831) = 5038848 * k + 4409494 := by
    unfold C
    simp [show (1679616 * k + 1469831) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4409494) = 2519424 * k + 2204747 := by
    unfold C
    simp [show (5038848 * k + 4409494) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2204747) = 7558272 * k + 6614242 := by
    unfold C
    simp [show (2519424 * k + 2204747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6614242) = 3779136 * k + 3307121 := by
    unfold C
    simp [show (7558272 * k + 6614242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3307121) = 11337408 * k + 9921364 := by
    unfold C
    simp [show (3779136 * k + 3307121) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9921364) = 5668704 * k + 4960682 := by
    unfold C
    simp [show (11337408 * k + 9921364) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4960682) = 2834352 * k + 2480341 := by
    unfold C
    simp [show (5668704 * k + 4960682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2480341) = 8503056 * k + 7441024 := by
    unfold C
    simp [show (2834352 * k + 2480341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7441024) = 4251528 * k + 3720512 := by
    unfold C
    simp [show (8503056 * k + 7441024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3720512) = 2125764 * k + 1860256 := by
    unfold C
    simp [show (4251528 * k + 3720512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1860256) = 1062882 * k + 930128 := by
    unfold C
    simp [show (2125764 * k + 1860256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 930128) = 531441 * k + 465064 := by
    unfold C
    simp [show (1062882 * k + 930128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 917607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 917607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_918495 : ∀ k : Nat,
    iterate (1048576 * k + 918495) 32 = 531441 * k + 465514 ∧
      531441 * k + 465514 < 1048576 * k + 918495 := by
  intro k
  have h1 : C (1048576 * k + 918495) = 3145728 * k + 2755486 := by
    unfold C
    simp [show (1048576 * k + 918495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2755486) = 1572864 * k + 1377743 := by
    unfold C
    simp [show (3145728 * k + 2755486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1377743) = 4718592 * k + 4133230 := by
    unfold C
    simp [show (1572864 * k + 1377743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4133230) = 2359296 * k + 2066615 := by
    unfold C
    simp [show (4718592 * k + 4133230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2066615) = 7077888 * k + 6199846 := by
    unfold C
    simp [show (2359296 * k + 2066615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6199846) = 3538944 * k + 3099923 := by
    unfold C
    simp [show (7077888 * k + 6199846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3099923) = 10616832 * k + 9299770 := by
    unfold C
    simp [show (3538944 * k + 3099923) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9299770) = 5308416 * k + 4649885 := by
    unfold C
    simp [show (10616832 * k + 9299770) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4649885) = 15925248 * k + 13949656 := by
    unfold C
    simp [show (5308416 * k + 4649885) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13949656) = 7962624 * k + 6974828 := by
    unfold C
    simp [show (15925248 * k + 13949656) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6974828) = 3981312 * k + 3487414 := by
    unfold C
    simp [show (7962624 * k + 6974828) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3487414) = 1990656 * k + 1743707 := by
    unfold C
    simp [show (3981312 * k + 3487414) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1743707) = 5971968 * k + 5231122 := by
    unfold C
    simp [show (1990656 * k + 1743707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5231122) = 2985984 * k + 2615561 := by
    unfold C
    simp [show (5971968 * k + 5231122) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2615561) = 8957952 * k + 7846684 := by
    unfold C
    simp [show (2985984 * k + 2615561) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7846684) = 4478976 * k + 3923342 := by
    unfold C
    simp [show (8957952 * k + 7846684) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3923342) = 2239488 * k + 1961671 := by
    unfold C
    simp [show (4478976 * k + 3923342) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1961671) = 6718464 * k + 5885014 := by
    unfold C
    simp [show (2239488 * k + 1961671) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5885014) = 3359232 * k + 2942507 := by
    unfold C
    simp [show (6718464 * k + 5885014) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2942507) = 10077696 * k + 8827522 := by
    unfold C
    simp [show (3359232 * k + 2942507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8827522) = 5038848 * k + 4413761 := by
    unfold C
    simp [show (10077696 * k + 8827522) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4413761) = 15116544 * k + 13241284 := by
    unfold C
    simp [show (5038848 * k + 4413761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13241284) = 7558272 * k + 6620642 := by
    unfold C
    simp [show (15116544 * k + 13241284) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6620642) = 3779136 * k + 3310321 := by
    unfold C
    simp [show (7558272 * k + 6620642) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3310321) = 11337408 * k + 9930964 := by
    unfold C
    simp [show (3779136 * k + 3310321) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9930964) = 5668704 * k + 4965482 := by
    unfold C
    simp [show (11337408 * k + 9930964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4965482) = 2834352 * k + 2482741 := by
    unfold C
    simp [show (5668704 * k + 4965482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2482741) = 8503056 * k + 7448224 := by
    unfold C
    simp [show (2834352 * k + 2482741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7448224) = 4251528 * k + 3724112 := by
    unfold C
    simp [show (8503056 * k + 7448224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3724112) = 2125764 * k + 1862056 := by
    unfold C
    simp [show (4251528 * k + 3724112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1862056) = 1062882 * k + 931028 := by
    unfold C
    simp [show (2125764 * k + 1862056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 931028) = 531441 * k + 465514 := by
    unfold C
    simp [show (1062882 * k + 931028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 918495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 918495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_918527 : ∀ k : Nat,
    iterate (1048576 * k + 918527) 32 = 531441 * k + 465530 ∧
      531441 * k + 465530 < 1048576 * k + 918527 := by
  intro k
  have h1 : C (1048576 * k + 918527) = 3145728 * k + 2755582 := by
    unfold C
    simp [show (1048576 * k + 918527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2755582) = 1572864 * k + 1377791 := by
    unfold C
    simp [show (3145728 * k + 2755582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1377791) = 4718592 * k + 4133374 := by
    unfold C
    simp [show (1572864 * k + 1377791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4133374) = 2359296 * k + 2066687 := by
    unfold C
    simp [show (4718592 * k + 4133374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2066687) = 7077888 * k + 6200062 := by
    unfold C
    simp [show (2359296 * k + 2066687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6200062) = 3538944 * k + 3100031 := by
    unfold C
    simp [show (7077888 * k + 6200062) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3100031) = 10616832 * k + 9300094 := by
    unfold C
    simp [show (3538944 * k + 3100031) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9300094) = 5308416 * k + 4650047 := by
    unfold C
    simp [show (10616832 * k + 9300094) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4650047) = 15925248 * k + 13950142 := by
    unfold C
    simp [show (5308416 * k + 4650047) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13950142) = 7962624 * k + 6975071 := by
    unfold C
    simp [show (15925248 * k + 13950142) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6975071) = 23887872 * k + 20925214 := by
    unfold C
    simp [show (7962624 * k + 6975071) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20925214) = 11943936 * k + 10462607 := by
    unfold C
    simp [show (23887872 * k + 20925214) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10462607) = 35831808 * k + 31387822 := by
    unfold C
    simp [show (11943936 * k + 10462607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31387822) = 17915904 * k + 15693911 := by
    unfold C
    simp [show (35831808 * k + 31387822) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15693911) = 53747712 * k + 47081734 := by
    unfold C
    simp [show (17915904 * k + 15693911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 47081734) = 26873856 * k + 23540867 := by
    unfold C
    simp [show (53747712 * k + 47081734) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 23540867) = 80621568 * k + 70622602 := by
    unfold C
    simp [show (26873856 * k + 23540867) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 70622602) = 40310784 * k + 35311301 := by
    unfold C
    simp [show (80621568 * k + 70622602) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 35311301) = 120932352 * k + 105933904 := by
    unfold C
    simp [show (40310784 * k + 35311301) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 105933904) = 60466176 * k + 52966952 := by
    unfold C
    simp [show (120932352 * k + 105933904) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 52966952) = 30233088 * k + 26483476 := by
    unfold C
    simp [show (60466176 * k + 52966952) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26483476) = 15116544 * k + 13241738 := by
    unfold C
    simp [show (30233088 * k + 26483476) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13241738) = 7558272 * k + 6620869 := by
    unfold C
    simp [show (15116544 * k + 13241738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6620869) = 22674816 * k + 19862608 := by
    unfold C
    simp [show (7558272 * k + 6620869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19862608) = 11337408 * k + 9931304 := by
    unfold C
    simp [show (22674816 * k + 19862608) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9931304) = 5668704 * k + 4965652 := by
    unfold C
    simp [show (11337408 * k + 9931304) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4965652) = 2834352 * k + 2482826 := by
    unfold C
    simp [show (5668704 * k + 4965652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2482826) = 1417176 * k + 1241413 := by
    unfold C
    simp [show (2834352 * k + 2482826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1241413) = 4251528 * k + 3724240 := by
    unfold C
    simp [show (1417176 * k + 1241413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3724240) = 2125764 * k + 1862120 := by
    unfold C
    simp [show (4251528 * k + 3724240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1862120) = 1062882 * k + 931060 := by
    unfold C
    simp [show (2125764 * k + 1862120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 931060) = 531441 * k + 465530 := by
    unfold C
    simp [show (1062882 * k + 931060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 918527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 918527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_918619 : ∀ k : Nat,
    iterate (1048576 * k + 918619) 32 = 531441 * k + 465577 ∧
      531441 * k + 465577 < 1048576 * k + 918619 := by
  intro k
  have h1 : C (1048576 * k + 918619) = 3145728 * k + 2755858 := by
    unfold C
    simp [show (1048576 * k + 918619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2755858) = 1572864 * k + 1377929 := by
    unfold C
    simp [show (3145728 * k + 2755858) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1377929) = 4718592 * k + 4133788 := by
    unfold C
    simp [show (1572864 * k + 1377929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4133788) = 2359296 * k + 2066894 := by
    unfold C
    simp [show (4718592 * k + 4133788) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2066894) = 1179648 * k + 1033447 := by
    unfold C
    simp [show (2359296 * k + 2066894) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1033447) = 3538944 * k + 3100342 := by
    unfold C
    simp [show (1179648 * k + 1033447) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3100342) = 1769472 * k + 1550171 := by
    unfold C
    simp [show (3538944 * k + 3100342) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1550171) = 5308416 * k + 4650514 := by
    unfold C
    simp [show (1769472 * k + 1550171) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4650514) = 2654208 * k + 2325257 := by
    unfold C
    simp [show (5308416 * k + 4650514) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2325257) = 7962624 * k + 6975772 := by
    unfold C
    simp [show (2654208 * k + 2325257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6975772) = 3981312 * k + 3487886 := by
    unfold C
    simp [show (7962624 * k + 6975772) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3487886) = 1990656 * k + 1743943 := by
    unfold C
    simp [show (3981312 * k + 3487886) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1743943) = 5971968 * k + 5231830 := by
    unfold C
    simp [show (1990656 * k + 1743943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5231830) = 2985984 * k + 2615915 := by
    unfold C
    simp [show (5971968 * k + 5231830) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2615915) = 8957952 * k + 7847746 := by
    unfold C
    simp [show (2985984 * k + 2615915) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7847746) = 4478976 * k + 3923873 := by
    unfold C
    simp [show (8957952 * k + 7847746) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3923873) = 13436928 * k + 11771620 := by
    unfold C
    simp [show (4478976 * k + 3923873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11771620) = 6718464 * k + 5885810 := by
    unfold C
    simp [show (13436928 * k + 11771620) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5885810) = 3359232 * k + 2942905 := by
    unfold C
    simp [show (6718464 * k + 5885810) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2942905) = 10077696 * k + 8828716 := by
    unfold C
    simp [show (3359232 * k + 2942905) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8828716) = 5038848 * k + 4414358 := by
    unfold C
    simp [show (10077696 * k + 8828716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4414358) = 2519424 * k + 2207179 := by
    unfold C
    simp [show (5038848 * k + 4414358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2207179) = 7558272 * k + 6621538 := by
    unfold C
    simp [show (2519424 * k + 2207179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6621538) = 3779136 * k + 3310769 := by
    unfold C
    simp [show (7558272 * k + 6621538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3310769) = 11337408 * k + 9932308 := by
    unfold C
    simp [show (3779136 * k + 3310769) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9932308) = 5668704 * k + 4966154 := by
    unfold C
    simp [show (11337408 * k + 9932308) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4966154) = 2834352 * k + 2483077 := by
    unfold C
    simp [show (5668704 * k + 4966154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2483077) = 8503056 * k + 7449232 := by
    unfold C
    simp [show (2834352 * k + 2483077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7449232) = 4251528 * k + 3724616 := by
    unfold C
    simp [show (8503056 * k + 7449232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3724616) = 2125764 * k + 1862308 := by
    unfold C
    simp [show (4251528 * k + 3724616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1862308) = 1062882 * k + 931154 := by
    unfold C
    simp [show (2125764 * k + 1862308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 931154) = 531441 * k + 465577 := by
    unfold C
    simp [show (1062882 * k + 931154) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 918619) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 918619)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_919195 : ∀ k : Nat,
    iterate (1048576 * k + 919195) 32 = 531441 * k + 465869 ∧
      531441 * k + 465869 < 1048576 * k + 919195 := by
  intro k
  have h1 : C (1048576 * k + 919195) = 3145728 * k + 2757586 := by
    unfold C
    simp [show (1048576 * k + 919195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2757586) = 1572864 * k + 1378793 := by
    unfold C
    simp [show (3145728 * k + 2757586) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1378793) = 4718592 * k + 4136380 := by
    unfold C
    simp [show (1572864 * k + 1378793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4136380) = 2359296 * k + 2068190 := by
    unfold C
    simp [show (4718592 * k + 4136380) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2068190) = 1179648 * k + 1034095 := by
    unfold C
    simp [show (2359296 * k + 2068190) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1034095) = 3538944 * k + 3102286 := by
    unfold C
    simp [show (1179648 * k + 1034095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3102286) = 1769472 * k + 1551143 := by
    unfold C
    simp [show (3538944 * k + 3102286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1551143) = 5308416 * k + 4653430 := by
    unfold C
    simp [show (1769472 * k + 1551143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4653430) = 2654208 * k + 2326715 := by
    unfold C
    simp [show (5308416 * k + 4653430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2326715) = 7962624 * k + 6980146 := by
    unfold C
    simp [show (2654208 * k + 2326715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6980146) = 3981312 * k + 3490073 := by
    unfold C
    simp [show (7962624 * k + 6980146) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3490073) = 11943936 * k + 10470220 := by
    unfold C
    simp [show (3981312 * k + 3490073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10470220) = 5971968 * k + 5235110 := by
    unfold C
    simp [show (11943936 * k + 10470220) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5235110) = 2985984 * k + 2617555 := by
    unfold C
    simp [show (5971968 * k + 5235110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2617555) = 8957952 * k + 7852666 := by
    unfold C
    simp [show (2985984 * k + 2617555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7852666) = 4478976 * k + 3926333 := by
    unfold C
    simp [show (8957952 * k + 7852666) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3926333) = 13436928 * k + 11779000 := by
    unfold C
    simp [show (4478976 * k + 3926333) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11779000) = 6718464 * k + 5889500 := by
    unfold C
    simp [show (13436928 * k + 11779000) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5889500) = 3359232 * k + 2944750 := by
    unfold C
    simp [show (6718464 * k + 5889500) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2944750) = 1679616 * k + 1472375 := by
    unfold C
    simp [show (3359232 * k + 2944750) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1472375) = 5038848 * k + 4417126 := by
    unfold C
    simp [show (1679616 * k + 1472375) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4417126) = 2519424 * k + 2208563 := by
    unfold C
    simp [show (5038848 * k + 4417126) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2208563) = 7558272 * k + 6625690 := by
    unfold C
    simp [show (2519424 * k + 2208563) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6625690) = 3779136 * k + 3312845 := by
    unfold C
    simp [show (7558272 * k + 6625690) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3312845) = 11337408 * k + 9938536 := by
    unfold C
    simp [show (3779136 * k + 3312845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9938536) = 5668704 * k + 4969268 := by
    unfold C
    simp [show (11337408 * k + 9938536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4969268) = 2834352 * k + 2484634 := by
    unfold C
    simp [show (5668704 * k + 4969268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2484634) = 1417176 * k + 1242317 := by
    unfold C
    simp [show (2834352 * k + 2484634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1242317) = 4251528 * k + 3726952 := by
    unfold C
    simp [show (1417176 * k + 1242317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3726952) = 2125764 * k + 1863476 := by
    unfold C
    simp [show (4251528 * k + 3726952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1863476) = 1062882 * k + 931738 := by
    unfold C
    simp [show (2125764 * k + 1863476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 931738) = 531441 * k + 465869 := by
    unfold C
    simp [show (1062882 * k + 931738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 919195) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 919195)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_919663 : ∀ k : Nat,
    iterate (1048576 * k + 919663) 32 = 531441 * k + 466106 ∧
      531441 * k + 466106 < 1048576 * k + 919663 := by
  intro k
  have h1 : C (1048576 * k + 919663) = 3145728 * k + 2758990 := by
    unfold C
    simp [show (1048576 * k + 919663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2758990) = 1572864 * k + 1379495 := by
    unfold C
    simp [show (3145728 * k + 2758990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1379495) = 4718592 * k + 4138486 := by
    unfold C
    simp [show (1572864 * k + 1379495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4138486) = 2359296 * k + 2069243 := by
    unfold C
    simp [show (4718592 * k + 4138486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2069243) = 7077888 * k + 6207730 := by
    unfold C
    simp [show (2359296 * k + 2069243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6207730) = 3538944 * k + 3103865 := by
    unfold C
    simp [show (7077888 * k + 6207730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3103865) = 10616832 * k + 9311596 := by
    unfold C
    simp [show (3538944 * k + 3103865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9311596) = 5308416 * k + 4655798 := by
    unfold C
    simp [show (10616832 * k + 9311596) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4655798) = 2654208 * k + 2327899 := by
    unfold C
    simp [show (5308416 * k + 4655798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2327899) = 7962624 * k + 6983698 := by
    unfold C
    simp [show (2654208 * k + 2327899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6983698) = 3981312 * k + 3491849 := by
    unfold C
    simp [show (7962624 * k + 6983698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3491849) = 11943936 * k + 10475548 := by
    unfold C
    simp [show (3981312 * k + 3491849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10475548) = 5971968 * k + 5237774 := by
    unfold C
    simp [show (11943936 * k + 10475548) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5237774) = 2985984 * k + 2618887 := by
    unfold C
    simp [show (5971968 * k + 5237774) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2618887) = 8957952 * k + 7856662 := by
    unfold C
    simp [show (2985984 * k + 2618887) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7856662) = 4478976 * k + 3928331 := by
    unfold C
    simp [show (8957952 * k + 7856662) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3928331) = 13436928 * k + 11784994 := by
    unfold C
    simp [show (4478976 * k + 3928331) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11784994) = 6718464 * k + 5892497 := by
    unfold C
    simp [show (13436928 * k + 11784994) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5892497) = 20155392 * k + 17677492 := by
    unfold C
    simp [show (6718464 * k + 5892497) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17677492) = 10077696 * k + 8838746 := by
    unfold C
    simp [show (20155392 * k + 17677492) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8838746) = 5038848 * k + 4419373 := by
    unfold C
    simp [show (10077696 * k + 8838746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4419373) = 15116544 * k + 13258120 := by
    unfold C
    simp [show (5038848 * k + 4419373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13258120) = 7558272 * k + 6629060 := by
    unfold C
    simp [show (15116544 * k + 13258120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6629060) = 3779136 * k + 3314530 := by
    unfold C
    simp [show (7558272 * k + 6629060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3314530) = 1889568 * k + 1657265 := by
    unfold C
    simp [show (3779136 * k + 3314530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1657265) = 5668704 * k + 4971796 := by
    unfold C
    simp [show (1889568 * k + 1657265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4971796) = 2834352 * k + 2485898 := by
    unfold C
    simp [show (5668704 * k + 4971796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2485898) = 1417176 * k + 1242949 := by
    unfold C
    simp [show (2834352 * k + 2485898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1242949) = 4251528 * k + 3728848 := by
    unfold C
    simp [show (1417176 * k + 1242949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3728848) = 2125764 * k + 1864424 := by
    unfold C
    simp [show (4251528 * k + 3728848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1864424) = 1062882 * k + 932212 := by
    unfold C
    simp [show (2125764 * k + 1864424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 932212) = 531441 * k + 466106 := by
    unfold C
    simp [show (1062882 * k + 932212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 919663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 919663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_919711 : ∀ k : Nat,
    iterate (1048576 * k + 919711) 32 = 531441 * k + 466130 ∧
      531441 * k + 466130 < 1048576 * k + 919711 := by
  intro k
  have h1 : C (1048576 * k + 919711) = 3145728 * k + 2759134 := by
    unfold C
    simp [show (1048576 * k + 919711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2759134) = 1572864 * k + 1379567 := by
    unfold C
    simp [show (3145728 * k + 2759134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1379567) = 4718592 * k + 4138702 := by
    unfold C
    simp [show (1572864 * k + 1379567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4138702) = 2359296 * k + 2069351 := by
    unfold C
    simp [show (4718592 * k + 4138702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2069351) = 7077888 * k + 6208054 := by
    unfold C
    simp [show (2359296 * k + 2069351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6208054) = 3538944 * k + 3104027 := by
    unfold C
    simp [show (7077888 * k + 6208054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3104027) = 10616832 * k + 9312082 := by
    unfold C
    simp [show (3538944 * k + 3104027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9312082) = 5308416 * k + 4656041 := by
    unfold C
    simp [show (10616832 * k + 9312082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4656041) = 15925248 * k + 13968124 := by
    unfold C
    simp [show (5308416 * k + 4656041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13968124) = 7962624 * k + 6984062 := by
    unfold C
    simp [show (15925248 * k + 13968124) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6984062) = 3981312 * k + 3492031 := by
    unfold C
    simp [show (7962624 * k + 6984062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3492031) = 11943936 * k + 10476094 := by
    unfold C
    simp [show (3981312 * k + 3492031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10476094) = 5971968 * k + 5238047 := by
    unfold C
    simp [show (11943936 * k + 10476094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5238047) = 17915904 * k + 15714142 := by
    unfold C
    simp [show (5971968 * k + 5238047) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15714142) = 8957952 * k + 7857071 := by
    unfold C
    simp [show (17915904 * k + 15714142) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7857071) = 26873856 * k + 23571214 := by
    unfold C
    simp [show (8957952 * k + 7857071) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23571214) = 13436928 * k + 11785607 := by
    unfold C
    simp [show (26873856 * k + 23571214) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11785607) = 40310784 * k + 35356822 := by
    unfold C
    simp [show (13436928 * k + 11785607) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35356822) = 20155392 * k + 17678411 := by
    unfold C
    simp [show (40310784 * k + 35356822) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17678411) = 60466176 * k + 53035234 := by
    unfold C
    simp [show (20155392 * k + 17678411) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53035234) = 30233088 * k + 26517617 := by
    unfold C
    simp [show (60466176 * k + 53035234) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26517617) = 90699264 * k + 79552852 := by
    unfold C
    simp [show (30233088 * k + 26517617) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 79552852) = 45349632 * k + 39776426 := by
    unfold C
    simp [show (90699264 * k + 79552852) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 39776426) = 22674816 * k + 19888213 := by
    unfold C
    simp [show (45349632 * k + 39776426) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19888213) = 68024448 * k + 59664640 := by
    unfold C
    simp [show (22674816 * k + 19888213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 59664640) = 34012224 * k + 29832320 := by
    unfold C
    simp [show (68024448 * k + 59664640) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 29832320) = 17006112 * k + 14916160 := by
    unfold C
    simp [show (34012224 * k + 29832320) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14916160) = 8503056 * k + 7458080 := by
    unfold C
    simp [show (17006112 * k + 14916160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7458080) = 4251528 * k + 3729040 := by
    unfold C
    simp [show (8503056 * k + 7458080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3729040) = 2125764 * k + 1864520 := by
    unfold C
    simp [show (4251528 * k + 3729040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1864520) = 1062882 * k + 932260 := by
    unfold C
    simp [show (2125764 * k + 1864520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 932260) = 531441 * k + 466130 := by
    unfold C
    simp [show (1062882 * k + 932260) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 919711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 919711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard117
