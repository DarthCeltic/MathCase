import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard100

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_780967 : ∀ k : Nat,
    iterate (1048576 * k + 780967) 32 = 531441 * k + 395812 ∧
      531441 * k + 395812 < 1048576 * k + 780967 := by
  intro k
  have h1 : C (1048576 * k + 780967) = 3145728 * k + 2342902 := by
    unfold C
    simp [show (1048576 * k + 780967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2342902) = 1572864 * k + 1171451 := by
    unfold C
    simp [show (3145728 * k + 2342902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1171451) = 4718592 * k + 3514354 := by
    unfold C
    simp [show (1572864 * k + 1171451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3514354) = 2359296 * k + 1757177 := by
    unfold C
    simp [show (4718592 * k + 3514354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1757177) = 7077888 * k + 5271532 := by
    unfold C
    simp [show (2359296 * k + 1757177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5271532) = 3538944 * k + 2635766 := by
    unfold C
    simp [show (7077888 * k + 5271532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2635766) = 1769472 * k + 1317883 := by
    unfold C
    simp [show (3538944 * k + 2635766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1317883) = 5308416 * k + 3953650 := by
    unfold C
    simp [show (1769472 * k + 1317883) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3953650) = 2654208 * k + 1976825 := by
    unfold C
    simp [show (5308416 * k + 3953650) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1976825) = 7962624 * k + 5930476 := by
    unfold C
    simp [show (2654208 * k + 1976825) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5930476) = 3981312 * k + 2965238 := by
    unfold C
    simp [show (7962624 * k + 5930476) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2965238) = 1990656 * k + 1482619 := by
    unfold C
    simp [show (3981312 * k + 2965238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1482619) = 5971968 * k + 4447858 := by
    unfold C
    simp [show (1990656 * k + 1482619) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4447858) = 2985984 * k + 2223929 := by
    unfold C
    simp [show (5971968 * k + 4447858) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2223929) = 8957952 * k + 6671788 := by
    unfold C
    simp [show (2985984 * k + 2223929) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6671788) = 4478976 * k + 3335894 := by
    unfold C
    simp [show (8957952 * k + 6671788) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3335894) = 2239488 * k + 1667947 := by
    unfold C
    simp [show (4478976 * k + 3335894) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1667947) = 6718464 * k + 5003842 := by
    unfold C
    simp [show (2239488 * k + 1667947) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5003842) = 3359232 * k + 2501921 := by
    unfold C
    simp [show (6718464 * k + 5003842) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2501921) = 10077696 * k + 7505764 := by
    unfold C
    simp [show (3359232 * k + 2501921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7505764) = 5038848 * k + 3752882 := by
    unfold C
    simp [show (10077696 * k + 7505764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3752882) = 2519424 * k + 1876441 := by
    unfold C
    simp [show (5038848 * k + 3752882) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1876441) = 7558272 * k + 5629324 := by
    unfold C
    simp [show (2519424 * k + 1876441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5629324) = 3779136 * k + 2814662 := by
    unfold C
    simp [show (7558272 * k + 5629324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2814662) = 1889568 * k + 1407331 := by
    unfold C
    simp [show (3779136 * k + 2814662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1407331) = 5668704 * k + 4221994 := by
    unfold C
    simp [show (1889568 * k + 1407331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4221994) = 2834352 * k + 2110997 := by
    unfold C
    simp [show (5668704 * k + 4221994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2110997) = 8503056 * k + 6332992 := by
    unfold C
    simp [show (2834352 * k + 2110997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6332992) = 4251528 * k + 3166496 := by
    unfold C
    simp [show (8503056 * k + 6332992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3166496) = 2125764 * k + 1583248 := by
    unfold C
    simp [show (4251528 * k + 3166496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1583248) = 1062882 * k + 791624 := by
    unfold C
    simp [show (2125764 * k + 1583248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 791624) = 531441 * k + 395812 := by
    unfold C
    simp [show (1062882 * k + 791624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 780967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 780967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781159 : ∀ k : Nat,
    iterate (1048576 * k + 781159) 32 = 531441 * k + 395909 ∧
      531441 * k + 395909 < 1048576 * k + 781159 := by
  intro k
  have h1 : C (1048576 * k + 781159) = 3145728 * k + 2343478 := by
    unfold C
    simp [show (1048576 * k + 781159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2343478) = 1572864 * k + 1171739 := by
    unfold C
    simp [show (3145728 * k + 2343478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1171739) = 4718592 * k + 3515218 := by
    unfold C
    simp [show (1572864 * k + 1171739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3515218) = 2359296 * k + 1757609 := by
    unfold C
    simp [show (4718592 * k + 3515218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1757609) = 7077888 * k + 5272828 := by
    unfold C
    simp [show (2359296 * k + 1757609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5272828) = 3538944 * k + 2636414 := by
    unfold C
    simp [show (7077888 * k + 5272828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2636414) = 1769472 * k + 1318207 := by
    unfold C
    simp [show (3538944 * k + 2636414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1318207) = 5308416 * k + 3954622 := by
    unfold C
    simp [show (1769472 * k + 1318207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3954622) = 2654208 * k + 1977311 := by
    unfold C
    simp [show (5308416 * k + 3954622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1977311) = 7962624 * k + 5931934 := by
    unfold C
    simp [show (2654208 * k + 1977311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5931934) = 3981312 * k + 2965967 := by
    unfold C
    simp [show (7962624 * k + 5931934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2965967) = 11943936 * k + 8897902 := by
    unfold C
    simp [show (3981312 * k + 2965967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8897902) = 5971968 * k + 4448951 := by
    unfold C
    simp [show (11943936 * k + 8897902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4448951) = 17915904 * k + 13346854 := by
    unfold C
    simp [show (5971968 * k + 4448951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13346854) = 8957952 * k + 6673427 := by
    unfold C
    simp [show (17915904 * k + 13346854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6673427) = 26873856 * k + 20020282 := by
    unfold C
    simp [show (8957952 * k + 6673427) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20020282) = 13436928 * k + 10010141 := by
    unfold C
    simp [show (26873856 * k + 20020282) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10010141) = 40310784 * k + 30030424 := by
    unfold C
    simp [show (13436928 * k + 10010141) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30030424) = 20155392 * k + 15015212 := by
    unfold C
    simp [show (40310784 * k + 30030424) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15015212) = 10077696 * k + 7507606 := by
    unfold C
    simp [show (20155392 * k + 15015212) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7507606) = 5038848 * k + 3753803 := by
    unfold C
    simp [show (10077696 * k + 7507606) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3753803) = 15116544 * k + 11261410 := by
    unfold C
    simp [show (5038848 * k + 3753803) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11261410) = 7558272 * k + 5630705 := by
    unfold C
    simp [show (15116544 * k + 11261410) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5630705) = 22674816 * k + 16892116 := by
    unfold C
    simp [show (7558272 * k + 5630705) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16892116) = 11337408 * k + 8446058 := by
    unfold C
    simp [show (22674816 * k + 16892116) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8446058) = 5668704 * k + 4223029 := by
    unfold C
    simp [show (11337408 * k + 8446058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4223029) = 17006112 * k + 12669088 := by
    unfold C
    simp [show (5668704 * k + 4223029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12669088) = 8503056 * k + 6334544 := by
    unfold C
    simp [show (17006112 * k + 12669088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6334544) = 4251528 * k + 3167272 := by
    unfold C
    simp [show (8503056 * k + 6334544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3167272) = 2125764 * k + 1583636 := by
    unfold C
    simp [show (4251528 * k + 3167272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1583636) = 1062882 * k + 791818 := by
    unfold C
    simp [show (2125764 * k + 1583636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 791818) = 531441 * k + 395909 := by
    unfold C
    simp [show (1062882 * k + 791818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781223 : ∀ k : Nat,
    iterate (1048576 * k + 781223) 32 = 531441 * k + 395942 ∧
      531441 * k + 395942 < 1048576 * k + 781223 := by
  intro k
  have h1 : C (1048576 * k + 781223) = 3145728 * k + 2343670 := by
    unfold C
    simp [show (1048576 * k + 781223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2343670) = 1572864 * k + 1171835 := by
    unfold C
    simp [show (3145728 * k + 2343670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1171835) = 4718592 * k + 3515506 := by
    unfold C
    simp [show (1572864 * k + 1171835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3515506) = 2359296 * k + 1757753 := by
    unfold C
    simp [show (4718592 * k + 3515506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1757753) = 7077888 * k + 5273260 := by
    unfold C
    simp [show (2359296 * k + 1757753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5273260) = 3538944 * k + 2636630 := by
    unfold C
    simp [show (7077888 * k + 5273260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2636630) = 1769472 * k + 1318315 := by
    unfold C
    simp [show (3538944 * k + 2636630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1318315) = 5308416 * k + 3954946 := by
    unfold C
    simp [show (1769472 * k + 1318315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3954946) = 2654208 * k + 1977473 := by
    unfold C
    simp [show (5308416 * k + 3954946) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1977473) = 7962624 * k + 5932420 := by
    unfold C
    simp [show (2654208 * k + 1977473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5932420) = 3981312 * k + 2966210 := by
    unfold C
    simp [show (7962624 * k + 5932420) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2966210) = 1990656 * k + 1483105 := by
    unfold C
    simp [show (3981312 * k + 2966210) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1483105) = 5971968 * k + 4449316 := by
    unfold C
    simp [show (1990656 * k + 1483105) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4449316) = 2985984 * k + 2224658 := by
    unfold C
    simp [show (5971968 * k + 4449316) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2224658) = 1492992 * k + 1112329 := by
    unfold C
    simp [show (2985984 * k + 2224658) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1112329) = 4478976 * k + 3336988 := by
    unfold C
    simp [show (1492992 * k + 1112329) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3336988) = 2239488 * k + 1668494 := by
    unfold C
    simp [show (4478976 * k + 3336988) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1668494) = 1119744 * k + 834247 := by
    unfold C
    simp [show (2239488 * k + 1668494) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 834247) = 3359232 * k + 2502742 := by
    unfold C
    simp [show (1119744 * k + 834247) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2502742) = 1679616 * k + 1251371 := by
    unfold C
    simp [show (3359232 * k + 2502742) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1251371) = 5038848 * k + 3754114 := by
    unfold C
    simp [show (1679616 * k + 1251371) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3754114) = 2519424 * k + 1877057 := by
    unfold C
    simp [show (5038848 * k + 3754114) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1877057) = 7558272 * k + 5631172 := by
    unfold C
    simp [show (2519424 * k + 1877057) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5631172) = 3779136 * k + 2815586 := by
    unfold C
    simp [show (7558272 * k + 5631172) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2815586) = 1889568 * k + 1407793 := by
    unfold C
    simp [show (3779136 * k + 2815586) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1407793) = 5668704 * k + 4223380 := by
    unfold C
    simp [show (1889568 * k + 1407793) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4223380) = 2834352 * k + 2111690 := by
    unfold C
    simp [show (5668704 * k + 4223380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2111690) = 1417176 * k + 1055845 := by
    unfold C
    simp [show (2834352 * k + 2111690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1055845) = 4251528 * k + 3167536 := by
    unfold C
    simp [show (1417176 * k + 1055845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3167536) = 2125764 * k + 1583768 := by
    unfold C
    simp [show (4251528 * k + 3167536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1583768) = 1062882 * k + 791884 := by
    unfold C
    simp [show (2125764 * k + 1583768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 791884) = 531441 * k + 395942 := by
    unfold C
    simp [show (1062882 * k + 791884) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781295 : ∀ k : Nat,
    iterate (1048576 * k + 781295) 32 = 531441 * k + 395978 ∧
      531441 * k + 395978 < 1048576 * k + 781295 := by
  intro k
  have h1 : C (1048576 * k + 781295) = 3145728 * k + 2343886 := by
    unfold C
    simp [show (1048576 * k + 781295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2343886) = 1572864 * k + 1171943 := by
    unfold C
    simp [show (3145728 * k + 2343886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1171943) = 4718592 * k + 3515830 := by
    unfold C
    simp [show (1572864 * k + 1171943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3515830) = 2359296 * k + 1757915 := by
    unfold C
    simp [show (4718592 * k + 3515830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1757915) = 7077888 * k + 5273746 := by
    unfold C
    simp [show (2359296 * k + 1757915) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5273746) = 3538944 * k + 2636873 := by
    unfold C
    simp [show (7077888 * k + 5273746) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2636873) = 10616832 * k + 7910620 := by
    unfold C
    simp [show (3538944 * k + 2636873) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7910620) = 5308416 * k + 3955310 := by
    unfold C
    simp [show (10616832 * k + 7910620) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3955310) = 2654208 * k + 1977655 := by
    unfold C
    simp [show (5308416 * k + 3955310) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1977655) = 7962624 * k + 5932966 := by
    unfold C
    simp [show (2654208 * k + 1977655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5932966) = 3981312 * k + 2966483 := by
    unfold C
    simp [show (7962624 * k + 5932966) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2966483) = 11943936 * k + 8899450 := by
    unfold C
    simp [show (3981312 * k + 2966483) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8899450) = 5971968 * k + 4449725 := by
    unfold C
    simp [show (11943936 * k + 8899450) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4449725) = 17915904 * k + 13349176 := by
    unfold C
    simp [show (5971968 * k + 4449725) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13349176) = 8957952 * k + 6674588 := by
    unfold C
    simp [show (17915904 * k + 13349176) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6674588) = 4478976 * k + 3337294 := by
    unfold C
    simp [show (8957952 * k + 6674588) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3337294) = 2239488 * k + 1668647 := by
    unfold C
    simp [show (4478976 * k + 3337294) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1668647) = 6718464 * k + 5005942 := by
    unfold C
    simp [show (2239488 * k + 1668647) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5005942) = 3359232 * k + 2502971 := by
    unfold C
    simp [show (6718464 * k + 5005942) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2502971) = 10077696 * k + 7508914 := by
    unfold C
    simp [show (3359232 * k + 2502971) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7508914) = 5038848 * k + 3754457 := by
    unfold C
    simp [show (10077696 * k + 7508914) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3754457) = 15116544 * k + 11263372 := by
    unfold C
    simp [show (5038848 * k + 3754457) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11263372) = 7558272 * k + 5631686 := by
    unfold C
    simp [show (15116544 * k + 11263372) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5631686) = 3779136 * k + 2815843 := by
    unfold C
    simp [show (7558272 * k + 5631686) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2815843) = 11337408 * k + 8447530 := by
    unfold C
    simp [show (3779136 * k + 2815843) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8447530) = 5668704 * k + 4223765 := by
    unfold C
    simp [show (11337408 * k + 8447530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4223765) = 17006112 * k + 12671296 := by
    unfold C
    simp [show (5668704 * k + 4223765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12671296) = 8503056 * k + 6335648 := by
    unfold C
    simp [show (17006112 * k + 12671296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6335648) = 4251528 * k + 3167824 := by
    unfold C
    simp [show (8503056 * k + 6335648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3167824) = 2125764 * k + 1583912 := by
    unfold C
    simp [show (4251528 * k + 3167824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1583912) = 1062882 * k + 791956 := by
    unfold C
    simp [show (2125764 * k + 1583912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 791956) = 531441 * k + 395978 := by
    unfold C
    simp [show (1062882 * k + 791956) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781471 : ∀ k : Nat,
    iterate (1048576 * k + 781471) 32 = 531441 * k + 396067 ∧
      531441 * k + 396067 < 1048576 * k + 781471 := by
  intro k
  have h1 : C (1048576 * k + 781471) = 3145728 * k + 2344414 := by
    unfold C
    simp [show (1048576 * k + 781471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2344414) = 1572864 * k + 1172207 := by
    unfold C
    simp [show (3145728 * k + 2344414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1172207) = 4718592 * k + 3516622 := by
    unfold C
    simp [show (1572864 * k + 1172207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3516622) = 2359296 * k + 1758311 := by
    unfold C
    simp [show (4718592 * k + 3516622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1758311) = 7077888 * k + 5274934 := by
    unfold C
    simp [show (2359296 * k + 1758311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5274934) = 3538944 * k + 2637467 := by
    unfold C
    simp [show (7077888 * k + 5274934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2637467) = 10616832 * k + 7912402 := by
    unfold C
    simp [show (3538944 * k + 2637467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7912402) = 5308416 * k + 3956201 := by
    unfold C
    simp [show (10616832 * k + 7912402) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3956201) = 15925248 * k + 11868604 := by
    unfold C
    simp [show (5308416 * k + 3956201) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11868604) = 7962624 * k + 5934302 := by
    unfold C
    simp [show (15925248 * k + 11868604) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5934302) = 3981312 * k + 2967151 := by
    unfold C
    simp [show (7962624 * k + 5934302) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2967151) = 11943936 * k + 8901454 := by
    unfold C
    simp [show (3981312 * k + 2967151) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8901454) = 5971968 * k + 4450727 := by
    unfold C
    simp [show (11943936 * k + 8901454) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4450727) = 17915904 * k + 13352182 := by
    unfold C
    simp [show (5971968 * k + 4450727) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13352182) = 8957952 * k + 6676091 := by
    unfold C
    simp [show (17915904 * k + 13352182) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6676091) = 26873856 * k + 20028274 := by
    unfold C
    simp [show (8957952 * k + 6676091) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20028274) = 13436928 * k + 10014137 := by
    unfold C
    simp [show (26873856 * k + 20028274) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10014137) = 40310784 * k + 30042412 := by
    unfold C
    simp [show (13436928 * k + 10014137) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30042412) = 20155392 * k + 15021206 := by
    unfold C
    simp [show (40310784 * k + 30042412) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15021206) = 10077696 * k + 7510603 := by
    unfold C
    simp [show (20155392 * k + 15021206) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7510603) = 30233088 * k + 22531810 := by
    unfold C
    simp [show (10077696 * k + 7510603) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22531810) = 15116544 * k + 11265905 := by
    unfold C
    simp [show (30233088 * k + 22531810) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11265905) = 45349632 * k + 33797716 := by
    unfold C
    simp [show (15116544 * k + 11265905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 33797716) = 22674816 * k + 16898858 := by
    unfold C
    simp [show (45349632 * k + 33797716) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16898858) = 11337408 * k + 8449429 := by
    unfold C
    simp [show (22674816 * k + 16898858) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8449429) = 34012224 * k + 25348288 := by
    unfold C
    simp [show (11337408 * k + 8449429) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25348288) = 17006112 * k + 12674144 := by
    unfold C
    simp [show (34012224 * k + 25348288) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12674144) = 8503056 * k + 6337072 := by
    unfold C
    simp [show (17006112 * k + 12674144) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6337072) = 4251528 * k + 3168536 := by
    unfold C
    simp [show (8503056 * k + 6337072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3168536) = 2125764 * k + 1584268 := by
    unfold C
    simp [show (4251528 * k + 3168536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1584268) = 1062882 * k + 792134 := by
    unfold C
    simp [show (2125764 * k + 1584268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 792134) = 531441 * k + 396067 := by
    unfold C
    simp [show (1062882 * k + 792134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781543 : ∀ k : Nat,
    iterate (1048576 * k + 781543) 32 = 531441 * k + 396104 ∧
      531441 * k + 396104 < 1048576 * k + 781543 := by
  intro k
  have h1 : C (1048576 * k + 781543) = 3145728 * k + 2344630 := by
    unfold C
    simp [show (1048576 * k + 781543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2344630) = 1572864 * k + 1172315 := by
    unfold C
    simp [show (3145728 * k + 2344630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1172315) = 4718592 * k + 3516946 := by
    unfold C
    simp [show (1572864 * k + 1172315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3516946) = 2359296 * k + 1758473 := by
    unfold C
    simp [show (4718592 * k + 3516946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1758473) = 7077888 * k + 5275420 := by
    unfold C
    simp [show (2359296 * k + 1758473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5275420) = 3538944 * k + 2637710 := by
    unfold C
    simp [show (7077888 * k + 5275420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2637710) = 1769472 * k + 1318855 := by
    unfold C
    simp [show (3538944 * k + 2637710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1318855) = 5308416 * k + 3956566 := by
    unfold C
    simp [show (1769472 * k + 1318855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3956566) = 2654208 * k + 1978283 := by
    unfold C
    simp [show (5308416 * k + 3956566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1978283) = 7962624 * k + 5934850 := by
    unfold C
    simp [show (2654208 * k + 1978283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5934850) = 3981312 * k + 2967425 := by
    unfold C
    simp [show (7962624 * k + 5934850) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2967425) = 11943936 * k + 8902276 := by
    unfold C
    simp [show (3981312 * k + 2967425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8902276) = 5971968 * k + 4451138 := by
    unfold C
    simp [show (11943936 * k + 8902276) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4451138) = 2985984 * k + 2225569 := by
    unfold C
    simp [show (5971968 * k + 4451138) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2225569) = 8957952 * k + 6676708 := by
    unfold C
    simp [show (2985984 * k + 2225569) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6676708) = 4478976 * k + 3338354 := by
    unfold C
    simp [show (8957952 * k + 6676708) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3338354) = 2239488 * k + 1669177 := by
    unfold C
    simp [show (4478976 * k + 3338354) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1669177) = 6718464 * k + 5007532 := by
    unfold C
    simp [show (2239488 * k + 1669177) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5007532) = 3359232 * k + 2503766 := by
    unfold C
    simp [show (6718464 * k + 5007532) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2503766) = 1679616 * k + 1251883 := by
    unfold C
    simp [show (3359232 * k + 2503766) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1251883) = 5038848 * k + 3755650 := by
    unfold C
    simp [show (1679616 * k + 1251883) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3755650) = 2519424 * k + 1877825 := by
    unfold C
    simp [show (5038848 * k + 3755650) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1877825) = 7558272 * k + 5633476 := by
    unfold C
    simp [show (2519424 * k + 1877825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5633476) = 3779136 * k + 2816738 := by
    unfold C
    simp [show (7558272 * k + 5633476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2816738) = 1889568 * k + 1408369 := by
    unfold C
    simp [show (3779136 * k + 2816738) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1408369) = 5668704 * k + 4225108 := by
    unfold C
    simp [show (1889568 * k + 1408369) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4225108) = 2834352 * k + 2112554 := by
    unfold C
    simp [show (5668704 * k + 4225108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2112554) = 1417176 * k + 1056277 := by
    unfold C
    simp [show (2834352 * k + 2112554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1056277) = 4251528 * k + 3168832 := by
    unfold C
    simp [show (1417176 * k + 1056277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3168832) = 2125764 * k + 1584416 := by
    unfold C
    simp [show (4251528 * k + 3168832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1584416) = 1062882 * k + 792208 := by
    unfold C
    simp [show (2125764 * k + 1584416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 792208) = 531441 * k + 396104 := by
    unfold C
    simp [show (1062882 * k + 792208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_781855 : ∀ k : Nat,
    iterate (1048576 * k + 781855) 32 = 531441 * k + 396262 ∧
      531441 * k + 396262 < 1048576 * k + 781855 := by
  intro k
  have h1 : C (1048576 * k + 781855) = 3145728 * k + 2345566 := by
    unfold C
    simp [show (1048576 * k + 781855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2345566) = 1572864 * k + 1172783 := by
    unfold C
    simp [show (3145728 * k + 2345566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1172783) = 4718592 * k + 3518350 := by
    unfold C
    simp [show (1572864 * k + 1172783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3518350) = 2359296 * k + 1759175 := by
    unfold C
    simp [show (4718592 * k + 3518350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1759175) = 7077888 * k + 5277526 := by
    unfold C
    simp [show (2359296 * k + 1759175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5277526) = 3538944 * k + 2638763 := by
    unfold C
    simp [show (7077888 * k + 5277526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2638763) = 10616832 * k + 7916290 := by
    unfold C
    simp [show (3538944 * k + 2638763) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7916290) = 5308416 * k + 3958145 := by
    unfold C
    simp [show (10616832 * k + 7916290) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3958145) = 15925248 * k + 11874436 := by
    unfold C
    simp [show (5308416 * k + 3958145) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11874436) = 7962624 * k + 5937218 := by
    unfold C
    simp [show (15925248 * k + 11874436) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5937218) = 3981312 * k + 2968609 := by
    unfold C
    simp [show (7962624 * k + 5937218) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2968609) = 11943936 * k + 8905828 := by
    unfold C
    simp [show (3981312 * k + 2968609) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8905828) = 5971968 * k + 4452914 := by
    unfold C
    simp [show (11943936 * k + 8905828) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4452914) = 2985984 * k + 2226457 := by
    unfold C
    simp [show (5971968 * k + 4452914) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2226457) = 8957952 * k + 6679372 := by
    unfold C
    simp [show (2985984 * k + 2226457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6679372) = 4478976 * k + 3339686 := by
    unfold C
    simp [show (8957952 * k + 6679372) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3339686) = 2239488 * k + 1669843 := by
    unfold C
    simp [show (4478976 * k + 3339686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1669843) = 6718464 * k + 5009530 := by
    unfold C
    simp [show (2239488 * k + 1669843) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5009530) = 3359232 * k + 2504765 := by
    unfold C
    simp [show (6718464 * k + 5009530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2504765) = 10077696 * k + 7514296 := by
    unfold C
    simp [show (3359232 * k + 2504765) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7514296) = 5038848 * k + 3757148 := by
    unfold C
    simp [show (10077696 * k + 7514296) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3757148) = 2519424 * k + 1878574 := by
    unfold C
    simp [show (5038848 * k + 3757148) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1878574) = 1259712 * k + 939287 := by
    unfold C
    simp [show (2519424 * k + 1878574) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 939287) = 3779136 * k + 2817862 := by
    unfold C
    simp [show (1259712 * k + 939287) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2817862) = 1889568 * k + 1408931 := by
    unfold C
    simp [show (3779136 * k + 2817862) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1408931) = 5668704 * k + 4226794 := by
    unfold C
    simp [show (1889568 * k + 1408931) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4226794) = 2834352 * k + 2113397 := by
    unfold C
    simp [show (5668704 * k + 4226794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2113397) = 8503056 * k + 6340192 := by
    unfold C
    simp [show (2834352 * k + 2113397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6340192) = 4251528 * k + 3170096 := by
    unfold C
    simp [show (8503056 * k + 6340192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3170096) = 2125764 * k + 1585048 := by
    unfold C
    simp [show (4251528 * k + 3170096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1585048) = 1062882 * k + 792524 := by
    unfold C
    simp [show (2125764 * k + 1585048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 792524) = 531441 * k + 396262 := by
    unfold C
    simp [show (1062882 * k + 792524) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 781855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 781855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_782015 : ∀ k : Nat,
    iterate (1048576 * k + 782015) 32 = 531441 * k + 396343 ∧
      531441 * k + 396343 < 1048576 * k + 782015 := by
  intro k
  have h1 : C (1048576 * k + 782015) = 3145728 * k + 2346046 := by
    unfold C
    simp [show (1048576 * k + 782015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2346046) = 1572864 * k + 1173023 := by
    unfold C
    simp [show (3145728 * k + 2346046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1173023) = 4718592 * k + 3519070 := by
    unfold C
    simp [show (1572864 * k + 1173023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3519070) = 2359296 * k + 1759535 := by
    unfold C
    simp [show (4718592 * k + 3519070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1759535) = 7077888 * k + 5278606 := by
    unfold C
    simp [show (2359296 * k + 1759535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5278606) = 3538944 * k + 2639303 := by
    unfold C
    simp [show (7077888 * k + 5278606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2639303) = 10616832 * k + 7917910 := by
    unfold C
    simp [show (3538944 * k + 2639303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7917910) = 5308416 * k + 3958955 := by
    unfold C
    simp [show (10616832 * k + 7917910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3958955) = 15925248 * k + 11876866 := by
    unfold C
    simp [show (5308416 * k + 3958955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11876866) = 7962624 * k + 5938433 := by
    unfold C
    simp [show (15925248 * k + 11876866) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5938433) = 23887872 * k + 17815300 := by
    unfold C
    simp [show (7962624 * k + 5938433) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17815300) = 11943936 * k + 8907650 := by
    unfold C
    simp [show (23887872 * k + 17815300) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8907650) = 5971968 * k + 4453825 := by
    unfold C
    simp [show (11943936 * k + 8907650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4453825) = 17915904 * k + 13361476 := by
    unfold C
    simp [show (5971968 * k + 4453825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13361476) = 8957952 * k + 6680738 := by
    unfold C
    simp [show (17915904 * k + 13361476) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6680738) = 4478976 * k + 3340369 := by
    unfold C
    simp [show (8957952 * k + 6680738) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3340369) = 13436928 * k + 10021108 := by
    unfold C
    simp [show (4478976 * k + 3340369) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10021108) = 6718464 * k + 5010554 := by
    unfold C
    simp [show (13436928 * k + 10021108) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5010554) = 3359232 * k + 2505277 := by
    unfold C
    simp [show (6718464 * k + 5010554) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2505277) = 10077696 * k + 7515832 := by
    unfold C
    simp [show (3359232 * k + 2505277) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7515832) = 5038848 * k + 3757916 := by
    unfold C
    simp [show (10077696 * k + 7515832) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3757916) = 2519424 * k + 1878958 := by
    unfold C
    simp [show (5038848 * k + 3757916) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1878958) = 1259712 * k + 939479 := by
    unfold C
    simp [show (2519424 * k + 1878958) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 939479) = 3779136 * k + 2818438 := by
    unfold C
    simp [show (1259712 * k + 939479) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2818438) = 1889568 * k + 1409219 := by
    unfold C
    simp [show (3779136 * k + 2818438) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1409219) = 5668704 * k + 4227658 := by
    unfold C
    simp [show (1889568 * k + 1409219) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4227658) = 2834352 * k + 2113829 := by
    unfold C
    simp [show (5668704 * k + 4227658) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2113829) = 8503056 * k + 6341488 := by
    unfold C
    simp [show (2834352 * k + 2113829) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6341488) = 4251528 * k + 3170744 := by
    unfold C
    simp [show (8503056 * k + 6341488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3170744) = 2125764 * k + 1585372 := by
    unfold C
    simp [show (4251528 * k + 3170744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1585372) = 1062882 * k + 792686 := by
    unfold C
    simp [show (2125764 * k + 1585372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 792686) = 531441 * k + 396343 := by
    unfold C
    simp [show (1062882 * k + 792686) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 782015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 782015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_782111 : ∀ k : Nat,
    iterate (1048576 * k + 782111) 32 = 531441 * k + 396392 ∧
      531441 * k + 396392 < 1048576 * k + 782111 := by
  intro k
  have h1 : C (1048576 * k + 782111) = 3145728 * k + 2346334 := by
    unfold C
    simp [show (1048576 * k + 782111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2346334) = 1572864 * k + 1173167 := by
    unfold C
    simp [show (3145728 * k + 2346334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1173167) = 4718592 * k + 3519502 := by
    unfold C
    simp [show (1572864 * k + 1173167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3519502) = 2359296 * k + 1759751 := by
    unfold C
    simp [show (4718592 * k + 3519502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1759751) = 7077888 * k + 5279254 := by
    unfold C
    simp [show (2359296 * k + 1759751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5279254) = 3538944 * k + 2639627 := by
    unfold C
    simp [show (7077888 * k + 5279254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2639627) = 10616832 * k + 7918882 := by
    unfold C
    simp [show (3538944 * k + 2639627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7918882) = 5308416 * k + 3959441 := by
    unfold C
    simp [show (10616832 * k + 7918882) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3959441) = 15925248 * k + 11878324 := by
    unfold C
    simp [show (5308416 * k + 3959441) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11878324) = 7962624 * k + 5939162 := by
    unfold C
    simp [show (15925248 * k + 11878324) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5939162) = 3981312 * k + 2969581 := by
    unfold C
    simp [show (7962624 * k + 5939162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2969581) = 11943936 * k + 8908744 := by
    unfold C
    simp [show (3981312 * k + 2969581) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8908744) = 5971968 * k + 4454372 := by
    unfold C
    simp [show (11943936 * k + 8908744) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4454372) = 2985984 * k + 2227186 := by
    unfold C
    simp [show (5971968 * k + 4454372) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2227186) = 1492992 * k + 1113593 := by
    unfold C
    simp [show (2985984 * k + 2227186) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1113593) = 4478976 * k + 3340780 := by
    unfold C
    simp [show (1492992 * k + 1113593) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3340780) = 2239488 * k + 1670390 := by
    unfold C
    simp [show (4478976 * k + 3340780) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1670390) = 1119744 * k + 835195 := by
    unfold C
    simp [show (2239488 * k + 1670390) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 835195) = 3359232 * k + 2505586 := by
    unfold C
    simp [show (1119744 * k + 835195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2505586) = 1679616 * k + 1252793 := by
    unfold C
    simp [show (3359232 * k + 2505586) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1252793) = 5038848 * k + 3758380 := by
    unfold C
    simp [show (1679616 * k + 1252793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3758380) = 2519424 * k + 1879190 := by
    unfold C
    simp [show (5038848 * k + 3758380) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1879190) = 1259712 * k + 939595 := by
    unfold C
    simp [show (2519424 * k + 1879190) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 939595) = 3779136 * k + 2818786 := by
    unfold C
    simp [show (1259712 * k + 939595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2818786) = 1889568 * k + 1409393 := by
    unfold C
    simp [show (3779136 * k + 2818786) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1409393) = 5668704 * k + 4228180 := by
    unfold C
    simp [show (1889568 * k + 1409393) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4228180) = 2834352 * k + 2114090 := by
    unfold C
    simp [show (5668704 * k + 4228180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2114090) = 1417176 * k + 1057045 := by
    unfold C
    simp [show (2834352 * k + 2114090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1057045) = 4251528 * k + 3171136 := by
    unfold C
    simp [show (1417176 * k + 1057045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3171136) = 2125764 * k + 1585568 := by
    unfold C
    simp [show (4251528 * k + 3171136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1585568) = 1062882 * k + 792784 := by
    unfold C
    simp [show (2125764 * k + 1585568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 792784) = 531441 * k + 396392 := by
    unfold C
    simp [show (1062882 * k + 792784) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 782111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 782111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_782591 : ∀ k : Nat,
    iterate (1048576 * k + 782591) 32 = 531441 * k + 396635 ∧
      531441 * k + 396635 < 1048576 * k + 782591 := by
  intro k
  have h1 : C (1048576 * k + 782591) = 3145728 * k + 2347774 := by
    unfold C
    simp [show (1048576 * k + 782591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2347774) = 1572864 * k + 1173887 := by
    unfold C
    simp [show (3145728 * k + 2347774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1173887) = 4718592 * k + 3521662 := by
    unfold C
    simp [show (1572864 * k + 1173887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3521662) = 2359296 * k + 1760831 := by
    unfold C
    simp [show (4718592 * k + 3521662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1760831) = 7077888 * k + 5282494 := by
    unfold C
    simp [show (2359296 * k + 1760831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5282494) = 3538944 * k + 2641247 := by
    unfold C
    simp [show (7077888 * k + 5282494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2641247) = 10616832 * k + 7923742 := by
    unfold C
    simp [show (3538944 * k + 2641247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7923742) = 5308416 * k + 3961871 := by
    unfold C
    simp [show (10616832 * k + 7923742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3961871) = 15925248 * k + 11885614 := by
    unfold C
    simp [show (5308416 * k + 3961871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11885614) = 7962624 * k + 5942807 := by
    unfold C
    simp [show (15925248 * k + 11885614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5942807) = 23887872 * k + 17828422 := by
    unfold C
    simp [show (7962624 * k + 5942807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17828422) = 11943936 * k + 8914211 := by
    unfold C
    simp [show (23887872 * k + 17828422) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8914211) = 35831808 * k + 26742634 := by
    unfold C
    simp [show (11943936 * k + 8914211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26742634) = 17915904 * k + 13371317 := by
    unfold C
    simp [show (35831808 * k + 26742634) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13371317) = 53747712 * k + 40113952 := by
    unfold C
    simp [show (17915904 * k + 13371317) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 40113952) = 26873856 * k + 20056976 := by
    unfold C
    simp [show (53747712 * k + 40113952) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 20056976) = 13436928 * k + 10028488 := by
    unfold C
    simp [show (26873856 * k + 20056976) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10028488) = 6718464 * k + 5014244 := by
    unfold C
    simp [show (13436928 * k + 10028488) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5014244) = 3359232 * k + 2507122 := by
    unfold C
    simp [show (6718464 * k + 5014244) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2507122) = 1679616 * k + 1253561 := by
    unfold C
    simp [show (3359232 * k + 2507122) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1253561) = 5038848 * k + 3760684 := by
    unfold C
    simp [show (1679616 * k + 1253561) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3760684) = 2519424 * k + 1880342 := by
    unfold C
    simp [show (5038848 * k + 3760684) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1880342) = 1259712 * k + 940171 := by
    unfold C
    simp [show (2519424 * k + 1880342) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 940171) = 3779136 * k + 2820514 := by
    unfold C
    simp [show (1259712 * k + 940171) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2820514) = 1889568 * k + 1410257 := by
    unfold C
    simp [show (3779136 * k + 2820514) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1410257) = 5668704 * k + 4230772 := by
    unfold C
    simp [show (1889568 * k + 1410257) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4230772) = 2834352 * k + 2115386 := by
    unfold C
    simp [show (5668704 * k + 4230772) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2115386) = 1417176 * k + 1057693 := by
    unfold C
    simp [show (2834352 * k + 2115386) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1057693) = 4251528 * k + 3173080 := by
    unfold C
    simp [show (1417176 * k + 1057693) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3173080) = 2125764 * k + 1586540 := by
    unfold C
    simp [show (4251528 * k + 3173080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1586540) = 1062882 * k + 793270 := by
    unfold C
    simp [show (2125764 * k + 1586540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 793270) = 531441 * k + 396635 := by
    unfold C
    simp [show (1062882 * k + 793270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 782591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 782591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_782751 : ∀ k : Nat,
    iterate (1048576 * k + 782751) 32 = 531441 * k + 396716 ∧
      531441 * k + 396716 < 1048576 * k + 782751 := by
  intro k
  have h1 : C (1048576 * k + 782751) = 3145728 * k + 2348254 := by
    unfold C
    simp [show (1048576 * k + 782751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2348254) = 1572864 * k + 1174127 := by
    unfold C
    simp [show (3145728 * k + 2348254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1174127) = 4718592 * k + 3522382 := by
    unfold C
    simp [show (1572864 * k + 1174127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3522382) = 2359296 * k + 1761191 := by
    unfold C
    simp [show (4718592 * k + 3522382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1761191) = 7077888 * k + 5283574 := by
    unfold C
    simp [show (2359296 * k + 1761191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5283574) = 3538944 * k + 2641787 := by
    unfold C
    simp [show (7077888 * k + 5283574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2641787) = 10616832 * k + 7925362 := by
    unfold C
    simp [show (3538944 * k + 2641787) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7925362) = 5308416 * k + 3962681 := by
    unfold C
    simp [show (10616832 * k + 7925362) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3962681) = 15925248 * k + 11888044 := by
    unfold C
    simp [show (5308416 * k + 3962681) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11888044) = 7962624 * k + 5944022 := by
    unfold C
    simp [show (15925248 * k + 11888044) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5944022) = 3981312 * k + 2972011 := by
    unfold C
    simp [show (7962624 * k + 5944022) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2972011) = 11943936 * k + 8916034 := by
    unfold C
    simp [show (3981312 * k + 2972011) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8916034) = 5971968 * k + 4458017 := by
    unfold C
    simp [show (11943936 * k + 8916034) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4458017) = 17915904 * k + 13374052 := by
    unfold C
    simp [show (5971968 * k + 4458017) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13374052) = 8957952 * k + 6687026 := by
    unfold C
    simp [show (17915904 * k + 13374052) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6687026) = 4478976 * k + 3343513 := by
    unfold C
    simp [show (8957952 * k + 6687026) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3343513) = 13436928 * k + 10030540 := by
    unfold C
    simp [show (4478976 * k + 3343513) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10030540) = 6718464 * k + 5015270 := by
    unfold C
    simp [show (13436928 * k + 10030540) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5015270) = 3359232 * k + 2507635 := by
    unfold C
    simp [show (6718464 * k + 5015270) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2507635) = 10077696 * k + 7522906 := by
    unfold C
    simp [show (3359232 * k + 2507635) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7522906) = 5038848 * k + 3761453 := by
    unfold C
    simp [show (10077696 * k + 7522906) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3761453) = 15116544 * k + 11284360 := by
    unfold C
    simp [show (5038848 * k + 3761453) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11284360) = 7558272 * k + 5642180 := by
    unfold C
    simp [show (15116544 * k + 11284360) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5642180) = 3779136 * k + 2821090 := by
    unfold C
    simp [show (7558272 * k + 5642180) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2821090) = 1889568 * k + 1410545 := by
    unfold C
    simp [show (3779136 * k + 2821090) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1410545) = 5668704 * k + 4231636 := by
    unfold C
    simp [show (1889568 * k + 1410545) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4231636) = 2834352 * k + 2115818 := by
    unfold C
    simp [show (5668704 * k + 4231636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2115818) = 1417176 * k + 1057909 := by
    unfold C
    simp [show (2834352 * k + 2115818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1057909) = 4251528 * k + 3173728 := by
    unfold C
    simp [show (1417176 * k + 1057909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3173728) = 2125764 * k + 1586864 := by
    unfold C
    simp [show (4251528 * k + 3173728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1586864) = 1062882 * k + 793432 := by
    unfold C
    simp [show (2125764 * k + 1586864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 793432) = 531441 * k + 396716 := by
    unfold C
    simp [show (1062882 * k + 793432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 782751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 782751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_782879 : ∀ k : Nat,
    iterate (1048576 * k + 782879) 32 = 531441 * k + 396781 ∧
      531441 * k + 396781 < 1048576 * k + 782879 := by
  intro k
  have h1 : C (1048576 * k + 782879) = 3145728 * k + 2348638 := by
    unfold C
    simp [show (1048576 * k + 782879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2348638) = 1572864 * k + 1174319 := by
    unfold C
    simp [show (3145728 * k + 2348638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1174319) = 4718592 * k + 3522958 := by
    unfold C
    simp [show (1572864 * k + 1174319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3522958) = 2359296 * k + 1761479 := by
    unfold C
    simp [show (4718592 * k + 3522958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1761479) = 7077888 * k + 5284438 := by
    unfold C
    simp [show (2359296 * k + 1761479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5284438) = 3538944 * k + 2642219 := by
    unfold C
    simp [show (7077888 * k + 5284438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2642219) = 10616832 * k + 7926658 := by
    unfold C
    simp [show (3538944 * k + 2642219) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7926658) = 5308416 * k + 3963329 := by
    unfold C
    simp [show (10616832 * k + 7926658) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3963329) = 15925248 * k + 11889988 := by
    unfold C
    simp [show (5308416 * k + 3963329) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11889988) = 7962624 * k + 5944994 := by
    unfold C
    simp [show (15925248 * k + 11889988) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5944994) = 3981312 * k + 2972497 := by
    unfold C
    simp [show (7962624 * k + 5944994) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2972497) = 11943936 * k + 8917492 := by
    unfold C
    simp [show (3981312 * k + 2972497) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8917492) = 5971968 * k + 4458746 := by
    unfold C
    simp [show (11943936 * k + 8917492) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4458746) = 2985984 * k + 2229373 := by
    unfold C
    simp [show (5971968 * k + 4458746) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2229373) = 8957952 * k + 6688120 := by
    unfold C
    simp [show (2985984 * k + 2229373) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6688120) = 4478976 * k + 3344060 := by
    unfold C
    simp [show (8957952 * k + 6688120) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3344060) = 2239488 * k + 1672030 := by
    unfold C
    simp [show (4478976 * k + 3344060) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1672030) = 1119744 * k + 836015 := by
    unfold C
    simp [show (2239488 * k + 1672030) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 836015) = 3359232 * k + 2508046 := by
    unfold C
    simp [show (1119744 * k + 836015) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2508046) = 1679616 * k + 1254023 := by
    unfold C
    simp [show (3359232 * k + 2508046) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1254023) = 5038848 * k + 3762070 := by
    unfold C
    simp [show (1679616 * k + 1254023) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3762070) = 2519424 * k + 1881035 := by
    unfold C
    simp [show (5038848 * k + 3762070) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1881035) = 7558272 * k + 5643106 := by
    unfold C
    simp [show (2519424 * k + 1881035) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5643106) = 3779136 * k + 2821553 := by
    unfold C
    simp [show (7558272 * k + 5643106) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2821553) = 11337408 * k + 8464660 := by
    unfold C
    simp [show (3779136 * k + 2821553) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8464660) = 5668704 * k + 4232330 := by
    unfold C
    simp [show (11337408 * k + 8464660) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4232330) = 2834352 * k + 2116165 := by
    unfold C
    simp [show (5668704 * k + 4232330) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2116165) = 8503056 * k + 6348496 := by
    unfold C
    simp [show (2834352 * k + 2116165) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6348496) = 4251528 * k + 3174248 := by
    unfold C
    simp [show (8503056 * k + 6348496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3174248) = 2125764 * k + 1587124 := by
    unfold C
    simp [show (4251528 * k + 3174248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1587124) = 1062882 * k + 793562 := by
    unfold C
    simp [show (2125764 * k + 1587124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 793562) = 531441 * k + 396781 := by
    unfold C
    simp [show (1062882 * k + 793562) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 782879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 782879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_783471 : ∀ k : Nat,
    iterate (1048576 * k + 783471) 32 = 531441 * k + 397081 ∧
      531441 * k + 397081 < 1048576 * k + 783471 := by
  intro k
  have h1 : C (1048576 * k + 783471) = 3145728 * k + 2350414 := by
    unfold C
    simp [show (1048576 * k + 783471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2350414) = 1572864 * k + 1175207 := by
    unfold C
    simp [show (3145728 * k + 2350414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1175207) = 4718592 * k + 3525622 := by
    unfold C
    simp [show (1572864 * k + 1175207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3525622) = 2359296 * k + 1762811 := by
    unfold C
    simp [show (4718592 * k + 3525622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1762811) = 7077888 * k + 5288434 := by
    unfold C
    simp [show (2359296 * k + 1762811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5288434) = 3538944 * k + 2644217 := by
    unfold C
    simp [show (7077888 * k + 5288434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2644217) = 10616832 * k + 7932652 := by
    unfold C
    simp [show (3538944 * k + 2644217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7932652) = 5308416 * k + 3966326 := by
    unfold C
    simp [show (10616832 * k + 7932652) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3966326) = 2654208 * k + 1983163 := by
    unfold C
    simp [show (5308416 * k + 3966326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1983163) = 7962624 * k + 5949490 := by
    unfold C
    simp [show (2654208 * k + 1983163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5949490) = 3981312 * k + 2974745 := by
    unfold C
    simp [show (7962624 * k + 5949490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2974745) = 11943936 * k + 8924236 := by
    unfold C
    simp [show (3981312 * k + 2974745) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8924236) = 5971968 * k + 4462118 := by
    unfold C
    simp [show (11943936 * k + 8924236) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4462118) = 2985984 * k + 2231059 := by
    unfold C
    simp [show (5971968 * k + 4462118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2231059) = 8957952 * k + 6693178 := by
    unfold C
    simp [show (2985984 * k + 2231059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6693178) = 4478976 * k + 3346589 := by
    unfold C
    simp [show (8957952 * k + 6693178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3346589) = 13436928 * k + 10039768 := by
    unfold C
    simp [show (4478976 * k + 3346589) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10039768) = 6718464 * k + 5019884 := by
    unfold C
    simp [show (13436928 * k + 10039768) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5019884) = 3359232 * k + 2509942 := by
    unfold C
    simp [show (6718464 * k + 5019884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2509942) = 1679616 * k + 1254971 := by
    unfold C
    simp [show (3359232 * k + 2509942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1254971) = 5038848 * k + 3764914 := by
    unfold C
    simp [show (1679616 * k + 1254971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3764914) = 2519424 * k + 1882457 := by
    unfold C
    simp [show (5038848 * k + 3764914) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1882457) = 7558272 * k + 5647372 := by
    unfold C
    simp [show (2519424 * k + 1882457) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5647372) = 3779136 * k + 2823686 := by
    unfold C
    simp [show (7558272 * k + 5647372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2823686) = 1889568 * k + 1411843 := by
    unfold C
    simp [show (3779136 * k + 2823686) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1411843) = 5668704 * k + 4235530 := by
    unfold C
    simp [show (1889568 * k + 1411843) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4235530) = 2834352 * k + 2117765 := by
    unfold C
    simp [show (5668704 * k + 4235530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2117765) = 8503056 * k + 6353296 := by
    unfold C
    simp [show (2834352 * k + 2117765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6353296) = 4251528 * k + 3176648 := by
    unfold C
    simp [show (8503056 * k + 6353296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3176648) = 2125764 * k + 1588324 := by
    unfold C
    simp [show (4251528 * k + 3176648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1588324) = 1062882 * k + 794162 := by
    unfold C
    simp [show (2125764 * k + 1588324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 794162) = 531441 * k + 397081 := by
    unfold C
    simp [show (1062882 * k + 794162) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 783471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 783471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_783519 : ∀ k : Nat,
    iterate (1048576 * k + 783519) 32 = 531441 * k + 397105 ∧
      531441 * k + 397105 < 1048576 * k + 783519 := by
  intro k
  have h1 : C (1048576 * k + 783519) = 3145728 * k + 2350558 := by
    unfold C
    simp [show (1048576 * k + 783519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2350558) = 1572864 * k + 1175279 := by
    unfold C
    simp [show (3145728 * k + 2350558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1175279) = 4718592 * k + 3525838 := by
    unfold C
    simp [show (1572864 * k + 1175279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3525838) = 2359296 * k + 1762919 := by
    unfold C
    simp [show (4718592 * k + 3525838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1762919) = 7077888 * k + 5288758 := by
    unfold C
    simp [show (2359296 * k + 1762919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5288758) = 3538944 * k + 2644379 := by
    unfold C
    simp [show (7077888 * k + 5288758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2644379) = 10616832 * k + 7933138 := by
    unfold C
    simp [show (3538944 * k + 2644379) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7933138) = 5308416 * k + 3966569 := by
    unfold C
    simp [show (10616832 * k + 7933138) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3966569) = 15925248 * k + 11899708 := by
    unfold C
    simp [show (5308416 * k + 3966569) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11899708) = 7962624 * k + 5949854 := by
    unfold C
    simp [show (15925248 * k + 11899708) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5949854) = 3981312 * k + 2974927 := by
    unfold C
    simp [show (7962624 * k + 5949854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2974927) = 11943936 * k + 8924782 := by
    unfold C
    simp [show (3981312 * k + 2974927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8924782) = 5971968 * k + 4462391 := by
    unfold C
    simp [show (11943936 * k + 8924782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4462391) = 17915904 * k + 13387174 := by
    unfold C
    simp [show (5971968 * k + 4462391) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13387174) = 8957952 * k + 6693587 := by
    unfold C
    simp [show (17915904 * k + 13387174) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6693587) = 26873856 * k + 20080762 := by
    unfold C
    simp [show (8957952 * k + 6693587) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20080762) = 13436928 * k + 10040381 := by
    unfold C
    simp [show (26873856 * k + 20080762) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10040381) = 40310784 * k + 30121144 := by
    unfold C
    simp [show (13436928 * k + 10040381) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30121144) = 20155392 * k + 15060572 := by
    unfold C
    simp [show (40310784 * k + 30121144) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15060572) = 10077696 * k + 7530286 := by
    unfold C
    simp [show (20155392 * k + 15060572) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7530286) = 5038848 * k + 3765143 := by
    unfold C
    simp [show (10077696 * k + 7530286) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3765143) = 15116544 * k + 11295430 := by
    unfold C
    simp [show (5038848 * k + 3765143) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11295430) = 7558272 * k + 5647715 := by
    unfold C
    simp [show (15116544 * k + 11295430) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5647715) = 22674816 * k + 16943146 := by
    unfold C
    simp [show (7558272 * k + 5647715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16943146) = 11337408 * k + 8471573 := by
    unfold C
    simp [show (22674816 * k + 16943146) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8471573) = 34012224 * k + 25414720 := by
    unfold C
    simp [show (11337408 * k + 8471573) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25414720) = 17006112 * k + 12707360 := by
    unfold C
    simp [show (34012224 * k + 25414720) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12707360) = 8503056 * k + 6353680 := by
    unfold C
    simp [show (17006112 * k + 12707360) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6353680) = 4251528 * k + 3176840 := by
    unfold C
    simp [show (8503056 * k + 6353680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3176840) = 2125764 * k + 1588420 := by
    unfold C
    simp [show (4251528 * k + 3176840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1588420) = 1062882 * k + 794210 := by
    unfold C
    simp [show (2125764 * k + 1588420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 794210) = 531441 * k + 397105 := by
    unfold C
    simp [show (1062882 * k + 794210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 783519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 783519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_783643 : ∀ k : Nat,
    iterate (1048576 * k + 783643) 32 = 531441 * k + 397168 ∧
      531441 * k + 397168 < 1048576 * k + 783643 := by
  intro k
  have h1 : C (1048576 * k + 783643) = 3145728 * k + 2350930 := by
    unfold C
    simp [show (1048576 * k + 783643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2350930) = 1572864 * k + 1175465 := by
    unfold C
    simp [show (3145728 * k + 2350930) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1175465) = 4718592 * k + 3526396 := by
    unfold C
    simp [show (1572864 * k + 1175465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3526396) = 2359296 * k + 1763198 := by
    unfold C
    simp [show (4718592 * k + 3526396) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1763198) = 1179648 * k + 881599 := by
    unfold C
    simp [show (2359296 * k + 1763198) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 881599) = 3538944 * k + 2644798 := by
    unfold C
    simp [show (1179648 * k + 881599) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2644798) = 1769472 * k + 1322399 := by
    unfold C
    simp [show (3538944 * k + 2644798) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1322399) = 5308416 * k + 3967198 := by
    unfold C
    simp [show (1769472 * k + 1322399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3967198) = 2654208 * k + 1983599 := by
    unfold C
    simp [show (5308416 * k + 3967198) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1983599) = 7962624 * k + 5950798 := by
    unfold C
    simp [show (2654208 * k + 1983599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5950798) = 3981312 * k + 2975399 := by
    unfold C
    simp [show (7962624 * k + 5950798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2975399) = 11943936 * k + 8926198 := by
    unfold C
    simp [show (3981312 * k + 2975399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8926198) = 5971968 * k + 4463099 := by
    unfold C
    simp [show (11943936 * k + 8926198) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4463099) = 17915904 * k + 13389298 := by
    unfold C
    simp [show (5971968 * k + 4463099) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13389298) = 8957952 * k + 6694649 := by
    unfold C
    simp [show (17915904 * k + 13389298) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6694649) = 26873856 * k + 20083948 := by
    unfold C
    simp [show (8957952 * k + 6694649) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20083948) = 13436928 * k + 10041974 := by
    unfold C
    simp [show (26873856 * k + 20083948) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10041974) = 6718464 * k + 5020987 := by
    unfold C
    simp [show (13436928 * k + 10041974) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5020987) = 20155392 * k + 15062962 := by
    unfold C
    simp [show (6718464 * k + 5020987) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15062962) = 10077696 * k + 7531481 := by
    unfold C
    simp [show (20155392 * k + 15062962) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7531481) = 30233088 * k + 22594444 := by
    unfold C
    simp [show (10077696 * k + 7531481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22594444) = 15116544 * k + 11297222 := by
    unfold C
    simp [show (30233088 * k + 22594444) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11297222) = 7558272 * k + 5648611 := by
    unfold C
    simp [show (15116544 * k + 11297222) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5648611) = 22674816 * k + 16945834 := by
    unfold C
    simp [show (7558272 * k + 5648611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16945834) = 11337408 * k + 8472917 := by
    unfold C
    simp [show (22674816 * k + 16945834) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8472917) = 34012224 * k + 25418752 := by
    unfold C
    simp [show (11337408 * k + 8472917) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25418752) = 17006112 * k + 12709376 := by
    unfold C
    simp [show (34012224 * k + 25418752) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12709376) = 8503056 * k + 6354688 := by
    unfold C
    simp [show (17006112 * k + 12709376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6354688) = 4251528 * k + 3177344 := by
    unfold C
    simp [show (8503056 * k + 6354688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3177344) = 2125764 * k + 1588672 := by
    unfold C
    simp [show (4251528 * k + 3177344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1588672) = 1062882 * k + 794336 := by
    unfold C
    simp [show (2125764 * k + 1588672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 794336) = 531441 * k + 397168 := by
    unfold C
    simp [show (1062882 * k + 794336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 783643) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 783643)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_785255 : ∀ k : Nat,
    iterate (1048576 * k + 785255) 32 = 531441 * k + 397985 ∧
      531441 * k + 397985 < 1048576 * k + 785255 := by
  intro k
  have h1 : C (1048576 * k + 785255) = 3145728 * k + 2355766 := by
    unfold C
    simp [show (1048576 * k + 785255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2355766) = 1572864 * k + 1177883 := by
    unfold C
    simp [show (3145728 * k + 2355766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1177883) = 4718592 * k + 3533650 := by
    unfold C
    simp [show (1572864 * k + 1177883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3533650) = 2359296 * k + 1766825 := by
    unfold C
    simp [show (4718592 * k + 3533650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1766825) = 7077888 * k + 5300476 := by
    unfold C
    simp [show (2359296 * k + 1766825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5300476) = 3538944 * k + 2650238 := by
    unfold C
    simp [show (7077888 * k + 5300476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2650238) = 1769472 * k + 1325119 := by
    unfold C
    simp [show (3538944 * k + 2650238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1325119) = 5308416 * k + 3975358 := by
    unfold C
    simp [show (1769472 * k + 1325119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3975358) = 2654208 * k + 1987679 := by
    unfold C
    simp [show (5308416 * k + 3975358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1987679) = 7962624 * k + 5963038 := by
    unfold C
    simp [show (2654208 * k + 1987679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5963038) = 3981312 * k + 2981519 := by
    unfold C
    simp [show (7962624 * k + 5963038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2981519) = 11943936 * k + 8944558 := by
    unfold C
    simp [show (3981312 * k + 2981519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8944558) = 5971968 * k + 4472279 := by
    unfold C
    simp [show (11943936 * k + 8944558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4472279) = 17915904 * k + 13416838 := by
    unfold C
    simp [show (5971968 * k + 4472279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13416838) = 8957952 * k + 6708419 := by
    unfold C
    simp [show (17915904 * k + 13416838) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6708419) = 26873856 * k + 20125258 := by
    unfold C
    simp [show (8957952 * k + 6708419) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20125258) = 13436928 * k + 10062629 := by
    unfold C
    simp [show (26873856 * k + 20125258) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10062629) = 40310784 * k + 30187888 := by
    unfold C
    simp [show (13436928 * k + 10062629) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30187888) = 20155392 * k + 15093944 := by
    unfold C
    simp [show (40310784 * k + 30187888) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15093944) = 10077696 * k + 7546972 := by
    unfold C
    simp [show (20155392 * k + 15093944) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7546972) = 5038848 * k + 3773486 := by
    unfold C
    simp [show (10077696 * k + 7546972) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3773486) = 2519424 * k + 1886743 := by
    unfold C
    simp [show (5038848 * k + 3773486) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1886743) = 7558272 * k + 5660230 := by
    unfold C
    simp [show (2519424 * k + 1886743) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5660230) = 3779136 * k + 2830115 := by
    unfold C
    simp [show (7558272 * k + 5660230) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2830115) = 11337408 * k + 8490346 := by
    unfold C
    simp [show (3779136 * k + 2830115) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8490346) = 5668704 * k + 4245173 := by
    unfold C
    simp [show (11337408 * k + 8490346) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4245173) = 17006112 * k + 12735520 := by
    unfold C
    simp [show (5668704 * k + 4245173) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12735520) = 8503056 * k + 6367760 := by
    unfold C
    simp [show (17006112 * k + 12735520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6367760) = 4251528 * k + 3183880 := by
    unfold C
    simp [show (8503056 * k + 6367760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3183880) = 2125764 * k + 1591940 := by
    unfold C
    simp [show (4251528 * k + 3183880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1591940) = 1062882 * k + 795970 := by
    unfold C
    simp [show (2125764 * k + 1591940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 795970) = 531441 * k + 397985 := by
    unfold C
    simp [show (1062882 * k + 795970) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 785255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 785255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_785279 : ∀ k : Nat,
    iterate (1048576 * k + 785279) 32 = 531441 * k + 397997 ∧
      531441 * k + 397997 < 1048576 * k + 785279 := by
  intro k
  have h1 : C (1048576 * k + 785279) = 3145728 * k + 2355838 := by
    unfold C
    simp [show (1048576 * k + 785279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2355838) = 1572864 * k + 1177919 := by
    unfold C
    simp [show (3145728 * k + 2355838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1177919) = 4718592 * k + 3533758 := by
    unfold C
    simp [show (1572864 * k + 1177919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3533758) = 2359296 * k + 1766879 := by
    unfold C
    simp [show (4718592 * k + 3533758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1766879) = 7077888 * k + 5300638 := by
    unfold C
    simp [show (2359296 * k + 1766879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5300638) = 3538944 * k + 2650319 := by
    unfold C
    simp [show (7077888 * k + 5300638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2650319) = 10616832 * k + 7950958 := by
    unfold C
    simp [show (3538944 * k + 2650319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7950958) = 5308416 * k + 3975479 := by
    unfold C
    simp [show (10616832 * k + 7950958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3975479) = 15925248 * k + 11926438 := by
    unfold C
    simp [show (5308416 * k + 3975479) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11926438) = 7962624 * k + 5963219 := by
    unfold C
    simp [show (15925248 * k + 11926438) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5963219) = 23887872 * k + 17889658 := by
    unfold C
    simp [show (7962624 * k + 5963219) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17889658) = 11943936 * k + 8944829 := by
    unfold C
    simp [show (23887872 * k + 17889658) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8944829) = 35831808 * k + 26834488 := by
    unfold C
    simp [show (11943936 * k + 8944829) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26834488) = 17915904 * k + 13417244 := by
    unfold C
    simp [show (35831808 * k + 26834488) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13417244) = 8957952 * k + 6708622 := by
    unfold C
    simp [show (17915904 * k + 13417244) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6708622) = 4478976 * k + 3354311 := by
    unfold C
    simp [show (8957952 * k + 6708622) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3354311) = 13436928 * k + 10062934 := by
    unfold C
    simp [show (4478976 * k + 3354311) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10062934) = 6718464 * k + 5031467 := by
    unfold C
    simp [show (13436928 * k + 10062934) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5031467) = 20155392 * k + 15094402 := by
    unfold C
    simp [show (6718464 * k + 5031467) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15094402) = 10077696 * k + 7547201 := by
    unfold C
    simp [show (20155392 * k + 15094402) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7547201) = 30233088 * k + 22641604 := by
    unfold C
    simp [show (10077696 * k + 7547201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22641604) = 15116544 * k + 11320802 := by
    unfold C
    simp [show (30233088 * k + 22641604) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11320802) = 7558272 * k + 5660401 := by
    unfold C
    simp [show (15116544 * k + 11320802) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5660401) = 22674816 * k + 16981204 := by
    unfold C
    simp [show (7558272 * k + 5660401) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16981204) = 11337408 * k + 8490602 := by
    unfold C
    simp [show (22674816 * k + 16981204) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8490602) = 5668704 * k + 4245301 := by
    unfold C
    simp [show (11337408 * k + 8490602) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4245301) = 17006112 * k + 12735904 := by
    unfold C
    simp [show (5668704 * k + 4245301) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12735904) = 8503056 * k + 6367952 := by
    unfold C
    simp [show (17006112 * k + 12735904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6367952) = 4251528 * k + 3183976 := by
    unfold C
    simp [show (8503056 * k + 6367952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3183976) = 2125764 * k + 1591988 := by
    unfold C
    simp [show (4251528 * k + 3183976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1591988) = 1062882 * k + 795994 := by
    unfold C
    simp [show (2125764 * k + 1591988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 795994) = 531441 * k + 397997 := by
    unfold C
    simp [show (1062882 * k + 795994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 785279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 785279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_785567 : ∀ k : Nat,
    iterate (1048576 * k + 785567) 32 = 531441 * k + 398143 ∧
      531441 * k + 398143 < 1048576 * k + 785567 := by
  intro k
  have h1 : C (1048576 * k + 785567) = 3145728 * k + 2356702 := by
    unfold C
    simp [show (1048576 * k + 785567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2356702) = 1572864 * k + 1178351 := by
    unfold C
    simp [show (3145728 * k + 2356702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1178351) = 4718592 * k + 3535054 := by
    unfold C
    simp [show (1572864 * k + 1178351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3535054) = 2359296 * k + 1767527 := by
    unfold C
    simp [show (4718592 * k + 3535054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1767527) = 7077888 * k + 5302582 := by
    unfold C
    simp [show (2359296 * k + 1767527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5302582) = 3538944 * k + 2651291 := by
    unfold C
    simp [show (7077888 * k + 5302582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2651291) = 10616832 * k + 7953874 := by
    unfold C
    simp [show (3538944 * k + 2651291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7953874) = 5308416 * k + 3976937 := by
    unfold C
    simp [show (10616832 * k + 7953874) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3976937) = 15925248 * k + 11930812 := by
    unfold C
    simp [show (5308416 * k + 3976937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11930812) = 7962624 * k + 5965406 := by
    unfold C
    simp [show (15925248 * k + 11930812) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5965406) = 3981312 * k + 2982703 := by
    unfold C
    simp [show (7962624 * k + 5965406) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2982703) = 11943936 * k + 8948110 := by
    unfold C
    simp [show (3981312 * k + 2982703) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8948110) = 5971968 * k + 4474055 := by
    unfold C
    simp [show (11943936 * k + 8948110) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4474055) = 17915904 * k + 13422166 := by
    unfold C
    simp [show (5971968 * k + 4474055) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13422166) = 8957952 * k + 6711083 := by
    unfold C
    simp [show (17915904 * k + 13422166) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6711083) = 26873856 * k + 20133250 := by
    unfold C
    simp [show (8957952 * k + 6711083) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20133250) = 13436928 * k + 10066625 := by
    unfold C
    simp [show (26873856 * k + 20133250) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10066625) = 40310784 * k + 30199876 := by
    unfold C
    simp [show (13436928 * k + 10066625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30199876) = 20155392 * k + 15099938 := by
    unfold C
    simp [show (40310784 * k + 30199876) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15099938) = 10077696 * k + 7549969 := by
    unfold C
    simp [show (20155392 * k + 15099938) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7549969) = 30233088 * k + 22649908 := by
    unfold C
    simp [show (10077696 * k + 7549969) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22649908) = 15116544 * k + 11324954 := by
    unfold C
    simp [show (30233088 * k + 22649908) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11324954) = 7558272 * k + 5662477 := by
    unfold C
    simp [show (15116544 * k + 11324954) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5662477) = 22674816 * k + 16987432 := by
    unfold C
    simp [show (7558272 * k + 5662477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16987432) = 11337408 * k + 8493716 := by
    unfold C
    simp [show (22674816 * k + 16987432) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8493716) = 5668704 * k + 4246858 := by
    unfold C
    simp [show (11337408 * k + 8493716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4246858) = 2834352 * k + 2123429 := by
    unfold C
    simp [show (5668704 * k + 4246858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2123429) = 8503056 * k + 6370288 := by
    unfold C
    simp [show (2834352 * k + 2123429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6370288) = 4251528 * k + 3185144 := by
    unfold C
    simp [show (8503056 * k + 6370288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3185144) = 2125764 * k + 1592572 := by
    unfold C
    simp [show (4251528 * k + 3185144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1592572) = 1062882 * k + 796286 := by
    unfold C
    simp [show (2125764 * k + 1592572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 796286) = 531441 * k + 398143 := by
    unfold C
    simp [show (1062882 * k + 796286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 785567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 785567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_785947 : ∀ k : Nat,
    iterate (1048576 * k + 785947) 32 = 531441 * k + 398336 ∧
      531441 * k + 398336 < 1048576 * k + 785947 := by
  intro k
  have h1 : C (1048576 * k + 785947) = 3145728 * k + 2357842 := by
    unfold C
    simp [show (1048576 * k + 785947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2357842) = 1572864 * k + 1178921 := by
    unfold C
    simp [show (3145728 * k + 2357842) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1178921) = 4718592 * k + 3536764 := by
    unfold C
    simp [show (1572864 * k + 1178921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3536764) = 2359296 * k + 1768382 := by
    unfold C
    simp [show (4718592 * k + 3536764) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1768382) = 1179648 * k + 884191 := by
    unfold C
    simp [show (2359296 * k + 1768382) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 884191) = 3538944 * k + 2652574 := by
    unfold C
    simp [show (1179648 * k + 884191) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2652574) = 1769472 * k + 1326287 := by
    unfold C
    simp [show (3538944 * k + 2652574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1326287) = 5308416 * k + 3978862 := by
    unfold C
    simp [show (1769472 * k + 1326287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3978862) = 2654208 * k + 1989431 := by
    unfold C
    simp [show (5308416 * k + 3978862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1989431) = 7962624 * k + 5968294 := by
    unfold C
    simp [show (2654208 * k + 1989431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5968294) = 3981312 * k + 2984147 := by
    unfold C
    simp [show (7962624 * k + 5968294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2984147) = 11943936 * k + 8952442 := by
    unfold C
    simp [show (3981312 * k + 2984147) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8952442) = 5971968 * k + 4476221 := by
    unfold C
    simp [show (11943936 * k + 8952442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4476221) = 17915904 * k + 13428664 := by
    unfold C
    simp [show (5971968 * k + 4476221) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13428664) = 8957952 * k + 6714332 := by
    unfold C
    simp [show (17915904 * k + 13428664) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6714332) = 4478976 * k + 3357166 := by
    unfold C
    simp [show (8957952 * k + 6714332) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3357166) = 2239488 * k + 1678583 := by
    unfold C
    simp [show (4478976 * k + 3357166) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1678583) = 6718464 * k + 5035750 := by
    unfold C
    simp [show (2239488 * k + 1678583) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5035750) = 3359232 * k + 2517875 := by
    unfold C
    simp [show (6718464 * k + 5035750) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2517875) = 10077696 * k + 7553626 := by
    unfold C
    simp [show (3359232 * k + 2517875) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7553626) = 5038848 * k + 3776813 := by
    unfold C
    simp [show (10077696 * k + 7553626) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3776813) = 15116544 * k + 11330440 := by
    unfold C
    simp [show (5038848 * k + 3776813) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11330440) = 7558272 * k + 5665220 := by
    unfold C
    simp [show (15116544 * k + 11330440) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5665220) = 3779136 * k + 2832610 := by
    unfold C
    simp [show (7558272 * k + 5665220) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2832610) = 1889568 * k + 1416305 := by
    unfold C
    simp [show (3779136 * k + 2832610) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1416305) = 5668704 * k + 4248916 := by
    unfold C
    simp [show (1889568 * k + 1416305) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4248916) = 2834352 * k + 2124458 := by
    unfold C
    simp [show (5668704 * k + 4248916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2124458) = 1417176 * k + 1062229 := by
    unfold C
    simp [show (2834352 * k + 2124458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1062229) = 4251528 * k + 3186688 := by
    unfold C
    simp [show (1417176 * k + 1062229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3186688) = 2125764 * k + 1593344 := by
    unfold C
    simp [show (4251528 * k + 3186688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1593344) = 1062882 * k + 796672 := by
    unfold C
    simp [show (2125764 * k + 1593344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 796672) = 531441 * k + 398336 := by
    unfold C
    simp [show (1062882 * k + 796672) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 785947) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 785947)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_786591 : ∀ k : Nat,
    iterate (1048576 * k + 786591) 32 = 531441 * k + 398662 ∧
      531441 * k + 398662 < 1048576 * k + 786591 := by
  intro k
  have h1 : C (1048576 * k + 786591) = 3145728 * k + 2359774 := by
    unfold C
    simp [show (1048576 * k + 786591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2359774) = 1572864 * k + 1179887 := by
    unfold C
    simp [show (3145728 * k + 2359774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1179887) = 4718592 * k + 3539662 := by
    unfold C
    simp [show (1572864 * k + 1179887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3539662) = 2359296 * k + 1769831 := by
    unfold C
    simp [show (4718592 * k + 3539662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1769831) = 7077888 * k + 5309494 := by
    unfold C
    simp [show (2359296 * k + 1769831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5309494) = 3538944 * k + 2654747 := by
    unfold C
    simp [show (7077888 * k + 5309494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2654747) = 10616832 * k + 7964242 := by
    unfold C
    simp [show (3538944 * k + 2654747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7964242) = 5308416 * k + 3982121 := by
    unfold C
    simp [show (10616832 * k + 7964242) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3982121) = 15925248 * k + 11946364 := by
    unfold C
    simp [show (5308416 * k + 3982121) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11946364) = 7962624 * k + 5973182 := by
    unfold C
    simp [show (15925248 * k + 11946364) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5973182) = 3981312 * k + 2986591 := by
    unfold C
    simp [show (7962624 * k + 5973182) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2986591) = 11943936 * k + 8959774 := by
    unfold C
    simp [show (3981312 * k + 2986591) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8959774) = 5971968 * k + 4479887 := by
    unfold C
    simp [show (11943936 * k + 8959774) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4479887) = 17915904 * k + 13439662 := by
    unfold C
    simp [show (5971968 * k + 4479887) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13439662) = 8957952 * k + 6719831 := by
    unfold C
    simp [show (17915904 * k + 13439662) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6719831) = 26873856 * k + 20159494 := by
    unfold C
    simp [show (8957952 * k + 6719831) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20159494) = 13436928 * k + 10079747 := by
    unfold C
    simp [show (26873856 * k + 20159494) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10079747) = 40310784 * k + 30239242 := by
    unfold C
    simp [show (13436928 * k + 10079747) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30239242) = 20155392 * k + 15119621 := by
    unfold C
    simp [show (40310784 * k + 30239242) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15119621) = 60466176 * k + 45358864 := by
    unfold C
    simp [show (20155392 * k + 15119621) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 45358864) = 30233088 * k + 22679432 := by
    unfold C
    simp [show (60466176 * k + 45358864) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 22679432) = 15116544 * k + 11339716 := by
    unfold C
    simp [show (30233088 * k + 22679432) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11339716) = 7558272 * k + 5669858 := by
    unfold C
    simp [show (15116544 * k + 11339716) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5669858) = 3779136 * k + 2834929 := by
    unfold C
    simp [show (7558272 * k + 5669858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2834929) = 11337408 * k + 8504788 := by
    unfold C
    simp [show (3779136 * k + 2834929) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8504788) = 5668704 * k + 4252394 := by
    unfold C
    simp [show (11337408 * k + 8504788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4252394) = 2834352 * k + 2126197 := by
    unfold C
    simp [show (5668704 * k + 4252394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2126197) = 8503056 * k + 6378592 := by
    unfold C
    simp [show (2834352 * k + 2126197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6378592) = 4251528 * k + 3189296 := by
    unfold C
    simp [show (8503056 * k + 6378592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3189296) = 2125764 * k + 1594648 := by
    unfold C
    simp [show (4251528 * k + 3189296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1594648) = 1062882 * k + 797324 := by
    unfold C
    simp [show (2125764 * k + 1594648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 797324) = 531441 * k + 398662 := by
    unfold C
    simp [show (1062882 * k + 797324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 786591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 786591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard100
