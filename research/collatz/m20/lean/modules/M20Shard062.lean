import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard062

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_486207 : ∀ k : Nat,
    iterate (1048576 * k + 486207) 32 = 531441 * k + 246421 ∧
      531441 * k + 246421 < 1048576 * k + 486207 := by
  intro k
  have h1 : C (1048576 * k + 486207) = 3145728 * k + 1458622 := by
    unfold C
    simp [show (1048576 * k + 486207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1458622) = 1572864 * k + 729311 := by
    unfold C
    simp [show (3145728 * k + 1458622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 729311) = 4718592 * k + 2187934 := by
    unfold C
    simp [show (1572864 * k + 729311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2187934) = 2359296 * k + 1093967 := by
    unfold C
    simp [show (4718592 * k + 2187934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1093967) = 7077888 * k + 3281902 := by
    unfold C
    simp [show (2359296 * k + 1093967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3281902) = 3538944 * k + 1640951 := by
    unfold C
    simp [show (7077888 * k + 3281902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1640951) = 10616832 * k + 4922854 := by
    unfold C
    simp [show (3538944 * k + 1640951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4922854) = 5308416 * k + 2461427 := by
    unfold C
    simp [show (10616832 * k + 4922854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2461427) = 15925248 * k + 7384282 := by
    unfold C
    simp [show (5308416 * k + 2461427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7384282) = 7962624 * k + 3692141 := by
    unfold C
    simp [show (15925248 * k + 7384282) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3692141) = 23887872 * k + 11076424 := by
    unfold C
    simp [show (7962624 * k + 3692141) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11076424) = 11943936 * k + 5538212 := by
    unfold C
    simp [show (23887872 * k + 11076424) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5538212) = 5971968 * k + 2769106 := by
    unfold C
    simp [show (11943936 * k + 5538212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2769106) = 2985984 * k + 1384553 := by
    unfold C
    simp [show (5971968 * k + 2769106) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1384553) = 8957952 * k + 4153660 := by
    unfold C
    simp [show (2985984 * k + 1384553) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4153660) = 4478976 * k + 2076830 := by
    unfold C
    simp [show (8957952 * k + 4153660) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2076830) = 2239488 * k + 1038415 := by
    unfold C
    simp [show (4478976 * k + 2076830) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1038415) = 6718464 * k + 3115246 := by
    unfold C
    simp [show (2239488 * k + 1038415) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3115246) = 3359232 * k + 1557623 := by
    unfold C
    simp [show (6718464 * k + 3115246) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1557623) = 10077696 * k + 4672870 := by
    unfold C
    simp [show (3359232 * k + 1557623) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4672870) = 5038848 * k + 2336435 := by
    unfold C
    simp [show (10077696 * k + 4672870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2336435) = 15116544 * k + 7009306 := by
    unfold C
    simp [show (5038848 * k + 2336435) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7009306) = 7558272 * k + 3504653 := by
    unfold C
    simp [show (15116544 * k + 7009306) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3504653) = 22674816 * k + 10513960 := by
    unfold C
    simp [show (7558272 * k + 3504653) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10513960) = 11337408 * k + 5256980 := by
    unfold C
    simp [show (22674816 * k + 10513960) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5256980) = 5668704 * k + 2628490 := by
    unfold C
    simp [show (11337408 * k + 5256980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2628490) = 2834352 * k + 1314245 := by
    unfold C
    simp [show (5668704 * k + 2628490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1314245) = 8503056 * k + 3942736 := by
    unfold C
    simp [show (2834352 * k + 1314245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3942736) = 4251528 * k + 1971368 := by
    unfold C
    simp [show (8503056 * k + 3942736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1971368) = 2125764 * k + 985684 := by
    unfold C
    simp [show (4251528 * k + 1971368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 985684) = 1062882 * k + 492842 := by
    unfold C
    simp [show (2125764 * k + 985684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 492842) = 531441 * k + 246421 := by
    unfold C
    simp [show (1062882 * k + 492842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 486207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 486207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_486503 : ∀ k : Nat,
    iterate (1048576 * k + 486503) 32 = 531441 * k + 246571 ∧
      531441 * k + 246571 < 1048576 * k + 486503 := by
  intro k
  have h1 : C (1048576 * k + 486503) = 3145728 * k + 1459510 := by
    unfold C
    simp [show (1048576 * k + 486503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1459510) = 1572864 * k + 729755 := by
    unfold C
    simp [show (3145728 * k + 1459510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 729755) = 4718592 * k + 2189266 := by
    unfold C
    simp [show (1572864 * k + 729755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2189266) = 2359296 * k + 1094633 := by
    unfold C
    simp [show (4718592 * k + 2189266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1094633) = 7077888 * k + 3283900 := by
    unfold C
    simp [show (2359296 * k + 1094633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3283900) = 3538944 * k + 1641950 := by
    unfold C
    simp [show (7077888 * k + 3283900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1641950) = 1769472 * k + 820975 := by
    unfold C
    simp [show (3538944 * k + 1641950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 820975) = 5308416 * k + 2462926 := by
    unfold C
    simp [show (1769472 * k + 820975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2462926) = 2654208 * k + 1231463 := by
    unfold C
    simp [show (5308416 * k + 2462926) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1231463) = 7962624 * k + 3694390 := by
    unfold C
    simp [show (2654208 * k + 1231463) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3694390) = 3981312 * k + 1847195 := by
    unfold C
    simp [show (7962624 * k + 3694390) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1847195) = 11943936 * k + 5541586 := by
    unfold C
    simp [show (3981312 * k + 1847195) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5541586) = 5971968 * k + 2770793 := by
    unfold C
    simp [show (11943936 * k + 5541586) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2770793) = 17915904 * k + 8312380 := by
    unfold C
    simp [show (5971968 * k + 2770793) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8312380) = 8957952 * k + 4156190 := by
    unfold C
    simp [show (17915904 * k + 8312380) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4156190) = 4478976 * k + 2078095 := by
    unfold C
    simp [show (8957952 * k + 4156190) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2078095) = 13436928 * k + 6234286 := by
    unfold C
    simp [show (4478976 * k + 2078095) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6234286) = 6718464 * k + 3117143 := by
    unfold C
    simp [show (13436928 * k + 6234286) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3117143) = 20155392 * k + 9351430 := by
    unfold C
    simp [show (6718464 * k + 3117143) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9351430) = 10077696 * k + 4675715 := by
    unfold C
    simp [show (20155392 * k + 9351430) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4675715) = 30233088 * k + 14027146 := by
    unfold C
    simp [show (10077696 * k + 4675715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14027146) = 15116544 * k + 7013573 := by
    unfold C
    simp [show (30233088 * k + 14027146) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7013573) = 45349632 * k + 21040720 := by
    unfold C
    simp [show (15116544 * k + 7013573) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21040720) = 22674816 * k + 10520360 := by
    unfold C
    simp [show (45349632 * k + 21040720) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10520360) = 11337408 * k + 5260180 := by
    unfold C
    simp [show (22674816 * k + 10520360) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5260180) = 5668704 * k + 2630090 := by
    unfold C
    simp [show (11337408 * k + 5260180) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2630090) = 2834352 * k + 1315045 := by
    unfold C
    simp [show (5668704 * k + 2630090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1315045) = 8503056 * k + 3945136 := by
    unfold C
    simp [show (2834352 * k + 1315045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3945136) = 4251528 * k + 1972568 := by
    unfold C
    simp [show (8503056 * k + 3945136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1972568) = 2125764 * k + 986284 := by
    unfold C
    simp [show (4251528 * k + 1972568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 986284) = 1062882 * k + 493142 := by
    unfold C
    simp [show (2125764 * k + 986284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 493142) = 531441 * k + 246571 := by
    unfold C
    simp [show (1062882 * k + 493142) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 486503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 486503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_487067 : ∀ k : Nat,
    iterate (1048576 * k + 487067) 32 = 531441 * k + 246857 ∧
      531441 * k + 246857 < 1048576 * k + 487067 := by
  intro k
  have h1 : C (1048576 * k + 487067) = 3145728 * k + 1461202 := by
    unfold C
    simp [show (1048576 * k + 487067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1461202) = 1572864 * k + 730601 := by
    unfold C
    simp [show (3145728 * k + 1461202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 730601) = 4718592 * k + 2191804 := by
    unfold C
    simp [show (1572864 * k + 730601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2191804) = 2359296 * k + 1095902 := by
    unfold C
    simp [show (4718592 * k + 2191804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1095902) = 1179648 * k + 547951 := by
    unfold C
    simp [show (2359296 * k + 1095902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 547951) = 3538944 * k + 1643854 := by
    unfold C
    simp [show (1179648 * k + 547951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1643854) = 1769472 * k + 821927 := by
    unfold C
    simp [show (3538944 * k + 1643854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 821927) = 5308416 * k + 2465782 := by
    unfold C
    simp [show (1769472 * k + 821927) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2465782) = 2654208 * k + 1232891 := by
    unfold C
    simp [show (5308416 * k + 2465782) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1232891) = 7962624 * k + 3698674 := by
    unfold C
    simp [show (2654208 * k + 1232891) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3698674) = 3981312 * k + 1849337 := by
    unfold C
    simp [show (7962624 * k + 3698674) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1849337) = 11943936 * k + 5548012 := by
    unfold C
    simp [show (3981312 * k + 1849337) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5548012) = 5971968 * k + 2774006 := by
    unfold C
    simp [show (11943936 * k + 5548012) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2774006) = 2985984 * k + 1387003 := by
    unfold C
    simp [show (5971968 * k + 2774006) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1387003) = 8957952 * k + 4161010 := by
    unfold C
    simp [show (2985984 * k + 1387003) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4161010) = 4478976 * k + 2080505 := by
    unfold C
    simp [show (8957952 * k + 4161010) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2080505) = 13436928 * k + 6241516 := by
    unfold C
    simp [show (4478976 * k + 2080505) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6241516) = 6718464 * k + 3120758 := by
    unfold C
    simp [show (13436928 * k + 6241516) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3120758) = 3359232 * k + 1560379 := by
    unfold C
    simp [show (6718464 * k + 3120758) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1560379) = 10077696 * k + 4681138 := by
    unfold C
    simp [show (3359232 * k + 1560379) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4681138) = 5038848 * k + 2340569 := by
    unfold C
    simp [show (10077696 * k + 4681138) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2340569) = 15116544 * k + 7021708 := by
    unfold C
    simp [show (5038848 * k + 2340569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7021708) = 7558272 * k + 3510854 := by
    unfold C
    simp [show (15116544 * k + 7021708) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3510854) = 3779136 * k + 1755427 := by
    unfold C
    simp [show (7558272 * k + 3510854) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1755427) = 11337408 * k + 5266282 := by
    unfold C
    simp [show (3779136 * k + 1755427) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5266282) = 5668704 * k + 2633141 := by
    unfold C
    simp [show (11337408 * k + 5266282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2633141) = 17006112 * k + 7899424 := by
    unfold C
    simp [show (5668704 * k + 2633141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7899424) = 8503056 * k + 3949712 := by
    unfold C
    simp [show (17006112 * k + 7899424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3949712) = 4251528 * k + 1974856 := by
    unfold C
    simp [show (8503056 * k + 3949712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1974856) = 2125764 * k + 987428 := by
    unfold C
    simp [show (4251528 * k + 1974856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 987428) = 1062882 * k + 493714 := by
    unfold C
    simp [show (2125764 * k + 987428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 493714) = 531441 * k + 246857 := by
    unfold C
    simp [show (1062882 * k + 493714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 487067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 487067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_487535 : ∀ k : Nat,
    iterate (1048576 * k + 487535) 32 = 531441 * k + 247094 ∧
      531441 * k + 247094 < 1048576 * k + 487535 := by
  intro k
  have h1 : C (1048576 * k + 487535) = 3145728 * k + 1462606 := by
    unfold C
    simp [show (1048576 * k + 487535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1462606) = 1572864 * k + 731303 := by
    unfold C
    simp [show (3145728 * k + 1462606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 731303) = 4718592 * k + 2193910 := by
    unfold C
    simp [show (1572864 * k + 731303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2193910) = 2359296 * k + 1096955 := by
    unfold C
    simp [show (4718592 * k + 2193910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1096955) = 7077888 * k + 3290866 := by
    unfold C
    simp [show (2359296 * k + 1096955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3290866) = 3538944 * k + 1645433 := by
    unfold C
    simp [show (7077888 * k + 3290866) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1645433) = 10616832 * k + 4936300 := by
    unfold C
    simp [show (3538944 * k + 1645433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4936300) = 5308416 * k + 2468150 := by
    unfold C
    simp [show (10616832 * k + 4936300) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2468150) = 2654208 * k + 1234075 := by
    unfold C
    simp [show (5308416 * k + 2468150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1234075) = 7962624 * k + 3702226 := by
    unfold C
    simp [show (2654208 * k + 1234075) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3702226) = 3981312 * k + 1851113 := by
    unfold C
    simp [show (7962624 * k + 3702226) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1851113) = 11943936 * k + 5553340 := by
    unfold C
    simp [show (3981312 * k + 1851113) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5553340) = 5971968 * k + 2776670 := by
    unfold C
    simp [show (11943936 * k + 5553340) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2776670) = 2985984 * k + 1388335 := by
    unfold C
    simp [show (5971968 * k + 2776670) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1388335) = 8957952 * k + 4165006 := by
    unfold C
    simp [show (2985984 * k + 1388335) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4165006) = 4478976 * k + 2082503 := by
    unfold C
    simp [show (8957952 * k + 4165006) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2082503) = 13436928 * k + 6247510 := by
    unfold C
    simp [show (4478976 * k + 2082503) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6247510) = 6718464 * k + 3123755 := by
    unfold C
    simp [show (13436928 * k + 6247510) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3123755) = 20155392 * k + 9371266 := by
    unfold C
    simp [show (6718464 * k + 3123755) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9371266) = 10077696 * k + 4685633 := by
    unfold C
    simp [show (20155392 * k + 9371266) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4685633) = 30233088 * k + 14056900 := by
    unfold C
    simp [show (10077696 * k + 4685633) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14056900) = 15116544 * k + 7028450 := by
    unfold C
    simp [show (30233088 * k + 14056900) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7028450) = 7558272 * k + 3514225 := by
    unfold C
    simp [show (15116544 * k + 7028450) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3514225) = 22674816 * k + 10542676 := by
    unfold C
    simp [show (7558272 * k + 3514225) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10542676) = 11337408 * k + 5271338 := by
    unfold C
    simp [show (22674816 * k + 10542676) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5271338) = 5668704 * k + 2635669 := by
    unfold C
    simp [show (11337408 * k + 5271338) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2635669) = 17006112 * k + 7907008 := by
    unfold C
    simp [show (5668704 * k + 2635669) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7907008) = 8503056 * k + 3953504 := by
    unfold C
    simp [show (17006112 * k + 7907008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3953504) = 4251528 * k + 1976752 := by
    unfold C
    simp [show (8503056 * k + 3953504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1976752) = 2125764 * k + 988376 := by
    unfold C
    simp [show (4251528 * k + 1976752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 988376) = 1062882 * k + 494188 := by
    unfold C
    simp [show (2125764 * k + 988376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 494188) = 531441 * k + 247094 := by
    unfold C
    simp [show (1062882 * k + 494188) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 487535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 487535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_488091 : ∀ k : Nat,
    iterate (1048576 * k + 488091) 32 = 531441 * k + 247376 ∧
      531441 * k + 247376 < 1048576 * k + 488091 := by
  intro k
  have h1 : C (1048576 * k + 488091) = 3145728 * k + 1464274 := by
    unfold C
    simp [show (1048576 * k + 488091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1464274) = 1572864 * k + 732137 := by
    unfold C
    simp [show (3145728 * k + 1464274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 732137) = 4718592 * k + 2196412 := by
    unfold C
    simp [show (1572864 * k + 732137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2196412) = 2359296 * k + 1098206 := by
    unfold C
    simp [show (4718592 * k + 2196412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1098206) = 1179648 * k + 549103 := by
    unfold C
    simp [show (2359296 * k + 1098206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 549103) = 3538944 * k + 1647310 := by
    unfold C
    simp [show (1179648 * k + 549103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1647310) = 1769472 * k + 823655 := by
    unfold C
    simp [show (3538944 * k + 1647310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 823655) = 5308416 * k + 2470966 := by
    unfold C
    simp [show (1769472 * k + 823655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2470966) = 2654208 * k + 1235483 := by
    unfold C
    simp [show (5308416 * k + 2470966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1235483) = 7962624 * k + 3706450 := by
    unfold C
    simp [show (2654208 * k + 1235483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3706450) = 3981312 * k + 1853225 := by
    unfold C
    simp [show (7962624 * k + 3706450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1853225) = 11943936 * k + 5559676 := by
    unfold C
    simp [show (3981312 * k + 1853225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5559676) = 5971968 * k + 2779838 := by
    unfold C
    simp [show (11943936 * k + 5559676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2779838) = 2985984 * k + 1389919 := by
    unfold C
    simp [show (5971968 * k + 2779838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1389919) = 8957952 * k + 4169758 := by
    unfold C
    simp [show (2985984 * k + 1389919) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4169758) = 4478976 * k + 2084879 := by
    unfold C
    simp [show (8957952 * k + 4169758) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2084879) = 13436928 * k + 6254638 := by
    unfold C
    simp [show (4478976 * k + 2084879) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6254638) = 6718464 * k + 3127319 := by
    unfold C
    simp [show (13436928 * k + 6254638) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3127319) = 20155392 * k + 9381958 := by
    unfold C
    simp [show (6718464 * k + 3127319) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9381958) = 10077696 * k + 4690979 := by
    unfold C
    simp [show (20155392 * k + 9381958) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4690979) = 30233088 * k + 14072938 := by
    unfold C
    simp [show (10077696 * k + 4690979) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14072938) = 15116544 * k + 7036469 := by
    unfold C
    simp [show (30233088 * k + 14072938) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7036469) = 45349632 * k + 21109408 := by
    unfold C
    simp [show (15116544 * k + 7036469) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21109408) = 22674816 * k + 10554704 := by
    unfold C
    simp [show (45349632 * k + 21109408) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10554704) = 11337408 * k + 5277352 := by
    unfold C
    simp [show (22674816 * k + 10554704) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5277352) = 5668704 * k + 2638676 := by
    unfold C
    simp [show (11337408 * k + 5277352) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2638676) = 2834352 * k + 1319338 := by
    unfold C
    simp [show (5668704 * k + 2638676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1319338) = 1417176 * k + 659669 := by
    unfold C
    simp [show (2834352 * k + 1319338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 659669) = 4251528 * k + 1979008 := by
    unfold C
    simp [show (1417176 * k + 659669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1979008) = 2125764 * k + 989504 := by
    unfold C
    simp [show (4251528 * k + 1979008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 989504) = 1062882 * k + 494752 := by
    unfold C
    simp [show (2125764 * k + 989504) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 494752) = 531441 * k + 247376 := by
    unfold C
    simp [show (1062882 * k + 494752) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 488091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 488091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_488551 : ∀ k : Nat,
    iterate (1048576 * k + 488551) 32 = 531441 * k + 247609 ∧
      531441 * k + 247609 < 1048576 * k + 488551 := by
  intro k
  have h1 : C (1048576 * k + 488551) = 3145728 * k + 1465654 := by
    unfold C
    simp [show (1048576 * k + 488551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1465654) = 1572864 * k + 732827 := by
    unfold C
    simp [show (3145728 * k + 1465654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 732827) = 4718592 * k + 2198482 := by
    unfold C
    simp [show (1572864 * k + 732827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2198482) = 2359296 * k + 1099241 := by
    unfold C
    simp [show (4718592 * k + 2198482) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1099241) = 7077888 * k + 3297724 := by
    unfold C
    simp [show (2359296 * k + 1099241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3297724) = 3538944 * k + 1648862 := by
    unfold C
    simp [show (7077888 * k + 3297724) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1648862) = 1769472 * k + 824431 := by
    unfold C
    simp [show (3538944 * k + 1648862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 824431) = 5308416 * k + 2473294 := by
    unfold C
    simp [show (1769472 * k + 824431) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2473294) = 2654208 * k + 1236647 := by
    unfold C
    simp [show (5308416 * k + 2473294) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1236647) = 7962624 * k + 3709942 := by
    unfold C
    simp [show (2654208 * k + 1236647) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3709942) = 3981312 * k + 1854971 := by
    unfold C
    simp [show (7962624 * k + 3709942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1854971) = 11943936 * k + 5564914 := by
    unfold C
    simp [show (3981312 * k + 1854971) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5564914) = 5971968 * k + 2782457 := by
    unfold C
    simp [show (11943936 * k + 5564914) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2782457) = 17915904 * k + 8347372 := by
    unfold C
    simp [show (5971968 * k + 2782457) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8347372) = 8957952 * k + 4173686 := by
    unfold C
    simp [show (17915904 * k + 8347372) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4173686) = 4478976 * k + 2086843 := by
    unfold C
    simp [show (8957952 * k + 4173686) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2086843) = 13436928 * k + 6260530 := by
    unfold C
    simp [show (4478976 * k + 2086843) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6260530) = 6718464 * k + 3130265 := by
    unfold C
    simp [show (13436928 * k + 6260530) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3130265) = 20155392 * k + 9390796 := by
    unfold C
    simp [show (6718464 * k + 3130265) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9390796) = 10077696 * k + 4695398 := by
    unfold C
    simp [show (20155392 * k + 9390796) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4695398) = 5038848 * k + 2347699 := by
    unfold C
    simp [show (10077696 * k + 4695398) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2347699) = 15116544 * k + 7043098 := by
    unfold C
    simp [show (5038848 * k + 2347699) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7043098) = 7558272 * k + 3521549 := by
    unfold C
    simp [show (15116544 * k + 7043098) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3521549) = 22674816 * k + 10564648 := by
    unfold C
    simp [show (7558272 * k + 3521549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10564648) = 11337408 * k + 5282324 := by
    unfold C
    simp [show (22674816 * k + 10564648) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5282324) = 5668704 * k + 2641162 := by
    unfold C
    simp [show (11337408 * k + 5282324) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2641162) = 2834352 * k + 1320581 := by
    unfold C
    simp [show (5668704 * k + 2641162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1320581) = 8503056 * k + 3961744 := by
    unfold C
    simp [show (2834352 * k + 1320581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3961744) = 4251528 * k + 1980872 := by
    unfold C
    simp [show (8503056 * k + 3961744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1980872) = 2125764 * k + 990436 := by
    unfold C
    simp [show (4251528 * k + 1980872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 990436) = 1062882 * k + 495218 := by
    unfold C
    simp [show (2125764 * k + 990436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 495218) = 531441 * k + 247609 := by
    unfold C
    simp [show (1062882 * k + 495218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 488551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 488551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_489471 : ∀ k : Nat,
    iterate (1048576 * k + 489471) 32 = 531441 * k + 248075 ∧
      531441 * k + 248075 < 1048576 * k + 489471 := by
  intro k
  have h1 : C (1048576 * k + 489471) = 3145728 * k + 1468414 := by
    unfold C
    simp [show (1048576 * k + 489471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1468414) = 1572864 * k + 734207 := by
    unfold C
    simp [show (3145728 * k + 1468414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 734207) = 4718592 * k + 2202622 := by
    unfold C
    simp [show (1572864 * k + 734207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2202622) = 2359296 * k + 1101311 := by
    unfold C
    simp [show (4718592 * k + 2202622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1101311) = 7077888 * k + 3303934 := by
    unfold C
    simp [show (2359296 * k + 1101311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3303934) = 3538944 * k + 1651967 := by
    unfold C
    simp [show (7077888 * k + 3303934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1651967) = 10616832 * k + 4955902 := by
    unfold C
    simp [show (3538944 * k + 1651967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4955902) = 5308416 * k + 2477951 := by
    unfold C
    simp [show (10616832 * k + 4955902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2477951) = 15925248 * k + 7433854 := by
    unfold C
    simp [show (5308416 * k + 2477951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7433854) = 7962624 * k + 3716927 := by
    unfold C
    simp [show (15925248 * k + 7433854) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3716927) = 23887872 * k + 11150782 := by
    unfold C
    simp [show (7962624 * k + 3716927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11150782) = 11943936 * k + 5575391 := by
    unfold C
    simp [show (23887872 * k + 11150782) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5575391) = 35831808 * k + 16726174 := by
    unfold C
    simp [show (11943936 * k + 5575391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16726174) = 17915904 * k + 8363087 := by
    unfold C
    simp [show (35831808 * k + 16726174) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8363087) = 53747712 * k + 25089262 := by
    unfold C
    simp [show (17915904 * k + 8363087) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 25089262) = 26873856 * k + 12544631 := by
    unfold C
    simp [show (53747712 * k + 25089262) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 12544631) = 80621568 * k + 37633894 := by
    unfold C
    simp [show (26873856 * k + 12544631) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 37633894) = 40310784 * k + 18816947 := by
    unfold C
    simp [show (80621568 * k + 37633894) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 18816947) = 120932352 * k + 56450842 := by
    unfold C
    simp [show (40310784 * k + 18816947) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 56450842) = 60466176 * k + 28225421 := by
    unfold C
    simp [show (120932352 * k + 56450842) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 28225421) = 181398528 * k + 84676264 := by
    unfold C
    simp [show (60466176 * k + 28225421) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 84676264) = 90699264 * k + 42338132 := by
    unfold C
    simp [show (181398528 * k + 84676264) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 42338132) = 45349632 * k + 21169066 := by
    unfold C
    simp [show (90699264 * k + 42338132) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 21169066) = 22674816 * k + 10584533 := by
    unfold C
    simp [show (45349632 * k + 21169066) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10584533) = 68024448 * k + 31753600 := by
    unfold C
    simp [show (22674816 * k + 10584533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 31753600) = 34012224 * k + 15876800 := by
    unfold C
    simp [show (68024448 * k + 31753600) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 15876800) = 17006112 * k + 7938400 := by
    unfold C
    simp [show (34012224 * k + 15876800) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7938400) = 8503056 * k + 3969200 := by
    unfold C
    simp [show (17006112 * k + 7938400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3969200) = 4251528 * k + 1984600 := by
    unfold C
    simp [show (8503056 * k + 3969200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1984600) = 2125764 * k + 992300 := by
    unfold C
    simp [show (4251528 * k + 1984600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 992300) = 1062882 * k + 496150 := by
    unfold C
    simp [show (2125764 * k + 992300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496150) = 531441 * k + 248075 := by
    unfold C
    simp [show (1062882 * k + 496150) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 489471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 489471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_489535 : ∀ k : Nat,
    iterate (1048576 * k + 489535) 32 = 531441 * k + 248108 ∧
      531441 * k + 248108 < 1048576 * k + 489535 := by
  intro k
  have h1 : C (1048576 * k + 489535) = 3145728 * k + 1468606 := by
    unfold C
    simp [show (1048576 * k + 489535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1468606) = 1572864 * k + 734303 := by
    unfold C
    simp [show (3145728 * k + 1468606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 734303) = 4718592 * k + 2202910 := by
    unfold C
    simp [show (1572864 * k + 734303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2202910) = 2359296 * k + 1101455 := by
    unfold C
    simp [show (4718592 * k + 2202910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1101455) = 7077888 * k + 3304366 := by
    unfold C
    simp [show (2359296 * k + 1101455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3304366) = 3538944 * k + 1652183 := by
    unfold C
    simp [show (7077888 * k + 3304366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1652183) = 10616832 * k + 4956550 := by
    unfold C
    simp [show (3538944 * k + 1652183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4956550) = 5308416 * k + 2478275 := by
    unfold C
    simp [show (10616832 * k + 4956550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2478275) = 15925248 * k + 7434826 := by
    unfold C
    simp [show (5308416 * k + 2478275) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7434826) = 7962624 * k + 3717413 := by
    unfold C
    simp [show (15925248 * k + 7434826) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3717413) = 23887872 * k + 11152240 := by
    unfold C
    simp [show (7962624 * k + 3717413) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11152240) = 11943936 * k + 5576120 := by
    unfold C
    simp [show (23887872 * k + 11152240) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5576120) = 5971968 * k + 2788060 := by
    unfold C
    simp [show (11943936 * k + 5576120) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2788060) = 2985984 * k + 1394030 := by
    unfold C
    simp [show (5971968 * k + 2788060) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1394030) = 1492992 * k + 697015 := by
    unfold C
    simp [show (2985984 * k + 1394030) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 697015) = 4478976 * k + 2091046 := by
    unfold C
    simp [show (1492992 * k + 697015) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2091046) = 2239488 * k + 1045523 := by
    unfold C
    simp [show (4478976 * k + 2091046) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1045523) = 6718464 * k + 3136570 := by
    unfold C
    simp [show (2239488 * k + 1045523) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3136570) = 3359232 * k + 1568285 := by
    unfold C
    simp [show (6718464 * k + 3136570) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1568285) = 10077696 * k + 4704856 := by
    unfold C
    simp [show (3359232 * k + 1568285) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4704856) = 5038848 * k + 2352428 := by
    unfold C
    simp [show (10077696 * k + 4704856) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2352428) = 2519424 * k + 1176214 := by
    unfold C
    simp [show (5038848 * k + 2352428) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1176214) = 1259712 * k + 588107 := by
    unfold C
    simp [show (2519424 * k + 1176214) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 588107) = 3779136 * k + 1764322 := by
    unfold C
    simp [show (1259712 * k + 588107) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1764322) = 1889568 * k + 882161 := by
    unfold C
    simp [show (3779136 * k + 1764322) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 882161) = 5668704 * k + 2646484 := by
    unfold C
    simp [show (1889568 * k + 882161) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2646484) = 2834352 * k + 1323242 := by
    unfold C
    simp [show (5668704 * k + 2646484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1323242) = 1417176 * k + 661621 := by
    unfold C
    simp [show (2834352 * k + 1323242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 661621) = 4251528 * k + 1984864 := by
    unfold C
    simp [show (1417176 * k + 661621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1984864) = 2125764 * k + 992432 := by
    unfold C
    simp [show (4251528 * k + 1984864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 992432) = 1062882 * k + 496216 := by
    unfold C
    simp [show (2125764 * k + 992432) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496216) = 531441 * k + 248108 := by
    unfold C
    simp [show (1062882 * k + 496216) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 489535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 489535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_489695 : ∀ k : Nat,
    iterate (1048576 * k + 489695) 32 = 531441 * k + 248189 ∧
      531441 * k + 248189 < 1048576 * k + 489695 := by
  intro k
  have h1 : C (1048576 * k + 489695) = 3145728 * k + 1469086 := by
    unfold C
    simp [show (1048576 * k + 489695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1469086) = 1572864 * k + 734543 := by
    unfold C
    simp [show (3145728 * k + 1469086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 734543) = 4718592 * k + 2203630 := by
    unfold C
    simp [show (1572864 * k + 734543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2203630) = 2359296 * k + 1101815 := by
    unfold C
    simp [show (4718592 * k + 2203630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1101815) = 7077888 * k + 3305446 := by
    unfold C
    simp [show (2359296 * k + 1101815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3305446) = 3538944 * k + 1652723 := by
    unfold C
    simp [show (7077888 * k + 3305446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1652723) = 10616832 * k + 4958170 := by
    unfold C
    simp [show (3538944 * k + 1652723) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4958170) = 5308416 * k + 2479085 := by
    unfold C
    simp [show (10616832 * k + 4958170) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2479085) = 15925248 * k + 7437256 := by
    unfold C
    simp [show (5308416 * k + 2479085) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7437256) = 7962624 * k + 3718628 := by
    unfold C
    simp [show (15925248 * k + 7437256) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3718628) = 3981312 * k + 1859314 := by
    unfold C
    simp [show (7962624 * k + 3718628) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1859314) = 1990656 * k + 929657 := by
    unfold C
    simp [show (3981312 * k + 1859314) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 929657) = 5971968 * k + 2788972 := by
    unfold C
    simp [show (1990656 * k + 929657) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2788972) = 2985984 * k + 1394486 := by
    unfold C
    simp [show (5971968 * k + 2788972) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1394486) = 1492992 * k + 697243 := by
    unfold C
    simp [show (2985984 * k + 1394486) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 697243) = 4478976 * k + 2091730 := by
    unfold C
    simp [show (1492992 * k + 697243) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2091730) = 2239488 * k + 1045865 := by
    unfold C
    simp [show (4478976 * k + 2091730) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1045865) = 6718464 * k + 3137596 := by
    unfold C
    simp [show (2239488 * k + 1045865) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3137596) = 3359232 * k + 1568798 := by
    unfold C
    simp [show (6718464 * k + 3137596) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1568798) = 1679616 * k + 784399 := by
    unfold C
    simp [show (3359232 * k + 1568798) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 784399) = 5038848 * k + 2353198 := by
    unfold C
    simp [show (1679616 * k + 784399) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2353198) = 2519424 * k + 1176599 := by
    unfold C
    simp [show (5038848 * k + 2353198) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1176599) = 7558272 * k + 3529798 := by
    unfold C
    simp [show (2519424 * k + 1176599) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3529798) = 3779136 * k + 1764899 := by
    unfold C
    simp [show (7558272 * k + 3529798) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1764899) = 11337408 * k + 5294698 := by
    unfold C
    simp [show (3779136 * k + 1764899) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5294698) = 5668704 * k + 2647349 := by
    unfold C
    simp [show (11337408 * k + 5294698) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2647349) = 17006112 * k + 7942048 := by
    unfold C
    simp [show (5668704 * k + 2647349) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7942048) = 8503056 * k + 3971024 := by
    unfold C
    simp [show (17006112 * k + 7942048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3971024) = 4251528 * k + 1985512 := by
    unfold C
    simp [show (8503056 * k + 3971024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1985512) = 2125764 * k + 992756 := by
    unfold C
    simp [show (4251528 * k + 1985512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 992756) = 1062882 * k + 496378 := by
    unfold C
    simp [show (2125764 * k + 992756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496378) = 531441 * k + 248189 := by
    unfold C
    simp [show (1062882 * k + 496378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 489695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 489695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_489855 : ∀ k : Nat,
    iterate (1048576 * k + 489855) 32 = 531441 * k + 248270 ∧
      531441 * k + 248270 < 1048576 * k + 489855 := by
  intro k
  have h1 : C (1048576 * k + 489855) = 3145728 * k + 1469566 := by
    unfold C
    simp [show (1048576 * k + 489855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1469566) = 1572864 * k + 734783 := by
    unfold C
    simp [show (3145728 * k + 1469566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 734783) = 4718592 * k + 2204350 := by
    unfold C
    simp [show (1572864 * k + 734783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2204350) = 2359296 * k + 1102175 := by
    unfold C
    simp [show (4718592 * k + 2204350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1102175) = 7077888 * k + 3306526 := by
    unfold C
    simp [show (2359296 * k + 1102175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3306526) = 3538944 * k + 1653263 := by
    unfold C
    simp [show (7077888 * k + 3306526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1653263) = 10616832 * k + 4959790 := by
    unfold C
    simp [show (3538944 * k + 1653263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4959790) = 5308416 * k + 2479895 := by
    unfold C
    simp [show (10616832 * k + 4959790) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2479895) = 15925248 * k + 7439686 := by
    unfold C
    simp [show (5308416 * k + 2479895) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7439686) = 7962624 * k + 3719843 := by
    unfold C
    simp [show (15925248 * k + 7439686) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3719843) = 23887872 * k + 11159530 := by
    unfold C
    simp [show (7962624 * k + 3719843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11159530) = 11943936 * k + 5579765 := by
    unfold C
    simp [show (23887872 * k + 11159530) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5579765) = 35831808 * k + 16739296 := by
    unfold C
    simp [show (11943936 * k + 5579765) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16739296) = 17915904 * k + 8369648 := by
    unfold C
    simp [show (35831808 * k + 16739296) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8369648) = 8957952 * k + 4184824 := by
    unfold C
    simp [show (17915904 * k + 8369648) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4184824) = 4478976 * k + 2092412 := by
    unfold C
    simp [show (8957952 * k + 4184824) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2092412) = 2239488 * k + 1046206 := by
    unfold C
    simp [show (4478976 * k + 2092412) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1046206) = 1119744 * k + 523103 := by
    unfold C
    simp [show (2239488 * k + 1046206) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 523103) = 3359232 * k + 1569310 := by
    unfold C
    simp [show (1119744 * k + 523103) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1569310) = 1679616 * k + 784655 := by
    unfold C
    simp [show (3359232 * k + 1569310) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 784655) = 5038848 * k + 2353966 := by
    unfold C
    simp [show (1679616 * k + 784655) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2353966) = 2519424 * k + 1176983 := by
    unfold C
    simp [show (5038848 * k + 2353966) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1176983) = 7558272 * k + 3530950 := by
    unfold C
    simp [show (2519424 * k + 1176983) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3530950) = 3779136 * k + 1765475 := by
    unfold C
    simp [show (7558272 * k + 3530950) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1765475) = 11337408 * k + 5296426 := by
    unfold C
    simp [show (3779136 * k + 1765475) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5296426) = 5668704 * k + 2648213 := by
    unfold C
    simp [show (11337408 * k + 5296426) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2648213) = 17006112 * k + 7944640 := by
    unfold C
    simp [show (5668704 * k + 2648213) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7944640) = 8503056 * k + 3972320 := by
    unfold C
    simp [show (17006112 * k + 7944640) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3972320) = 4251528 * k + 1986160 := by
    unfold C
    simp [show (8503056 * k + 3972320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1986160) = 2125764 * k + 993080 := by
    unfold C
    simp [show (4251528 * k + 1986160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 993080) = 1062882 * k + 496540 := by
    unfold C
    simp [show (2125764 * k + 993080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496540) = 531441 * k + 248270 := by
    unfold C
    simp [show (1062882 * k + 496540) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 489855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 489855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490139 : ∀ k : Nat,
    iterate (1048576 * k + 490139) 32 = 531441 * k + 248414 ∧
      531441 * k + 248414 < 1048576 * k + 490139 := by
  intro k
  have h1 : C (1048576 * k + 490139) = 3145728 * k + 1470418 := by
    unfold C
    simp [show (1048576 * k + 490139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1470418) = 1572864 * k + 735209 := by
    unfold C
    simp [show (3145728 * k + 1470418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735209) = 4718592 * k + 2205628 := by
    unfold C
    simp [show (1572864 * k + 735209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2205628) = 2359296 * k + 1102814 := by
    unfold C
    simp [show (4718592 * k + 2205628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1102814) = 1179648 * k + 551407 := by
    unfold C
    simp [show (2359296 * k + 1102814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 551407) = 3538944 * k + 1654222 := by
    unfold C
    simp [show (1179648 * k + 551407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1654222) = 1769472 * k + 827111 := by
    unfold C
    simp [show (3538944 * k + 1654222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 827111) = 5308416 * k + 2481334 := by
    unfold C
    simp [show (1769472 * k + 827111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2481334) = 2654208 * k + 1240667 := by
    unfold C
    simp [show (5308416 * k + 2481334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1240667) = 7962624 * k + 3722002 := by
    unfold C
    simp [show (2654208 * k + 1240667) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3722002) = 3981312 * k + 1861001 := by
    unfold C
    simp [show (7962624 * k + 3722002) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1861001) = 11943936 * k + 5583004 := by
    unfold C
    simp [show (3981312 * k + 1861001) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5583004) = 5971968 * k + 2791502 := by
    unfold C
    simp [show (11943936 * k + 5583004) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2791502) = 2985984 * k + 1395751 := by
    unfold C
    simp [show (5971968 * k + 2791502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1395751) = 8957952 * k + 4187254 := by
    unfold C
    simp [show (2985984 * k + 1395751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4187254) = 4478976 * k + 2093627 := by
    unfold C
    simp [show (8957952 * k + 4187254) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2093627) = 13436928 * k + 6280882 := by
    unfold C
    simp [show (4478976 * k + 2093627) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6280882) = 6718464 * k + 3140441 := by
    unfold C
    simp [show (13436928 * k + 6280882) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3140441) = 20155392 * k + 9421324 := by
    unfold C
    simp [show (6718464 * k + 3140441) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9421324) = 10077696 * k + 4710662 := by
    unfold C
    simp [show (20155392 * k + 9421324) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4710662) = 5038848 * k + 2355331 := by
    unfold C
    simp [show (10077696 * k + 4710662) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2355331) = 15116544 * k + 7065994 := by
    unfold C
    simp [show (5038848 * k + 2355331) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7065994) = 7558272 * k + 3532997 := by
    unfold C
    simp [show (15116544 * k + 7065994) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3532997) = 22674816 * k + 10598992 := by
    unfold C
    simp [show (7558272 * k + 3532997) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10598992) = 11337408 * k + 5299496 := by
    unfold C
    simp [show (22674816 * k + 10598992) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5299496) = 5668704 * k + 2649748 := by
    unfold C
    simp [show (11337408 * k + 5299496) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2649748) = 2834352 * k + 1324874 := by
    unfold C
    simp [show (5668704 * k + 2649748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1324874) = 1417176 * k + 662437 := by
    unfold C
    simp [show (2834352 * k + 1324874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 662437) = 4251528 * k + 1987312 := by
    unfold C
    simp [show (1417176 * k + 662437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1987312) = 2125764 * k + 993656 := by
    unfold C
    simp [show (4251528 * k + 1987312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 993656) = 1062882 * k + 496828 := by
    unfold C
    simp [show (2125764 * k + 993656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496828) = 531441 * k + 248414 := by
    unfold C
    simp [show (1062882 * k + 496828) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490175 : ∀ k : Nat,
    iterate (1048576 * k + 490175) 32 = 531441 * k + 248432 ∧
      531441 * k + 248432 < 1048576 * k + 490175 := by
  intro k
  have h1 : C (1048576 * k + 490175) = 3145728 * k + 1470526 := by
    unfold C
    simp [show (1048576 * k + 490175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1470526) = 1572864 * k + 735263 := by
    unfold C
    simp [show (3145728 * k + 1470526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735263) = 4718592 * k + 2205790 := by
    unfold C
    simp [show (1572864 * k + 735263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2205790) = 2359296 * k + 1102895 := by
    unfold C
    simp [show (4718592 * k + 2205790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1102895) = 7077888 * k + 3308686 := by
    unfold C
    simp [show (2359296 * k + 1102895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3308686) = 3538944 * k + 1654343 := by
    unfold C
    simp [show (7077888 * k + 3308686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1654343) = 10616832 * k + 4963030 := by
    unfold C
    simp [show (3538944 * k + 1654343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4963030) = 5308416 * k + 2481515 := by
    unfold C
    simp [show (10616832 * k + 4963030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2481515) = 15925248 * k + 7444546 := by
    unfold C
    simp [show (5308416 * k + 2481515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7444546) = 7962624 * k + 3722273 := by
    unfold C
    simp [show (15925248 * k + 7444546) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3722273) = 23887872 * k + 11166820 := by
    unfold C
    simp [show (7962624 * k + 3722273) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11166820) = 11943936 * k + 5583410 := by
    unfold C
    simp [show (23887872 * k + 11166820) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5583410) = 5971968 * k + 2791705 := by
    unfold C
    simp [show (11943936 * k + 5583410) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2791705) = 17915904 * k + 8375116 := by
    unfold C
    simp [show (5971968 * k + 2791705) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8375116) = 8957952 * k + 4187558 := by
    unfold C
    simp [show (17915904 * k + 8375116) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4187558) = 4478976 * k + 2093779 := by
    unfold C
    simp [show (8957952 * k + 4187558) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2093779) = 13436928 * k + 6281338 := by
    unfold C
    simp [show (4478976 * k + 2093779) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6281338) = 6718464 * k + 3140669 := by
    unfold C
    simp [show (13436928 * k + 6281338) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3140669) = 20155392 * k + 9422008 := by
    unfold C
    simp [show (6718464 * k + 3140669) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9422008) = 10077696 * k + 4711004 := by
    unfold C
    simp [show (20155392 * k + 9422008) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4711004) = 5038848 * k + 2355502 := by
    unfold C
    simp [show (10077696 * k + 4711004) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2355502) = 2519424 * k + 1177751 := by
    unfold C
    simp [show (5038848 * k + 2355502) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1177751) = 7558272 * k + 3533254 := by
    unfold C
    simp [show (2519424 * k + 1177751) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3533254) = 3779136 * k + 1766627 := by
    unfold C
    simp [show (7558272 * k + 3533254) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1766627) = 11337408 * k + 5299882 := by
    unfold C
    simp [show (3779136 * k + 1766627) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5299882) = 5668704 * k + 2649941 := by
    unfold C
    simp [show (11337408 * k + 5299882) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2649941) = 17006112 * k + 7949824 := by
    unfold C
    simp [show (5668704 * k + 2649941) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7949824) = 8503056 * k + 3974912 := by
    unfold C
    simp [show (17006112 * k + 7949824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3974912) = 4251528 * k + 1987456 := by
    unfold C
    simp [show (8503056 * k + 3974912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1987456) = 2125764 * k + 993728 := by
    unfold C
    simp [show (4251528 * k + 1987456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 993728) = 1062882 * k + 496864 := by
    unfold C
    simp [show (2125764 * k + 993728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496864) = 531441 * k + 248432 := by
    unfold C
    simp [show (1062882 * k + 496864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490303 : ∀ k : Nat,
    iterate (1048576 * k + 490303) 32 = 531441 * k + 248497 ∧
      531441 * k + 248497 < 1048576 * k + 490303 := by
  intro k
  have h1 : C (1048576 * k + 490303) = 3145728 * k + 1470910 := by
    unfold C
    simp [show (1048576 * k + 490303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1470910) = 1572864 * k + 735455 := by
    unfold C
    simp [show (3145728 * k + 1470910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735455) = 4718592 * k + 2206366 := by
    unfold C
    simp [show (1572864 * k + 735455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2206366) = 2359296 * k + 1103183 := by
    unfold C
    simp [show (4718592 * k + 2206366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1103183) = 7077888 * k + 3309550 := by
    unfold C
    simp [show (2359296 * k + 1103183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3309550) = 3538944 * k + 1654775 := by
    unfold C
    simp [show (7077888 * k + 3309550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1654775) = 10616832 * k + 4964326 := by
    unfold C
    simp [show (3538944 * k + 1654775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4964326) = 5308416 * k + 2482163 := by
    unfold C
    simp [show (10616832 * k + 4964326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2482163) = 15925248 * k + 7446490 := by
    unfold C
    simp [show (5308416 * k + 2482163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7446490) = 7962624 * k + 3723245 := by
    unfold C
    simp [show (15925248 * k + 7446490) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3723245) = 23887872 * k + 11169736 := by
    unfold C
    simp [show (7962624 * k + 3723245) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11169736) = 11943936 * k + 5584868 := by
    unfold C
    simp [show (23887872 * k + 11169736) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5584868) = 5971968 * k + 2792434 := by
    unfold C
    simp [show (11943936 * k + 5584868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2792434) = 2985984 * k + 1396217 := by
    unfold C
    simp [show (5971968 * k + 2792434) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1396217) = 8957952 * k + 4188652 := by
    unfold C
    simp [show (2985984 * k + 1396217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4188652) = 4478976 * k + 2094326 := by
    unfold C
    simp [show (8957952 * k + 4188652) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2094326) = 2239488 * k + 1047163 := by
    unfold C
    simp [show (4478976 * k + 2094326) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1047163) = 6718464 * k + 3141490 := by
    unfold C
    simp [show (2239488 * k + 1047163) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3141490) = 3359232 * k + 1570745 := by
    unfold C
    simp [show (6718464 * k + 3141490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1570745) = 10077696 * k + 4712236 := by
    unfold C
    simp [show (3359232 * k + 1570745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4712236) = 5038848 * k + 2356118 := by
    unfold C
    simp [show (10077696 * k + 4712236) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2356118) = 2519424 * k + 1178059 := by
    unfold C
    simp [show (5038848 * k + 2356118) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1178059) = 7558272 * k + 3534178 := by
    unfold C
    simp [show (2519424 * k + 1178059) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3534178) = 3779136 * k + 1767089 := by
    unfold C
    simp [show (7558272 * k + 3534178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1767089) = 11337408 * k + 5301268 := by
    unfold C
    simp [show (3779136 * k + 1767089) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5301268) = 5668704 * k + 2650634 := by
    unfold C
    simp [show (11337408 * k + 5301268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2650634) = 2834352 * k + 1325317 := by
    unfold C
    simp [show (5668704 * k + 2650634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1325317) = 8503056 * k + 3975952 := by
    unfold C
    simp [show (2834352 * k + 1325317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3975952) = 4251528 * k + 1987976 := by
    unfold C
    simp [show (8503056 * k + 3975952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1987976) = 2125764 * k + 993988 := by
    unfold C
    simp [show (4251528 * k + 1987976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 993988) = 1062882 * k + 496994 := by
    unfold C
    simp [show (2125764 * k + 993988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 496994) = 531441 * k + 248497 := by
    unfold C
    simp [show (1062882 * k + 496994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490559 : ∀ k : Nat,
    iterate (1048576 * k + 490559) 32 = 531441 * k + 248627 ∧
      531441 * k + 248627 < 1048576 * k + 490559 := by
  intro k
  have h1 : C (1048576 * k + 490559) = 3145728 * k + 1471678 := by
    unfold C
    simp [show (1048576 * k + 490559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1471678) = 1572864 * k + 735839 := by
    unfold C
    simp [show (3145728 * k + 1471678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735839) = 4718592 * k + 2207518 := by
    unfold C
    simp [show (1572864 * k + 735839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2207518) = 2359296 * k + 1103759 := by
    unfold C
    simp [show (4718592 * k + 2207518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1103759) = 7077888 * k + 3311278 := by
    unfold C
    simp [show (2359296 * k + 1103759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3311278) = 3538944 * k + 1655639 := by
    unfold C
    simp [show (7077888 * k + 3311278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1655639) = 10616832 * k + 4966918 := by
    unfold C
    simp [show (3538944 * k + 1655639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4966918) = 5308416 * k + 2483459 := by
    unfold C
    simp [show (10616832 * k + 4966918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2483459) = 15925248 * k + 7450378 := by
    unfold C
    simp [show (5308416 * k + 2483459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7450378) = 7962624 * k + 3725189 := by
    unfold C
    simp [show (15925248 * k + 7450378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3725189) = 23887872 * k + 11175568 := by
    unfold C
    simp [show (7962624 * k + 3725189) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11175568) = 11943936 * k + 5587784 := by
    unfold C
    simp [show (23887872 * k + 11175568) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5587784) = 5971968 * k + 2793892 := by
    unfold C
    simp [show (11943936 * k + 5587784) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2793892) = 2985984 * k + 1396946 := by
    unfold C
    simp [show (5971968 * k + 2793892) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1396946) = 1492992 * k + 698473 := by
    unfold C
    simp [show (2985984 * k + 1396946) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 698473) = 4478976 * k + 2095420 := by
    unfold C
    simp [show (1492992 * k + 698473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2095420) = 2239488 * k + 1047710 := by
    unfold C
    simp [show (4478976 * k + 2095420) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1047710) = 1119744 * k + 523855 := by
    unfold C
    simp [show (2239488 * k + 1047710) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 523855) = 3359232 * k + 1571566 := by
    unfold C
    simp [show (1119744 * k + 523855) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1571566) = 1679616 * k + 785783 := by
    unfold C
    simp [show (3359232 * k + 1571566) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 785783) = 5038848 * k + 2357350 := by
    unfold C
    simp [show (1679616 * k + 785783) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2357350) = 2519424 * k + 1178675 := by
    unfold C
    simp [show (5038848 * k + 2357350) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1178675) = 7558272 * k + 3536026 := by
    unfold C
    simp [show (2519424 * k + 1178675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3536026) = 3779136 * k + 1768013 := by
    unfold C
    simp [show (7558272 * k + 3536026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1768013) = 11337408 * k + 5304040 := by
    unfold C
    simp [show (3779136 * k + 1768013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5304040) = 5668704 * k + 2652020 := by
    unfold C
    simp [show (11337408 * k + 5304040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2652020) = 2834352 * k + 1326010 := by
    unfold C
    simp [show (5668704 * k + 2652020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1326010) = 1417176 * k + 663005 := by
    unfold C
    simp [show (2834352 * k + 1326010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 663005) = 4251528 * k + 1989016 := by
    unfold C
    simp [show (1417176 * k + 663005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1989016) = 2125764 * k + 994508 := by
    unfold C
    simp [show (4251528 * k + 1989016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 994508) = 1062882 * k + 497254 := by
    unfold C
    simp [show (2125764 * k + 994508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 497254) = 531441 * k + 248627 := by
    unfold C
    simp [show (1062882 * k + 497254) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490607 : ∀ k : Nat,
    iterate (1048576 * k + 490607) 32 = 531441 * k + 248651 ∧
      531441 * k + 248651 < 1048576 * k + 490607 := by
  intro k
  have h1 : C (1048576 * k + 490607) = 3145728 * k + 1471822 := by
    unfold C
    simp [show (1048576 * k + 490607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1471822) = 1572864 * k + 735911 := by
    unfold C
    simp [show (3145728 * k + 1471822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735911) = 4718592 * k + 2207734 := by
    unfold C
    simp [show (1572864 * k + 735911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2207734) = 2359296 * k + 1103867 := by
    unfold C
    simp [show (4718592 * k + 2207734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1103867) = 7077888 * k + 3311602 := by
    unfold C
    simp [show (2359296 * k + 1103867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3311602) = 3538944 * k + 1655801 := by
    unfold C
    simp [show (7077888 * k + 3311602) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1655801) = 10616832 * k + 4967404 := by
    unfold C
    simp [show (3538944 * k + 1655801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4967404) = 5308416 * k + 2483702 := by
    unfold C
    simp [show (10616832 * k + 4967404) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2483702) = 2654208 * k + 1241851 := by
    unfold C
    simp [show (5308416 * k + 2483702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1241851) = 7962624 * k + 3725554 := by
    unfold C
    simp [show (2654208 * k + 1241851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3725554) = 3981312 * k + 1862777 := by
    unfold C
    simp [show (7962624 * k + 3725554) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1862777) = 11943936 * k + 5588332 := by
    unfold C
    simp [show (3981312 * k + 1862777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5588332) = 5971968 * k + 2794166 := by
    unfold C
    simp [show (11943936 * k + 5588332) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2794166) = 2985984 * k + 1397083 := by
    unfold C
    simp [show (5971968 * k + 2794166) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1397083) = 8957952 * k + 4191250 := by
    unfold C
    simp [show (2985984 * k + 1397083) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4191250) = 4478976 * k + 2095625 := by
    unfold C
    simp [show (8957952 * k + 4191250) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2095625) = 13436928 * k + 6286876 := by
    unfold C
    simp [show (4478976 * k + 2095625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6286876) = 6718464 * k + 3143438 := by
    unfold C
    simp [show (13436928 * k + 6286876) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3143438) = 3359232 * k + 1571719 := by
    unfold C
    simp [show (6718464 * k + 3143438) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1571719) = 10077696 * k + 4715158 := by
    unfold C
    simp [show (3359232 * k + 1571719) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4715158) = 5038848 * k + 2357579 := by
    unfold C
    simp [show (10077696 * k + 4715158) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2357579) = 15116544 * k + 7072738 := by
    unfold C
    simp [show (5038848 * k + 2357579) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7072738) = 7558272 * k + 3536369 := by
    unfold C
    simp [show (15116544 * k + 7072738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3536369) = 22674816 * k + 10609108 := by
    unfold C
    simp [show (7558272 * k + 3536369) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10609108) = 11337408 * k + 5304554 := by
    unfold C
    simp [show (22674816 * k + 10609108) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5304554) = 5668704 * k + 2652277 := by
    unfold C
    simp [show (11337408 * k + 5304554) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2652277) = 17006112 * k + 7956832 := by
    unfold C
    simp [show (5668704 * k + 2652277) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7956832) = 8503056 * k + 3978416 := by
    unfold C
    simp [show (17006112 * k + 7956832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3978416) = 4251528 * k + 1989208 := by
    unfold C
    simp [show (8503056 * k + 3978416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1989208) = 2125764 * k + 994604 := by
    unfold C
    simp [show (4251528 * k + 1989208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 994604) = 1062882 * k + 497302 := by
    unfold C
    simp [show (2125764 * k + 994604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 497302) = 531441 * k + 248651 := by
    unfold C
    simp [show (1062882 * k + 497302) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490623 : ∀ k : Nat,
    iterate (1048576 * k + 490623) 32 = 531441 * k + 248659 ∧
      531441 * k + 248659 < 1048576 * k + 490623 := by
  intro k
  have h1 : C (1048576 * k + 490623) = 3145728 * k + 1471870 := by
    unfold C
    simp [show (1048576 * k + 490623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1471870) = 1572864 * k + 735935 := by
    unfold C
    simp [show (3145728 * k + 1471870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 735935) = 4718592 * k + 2207806 := by
    unfold C
    simp [show (1572864 * k + 735935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2207806) = 2359296 * k + 1103903 := by
    unfold C
    simp [show (4718592 * k + 2207806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1103903) = 7077888 * k + 3311710 := by
    unfold C
    simp [show (2359296 * k + 1103903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3311710) = 3538944 * k + 1655855 := by
    unfold C
    simp [show (7077888 * k + 3311710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1655855) = 10616832 * k + 4967566 := by
    unfold C
    simp [show (3538944 * k + 1655855) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4967566) = 5308416 * k + 2483783 := by
    unfold C
    simp [show (10616832 * k + 4967566) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2483783) = 15925248 * k + 7451350 := by
    unfold C
    simp [show (5308416 * k + 2483783) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7451350) = 7962624 * k + 3725675 := by
    unfold C
    simp [show (15925248 * k + 7451350) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3725675) = 23887872 * k + 11177026 := by
    unfold C
    simp [show (7962624 * k + 3725675) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11177026) = 11943936 * k + 5588513 := by
    unfold C
    simp [show (23887872 * k + 11177026) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5588513) = 35831808 * k + 16765540 := by
    unfold C
    simp [show (11943936 * k + 5588513) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16765540) = 17915904 * k + 8382770 := by
    unfold C
    simp [show (35831808 * k + 16765540) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8382770) = 8957952 * k + 4191385 := by
    unfold C
    simp [show (17915904 * k + 8382770) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4191385) = 26873856 * k + 12574156 := by
    unfold C
    simp [show (8957952 * k + 4191385) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12574156) = 13436928 * k + 6287078 := by
    unfold C
    simp [show (26873856 * k + 12574156) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6287078) = 6718464 * k + 3143539 := by
    unfold C
    simp [show (13436928 * k + 6287078) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3143539) = 20155392 * k + 9430618 := by
    unfold C
    simp [show (6718464 * k + 3143539) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9430618) = 10077696 * k + 4715309 := by
    unfold C
    simp [show (20155392 * k + 9430618) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4715309) = 30233088 * k + 14145928 := by
    unfold C
    simp [show (10077696 * k + 4715309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14145928) = 15116544 * k + 7072964 := by
    unfold C
    simp [show (30233088 * k + 14145928) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7072964) = 7558272 * k + 3536482 := by
    unfold C
    simp [show (15116544 * k + 7072964) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3536482) = 3779136 * k + 1768241 := by
    unfold C
    simp [show (7558272 * k + 3536482) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1768241) = 11337408 * k + 5304724 := by
    unfold C
    simp [show (3779136 * k + 1768241) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5304724) = 5668704 * k + 2652362 := by
    unfold C
    simp [show (11337408 * k + 5304724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2652362) = 2834352 * k + 1326181 := by
    unfold C
    simp [show (5668704 * k + 2652362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1326181) = 8503056 * k + 3978544 := by
    unfold C
    simp [show (2834352 * k + 1326181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3978544) = 4251528 * k + 1989272 := by
    unfold C
    simp [show (8503056 * k + 3978544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1989272) = 2125764 * k + 994636 := by
    unfold C
    simp [show (4251528 * k + 1989272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 994636) = 1062882 * k + 497318 := by
    unfold C
    simp [show (2125764 * k + 994636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 497318) = 531441 * k + 248659 := by
    unfold C
    simp [show (1062882 * k + 497318) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_490879 : ∀ k : Nat,
    iterate (1048576 * k + 490879) 32 = 531441 * k + 248789 ∧
      531441 * k + 248789 < 1048576 * k + 490879 := by
  intro k
  have h1 : C (1048576 * k + 490879) = 3145728 * k + 1472638 := by
    unfold C
    simp [show (1048576 * k + 490879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1472638) = 1572864 * k + 736319 := by
    unfold C
    simp [show (3145728 * k + 1472638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 736319) = 4718592 * k + 2208958 := by
    unfold C
    simp [show (1572864 * k + 736319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2208958) = 2359296 * k + 1104479 := by
    unfold C
    simp [show (4718592 * k + 2208958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1104479) = 7077888 * k + 3313438 := by
    unfold C
    simp [show (2359296 * k + 1104479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3313438) = 3538944 * k + 1656719 := by
    unfold C
    simp [show (7077888 * k + 3313438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1656719) = 10616832 * k + 4970158 := by
    unfold C
    simp [show (3538944 * k + 1656719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4970158) = 5308416 * k + 2485079 := by
    unfold C
    simp [show (10616832 * k + 4970158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2485079) = 15925248 * k + 7455238 := by
    unfold C
    simp [show (5308416 * k + 2485079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7455238) = 7962624 * k + 3727619 := by
    unfold C
    simp [show (15925248 * k + 7455238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3727619) = 23887872 * k + 11182858 := by
    unfold C
    simp [show (7962624 * k + 3727619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11182858) = 11943936 * k + 5591429 := by
    unfold C
    simp [show (23887872 * k + 11182858) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5591429) = 35831808 * k + 16774288 := by
    unfold C
    simp [show (11943936 * k + 5591429) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16774288) = 17915904 * k + 8387144 := by
    unfold C
    simp [show (35831808 * k + 16774288) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8387144) = 8957952 * k + 4193572 := by
    unfold C
    simp [show (17915904 * k + 8387144) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4193572) = 4478976 * k + 2096786 := by
    unfold C
    simp [show (8957952 * k + 4193572) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2096786) = 2239488 * k + 1048393 := by
    unfold C
    simp [show (4478976 * k + 2096786) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1048393) = 6718464 * k + 3145180 := by
    unfold C
    simp [show (2239488 * k + 1048393) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3145180) = 3359232 * k + 1572590 := by
    unfold C
    simp [show (6718464 * k + 3145180) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1572590) = 1679616 * k + 786295 := by
    unfold C
    simp [show (3359232 * k + 1572590) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 786295) = 5038848 * k + 2358886 := by
    unfold C
    simp [show (1679616 * k + 786295) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2358886) = 2519424 * k + 1179443 := by
    unfold C
    simp [show (5038848 * k + 2358886) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1179443) = 7558272 * k + 3538330 := by
    unfold C
    simp [show (2519424 * k + 1179443) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3538330) = 3779136 * k + 1769165 := by
    unfold C
    simp [show (7558272 * k + 3538330) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1769165) = 11337408 * k + 5307496 := by
    unfold C
    simp [show (3779136 * k + 1769165) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5307496) = 5668704 * k + 2653748 := by
    unfold C
    simp [show (11337408 * k + 5307496) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2653748) = 2834352 * k + 1326874 := by
    unfold C
    simp [show (5668704 * k + 2653748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1326874) = 1417176 * k + 663437 := by
    unfold C
    simp [show (2834352 * k + 1326874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 663437) = 4251528 * k + 1990312 := by
    unfold C
    simp [show (1417176 * k + 663437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1990312) = 2125764 * k + 995156 := by
    unfold C
    simp [show (4251528 * k + 1990312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 995156) = 1062882 * k + 497578 := by
    unfold C
    simp [show (2125764 * k + 995156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 497578) = 531441 * k + 248789 := by
    unfold C
    simp [show (1062882 * k + 497578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 490879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 490879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_491879 : ∀ k : Nat,
    iterate (1048576 * k + 491879) 32 = 531441 * k + 249296 ∧
      531441 * k + 249296 < 1048576 * k + 491879 := by
  intro k
  have h1 : C (1048576 * k + 491879) = 3145728 * k + 1475638 := by
    unfold C
    simp [show (1048576 * k + 491879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1475638) = 1572864 * k + 737819 := by
    unfold C
    simp [show (3145728 * k + 1475638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 737819) = 4718592 * k + 2213458 := by
    unfold C
    simp [show (1572864 * k + 737819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2213458) = 2359296 * k + 1106729 := by
    unfold C
    simp [show (4718592 * k + 2213458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1106729) = 7077888 * k + 3320188 := by
    unfold C
    simp [show (2359296 * k + 1106729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3320188) = 3538944 * k + 1660094 := by
    unfold C
    simp [show (7077888 * k + 3320188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1660094) = 1769472 * k + 830047 := by
    unfold C
    simp [show (3538944 * k + 1660094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 830047) = 5308416 * k + 2490142 := by
    unfold C
    simp [show (1769472 * k + 830047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2490142) = 2654208 * k + 1245071 := by
    unfold C
    simp [show (5308416 * k + 2490142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1245071) = 7962624 * k + 3735214 := by
    unfold C
    simp [show (2654208 * k + 1245071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3735214) = 3981312 * k + 1867607 := by
    unfold C
    simp [show (7962624 * k + 3735214) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1867607) = 11943936 * k + 5602822 := by
    unfold C
    simp [show (3981312 * k + 1867607) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5602822) = 5971968 * k + 2801411 := by
    unfold C
    simp [show (11943936 * k + 5602822) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2801411) = 17915904 * k + 8404234 := by
    unfold C
    simp [show (5971968 * k + 2801411) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8404234) = 8957952 * k + 4202117 := by
    unfold C
    simp [show (17915904 * k + 8404234) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4202117) = 26873856 * k + 12606352 := by
    unfold C
    simp [show (8957952 * k + 4202117) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12606352) = 13436928 * k + 6303176 := by
    unfold C
    simp [show (26873856 * k + 12606352) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6303176) = 6718464 * k + 3151588 := by
    unfold C
    simp [show (13436928 * k + 6303176) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3151588) = 3359232 * k + 1575794 := by
    unfold C
    simp [show (6718464 * k + 3151588) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1575794) = 1679616 * k + 787897 := by
    unfold C
    simp [show (3359232 * k + 1575794) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 787897) = 5038848 * k + 2363692 := by
    unfold C
    simp [show (1679616 * k + 787897) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2363692) = 2519424 * k + 1181846 := by
    unfold C
    simp [show (5038848 * k + 2363692) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1181846) = 1259712 * k + 590923 := by
    unfold C
    simp [show (2519424 * k + 1181846) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 590923) = 3779136 * k + 1772770 := by
    unfold C
    simp [show (1259712 * k + 590923) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1772770) = 1889568 * k + 886385 := by
    unfold C
    simp [show (3779136 * k + 1772770) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 886385) = 5668704 * k + 2659156 := by
    unfold C
    simp [show (1889568 * k + 886385) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2659156) = 2834352 * k + 1329578 := by
    unfold C
    simp [show (5668704 * k + 2659156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1329578) = 1417176 * k + 664789 := by
    unfold C
    simp [show (2834352 * k + 1329578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 664789) = 4251528 * k + 1994368 := by
    unfold C
    simp [show (1417176 * k + 664789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1994368) = 2125764 * k + 997184 := by
    unfold C
    simp [show (4251528 * k + 1994368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 997184) = 1062882 * k + 498592 := by
    unfold C
    simp [show (2125764 * k + 997184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 498592) = 531441 * k + 249296 := by
    unfold C
    simp [show (1062882 * k + 498592) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 491879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 491879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_492543 : ∀ k : Nat,
    iterate (1048576 * k + 492543) 32 = 531441 * k + 249632 ∧
      531441 * k + 249632 < 1048576 * k + 492543 := by
  intro k
  have h1 : C (1048576 * k + 492543) = 3145728 * k + 1477630 := by
    unfold C
    simp [show (1048576 * k + 492543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1477630) = 1572864 * k + 738815 := by
    unfold C
    simp [show (3145728 * k + 1477630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 738815) = 4718592 * k + 2216446 := by
    unfold C
    simp [show (1572864 * k + 738815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2216446) = 2359296 * k + 1108223 := by
    unfold C
    simp [show (4718592 * k + 2216446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1108223) = 7077888 * k + 3324670 := by
    unfold C
    simp [show (2359296 * k + 1108223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3324670) = 3538944 * k + 1662335 := by
    unfold C
    simp [show (7077888 * k + 3324670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1662335) = 10616832 * k + 4987006 := by
    unfold C
    simp [show (3538944 * k + 1662335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4987006) = 5308416 * k + 2493503 := by
    unfold C
    simp [show (10616832 * k + 4987006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2493503) = 15925248 * k + 7480510 := by
    unfold C
    simp [show (5308416 * k + 2493503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7480510) = 7962624 * k + 3740255 := by
    unfold C
    simp [show (15925248 * k + 7480510) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3740255) = 23887872 * k + 11220766 := by
    unfold C
    simp [show (7962624 * k + 3740255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11220766) = 11943936 * k + 5610383 := by
    unfold C
    simp [show (23887872 * k + 11220766) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5610383) = 35831808 * k + 16831150 := by
    unfold C
    simp [show (11943936 * k + 5610383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16831150) = 17915904 * k + 8415575 := by
    unfold C
    simp [show (35831808 * k + 16831150) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8415575) = 53747712 * k + 25246726 := by
    unfold C
    simp [show (17915904 * k + 8415575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 25246726) = 26873856 * k + 12623363 := by
    unfold C
    simp [show (53747712 * k + 25246726) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 12623363) = 80621568 * k + 37870090 := by
    unfold C
    simp [show (26873856 * k + 12623363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 37870090) = 40310784 * k + 18935045 := by
    unfold C
    simp [show (80621568 * k + 37870090) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 18935045) = 120932352 * k + 56805136 := by
    unfold C
    simp [show (40310784 * k + 18935045) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 56805136) = 60466176 * k + 28402568 := by
    unfold C
    simp [show (120932352 * k + 56805136) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 28402568) = 30233088 * k + 14201284 := by
    unfold C
    simp [show (60466176 * k + 28402568) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14201284) = 15116544 * k + 7100642 := by
    unfold C
    simp [show (30233088 * k + 14201284) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7100642) = 7558272 * k + 3550321 := by
    unfold C
    simp [show (15116544 * k + 7100642) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3550321) = 22674816 * k + 10650964 := by
    unfold C
    simp [show (7558272 * k + 3550321) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10650964) = 11337408 * k + 5325482 := by
    unfold C
    simp [show (22674816 * k + 10650964) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5325482) = 5668704 * k + 2662741 := by
    unfold C
    simp [show (11337408 * k + 5325482) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2662741) = 17006112 * k + 7988224 := by
    unfold C
    simp [show (5668704 * k + 2662741) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7988224) = 8503056 * k + 3994112 := by
    unfold C
    simp [show (17006112 * k + 7988224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3994112) = 4251528 * k + 1997056 := by
    unfold C
    simp [show (8503056 * k + 3994112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1997056) = 2125764 * k + 998528 := by
    unfold C
    simp [show (4251528 * k + 1997056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 998528) = 1062882 * k + 499264 := by
    unfold C
    simp [show (2125764 * k + 998528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 499264) = 531441 * k + 249632 := by
    unfold C
    simp [show (1062882 * k + 499264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 492543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 492543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_492647 : ∀ k : Nat,
    iterate (1048576 * k + 492647) 32 = 531441 * k + 249685 ∧
      531441 * k + 249685 < 1048576 * k + 492647 := by
  intro k
  have h1 : C (1048576 * k + 492647) = 3145728 * k + 1477942 := by
    unfold C
    simp [show (1048576 * k + 492647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1477942) = 1572864 * k + 738971 := by
    unfold C
    simp [show (3145728 * k + 1477942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 738971) = 4718592 * k + 2216914 := by
    unfold C
    simp [show (1572864 * k + 738971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2216914) = 2359296 * k + 1108457 := by
    unfold C
    simp [show (4718592 * k + 2216914) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1108457) = 7077888 * k + 3325372 := by
    unfold C
    simp [show (2359296 * k + 1108457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3325372) = 3538944 * k + 1662686 := by
    unfold C
    simp [show (7077888 * k + 3325372) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1662686) = 1769472 * k + 831343 := by
    unfold C
    simp [show (3538944 * k + 1662686) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 831343) = 5308416 * k + 2494030 := by
    unfold C
    simp [show (1769472 * k + 831343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2494030) = 2654208 * k + 1247015 := by
    unfold C
    simp [show (5308416 * k + 2494030) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1247015) = 7962624 * k + 3741046 := by
    unfold C
    simp [show (2654208 * k + 1247015) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3741046) = 3981312 * k + 1870523 := by
    unfold C
    simp [show (7962624 * k + 3741046) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1870523) = 11943936 * k + 5611570 := by
    unfold C
    simp [show (3981312 * k + 1870523) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5611570) = 5971968 * k + 2805785 := by
    unfold C
    simp [show (11943936 * k + 5611570) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2805785) = 17915904 * k + 8417356 := by
    unfold C
    simp [show (5971968 * k + 2805785) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8417356) = 8957952 * k + 4208678 := by
    unfold C
    simp [show (17915904 * k + 8417356) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4208678) = 4478976 * k + 2104339 := by
    unfold C
    simp [show (8957952 * k + 4208678) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2104339) = 13436928 * k + 6313018 := by
    unfold C
    simp [show (4478976 * k + 2104339) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6313018) = 6718464 * k + 3156509 := by
    unfold C
    simp [show (13436928 * k + 6313018) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3156509) = 20155392 * k + 9469528 := by
    unfold C
    simp [show (6718464 * k + 3156509) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9469528) = 10077696 * k + 4734764 := by
    unfold C
    simp [show (20155392 * k + 9469528) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4734764) = 5038848 * k + 2367382 := by
    unfold C
    simp [show (10077696 * k + 4734764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2367382) = 2519424 * k + 1183691 := by
    unfold C
    simp [show (5038848 * k + 2367382) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1183691) = 7558272 * k + 3551074 := by
    unfold C
    simp [show (2519424 * k + 1183691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3551074) = 3779136 * k + 1775537 := by
    unfold C
    simp [show (7558272 * k + 3551074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1775537) = 11337408 * k + 5326612 := by
    unfold C
    simp [show (3779136 * k + 1775537) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5326612) = 5668704 * k + 2663306 := by
    unfold C
    simp [show (11337408 * k + 5326612) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2663306) = 2834352 * k + 1331653 := by
    unfold C
    simp [show (5668704 * k + 2663306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1331653) = 8503056 * k + 3994960 := by
    unfold C
    simp [show (2834352 * k + 1331653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3994960) = 4251528 * k + 1997480 := by
    unfold C
    simp [show (8503056 * k + 3994960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1997480) = 2125764 * k + 998740 := by
    unfold C
    simp [show (4251528 * k + 1997480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 998740) = 1062882 * k + 499370 := by
    unfold C
    simp [show (2125764 * k + 998740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 499370) = 531441 * k + 249685 := by
    unfold C
    simp [show (1062882 * k + 499370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 492647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 492647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard062
